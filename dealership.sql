CREATE DATABASE StrikerAutos;

use StrikerAutos;

CREATE TABLE Dealerships (
    dealership_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL,
    phone VARCHAR(12) NOT NULL,
    PRIMARY KEY (dealership_id)
);
    
CREATE TABLE Vehicles (
    year INT NOT NULL,
    VIN VARCHAR(17) PRIMARY KEY,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    color VARCHAR(30) NOT NULL,
    price DECIMAL(10 , 2 ) NOT NULL,
    SOLD BOOLEAN DEFAULT TRUE
);
    
    
CREATE TABLE inventory (
    dealership_id INT,
    VIN VARCHAR(17) NOT NULL,
    PRIMARY KEY (dealership_id , VIN),
    FOREIGN KEY (dealership_id)
        REFERENCES dealerships (dealership_id),
    FOREIGN KEY (VIN)
        REFERENCES vehicles (VIN)
);

CREATE TABLE sales_contracts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17) NOT NULL,
    customer_name VARCHAR(80) NOT NULL,
    sale_date datetime NOT NULL,
    sale_price DECIMAL(10 , 2 ) NOT NULL,
    FOREIGN KEY (VIN)
        REFERENCES vehicles (VIN)
);


INSERT INTO Dealerships (name, address, phone) 
VALUES 
('Striker Autos - Downtown', '123 Main St, Downtown', '123-456-7890'),
('Striker Autos - Uptown', '456 Uptown Ave, Uptown', '234-567-8901'),
('Striker Autos - Suburbia', '789 Suburbia Blvd, Suburbia', '345-678-9012');


INSERT INTO Vehicles (year, VIN, make, model, color, price, SOLD) 
VALUES 
(2022, '1HGCM82633A123456', 'Dodge', 'Hellcat', 'Black', 45000.00, TRUE),
(2023, '1FA6P8TH9J5101234', 'Lamborghini', 'Urus', 'Red', 35000.00, FALSE),
(2021, '1G1ZD5ST3LF123456', 'Jeep', 'Trackhawk' ,'Black', 18000.00, TRUE),
(2020, '5YJ3E1EA1HF123456', 'Tesla', 'Model 3', 'White', 45000.00, TRUE),
(2022, '1N4BL4CV5LN123456', 'Nissan', 'Altima', 'Gray', 25000.00, FALSE);


INSERT INTO inventory (dealership_id, VIN) 
VALUES 
(1, '1HGCM82633A123456'), 
(1, '1FA6P8TH9J5101234'),
(2, '1G1ZD5ST3LF123456'),
(3, '5YJ3E1EA1HF123456'),
(2, '1N4BL4CV5LN123456');


INSERT INTO sales_contracts (VIN, customer_name, sale_date, sale_price) 
VALUES 
('1HGCM82633A123456', 'Blo', '2023-09-15', 21000.00),
('1G1ZD5ST3LF123456', 'Mox', '2023-11-05', 17500.00),
('5YJ3E1EA1HF123456', 'YB', '2023-10-20', 43000.00);

    
    

