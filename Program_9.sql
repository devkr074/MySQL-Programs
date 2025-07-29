/*NOT NULL Constraint in SQL*/

CREATE TABLE products(product_id INT,product_name VARCHAR(25),price DOUBLE(4,2) NOT NULL);		/*If creating new table*/

ALTER TABLE products MODIFY price DECIMAL(4,2) NOT NULL;		/*Add NOT NULL Constraint to column of already existing table*/

INSERT INTO products VALUES (104,"Cookie",NULL);		/*Error because price value cannot be NULL*/

INSERT INTO products VALUES (104,"Cookie",0);

SELECT * FROM products;

DESC products;