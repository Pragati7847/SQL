
# Employee Database Management System – SQL

## 📌 Project Overview

This project demonstrates the creation and querying of an **Employee Database using MySQL**. It contains an `EmployeeDetail` table with employee information such as employee ID, name, salary, joining date, department, and gender.

The project focuses on practicing fundamental to intermediate **SQL concepts**, including database creation, table creation, data insertion, filtering, string manipulation, aggregate functions, date functions, pattern matching, and conditional statements.

## 🛠️ Technologies Used

* MySQL
* SQL
* MySQL Workbench (recommended)

## 📂 Database Structure

### Database

`Employee`

### Table

`EmployeeDetail`

| Column      | Data Type   | Description                      |
| ----------- | ----------- | -------------------------------- |
| EmployeeID  | INT         | Unique employee ID / Primary Key |
| name        | VARCHAR(50) | Employee first name              |
| Lastname    | TEXT        | Employee last name               |
| Salary      | INT         | Employee salary                  |
| JoiningDate | DATE        | Employee joining date            |
| Department  | VARCHAR(20) | Employee department              |
| Gender      | VARCHAR(50) | Employee gender                  |

## 📊 Sample Data

The database contains employee records from departments such as:

* IT
* HR
* Payroll

The records include employee names, salaries, joining dates, departments, and gender information.

## 🔍 SQL Concepts Covered

### 1. Database and Table Creation

* `CREATE DATABASE`
* `USE`
* `CREATE TABLE`
* Primary Key

### 2. Data Manipulation

* `INSERT INTO`
* `SELECT`

### 3. String Functions

* `UPPER()`
* `LOWER()`
* `CONCAT()`
* `LENGTH()`
* `LTRIM()`
* `RTRIM()`

### 4. Filtering Data

* `WHERE`
* `IN`
* `NOT IN`
* `BETWEEN`
* `NOT BETWEEN`

### 5. Pattern Matching

* `LIKE`
* Wildcards such as `%` and `_`

Examples include finding:

* Names beginning with a particular letter
* Names containing a particular character
* Names ending with a particular character

### 6. Aggregate Functions

* `MAX()`
* `MIN()`
* `COUNT()`
* `DISTINCT`

### 7. Date Functions

* `CURDATE()`
* `UTC_TIMESTAMP()`
* `DATE_FORMAT()`
* `YEAR()`
* `MONTH()`
* `DATEDIFF()`

### 8. Conditional Statements

The project also uses the `CASE` statement to convert gender values into abbreviated formats such as:

* Male → M
* Female → F

## 💡 Example Queries

### Find employees from the IT department

```sql
SELECT *
FROM EmployeeDetail
WHERE Department = 'IT';
```

### Find employees whose names start with A

```sql
SELECT *
FR
```
