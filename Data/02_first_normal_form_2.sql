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

CREATE TABLE nc_mentors
( 
    employee_id INT PRIMARY KEY,
    mentor_name VARCHAR(255),   
    department VARCHAR(255),    
    location VARCHAR(255)       
);
GO

INSERT INTO nc_mentors (employee_id, mentor_name, department, location)
VALUES
    (1, 'Rose', 'Software', 'Manchester'),
    (2, 'Eli', 'Software, Data', 'Manchester'),
    (3, 'Haz', 'Cloud, Data', 'Manchester'),
    (4, 'Jim', 'Software', 'Leeds'),
    (5, 'John', 'Cloud', 'Manchester'),
    (6, 'Edd', 'Data, Software, Cloud', 'Leeds');
GO

SELECT * FROM nc_mentors;
GO
