CREATE PROCEDURE udp_courses_by_address(address_name VARCHAR(100))
BEGIN
	SELECT
		a.name,
		c.full_name AS 'full_names',
       (CASE
       WHEN cor.bill <= 20 THEN 'Low'
       WHEN cor.bill <= 30 THEN 'Medium'
       ELSE 'High'
       END) AS 'level_of_bill',
        make,
        `condition`,
        cat.name AS 'cat_name'
	FROM addresses AS a
    JOIN courses AS cor ON a.id = cor.from_address_id
    JOIN clients AS c ON cor.client_id = c.id
    JOIN cars AS ca ON cor.car_id = ca.id
    JOIN categories AS cat ON ca.category_id = cat.id
    WHERE a.name = address_name
    ORDER BY make, `full_names`;
END$$