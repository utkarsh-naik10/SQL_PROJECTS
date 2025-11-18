#Find average track revenue for each genre

SELECT    
    gen.Name AS Genre,
    AVG(trc.UnitPrice) AS average
FROM Invoice AS inv
LEFT JOIN InvoiceLine AS invl
    ON inv.InvoiceId=invl.InvoiceId
LEFT JOIN Track AS trc
    ON invl.TrackId=trc.TrackId
LEFT JOIN Genre AS gen
    ON trc.GenreId=gen.GenreId
GROUP BY Genre
ORDER BY average DESC