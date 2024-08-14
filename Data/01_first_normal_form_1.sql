-- Drop the database if it exists
IF DB_ID('normalisationsql') IS NOT NULL
BEGIN
    ALTER DATABASE normalisationsql SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE normalisationsql;
END

CREATE DATABASE normalisationsql;
GO

USE normalisationsql;
GO

CREATE TABLE students
( 
    student_id INT PRIMARY KEY,
    student_name VARCHAR(255),
    courses VARCHAR(255),
    age INT
);
GO

INSERT INTO students (student_id, student_name, courses, age)
VALUES
    (10015, 'Joe', 'Python', 21),
    (10028, 'Paul', 'Python, Javascript', 18),
    (10037, 'Danika', 'C++, Java', 20),
    (10051, 'Kyle', 'SQL, Javascript', 18),
    (10074, 'Alex', 'C++', 19),
    (10088, 'Simon', 'Java, Javascript', 20);
GO

SELECT * FROM students;
GO
