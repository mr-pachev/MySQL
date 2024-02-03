CREATE PROCEDURE udp_happy_hour(type VARCHAR(50)) 
    BEGIN
		UPDATE products AS p
        SET price = price - ((price / 100) * 20)
        WHERE price >= 10 AND p.type = type;
    END$$