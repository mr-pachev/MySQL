DELETE c FROM clients AS c
LEFT JOIN courses AS cor ON c.id = cor.client_id
WHERE c.id IS NULL AND LENGTH(c.full_name) > 3;