/*Selection of Data in SQL*/

SELECT * FROM employees;		/*Select and Displays all columns and all rows of a Table*/

SELECT first_name,last_name FROM employees;		/*Select and Displays all rows of Selected Columns*/

SELECT * FROM employees WHERE employee_id=1;	/*Select and Displays all Columns of Rows that is following condition of where clause*/

SELECT * FROM employees WHERE first_name="Spongebob";

SELECT * FROM employees WHERE hourly_pay>=15;

SELECT * FROM employees WHERE hire_date<="2023-01-03";

SELECT * FROM employees WHERE employee_id!=1;

SELECT * FROM employees WHERE hire_date IS NULL;

SELECT * FROM employees WHERE hire_date IS NOT NULL;