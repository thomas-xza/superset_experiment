SELECT longitude, latitude, crime_type
FROM crime_data_london
WHERE month LIKE '2022-12'
AND crime_type LIKE 'Shoplifting';
