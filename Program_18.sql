/*Wild Cards Character in SQL*/

SELECT * FROM employees WHERE first_name LIKE "s%";		/*Return employees whose first character of first name is s*/

SELECT * FROM employees WHERE first_name LIKE "sp%";

SELECT * FROM employees WHERE last_name LIKE "%r";		/*Return employees whose last character of last name is r*/

SELECT * FROM employees WHERE first_name LIKE "_pon%";		/*_ means one single character*/

SELECT * FROM employees WHERE first_name LIKE "__on%";		/*Here two underscores so it will check string after two characters*/

SELECT * FROM employees WHERE first_name LIKE "__o_%";