DELIMITER $$
CREATE FUNCTION udf_courses_by_client(phone_num VARCHAR (20))
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE count INT;
    SET count := (
    SELECT COUNT(from_address_id)
    FROM courses AS cor
    JOIN clients AS c ON cor.client_id = c.id
    WHERE c.phone_number = phone_num
    );
    RETURN count;
END$$