#!/usr/bin/env python3.11

##  $ ./create_sql_table_template ./raw_data/example.csv

import argparse
import os.path


def main():

    file_path = parse_arg()

    # data = finalise_data(data)

    new_template(file_path)


def parse_arg():

    parser = argparse.ArgumentParser()

    parser.add_argument('filename')

    args = parser.parse_args()

    return args.filename

    
def new_template(file_path):

    filename = os.path.basename(file_path)

    with open("import_data_worldbank_template.sql", "r") as f:

        sql_template = f.read()

    table_name = filename.split(".")[0]

    sql_template = sql_template.replace("{table_name}", table_name)

    with open(f"import_data_worldbank_{table_name}.sql", "w") as f:

        f.write(sql_template)
        
    
main()
