/*Functions in SQL*/

SELECT COUNT(amount) AS Number_of_Transactions FROM transactions;		/*Return Count of number of rows in column*/

SELECT MAX(amount) AS Maximum_Amount FROM transactions;		/*Returns Maximum value*/

SELECT MIN(amount) AS Minimum_Amount FROM transactions;		/*Returns Minimum value*/

SELECT AVG(amount) AS Average_Amount FROM transactions;		/*Returns Avearge*/

SELECT SUM(amount) AS Total_Amount FROM transactions;		/*Returns Sum*/

SELECT CONCAT(first_name," ",last_name) AS Full_Name FROM employees;		/*Concats Strings*/