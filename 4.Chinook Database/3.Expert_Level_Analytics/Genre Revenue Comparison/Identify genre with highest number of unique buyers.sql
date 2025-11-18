#Identify genre with highest number of unique buyers

SELECT    
    gen.Name AS Genre,
    COUNT(DISTINCT inv.CustomerId) as Unique_buyers
FROM Invoice AS inv
LEFT JOIN InvoiceLine AS invl
    ON inv.InvoiceId=invl.InvoiceId
LEFT JOIN Track AS trc
    ON invl.TrackId=trc.TrackId
LEFT JOIN Genre AS gen
    ON trc.GenreId=gen.GenreId
GROUP BY Genre
ORDER BY Unique_buyers DESC