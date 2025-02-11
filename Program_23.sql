/*Views in SQL*/

/*Views: Views are virtual table with one or more fields from real table*/

CREATE VIEW employee_attendance AS SELECT first_name,last_name FROM employees;

SELECT * FROM employee_attendance;

SELECT * FROM employee_attendance ORDER BY last_name ASC;

DROP VIEW employee_attendance;

/*Any Changes in real table will also reflect in View of a table automatically*/