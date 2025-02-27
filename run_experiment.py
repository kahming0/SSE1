import os
import subprocess
import time
import random
import psutil
import ctypes
import sys
import csv
from pyEnergiBridge.api import EnergiBridgeRunner

runner = EnergiBridgeRunner()


# File for the joule & time duration results of EnergiBridge
joule_output_path = rf"C:\Users\kevin\Documents\University\MSc Computer Science\CS 24-25\Quarter 3\CS4575 Sustainable Software Engineering\EnergiBridge\joule_results.csv"

if not os.path.exists(joule_output_path):
	with open(joule_output_path, mode="w", newline="") as file:
		writer = csv.writer(file)
		writer.writerow(["Engine", "DB_Size", "Iteration", "Joules", "Time (s)"])

# Function to save a row into joule csv
def save_joule_to_csv(db_engine, table_size, iteration, energy, duration):
	with open(joule_output_path, mode="a", newline="") as file:
		writer = csv.writer(file)
		writer.writerow([db_engine, table_size, iteration, energy, duration])


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
FIBONACCI_SCRIPT_PATH = r"C:\Users\kevin\Documents\University\MSc Computer Science\CS 24-25\Quarter 3\CS4575 Sustainable Software Engineering\SSE1\scripts\fibonacci.ps1"
subprocess.run(["powershell", "Unblock-File", "-Path", f'"{FIBONACCI_SCRIPT_PATH}"'])
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
		drop_command = f'wsl mysql -u {DB_USER} -p"{DB_PASSWORD}" -D {DB_NAME} -e "DROP TABLE IF EXISTS sbtest1, sbtest2, sbtest3, sbtest4, sbtest5, sbtest6, sbtest7, sbtest8, sbtest9, sbtest10, sbtest11, sbtest12, sbtest13, sbtest14, sbtest15, sbtest16, sbtest17, sbtest18, sbtest19, sbtest20, sbtest21, sbtest22, sbtest23, sbtest24;"'
	else:
		drop_command = f'wsl psql -U {DB_USER} -d {DB_NAME} --no-password -c "DROP TABLE IF EXISTS sbtest1, sbtest2, sbtest3, sbtest4, sbtest5, sbtest6, sbtest7, sbtest8, sbtest9, sbtest10, sbtest11, sbtest12, sbtest13, sbtest14, sbtest15, sbtest16, sbtest17, sbtest18, sbtest19, sbtest20, sbtest21, sbtest22, sbtest23, sbtest24 CASCADE;"'
	
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
	runner.start(results_file=csv_output_path)
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

	# Stop EnergiBridge
	energy, duration = runner.stop()

	# Write EnergiBridge results to csv
	save_joule_to_csv(db_engine, table_size, iteration, energy, duration)

	print(f"Completed iteration {iteration} of {experiment_name}")
	time.sleep(60)  # Rest 1 minute between repetitions

# Run shuffled experiments
for exp in experiments:
	run_experiment(exp["DB_ENGINE"], exp["TABLE_SIZE"], exp["Iteration"])

# Sort the shuffled experiments in the joule csv
with open(joule_output_path, mode="r", newline="") as file:
	reader = csv.reader(file)
	header = next(reader)
	rows = list(reader)

	rows.sort(key=lambda x: (x[0], int(x[1]), int(x[2])))

	# Rewrite the sorted CSV file
	with open(joule_output_path, mode="w", newline="") as file:
		writer = csv.writer(file)
		writer.writerow(header)
		writer.writerows(rows)

print("All experiments completed!")
input("Press Enter to exit...")