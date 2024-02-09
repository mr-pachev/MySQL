SELECT
	REVERSE(s.name) AS 'reversed_name',
	CONCAT(UPPER(t.name), '-', a.name) AS 'full_address',
	COUNT(e.id) AS 'employees_count'
FROM stores AS s
JOIN addresses AS a ON s.address_id = a.id
JOIN towns AS t ON a.town_id = t.id
JOIN employees AS e ON e.store_id = s.id
GROUP BY s.name
HAVING `employees_count` >= 1
ORDER BY `full_address`;