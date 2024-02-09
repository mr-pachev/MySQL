DELIMITER $$
CREATE FUNCTION udf_top_paid_employee_by_store(store_name VARCHAR(50))
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
DECLARE	full_info VARCHAR(100);
	SET full_info := (SELECT 
						CONCAT(e.first_name, ' ', e.middle_name, '. ', e.last_name, ' works in store for ', 2020 - YEAR(e.hire_date), ' years') AS 'full_info'
                        FROM employees AS e
                        JOIN stores AS s ON e.store_id = s.id
                        WHERE s.name = store_name
                        ORDER BY e.salary DESC
                        LIMIT 1);
RETURN full_info;
END$$