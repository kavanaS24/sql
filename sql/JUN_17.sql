CREATE DATABASE JUN_17;
USE JUN_17; 
CREATE TABLE employee_details (employee_id INT,name VARCHAR(50),department VARCHAR(50),salary INT);
ALTER TABLE employee_details ADD COLUMN email VARCHAR(50);
ALTER TABLE employee_details ADD COLUMN phone_number INT;
ALTER TABLE employee_details ADD COLUMN address VARCHAR(100);
ALTER TABLE employee_details ADD COLUMN designation VARCHAR(50);
ALTER TABLE employee_details ADD COLUMN experience INT;
ALTER TABLE employee_details DROP COLUMN phone_number;
ALTER TABLE employee_details DROP COLUMN address;
ALTER TABLE employee_details DROP COLUMN date_of_joining;
ALTER TABLE employee_details RENAME COLUMN name TO full_name;
ALTER TABLE employee_details RENAME COLUMN department TO department_name;
ALTER TABLE employee_details RENAME COLUMN salary TO annual_salary;
ALTER TABLE employee_details RENAME COLUMN designation TO job_title;
ALTER TABLE employee_details MODIFY COLUMN employee_id  BIGINT;
ALTER TABLE employee_details MODIFY COLUMN experience  INT;
ALTER TABLE employee_details MODIFY COLUMN email  VARCHAR(100);
ALTER TABLE employee_details MODIFY COLUMN full_name  VARCHAR(100);
INSERT INTO employee_details values(1,'kavana','developer',20000,'kavanas@gmail.com','engineer',1);
INSERT INTO employee_details values(2,'bindu','developer',30000,'bindus@gmail.com','engineer',2);
INSERT INTO employee_details values(3,'prema','HR',40000,'premag@gmail.com','HR',4);
INSERT INTO employee_details values(5,'gijnj','developer',20000,'trfgh5s@gmail.com','engineer',1);
SELECT * FROM employee_details where full_name='gijnj';
SELECT employee_id FROM employee_details where employee_id=5;

DESC employee_details;
SELECT * FROM employee_details;

CREATE TABLE airport_details (airport_code VARCHAR(50),airport_name VARCHAR(50),city VARCHAR(50),country VARCHAR(50),altitude INT);
ALTER TABLE airport_details ADD COLUMN longitude DECIMAL(10, 8);
ALTER TABLE airport_details ADD COLUMN latitude DECIMAL(10, 8);
ALTER TABLE airport_details ADD COLUMN timezone VARCHAR(50);
ALTER TABLE airport_details ADD COLUMN airport_type VARCHAR(50);
ALTER TABLE airport_details ADD COLUMN website VARCHAR(100);
ALTER TABLE airport_details DROP COLUMN longitude;
ALTER TABLE airport_details DROP COLUMN latitude;
ALTER TABLE airport_details RENAME COLUMN airport_code TO iata_code;
ALTER TABLE airport_details RENAME COLUMN airport_name TO airport_name_full;
ALTER TABLE airport_details RENAME COLUMN city TO city_name;
ALTER TABLE airport_details RENAME COLUMN country TO country_name;
ALTER TABLE airport_details RENAME COLUMN altitude TO elevation;
ALTER TABLE airport_details MODIFY COLUMN iata_code  VARCHAR(3);
ALTER TABLE airport_details MODIFY COLUMN airport_name_full  VARCHAR(100);
ALTER TABLE airport_details MODIFY COLUMN city_name  VARCHAR(50);
ALTER TABLE airport_details MODIFY COLUMN country_name  VARCHAR(50);
SELECT * FROM airport_details;
DESC airport_details;






