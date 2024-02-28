import pandas as pd

data = 'sample.csv'
df = pd.read_csv(data)
dataframe = pd.DataFrame(df)
print(dataframe)