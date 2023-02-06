#!/usr/bin/env python3.11

from datetime import datetime

import re


def main():

    data = read_file("./raw_data/cost_of_healthy_diet_per_country_2020.csv")
    
    data = normalise_data(data)

    data = finalise_data(data)

    write_data(data)

    
def write_data(data):

    with open("./processed_data/cost_of_healthy_diet_per_country_2020.csv", "w") as f:

        f.write("country,country_code,cost\n")

        f.write(data)
    

def finalise_data(data):

    lines = data.split("\n")

    new_data = ""

    for line in lines:
        
        line = line.replace("Food Prices for Nutrition Data,FPN,", "")
        
        line = line.replace("2020,YR2020,", "")

        if not line.endswith(","):

            new_data += line + "\n"

    for _ in range(3):

        new_data = new_data.replace("\n\n", "\n")

    return new_data
        

def normalise_data(data):

    lines = data.split("\n")

    new_data = ""

    for line in lines:

        line = line.replace("..", "")

        line = line.replace("\r", "")

        ##  Remove meta-records that are made up of multiple countries

        line = re.sub(".*income.*", "", line)

        line = re.sub(".*World.*", "", line)

        ##  Fucking World Bank

        line = line.replace('"Taiwan, China"', "Taiwan")

        new_data += line + "\n"

    return new_data

    
def read_file(filename):

    with open(filename, "rb") as f:

        return f.read().decode(encoding='utf-8', errors='ignore')


main()
