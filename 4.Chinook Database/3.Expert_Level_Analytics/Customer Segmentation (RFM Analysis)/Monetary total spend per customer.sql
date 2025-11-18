#Monetary: total spend per customer

SELECT
    inv.CustomerId AS Customer_Id,
    CONCAT(cus.FirstName,' ',cus.LastName) AS Full_name,
    SUM(inv.Total) AS Total_Spend
FROM Invoice AS inv
LEFT JOIN Customer AS cus
    ON inv.CustomerId=cus.CustomerId
GROUP BY Customer_Id,Full_name