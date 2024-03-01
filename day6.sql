-- filtering data with SQL's Between operator
-- create products table
CREATE TABLE products ( 
	product_id INT PRIMARY KEY,
	product_name VARCHAR (50),
	purchasing_price DECIMAL (10,2),
	selling_price DECIMAL (10,2),
	quantity INT
);

--DROP TABLE IF EXISTS products;

--Populate products table
INSERT INTO products (product_id, product_name, purchasing_price, selling_price, quantity) 
VALUES (1, 'Samsung galaxy',200.00, 259.99, 20),
		(2, 'Google Pixel',289.50, 369.50, 40),
		(3, 'Iphone Max', 350.99, 490.99, 15),
		(4, 'Nokia',80.99, 99.99, 60),
		(5, 'Oppo',65.25, 75.75, 80),
		(6, 'Itel',56.50, 65.50, 90),
		(7, 'LG',79.99, 149.99, 25);

-- query products table to see data
SELECT product_id, product_name, purchasing_price, selling_price, quantity
FROM products;

-- from our products table we can filter selling price by using
-- BETWEEN OPERATOR
SELECT *  
FROM products
WHERE selling_price BETWEEN 300.00 AND 500.00;





