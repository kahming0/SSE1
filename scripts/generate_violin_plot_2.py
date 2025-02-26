import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

file_path = "results/processed/extracted_joules_results.csv"
df = pd.read_csv(file_path)

sns.set_theme(style="whitegrid")

def get_sample_sizes(df, group_col):
	counts = df.groupby(group_col)["Joules"].count().to_dict()
	labels = [f"{size}\n(n={counts.get(size, 0)})" for size in sorted(df[group_col].unique())]
	return labels

# MySQL
mysql_df = df[df["engine"] == "mysql"]
mysql_labels = get_sample_sizes(mysql_df, "db_size")

plt.figure(figsize=(7, 6))
sns.violinplot(x="db_size", y="Joules", data=mysql_df, inner=None, color="lightblue")
sns.boxplot(x="db_size", y="Joules", data=mysql_df, width=0.2, boxprops={'zorder': 2})
plt.title("Energy Consumption - MySQL")
plt.xlabel("Database Size")
plt.ylabel("Joules")
plt.xticks(ticks=range(len(mysql_labels)), labels=mysql_labels)

mysql_plot_path = "mysql_joule_violinbox.png"
plt.savefig(mysql_plot_path, dpi=300)
plt.close()


# PostgreSQL
pgsql_df = df[df["engine"] == "pgsql"]
pgsql_labels = get_sample_sizes(pgsql_df, "db_size")

plt.figure(figsize=(7, 6))
sns.violinplot(x="db_size", y="Joules", data=pgsql_df, inner=None, color="lightcoral")
sns.boxplot(x="db_size", y="Joules", data=pgsql_df, width=0.2, boxprops={'zorder': 2})
plt.title("Energy Consumption - PostgreSQL")
plt.xlabel("Database Size")
plt.ylabel("Joules")
plt.xticks(ticks=range(len(pgsql_labels)), labels=pgsql_labels)

pgsql_plot_path = "pgsql_joule_violinbox.png"
plt.savefig(pgsql_plot_path, dpi=300)
plt.close()

mysql_plot_path, pgsql_plot_path