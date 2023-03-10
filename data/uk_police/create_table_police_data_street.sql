CREATE TABLE crime_data_gmp_street (
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
    crime_type   VARCHAR(32),
    last_outcome  VARCHAR(256),
    context  VARCHAR(32),
    PRIMARY KEY (id)
);
