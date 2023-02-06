	
CREATE TABLE worldbank_food_cost_country (
    id SERIAL,
    country VARCHAR(64),
    country_code VARCHAR(4),
    cost DECIMAL(5,4),
    PRIMARY KEY (id)
);
