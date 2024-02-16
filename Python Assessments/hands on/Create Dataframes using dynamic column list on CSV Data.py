import pandas as pd


file_path = 'sample.csv'

# Define a dynamic list of columns
dynamic_columns = ['article_id', 'article_link']

# Read CSV data and select specific columns
df = pd.read_csv(file_path, usecols=dynamic_columns)

# Display the first few rows of the DataFrame
print(df.head())