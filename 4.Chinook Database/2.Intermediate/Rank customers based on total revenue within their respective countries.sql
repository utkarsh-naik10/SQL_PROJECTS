/*
Rank customers based on total revenue within their respective countries.
*/

SELECT
    DENSE_RANK() OVER(PARTITION BY inv.BillingCountry ORDER BY SUM(inv.Total) DESC) AS Rank_,
    inv.CustomerId AS Customer_ID,
    CONCAT(cus.FirstName,' ',cus.LastName) AS Full_Name,
    inv.BillingCountry AS Country,
    SUM(inv.Total) AS Total_Sum
FROM Invoice AS inv
LEFT JOIN Customer AS cus 
    ON inv.CustomerId=cus.CustomerId
GROUP BY Customer_ID,Country