#!/bin/bash

# Disable services
# bash "./scripts/wsl_disable_services.sh"

# Warm-up for 5 minutes
echo "Starting warm-up for 5 minutes..."
timeout 300 bash ./scripts/fibonacci.sh #--PRINT


# Experiment 1 - DB Size: 1k, Engine: MySQL, Repeat: 30
echo "Starting Experiment 1 - DB Size: 1k, Engine: MySQL, Repeat: 30..."
for i in {1..30}; do
	echo "Iteration $i of 30..."

	# Start EnergiBridge and log energy usage
	target/release/energibridge -o "Experiment1_run${i}.csv" --summary sleep 60 &
	ENERGIBRIDGE_PID=$!

	# Run SysBench
	#sysbench_placeholder &
	SYSBENCH_PID=$!

	wait $ENERGIBRIDGE_PID
	wait $SYSBENCH_PID

	echo "Completed iteration $i"
	echo "----------------------------"

	# Rest 1 minute
	echo "Rest for 1 minute"
	sleep 60
done


# Experiment 2 - DB Size: 1k, Engine: PostgreSQL, Repeat: 30
# Rest 1 minute
echo "Rest for 1 minute"
sleep 60


# Experiment 3 - DB Size: 10k, Engine: MySQL, Repeat: 30

# Rest 1 minute
echo "Rest for 1 minute"
sleep 60


# Experiment 4 - DB Size: 10k, Engine: PostgreSQL, Repeat: 30

# Rest 1 minute
echo "Rest for 1 minute"
sleep 60


# Experiment 5 - DB Size: 100k, Engine: MySQL, Repeat: 30

# Rest 1 minute
echo "Rest for 1 minute"
sleep 60


# Experiment 6 - DB Size: 100k, Engine: PostgreSQL, Repeat: 30
