SELECT towns.town_id,
		name,
        addresses.address_text
FROM towns
JOIN addresses ON towns.town_id = addresses.town_id
WHERE name IN ('San Francisco', 'Sofia', 'Carnation')
ORDER BY town_id, address_id;