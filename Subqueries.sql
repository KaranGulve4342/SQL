CREATE DATABASE emp;
USE emp;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student
(id, name)
VALUES
(101, "alice"),
(102, "bob"),
(103, "oggy"),
(104, "Jack");

CREATE TABLE IF NOT EXISTS course(
	id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO course
(id, course)
VALUES
(102, "english"),
(103, "science"),
(105, "math"),
(107, "Probability");

SELECT * FROM student;
SELECT * FROM course;

SELECT *
FROM student
INNER JOIN course
ON student.id = course.id;

SELECT *
FROM student as s
INNER JOIN course as c
ON s.id = c.id;

SELECT *
FROM student as s
LEFT JOIN course as c
ON s.id = c.id;

SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id;

SELECT *
FROM STUDENT as s
LEFT JOIN course as c
ON s.id = c.id
UNION
SELECT *
FROM STUDENT as s
RIGHT JOIN course as c
ON s.id = c.id;

SELECT *
FROM student as s
LEFT JOIN course as c
ON s.id = c.id
WHERE c.id IS NULL; 

SELECT *
FROM STUDENT  as s
RIGHT JOIN course as c
ON s.id = c.id
WHERE s.id IS NULL;

SELECT *
FROM student as s
LEFT JOIN course as c
ON s.id = c.id
WHERE c.id IS NULL
UNION
SELECT *
FROM STUDENT  as s
RIGHT JOIN course as c
ON s.id = c.id
WHERE s.id IS NULL;


CREATE TABLE IF NOT EXISTS employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

INSERT INTO employee
(id, name, manager_id)
VALUES
(101, "rocky", 103),
(102, "bob", 104),
(103, "casey", NULL),
(104, "donald", 103);

SELECT * FROM employee;

SELECT *
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;

SELECT name from employee
UNION
select name from employee;

CREATE TABLE friends (
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO friends
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "samuel", 82, "B", "Delhi");

SELECT * FROM friends;

SELECT avg(marks)
FROM friends;



SELECT name
FROM friends
WHERE marks > 86.800;

SELECT name, marks
FROM friends
WHERE marks > (SELECT AVG(marks) FROM friends);

SELECT rollno, name, city
FROM friends
WHERE rollno%2 = 0;

SELECT name
FROM friends
WHERE rollno IN (102, 104, 106);

SELECT rollno, name, city
FROM friends
WHERE rollno IN (SELECT rollno
				FROM friends
				WHERE rollno%2 = 0);












