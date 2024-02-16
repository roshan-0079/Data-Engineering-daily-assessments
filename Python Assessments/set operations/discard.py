numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9}
print(numbers)
# Deleting 5 from the set
numbers.discard(5)
# printing the resultant set
print(numbers)

# 2
numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9}
print(numbers)
# passing an element that is not in set
numbers.discard(13)
# this will not throw any errors but set remains same as before
print("\nresultant set : ", numbers)

# 3
myset = {'a', 1, "pyt", 2, 'b', 'abc', "Hexware", 8}
print(myset)
# Deleting a from the set
myset.discard("pyt")
print(myset)

# 4
myset = {'a', 1, "pyt", 2, 'b', 'abc', "Hexware", 8}
print(myset)
# trying to Delete pyts from the set which is not there
myset.discard("pyts")
print(myset)