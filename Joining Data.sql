/*SQL BASICS: JOINING*/

-- show the final grades for each student: LEFT JOIN

SELECT *
FROM students;

SELECT *
FROM student_grades;

SELECT *
FROM students LEFT JOIN student_grades ON students.id = student_grades.student_id;

SELECT students.id, students.student_name,student_grades.class_name, student_grades.final_grade
FROM students LEFT JOIN student_grades ON students.id = student_grades.student_id;
-- -----------------------------------------------------------------------------------------------------
DROP SCHEMA IF EXISTS ecommerce_db;
CREATE SCHEMA ecommerce_db;
USE ecommerce_db;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    country VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2)
);

INSERT INTO customers VALUES
(1,'John Carter','USA'),
(2,'Maria Lopez','Spain'),
(3,'Liam Smith','UK'),
(4,'Sophia Chen','China'),
(5,'Noah Brown','USA');

INSERT INTO orders VALUES
(101,1,'2024-01-10',120.50),
(102,2,'2024-02-11',89.00),
(103,1,'2024-02-14',45.00),
(104,3,'2024-03-01',220.00),
(105,4,'2024-03-15',150.75),
(106,5,'2024-04-02',60.25),
(107,3,'2024-04-10',310.50);



DROP SCHEMA IF EXISTS streaming_db;
CREATE SCHEMA streaming_db;
USE streaming_db;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    movie_title VARCHAR(100),
    genre VARCHAR(50),
    release_year INT
);

CREATE TABLE watch_history (
    watch_id INT PRIMARY KEY,
    user_id INT,
    movie_id INT,
    watch_date DATE,
    rating INT
);

INSERT INTO users VALUES
(1,'alex','USA'),
(2,'maria','Spain'),
(3,'liam','UK'),
(4,'sophia','Canada');

INSERT INTO movies VALUES
(1,'The Last Planet','Sci-Fi',2022),
(2,'Ocean Deep','Documentary',2020),
(3,'Fast Wheels','Action',2023),
(4,'Silent Night','Drama',2021);

INSERT INTO watch_history VALUES
(1,1,1,'2024-01-02',5),
(2,1,3,'2024-01-10',4),
(3,2,2,'2024-02-14',5),
(4,3,4,'2024-02-20',3),
(5,4,1,'2024-03-01',4),
(6,3,3,'2024-03-12',5);


