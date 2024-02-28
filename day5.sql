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

-- Perform multiplication by calculate revenue
-- selling_price * quanity

SELECT product_name, selling_price, quantity,
		(selling_price * quantity) as revenue,
		(purchasing_price * quantity) as cost
FROM products;

-- perform substraction by calculate profit
--for each product
SELECT product_name,
		(selling_price - purchasing_price) * quantity as profit
FROM products;

-- perform addition by calculate total profit
SELECT ROUND(SUM(selling_price * quantity), 2) as total_revenue
FROM products;


--perform division by calculate profit to revenue ratio
SELECT product_name,
	ROUND(((selling_price - purchasing_price) * quantity) / (selling_price * quantity), 2) as profit_to_revenue_ratio
FROM products;