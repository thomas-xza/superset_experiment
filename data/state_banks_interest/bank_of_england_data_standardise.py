#!/usr/bin/env python3.11

from datetime import datetime

import re


def main():

    data = read_file("./raw_data/Bank Rate history and data Bank of England Database.csv")

    data = normalise_data(data)

    data = finalise_data(data)

    write_data(data)

    
def write_data(data):

    with open("./processed_data/bank_of_england.csv", "w") as f:

        f.write("date,interest_rate\n")

        f.write(data)
    

def finalise_data(data):

    lines = data.split("\n")

    new_data = ""

    for line in lines:

        fields = line.split(",")

        uk_date = fields[0]

        uk_date = fields[0].split("-")

        new_date = datetime.strptime(f"{uk_date[0]} {uk_date[1]} {uk_date[2]}" , '%d %b %y')

        interest_rate = fields[1]

        new_data += new_date.strftime("%Y-%m-%d") + "," + interest_rate + "\n"

        # date_new = date_new.strptime("%Y-%m-%d")

        # print(line)

    return new_data
        

def normalise_data(data):

    lines = data.split("\n")

    new_data = ""

    for line in lines:

        line = line.replace('"', '')
        
        line = line.replace(" ", "-")

        new_data += line + "\n"

    return new_data.strip()

    
def read_file(filename):

    with open(filename, "r") as f:

        return f.read()


main()
