SELECT
	COUNT(sc.course_id) AS 'students_count',
    u.name AS 'university_name'
FROM universities AS u
JOIN courses AS c ON u.id = c.university_id
JOIN students_courses AS sc ON c.id = sc.course_id
WHERE sc.course_id IS NOT NULL
GROUP BY u.name
ORDER BY `students_count` DESC, `university_name` DESC;