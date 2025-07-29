/*Union in SQL*/

CREATE TABLE income (income_name VARCHAR(25),amount DOUBLE(8,2));

DESC income;

INSERT INTO income VALUES ("orders",100000.00),
						  ("merchandise",50000.00),
                          ("services",125000.00);

SELECT * FROM income;

CREATE TABLE expenses (expense_name VARCHAR(25),amount DOUBLE(10,2));

DESC expenses;

INSERT INTO expenses VALUES ("wages",-250000.00),
							("tax",-50000.00),
                            ("repairs",-15000.00);
SELECT * FROM expenses;

SELECT * FROM income UNION SELECT * FROM expenses;

SELECT * FROM employees UNION SELECT * FROM customers;		/*This will not work as for union operation number of columns in both table must be same*/

SELECT first_name,last_name FROM employees UNION SELECT first_name,last_name FROM customers;		/*Union doesn't allow duplicate values*/

INSERT INTO customers VALUES (5,"Sheldon","Plankton");

SELECT first_name,last_name FROM employees UNION ALL SELECT first_name,last_name FROM customers;		/*Union All allows duplicate values*/