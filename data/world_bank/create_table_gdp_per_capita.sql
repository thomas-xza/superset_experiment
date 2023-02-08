	
CREATE TABLE worldbank_gdp_per_capita (
    id SERIAL,
    country VARCHAR(64),
    country_code VARCHAR(4),
    year_2010 INT,
    year_2012 INT,
    year_2014 INT,
    year_2016 INT,
    year_2018 INT,
    year_2020 INT,
    PRIMARY KEY (id)
);
