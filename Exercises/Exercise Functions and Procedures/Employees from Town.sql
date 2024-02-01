CREATE PROCEDURE usp_get_employees_from_town(town_name VARCHAR(50))
BEGIN
	SELECT first_name, last_name
    FROM employees AS e
    JOIN addresses USING (address_id)
    JOIN towns USING (town_id)
    WHERE name = town_name
    ORDER BY first_name, last_name, employee_id;
END$$