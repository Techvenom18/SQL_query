-- Create demo database and table
CREATE DATABASE AlterDemoDB;
USE AlterDemoDB;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50)
);

INSERT INTO Employees VALUES
(1, 'Ravi'), (2, 'Sneha'), (3, 'Karan');

-- 1. Add a new column to the table
ALTER TABLE Employees
ADD Salary INT;

-- 2. Modify column data type or size
ALTER TABLE Employees
MODIFY EmpName VARCHAR(100);

-- 3. Rename an existing column
ALTER TABLE Employees
RENAME COLUMN EmpName TO EmployeeName;

-- 4. Drop a column from the table
ALTER TABLE Employees
DROP COLUMN Salary;

-- 5. Add a UNIQUE constraint on a column
ALTER TABLE Employees
ADD CONSTRAINT UC_EmployeeName UNIQUE (EmployeeName);

-- 6. Drop a UNIQUE constraint (index) by name
ALTER TABLE Employees
DROP INDEX UC_EmployeeName;

-- 7. Rename the table
ALTER TABLE Employees
RENAME TO Staff;

-- 8. Change column data type (alternative to MODIFY)
ALTER TABLE Staff
MODIFY EmployeeName TEXT;

-- 9. Add a column with a default value
ALTER TABLE Staff
ADD Status VARCHAR(20) DEFAULT 'Active';

-- View the final structure and data
SELECT * FROM Staff;
