CREATE DATABASE guys;
USE guys;


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

CREATE VIEW view1 AS
SELECT rollno, name, marks FROM friends;

SELECT * FROM view1;

DROP VIEW view1;