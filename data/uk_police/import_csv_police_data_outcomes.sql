COPY crime_data_gmp_outcomes(crime_id, month, reported_by, falls_within, longitude, latitude, location, lsoa_c, lsoa_n, outcome_type)
FROM '/tmp/2016_07_to_2017_12_gmp_police_outcomes_clean.csv'
DELIMITER ','
CSV HEADER;

/*
2018_01_to_2019_06_gmp_police_outcomes_clean.csv
2016_07_to_2017_12_gmp_police_outcomes_clean.csv
*/
