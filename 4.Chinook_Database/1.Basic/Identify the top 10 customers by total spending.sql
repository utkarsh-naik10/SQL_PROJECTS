/*
Identify the top 10 customers by total spending.
*/

SELECT
inv.CustomerId,
CONCAT(cus.FirstName,' ',LastName) AS Full_Name,
SUM(inv.Total) AS Total_Value
FROM Invoice AS inv 
JOIN Customer AS cus ON inv.CustomerId=cus.CustomerId
GROUP BY inv.CustomerId, Full_Name
ORDER BY Total_Value DESC
LIMIT 10