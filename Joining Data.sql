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