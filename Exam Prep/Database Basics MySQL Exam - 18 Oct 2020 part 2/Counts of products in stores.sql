SELECT
	s.name, 
   COUNT(p.id) AS 'product_id',
   ROUND(AVG(p.price), 2) AS 'avg'
FROM stores AS s
LEFT JOIN products_stores AS ps ON ps.store_id = s.id
LEFT JOIN products AS p ON ps.product_id = p.id
GROUP BY s.id
ORDER BY `product_id` DESC, `avg` DESC, s.id;