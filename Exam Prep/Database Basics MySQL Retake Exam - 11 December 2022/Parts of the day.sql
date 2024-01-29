SELECT
	flight_code,
    departure,
    (CASE 
		WHEN HOUR(departure) >= '05:00:00' AND HOUR(departure) <= '11:59:59' THEN 'Morning'
		WHEN HOUR(departure) >= '12:00:00' AND HOUR(departure) <= '16:59:59' THEN 'Afternoon'
		WHEN HOUR(departure) >= '17:00:00' AND HOUR(departure) <= '20:59:59' THEN 'Evening'
		WHEN HOUR(departure) >= '21:00:00' AND HOUR(departure) <= '04:59:59' THEN 'Night'
	END) AS 'day_part'
FROM flights
ORDER BY flight_code DESC;