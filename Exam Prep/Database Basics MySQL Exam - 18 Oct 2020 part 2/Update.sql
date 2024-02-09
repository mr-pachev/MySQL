UPDATE employees
SET salary = salary - 500,
	manager_id = 3
WHERE YEAR(hire_date) > 2003 AND store_id <> 5 AND store_id <> 14;