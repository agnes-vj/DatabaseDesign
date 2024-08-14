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

CREATE TABLE job_codes
(
    job_code VARCHAR(50) PRIMARY KEY,      
    job_title VARCHAR(255)                 
);
GO


INSERT INTO job_codes (job_code, job_title)
VALUES
    ('J001', 'Head Chef'),
    ('J002', 'Chef'),
    ('J003', 'Bartender'),
    ('J004', 'Waiter');
GO


CREATE TABLE employments
(
    employment_id INT IDENTITY(1,1) PRIMARY KEY,  
    employment_type VARCHAR(50) UNIQUE            
);
GO

INSERT INTO employments (employment_type)
VALUES
    ('Full-time'),
    ('Part-time');
GO

CREATE TABLE nc_restaurant_employees
( 
    employee_no VARCHAR(50) PRIMARY KEY,               
    full_name VARCHAR(255),                            
    job_code VARCHAR(50) REFERENCES job_codes(job_code),  
    employment_id INT REFERENCES employments(employment_id),  
    customer_facing_role BIT NOT NULL                 -- BIT type for Boolean
);
GO

INSERT INTO nc_restaurant_employees (employee_no, full_name, job_code, employment_id, customer_facing_role)
VALUES
    ('NC0001', 'Gordon Ramsay', 'J001', 1, 0),  -- FALSE is represented as 0
    ('NC0002', 'Jamie Oliver', 'J004', 2, 1),  -- TRUE is represented as 1
    ('NC0003', 'Rachael Ray', 'J002', 1, 0),
    ('NC0004', 'Wolfgang Puck', 'J003', 1, 1),
    ('NC0005', 'Giada De Laurentiis', 'J004', 1, 1),
    ('NC0006', 'Alan Ducasse', 'J004', 2, 1),
    ('NC0007', 'Anne Burrell', 'J002', 1, 0),
    ('NC0008', 'David Chang', 'J002', 2, 0),
    ('NC0009', 'Guy Fieri', 'J003', 2, 1);
GO

SELECT * FROM job_codes;
GO

SELECT * FROM employments;
GO

SELECT * FROM nc_restaurant_employees;
GO
