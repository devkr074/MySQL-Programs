/*Triggers in SQL*/

ALTER TABLE employees ADD COLUMN salary DECIMAL(10,2) AFTER hourly_pay;

UPDATE employees SET salary = hourly_pay * 2080;

SELECT * FROM employees;

CREATE TRIGGER before_hourly_pay_update BEFORE UPDATE ON employees FOR EACH ROW SET NEW.salary=(NEW.hourly_pay * 2080);

SHOW TRIGGERS;

UPDATE employees SET hourly_pay=50 WHERE employee_id=1;

SELECT * FROM employees;

CREATE TRIGGER before_hourly_pay_insert BEFORE INSERT ON employees FOR EACH ROW SET NEW.salary=(NEW.hourly_pay * 2080);

INSERT INTO employees VALUES (8,"Johnny","Depp",10,NULL,"2023-06-07");

SELECT * FROM employees;

DROP TABLE expenses;

CREATE TABLE expenses (expense_id INT PRIMARY KEY,expense_name VARCHAR(50),expense_total DECIMAL(10,2));

INSERT INTO expenses VALUES (1,"Salaries",0),
							(2,"Supplies",0),
                            (3,"Taxes",0);
                            
UPDATE expenses SET expense_total = (SELECT SUM(salary) FROM employees) WHERE expense_name="Salaries";

SELECT * FROM expenses;

CREATE TRIGGER after_salary_delete AFTER DELETE ON employees FOR EACH ROW UPDATE expenses SET expense_total=expense_total - OLD.salary WHERE expense_name="Salaries";

DELETE FROM employees WHERE employee_id=7;

SELECT * FROM employees;

SELECT * FROM expenses;

CREATE TRIGGER after_salary_insert AFTER INSERT ON employees FOR EACH ROW UPDATE expenses SET expense_total=expense_total+NEW.salary WHERE expense_name="Salaries";

INSERT INTO employees VALUES (7,"Alex","Star",10,NULL,"2023-09-11");

SELECT * FROM employees;

SELECT * FROM expenses;

CREATE TRIGGER after_salary_update AFTER UPDATE ON employees FOR EACH ROW UPDATE expenses SET expense_total=expense_total+(NEW.salary-OLD.salary) WHERE expense_name="Salaries";

UPDATE employees SET hourly_pay=100 WHERE employee_id=1;

SELECT * FROM employees;

SELECT * FROM expenses;