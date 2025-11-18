#Country with most unique customers
SELECT 
    RANK() OVER(ORDER BY COUNT(DISTINCT CustomerId) DESC) AS Unique_Rank,
    Country,
    COUNT(DISTINCT CustomerId) as Unique_Customers
FROM Customer
GROUP BY Country
ORDER BY Unique_Customers DESC
