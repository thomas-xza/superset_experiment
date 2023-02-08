


COPY worldbank_broadband_per_100_people(
     country,
     country_code,
     year_2010,
     year_2012,
     year_2014,
     year_2016,
     year_2018,
     year_2020
     )
FROM '/tmp/broadband_per_100_people.csv'
WITH (
     FORMAT csv,
     HEADER
     )
;
