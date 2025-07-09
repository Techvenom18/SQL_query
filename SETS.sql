-- 🔰 SQL SET OPERATIONS DEMO: UNION, UNION ALL, INTERSECT, MINUS/EXCEPT

-- Create database and switch to it
CREATE DATABASE SetOperationsDB;
USE SetOperationsDB;

-- Create two sample tables: SetA and SetB
CREATE TABLE SetA (
    ID INT,
    Name VARCHAR(50)
);

CREATE TABLE SetB (
    ID INT,
    Name VARCHAR(50)
);

-- Insert sample data into SetA
INSERT INTO SetA VALUES
(1, 'Ravi'),
(2, 'Sneha'),
(3, 'Karan'),
(4, 'Anjali'),
(5, 'Aman');

-- Insert sample data into SetB
INSERT INTO SetB VALUES
(3, 'Karan'),
(4, 'Anjali'),
(5, 'Aman'),
(6, 'Tanya'),
(7, 'Mehul');

-- UNION: Combines both tables and removes duplicates
SELECT * FROM SetA
UNION
SELECT * FROM SetB;

-- UNION ALL: Combines both tables including duplicates
SELECT * FROM SetA
UNION ALL
SELECT * FROM SetB;

-- INTERSECT: Returns only common rows (supported in MySQL 8.0+)
SELECT * FROM SetA
INTERSECT
SELECT * FROM SetB;

-- MINUS / EXCEPT: Returns rows in SetA but not in SetB (use EXCEPT in MySQL/PostgreSQL)
SELECT * FROM SetA
EXCEPT
SELECT * FROM SetB;

-- 📌 FORK and execute to compare results using SQL SET OPERATIONS
