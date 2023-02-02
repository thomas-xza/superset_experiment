COPY crime_data_essex(crime_id, month, reported_by, falls_within, longitude, latitude, location, lsoa_c, lsoa_n, crime_type, last_outcome, context)
FROM '/tmp/2022_12_essex_crimes_by_street.csv'
DELIMITER ','
CSV HEADER;
