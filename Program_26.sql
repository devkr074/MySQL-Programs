/*Group By in SQL*/

ALTER TABLE transactions ADD order_date DATE;

INSERT INTO transactions(amount,customer_id,order_date) VALUES (4.99,3,"2023-01-01"),
															   (2.89,2,"2023-01-01"),
                                                               (3.38,3,"2023-01-02"),
                                                               (4.99,1,"2023-01-02"),
                                                               (1.00,NULL,"2023-01-03"),
                                                               (2.49,4,"2023-01-03"),
                                                               (5.48,NULL,"2023-01-03");
                                                               
SELECT SUM(amount),order_date FROM transactions GROUP BY order_date;

SELECT MAX(amount),order_date FROM transactions GROUP BY order_date;

SELECT MIN(amount),order_date FROM transactions GROUP BY order_date;

SELECT AVG(amount),order_date FROM transactions GROUP BY order_date;

SELECT COUNT(amount),order_date FROM transactions GROUP BY order_date;

SELECT SUM(amount),customer_id FROM transactions GROUP BY customer_id;

SELECT MAX(amount),customer_id FROM transactions GROUP BY customer_id;

SELECT MIN(amount),customer_id FROM transactions GROUP BY customer_id;

SELECT AVG(amount),customer_id FROM transactions GROUP BY customer_id;

SELECT COUNT(amount),customer_id FROM transactions GROUP BY customer_id;

SELECT COUNT(amount),customer_id FROM transactions GROUP BY customer_id HAVING COUNT(amount) > 1;		/*Having is similar to where clause. Having clause is used with Group By clause.*/

SELECT COUNT(amount),customer_id FROM transactions GROUP BY customer_id HAVING COUNT(amount) > 1 AND customer_id IS NOT NULL;