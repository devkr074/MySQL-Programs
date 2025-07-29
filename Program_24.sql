/*Indexes in SQL*/

/*Indexes: Indexes are BTree Data Structure that makes searching of data more fast. UPDATE takes more time, SELECT takes less time.*/

SHOW INDEXES FROM customers;		/*Displays all Indexes of a table*/

CREATE INDEX last_name_idx ON customers(last_name);		/*Add New Indexes to table*/

CREATE INDEX last_name_first_name_idx ON customers(last_name,first_name);		/*Add Multi Column Indexe*/

ALTER TABLE customers DROP INDEX last_name_idx;		/*Delete Index from table*/

SELECT * FROM customers WHERE last_name="Bass" AND first_name="Bubble";

SELECT * FROM customers WHERE first_name="Bubble";