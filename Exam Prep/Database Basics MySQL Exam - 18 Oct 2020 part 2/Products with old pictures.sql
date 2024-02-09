SELECT 
	p.name AS 'product_name',
    price,
    best_before,
    CONCAT(SUBSTRING(p.description, 1, 10), '...') AS 'short_description',
    pic.url
FROM products AS p
JOIN pictures AS pic ON p.picture_id = pic.id
WHERE LENGTH(p.description) > 100 AND 
						YEAR(pic.added_on) < 2019 AND 
                        p.price > 20
ORDER BY p.price DESC;