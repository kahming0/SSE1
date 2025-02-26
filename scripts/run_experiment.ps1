# Ensure script runs with administrator privileges
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Start-Process powershell.exe -ArgumentList "-File `"$PSCommandPath`"" -Verb RunAs
    exit
}


# Define database parameters
$DB_USER = "myuser"
$DB_PASSWORD = "mypassword"
$DB_NAME = "sysbench"
$DB_ENGINES = @("mysql", "pgsql")
$TABLE_SIZES = @("1000", "10000", "100000")
$REPEATS = 30
$ENERGIBRIDGE_PATH = "C:\Users\kevin\Documents\University\MSc Computer Science\CS 24-25\Quarter 3\CS4575 Sustainable Software Engineering\EnergiBridge\energibridge.exe"


# Warm-up for 5 minutes using Fibonacci script
Write-Host "Starting warm-up for 5 minutes..."

$FIBONACCI_SCRIPT_PATH = "C:\Users\kevin\Documents\University\MSc Computer Science\CS 24-25\Quarter 3\CS4575 Sustainable Software Engineering\EnergiBridge\fibonacci.ps1"

Unblock-File -Path $FIBONACCI_SCRIPT_PATH

$FibonacciProcess = Start-Process -NoNewWindow -PassThru -FilePath "powershell.exe" -ArgumentList "-File `"$FIBONACCI_SCRIPT_PATH`"" 
Start-Sleep -Seconds 300
Stop-Process -Id $FibonacciProcess.Id -Force

Write-Host "Warm-up completed!"


# Function to run SysBench and EnergiBridge
function Run-Experiment {
    param (
        [string]$DB_ENGINE,
        [string]$TABLE_SIZE
    )

    $EXPERIMENT_NAME = "experiment_${DB_ENGINE}_${TABLE_SIZE}"
    Write-Host "Starting experiment: $EXPERIMENT_NAME"

    for ($i = 1; $i -le $REPEATS; $i++) {
        Write-Host "Iteration $i of $REPEATS..."

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

        # Start EnergiBridge and log energy consumption
        Write-Host "Starting EnergiBridge for $EXPERIMENT_NAME, iteration $i..."

        $CSV_OUTPUT_PATH = "C:\Users\kevin\Documents\University\MSc Computer Science\CS 24-25\Quarter 3\CS4575 Sustainable Software Engineering\EnergiBridge\results_${EXPERIMENT_NAME}_$i.csv"
        $TXT_OUTPUT_PATH = "C:\Users\kevin\Documents\University\MSc Computer Science\CS 24-25\Quarter 3\CS4575 Sustainable Software Engineering\EnergiBridge\joule_${EXPERIMENT_NAME}_$i.txt"

        # Start EnergiBridge and redirect output to a text file
        $energiBridgeProcess = Start-Process `
            -NoNewWindow `
            -PassThru `
            -FilePath $ENERGIBRIDGE_PATH `
            -ArgumentList "-o `"$CSV_OUTPUT_PATH`" --summary timeout 62" `
            -RedirectStandardOutput $TXT_OUTPUT_PATH

        Start-Sleep -Seconds 2 # Ensure EnergiBridge starts before SysBench

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
                --time=60 `
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
                --time=60 `
                run
        }

        Write-Host "SysBench has completed."

        # Wait for EnergiBridge to finish before proceeding
        if (Get-Process | Where-Object { $_.Id -eq $energiBridgeProcess.Id }) {
            Wait-Process -Id $energiBridgeProcess.Id
            Write-Host "EnergiBridge has completed."
        } else {
            Write-Host "Warning: EnergiBridge process ended prematurely."
        }

        Write-Host "Completed iteration $i of $EXPERIMENT_NAME"
        Start-Sleep -Seconds 60 # Rest 1 minute between repetitions
    }

    Write-Host "Completed experiment: $EXPERIMENT_NAME"
    Start-Sleep -Seconds 60 # Rest 1 minute between experiments
}


# Run all experimental conditions
foreach ($DB_ENGINE in $DB_ENGINES) {
    foreach ($TABLE_SIZE in $TABLE_SIZES) {
        Run-Experiment -DB_ENGINE $DB_ENGINE -TABLE_SIZE $TABLE_SIZE
    }
}

Write-Host "All experiments completed!"

Read-Host "Press Enter to exit..."