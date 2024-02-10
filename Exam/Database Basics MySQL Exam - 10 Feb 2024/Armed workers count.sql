SELECT
	p.name,
   COUNT(w.id) AS 'is_armed'
FROM preserves AS p
LEFT JOIN workers AS w ON p.id = w.preserve_id
WHERE is_armed = 1
GROUP BY p.name
ORDER BY `is_armed` DESC, p.name;