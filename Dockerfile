FROM apache/superset
# Switching to root to install the required packages
USER root
# if you prefer Postgres, you may want to use `psycopg2-binary` instead
RUN pip install psycopg2-binary
# Find which driver you need based on the analytics database
# you want to connect to here:
# https://superset.apache.org/installation.html#database-dependencies
RUN pip install psycopg2
# Switching back to using the `superset` user
USER superset

RUN superset fab create-admin \
              --username admin \
              --firstname Superset \
              --lastname Admin \
              --email admin@superset.com \
              --password admin

RUN superset db upgrade

##  RUN superset load_examples

RUN superset init
