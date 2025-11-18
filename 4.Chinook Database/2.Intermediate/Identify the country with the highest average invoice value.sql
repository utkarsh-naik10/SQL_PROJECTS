/*
Identify the country with the highest average invoice value.
*/

SELECT 
    BillingCountry AS Country,
    SUM(Total) AS Total_Value
FROM Invoice
GROUP BY Country
ORDER BY Total_Value DESC