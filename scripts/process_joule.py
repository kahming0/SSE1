import os
import re
import pandas as pd

gen_for_linux = False

db_size_list = ["1000", "10000", "100000"]
directory = "../results/raw"
output_csv_path = "../results/processed/extracted_joules_results.csv"


if gen_for_linux:
	db_size_list = ["1k", "10k", "100k"]
	directory = "../results/linux_joules"
	output_csv_path = "../results/processed/extracted_joules_results_linux.csv"

joule_pattern = re.compile(r"Energy consumption in joules:\s*([\d.]+)")
data = []

for engine in ["mysql", "pgsql"]:
	for db_size in db_size_list:
		for iteration in range(1, 31):
			filename_format = f"joule_experiment_{engine}_{db_size}_{iteration}.txt"
			if gen_for_linux:
				filename_format = f"{engine}{db_size}{iteration}.txt"
			filename = filename_format
			file_path = os.path.join(directory, filename)

			if os.path.exists(file_path):
				with open(file_path, "r", encoding="utf-8") as file:
					content = file.read()

				match = joule_pattern.search(content)
				if match:
					joules = float(match.group(1))
					data.append({"Filename": filename, "engine": engine, "db_size": db_size, "iteration": iteration, "Joules": joules})

df = pd.DataFrame(data)
print(df)

output_csv = output_csv_path
df.to_csv(output_csv, index=False)
