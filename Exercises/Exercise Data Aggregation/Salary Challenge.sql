SELECT first_name, last_name, department_id FROM employees
WHERE salary > (
	SELECT AVG(salary) FROM employees AS e
    WHERE employees.department_id = e.department_id
)
ORDER BY department_id, employee_id
LIMIT 10; 