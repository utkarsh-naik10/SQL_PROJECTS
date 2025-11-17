/*
Determine the average invoice amount per customer
*/

SELECT 
    Invoice.CustomerId AS Cust_Id,
    CONCAT(Customer.FirstName,' ',Customer.LastName) AS Full_Name,    
    ROUND(AVG(Invoice.Total),2) AS Avg_Value
FROM Invoice
JOIN Customer ON Invoice.CustomerId=Customer.CustomerId
GROUP BY Cust_Id,Full_Name
ORDER BY Avg_Value DESC