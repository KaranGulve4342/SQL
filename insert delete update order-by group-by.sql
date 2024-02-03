CREATE DATABASE school;
USE school;
CREATE TABLE student (
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);
INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "samuel", 82, "B", "Delhi");

SELECT * FROM student;
SELECT name, marks FROM student;

SELECT DISTINCT city FROM student;

SELECT * FROM student WHERE city = "Delhi" OR grade = "C";

SELECT * FROM student WHERE marks >= 90 AND city = "Mumbai";

SELECT * FROM student WHERE marks BETWEEN 80 and 90;

SELECT * FROM student where city in ("Delhi", "Pune");

SELECT * FROM student where city NOT IN ("Delhi", "Pune");

SELECT * FROM student WHERE marks < 92 LIMIT 3;

SELECT * FROM student ORDER BY city ASC;

SELECT * FROM student ORDER BY marks DESC LIMIT 3;

SELECT max(marks) FROM student;

SELECT avg(marks) FROM student;

SELECT min(marks) FROM student;

SELECT COUNT(rollno) FROM student;

SELECT city, count(name) FROM student GROUP BY city;

SELECT city, avg(marks) FROM student GROUP BY city ORDER BY avg(marks) DESC;

SELECT grade, count(name) FROM student GROUP BY grade ORDER BY grade;

SELECT city, count(rollno) FROM student GROUP BY city HAVING max(marks) > 90;

SELECT city
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) >= 93
ORDER BY city;

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET grade = "O"
WHERE grade = "A";

SELECT * FROM student;

UPDATE student
SET marks = 82
WHERE rollno = 105;

UPDATE student
SET grade = "A"
WHERE marks BETWEEN 80 AND 90;

UPDATE student
SET grade = "B"
WHERE marks BETWEEN 70 AND 80;

UPDATE student
SET marks = marks + 1;

DELETE FROM student
WHERE marks < 80;

CREATE TABLE dept (
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO dept
VALUES
(101, "comp"),
(102, "it");

SELECT * FROM dept;

UPDATE dept
SET id = 111
WHERE id = 102;

CREATE TABLE teacher (
	id INT PRIMARY KEY,
    name VARCHAR(255),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

DROP TABLE teacher;

INSERT INTO teacher
VALUES
(101, "Adam", 101),
(102, "Even", 102);

SELECT * FROM teacher;




