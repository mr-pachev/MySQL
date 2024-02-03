CREATE FUNCTION udf_client_bill(full_name VARCHAR(50))
    RETURNS DECIMAL(10,2)
	DETERMINISTIC
    BEGIN
		DECLARE total_price DECIMAL(19,2);
        SET total_price := (SELECT SUM(p.price)
							FROM products AS p
                            JOIN orders_products AS op ON p.id = op.product_id
                            JOIN orders AS o ON op.order_id = o.id
                            JOIN orders_clients AS oc ON o.id = oc.order_id
                            JOIN clients AS c ON oc.client_id = c.id
                            WHERE CONCAT(c.first_name, ' ', c.last_name) = full_name
                            );
		RETURN total_price;
    END