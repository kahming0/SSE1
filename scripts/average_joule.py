import pandas as pd
import numpy as np

data_path = "results/processed/extracted_joules_results.csv"
df = pd.read_csv(data_path)

def remove_outliers(data):
    Q1 = np.percentile(data, 25)
    Q3 = np.percentile(data, 75)
    IQR = Q3 - Q1
    lower_bound = Q1 - 1.5 * IQR
    upper_bound = Q3 + 1.5 * IQR
    return data[(data >= lower_bound) & (data <= upper_bound)]

results = []
for (engine, db_size), group in df.groupby(["engine", "db_size"]):
    filtered_joules = remove_outliers(group["Joules"])
    avg_joules = filtered_joules.mean()
    results.append([engine, db_size, avg_joules])

df = pd.DataFrame(results, columns=["Engine", "Database Size", "Average Joules"])

print(df)