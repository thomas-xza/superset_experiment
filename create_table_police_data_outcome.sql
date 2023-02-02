/*
The official CSVs look like:
Crime ID,
Month,
Reported by,
Falls within,
Longitude,
Latitude,
Location,
LSOA code,
LSOA name,
Outcome type
*/

CREATE TABLE crime_data_gmp_outcome (
    id SERIAL,
    crime_id VARCHAR(128),
    month VARCHAR(8),
    reported_by VARCHAR(64),
    falls_within VARCHAR(64),
    longitude  DECIMAL(9,6),
    latitude  DECIMAL(8,6),
    location VARCHAR(128),
    lsoa_c  VARCHAR(64),
    lsoa_n  VARCHAR(64),
    outcome_type   VARCHAR(64),
    PRIMARY KEY (id)
);
