-- indexing table to increase performance
CREATE TABLE coffee_shop (
	transaction_id BIGINT,
	transaction_date DATE,
	transaction_time TIME,
	transaction_qty INT,
	store_id INT,
	store_location varchar(60),
	product_id INT,
	unit_price DECIMAL (5,2),
	product_category varchar(50),
	product_type varchar(150),
	product_detail varchar(150),
	CONSTRAINT transaction_id_key PRIMARY KEY (transaction_id)
);

COPY coffee_shop
FROM 'E:\ISSA MNZAVA\SQL\Maven_analytics\Cofee_shop\Coffee+Shop+Sales\Coffee Shop Sales.csv'
WITH (FORMAT CSV, HEADER);

EXPLAIN ANALYZE SELECT * FROM new_york_address
WHERE product_category = 'Coffee';

EXPLAIN ANALYZE SELECT * FROM new_york_address
WHERE product_category = 'Tea';

EXPLAIN ANALYZE SELECT * FROM new_york_address
WHERE product_category = 'Bakery';