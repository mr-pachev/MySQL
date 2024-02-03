INSERT INTO products (name, type, price)
SELECT
	CONCAT(last_name, ' specialty'),
    'Cocktail',
    CEIL((salary / 100) * 1)
FROM waiters
WHERE id > 6;