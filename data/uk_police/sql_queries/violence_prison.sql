SELECT
crime_data_gmp_street.longitude,
crime_data_gmp_street.latitude,
crime_data_gmp_street.crime_type,
crime_data_gmp_outcomes.outcome_type
FROM crime_data_gmp_street
JOIN crime_data_gmp_outcomes
ON
crime_data_gmp_street.crime_id =
crime_data_gmp_outcomes.crime_id
WHERE crime_type LIKE 'Violence%'
AND (outcome_type
LIKE 'Offender given suspended prison sentence'
OR outcome_type
LIKE 'Offender sent to prison');

