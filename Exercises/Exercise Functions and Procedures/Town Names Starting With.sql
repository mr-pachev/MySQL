CREATE PROCEDURE usp_get_towns_starting_with(sting_input VARCHAR(50))
BEGIN
SELECT name AS 'town_name'
FROM towns
WHERE name LIKE CONCAT(sting_input, '%')
ORDER BY `town_name`;
END$$