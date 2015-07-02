import csv
import argparse
import json


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("file", help="CSV downloaded from Mechanical Turk")
    args = parser.parse_args()

    all_json = []
    
    with open(args.file, 'rb') as csvfile:
        csvreader = csv.DictReader(csvfile)
        for row in csvreader:
            data = row['Answer 1']
            all_json.append(json.loads(data))

    out = open(args.file.replace(".csv", ".json"), 'wb')
    json.dump(all_json, out)
    out.close()


if __name__ == '__main__':
    main()
