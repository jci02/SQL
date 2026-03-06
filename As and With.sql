/*SQL BASICS: AS and WITH*/

DROP SCHEMA IF EXISTS company_db;
CREATE SCHEMA company_db;
USE company_db;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    salary INT,
    hire_date DATE,
    email VARCHAR(100)
);

INSERT INTO departments VALUES
(1,'Engineering'),
(2,'Marketing'),
(3,'Finance'),
(4,'Human Resources');

INSERT INTO employees VALUES
(1,'Alice Walker',1,90000,'2021-03-10','alice@company.com'),
(2,'Brian Adams',1,85000,'2022-01-15','brian@company.com'),
(3,'Cynthia Lee',2,70000,'2020-06-22','cynthia@company.com'),
(4,'David Kim',3,95000,'2019-11-05','david@company.com'),
(5,'Emma Stone',2,72000,'2023-02-18','emma@company.com'),
(6,'Frank Wright',1,88000,'2021-09-30','frank@company.com'),
(7,'Grace Hill',4,65000,'2022-05-12','grace@company.com'),
(8,'Henry Ford',3,99000,'2018-07-25','henry@company.com');

SELECT *
FROM departments;

SELECT *
FROM employees;


SELECT employee_name, salary AS employee_salary
FROM employees;

-- WITH = create a temporary table for this query

/*
WITH temp_table AS (
    query_here
)

SELECT *
FROM temp_table;
*/

WITH avg_salary_per_dept AS ( -- find average salary for each department and then display the department name with the average salary
    SELECT department_id,
           AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
)

SELECT d.department_name,
       a.avg_salary
FROM avg_salary_per_dept AS a
JOIN departments AS d
ON a.department_id = d.department_id;


WITH high_paid AS (
SELECT *
FROM employees
WHERE salary > 90000
)
SELECT *
FROM high_paid;