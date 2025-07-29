/*On Delete in SQL*/

/*
ON DELETE SET NULL: When a Foreign Key is Deleted, replace Foreign Key with NULL.
ON DELETE CASCADE: When a Foreign Key is Deleted, delete row.
*/

DELETE FROM customers WHERE customer_id=4;      /*This will not execute as Foreign Key will restrict Deletion of Primary Key Data from Referenced Table.*/

/*ON DELELTE SET NULL Example*/

CREATE TABLE transactions (transaction_id INT PRIMARY KEY AUTO_INCREMENT,amount DECIMAL(5,2),customer_id INT,order_date DATE,FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE SET NULL);		/*ON DELETE SET NULL while creating New Table*/

/*Adding ON DELETE SET NULL on Foreign Key of Existing Table*/

ALTER TABLE transactions DROP CONSTRAINT fk_customer_id;		/*First Step*/

ALTER TABLE transactions ADD CONSTRAINT FOREIGN KEY(customer_id) REFERENCES customers(customer_id) ON DELETE SET NULL;		/*Second Step*/

DELETE FROM customers WHERE customer_id=4;

SELECT * FROM customers;

SELECT * FROM transactions;

/*ON DELELTE CASCADE Example*/

INSERT INTO customers VALUES (4,"Poppy","Puffs",2);

UPDATE transactions SET customer_id=4 WHERE transaction_id=1010;

CREATE TABLE transactions (transaction_id INT PRIMARY KEY AUTO_INCREMENT,amount DECIMAL(5,2),customer_id INT,order_date DATE,FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE);		/*ON DELETE CASCADE while creating New Table*/

/*Adding ON DELETE CASCADE on Foreign Key of Existing Table*/

ALTER TABLE transactions DROP CONSTRAINT transactions_ibfk_1;		/*First Step*/

ALTER TABLE transactions ADD CONSTRAINT FOREIGN KEY(customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE;		/*Second Step*/

DELETE FROM customers WHERE customer_id=4;

SELECT * FROM customers;

SELECT * FROM transactions;