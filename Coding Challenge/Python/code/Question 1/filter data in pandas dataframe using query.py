import pandas as pd

data = {'Name': ['Roshan', 'Sahil', 'Umar'],
        'Age': [21, 15, 23],
        'City': ['Nellore', 'Atlanta', 'Kovur']}
df = pd.DataFrame(data)
filtered_df = df.query('Age > 20')

print("Original DataFrame:")
print(df)

print("\nFiltered DataFrame:")
print(filtered_df)
