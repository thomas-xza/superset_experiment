


COPY worldbank_rural_percentage_country(
     country,
     country_code,
     year_2010,
     year_2020
     )
FROM '/tmp/rural_population_percentage_country.csv'
WITH (
     FORMAT csv,
     HEADER
     )
;
