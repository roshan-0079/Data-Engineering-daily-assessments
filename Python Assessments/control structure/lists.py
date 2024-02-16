l1 = []
l2 = [1,2,3,4,5]

l1.append(1)  # adds a value to the list
l2.remove(1) # removes the value from the list
l2.insert(2,0) # at index 2, value 0 will be added
print(l2)
l2.sort() # data in the list will be sorted
print(l2)
print(l1)
print(l1+l2)
print(l1*3)
print(l2[0])
print(l2[0:3]) # list slicing
print(l2[1:4:2])
print(l2[::-1]) # reversing a list