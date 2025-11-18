#Tracks that appear most frequently in invoices

SELECT
    tr.TrackId AS Track_id,
    tr.Name AS Track_Name,
    COUNT(inv.InvoiceId) AS total_Count
FROM Invoice AS inv
LEFT JOIN InvoiceLine AS invl
    ON inv.InvoiceId=invl.InvoiceId
LEFT JOIN Track AS tr
    ON invl.TrackId=tr.TrackId
GROUP BY Track_id,Track_Name
ORDER BY total_Count DESC