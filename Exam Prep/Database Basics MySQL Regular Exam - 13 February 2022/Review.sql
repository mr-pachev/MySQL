SELECT
	id,
    content,
    rating,
    picture_url,
    published_at
FROM reviews
WHERE content LIKE (CONCAT('My', '%')) AND LENGTH(content) > 61
ORDER BY rating DESC;