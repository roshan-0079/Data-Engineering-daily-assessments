# arange([start,] stop[, step], [, dtype=None]) -- syntax
import numpy as np


a = np.arange(1, 10)
print(a)


x = range(1, 10)
print(x)    # x is an iterator
print(list(x))


# examples:
x = np.arange(10.4)
print(x)
x = np.arange(0.5, 10.4, 0.8)
print(x)


# examples:
np.arange(12.04, 12.84, 0.08)


# examples:
x = np.arange(0.5, 10.4, 0.8, int)
print(x)