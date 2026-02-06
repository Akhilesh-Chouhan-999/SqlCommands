CREATE DATABASE SQL_COMMANDS;

USE SQL_COMMANDS;

--   This is a comment 

CREATE TABLE customers(
    id INT PRIMARY KEY , 
    first_name VARCHAR(50) ,
    country VARCHAR(50) ,
    score INT 
) ;



INSERT INTO customers(id , first_name , last_name , score)
VALUES (1, 'Akhilesh', 'India', 500),
(2, 'John', 'Germany', 450),
(3, 'Maria', 'Germany', 0),
(4, 'Alex', 'USA', 480),
(5, 'Sophia', 'France', 420),
(6, 'Rahul', 'India', 460),
(7, 'Emma', 'USA', 0),
(8, 'Liam', 'Germany', 470),
(9, 'Noah', 'France', 440),
(10, 'Olivia', 'India', 390);


-- DQL COMMANDS 


SELECT * 
FROM customers ; 


SELECT first_name , country 
FROM customers ; 


SELECT * 
FROM customers
WHERE score >= 450 ;


SELECT *
FROM customers
ORDER BY score  DESC;

SELECT *
FROM customers
ORDER BY
        country ASC,
        score DESC ;



SELECT 
country ,
SUM(score)
FROM customers
GROUP BY country;


SELECT 
country ,
SUM(score) AS SUM_SCORE
FROM customers
GROUP BY country
HAVING SUM(score) > 480;


SELECT 
country,
SUM(score)
FROM customers
WHERE score > 200
GROUP BY country
HAVING SUM(score) > 900;


SELECT DISTINCT
country as DISTINCT_COUNTRY
FROM customers;


SELECT 
*
FROM customers
LIMIT 50;


SELECT DISTINCT 
country ,
SUM(score)
FROM customers 
WHERE SCORE > 400
GROUP BY country
HAVING SUM(score) > 30
ORDER BY country ASC
LIMIT 3;


SELECT 124 AS STATIC_NUMBER;


SELECT 'hello duniya' AS STATIC_STRING ;


-- DDL COMMANDS 

CREATE TABLE persons(
    id INT NOT NULL ,
    person_name VARCHAR(50) NOT NULL ,
    birth_date DATE ,
    phone VARCHAR(15) NOT NULL ,
    constraint pk_persons PRIMARY KEY(id) 
);

ALTER TABLE persons
ADD emil VARCHAR(50) NOT NULL ;


ALTER TABLE persons
DROP phone ; 

ALTER TABLE persons
CHANGE emil email VARCHAR(50) NOT NULL;

ALTER TABLE persons
RENAME COLUMN name TO person_name;


DROP TABLE persons;


-- DML COMMAND 


CREATE TABLE student_info(
    id INT PRIMARY KEY  AUTO_INCREMENT ,
    email VARCHAR(50) ,
    roll_no VARCHAR(50) UNIQUE ,
    name VARCHAR(50)
) ;

INSERT INTO student_info (email, roll_no, name)
VALUES
('akhilesh.chouhan@gmail.com', 'RGPV2023CS001', 'Akhilesh Chouhan'),
('rahul.verma@gmail.com',     'RGPV2023CS002', 'Rahul Verma'),
('neha.sharma@gmail.com',     'RGPV2023CS003', 'Neha Sharma'),
('priya.patel@gmail.com',     'RGPV2023CS004', 'Priya Patel'),
('aman.singh@gmail.com',      'RGPV2023CS005', 'Aman Singh');


INSERT INTO student_info(name)
SELECT
name
FROM
student;


UPDATE student_info
SET email = 'chouhanakhilesh123@gmail',
    roll_no = 'RGPV12CS34' 
WHERE id = 1 ; 


UPDATE student_info
SET email = 'common.email@gmail.com'
WHERE email IS NULL AND roll_no IS NULL ; 


DELETE FROM student_info
WHERE id = 2 ; 


TRUNCATE TABLE student_info ;

SELECT * FROM student_info ;


-- Operators or Filtering by WHERE clause using operators .



CREATE TABLE employees_info (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    age INT,
    salary INT,
    city VARCHAR(30)
);



