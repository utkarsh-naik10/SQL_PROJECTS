#Find revenue per album

SELECT
    alb.AlbumId AS Album_Id,
    alb.Title AS Album_Name,
    SUM(Total) AS Total_Value    
FROM Invoice AS inv
LEFT JOIN InvoiceLine AS invl
    ON inv.InvoiceId=invl.InvoiceId
LEFT JOIN Track AS tr
    ON invl.TrackId=tr.TrackId
LEFT JOIN Album AS alb
    ON tr.AlbumId=alb.AlbumId
GROUP BY Album_Id,Album_Name
ORDER BY Total_Value DESC