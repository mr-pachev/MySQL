SELECT 
	full_name,
   COUNT(cor.car_id) AS 'count_of_cars',
   SUM(cor.bill) AS 'total_sum'
FROM clients AS c
JOIN courses AS cor ON c.id = cor.client_id
WHERE full_name LIKE '_a%'
GROUP BY c.id
HAVING `count_of_cars` > 1
ORDER BY c.full_name;