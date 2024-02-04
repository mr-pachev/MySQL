SELECT
	g.name,
	IF(budget < 50000, 'Normal budget', 'Insufficient budget') AS 'budget_level',
	t.name AS 'team_name',
	a.name AS 'address_name'
FROM games AS g
LEFT JOIN teams AS t ON g.team_id = t.id
LEFT JOIN offices AS o ON t.office_id = o.id
LEFT JOIN addresses AS a ON o.address_id = a.id
LEFT JOIN games_categories AS gc ON g.id = gc.game_id
WHERE g.release_date IS NULL AND gc.category_id IS NULL
ORDER BY g.name;