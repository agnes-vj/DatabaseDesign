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

CREATE TABLE nc_students
(
    student_id INT PRIMARY KEY,          
    student_name VARCHAR(255)            
);
GO

CREATE TABLE subjects
(
    subject_id INT IDENTITY(1,1) PRIMARY KEY,  
    subject_name VARCHAR(255)                  
);
GO

CREATE TABLE exam_results
(
    score_id INT PRIMARY KEY,                  
    student_id INT,                            
    subject_id INT,                            
    score INT,                                 
    teacher VARCHAR(255),                      
    FOREIGN KEY (student_id) REFERENCES nc_students(student_id),   
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)       
);
GO

INSERT INTO nc_students (student_id, student_name)
VALUES
(30058, 'Alex'),
(40254, 'Simon'),
(50183, 'Kyle'),
(60825, 'Danika');
GO

INSERT INTO subjects (subject_name)
VALUES
('History'),
('Maths'),
('Science'),
('Geography'),
('Business');
GO

INSERT INTO exam_results (score_id, student_id, subject_id, score, teacher)
VALUES
(1, 30058, 1, 75, 'Prof Mulvey'),
(2, 30058, 2, 82, 'Prof Copley'),
(3, 40254, 3, 76, 'Prof Baines'),
(4, 40254, 4, 99, 'Prof Aldred'),
(5, 40254, 2, 88, 'Prof Copley'),
(6, 50183, 1, 83, 'Prof Mulvey'),
(7, 50183, 5, 86, 'Prof Crawley'),
(8, 60825, 3, 93, 'Prof Baines');
GO

SELECT * FROM nc_students;
GO

SELECT * FROM subjects;
GO

SELECT * FROM exam_results;
GO
