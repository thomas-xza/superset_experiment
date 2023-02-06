	
CREATE TABLE worldbank_rural_percentage_country (
    id SERIAL,
    country VARCHAR(64),
    country_code VARCHAR(4),
    year_2010 SMALLINT,
    year_2020 SMALLINT,
    PRIMARY KEY (id)
);
