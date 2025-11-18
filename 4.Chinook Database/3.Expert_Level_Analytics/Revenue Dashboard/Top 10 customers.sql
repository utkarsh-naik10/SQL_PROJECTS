#Top 10 customers
SELECT
    inv.CustomerId AS Customer_Id,
    CONCAT(cus.FirstName,' ',cus.LastName) AS Full_Name,
    SUM(Total) AS Toal_Value
FROM Invoice AS inv
LEFT JOIN Customer AS cus
    ON inv.CustomerId=cus.CustomerID
GROUP BY Customer_Id,Full_Name
ORDER BY Toal_Value DESC
LIMIT 10