import pandas as pd

# Creating a DataFrame from a dictionary
data = {'Name': ['Roshan', 'Sahil', 'Umar'],
        'Age': [21, 15, 23],
        'City': ['Nellore', 'Atlanta', 'Kovur']}

df = pd.DataFrame(data)
print(df)