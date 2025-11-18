/*
Compute customer lifetime value (CLTV) using all their purchases.
*/

SELECT
    inv.CustomerId AS Customer_Id,
    CONCAT(cst.FirstName,' ',cst.LastName) AS Full_Name,
    SUM(inv.Total) AS Customer_Lifetime_Value
FROM Invoice AS inv
LEFT JOIN Customer AS cst
    ON inv.CustomerId=cst.CustomerId
GROUP BY inv.CustomerId


