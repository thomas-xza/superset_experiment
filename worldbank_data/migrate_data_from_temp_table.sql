/*
Food Prices for Nutrition Data,FPN,Dominica,DMA,2020,YR2020,4.345
*/

CREATE TEMPORARY TABLE worldbank_tmp(
    id SERIAL,
    junk1 VARCHAR(128),
    junk2 VARCHAR(8),
    country VARCHAR(64),
    country_code VARCHAR(4),
    junk3 VARCHAR(4),
    junk4 VARCHAR(8),
    cost DECIMAL(5,4),
    PRIMARY KEY (id)
);

COPY worldbank_tmp(
     junk1,
     junk2,
     country,
     country_code,
     junk3,
     junk4,
     cost
     )
FROM '/tmp/cost_of_healthy_diet_per_country_2020.csv'
WITH (format csv);

INSERT INTO worldbank_food_cost_country (id, country, country_code, cost)
SELECT id, country, country_code, cost
FROM worldbank_tmp;


