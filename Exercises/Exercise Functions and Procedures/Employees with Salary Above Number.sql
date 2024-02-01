CREATE PROCEDURE usp_get_employees_salary_above(given_number DECIMAL (19,4))
BEGIN
	SELECT first_name, last_name
    FROM employees
    WHERE salary >= given_number
    ORDER BY first_name, last_name, employee_id;
END