-- i used data from day 3 challenge
SELECT * 
FROM clients;


-- create CTE to select clients from Boxing sports
WITH boxing_clients AS ( 
	SELECT * 
	FROM clients
	WHERE sport = 'Boxing')
SELECT * 
FROM boxing_clients;


-- create CTE to select clients that paying fee of more than 60k
WITH fee60k_clients AS (
	SELECT * 
	FROM clients
	WHERE fees > 60000.00
)
SELECT *
FROM fee60k_clients;
