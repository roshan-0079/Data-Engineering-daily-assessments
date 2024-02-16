a=9
if a==9:
    print("True")

a = int(input("Enter your number: "))

if a%2:
    print("{} is odd number, {}".format(a, "hello"))
else:
    print("{} is an even number".format(a))

"""
if a is a multiple of 3 then print 3
if a is multiple of 2 then print 2
if a is multiple of 2 & 3 then print 6
else print the number 
"""
a=22
if a%3 ==0 and a%2 == 0:
    print("multiple of 6")
elif a%3 ==0:
    print("multiple of 3")
elif a % 2 == 0:
    print("multiple of 2")
else:
    print(a)

a=22
if a%3== 0 or a%2 ==0:
    if a%3:
        print("multiple of 2")
    elif a%2:
        print("multiple of 3")
    else:
        print("multiple of 6")
else:
    print(a)

x = "odd" if a%2 else "even"
print(x)
