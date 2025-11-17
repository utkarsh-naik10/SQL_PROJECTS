
/*
Show the top 5 selling artists by revenue
*/

SELECT
     Artist.ArtistId AS Artist_id,
     Artist.Name AS Artist_Name,
    ROUND(SUM(InvoiceLine.UnitPrice * InvoiceLine.Quantity), 2) AS TotalRevenue
FROM InvoiceLine
LEFT JOIN Track ON InvoiceLine.TrackId=Track.TrackId
LEFT JOIN Album ON Track.AlbumId=Album.AlbumId
LEFT JOIN Artist ON Album.ArtistId=Artist.ArtistId
GROUP BY Artist_id,Artist_Name
ORDER BY TotalRevenue DESC 