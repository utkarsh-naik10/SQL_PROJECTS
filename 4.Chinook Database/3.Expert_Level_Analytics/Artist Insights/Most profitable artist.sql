# Most profitable artist

SELECT 
    RANK() OVER(ORDER BY SUM(inv.Total) DESC) AS Overall_Rank,
    art.Name AS Artist_Name,
    SUM(inv.Total) AS Total_Value    
FROM Invoice AS inv
LEFT JOIN InvoiceLine AS invl
    ON inv.InvoiceId=invl.InvoiceId
LEFT JOIN Track AS trc
    ON invl.TrackId=trc.TrackId
LEFT JOIN Album AS alb
    ON trc.AlbumId=alb.AlbumId
LEFT JOIN Artist AS art
    ON alb.ArtistId=art.ArtistId
GROUP BY Artist_Name
ORDER BY Total_Value DESC