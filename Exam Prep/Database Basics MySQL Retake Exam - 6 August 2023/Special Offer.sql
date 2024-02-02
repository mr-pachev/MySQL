CREATE PROCEDURE udp_special_offer(first_name VARCHAR(50))
BEGIN
	UPDATE property_offers AS po
    JOIN agents AS a ON po.agent_id = a.id
    SET price = price - ((price / 100) * 10)
    WHERE a.first_name = first_name;
END$$