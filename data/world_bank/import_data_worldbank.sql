
COPY worldbank_food_cost_country(
     country,
     country_code,
     cost
     )
FROM '/tmp/cost_of_healthy_diet_per_country_2020.csv'
WITH (
     FORMAT csv,
     HEADER
     )
;
