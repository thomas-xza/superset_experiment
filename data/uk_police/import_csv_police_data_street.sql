COPY crime_data_gmp_street(crime_id, month, reported_by, falls_within, longitude, latitude, location, lsoa_c, lsoa_n, crime_type, last_outcome, context)
FROM '/tmp/2016_07_to_2017_12_gmp_police_street_clean.csv'
DELIMITER ','
CSV HEADER;

/*
2018_01_to_2019_06_gmp_police_street_clean.csv
2016_07_to_2017_12_gmp_police_street_clean.csv
*/
