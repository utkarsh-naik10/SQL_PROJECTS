#Recency: last purchase date per customer
SELECT
    inv.CustomerId AS Customer_Id,
    CONCAT(cus.FirstName,' ',cus.LastName) AS Full_Name,
    STRFTIME('%d-%m-%Y', inv.InvoiceDate) AS Last_Purchase_Date
FROM Invoice AS inv
LEFT JOIN Customer AS cus
    ON inv.CustomerId=cus.CustomerId
GROUP BY Customer_Id,Full_Name
HAVING MAX(Last_Purchase_Date)