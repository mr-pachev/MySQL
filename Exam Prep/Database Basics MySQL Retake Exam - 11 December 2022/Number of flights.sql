DELIMITER $$
CREATE FUNCTION udf_count_flights_from_country(country VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE flights_numbers INT;
    SET flights_numbers := (SELECT COUNT(departure_country)
							FROM flights AS f
                            JOIN countries AS c ON f.departure_country = c.id
                            WHERE c.name = country
                            GROUP BY f.departure_country
							);
	RETURN flights_numbers;
END$$