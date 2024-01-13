CREATE DATABASE car_rental;
USE car_rental;
CREATE TABLE categories(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    category VARCHAR(80) NOT NULL,
    daily_rate INT,
    weekly_rate INT,
    monthly_rate INT, 
    weekend_rate INT
);
CREATE TABLE cars(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    plate_number VARCHAR(50) NOT NULL,
    make VARCHAR(50),
    model VARCHAR(50),
    car_year INT,
    category_id INT,
    doors INT,
    picture BLOB,
    car_condition TEXT,
    available BOOL
);
CREATE TABLE employees(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    title VARCHAR(255),
    notes TEXT
);
CREATE TABLE customers(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    driver_licence_number INT NOT NULL,
    full_name VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    zip_code INT,
    notes TEXT
);
CREATE TABLE rental_orders(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    employee_id INT NOT NULL,
    customer_id INT,
    car_id INT NOT NULL,
    car_condition VARCHAR(255),
    tank_level INT,
    kilometrage_start INT,
    kilometrage_end INT,
    total_kilometrage INT,
    start_date DATE,
    end_date DATE,
    total_days INT,
    rate_applied DOUBLE (6,2),
    tax_rate DOUBLE (6,2),
    order_status VARCHAR(255),
    notes TEXT
);
INSERT INTO cars(plate_number)
VALUES ('123'),('1234'),('12345');
INSERT INTO categories(category)
VALUES ('Classic'),('Limuzine'),('Sport');
INSERT INTO customers(driver_licence_number)
VALUES ('2232'),('232323'),('111');
INSERT INTO employees(first_name,last_name)
VALUES ('Ivan', 'Ivanov'),('Ivan1', 'Ivanov1'), ('Ivan2', 'Ivanov2');
INSERT INTO rental_orders(employee_id,car_id)
VALUES (1, 1),(1, 2), (2, 3);

CREATE DATABASE soft_uni;
USE soft_uni;
CREATE TABLE towns(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);
CREATE TABLE addresses(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    address_text VARCHAR(255),
    town_id INT
);
CREATE TABLE departments(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);
CREATE TABLE employees(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    last_name VARCHAR(50) NOT NULL,
    job_title VARCHAR(50),
    department_id INT,
    hire_date DATE,
    salary DOUBLE(6,2),
    address_id INT,
	CONSTRAINT fk_employees_departments
    FOREIGN KEY (`department_id`)
    REFERENCES `departments`(`id`),
    CONSTRAINT fk_employees_addresses
    FOREIGN KEY (`address_id`)
    REFERENCES `addresses`(`id`)
);
INSERT INTO towns(id, name) VALUES
(1, 'Sofia'),
(2, 'Plovdiv'),
(3, 'Varna'),
(4, 'Burgas');
INSERT INTO departments(id, name) VALUES
(1, 'Engineering'),
(2, 'Sales'),
(3, 'Marketing'),
(4, 'Software Development'),
(5, 'Quality Assurance');
INSERT INTO employees(id, first_name, middle_name, last_name, job_title, department_id, hire_date, salary) VALUES
(1, 'Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4, '2013-02-01', 3500.00),
(2, 'Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1, '2004-03-02', 4000.00),
(3, 'Maria', 'Petrova', 'Ivanova', 'Intern', 5, '2016-08-28', 525.25),
(4, 'Georgi', 'Terziev', 'Ivanov', 'CEO', 2, '2007-12-09', 3000.00),
(5, 'Peter', 'Pan', 'Pan', 'Intern', 3, '2016-08-28', 599.88);