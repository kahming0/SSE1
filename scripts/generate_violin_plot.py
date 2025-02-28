import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

gen_for_linux = False

if gen_for_linux:
	file_path = "../results/processed/extracted_joules_results_linux.csv"
else:
	file_path = "../results/processed/extracted_joules_results.csv"
df = pd.read_csv(file_path)
df["db_size"] = df["db_size"].astype(str)
sns.set_theme(style="whitegrid")

def get_sample_sizes(df, group_col):
	counts = df.groupby(group_col)["Joules"].count().to_dict()
	sorted_sizes = sorted(df[group_col].unique())
	labels = [f"{size}\n(n={counts.get(size, 0)})" for size in sorted_sizes]
	return labels, sorted_sizes

mysql_labels, mysql_ticks = get_sample_sizes(df[df["engine"] == "mysql"], "db_size")
pgsql_labels, pgsql_ticks = get_sample_sizes(df[df["engine"] == "pgsql"], "db_size")
fig, axes = plt.subplots(1, 2, figsize=(14, 6), sharey=True)


# MySQL Plot
sns.violinplot(x="db_size", y="Joules", data=df[df["engine"] == "mysql"], 
			   inner=None, color="lightblue", ax=axes[0])
sns.boxplot(x="db_size", y="Joules", data=df[df["engine"] == "mysql"], 
			width=0.2, boxprops={'zorder': 2}, ax=axes[0])
axes[0].set_title("Energy Consumption - MySQL")
axes[0].set_xlabel("Database Size")
axes[0].set_ylabel("Joules")
axes[0].set_xticks(mysql_ticks)
axes[0].set_xticklabels(mysql_labels)


# PostgreSQL Plot
sns.violinplot(x="db_size", y="Joules", data=df[df["engine"] == "pgsql"], 
			   inner=None, color="lightcoral", ax=axes[1])
sns.boxplot(x="db_size", y="Joules", data=df[df["engine"] == "pgsql"], 
			width=0.2, boxprops={'zorder': 2}, ax=axes[1])
axes[1].set_title("Energy Consumption - PostgreSQL")
axes[1].set_xlabel("Database Size")
axes[1].set_ylabel("")
axes[1].set_xticks(pgsql_ticks)
axes[1].set_xticklabels(pgsql_labels)

if gen_for_linux:
	h2h_plot_path = "../results/processed/h2h_joule_violinbox_linux.png"
else:
	h2h_plot_path = "../results/processed/h2h_joule_violinbox.png"
plt.savefig(h2h_plot_path, dpi=300)
plt.close()

h2h_plot_path