import json


# Convert Nested JSON Object to Dictionary
with open('data.json') as json_file:
    data = json.load(json_file)

    # for reading nested data [0] represents the index value of the list
    print(data['Courses'][0])

    # for printing the key-value pair of nested dictionary for loop can be used
    print("\nPrinting nested dictionary as a key-value pair\n")
    for i in data['Courses']:
        print("Name:", i['Name'])
        print("Created by:", i['Created by'])
        print("Content:", i['Content'])
        print()
