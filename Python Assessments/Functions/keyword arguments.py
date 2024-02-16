def fun1(arg1, *args):
	print("First argument :", arg1)
	for arg in args:
		print("Next argument through *argv :", arg)


fun1('Hello', 'Welcome', 'to', 'GeeksforGeeks')


def fun2(**kwargs):
	for key, value in kwargs.items():
		print("%s == %s" % (key, value))


# Driver code
fun2(first='Geeks', mid='for', last='Geeks')
