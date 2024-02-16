import json
import pandas


def read_json(filename: str) -> dict:
    try:
        with open(filename, "r") as f:
            data = json.loads(f.read())
    except:
        raise Exception(f"Reading {filename} file encountered an error")

    return data


def normalize_json(data: dict) -> dict:
    new_data = dict()
    for key, value in data.items():
        if not isinstance(value, dict):
            new_data[key] = value
        else:
            for k, v in value.items():
                new_data[key + "_" + k] = v

    return new_data


def main():
    # Read the JSON file as python dictionary
    data = read_json(filename="article.json")

    # Normalize the nested python dict
    new_data = normalize_json(data=data)

    print("New dict:", new_data, "\n")

    # Create a pandas dataframe  
    dataframe = pandas.DataFrame(new_data, index=[0])

    # Write to a CSV file
    dataframe.to_csv("article.csv")


if __name__ == '__main__':
    main()
