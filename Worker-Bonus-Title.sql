-- ------------------------------
-- 🟢 Step 1: Create Database
-- ------------------------------
CREATE DATABASE CompanyDB;
USE CompanyDB;

-- ------------------------------
-- 🟢 Step 2: Create Tables
-- ------------------------------

CREATE TABLE Worker (
    WORKER_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(25),
    LAST_NAME VARCHAR(25),
    SALARY INT,
    JOINING_DATE DATE,
    DEPARTMENT VARCHAR(25)
);

CREATE TABLE Bonus (
    WORKER_REF_ID INT,
    BONUS_AMOUNT INT,
    BONUS_DATE DATE,
    FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID)
);

CREATE TABLE Title (
    WORKER_REF_ID INT PRIMARY KEY,
    WORKER_TITLE VARCHAR(25),
    AFFECTED_FROM DATE,
    FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID)
);

-- ------------------------------
-- 🟢 Step 3: Insert Sample Data
-- ------------------------------

INSERT INTO Worker VALUES
(1, 'Monika', 'Sharma', 50000, '2020-01-10', 'HR'),
(2, 'Sonika', 'Rana', 60000, '2019-03-15', 'Finance'),
(3, 'Ankit', 'Verma', 70000, '2018-07-23', 'IT'),
(4, 'Amit', 'Kumar', 55000, '2021-11-05', 'Marketing'),
(5, 'Siyuu', 'Singh', 72000, '2017-09-30', 'IT');

INSERT INTO Bonus VALUES
(1, 5000, '2023-03-10'),
(2, 7000, '2023-04-15'),
(3, 8000, '2023-05-20'),
(4, 4500, '2023-06-25'),
(5, 9000, '2023-07-01');

INSERT INTO Title VALUES
(1, 'Manager', '2022-01-01'),
(2, 'Senior Accountant', '2021-02-01'),
(3, 'Team Lead', '2020-03-01'),
(4, 'Sales Executive', '2023-01-01'),
(5, 'Software Engineer', '2019-04-01');

-- Add one row with NULL for testing IS NULL
INSERT INTO Worker VALUES (6, 'Ravi', 'Yadav', 65000, '2022-08-08', NULL);

-- ------------------------------
-- 🟢 Step 4: DQL Operations (with descriptions)
-- ------------------------------

-- 1. IN: Filter rows where first name is Monika or Sonika
SELECT * FROM Worker WHERE FIRST_NAME IN ('Monika', 'Sonika');

-- 2. NOT IN: Get workers not in HR or Finance departments
SELECT * FROM Worker WHERE DEPARTMENT NOT IN ('HR', 'Finance');

-- 3. BETWEEN: Get workers with salary between 55000 and 70000
SELECT * FROM Worker WHERE SALARY BETWEEN 55000 AND 70000;

-- 4. IS NULL: Get workers where department is not assigned
SELECT * FROM Worker WHERE DEPARTMENT IS NULL;

-- 5. LIKE (Pattern Search):
-- First name starts with 'S'
SELECT * FROM Worker WHERE FIRST_NAME LIKE 'S%';

-- First name ends with 'a'
SELECT * FROM Worker WHERE FIRST_NAME LIKE '%a';

-- First name contains 'it'
SELECT * FROM Worker WHERE FIRST_NAME LIKE '%it%';

-- 6. ORDER BY: Sort workers by salary ascending
SELECT * FROM Worker ORDER BY SALARY ASC;

-- Sort workers by joining date descending
SELECT * FROM Worker ORDER BY JOINING_DATE DESC;

-- 7. DISTINCT: Show unique departments (ignores duplicates)
SELECT DISTINCT DEPARTMENT FROM Worker;

-- 8. GROUP BY: Total salary for each department
SELECT DEPARTMENT, SUM(SALARY) AS Total_Salary
FROM Worker
WHERE DEPARTMENT IS NOT NULL
GROUP BY DEPARTMENT;

-- 9. GROUP BY with HAVING: Show departments where total salary > 110000
SELECT DEPARTMENT, SUM(SALARY) AS Total_Salary
FROM Worker
WHERE DEPARTMENT IS NOT NULL
GROUP BY DEPARTMENT
HAVING SUM(SALARY) > 110000;

-- 10. JOIN (Worker + Bonus): Show worker name with bonus amount
SELECT w.FIRST_NAME, b.BONUS_AMOUNT
FROM Worker w
JOIN Bonus b ON w.WORKER_ID = b.WORKER_REF_ID;

-- 11. JOIN (Worker + Title): Show worker name with title
SELECT w.FIRST_NAME, t.WORKER_TITLE
FROM Worker w
JOIN Title t ON w.WORKER_ID = t.WORKER_REF_ID;
