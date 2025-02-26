import os
import re
import pandas as pd

directory = "results/raw"
joule_pattern = re.compile(r"Energy consumption in joules:\s*([\d.]+)")
data = []

for engine in ["mysql", "pgsql"]:
	for db_size in [1000, 10000, 100000]:
		for iteration in range(1, 31):
			filename = f"joule_experiment_{engine}_{db_size}_{iteration}.txt"
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

output_csv = "extracted_joules_results.csv"
df.to_csv(output_csv, index=False)
