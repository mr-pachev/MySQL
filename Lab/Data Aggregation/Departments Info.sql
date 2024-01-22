SELECT department_id,
	COUNT(salary) AS 'Number of emploees'
FROM employees
	GROUP BY (department_id);