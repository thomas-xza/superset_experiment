#!/usr/bin/env python3.11

##  $ ./indicator_data_selector.py ./raw_data/example.csv

import argparse
import csv
import os.path
import re


def main():

    file_path = parse_arg()

    data = read_file(file_path)
    
    # data = finalise_data(data)

    write_data(file_path, data)


def parse_arg():

    parser = argparse.ArgumentParser()

    parser.add_argument('filename')

    args = parser.parse_args()

    return args.filename

    
def write_data(file_path, data):

    filename = os.path.basename(file_path)

    with open(f"./processed_data/{filename}", "w") as f:

        f.write("country,country_code,2010,2012,2014,2016,2018,2020\n")

        f.write(data)
    

# def finalise_data(data):

    # lines = data.split("\n")

    # new_data = ""

    # for line in lines:

    #     pass
        
    # for _ in range(3):

    #     new_data = new_data.replace("\n\n", "\n")

    # return new_data


def read_file(file_path):

    new_csv = ""

    with open(file_path, "r") as csv_file:

        csv_dict = csv.DictReader(csv_file)

        for row in csv_dict:

            for key in [ "Country Name", "Country Code" ]:

                new_csv += '"' + row[key] + '",'

            for key in [ "2010", "2012", "2014", "2016", "2018", "2020" ]:

                new_csv += row[key].split(".")[0] + ","

            new_csv = new_csv.removesuffix(",") + "\n"

    return new_csv

    
main()
