SELECT
	employee_id,
    first_name,
    last_name,
    d.name AS 'department_name'
FROM employees AS e
JOIN departments AS d ON e.department_id = d.department_id
WHERE e.salary > 15000
ORDER BY e.department_id DESC;