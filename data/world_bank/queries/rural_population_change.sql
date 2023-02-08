SELECT country,country_code,SUM(year_2020 - year_2010) AS "test" 
FROM worldbank_forest_percentage_country
WHERE year_2020 is NOT NULL
AND year_2010 is NOT NULL
GROUP BY country,country_code
