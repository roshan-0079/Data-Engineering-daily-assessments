# lambda expression
x = lambda a, b, c : a + b + c
print(x(5, 6, 2))

# conversion of string into uppercase using lambda
a = 'Roshan'
x = lambda a: a.upper()
print(x(a))

# if else in lambda
x = lambda a, b: a if (a > b) else b
print(x(1, 2))

# filter function in lambda
age = [13, 90, 17, 59, 23, 70, 5]
x = list(filter(lambda age: age > 18, age))
print(x)

# map function in lambda
l = [13, 90, 17, 59, 23, 70, 5]
m = list(map(lambda a: a * 2, l))
print(m)

# reduce function in lambda
from functools import reduce

l = [13, 90, 17, 59, 23, 70, 5]
sum = reduce((lambda a, b: a + b), l)
print(sum)