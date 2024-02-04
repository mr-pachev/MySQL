CREATE PROCEDURE udp_reduce_price(category_name VARCHAR(50))
BEGIN
UPDATE products AS p
JOIN reviews AS r ON p.review_id = r.id
JOIN categories AS c ON p.category_id = c.id
SET price = ROUND(price * 0.7, 2)
WHERE r.rating < 4 AND category_name = c.name;
END$$