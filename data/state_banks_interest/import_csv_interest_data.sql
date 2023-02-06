COPY interest_rates_time_bankofengland(date_of_change, interest_rate)
FROM '/tmp/bank_of_england.csv'
DELIMITER ','
CSV HEADER;

COPY interest_rates_time_federalreserve(date_of_change, interest_rate)
FROM '/tmp/federal_reserve.csv'
DELIMITER ','
CSV HEADER;

COPY interest_rates_time_europeancentral(date_of_change, interest_rate)
FROM '/tmp/european_central.csv'
DELIMITER ','
CSV HEADER;

/*
2018_01_to_2019_06_gmp_police_street_clean.csv
2016_07_to_2017_12_gmp_police_street_clean.csv
*/
