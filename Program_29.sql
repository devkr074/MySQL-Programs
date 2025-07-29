/*Stored Procedures in SQL*/

/*Stored Procedures are prepared SQL query that is used often.*/

DELIMITER $$
CREATE PROCEDURE get_customers()
BEGIN
SELECT * FROM customers;
END$$
DELIMITER ;		/*Creating a Procedure*/

CALL get_customers();		/*Using a Procedure*/

DROP PROCEDURE get_customer;		/*Delete a Procedure*/

DELIMITER $$
CREATE PROCEDURE find_customer(IN id INT)
BEGIN
SELECT * FROM customers WHERE customer_id=id;
END $$
DELIMITER ;

CALL find_customer(1);

CALL find_customer(2);

CALL find_customer(3);

DROP PROCEDURE find_customer;

DELIMITER $$
CREATE PROCEDURE find_customer(IN f_name VARCHAR(50),l_name VARCHAR(50))
BEGIN
SELECT * FROM customers WHERE first_name=f_name AND last_name=l_name;
END $$
DELIMITER ;

CALL find_customer("Larry","Lobster");

DROP PROCEDURE find_customer;