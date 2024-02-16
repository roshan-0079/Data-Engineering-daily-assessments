import datetime

x = datetime.datetime.now()

print(x)
print(x.year)  # returns year
print(x.month)  # returns month
print(x.day)  # returns day
print(x.strftime("%A"))  # Weekday, full version
print(x.strftime("%a"))  # Weekday, short version
print(x.strftime("%B"))  # Month name, full version
print(x.strftime("%b"))  # Month name, short version
print(x.strftime("%c"))  # Local version of date and time
print(x.strftime("%C"))  # Century
