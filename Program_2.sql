/*Table Creation, Updation and Deletion in SQL*/

CREATE TABLE employees(employee_id INT,
						first_name VARCHAR(50),
						last_name VARCHAR(50),
						hourly_pay DOUBLE(5,2),
						hire_date DATE);	/*Table Creation*/

SHOW TABLES;	/*Displays all tables in Database*/

DESC employees;		/*Displays Schema of Table*/

ALTER TABLE employees ADD phone_number VARCHAR(15);		/*Add New Column in Table*/

ALTER TABLE employees RENAME COLUMN phone_number TO email;		/*Changes name of Column*/

ALTER TABLE employees MODIFY COLUMN email VARCHAR(100);		/*Changes schema of Column*/

ALTER TABLE employees MODIFY COLUMN email VARCHAR(100) AFTER last_name;		/*Changes position of Column in Table*/

ALTER TABLE employees MODIFY COLUMN email VARCHAR(100) FIRST;		/*Move Column to First Position*/

ALTER TABLE employees DROP COLUMN email;		/*Deletes Particular Coolumn of a Table*/

SELECT * FROM employees;		/*Displays Data Stored in Table*/

DROP TABLE employees;		/*Delete Table*/

RENAME TABLE employees TO workers;		/*Changes Name of Table*/