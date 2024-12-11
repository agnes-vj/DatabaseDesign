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

CREATE TABLE nc_restaurant_staff
( 
    employee_no VARCHAR(50),            
    full_name VARCHAR(255),             
    job_code VARCHAR(50),               
    job_title VARCHAR(255),             
    employment VARCHAR(50)              
);
GO

INSERT INTO nc_restaurant_staff (employee_no, full_name, job_code, job_title, employment)
	VALUES
	('NC0001', 'Gordon Ramsay', 'J001', 'Head Chef', 'Full-time'),
	('NC0002', 'Jamie Oliver', 'J004', 'Waiter', 'Part-time'),
	('NC0003', 'Rachael Ray', 'J002', 'Chef', 'Full-time'),
	('NC0004', 'Wolfgang Puck', 'J003', 'Bartender', 'Full-time'),
	('NC0005', 'Giada De Laurentiis', 'J004', 'Waiter', 'Full-time'),
	('NC0006', 'Alan Ducasse', 'J004', 'Waiter', 'Part-time'),
	('NC0007', 'Anne Burrell', 'J002', 'Chef', 'Full-time'),
	('NC0008', 'David Chang', 'J002', 'Chef', 'Part-time'),
	('NC0009', 'Guy Fieri', 'J003', 'Bartender', 'Part-time');
GO
CREATE TABLE nc_restaurant_staff3NF
( 
    employee_no VARCHAR(20) PRIMARY KEY,            
    full_name VARCHAR(25),             
    job_code VARCHAR(15), 
    employment VARCHAR(20)              
);
GO
CREATE TABLE nc_restaurant_job
( 
    job_code VARCHAR(15) PRIMARY KEY,               
    job_title VARCHAR(25) 
);
GO
INSERT INTO nc_restaurant_staff3NF (employee_no, full_name, job_code, employment)
	VALUES
	('NC0001', 'Gordon Ramsay', 'J001', 'Full-time'),
	('NC0002', 'Jamie Oliver', 'J004', 'Part-time'),
	('NC0003', 'Rachael Ray', 'J002', 'Full-time'),
	('NC0004', 'Wolfgang Puck', 'J003', 'Full-time'),
	('NC0005', 'Giada De Laurentiis', 'J004', 'Full-time'),
	('NC0006', 'Alan Ducasse', 'J004',  'Part-time'),
	('NC0007', 'Anne Burrell', 'J002','Full-time'),
	('NC0008', 'David Chang', 'J002', 'Part-time'),
	('NC0009', 'Guy Fieri', 'J003', 'Part-time');
GO

INSERT INTO nc_restaurant_job (job_code, job_title)
	VALUES
	('J001', 'Head Chef'),
	('J002', 'Chef'),	
	('J003', 'Bartender'),
	('J004', 'Waiter');


GO

SELECT * FROM nc_restaurant_staff3NF;
SELECT * FROM nc_restaurant_job;


GO
