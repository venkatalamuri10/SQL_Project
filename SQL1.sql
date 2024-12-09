CREATE DATABASE college; 
USE college; 



CREATE TABLE student ( 
rollno INT PRIMARY KEY, 
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);


CREATE TABLE dept (
id INT PRIMARY KEY, 
name VARCHAR(50)
);

CREATE TABLE teacher (
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept (id)
);

CREATE TABLE del (
id INT PRIMARY KEY,
name VARCHAR (51)
);


INSERT INTO student
(rollno, name, marks, grade, city) 
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"), 
(103, "chetan", 85, "B", "Mumbai"), 
(104, "dhruv", 96, "A", "Delhi"), 
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

-- SELECT  city , count(rollno)
-- FROM student 
-- GROUP BY city;
SET SQL_SAFE_UPDATES = 0;
UPDATE student 
SET  grade = "O"
WHERE grade = "A";

SELECT  * FROM student ;