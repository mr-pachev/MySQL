DELETE g FROM games AS g
LEFT JOIN games_categories AS gc ON g.id = gc.game_id
LEFT JOIN categories AS c ON gc.category_id = c.id
WHERE c.id IS NULL AND g.release_date IS NULL;