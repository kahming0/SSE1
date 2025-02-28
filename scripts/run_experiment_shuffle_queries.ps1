# Ensure script runs with administrator privileges
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Start-Process powershell.exe -ArgumentList "-File `"$PSCommandPath`"" -Verb RunAs
    exit
}


# Define database parameters
$DB_USER = "<db_user>"
$DB_PASSWORD = "<db_password>"
$DB_NAME = "<db_name>"
$DB_ENGINES = @("mysql", "pgsql")
$TABLE_SIZES = @("1000", "10000", "100000")
$REPEATS = 30
$NUM_OF_TRANSACTIONS = 1000
$ENERGIBRIDGE_PATH = "<path\to\energibridge.exe>"


# Warm-up for 5 minutes using Fibonacci script
Write-Host "Starting warm-up for 5 minutes..."

$FIBONACCI_SCRIPT_PATH = "<path\to\fibonacci.ps1>"

Unblock-File -Path $FIBONACCI_SCRIPT_PATH

$FibonacciProcess = Start-Process -NoNewWindow -PassThru -FilePath "powershell.exe" -ArgumentList "-File `"$FIBONACCI_SCRIPT_PATH`"" 
Start-Sleep -Seconds 300
Stop-Process -Id $FibonacciProcess.Id -Force

Write-Host "Warm-up completed!"


# Generate all experiment combinations
$experiments = @()
foreach ($DB_ENGINE in $DB_ENGINES) {
    foreach ($TABLE_SIZE in $TABLE_SIZES) {
        for ($i = 1; $i -le $REPEATS; $i++) {
            $experiments += [PSCustomObject]@{
                DB_ENGINE = $DB_ENGINE
                TABLE_SIZE = $TABLE_SIZE
                Iteration = $i
            }
        }
    }
}

# Shuffle the list of experiment combinations
$shuffledExperiments = $experiments | Get-Random -Count $experiments.Count


# Function to run SysBench and EnergiBridge
function Run-Experiment {
    param (
        [string]$DB_ENGINE,
        [string]$TABLE_SIZE,
        [int]$Iteration
    )

    $EXPERIMENT_NAME = "experiment_${DB_ENGINE}_${TABLE_SIZE}"
    Write-Host "Starting experiment: $EXPERIMENT_NAME, iteration $Iteration..."

    # Drop existing SysBench tables
    Write-Host "Dropping SysBench tables for $DB_ENGINE..."
    if ($DB_ENGINE -eq "mysql") {
        wsl mysql `
            -u $DB_USER `
            -p"$DB_PASSWORD" `
            -D $DB_NAME `
            -e "DROP TABLE IF EXISTS sbtest1, sbtest2, sbtest3, sbtest4, sbtest5, sbtest6, sbtest7, sbtest8, sbtest9, sbtest10, sbtest11, sbtest12, sbtest13, sbtest14, sbtest15, sbtest16, sbtest17, sbtest18, sbtest19, sbtest20, sbtest21, sbtest22, sbtest23, sbtest24;"
    } elseif ($DB_ENGINE -eq "pgsql") {
        wsl psql `
            -U $DB_USER `
            -d $DB_NAME `
            --no-password `
            -c "DROP TABLE IF EXISTS sbtest1, sbtest2, sbtest3, sbtest4, sbtest5, sbtest6, sbtest7, sbtest8, sbtest9, sbtest10, sbtest11, sbtest12, sbtest13, sbtest14, sbtest15, sbtest16, sbtest17, sbtest18, sbtest19, sbtest20, sbtest21, sbtest22, sbtest23, sbtest24 CASCADE;"
    }

    # Prepare the SysBench database
    Write-Host "Preparing SysBench database for $DB_ENGINE with table size $TABLE_SIZE..."
    if ($DB_ENGINE -eq "mysql") {
        wsl sysbench oltp_read_write `
            --db-driver=mysql `
            --mysql-host=localhost `
            --mysql-user=$DB_USER `
            --mysql-password=$DB_PASSWORD `
            --mysql-db=$DB_NAME `
            --tables=24 `
            --table-size=$TABLE_SIZE `
            prepare
    } elseif ($DB_ENGINE -eq "pgsql") {
        wsl sysbench oltp_read_write `
            --db-driver=pgsql `
            --pgsql-host=localhost `
            --pgsql-user=$DB_USER `
            --pgsql-db=$DB_NAME `
            --tables=24 `
            --table-size=$TABLE_SIZE `
            prepare
    }

    # Start EnergiBridge
    Write-Host "Starting EnergiBridge for $EXPERIMENT_NAME, iteration $Iteration..."

    $CSV_OUTPUT_PATH = "<path\to\output\dir\_${EXPERIMENT_NAME}_$Iteration.csv>"
    $TXT_OUTPUT_PATH = "<path\to\output\dir\_${EXPERIMENT_NAME}_$Iteration.txt>"

    $energiBridgeProcess = Start-Process `
        -NoNewWindow `
        -PassThru `
        -FilePath $ENERGIBRIDGE_PATH `
        -ArgumentList "-o `"$CSV_OUTPUT_PATH`" --summary powershell.exe -Command `"Start-Sleep -Seconds 10`"" `
        -RedirectStandardOutput $TXT_OUTPUT_PATH

    Start-Sleep -Seconds 1 # Ensure EnergiBridge starts before SysBench

    # Run SysBench benchmark
    Write-Host "Running SysBench for $DB_ENGINE..."
    if ($DB_ENGINE -eq "mysql") {
        & wsl sysbench oltp_read_write `
            --db-driver=mysql `
            --mysql-host=localhost `
            --mysql-user=$DB_USER `
            --mysql-password=$DB_PASSWORD `
            --mysql-db=$DB_NAME `
            --tables=24 `
            --table-size=$TABLE_SIZE `
            --threads=1 `
            --events=$NUM_OF_TRANSACTIONS `
            run
    } elseif ($DB_ENGINE -eq "pgsql") {
        & wsl sysbench oltp_read_write `
            --db-driver=pgsql `
            --pgsql-host=localhost `
            --pgsql-user=$DB_USER `
            --pgsql-db=$DB_NAME `
            --tables=24 `
            --table-size=$TABLE_SIZE `
            --threads=1 `
            --events=$NUM_OF_TRANSACTIONS `
            run
    }

    Write-Host "SysBench has completed."

    # Wait for EnergiBridge before stopping it
    Write-Host "Waiting for EnergiBridge to complete..."
    Wait-Process -Id $energiBridgeProcess.Id -ErrorAction SilentlyContinue

    # Stop EnergiBridge after SysBench is done
    if ($energiBridgeProcess -and -Not $energiBridgeProcess.HasExited) {
        Stop-Process -Id $energiBridgeProcess.Id -Force
        Write-Host "EnergiBridge has been stopped."
    } else {
        Write-Host "Warning: EnergiBridge process ended prematurely or was already stopped."
    }

    Write-Host "Completed iteration $Iteration of $EXPERIMENT_NAME"
    Start-Sleep -Seconds 60 # Rest 1 minute between repetitions
}

# Run shuffled experiments
foreach ($exp in $shuffledExperiments) {
    Run-Experiment -DB_ENGINE $exp.DB_ENGINE -TABLE_SIZE $exp.TABLE_SIZE -Iteration $exp.Iteration
}

Write-Host "All experiments completed!"

Read-Host "Press Enter to exit..."
