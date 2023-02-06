#!/usr/bin/env python3.11

import re

from datetime import datetime

def main():

    data = read_file("./raw_data/ecb_europa_table.txt")

    data = normalise_data(data)

    data = finalise_data(data)

    write_data(data)

    
def write_data(data):

    with open("./processed_data/ecb_europa.csv", "w") as f:

        f.write("date,interest_date\n")

        f.write(data)
    

def finalise_data(data):

    lines = data.split("\n")

    new_data = ""
    
    for line in lines:

        ##  Input is: YYYY,DD,Month

        fields = line.split(",")

        date_obj = datetime.strptime(f"{fields[0]} {fields[1]} {fields[2]}" , '%Y %d %b')

        ##  This is the format expected by PostgreSQL.

        new_date = date_obj.strftime(f"%Y-%m-%d")
        
        if fields[4] != "-":

            interest_rate = fields[4]

        if fields[5] != "-":

            interest_rate = fields[5]

        if fields[4] != "-" or fields[5] != "-":

            new_data += new_date + "," + interest_rate + "\n"

    return new_data

    

def normalise_data(data):

    lines = data.split("\n")

    new_data = ""

    for line in lines:

        line = re.sub("^  ", " ", line)
        
        line = re.sub("\t", "", line)

        line = re.sub(" ", ",", line)
        
        line = line.replace(".,", ",")

        fields = line.split(",")

        if fields[0] != "" and line != "\n":

            prev_year = fields[0]

        else:

            fields[0] = prev_year

            if line != "":

                line = fields[0] + line

        new_data += line + "\n"

    return new_data.strip()

    
def read_file(filename):

    with open(filename, "r") as f:

        return f.read()


main()
