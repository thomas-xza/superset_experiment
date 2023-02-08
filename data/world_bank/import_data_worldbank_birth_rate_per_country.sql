


COPY worldbank_birth_rate_per_country(
     country,
     country_code,
     year_2010,
     year_2012,
     year_2014,
     year_2016,
     year_2018,
     year_2020
     )
FROM '/tmp/birth_rate_per_country.csv'
WITH (
     FORMAT csv,
     HEADER
     )
;
