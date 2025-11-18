#Revenue by billing country
SELECT 
    RANK() OVER(ORDER BY SUM(Total) DESC) Sales_Rank,    
    BillingCountry AS Country,
    SUM(Total) AS total_Sale
FROM Invoice
GROUP BY Country