INSERT INTO employees_info (emp_id, name, department, age, salary, city) 
VALUES
        (1, 'Akhilesh', 'Engineering', 22, 45000, 'Bhopal'),
        (2, 'Ravi', 'Engineering', 25, 60000, 'Indore'),
        (3, 'Neha', 'HR', 28, 40000, 'Delhi'),
        (4, 'Aman', 'Marketing', 30, 55000, 'Mumbai'),
        (5, 'Pooja', 'HR', 24, 38000, 'Bhopal'),
        (6, 'Rahul', 'Engineering', 35, 80000, 'Bangalore'),
        (7, 'Sneha', 'Marketing', 27, 50000, 'Indore'),
        (8, 'Vikas', 'Finance', 32, 70000, 'Delhi'),
        (9, 'Anjali', 'Finance', 29, 65000, 'Mumbai'),
        (10, 'Karan', 'Engineering', 26, 52000, 'Bhopal');

-- 1. Comparision Operator 

-- a. ( = ) operator
SELECT 
name ,
department ,
age ,
salary ,
city
FROM
employees_info
WHERE city = 'Bhopal' ;  


-- b. ( <> or != ) Operator


SELECT 
name ,
department ,
age ,
salary ,
city
FROM
employees_info
WHERE city <>  'Bhopal' ;  -- WHERE city !=  'Bhopal' ; 

-- c. ( < ) Operator

SELECT
*
FROM
employees_info
WHERE
salary < 65000 ;

-- d. ( <= ) Operator


SELECT
*
FROM
employees_info
WHERE salary <= 55000 ;



-- e. ( > ) Operator

SELECT
*
FROM
employees_info
WHERE
salary > 65000 ;

-- f. ( >= ) Operator

SELECT
*
FROM
employees_info
WHERE salary >= 55000 ;


-- 2. Logical Operators

-- a. (AND) Operator

SELECT 
* 
FROM
employees_info
WHERE
city = 'Bhopal' AND salary < 60000 ;


-- b. ( OR ) Operator


SELECT 
* 
FROM
employees_info
WHERE
city = 'Bhopal' OR salary < 60000 ;

-- c. (NOT) Operator

SELECT
*
FROM
employees_info
WHERE
NOT city = 'Bhopal' ;


-- 3. Range Operator

 SELECT 
 *
 FROM
 employees_info
 WHERE salary BETWEEN 40000 AND 60000 ; 


-- 4. Membership Operator
SELECT 
* 
FROM
employees_info
WHERE
city IN ('Bhopal' , 'Indore') ;

-- 5. Search Operator 

-- Start with A
SELECT 
* 
FROM
employees_info
WHERE
name LIKE 'A%' ; 

-- End with a 

SELECT 
* 
FROM
employees_info
WHERE
name LIKE '%sh' ; 


-- Contains a

SELECT 
* 
FROM
employees_info
WHERE
name LIKE '%a%' ; 


-- 3rd character must be H
SELECT 
* 
FROM
employees_info
WHERE
name LIKE '__H%'


-- Joins in SQL 


CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);

INSERT INTO employees VALUES
(1, 'Akhilesh', 'Engineering', 60000),
(2, 'Ravi', 'Engineering', 55000),
(3, 'Neha', 'HR', 40000),
(4, 'Aman', 'Marketing', 50000),
(5, 'Pooja', 'HR', 42000),
(6, 'Rahul', 'Finance', 70000);

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    emp_id INT,
    project_name VARCHAR(50),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);


INSERT INTO projects VALUES
(101, 1, 'Billing System'),
(102, 1, 'AI Tool'),
(103, 2, 'Website Revamp'),
(104, 4, 'Ad Campaign');


-- No join  

SELECT * 
FROM employees;
SELECT*
FROM projects;


-- Inner Join

SELECT * 
FROM employees AS A
INNER JOIN projects AS B
ON `A`.emp_id = `B`.emp_id;


-- Left Join

SELECT *
FROM employees AS A 
LEFT JOIN projects AS B 
ON `A`.emp_id = `B`.emp_id;



-- Right Join 
SELECT *
FROM employees AS A 
RIGHT JOIN projects AS B 
ON `A`.emp_id = `B`.emp_id;

-- Full Join
-- Not supported in MySQL

SELECT * 
FROM
employees AS emp
FULL JOIN projects AS proj
ON emp.emp_id = proj.emp_id ;


-- Left Anti Join

SELECT * 
FROM
employees AS emp
LEFT JOIN projects AS proj
ON emp.emp_id = proj.emp_id
WHERE proj.emp_id IS NULL;


