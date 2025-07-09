-- 🔰 SQL JOINS DEMO: INNER, LEFT, RIGHT, FULL, CROSS, SELF

-- Create database and switch to it
CREATE DATABASE JoinsDemoDB;
USE JoinsDemoDB;

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50)
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert 5 customers
INSERT INTO Customers VALUES
(1, 'Ravi'),
(2, 'Sneha'),
(3, 'Karan'),
(4, 'Anjali'),
(5, 'Aman');

-- Insert 5 orders (1 unmatched order with CustomerID 6)
INSERT INTO Orders VALUES
(101, 1, 'Laptop'),
(102, 2, 'Mouse'),
(103, 1, 'Keyboard'),
(104, 3, 'Monitor'),
(105, 6, 'Tablet');

-- INNER JOIN: Shows matching records from both tables
SELECT Customers.CustomerName, Orders.Product
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- LEFT JOIN: Shows all customers and their orders if any
SELECT Customers.CustomerName, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- RIGHT JOIN: Shows all orders and customer names if matched
SELECT Customers.CustomerName, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- FULL OUTER JOIN: Shows all matched and unmatched rows from both tables
SELECT Customers.CustomerName, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.CustomerName, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- CROSS JOIN: Shows all possible combinations of customers and orders
SELECT Customers.CustomerName, Orders.Product
FROM Customers
CROSS JOIN Orders;

-- Create Employees table for SELF JOIN
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    ManagerID INT
);

-- Insert 5 employees (with manager hierarchy)
INSERT INTO Employees VALUES
(1, 'Amit', NULL),
(2, 'Raj', 1),
(3, 'Neha', 1),
(4, 'Simran', 2),
(5, 'Karan', 2);

-- SELF JOIN: Displays employee-manager pairs from the same table
SELECT E.EmpName AS Employee, M.EmpName AS Manager
FROM Employees E
LEFT JOIN Employees M ON E.ManagerID = M.EmpID;

-- 📌 FORK and execute to get output
