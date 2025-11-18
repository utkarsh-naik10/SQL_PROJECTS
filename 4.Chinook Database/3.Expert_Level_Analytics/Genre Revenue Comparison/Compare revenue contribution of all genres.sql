#Compare revenue contribution of all genres
SELECT
    gen.Name AS Genre,
    SUM(inv.Total) AS Sum_Total,
    ROUND((COUNT(*) * 100.0) / SUM(COUNT(*)) OVER (),2) AS PercentageOfTotal
FROM Invoice AS inv
LEFT JOIN InvoiceLine AS invl
    ON inv.InvoiceId=invl.InvoiceId
LEFT JOIN Track AS trc
    ON invl.TrackId=trc.TrackId
LEFT JOIN Genre AS gen
    ON trc.GenreId=gen.GenreId
GROUP BY Genre
ORDER BY PercentageOfTotal DESC