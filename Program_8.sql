/*Unique Contraint in SQL*/

CREATE TABLE products(product_id INT UNIQUE,product_name VARCHAR(25),price DOUBLE(4,2));

ALTER TABLE products ADD CONSTRAINT UNIQUE(product_name);

INSERT INTO products VALUES (100,"Hamburger",3.99),
							(101,"Fries",1.89),
                            (102,"Soda",1.00),
                            (103,"Ice Cream",1.49);

SELECT * FROM products;

DESC products;