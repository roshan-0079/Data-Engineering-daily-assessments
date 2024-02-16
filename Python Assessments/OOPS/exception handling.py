try:
    print(10/0)
except Exception as e:
    print(e)
else:
    print("Done")
finally:
    print("This runs anyways")


try:
    print(10/10)
except Exception as e:
    print(e)
else:
    print("Done")
finally:
    print("This runs anyways")