SELECT 
	g.name,
	g.release_date,
CONCAT(SUBSTRING(description, 1, 10), '...') AS 'summary',
(CASE
WHEN MONTH(release_date) IN (01, 02, 03) THEN 'Q1'
WHEN MONTH(release_date) IN (04, 05, 06) THEN 'Q2'
WHEN MONTH(release_date) IN (07, 08, 09) THEN 'Q3'
WHEN MONTH(release_date) IN (10, 11, 12) THEN 'Q4'
END) AS 'quarter',
(SELECT name FROM teams WHERE id = g.team_id)   AS 'team_name'
FROM games AS g
WHERE name LIKE '%2' AND MONTH(release_date) % 2 = 0;