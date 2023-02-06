/*
Food Prices for Nutrition Data,FPN,Dominica,DMA,2020,YR2020,4.345
*/

CREATE TEMPORARY TABLE worldbank_excess (
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
