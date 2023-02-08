	
CREATE TABLE worldbank_electricity_use_per_capita (
    id SERIAL,
    country VARCHAR(64),
    country_code VARCHAR(4),
    year_2010 SMALLINT,
    year_2012 SMALLINT,
    year_2014 SMALLINT,
    year_2016 SMALLINT,
    year_2018 SMALLINT,
    year_2020 SMALLINT,
    PRIMARY KEY (id)
);
