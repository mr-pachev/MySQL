SELECT deposit_group, SUM(deposit_amount) AS 'tottal_sum' FROM wizzard_deposits
GROUP BY deposit_group
ORDER BY `tottal_sum`;