DELIMITER $$
CALL usp_raise_salaries('Finance')$$

CREATE PROCEDURE usp_raise_salary_by_id(id INT)
	BEGIN
		DECLARE rise_employee INT;
        START TRANSACTION;
        SET rise_employee := (
			SELECT COUNT(*)
            FROM employees
            WHERE employee_id = id
        );
        UPDATE employees
        SET salary = salary * 1.05
        WHERE employee_id = id;
        
        IF(rise_employee<1) THEN
			ROLLBACK;
		ELSE
			COMMIT;
		END IF;
	END$$
    
CALL usp_raise_salary_by_id(17)$$