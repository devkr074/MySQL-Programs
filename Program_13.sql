/*Auto Increment in SQL*/

/*Auto Increment: Auto Increment is used with column that is set as Primary Key in a table. The Auto Increment Column will automatically inserts value by incrementing by 1. By default auto increment start from 1*/

CREATE TABLE transactions(transaction_is INT PRIMARY KEY AUTO_INCREMENT,amount DECIMAL(5,2));

DESC transactions;

INSERT INTO transactions(amount) VALUES (4.99),
										(2.89),
										(3.95);
                               
ALTER TABLE transactions AUTO_INCREMENT=1000;		/*Changes starting value of auto increment from 1 to 1000. Now auto increment will start from 1000.*/

SELECT * FROM transactions;