SELECT
	c.name,
   COUNT(g.id) AS 'games_count',
   ROUND(AVG(g.budget), 2) AS 'avg_budget',
	MAX(g.rating) AS 'max_rating'
FROM categories AS c
JOIN games_categories AS gc ON c.id = gc.category_id
JOIN games AS g ON gc.game_id = g.id
WHERE g.rating >= '9.5'
GROUP BY c.id
ORDER BY `games_count` DESC, c.name;