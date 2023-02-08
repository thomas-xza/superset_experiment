


COPY worldbank_life_expectancy_at_birth(
     country,
     country_code,
     year_2010,
     year_2012,
     year_2014,
     year_2016,
     year_2018,
     year_2020
     )
FROM '/tmp/life_expectancy_at_birth.csv'
WITH (
     FORMAT csv,
     HEADER
     )
;
