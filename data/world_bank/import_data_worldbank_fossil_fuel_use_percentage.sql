


COPY worldbank_fossil_fuel_use_percentage(
     country,
     country_code,
     year_2010,
     year_2012,
     year_2014,
     year_2016,
     year_2018,
     year_2020
     )
FROM '/tmp/fossil_fuel_use_percentage.csv'
WITH (
     FORMAT csv,
     HEADER
     )
;
