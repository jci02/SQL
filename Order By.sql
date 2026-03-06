/*SQL BASICS: ORDER BY*/

-- sort the students by gpa (ORDER BY)

SELECT *
FROM students
ORDER BY gpa;

SELECT student_name, gpa, school_lunch
FROM students
WHERE school_lunch = "Yes" AND gpa > 3.3
ORDER BY gpa;

SELECT student_name, gpa, school_lunch
FROM students
WHERE school_lunch = "Yes" AND gpa > 3.3
ORDER BY gpa DESC;

SELECT grade_level, AVG(gpa)
FROM students
GROUP BY grade_level
ORDER BY grade_level;

SELECT grade_level, AVG(gpa) AS avg_gpa
FROM students
GROUP BY grade_level
HAVING avg_gpa < 3.3
ORDER BY grade_level;


SELECT Count(grade_level) AS count_grades
FROM students
WHERE gpa > 3.3
GROUP BY grade_level
ORDER BY grade_level;

/*THE BIG 6 In Order:
	SELECT -> Choose columns to display
    FROM -> Choose tables
    WHERE -> Filter rows
    GROUP BY -> Group rows of data in the table and aggregate them
    HAVING -> Filter grouped rows
    ORDER BY -> Sort rows
*/

SELECT gpa -- student_name, school_lunch
FROM students
-- WHERE school_lunch = "Yes" AND gpa > 3.3
ORDER BY gpa DESC;

SELECT DISTINCT gpa -- student_name, school_lunch
FROM students
-- WHERE school_lunch = "Yes" AND gpa > 3.3
ORDER BY gpa DESC;
