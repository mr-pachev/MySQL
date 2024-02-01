CREATE FUNCTION ufn_get_salary_level(salary_input DECIMAL(19, 4))
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
	DECLARE salary_level VARCHAR(10);
    IF salary_input < 30000 THEN SET salary_level := 'Low';
    ELSEIF salary_input <= 50000 THEN SET salary_level := 'Average';
    ELSE SET salary_level := 'High';
    END IF;
    RETURN salary_level;
END$$