#Total revenue by year
SELECT
    strftime('%Y',InvoiceDate) AS Year_,
    SUM(Total) AS Total_Revenue
FROM Invoice
GROUP BY Year_