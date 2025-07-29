/*Default Constraint in SQL*/

CREATE TABLE products (product_id INT,product_name VARCHAR(25),price DOUBLE(4,2) DEFAULT 0);		/*Default Contreaint in New Table*/

ALTER TABLE products ALTER price SET DEFAULT 0;		/*Default Constraint in Already Existing Table*/

DESC products;

INSERT INTO products(product_id,product_name) VALUES (104,"Straws"),
													 (105,"Napkins"),
                                                     (106,"Fork"),
                                                     (107,"Spoon");

SELECT * FROM products;