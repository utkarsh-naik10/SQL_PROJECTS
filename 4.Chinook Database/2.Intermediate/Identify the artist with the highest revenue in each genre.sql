/*
Identify the artist with the highest revenue in each genre.
*/
with abc AS (
SELECT
    gen.Name AS Genre_Name,
    art.Name AS Artist_Name,
    SUM(inv.Total) AS Total_Sale,
    RANK() OVER(PARTITION BY gen.Name ORDER BY SUM(inv.Total) DESC) AS rank_
FROM Invoice inv
LEFT JOIN InvoiceLine AS al 
    ON inv.InvoiceId=al.InvoiceId
LEFT JOIN Track AS tr
    ON al.TrackId=tr.TrackId
LEFT JOIN Genre AS gen
    ON tr.GenreId=gen.GenreId
LEFT JOIN Album AS alb
    ON tr.AlbumId=alb.AlbumId
LEFT JOIN Artist AS art 
    ON alb.ArtistId=art.ArtistId
GROUP BY Genre_Name,Artist_Name
)
SELECT 
    Genre_Name,
    Artist_Name,
    Total_Sale
FROM abc
WHERE rank_ = 1
ORDER BY Total_Sale DESC