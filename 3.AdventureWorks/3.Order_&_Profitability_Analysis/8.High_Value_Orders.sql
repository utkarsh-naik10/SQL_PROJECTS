/*High-Value Orders
Find orders where the total order value is in the top 5% percentile of all orders.*/

WITH OrderTotals AS (
    SELECT
        SalesOrderID,
        CustomerID,
        TotalDue
    FROM Sales.SalesOrderHeader
),
RunningTotal AS (
    SELECT
        SalesOrderID,
        CustomerID,
        TotalDue,
        SUM(TotalDue) OVER () AS TotalSales,
        SUM(TotalDue) OVER (ORDER BY TotalDue DESC) AS RunningSales
    FROM OrderTotals
)
SELECT
    SalesOrderID,
    CustomerID,
    TotalDue,
    RunningSales,
    TotalSales,
    ROUND(RunningSales / TotalSales, 4) AS CumulativePercent
FROM RunningTotal
WHERE RunningSales <= TotalSales * 0.05
   OR (RunningSales - TotalDue) < TotalSales * 0.05
ORDER BY TotalDue DESC;