-- Right Anti Join

SELECT 
*
FROM
employees AS emp
RIGHT JOIN projects AS proj  
ON emp.emp_id  = proj.emp_id
WHERE emp.emp_id IS NULL ;


-- Full Anti Join

SELECT * 
FROM employees AS emp 
FULL JOIN projects AS proj 
ON emp.emp_id = proj.emp_id 
WHERE 
emp.emp_id IS NULL
OR proj.emp_id IS NULL ; 

-- Cross Join
SELECT A.emp_name , B.project_name
FROM employees AS A  
CROSS JOIN projects AS  B  ;


-- Join operation on multple tables 
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);


CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);


CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enroll_date DATE
);


INSERT INTO students 
VALUES
    (1, 'Akhilesh', 'Bhopal'),
    (2, 'Ravi', 'Indore'),
    (3, 'Neha', 'Delhi'),
    (4, 'Kiran', 'Pune');


INSERT INTO courses 
VALUES
        (101, 'DBMS'),
        (102, 'DSA'),
        (103, 'Operating Systems'),
        (104, 'Computer Networks');

INSERT INTO enrollments 
VALUES
    (1, 1, 101, '2024-01-10'),
    (2, 1, 102, '2024-01-12'),
    (3, 2, 101, '2024-01-11'),
    (4, 3, 103, '2024-01-15');



--- INNER Join 
SELECT s.name, c.course_name
FROM students s
INNER JOIN enrollments e ON s.student_id = e.student_id
INNER JOIN courses c ON e.course_id = c.course_id;

-- Left Join 
SELECT s.name, c.course_name
FROM students s
LEFT JOIN enrollments e ON s.student_id = e.student_id
LEFT JOIN courses c ON e.course_id = c.course_id;


-- Set Operators 


CREATE TABLE students_a (
    student_id INT,
    name VARCHAR(50),
    course VARCHAR(50)
);


INSERT INTO students_a (student_id, name, course) 
VALUES
        (1, 'Akhilesh', 'CSE'),
        (2, 'Rahul', 'ECE'),
        (3, 'Sneha', 'ME'),
        (4, 'Priya', 'CSE');


CREATE TABLE students_b (
    student_id INT,
    name VARCHAR(50),
    course VARCHAR(50)
);


INSERT INTO students_b (student_id, name, course) 
VALUES
        (3, 'Sneha', 'ME'),
        (4, 'Priya', 'CSE'),
        (5, 'Aman', 'EE'),
        (6, 'Neha', 'CSE');


-- Union operator

SELECT * FROM students_a
UNION
SELECT * FROM students_b;


-- Union All operator 
SELECT * FROM students_a
UNION ALL
SELECT * FROM students_b ;


-- EXCEPT OPERATOR 

SELECT * FROM students_a
EXCEPT
SELECT * FROM students_b ;



-- INTERSECT OPERATOR

SELECT * FROM students_a
INTERSECT
SELECT * FROM students_b ;


-- SQL Functions
-- 1. Single Row Function . 
-- 2. Mulit Row Function . 

-- Nested Function 
SELECT LENGTH(LOWER(LEFT('Maria', 2))) AS  nested_function ;


-- 1. Single Row Function 

-- a. String Functions

-- 1. Manipulation 
SELECT CONCAT('Akhilesh' , ' Chouhan') AS concated_string ; 

SELECT UPPER('akhilesh') AS upper_string ; 

SELECT LOWER('AKHILESH') AS lower_string ; 

SELECT TRIM('     Akhilesh    ') AS trimmed_String ; 

SELECT REPLACE('Akhilesh Sharma' , 'Sharma' , 'Chouhan' ) ; 


-- 2. Calculation 

SELECT LENGTH('Akhilesh Chouna') AS length ; 


-- 3. Extract String 

SELECT LEFT('Akhilesh chouhan' , 8) AS left_character ; 


SELECT RIGHT('Akhilesh Chouhan' , 8) AS right_character ; 


SELECT SUBSTRING('AKHILESH CHOUHAN' , 9 , 8) AS sub_string ;

-- b. Numeric Function 

SELECT ROUND(23.5454) AS round_value ; 


SELECT ROUND(23.2325423 , 3) AS round_value ; 

-- c. Date and Time Function
