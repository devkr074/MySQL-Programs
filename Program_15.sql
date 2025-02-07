/*Joins in SQL*/

INSERT INTO transactions(amount,customer_id) VALUES (1.00,NULL);

SELECT * FROM transactions;

INSERT INTO customers(first_name,last_name) VALUES ("Poppy","Puff");

SELECT * FROM customers;

SELECT * FROM transactions INNER JOIN customers ON transactions.customer_id=customers.customer_id;		/*Inner Join*/

SELECT * FROM transactions LEFT JOIN customers ON transactions.customer_id=customers.customer_id;		/*Left Join*/

SELECT * FROM transactions RIGHT JOIN customers ON transactions.customer_id=customers.customer_id;		/*Right Join*/