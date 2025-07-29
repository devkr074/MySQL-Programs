/*Update and Delete Row in SQL*/

UPDATE employees SET hourly_pay=10.25 WHERE employee_id=6;		/*Updates Single Column Data of a Row*/

UPDATE employees SET hourly_pay=10.50,hire_date="2023-05-30" WHERE employee_id=6;		/*Updates Multiple Columns Data of a Row*/

UPDATE employees SET hire_date=NULL WHERE employee_id=6;		/*Updates value to NULL*/

DELETE FROM employees WHERE employee_id=6;		/*Deletes Particular Row of a Table*/

SELECT * FROM employees;

/*Note: If we don't use where clause in update and delete query it will update and delete all the rows of table*/