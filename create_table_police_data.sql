CREATE TABLE crime_data_essex (
    id SERIAL,
    crime_id VARCHAR(128),
    month VARCHAR(8),
    reported_by VARCHAR(64),
    falls_within VARCHAR(64),
    longitude  VARCHAR(16),
    latitude  VARCHAR(16),
    location VARCHAR(128),
    lsoa_c  VARCHAR(64),
    lsoa_n  VARCHAR(64),
    type   VARCHAR(32),
    last_outcome  VARCHAR(256),
    context  VARCHAR(32),
    PRIMARY KEY (id)
);
