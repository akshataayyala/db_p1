CREATE DATABASE company;
USE company;

CREATE DATABASE IF NOT EXISTS company;
USE company;

CREATE TABLE IF NOT EXISTS employee (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE,
    hire_date DATE,
    job_title VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO employee (first_name, last_name, birth_date, hire_date, job_title, salary)
VALUES 
('John', 'Doe', '1985-01-15', '2010-06-01', 'Software Engineer', 70000.00),
('Jane', 'Smith', '1990-02-20', '2012-07-15', 'Data Analyst', 65000.00),
('Mike', 'Johnson', '1979-03-10', '2008-03-22', 'Project Manager', 80000.00),
('Emily', 'Davis', '1983-04-25', '2015-09-17', 'UX Designer', 72000.00),
('Chris', 'Brown', '1995-05-30', '2018-12-03', 'DevOps Engineer', 68000.00);

SELECT * FROM employee;

CREATE TABLE employee (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE,
    hire_date DATE,
    job_title VARCHAR(50),
    salary DECIMAL(10, 2)
);

USE company;

-- Update job title and salary for employee with employee_id = 4
UPDATE employee
SET job_title = 'Lead UX Designer', salary = 75000.00
WHERE employee_id = 4;

-- Verify the updates
SELECT * FROM employee WHERE employee_id = 4;

SELECT * FROM employee ;

USE company;

-- Verify the existing rows in the employee table
SELECT * FROM employee;

-- Insert an employee with employee_id = 6 if it doesn't exist
-- Note: This assumes `employee_id` is auto-incremented and we do not directly control its value
INSERT INTO employee (first_name, last_name, birth_date, hire_date, job_title, salary)
VALUES ('Alex', 'Taylor', '1992-06-30', '2022-01-15', 'Junior Developer', 50000.00);

---- to Add Serial number coloum ---

-- Ensure we're using the correct database
USE company;

-- Add the serial_number column to the employee table
ALTER TABLE employee ADD COLUMN serial_number INT;

-- Initialize a variable to store serial numbers
SET @serial_number = 0;

-- Update the serial_number column with sequential values
UPDATE employee 
SET serial_number = (@serial_number := @serial_number + 1)
ORDER BY employee_id;

-- Verify the update
SELECT * FROM employee;




SELECT * FROM employee;

-- Update job title and salary for the employee with employee_id = 6
UPDATE employee
SET job_title = 'UX Designer', salary = 55000.00
WHERE employee_id = 6;

-- Verify the update
SELECT * FROM employee;

-- Delete the employee with employee_id = 4
DELETE FROM employee WHERE employee_id = 4;

-- Verify the deletion
SELECT * FROM employee;

SELECT employee_id , first_name  FROM employee;


/*-- Ensure we're using the correct database
USE company;

-- Add the serial_number column to the employee table
ALTER TABLE employee ADD COLUMN serial_number INT;

-- Initialize a variable to store serial numbers
SET @serial_number = 0;

-- Update the serial_number column with sequential values
UPDATE employee 
SET serial_number = (@serial_number := @serial_number + 1)
ORDER BY employee_id;

-- Verify the update
SELECT * FROM employee; */

SHOW CREATE TABLE employee;select * from employee;

USE company;
SELECT DISTINCT job_title FROM employee;
select job_title from employee;

INSERT INTO employee (first_name, last_name, birth_date, hire_date, job_title, salary)
VALUES 
('John', 'Smith', '1985-01-15', '2010-06-01', 'Software Engineer', 60000.00),
('Jane', 'A', '1995-02-20', '2014-07-15', 'Data Analyst', 85000.00),
('Emily', 'Richard', '1993-04-25', '2015-09-17', 'UX Designer', 75000.00),
('Chris', 'Walls', '1995-05-30', '2018-12-03', 'DevOps Engineer', 70000.00);

Select * from employee;
SELECT DISTINCT job_title FROM employee;

INSERT INTO employee (first_name, last_name, birth_date, hire_date, job_title, salary)
VALUES 
('Lalitha', 'Roy', '1988-01-15', '2010-09-01', 'VM Engineer', 68990.00),
('Kathy', 'Dempsy', '1995-02-20', '2014-07-15', 'Business Analyst', 88000.00);


Select * from employee;
SELECT DISTINCT job_title FROM employee;
INSERT INTO employee (first_name, last_name, birth_date, hire_date, job_title, salary)
VALUES 
('Hannah', 'Baker', '1990-01-15', '2010-09-01', 'Unix', 79990.00);

---- ORDER BY -----
SELECT * FROM employee
ORDER BY salary DESC;
----- AND Condition ----
SELECT employee_id 
FROM employee
WHERE salary > 70000;
 
--- AND/ OR both are used ----
SELECT employee_id, first_name, last_name, birth_date, hire_date, salary
FROM employee
WHERE salary > 50000
  AND (birth_date < '1980-01-01' OR hire_date > '2020-01-01');  
  
------- UPDATE QUERY -------
USE company;
INSERT INTO employee (first_name, last_name, birth_date, hire_date, job_title, salary)
VALUES 
('Klien', 'Galaxy', '1994-01-15', '2010-06-16', 'Unix', 89990.00);
INSERT INTO employee (first_name, last_name, birth_date, hire_date, job_title, salary)
VALUES 
('Tom', 'Christ', '1990-10-15', '2008-06-16', 'Unix Server', 80000.00);
INSERT INTO employee (first_name, last_name, birth_date, hire_date, job_title, salary)
VALUES 
('Tom', 'Ford', '1997-10-15', '2019-06-16', 'System Engineer', 90000.00);

SELECT * FROM  employee ;

UPDATE employee
SET salary = 95000.00, hire_date = '2019-06-16'
WHERE employee_id = 16;

------ Select by LIMIT ----
SELECT * FROM employee
LIMIT 3;

Select * from employee;


CREATE DATABASE Product;
USE Product;

CREATE TABLE Product(
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(255) NOT NULL,
    SupplierID INT,
    CategoryID INT,
    QuantityPerUnit VARCHAR(50),
    UnitPrice DECIMAL(10, 2),
    UnitsInStock INT,
    UnitsOnOrder INT,
    ReorderLevel INT,
    Discontinued BIT
);
INSERT INTO Product (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES 
('Chai', 1, 1, '10 boxes x 20 bags', 18.00, 39, 0, 10, 0),
('Chang', 1, 1, '24 - 12 oz bottles', 19.00, 17, 40, 25, 0),
('Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10.00, 13, 70, 25, 0),
('Chef Anton\'s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22.00, 53, 0, 0, 0),
('Chef Anton\'s Gumbo Mix', 2, 2, '36 boxes', 21.35, 0, 0, 0, 1),
('Grandma\'s Boysenberry Spread', 3, 2, '12 - 8 oz jars', 25.00, 120, 0, 25, 0),
('Uncle Bob\'s Organic Dried Pears', 3, 7, '12 - 1 lb pkgs.', 30.00, 15, 0, 10, 0),
('Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 40.00, 6, 0, 0, 0),
('Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 97.00, 29, 0, 0, 1),
('Ikura', 4, 8, '12 - 200 ml jars', 31.00, 31, 0, 0, 0);

SELECT * FROM Product;

CREATE DATABASE property;
use property;
CREATE TABLE properties (
    property_id SERIAL PRIMARY KEY,
    owner_name VARCHAR(100),
    address TEXT,
    property_value NUMERIC
);

CREATE TABLE tax_payments (
    payment_id SERIAL PRIMARY KEY,
    property_id INT REFERENCES properties(property_id),
    payment_date DATE,
    payment_amount NUMERIC
);

INSERT INTO properties (owner_name, address, property_value) VALUES
('John Doe', '123 Elm St', 250000),
('Jane Smith', '456 Oak St', 300000),
('Alice Johnson', '789 Pine St', 150000);

INSERT INTO tax_payments (property_id, payment_date, payment_amount) VALUES
(1, '2024-01-15', 2500),
(1, '2024-04-15', 2500),
(2, '2024-01-15', 3000),
(3, '2024-01-15', 1500),
(3, '2024-04-15', 1500);

SELECT * from properties;
SELECT * from tax_payments;

SELECT SUM(payment_amount) AS total_tax_collected
FROM tax_payments;

SELECT avg(payment_amount) AS avg_payment FROM tax_payments;
SELECT count(property_id) AS property_count FROM properties;

SELECT property_id , SUM(payment_amount) AS total_tax
FROM tax_payments
GROUP BY property_id;


