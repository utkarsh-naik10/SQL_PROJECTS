#Total revenue by artist
SELECT
    art.Name AS Artist_Name,
    SUM(inv.Total) AS Total_Revenue    
FROM Invoice AS inv
LEFT JOIN InvoiceLine AS invl
    ON inv.InvoiceId=invl.InvoiceId
LEFT JOIN Track as tr
    ON invl.TrackId=tr.TrackId
LEFT JOIN Album AS alb
    ON tr.AlbumId=alb.AlbumId
LEFT JOIN Artist AS art
    ON alb.ArtistId=art.ArtistId
GROUP BY Artist_Name
ORDER BY Total_Revenue DESC