/*Self Join in SQL*/

ALTER TABLE customers ADD referral_id INT;

UPDATE customers SET referral_id=1 WHERE customer_id=2;

UPDATE customers SET referral_id=2 WHERE customer_id=3;

UPDATE customers SET referral_id=2 WHERE customer_id=4;

SELECT * FROM customers;

SELECT a.customer_id,a.first_name,a.last_name,CONCAT(b.first_name," ",b.last_name) AS Reffered_By FROM customers AS a INNER JOIN customers AS b ON a.referral_id=b.customer_id;

SELECT a.customer_id,a.first_name,a.last_name,CONCAT(b.first_name," ",b.last_name) AS Reffered_By FROM customers AS a LEFT JOIN customers AS b ON a.referral_id=b.customer_id;

SELECT a.customer_id,a.first_name,a.last_name,CONCAT(b.first_name," ",b.last_name) AS Reffered_By FROM customers AS a RIGHT JOIN customers AS b ON a.referral_id=b.customer_id;