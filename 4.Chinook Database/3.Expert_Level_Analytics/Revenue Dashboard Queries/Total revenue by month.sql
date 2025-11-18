#Total revenue by month
SELECT
    strftime('%m',InvoiceDate) AS Month_,
    SUM(Total) AS Total_Revenue
FROM Invoice
GROUP BY Month_