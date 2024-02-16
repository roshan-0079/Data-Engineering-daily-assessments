# sorted
a = [5, 1, 4, 3]
print(sorted(a))
print(a)


# sorted with reverse
strs = ['aa', 'BB', 'zz', 'CC']
print(sorted(strs))
print(sorted(strs, reverse=True))


# sorting with key
strs = ['ccc', 'aaaa', 'd', 'bb']
print(sorted(strs, key=len))


# key with lower()
strs = ['ccc', 'aaaa', 'd', 'bb']
print(sorted(strs, key=str.lower))


# function to key
strs = ['xc', 'zb', 'yd', 'wa']


def MyFn(s):
    return s[-1]


print(sorted(strs, key=MyFn))

# sort() method
a = [5, 1, 4, 3]
a.sort()
print(a)