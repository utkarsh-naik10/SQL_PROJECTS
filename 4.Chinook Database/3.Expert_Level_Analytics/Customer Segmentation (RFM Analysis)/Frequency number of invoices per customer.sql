#Frequency: number of invoices per customer
SELECT
    inv.CustomerId AS Customer_Id,
    CONCAT(cus.FirstName,' ',cus.LastName) AS Full_name,
    COUNT(*) AS Order_Count
FROM Invoice AS inv
LEFT JOIN Customer AS cus
    ON inv.CustomerId=cus.CustomerId
GROUP BY Customer_Id,Full_name