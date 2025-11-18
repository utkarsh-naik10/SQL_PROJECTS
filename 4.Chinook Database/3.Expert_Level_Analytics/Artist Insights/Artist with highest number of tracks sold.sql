#Artist with highest number of tracks sold

SELECT 
    art.Name AS Artist_Name,
    COUNT(trc.TrackId) AS Count_Of_Tracks
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
ORDER BY Count_Of_Tracks DESC