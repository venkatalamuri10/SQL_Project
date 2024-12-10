CREATE DATABASE Office_Records; 
USE Office_Records;

CREATE TABLE employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
     LastName VARCHAR(50),
    DepartmentID INT,
    JoiningDate DATE,
    Salary DECIMAL(10, 2),
    ManagerID INT
);

INSERT INTO employees (EmployeeID, FirstName, LastName, DepartmentID, JoiningDate, Salary, ManagerID)
VALUES 
(1, 'Alice', 'Johnson', 101, '2021-06-15', 75000.00, NULL),
(2, 'Bob', 'Smith', 102, '2020-01-10', 60000.00, 1),
(3, 'Charlie', 'Brown', 103, '2019-11-23', 55000.00, 1),
(4, 'Diana', 'Prince', 101, '2022-03-19', 58000.00, 2),
(5, 'Eva', 'Green', 104, NULL, 72000.00, NULL),
(6, 'Frank', 'Wright', NULL, '2023-02-01', 65000.00, 3);


CREATE TABLE departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    Location VARCHAR(50)
);

INSERT INTO departments (DepartmentID, DepartmentName, Location)
VALUES 
(101, 'Human Resources', 'New York'),
(102, 'Engineering', 'San Francisco'),
(103, 'Marketing', 'Chicago'),
(104, 'Sales', 'Boston'),
(105, 'Customer Support', NULL);

SELECT * FROM employees;
SELECT * FROM departments; 

SELECT employees.EmployeeID, employees.FirstName, Employees.LastName, Employees.DepartmentID, Employees.JoiningDate
FROM employees
JOIN departments 
ON employees.DepartmentID != departments.DepartmentID; -- this is not the correct approach here we need to use the left join to quey the data 


SELECT 
       employees.EmployeeID, 
       employees.Salary,
       employees.DepartmentID,
       departments.DepartmentName
FROM employees
INNER JOIN departments
ON  employees.DepartmentID = departments.DepartmentID
ORDER BY employees.Salary; 

SELECT salary 
FROM employees
ORDER BY salary DESC 
LIMIT 1 OFFSET 3; -- To find the 3rd highest salary. 

SELECT employees.EmployeeID , employees.FirstName , departments.Location
FROM employees
LEFT JOIN departments 
ON employees.DepartmentID = departments.DepartmentID
ORDER BY employees.EmployeeID;

SELECT employees.EmployeeID , employees.FirstName
FROM employees;

SELECT departments.Location
FROM departments; 

SELECT employees.ManagerID , departments.Location , departments.DepartmentName
FROM departments
RIGHT JOIN  employees
ON departments.DepartmentID = employees.DepartmentID
ORDER BY employees.ManagerID;

SELECT 
      employees.EmployeeID , 
      employees.FirstName , 
      employees.JoiningDate , 
      employees.Salary , 
      departments.Location , 
      departments.DepartmentName
FROM employees
LEFT JOIN departments ON  employees.DepartmentID = departments.DepartmentID
WHERE employees.EmployeeID IS NOT NULL
UNION 
SELECT 
      employees.EmployeeID , 
      employees.FirstName , 
      employees.JoiningDate , 
      employees.Salary , 
      departments.Location , 
      departments.DepartmentName
FROM employees 
RIGHT JOIN departments ON  employees.DepartmentID = departments.DepartmentID;


SELECT * 
INTO Backupofemployees
FROM employees; 









