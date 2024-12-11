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

DROP TABLE IF EXISTS studentsone;
DROP TABLE IF EXISTS students1NF;
CREATE TABLE students1NF
( 
    student_id INT,
    student_name VARCHAR(30),
    course VARCHAR(30),
    age INT,
    PRIMARY KEY (student_id, course)
);

INSERT INTO students1NF (student_id, student_name, course, age)
VALUES
    (10015, 'Joe', 'Python', 21),
    (10028, 'Paul', 'Python', 18),
    (10028, 'Paul', 'Javascript', 18),
    (10037, 'Danika', 'C++', 20),
    (10037, 'Danika', 'Java', 20),
    (10051, 'Kyle', 'SQL', 18),
    (10051, 'Kyle', 'Javascript', 18),
    (10074, 'Alex', 'C++', 19),
    (10088, 'Simon', 'Javascript', 20),
    (10088, 'Simon', 'Java', 20);

GO
SELECT * FROM students1NF;
