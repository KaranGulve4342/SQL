CREATE DATABASE fighter;
USE fighter;

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

ALTER TABLE student
ADD COLUMN age INT;

ALTER TABLE student
DROP COLUMN age;

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

INSERT INTO student
(rollno, name, marks, stu_age)
VALUES
(17, "gargi", 68, 10);

ALTER TABLE student
CHANGE age stu_age INT;

ALTER TABLE student
DROP COLUMN stu_age;

ALTER TABLE Student
RENAME TO student;

SELECT * FROM student;

TRUNCATE TABLE student;

ALTER TABLE student
CHANGE name fullName VARCHAR(255);

DELETE FROM student
WHERE marks < 80;

ALTER TABLE student
DROP COLUMN grade;
















