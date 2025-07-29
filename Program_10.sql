/*Check Constraint in SQL*/

CREATE TABLE employees (employee_id INT,first_name VARCHAR(50),last_name VARCHAR(50),hourly_pay DECIMAL(5,2),hire_date DATE,CONSTRAINT chk_hourly_pay CHECK(hourly_pay>=10.00));		/*Adds Check Constraint to New Table*/

ALTER TABLE employees ADD CONSTRAINT chk_hourly_pay CHECK(hourly_pay>=10.00);		/*Adds Check Constraint to already existing table*/

INSERT INTO employees VALUES (7,"Alex","Star",5.00,"2023-01-07");		/*This will violate Check Constraint of hourly_pay as value given is 5.00 which is less than 10.00*/

INSERT INTO employees VALUES (7,"Alex","Star",10.00,"2023-01-07");		/*This will work fine*/

SELECT * FROM employees;

ALTER TABLE employees DROP CHECK chk_hourly_pay;		/*Deletes Check Constraint from a table*/