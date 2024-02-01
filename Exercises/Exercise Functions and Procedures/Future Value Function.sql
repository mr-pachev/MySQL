CREATE FUNCTION ufn_calculate_future_value(sum DECIMAL (19,4), yearly_interest_rate DOUBLE, number_of_years INT)
RETURNS DECIMAL (19, 4)
DETERMINISTIC
BEGIN
	DECLARE future_value_of_the_initial_sum DECIMAL (19, 4);
		SET future_value_of_the_initial_sum := sum * POW((1 + yearly_interest_rate), number_of_years);
    RETURN future_value_of_the_initial_sum;
END$$