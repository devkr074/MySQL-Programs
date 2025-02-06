/*Primary Key in SQL*/

/*Primary Key: Primary Key is a column by which data is identified uniquelly. It is unique and not null. There could only one primary key in a table.*/

CREATE TABLE transactions(transaction_is INT PRIMARY KEY,amount DECIMAL(5,2));		/*Primary Key in New Table*/

ALTER TABLE transactions ADD CONSTRAINT PRIMARY KEY(transaction_id);		/*Primary Key in already existing table*/

DESC transactions;

INSERT INTO transactions VALUES (1000,4.99),
							    (1001,2.89),
                                (1002,3.95);
                               
SELECT * FROM transactions;