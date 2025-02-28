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
Start-Sleep -Seconds 10
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

    # Start EnergiBridge
    Write-Host "Starting EnergiBridge for $EXPERIMENT_NAME, iteration $Iteration..."

    $CSV_OUTPUT_PATH = "<path\to\output\dir\_${EXPERIMENT_NAME}_$Iteration.csv>"
    $TXT_OUTPUT_PATH = "<path\to\output\dir\_${EXPERIMENT_NAME}_$Iteration.txt>"
    
    $energiBridgeProcess = Start-Process `
        -NoNewWindow `
        -PassThru `
        -FilePath $ENERGIBRIDGE_PATH `
        -ArgumentList "-o `"$CSV_OUTPUT_PATH`" --summary timeout 10" `
        -RedirectStandardOutput $TXT_OUTPUT_PATH

    Write-Host "Completed iteration $Iteration of $EXPERIMENT_NAME"
    Start-Sleep -Seconds 10 # Rest 1 minute between repetitions
}

# Run shuffled experiments
foreach ($exp in $shuffledExperiments) {
    Run-Experiment -DB_ENGINE $exp.DB_ENGINE -TABLE_SIZE $exp.TABLE_SIZE -Iteration $exp.Iteration
}

Write-Host "All experiments completed!"

Read-Host "Press Enter to exit..."