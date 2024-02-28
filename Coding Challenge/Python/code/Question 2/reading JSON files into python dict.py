import json

x = '{"Name": "Roshan", "Age": 21, "Course": ["Data Engineering","CSE"]}'
json_dict = json.loads(x)
print(json_dict)
print(json_dict["Course"])