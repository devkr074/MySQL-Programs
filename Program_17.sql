/*Logical Operators in SQL*/

SELECT * FROM employees WHERE hire_date<"2023-01-05" AND hourly_pay>10;

SELECT * FROM employees WHERE hire_date<"2023-01-05" OR hourly_pay>10;

SELECT * FROM employees WHERE NOT hire_date<"2023-01-05";

SELECT * FROM employees WHERE NOT hire_date<"2023-01-05" AND NOT hourly_pay>12;

SELECT * FROM employees WHERE hire_date BETWEEN "2023-01-04" AND "2023-01-07";

SELECT * FROM employees WHERE hourly_pay IN (15.00,12.50,14.00);