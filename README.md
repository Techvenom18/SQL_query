# 📘 Mastering SQL: A Comprehensive Learning Repository

This repository is a complete SQL learning suite designed to help students and professionals practice structured query language concepts using **MySQL** and **SQL Server**. It includes categorized SQL scripts, detailed examples, and concise documentation of key database concepts.

---

## Overview of SQL (Structured Query Language)

**SQL** is the standard language for interacting with relational databases. It enables users to create schemas, manage data, run queries, and control access. SQL is used across nearly all data-driven applications in the modern tech landscape.

---

## Understanding Relational Database Management Systems (RDBMS)

A **Relational Database Management System (RDBMS)** organizes data into well-structured tables (relations) and enforces relationships using keys. It ensures:
- Data consistency and integrity
- Transactional safety via ACID compliance
- Declarative data modeling

Popular RDBMS platforms include:
- **MySQL**
- **PostgreSQL**
- **Oracle Database**
- **Microsoft SQL Server**
- **SQLite**

---

## Introduction to MySQL

**MySQL** is a robust, open-source RDBMS known for its performance, reliability, and ease of use. It supports:
- Multiple storage engines (e.g., InnoDB, MyISAM)
- Transactions, indexing, triggers, and views
- Compatibility with modern SQL standards and tooling

---

## Categories of SQL Commands

| Command Type | Description                                         | Examples                          |
|--------------|-----------------------------------------------------|-----------------------------------|
| DDL          | Define and modify schema objects                    | `CREATE`, `ALTER`, `DROP`         |
| DML          | Manage data within schema objects                   | `INSERT`, `UPDATE`, `DELETE`      |
| DQL          | Retrieve data from the database                     | `SELECT`                          |
| DCL          | Define access privileges and roles                  | `GRANT`, `REVOKE`                 |
| TCL          | Manage database transactions                        | `COMMIT`, `ROLLBACK`, `SAVEPOINT` |

---

## 🔢 SQL Data Types Reference (MySQL 8.0 & SQL Server)

### MySQL 8.0 Data Types

| Category            | Data Type / Syntax                     | Description / Limits                                                                                        |
|---------------------|----------------------------------------|-------------------------------------------------------------------------------------------------------------|
| **String & Binary** | `CHAR(n)`                              | Fixed-length string (0–255 chars). Default is 1.                                                             |
|                     | `VARCHAR(n)`                           | Variable-length string (0–65,535 chars).                                                                    |
|                     | `TEXT`, `TINYTEXT`, `MEDIUMTEXT`, `LONGTEXT` | Text strings with increasing sizes (255B to 4GB).                                                      |
|                     | `BINARY(n)`, `VARBINARY(n)`            | Fixed/variable-length binary data.                                                                          |
|                     | `BLOB`, `TINYBLOB`, `MEDIUMBLOB`, `LONGBLOB` | Binary objects, up to 4GB.                                                                            |
|                     | `ENUM(val1, val2, ...)`                | Must match one value from a list (up to 65,535).                                                             |
|                     | `SET(val1, val2, ...)`                 | Can hold 0–64 values from a list.                                                                           |
| **Numeric**         | `TINYINT`, `SMALLINT`, `MEDIUMINT`, `INT`, `BIGINT` | Integer types ranging from 1-byte to 8-byte precision.                                               |
|                     | `FLOAT(p)`, `DOUBLE(p, d)`, `DECIMAL(p, d)` | Floating-point and fixed-point precision.                                                            |
|                     | `BOOLEAN`, `BIT(n)`                    | Logical and binary data types.                                                                             |
| **Date & Time**     | `DATE`, `DATETIME`, `TIMESTAMP`, `TIME`, `YEAR` | Store temporal values with or without time precision.                                                |

---

### Microsoft SQL Server Data Types

| Category            | Data Type / Syntax                | Description / Storage                                                |
|---------------------|-----------------------------------|----------------------------------------------------------------------|
| **String & Binary** | `CHAR(n)`, `VARCHAR(n)`, `VARCHAR(MAX)` | Fixed and variable-length ASCII strings.                             |
|                     | `NCHAR(n)`, `NVARCHAR(n)`, `NVARCHAR(MAX)` | Unicode character strings (2 bytes/char).                        |
|                     | `BINARY(n)`, `VARBINARY(n)`, `VARBINARY(MAX)` | Binary data with static or dynamic lengths.                     |
| **Numeric**         | `BIT`, `TINYINT`, `SMALLINT`, `INT`, `BIGINT` | Integer types for exact whole numbers.                            |
|                     | `DECIMAL(p,s)`, `NUMERIC(p,s)`, `FLOAT`, `REAL` | Support for floating-point and fixed decimal types.          |
|                     | `MONEY`, `SMALLMONEY`             | Currency-specific numeric types.                                    |

---

## 📦 Included SQL Practice Files

| Topic                      | Description                                                      | File Name                |
|----------------------------|------------------------------------------------------------------|--------------------------|
| ✅ DDL Constraints          | Defines structural rules on tables and columns                   | `ddl_constraints.sql`    |
| ✅ ALTER Table Operations  | Examples of modifying schema using `ALTER TABLE`                 | `alter_operations.sql`   |
| ✅ SQL Joins               | Demonstrates inner, outer, cross, and self joins                 | `joins_demo.sql`         |
| ✅ Set Operations          | Demonstrates `UNION`, `INTERSECT`, `EXCEPT`, etc.                | `set_operations.sql`     |
| ✅ Subqueries              | Covers basic, derived, and correlated subquery forms             | `subqueries.sql`         |
| ✅ Views in MySQL          | Creating and querying views                                       | `mysql_views.sql`        |
| ✅ DQL Query Examples      | Covers `IN`, `NOT IN`, `BETWEEN`, `LIKE`, `GROUP BY`, etc.       | `dql_queries.sql`        |

---

## 🛠 Getting Started

1. Download or clone the repository.  
2. Open `.sql` files in **MySQL Workbench**, **DBeaver**, or an online tool like **DB Fiddle**.  
3. Run each section step-by-step to observe output and schema changes.  
4. Modify sample values to enhance your understanding.

---

## Recommended Tools for Practice

- [MySQL Workbench](https://dev.mysql.com/downloads/workbench/)
- [DBeaver Community](https://dbeaver.io/)
- [DB Fiddle (Online Editor)](https://www.db-fiddle.com/)
- [VS Code SQL Extension](https://marketplace.visualstudio.com/items?itemName=ms-mssql.mssql)

---

## 📜 License

This project is open for educational and personal learning purposes.  
Feel free to **fork**, **customize**, and **share** your progress.

---

### 📢 FORK and EXECUTE to Build Strong SQL Fundamentals 🔄

