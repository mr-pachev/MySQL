INSERT INTO airplanes (model, passengers_capacity, tank_capacity, cost)
SELECT
    CONCAT(REVERSE(p.first_name), '797'),
    LENGTH(p.last_name) * 17,
    p.id * 790,
    LENGTH(p.first_name) * 50.6
FROM passengers AS p
WHERE p.id <= 5;