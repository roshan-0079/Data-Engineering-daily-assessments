import pandas as pd

# Sample DataFrame
data = {'Name': ['Alice', 'Bob', 'Charlie', 'David', 'Emily'],
        'Age': [25, 30, 22, 35, 28],
        'Salary': [50000, 60000, 45000, 70000, 55000]}
df = pd.DataFrame(data)

# Sort DataFrame by the 'Age' column in ascending order
sorted_df = df.sort_values(by='Age')

# Display the sorted DataFrame
print(sorted_df)