/*
List the top 5 genres by total revenue.
*/

SELECT
    RANK() OVER(ORDER BY SUM(Invoice.Total) DESC) AS Rank_,
    Genre.Name AS Genre_Name,
    SUM(Invoice.Total) AS Total_Sale
FROM
    Invoice
LEFT JOIN InvoiceLine 
    ON InvoiceLine.InvoiceId=InvoiceLine.InvoiceId
LEFT JOIN Track 
    ON InvoiceLine.TrackId=Track.TrackId
LEFT JOIN Genre 
    ON Track.GenreId=Genre.GenreId
GROUP BY Genre_Name
LIMIT 5
