import pandas as pd


data = {'Date': ['2023-01-01', '2023-01-02', '2023-02-01', '2023-02-03', '2023-02-15'],
        'Status': ['Open', 'Closed', 'Open', 'Closed', 'Open']}
df = pd.DataFrame(data)

# Convert 'Date' column to datetime type
df['Date'] = pd.to_datetime(df['Date'])

# Create 'Month' column
df['Month'] = df['Date'].dt.to_period('M')

# Group by 'Month' and 'Status', then get counts
counts_by_month_status = df.groupby(['Month', 'Status']).size().reset_index(name='Count')

print(counts_by_month_status)