import pandas as pd


data = {'Status': ['Open', 'Closed', 'Open', 'Closed', 'Open']}
df = pd.DataFrame(data)

# Get count by Status
status_counts = df['Status'].value_counts()

print(status_counts)