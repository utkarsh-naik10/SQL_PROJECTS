#Top 20 tracks by revenue

SELECT
    tr.TrackId AS Track_id,
    tr.Name AS Track_Name,
    SUM(Total) AS Total_Revenue
FROM Invoice AS inv
LEFT JOIN InvoiceLine AS invl
    ON inv.InvoiceId=invl.InvoiceId
LEFT JOIN Track AS tr
    ON invl.TrackId=tr.TrackId
GROUP BY Track_id,Track_Name
ORDER BY Total_Revenue DESC
LIMIT 20