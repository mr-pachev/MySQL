SELECT
	t.id AS 'table_id',
	capacity,
	COUNT(c.id) AS 'count_clients',
	(CASE
    WHEN COUNT(c.id) < capacity THEN 'Free seats'
    WHEN COUNT(c.id) = capacity THEN 'Full'
    ELSE 'Extra seats'
    END) AS 'availability'
    FROM tables AS t
    JOIN orders AS o ON t.id = o.table_id
	JOIN orders_clients AS oc ON o.id = oc.order_id
    JOIN clients AS c ON oc.client_id = c.id
	WHERE t.floor = 1
    GROUP BY t.id
    ORDER BY `table_id` DESC;