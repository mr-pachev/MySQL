CREATE PROCEDURE usp_raise_salaries(department_name VARCHAR(50))
BEGIN
	UPDATE employees
    SET salary = salary * 1.05
    WHERE department_id IN (
			SELECT department_id
            FROM departments
            WHERE name = department_name
			);
END$$

CALL usp_raise_salaries('Finance')$$