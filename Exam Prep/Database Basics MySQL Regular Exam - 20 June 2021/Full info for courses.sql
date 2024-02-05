SELECT
	a.name,
    (CASE
    WHEN HOUR(cor.start) BETWEEN 6 AND 20 THEN 'Day'
    WHEN HOUR(cor.start) BETWEEN 21 AND 5 THEN 'Night'
    END) AS 'day_time',
    bill,
    full_name,
    make,
    model,
   cat.name AS 'category_name'
FROM addresses AS a
JOIN courses AS cor ON a.id = cor.from_address_id
JOIN clients AS c ON cor.client_id = c.id
JOIN cars AS ca ON cor.car_id = ca.id
JOIN categories AS cat ON ca.category_id = cat.id
ORDER BY cor.id;