#Most expensive vs most sold track comparison

with abc as(
SELECT
    tr.Name AS Track_Name,
    SUM(inv.Total) AS total_Revenue,
    COUNT(*) AS Count_Sold
FROM Invoice AS inv
LEFT JOIN InvoiceLine AS invl
    ON inv.InvoiceId=invl.InvoiceId
LEFT JOIN Track AS tr
    ON invl.TrackId=tr.TrackId
GROUP BY Track_Name
ORDER BY total_Revenue DESC
)
SELECT
    abc.*,
    ROUND(total_Revenue/Count_Sold,2) AS avg_cost
FROM abc