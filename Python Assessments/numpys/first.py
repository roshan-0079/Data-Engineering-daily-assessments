import numpy as np

cvalues = [20.1, 20.8, 21.9, 22.5, 22.7, 22.3, 21.8, 21.2, 20.9, 20.1]
C = np.array(cvalues)
print(C)
print(type(C))  # to know the type

# we want to turn the values into degrees Fahrenheit
print(C * 9 / 5 + 32)

# The array C has not been changed by above expression
print(C)
