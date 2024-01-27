SELECT
	mc.country_code,
    COUNT(m.mountain_range) AS 'mountain_range'
FROM mountains_countries AS mc
JOIN mountains AS m ON m.id = mc.mountain_id
GROUP BY mc.country_code
HAVING mc.country_code IN ('US', 'RU', 'BG')
ORDER BY `mountain_range` DESC;