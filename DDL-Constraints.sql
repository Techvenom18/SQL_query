-- ============================
-- 📘 Create Database
-- ============================
CREATE DATABASE DDL_Constraints_DB;
USE DDL_Constraints_DB;

-- ============================
-- 1️⃣ PRIMARY KEY Constraint
-- ============================
-- Ensures each row has a unique, non-null identifier
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50)
);

INSERT INTO Students VALUES
(1, 'Ravi'),
(2, 'Sneha'),
(3, 'Karan'),
(4, 'Anjali'),
(5, 'Aman');

-- ============================
-- 2️⃣ FOREIGN KEY Constraint
-- ============================
-- Ensures values in a column exist in another table
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

INSERT INTO Departments VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance'),
(104, 'Marketing'),
(105, 'Support');

INSERT INTO Employees VALUES
(1, 'Amit', 101),
(2, 'Reena', 102),
(3, 'Nikhil', 103),
(4, 'Priya', 104),
(5, 'Tanya', 105);

-- ============================
-- 3️⃣ UNIQUE Constraint
-- ============================
-- Ensures all values in a column are unique
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Email VARCHAR(100) UNIQUE
);

INSERT INTO Users VALUES
(1, 'ravi@gmail.com'),
(2, 'sneha@yahoo.com'),
(3, 'karan@hotmail.com'),
(4, 'anjali@gmail.com'),
(5, 'aman@rediffmail.com');

-- ============================
-- 4️⃣ NOT NULL Constraint
-- ============================
-- Prevents NULL values in the column
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL
);

INSERT INTO Products VALUES
(1, 'Laptop'),
(2, 'Mouse'),
(3, 'Keyboard'),
(4, 'Monitor'),
(5, 'Printer');

-- ============================
-- 5️⃣ CHECK Constraint
-- ============================
-- Restricts column values based on a condition
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Age INT CHECK (Age >= 18)
);

INSERT INTO Customers VALUES
(1, 20),
(2, 25),
(3, 30),
(4, 40),
(5, 21);

-- ============================
-- 6️⃣ DEFAULT Constraint
-- ============================
-- Sets a default value when none is provided
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    Status VARCHAR(20) DEFAULT 'Pending'
);

INSERT INTO Orders (OrderID) VALUES
(1), (2), (3), (4), (5);

-- ============================
-- 7️⃣ COMBINED Constraints
-- ============================
-- Uses PRIMARY KEY, NOT NULL, UNIQUE, CHECK together
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    Username VARCHAR(50) NOT NULL UNIQUE,
    Balance DECIMAL(10,2) CHECK (Balance >= 0)
);

INSERT INTO Accounts VALUES
(1, 'user_ravi', 1000.00),
(2, 'sneha22', 850.50),
(3, 'karan_07', 950.75),
(4, 'anjali88', 600.00),
(5, 'aman_singh', 1500.00);
