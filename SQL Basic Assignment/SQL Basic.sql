-- =====================================
-- SQL BASICS ASSIGNMENT
-- PW Skills
-- =====================================

-- Q1: Create Database and Employees Table
CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    hire_date DATE
);

-- Q2: Insert Data into Employees Table
INSERT INTO employees VALUES
(101, 'Amit', 'Sharma', 'HR', 50000, '2020-01-15'),
(102, 'Riya', 'Kapoor', 'Sales', 75000, '2019-03-22'),
(103, 'Raj', 'Mehta', 'IT', 90000, '2018-07-11'),
(104, 'Neha', 'Verma', 'IT', 85000, '2021-09-01'),
(105, 'Arjun', 'Singh', 'Finance', 60000, '2022-02-10');

-- Q3: Display All Employees Sorted by Salary (Lowest to Highest)
SELECT *
FROM employees
ORDER BY salary ASC;

-- Q4: Employees Sorted by Department (A–Z) and Salary (High → Low)
SELECT *
FROM employees
ORDER BY department ASC, salary DESC;

-- Q5: Employees in IT Department Ordered by Hire Date (Newest First)
SELECT *
FROM employees
WHERE department = 'IT'
ORDER BY hire_date DESC;

-- Q6: Create and Populate Sales Table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    amount INT,
    sale_date DATE
);

INSERT INTO sales VALUES
(1, 'Aditi', 1500, '2024-08-01'),
(2, 'Rohan', 2200, '2024-08-03'),
(3, 'Aditi', 3500, '2024-09-05'),
(4, 'Meena', 2700, '2024-09-15'),
(5, 'Rohan', 4500, '2024-09-25');

-- Q7: Display All Sales Sorted by Amount (Highest → Lowest)
SELECT *
FROM sales
ORDER BY amount DESC;

-- Q8: Show All Sales Made by Customer "Aditi"
SELECT *
FROM sales
WHERE customer_name = 'Aditi';

-- Q9: Difference Between Primary Key and Foreign Key
-- Primary Key:
-- Uniquely identifies each record in a table.
-- Cannot contain NULL values.
-- Each table can have only one primary key.

-- Foreign Key:
-- Used to establish relationship between two tables.
-- Can contain duplicate values.
-- Can accept NULL values.
-- Refers to the primary key of another table.

-- Q10: Constraints in SQL
-- Constraints are rules applied on table columns to maintain data integrity.
-- Common constraints:
-- PRIMARY KEY, FOREIGN KEY, NOT NULL, UNIQUE, CHECK, DEFAULT
-- They ensure accuracy, consistency, and reliability of data.

