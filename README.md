# 📘 SQL Commands & Concepts – Hands-on Practice

This repository contains a **structured, hands-on SQL learning script** covering **core to advanced SQL concepts** using practical examples and sample datasets.

The goal of this project is to build **strong SQL fundamentals**, understand **query execution**, and practice **real-world data manipulation patterns**.

---

## 🗄️ Database Setup

```sql
CREATE DATABASE SQL_COMMANDS;
USE SQL_COMMANDS;
All examples in this repository are executed inside the SQL_COMMANDS database.

🧱 Tables Used
The project uses multiple tables to demonstrate different SQL concepts:

customers

persons

student_info

employees_info

employees

projects

students, courses, enrollments

students_a, students_b

employee_payroll

online_order_activity

Each table is designed to simulate real-world data scenarios.

🔍 DQL (Data Query Language)
Covered Queries
SELECT *

Column-specific selection

WHERE filtering

ORDER BY

GROUP BY

HAVING

DISTINCT

LIMIT

Aliases

Static values

Example:

SELECT country, SUM(score)
FROM customers
GROUP BY country
HAVING SUM(score) > 480;
🛠️ DDL (Data Definition Language)
Covered Commands
CREATE TABLE

ALTER TABLE

ADD column

DROP column

RENAME column

DROP TABLE

Constraints:

PRIMARY KEY

UNIQUE

NOT NULL

✏️ DML (Data Manipulation Language)
Covered Operations
INSERT

INSERT INTO ... SELECT

UPDATE

DELETE

TRUNCATE

Example:

UPDATE student_info
SET email = 'common.email@gmail.com'
WHERE email IS NULL;
🎯 WHERE Clause & Operators
Comparison Operators
=, !=, <>, <, <=, >, >=

Logical Operators
AND, OR, NOT

Other Operators
BETWEEN

IN

LIKE

IS NULL, IS NOT NULL

🔗 Joins in SQL
Types Covered
INNER JOIN

LEFT JOIN

RIGHT JOIN

FULL JOIN (conceptual – not supported in MySQL)

LEFT ANTI JOIN

RIGHT ANTI JOIN

FULL ANTI JOIN

CROSS JOIN

Multi-table joins using:
students

courses

enrollments

🔁 Set Operators
UNION

UNION ALL

EXCEPT

INTERSECT

Used to compare data across students_a and students_b.

🧮 SQL Functions
Single Row Functions
String functions (UPPER, LOWER, TRIM, SUBSTRING)

Numeric functions (ROUND, LENGTH)

Date functions (DAY, MONTH, YEAR, DATE_FORMAT)

Type casting (CAST, CONVERT)

NULL handling (IFNULL, COALESCE, NULLIF)

Multi Row (Aggregate) Functions
COUNT

SUM

AVG

MIN

MAX

🪟 Window Functions
Aggregate Window Functions
SUM() OVER

AVG() OVER

COUNT() OVER

MIN() / MAX() OVER

Ranking Functions
ROW_NUMBER()

RANK()

DENSE_RANK()

Analytic Functions
LAG

LEAD

FIRST_VALUE

LAST_VALUE

NTH_VALUE

🔍 Subqueries
Based on Result Type
Scalar subquery

Row subquery

Table subquery

Based on Dependency
Non-correlated subquery

Correlated subquery

Based on Location
Subquery in SELECT

Subquery in FROM

Subquery in JOIN

Subquery in WHERE

IN

ANY

ALL

EXISTS

🧩 Common Table Expressions (CTE)
Non-Recursive CTE
Standalone CTE

Nested CTE

Recursive CTE
Anchor query

Recursive query

Termination condition

Example:

WITH RECURSIVE Series AS (
    SELECT 1 AS my_number
    UNION ALL
    SELECT my_number + 1
    FROM Series
    WHERE my_number < 20
)
SELECT * FROM Series;
🎯 Learning Outcomes
By completing this script, you will gain:

Strong SQL query-writing skills

Clear understanding of joins and subqueries

Confidence with window functions

Real-world database querying experience

Interview-ready SQL fundamentals

📌 Who This Is For
Beginners learning SQL from scratch

Students preparing for DBMS interviews

Developers revising SQL concepts

Anyone aiming for backend / data roles

🚀 Next Steps (Optional)
Convert queries into interview questions

Practice query optimization

Apply concepts to real datasets

Explore indexing and execution plans


---
