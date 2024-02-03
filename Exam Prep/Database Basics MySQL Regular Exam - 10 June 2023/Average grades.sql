DELIMITER $$
CREATE FUNCTION udf_average_alumni_grade_by_course_name(course_name VARCHAR(60))
RETURNS DECIMAL(19,2)
DETERMINISTIC
BEGIN
	DECLARE average_grades DECIMAL (19,4);
    SET average_grades := (SELECT AVG(grade) 
							FROM courses AS c
                            JOIN students_courses AS sc ON c.id = sc.course_id
                            JOIN students AS s ON sc.student_id = s.id
                            WHERE c.name = course_name AND s.is_graduated > 0);
  RETURN average_grades;
END$$