/*Insertion of Data in a Table in SQL*/

INSERT INTO employees VALUES (1,"Eugene","Krabs",25.50,"2023-02-23");		/*Inserts Single Row Data in a Table*/

INSERT INTO employees VALUES (2,"Squidward","Tentacles",15.00,"2023-01-03"),
                             (3,"Spongebob","Squarepants",12.50,"2023-01-04"),
                             (4,"Patrick","Star",12.50,"2023-03-15");		/*Inserts Multiple Rows Data in a Table*/

INSERT INTO employees(employee_id,first_name,last_name) VALUES (6,"Sheldon","Plankton");		/*Inserts Row Data in Selected Columns*/

SELECT * FROM employees;		/*Displays Data of a Table*/