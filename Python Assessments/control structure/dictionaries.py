d = {}
d1 = {0:'zero',1:'one'}

print(d1[0],d1[1])
print(d1.get(0)) # retrieves the value of a key
d1.pop(0) # deletes the key-value pair of the key provided
print(d1)
d1.update({1: "ONE"}) # updates the data
print(d1)
d[0]="Zero"
print(d)