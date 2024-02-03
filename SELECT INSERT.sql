CREATE DATABASE clg;
USE clg;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

SELECT * FROM student;

CREATE TABLE temp1(
	id INT UNIQUE
);

INSERT INTO temp1 VALUES (101);
INSERT INTO temp1 VALUES (102);

SELECT * FROM temp1;

CREATE TABLE temp2 (
	id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(20),
    PRIMARY KEY (id, name)
);

CREATE TABLE emp (
	id INT,
    salary INT DEFAULT 25000
);

INSERT INTO emp (id) VALUES (101);
INSERT INTO emp (id) VALUES (102);

SELECT * FROM emp;

