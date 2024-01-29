SELECT
	UPPER(CONCAT(LEFT(p.last_name, 2), p.country_id)) AS flight_code,
    CONCAT(p.first_name, ' ', p.last_name) AS 'full_name',
    p.country_id
FROM passengers AS p
LEFT JOIN flights_passengers AS fp ON p.id = fp.passenger_id
LEFT JOIN flights AS f ON fp.flight_id = f.id
LEFT JOIN countries AS c ON f.destination_country = c.id
WHERE fp.flight_id IS NULL
ORDER BY p.country_id;