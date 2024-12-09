CREATE DATABASE college;

USE college;

DROP DATABASE college; 
CREATE TABLE student (
  rollno INT PRIMARY KEY,
  name VARCHAR(50)
);

SELECT * FROM student; 

INSERT INTO student
(rollno , name)
VALUES 
(101 , "karan"),
(102 , "arjun"),
(103 , "venkat");


CREATE DATABASE company;
USE  company;
CREATE TABLE employee(
 Id INT PRIMARY KEY ,
 name VARCHAR(50),
 Salary INT 
);

INSERT INTO employee
(Id , name, Salary)
VALUES 
(1 , "venkat", 10000),
(2 , "shahul", 20000),
(3 , "rokesh", 30000);

SELECT * FROM employee;

