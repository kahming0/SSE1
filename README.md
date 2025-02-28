# Installation Instructions WSL/Linux

- Install [PostgreSQL](https://www.postgresql.org/) and [MySQL](https://www.mysql.com/) using WSL.
- Install [Energibridge](https://github.com/tdurieux/EnergiBridge).
- Install [sysbench](https://github.com/akopytov/sysbench).
- Create a PostgreSQL database and user and grant all permissions to the database using this [resource](https://harshityadav95.medium.com/postgresql-in-windows-subsystem-for-linux-wsl-6dc751ac1ff3).
- Create a MySQL database and user and grant all permissions to the database by following this [resource](https://pen-y-fan.github.io/2021/08/08/How-to-install-MySQL-on-WSL-2-Ubuntu/).
- Additional resources on running sysbench on PostgreSQL can be found [here](https://severalnines.com/blog/how-benchmark-postgresql-performance-using-sysbench/). You can mimic the behavior in MySQL.

> [!NOTE]  
> In our WSL experiment Energibridge was installed on Windows, rather than WSL, therefore you would have to make adjustments to the `scripts\run_experiment_shuffle_queries.ps1` script if your Energibridge executable is on WSL.

# Running the Experiment (Windows)

- replace the placeholder values for the file paths and database credentials in  `scripts\run_experiment_shuffle_queries.ps1`, with your own values.
- run `scripts\run_experiment_shuffle_queries.ps1` using the following command in a PowerShell terminal window:
`.\scripts\run_experiment_shuffle_queries.ps1`.

# Running the Experiment (Linux / WSL)
- replace the placeholder values for the file paths and database credentials in  `scripts/run_experiment_linux_queries.sh`, with your own values.
- run `scripts/run_experiment_linux_queries.sh` using the following command in a Linux terminal:
`./scripts/run_experiment_linux_queries.sh`.

# Generate Results

- create a python virtual environment: ```python -m venv venv```.
- activate the virtual environment: ```venv\Scripts\activate``` (Windows).
- install dependencies: ```pip install -r requirements.txt```.
- parse Joule output from `.txt` to `.csv`, run: ```python process_joule.py```.
- run the two following scripts to generate plots: 
    
    - ```python generate_violin_plot.py```.
    - ```python generate_violin_plot_2.py```.
 - view the plots in `results/processed`.
