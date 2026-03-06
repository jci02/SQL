/*SQL BASICS: GROUP BY, HAVING & COUNT*/

-- show the average gpa for each grade level (GROUP BY)

USE student_grades_db;

SELECT grade_level, AVG(gpa) AS avg_gpa
FROM students
GROUP BY grade_level;

SELECT grade_level, MIN(gpa)
FROM students
GROUP BY grade_level;


SELECT grade_level, MAX(gpa) AS max_gpa
FROM students
GROUP BY grade_level;

SELECT grade_level, COUNT(gpa)
FROM students
GROUP BY grade_level;

-- show the grade levels with an avergae gpa below 3.3 (HAVING)
-- HAVING is a clause to filter any GROUP BY data

SELECT grade_level, AVG(gpa) AS avg_gpa
FROM students
GROUP BY grade_level
HAVING avg_gpa < 3.3;


/*MORE SQL CONCEPTS*/

-- special keywords: LIMIT | COUNT | DISTINCT

SELECT student_name, gpa, school_lunch
FROM students
LIMIT 5;

SELECT student_name, gpa, school_lunch
FROM students
WHERE school_lunch = "Yes" AND gpa > 3.3;

SELECT COUNT(*) -- student_name, gpa, school_lunch
FROM students
WHERE school_lunch = "Yes" AND gpa > 3.3;


