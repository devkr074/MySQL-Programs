/*Foreign Key in SQL*/

/*Foreign Key: It is used to create link between two tables. A foreign key in a table is a primary key in other table.*/

CREATE TABLE customers (customer_id INT PRIMARY KEY AUTO_INCREMENT,first_name VARCHAR(50),last_name VARCHAR(50));

DESC customers;

INSERT INTO customers(first_name,last_name) VALUES ("Fred","Fish"),
												   ("Larry","Lobster"),
                                                   ("Bubble","Bass");

SELECT * FROM customers;

DROP TABLE transactions;

CREATE TABLE transactions (transaction_id INT PRIMARY KEY AUTO_INCREMENT,amount DECIMAL(5,2),customer_id INT,FOREIGN KEY(customer_id) REFERENCES customers(customer_id));

DESC transactions;

ALTER TABLE transactions AUTO_INCREMENT=1000;

INSERT INTO transactions(amount,customer_id) VALUES (4.99,3),
													(2.89,2),
                                                    (3.38,3),
                                                    (4.99,1);

DELETE FROM customers WHERE customer_id=3;		/*This will not execute as customer with id 3 has data in transactions table so it will prevent any changes in customer table also*/

ALTER TABLE transactions ADD CONSTRAINT fk_customer_id FOREIGN KEY(customer_id) REFERENCES customers(customer_id);		/*Adds foreign key to already existing table*/

ALTER TABLE transactions DROP FOREIGN KEY fk_customer_id;		/*Deletes existing Foreign Key with specified name*/

SELECT * FROM transactions;