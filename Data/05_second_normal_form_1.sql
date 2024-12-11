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

CREATE TABLE nc_classroom
( 
    student_no INT,                   
    mentor VARCHAR(255),              
    classroom VARCHAR(255),           
    subject VARCHAR(255),
    PRIMARY KEY (student_no, subject)           
);
GO

INSERT INTO nc_classroom (student_no, mentor, classroom, subject)
VALUES
    (10456, 'Rose', 'Zoom_12', 'Maths'),
    (10456, 'Rose', 'Zoom_12', 'Science'),
    (10456, 'Rose', 'Zoom_12', 'English'),
    (10839, 'Haz', 'Zoom_08', 'English'),
    (10839, 'Haz', 'Zoom_08', 'Art'),
    (10839, 'Haz', 'Zoom_08', 'P.E.'),
    (10931, 'Jim', 'Zoom_03', 'Music'),
    (10931, 'Jim', 'Zoom_03', 'French'),
    (10931, 'Jim', 'Zoom_03', 'Business'),
    (11525, 'Liam', 'Zoom_15', 'I.T.'),
    (11525, 'Liam', 'Zoom_15', 'Art'),
    (12633, 'Paul', 'Zoom_05', 'Science'),
    (12633, 'Paul', 'Zoom_05', 'P.E.'),
    (12633, 'Paul', 'Zoom_05', 'I.T.');
GO

SELECT * FROM nc_classroom;
GO

CREATE TABLE nc_classroom2NF
( 
    student_no INT PRIMARY KEY,                   
    mentor VARCHAR(25),              
    classroom VARCHAR(25)      
);
GO

INSERT INTO nc_classroom2NF (student_no, mentor, classroom)
VALUES
    (10456, 'Rose', 'Zoom_12'),
    (10839, 'Haz', 'Zoom_08'),
    (10931, 'Jim', 'Zoom_03'),
    (11525, 'Liam', 'Zoom_15'),
    (12633, 'Paul', 'Zoom_05')
GO

SELECT * FROM nc_classroom2NF;

CREATE TABLE subjects2NF
( 
    student_no INT,                   
    subject VARCHAR(25),
    PRIMARY KEY (student_no, subject)
);
GO

INSERT INTO subjects2NF (student_no, subject)
VALUES
    (10456, 'Maths'),
    (10456, 'Science'),
    (10456, 'English'),
    (10839, 'English'),
    (10839, 'Art'),
    (10839, 'P.E.'),
    (10931, 'Music'),
    (10931, 'French'),
    (10931, 'Business'),
    (11525, 'I.T.'),
    (11525, 'Art'),
    (12633, 'Science'),
    (12633, 'P.E.'),
    (12633, 'I.T.');
GO

SELECT * FROM subjects2NF;