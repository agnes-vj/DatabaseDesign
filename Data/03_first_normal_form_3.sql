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

CREATE TABLE food_orders
( 
    customer_name VARCHAR(255) PRIMARY KEY, 
    food_order VARCHAR(255),                
    restaurant VARCHAR(255),                
    preference VARCHAR(255)                 
);
GO

INSERT INTO food_orders (customer_name, food_order, restaurant, preference)
VALUES
    ('Jack', 'Cheeseburger, Fries, Tango', 'McDonald''s', 'Takeaway'),
    ('Henry', 'McNuggets, Fries, Coke, Apple Pie', 'McDonald''s', 'Dine-in'),
    ('Jennifer', 'Meatball Sub, Crisps, Oasis', 'Subway', 'Dine-in'),
    ('Tim', 'Wings, Sprite', 'KFC', 'Takeaway'),
    ('Hannah', 'Steak & Cheese Sub, Cookie, Fanta', 'Subway', 'Takeaway'),
    ('Steph', 'Zinger Burger, Fries, Oreo Krushem', 'KFC', 'Takeaway');
GO

SELECT * FROM food_orders;
GO
