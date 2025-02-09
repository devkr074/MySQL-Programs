/*Order By in SQL*/

/*Order By is used to sort data in ascending or descending order*/

SELECT * FROM employees ORDER BY last_name;		/*Order data according to ascending order of last_name by default Order by sorts data in ascending order*/

SELECT * FROM employees ORDER BY last_name ASC;

SELECT * FROM employees ORDER BY last_name DESC;		/*Order data according to descending order of last_name*/

SELECT * FROM transactions ORDER BY amount ASC, customer_id DESC;		/*This will sort data first on basis of amount and if there are two similar amount then will sort according to customer id*/