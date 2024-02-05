SELECT
	first_name,
    last_name,
    make,
    model,
    mileage
FROM drivers AS d
LEFT JOIN cars_drivers AS cd ON d.id = cd.driver_id
LEFT JOIN cars AS c ON cd.car_id = c.id
WHERE c.mileage IS NOT NULL
ORDER BY mileage DESC, d.first_name;