class parent:
    def __init__(self):
        pass

    def add(self,a,b):
        print(a+b)

    def sub(self,a,b):
        print(a-b)


class child(parent):
    def __init__(self):
        pass

    def add(self):
        print("Sum")

c = child()
c.add()
c.sub(12,2)




# class Rectangle:
#     def __init__(self, l, b):
#         self.length = l
#         self.breadth = b
#
#     def area(self):
#         return self.length * self.breadth
#
#     def perimeter(self):
#         return 2 * (self.length + self.breadth)
#
# class Cuboid(Rectangle):
#     def __init__(self, l, b, h):
#         self.height = h
#         self.length=l
#         self.breadth=b
#
#     def volume(self):
#         return self.length * self.breadth * self.height
#
#
# c = Cuboid(10, 5, 3)
# print('Volumes is', c.volume())