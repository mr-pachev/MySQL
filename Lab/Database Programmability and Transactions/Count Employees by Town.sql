DELIMITER $$
CREATE FUNCTION ufn_count_employees_by_town(town_name VARCHAR(50))
RETURNS INT
DETERMINISTIC

BEGIN
	DECLARE id_for_town INT;
    DECLARE count_by_town INT;
    
    SET id_for_town := (
						SELECT `town_id`
						FROM `towns` AS t
                        WHERE t.`name` = `town_name`
						);
    SET count_by_town := (
						SELECT COUNT(*)
                        FROM `employees` AS e
                        WHERE e.`address_id` IN (
							SELECT `address_id`
                            FROM `addresses`
                            WHERE `town_id` = id_for_town
							)
						);
	RETURN count_by_town;
END$$