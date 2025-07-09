-- Create database and switch to it
CREATE DATABASE SubqueryTypesDB;
USE SubqueryTypesDB;

-- Create Employees table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

-- Insert 5 sample employee records
INSERT INTO Employees VALUES
(1, 'Ravi', 'IT', 60000),
(2, 'Sneha', 'HR', 50000),
(3, 'Karan', 'IT', 70000),
(4, 'Anjali', 'Finance', 55000),
(5, 'Aman', 'IT', 75000);

-- Subquery in SELECT: returns a single value for every row
SELECT EmpName,
       (SELECT MAX(Salary) FROM Employees) AS MaxSalary
FROM Employees;

-- Subquery in FROM: used as a temporary inline view
SELECT DeptMax.Department, DeptMax.TotalSalary
FROM (
    SELECT Department, SUM(Salary) AS TotalSalary
    FROM Employees
    GROUP BY Department
) AS DeptMax;

-- Derived table: subquery in FROM with an alias used as virtual table
SELECT D.Department, D.AvgSalary
FROM (
    SELECT Department, AVG(Salary) AS AvgSalary
    FROM Employees
    GROUP BY Department
) AS D;

-- Correlated subquery: subquery depends on outer query row
SELECT EmpName, Salary
FROM Employees E1
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employees E2
    WHERE E1.Department = E2.Department
);

-- 📌 FORK and execute to explore 4 essential SQL subqueries: SELECT, FROM, DERIVED, CORRELATED
