/*
Determine which tracks have been sold just once.
*/

SELECT 
    trc.TrackId AS track_id,
    trc.Name AS track_name,
    count(inv.Total) AS total_count
FROM Invoice AS inv
LEFT JOIN InvoiceLine AS invl
    ON inv.InvoiceId=invl.InvoiceId
LEFT JOIN Track AS trc
    ON invl.TrackId=trc.TrackId
GROUP BY track_id,track_name
HAVING total_count =1
