/*Sales Trend Analysis
Show year-over-year growth percentage in total sales, grouped by territory.*/

WITH YearlyRevenue AS (
SELECT
    YEAR(OrderDate) AS Year,
    ROUND(SUM(TotalDue),2) AS TotalRevenue
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
)
SELECT Year,
    TotalRevenue,
    LAG(TotalRevenue) OVER(ORDER BY Year) AS PrevYearRev,
    ROUND(CASE 
        WHEN LAG(TotalRevenue) OVER(ORDER BY Year) = 0 THEN NULL  
        ELSE  ((TotalRevenue-LAG(TotalRevenue) OVER(ORDER BY Year))/LAG(TotalRevenue) OVER(ORDER BY Year))*100
    END,2) AS YoY_Rev
FROM YearlyRevenue
ORDER BY Year