DELIMITER $$
CREATE FUNCTION udf_customer_products_count(name VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE total_products INT;
    SET total_products := (
					SELECT COUNT(p.id) FROM customers AS c
                    JOIN orders AS o ON c.id = o.customer_id
                    JOIN orders_products AS op ON o.id = op.order_id
                    JOIN products AS p ON op.product_id = p.id
                    WHERE c.first_name = name
    );
RETURN total_products;
END$$