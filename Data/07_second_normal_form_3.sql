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

CREATE TABLE nc_vegetables
( 
    product_id INT,                
    vegetable VARCHAR(255),        
    colour VARCHAR(50),            
    size VARCHAR(50),              
    price FLOAT                    
);
GO

INSERT INTO nc_vegetables (product_id, vegetable, colour, size, price)
VALUES
(1, 'Peppers', 'Red', 'Medium', 0.80),
(2, 'Peppers', 'Green', 'Medium', 0.80),
(3, 'Peppers', 'Yellow', 'Medium', 0.80),
(4, 'Onions', 'Red', 'Small', 0.50),
(5, 'Onions', 'Brown', 'Medium', 0.80),
(6, 'Onions', 'Brown', 'Large', 1.20),
(7, 'Tomatoes', 'Red', 'Medium', 0.80),
(8, 'Tomatoes', 'Green', 'Medium', 0.60),
(9, 'Tomatoes', 'Yellow', 'Small', 0.30);
GO

SELECT * FROM nc_vegetables;
GO
