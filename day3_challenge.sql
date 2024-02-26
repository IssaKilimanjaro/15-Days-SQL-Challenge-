-- creating clients table
CREATE TABLE clients (
	client_id SERIAL PRIMARY KEY,
	client_name VARCHAR (50), 
	sector VARCHAR(50),
	fees DECIMAL (10, 2)
);

-- Populate clients table
INSERT INTO clients (client_name, sector, fees )
VALUES ('Declan Rice', 'Football', 45000.00),
		('Lebron James', 'Basketball', 120000.00),
		('Shakur Stevenson', 'Boxing', 50000.00),
		('Bukayo Saka', 'Football', 65000.00),
		('Abdullah Mason', 'Boxing', 5000.00),
		('Erling Haaland', 'Football', 80000.00),
		('Xabi Alonso', 'Football', 86000.00),
		('Kyllian Mbappe', 'Football', 115000.00),
		('Feisal Salum', 'Football', 2500.00),
		('Steph Curry', 'Basketball', 118000.00);
		
		
-- query clients table		
select * 
from clients;

-- filtering by using where
SElECT client_name
FROM clients
WHERE sector = 'Boxing';

-- Filter data by using HAVING Clause
SELECT sector, AVG(fees)
FROM clients
GROUP BY sector HAVING AVG(fees) > 50000.00;
