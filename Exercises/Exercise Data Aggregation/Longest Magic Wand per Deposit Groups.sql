SELECT deposit_group, SUM(deposit_charge) AS 'tottal_sum' FROM wizzard_deposits
GROUP BY deposit_group
ORDER BY deposit_group;