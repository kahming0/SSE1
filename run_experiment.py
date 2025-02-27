import os
import subprocess
import time
import random
import psutil
import ctypes
import sys

# Ensure the script runs with administrator privileges
def is_admin():
    try:
        return ctypes.windll.shell32.IsUserAnAdmin()
    except:
        return False

if not is_admin():
    print("Re-running with admin privileges...")
    subprocess.run(["powershell", "Start-Process", "python", "-ArgumentList", f'"{sys.argv[0]}"', "-Verb", "RunAs"])
    sys.exit()

# Define database parameters
DB_USER = "myuser"
DB_PASSWORD = "mypassword"
DB_NAME = "sysbench"
DB_ENGINES = ["mysql", "pgsql"]
TABLE_SIZES = ["1000", "10000", "100000"]
REPEATS = 30
NUM_OF_QUERIES = 1000
ENERGIBRIDGE_PATH = r"C:\Users\kevin\Documents\University\MSc Computer Science\CS 24-25\Quarter 3\CS4575 Sustainable Software Engineering\EnergiBridge\energibridge.exe"

# Warm-up for 5 minutes using Fibonacci script
print("Starting warm-up for 5 minutes...")
FIBONACCI_SCRIPT_PATH = r"C:\Users\kevin\Documents\University\MSc Computer Science\CS 24-25\Quarter 3\CS4575 Sustainable Software Engineering\EnergiBridge\fibonacci.ps1"
subprocess.run(["powershell", "Unblock-File", "-Path", FIBONACCI_SCRIPT_PATH])
fib_process = subprocess.Popen(["powershell", "-File", FIBONACCI_SCRIPT_PATH])
time.sleep(300)
fib_process.terminate()
print("Warm-up completed!")

# Generate all experiment combinations and shuffle them
experiments = [{"DB_ENGINE": db, "TABLE_SIZE": size, "Iteration": i} for db in DB_ENGINES for size in TABLE_SIZES for i in range(1, REPEATS + 1)]
random.shuffle(experiments)

# Function to run SysBench and EnergiBridge
def run_experiment(db_engine, table_size, iteration):
    experiment_name = f"experiment_{db_engine}_{table_size}"
    print(f"Starting experiment: {experiment_name}, iteration {iteration}...")

    # Drop existing SysBench tables
    print(f"Dropping SysBench tables for {db_engine}...")
    if db_engine == "mysql":
        drop_command = f'wsl mysql -u {DB_USER} -p"{DB_PASSWORD}" -D {DB_NAME} -e "DROP TABLE IF EXISTS sbtest1, sbtest2, sbtest3;"'
    else:
        drop_command = f'wsl psql -U {DB_USER} -d {DB_NAME} --no-password -c "DROP TABLE IF EXISTS sbtest1, sbtest2, sbtest3 CASCADE;"'
    
    subprocess.run(drop_command, shell=True)

    # Prepare the SysBench database
    print(f"Preparing SysBench database for {db_engine} with table size {table_size}...")
    sysbench_prepare = (
        f'wsl sysbench oltp_read_write --db-driver={db_engine} --{db_engine}-host=localhost '
        f'--{db_engine}-user={DB_USER} --{db_engine}-password={DB_PASSWORD} --{db_engine}-db={DB_NAME} '
        f'--tables=24 --table-size={table_size} prepare'
    )
    subprocess.run(sysbench_prepare, shell=True)

    # Start EnergiBridge
    print(f"Starting EnergiBridge for {experiment_name}, iteration {iteration}...")

    csv_output_path = rf"C:\Users\kevin\Documents\University\MSc Computer Science\CS 24-25\Quarter 3\CS4575 Sustainable Software Engineering\EnergiBridge\results_{experiment_name}_{iteration}.csv"
    txt_output_path = rf"C:\Users\kevin\Documents\University\MSc Computer Science\CS 24-25\Quarter 3\CS4575 Sustainable Software Engineering\EnergiBridge\joule_{experiment_name}_{iteration}.txt"

    energiBridgeProcess = subprocess.Popen(
        [ENERGIBRIDGE_PATH, "-o", csv_output_path, "--summary", "powershell.exe", "-Command", "Start-Sleep -Seconds 10"],
        stdout=open(txt_output_path, "w"),
        stderr=subprocess.STDOUT,
    )

    time.sleep(1)  # Ensure EnergiBridge starts before SysBench

    # Run SysBench benchmark
    print(f"Running SysBench for {db_engine}...")
    sysbench_run = (
        f'wsl sysbench oltp_read_write --db-driver={db_engine} --{db_engine}-host=localhost '
        f'--{db_engine}-user={DB_USER} --{db_engine}-password={DB_PASSWORD} --{db_engine}-db={DB_NAME} '
        f'--tables=24 --table-size={table_size} --threads=1 --events={NUM_OF_QUERIES} run'
    )
    subprocess.run(sysbench_run, shell=True)

    print("SysBench has completed.")

    # Wait for EnergiBridge before stopping it
    print("Waiting for EnergiBridge to complete...")
    energiBridgeProcess.wait()

    # Stop EnergiBridge after SysBench is done
    for proc in psutil.process_iter(attrs=['pid', 'name']):
        if "energibridge" in proc.info['name'].lower():
            proc.terminate()
            print("EnergiBridge has been stopped.")

    print(f"Completed iteration {iteration} of {experiment_name}")
    time.sleep(60)  # Rest 1 minute between repetitions

# Run shuffled experiments
for exp in experiments:
    run_experiment(exp["DB_ENGINE"], exp["TABLE_SIZE"], exp["Iteration"])

print("All experiments completed!")
input("Press Enter to exit...")