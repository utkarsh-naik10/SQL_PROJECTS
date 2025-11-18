/*
Identify the most frequently purchased track across all invoices.
*/

SELECT
    trc.TrackId AS Track_Id,
    trc.Name AS Track_Name,
    COUNT(*) AS Total_Count
FROM Invoice AS inv
LEFT JOIN InvoiceLine AS invl
    ON inv.InvoiceId=invl.InvoiceId
LEFT JOIN Track AS trc
    ON invl.TrackId=trc.TrackId
GROUP BY Track_Id,Track_Name
ORDER BY Total_Count DESC