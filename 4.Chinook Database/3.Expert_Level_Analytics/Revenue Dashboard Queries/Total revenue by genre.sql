#Total revenue by genre
SELECT
    gen.Name AS Genre,
    SUM(inv.Total) AS Total_Value
FROM Invoice AS inv
LEFT JOIN InvoiceLine AS invl
    ON inv.InvoiceId=invl.InvoiceId
LEFT JOIN Track as tr
    ON invl.TrackId=tr.TrackId
LEFT JOIN Genre as gen
    ON tr.GenreId=gen.GenreId
GROUP BY Genre
ORDER BY Total_Value DESC
