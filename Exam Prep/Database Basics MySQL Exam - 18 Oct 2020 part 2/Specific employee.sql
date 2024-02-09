SELECT
	CONCAT(first_name, ' ', last_name) AS 'Full_name',
	s.name AS 'Store_name',
	a.name AS 'address',
	salary
FROM employees AS e
JOIN stores AS s ON e.store_id = s.id
JOIN addresses AS a ON s.address_id = a.id
WHERE e.salary < 4000 AND 
				LENGTH(s.name) > 8 AND
                e.last_name LIKE '%n' AND
                a.name LIKE '%5%';