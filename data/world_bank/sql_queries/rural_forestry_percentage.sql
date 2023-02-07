SELECT
    worldbank_forest_percentage_country.country,
    worldbank_forest_percentage_country.country_code,
    worldbank_forest_percentage_country.year_2020
    AS "forestry_year_2020",
    worldbank_rural_percentage_country.year_2020
    AS "rural_year_2020"
FROM worldbank_forest_percentage_country
JOIN worldbank_rural_percentage_country
ON worldbank_forest_percentage_country.country = worldbank_rural_percentage_country.country
WHERE worldbank_forest_percentage_country.year_2020 is NOT NULL
AND worldbank_rural_percentage_country.year_2020 is NOT NULL;
