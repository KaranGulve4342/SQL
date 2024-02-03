CREATE DATABASE xyz_company;
USE xyz_company;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(255),
    salary int
);

INSERT INTO employee
(id, name, salary)
VALUES
(01, "rushi", 234567),
(03, "shrikant", 1000000),
(04, "hemant", 790000);

SELECT * FROM employee;