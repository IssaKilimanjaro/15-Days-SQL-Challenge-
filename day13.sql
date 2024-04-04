-- query the clients table to see all data
SELECT *
FROM clients;

-- create fees category from Low, Medium and High
-- from the clients table by using CASE
SELECT client_name,
		fees,
	CASE
		WHEN fees < 50000 THEN 'Low'
		WHEN fees >= 50000 AND fees <= 100000 THEN 'Medium'
		ELSE 'High'
	END AS Fees_Category
FROM clients;

-- perform aggregation by using  CASE

SELECT 
	CASE
		WHEN sport = 'Football' THEN 'Football'
		WHEN sport = 'Basketball' THEN 'Basketball'
		WHEN sport = 'Boxing' THEN 'Boxing'
	END AS sport_category,
	SUM(fees) AS total_fees_by_sport
FROM
	clients
WHERE 
	sport IN ('Boxing', 'Football', 'Basketball')
GROUP BY 
	sport_category;

-- to filter data by extract only maximum fee
-- from each category in sport
SELECT 
	client_id,
	client_name,
	sport,
	fees
FROM clients
WHERE 
	sport IN ('Boxing', 'Football', 'Basketball')
AND 
	fees = (
		CASE sport
			WHEN 'Boxing' THEN (SELECT MAX(fees) FROM clients WHERE sport = 'Boxing')
			WHEN 'Football' THEN (SELECT MAX(fees) FROM clients WHERE sport = 'Football')
			WHEN 'Basketball' THEN (SELECT MAX(fees) FROM clients WHERE sport = 'Basketball')
		END
	);
	