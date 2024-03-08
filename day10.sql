-- create employees_a
CREATE TABLE employees_a (
	employee_id SERIAL PRIMARY KEY,
	employee_name VARCHAR (255),
	department VARCHAR(50),
	salary DECIMAL (10,2)
);


--populate employees_a table
INSERT INTO employees_a (employee_name,department, salary)
VALUES ('Feisal Salum', 'IT', 75000.00),
		('Sospeter Bajana', 'Marketing', 65000.00),
		('James Akaminko', 'Finance', 85000.00);
		
--create employees_b table
CREATE TABLE employees_b (
	employee_id SERIAL PRIMARY KEY,
	employee_name VARCHAR (255),
	department VARCHAR(50),
	salary DECIMAL (10,2)
);

-- populate employees_b table
INSERT INTO employees_b (employee_name,department, salary)
VALUES ('Abdillah Idrissou', 'HR', 70000.00),
		('Nathaniel Chillambo', 'Sales', 55000.00),
		('Pascal Msindo', 'IT', 72000.00);

SELECT *
FROM employees_a;

SELECT *
FROM employees_b;

-- combine employees information from employees_a and employees_b table
SELECT employee_id, employee_name FROM employees_a
UNION ALL
SELECT employee_id, employee_name FROM employees_b;
