/*Limit in SQL*/

SELECT * FROM employees LIMIT 1;

SELECT * FROM employees LIMIT 3;

SELECT * FROM employees ORDER BY last_name LIMIT 1;

SELECT * FROM employees ORDER BY last_name DESC LIMIT 1;

SELECT * FROM employees LIMIT 2,2;		/*In this First number is offset it will leave 2 (1,2) data from data from top and display 2 (3,4) data after that*/