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

CREATE TABLE nc_rentals
( 
    full_name VARCHAR(255) PRIMARY KEY,   
    title VARCHAR(50),                    
    preferred_name VARCHAR(255),          
    address VARCHAR(255),                 
    movies_rented VARCHAR(255)            
);
GO

INSERT INTO nc_rentals (full_name, title, preferred_name, address, movies_rented)
VALUES
('Natasha Romanoff', 'Ms', 'Black Widow', 'Soul Stone', 'Her, Lucy, Ghost in the Shell'),
('Tony Stark', 'Mr', 'Ironman', 'Stark Tower', 'Sherlock Holmes'),
('Steve Rogers', 'Mr', 'Captain America', 'Iceburg', 'The Gray Man, Knives Out'),
('Wanda Maximoff', 'Ms', 'Scarlet Witch', 'Asylum', 'Wind River, Wandavision'),
('Thor Odinson', 'Mr', 'Thor', 'New Asgard', 'Men In Black, Extraction'),
('Bruce Banner', 'Mr', 'Hulk', 'Champion''s Quarters', 'Shutter Island, Begin Again, Dark Waters');
GO
CREATE TABLE nc_rentals1NF
( 
    full_name VARCHAR(25),   
    title VARCHAR(30),                    
    preferred_name VARCHAR(25),          
    address VARCHAR(25),                 
    movies_rented VARCHAR(25),
    PRIMARY KEY (full_name, movies_rented)      
);
GO

INSERT INTO nc_rentals1NF (full_name, title, preferred_name, address, movies_rented)
VALUES
('Natasha Romanoff', 'Ms', 'Black Widow', 'Soul Stone', 'Her'),
('Natasha Romanoff', 'Ms', 'Black Widow', 'Soul Stone', 'Lucy'),
('Natasha Romanoff', 'Ms', 'Black Widow', 'Soul Stone', 'Ghost in the Shell'),
('Tony Stark', 'Mr', 'Ironman', 'Stark Tower', 'Sherlock Holmes'),
('Steve Rogers', 'Mr', 'Captain America', 'Iceburg', 'The Gray Man'),
('Steve Rogers', 'Mr', 'Captain America', 'Iceburg', 'Knives Out'),
('Wanda Maximoff', 'Ms', 'Scarlet Witch', 'Asylum', 'Wind River'),
('Wanda Maximoff', 'Ms', 'Scarlet Witch', 'Asylum', 'Wandavision'),
('Thor Odinson', 'Mr', 'Thor', 'New Asgard', 'Men In Black'),
('Thor Odinson', 'Mr', 'Thor', 'New Asgard', 'Extraction'),
('Bruce Banner', 'Mr', 'Hulk', 'Champion''s Quarters', 'Shutter Island'),
('Bruce Banner', 'Mr', 'Hulk', 'Champion''s Quarters', 'Begin Again'),
('Bruce Banner', 'Mr', 'Hulk', 'Champion''s Quarters', 'Dark Waters');

GO

SELECT * FROM nc_rentals1NF;
GO
