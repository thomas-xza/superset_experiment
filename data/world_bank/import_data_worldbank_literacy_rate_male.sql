


COPY worldbank_literacy_rate_male(
     country,
     country_code,
     year_2010,
     year_2012,
     year_2014,
     year_2016,
     year_2018,
     year_2020
     )
FROM '/tmp/literacy_rate_male.csv'
WITH (
     FORMAT csv,
     HEADER
     )
;
