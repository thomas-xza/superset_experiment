


COPY worldbank_energy_imports_percentage_of_energy(
     country,
     country_code,
     year_2010,
     year_2012,
     year_2014,
     year_2016,
     year_2018,
     year_2020
     )
FROM '/tmp/energy_imports_percentage_of_energy.csv'
WITH (
     FORMAT csv,
     HEADER
     )
;
