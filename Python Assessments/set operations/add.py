PYT = set()
PYT.add('s')
print("Letters are:", PYT)
PYT.add('e')
print("Letters are:", PYT)
# adding 's' again
PYT.add('s')
print("Letters are:", PYT)

#2
PYT = {'g', 'e', 'k'}
# adding 's'
PYT.add('s')
print("Letters are:", PYT)
# adding 's' again
PYT.add('s')
print("Letters are:", PYT)

# Add element in a set that already exists
# set of letters
PYT = {6, 0, 4}
PYT.add(1)
print('Letters are:', PYT)
# adding 0
PYT.add(0)
print('Letters are:', PYT)

# Adding any iterable to a set
s = {'g', 'e', 'e', 'k', 's'}
t = ('f', 'o')
l = ['a', 'e']
# adding tuple t to set s.
s.add(t) # for tuple we can use both add and update depending upon how we need
# adding list l to set s.
s.update(l) # for list we cant use add we use update
print(s)