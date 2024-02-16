import pandas as pd

# Sample data for two DataFrames
data1 = {'ID': [1, 2, 3, 4],
         'Value1': [10, 20, 30, 40]}
data2 = {'ID': [2, 3, 4, 5],
         'Value2': [50, 60, 70, 80]}

df1 = pd.DataFrame(data1)
df2 = pd.DataFrame(data2)

# Perform an inner join on 'ID'
merged_df = pd.merge(df1, df2, on='ID', how='inner')

# Group by 'ID' and calculate the sum of 'Value1' and 'Value2'
result = merged_df.groupby('ID').agg({'Value1': 'sum', 'Value2': 'sum'}).reset_index()

print(result)