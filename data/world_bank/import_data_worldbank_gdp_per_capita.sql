


COPY worldbank_gdp_per_capita(
     country,
     country_code,
     year_2010,
     year_2012,
     year_2014,
     year_2016,
     year_2018,
     year_2020
     )
FROM '/tmp/gdp_per_capita.csv'
WITH (
     FORMAT csv,
     HEADER
     )
;
