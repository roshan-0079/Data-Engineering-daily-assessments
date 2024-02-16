import pandas as pd

# Sample DataFrame
data = {'Name': ['Alice', 'Bob', 'Charlie', 'David', 'Emily'],
        'Age': [25, 30, 22, 35, 28],
        'Salary': [50000, 60000, 45000, 70000, 55000]}
df = pd.DataFrame(data)

# Query to filter data
filtered_df = df.query("Age > 25 and Salary > 50000")
print(filtered_df)