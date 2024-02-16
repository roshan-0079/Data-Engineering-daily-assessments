set1 = {1, 2, 3, 4}
# function to copy the set
set2 = set1.copy()
# prints the copied set
print(set2)

# Python program to demonstrate that copy created using set copy is shallow
first = {'g', 'e', 'e', 'k', 's'}
second = first.copy()
# before adding
print('before adding: ')
print('first: ', first)
print('second: ', second)
# Adding element to second, first does not change
second.add('f')
# after adding
print('after adding: ')
print('first: ', first)
print('second: ', second)