-- Task:

-- Create a database with a table named Students with columns StudentID, FirstName, LastName, Age, and Grade. 
-- Populate the table with sample data. Write SQL queries to perform the following tasks:

-- 1. Retrieve all students who are older than 25 years.
-- 2. Find students with a grade of 'A' or 'B' in the Grade column.
-- 3. Display the distinct age values of students.

CREATE DATABASE Schooldb;

USE Schooldb;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Grade VARCHAR(2)
);

INSERT INTO Students (StudentID, FirstName, LastName, Age, Grade)
VALUES
    (1, 'John', 'Doe', 20, '12'),
    (2, 'Jane', 'Smith', 23, '11'),
    (3, 'Michael', 'Johnson', 27, '10'),
    (4, 'Emily', 'Brown', 23, '9'),
    (5, 'David', 'Wilson', 28, '12'),
    (6, 'Sophia', 'Taylor', 28, '11'),
    (7, 'Daniel', 'Anderson', 24, '10'),
    (8, 'Olivia', 'Thomas', 24, '9'),
    (9, 'Matthew', 'Jackson', 23, '12'),
    (10, 'Emma', 'White', 22, '11'),
    (11, 'Jacob', 'Harris', 25, '10'),
    (12, 'Ava', 'Martin', 26, '9'),
    (13, 'William', 'Thompson', 26, '12'),
    (14, 'Isabella', 'Garcia', 28, '11'),
    (15, 'Michael', 'Martinez', 21, '10'),
    (16, 'Sophia', 'Robinson', 22, '9'),
    (17, 'Ethan', 'Clark', 27, '12'),
    (18, 'Mia', 'Rodriguez', 25, '11'),
    (19, 'Daniel', 'Lewis', 20, '10'),
    (20, 'Harper', 'Walker', 20, '9');
    
    SELECT * FROM Students;
    
  --   Question 1. Retrieve all students who are older than 25 years.
  SELECT FirstName, lastName, Age
  FROM Students
  WHERE Age > 25;
  
 --  Question 2. Find students with a grade of 'A' or 'B' in the Grade column.
 SET SQL_SAFE_UPDATES = 0; -- disable the safe update mode for the current session, allowing you to perform updates or deletions without a WHERE clause or a matching condition.
 
 UPDATE Students
 SET Grade = (
    CASE
        WHEN Grade = 12 THEN 'A'
        WHEN Grade= 11 THEN 'B'
        WHEN Grade = 10 THEN 'C'
        WHEN Grade = 9 THEN 'D'
        ELSE 'F'
    END
);

SELECT FirstName, LastName, Grade
FROM Students
WHERE GRADE IN('A', 'B');

-- Question 3. Display the distinct age values of students.
SELECT DISTINCT Age
FROM Students
ORDER BY Age DESC;

 
 
  