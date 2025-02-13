/*Subquery in SQL*/

/*Subquery: Subquery is a query within another query.*/

SELECT first_name,last_name,hourly_pay, (SELECT AVG(hourly_pay) FROM employees) AS Average_Pay FROM employees;

SELECT first_name,last_name,hourly_pay FROM employees WHERE hourly_pay > (SELECT AVG(hourly_pay) FROM employees);