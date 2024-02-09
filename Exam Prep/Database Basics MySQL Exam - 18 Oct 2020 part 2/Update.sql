UPDATE employees
SET salary = salary - 500,
	manager_id = 3
WHERE YEARH(hire_date) > 2003 AND store_id <> store_id IN (5, 14);