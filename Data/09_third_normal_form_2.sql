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

CREATE TABLE products
( 
    product_id INT IDENTITY(1,1) PRIMARY KEY,  
    vegetable VARCHAR(255)                     
);
GO

INSERT INTO products (vegetable)
VALUES
    ('Peppers'),
    ('Onions'),
    ('Tomatoes');
GO

CREATE TABLE nc_vegetables_data
( 
    entry_id INT IDENTITY(1,1) PRIMARY KEY,    
    product_id INT REFERENCES products(product_id), 
    colour VARCHAR(50),                        
    size VARCHAR(50),                          
    price FLOAT                                
);
GO

INSERT INTO nc_vegetables_data (product_id, colour, size, price)
VALUES
    (1, 'Red', 'Medium', 0.80),
    (1, 'Green', 'Medium', 0.80),
    (1, 'Yellow', 'Medium', 0.80),
    (2, 'Red', 'Small', 0.50),
    (2, 'Brown', 'Medium', 0.80),
    (2, 'Brown', 'Large', 1.20),
    (3, 'Red', 'Medium', 0.80),
    (3, 'Green', 'Medium', 0.60),
    (3, 'Yellow', 'Small', 0.30);
GO

SELECT * FROM products;
GO

SELECT * FROM nc_vegetables_data;
GO
