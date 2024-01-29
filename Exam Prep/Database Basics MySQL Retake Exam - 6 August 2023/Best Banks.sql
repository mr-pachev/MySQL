SELECT
	bank_name,
    COUNT(iban) AS 'count'
FROM property_transactions
GROUP BY bank_name
ORDER BY `count` DESC, bank_name;