-- create sales_firm table
CREATE TABLE firm_sales ( 
	product_id SERIAL PRIMARY KEY,
	sale_date DATE,
	revenue DECIMAL (10,2)
);

DROP TABLE IF EXISTS sales_firm;

-- populate sales_firm table
INSERT INTO firm_sales (product_id, sale_date, revenue) 
VALUES	(1, '2000-02-01', 1000.00),
		(2, '2000-02-02', 750.25),
		(3, '2000-02-03', 890.75),
		(4, '2000-02-04', 250.50),
		(5, '2000-02-05', 450.91),
		(6, '2000-02-06', 920.09),
		(7, '2000-02-06', 620.91),
		(8, '2000-02-06', 880.00),
		(9, '2000-02-06', 500.00),
		(10, '2000-02-06', 520.00);
			
			
-- find total revenue and average revenue
SELECT product_id,
		SUM(revenue) as total_revenue,
		(SELECT AVG(revenue) FROM sales_firm) as avg_revenue
FROM sales_firm
GROUP BY product_id;

-- find product with above average revenue
SELECT product_id,
		sale_date,
		revenue
FROM sale_firm
WHERE revenue > (SELECT AVG(revenue) FROM sales_firm);




