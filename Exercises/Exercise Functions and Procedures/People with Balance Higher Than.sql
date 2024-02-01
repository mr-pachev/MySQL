CREATE PROCEDURE usp_get_holders_with_balance_higher_than(input_number DECIMAL(19, 4))
BEGIN
	SELECT ah.first_name, ah.last_name
    FROM account_holders AS ah
    JOIN accounts AS a ON ah.id = a.account_holder_id
    GROUP BY a.account_holder_id
    HAVING SUM(a.balance) > input_number
    ORDER BY ah.id;
END$$