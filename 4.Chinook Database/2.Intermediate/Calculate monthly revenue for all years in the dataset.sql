/*
Calculate monthly revenue for all years in the dataset
*/

SELECT 
    strftime('%m', InvoiceDate) AS Months,
    SUM(Total) AS Total_Sale
FROM Invoice 
GROUP BY Months
ORDER BY Months 