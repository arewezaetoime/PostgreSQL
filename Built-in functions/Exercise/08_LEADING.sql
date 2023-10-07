SELECT
	continent_name,
	TRIM(LEADING FROM continent_name) AS "Trim"
FROM
	continents;