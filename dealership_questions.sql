use StrikerAutos;

-- 1.
SELECT 
    *
FROM
    dealerships;
    
-- 2.
SELECT 
    v.*
FROM
    vehicles v
        JOIN
    inventory i ON v.vin = i.vin
WHERE
    i.dealership_id = dealership_id_val;
    
-- 3.
SELECT 
    *
FROM
    vehicles
WHERE
    VIN = '1G1ZD5ST3LF123456';
    
-- 4.
SELECT 
    d.*
FROM
    Dealerships d
        JOIN
    inventory i ON d.dealership_id = i.dealership_id
WHERE
    i.VIN = 'vin_value';
    
-- 5. 
SELECT 
    d.*
FROM
    dealerships.d
        JOIN
    inventory i ON d.dealership_id = i.dealership_id
        JOIN
    Vehicles v ON i.VIN = v.VIN
WHERE
    v.model = 'car_type';
    
-- 6.
SELECT 
    sc.*,
    d.*
FROM
    sales_contracts sc
        JOIN
    vehicles v ON sc.VIN = v.VIN
        JOIN
    inventory i ON v.VIN = i.VIN
        JOIN
    dealerships d ON i.dealership_id = d.dealership_id
WHERE
    sale_date BETWEEN '2023-09-15' AND '2023-11-05' AND
    d.name = 'Striker Autos - Downtown'
ORDER BY sale_date DESC;


    


