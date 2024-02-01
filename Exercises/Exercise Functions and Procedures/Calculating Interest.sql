CREATE FUNCTION ufn_calculate_future_value(sum DECIMAL (19,4), yearly_interest_rate DOUBLE, number_of_years INT)
RETURNS DECIMAL (19, 4)
DETERMINISTIC
BEGIN
	DECLARE future_value_of_the_initial_sum DECIMAL (19, 4);
		SET future_value_of_the_initial_sum := sum * POW((1 + yearly_interest_rate), number_of_years);
    RETURN future_value_of_the_initial_sum;
END$$

CREATE PROCEDURE usp_calculate_future_value_for_account(id INT, interest_rate DOUBLE)
BEGIN
	SELECT id AS 'account_id',
			first_name,
			last_name,
			balance AS 'current_balance',
			ufn_calculate_future_value(balance, interest_rate, 5) AS 'balance_in_5_years'
	FROM account_holders AS ah
    JOIN accounts AS a ON ah.id = a.account_holder_id
    WHERE a.id = id;
END$$