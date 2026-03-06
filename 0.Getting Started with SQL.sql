/*
=========================================================
Getting Started With SQL
Introduction to SQL and Relational Databases
=========================================================

SQL (Structured Query Language) is the standard language
used to interact with relational databases.

It allows you to:
- Retrieve data
- Insert new data
- Update existing data
- Delete data
- Create and manage database structures

SQL is used by:
- Data Analysts
- Data Engineers
- Backend Developers
- Database Administrators
- Data Scientists

Examples of database systems that use SQL:
- MySQL
- PostgreSQL
- SQL Server
- Oracle
- SQLite

=========================================================
Basic Database Concepts
=========================================================

DATABASE
A database is an organized collection of structured data.

Example:
A school database might store:
- students
- teachers
- classes
- grades

SCHEMA
A schema is a logical container that holds tables,
views, and other database objects.

Example:
CREATE SCHEMA school_db;

TABLE
A table stores data in rows and columns.

Example table structure:

students
---------------------------------
id | student_name | grade_level
---------------------------------

COLUMN
A column represents a single attribute of the data.

Examples:
student_name
email
birthday

ROW (RECORD)
A row represents one record in the table.

Example row:
1 | Abby Johnson | 10

PRIMARY KEY
A primary key uniquely identifies each row in a table.

Example:
id INT PRIMARY KEY

=========================================================
Understanding Relational Databases
=========================================================

A relational database organizes data into multiple
tables that are related to each other.

Relationships between tables are created using keys.

Example:

students table
----------------------
id | student_name

student_grades table
----------------------
student_id | class | grade

Here:
student_grades.student_id references students.id

This allows us to connect information between tables.

Benefits of relational databases:
- Organized data structure
- Reduced data duplication
- Easier data analysis
- Ability to combine data from multiple tables

=========================================================
Writing and Executing Queries
=========================================================

A QUERY is a request for data from a database.

The most common SQL statement is SELECT.

Example: Retrieve all data from a table
*/

SELECT * FROM students;

/*
SELECT specifies which columns you want.

Example: Retrieve specific columns
*/

SELECT student_name, grade_level
FROM students;

/*
Filtering results using WHERE
*/

SELECT *
FROM students
WHERE grade_level = 10;

/*
Using comparison operators
*/

SELECT *
FROM students
WHERE gpa > 3.5;

/*
Using logical operators
*/

SELECT *
FROM students
WHERE grade_level = 11
AND gpa > 3.0;

/*
Sorting results
*/

SELECT *
FROM students
ORDER BY gpa DESC;

/*
Limiting results
*/

SELECT *
FROM students
LIMIT 5;

/*
=========================================================
Summary
=========================================================

SQL is used to interact with relational databases.

Key concepts learned:
- Databases store structured data
- Tables contain rows and columns
- Primary keys uniquely identify rows
- Queries retrieve and manipulate data
- SELECT is the most commonly used SQL statement

Next step:
Learn how SELECT, FROM, and WHERE work together
to filter and retrieve data efficiently.
*/