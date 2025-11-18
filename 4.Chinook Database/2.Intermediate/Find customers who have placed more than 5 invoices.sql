/*
Find customers who have placed more than 5 invoices.
*/

SELECT
    Invoice.CustomerId AS Customer_Id,
    CONCAT(Customer.FirstName,' ',Customer.LastName) AS Full_Name,
    COUNT(*) AS Count_Invoice
FROM Invoice
JOIN Customer ON Invoice.CustomerId=Customer.CustomerId
GROUP BY Customer_Id,Full_Name
HAVING Count_Invoice > 5