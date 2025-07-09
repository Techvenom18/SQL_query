-- 🔰 MYSQL VIEW DEMO: Create, Use, Update, Drop

-- Create database and switch to it
CREATE DATABASE ViewDemoDB;
USE ViewDemoDB;

-- Create a base table for Employees
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

-- Insert sample data into Employees
INSERT INTO Employees VALUES
(1, 'Ravi', 'IT', 60000),
(2, 'Sneha', 'HR', 50000),
(3, 'Karan', 'IT', 70000),
(4, 'Anjali', 'Finance', 55000),
(5, 'Aman', 'IT', 75000);

-- Create a view to show IT department employees only
CREATE VIEW IT_Employees AS
SELECT EmpID, EmpName, Salary
FROM Employees
WHERE Department = 'IT';

-- Select data from the view
SELECT * FROM IT_Employees;

-- Create a view to show average salary by department
CREATE VIEW Dept_AvgSalary AS
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department;

-- Select data from average salary view
SELECT * FROM Dept_AvgSalary;

-- Update data through a simple view (allowed if view is updatable)
UPDATE IT_Employees
SET Salary = Salary + 5000
WHERE EmpName = 'Ravi';

-- Drop a view
DROP VIEW IF EXISTS Dept_AvgSalary;

-- 📌 FORK and execute to practice MySQL VIEW operations
