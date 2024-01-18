SELECT town_id, name 
FROM towns
WHERE name REGEXP '^[MKBE]'
ORDER BY name ;

-- SELECT town_id, name 
-- FROM towns
-- WHERE SUBSTRING(name, 1, 1) = 'M' OR
-- 	SUBSTRING(name, 1, 1) = 'K' OR
-- 	SUBSTRING(name, 1, 1) = 'B' OR
-- 	SUBSTRING(name, 1, 1) = 'E'
-- ORDER BY name ;