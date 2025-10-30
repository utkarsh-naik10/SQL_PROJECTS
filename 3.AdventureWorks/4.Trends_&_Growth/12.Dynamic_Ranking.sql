/*
Dynamic Ranking
For each year, rank products by total sales. .
*/

WITH ProductYearSales AS (
    SELECT
        YEAR(soh.OrderDate) AS SalesYear,
        sod.ProductID,
        SUM(sod.LineTotal) AS TotalSales
    FROM Sales.SalesOrderHeader AS soh
    JOIN Sales.SalesOrderDetail AS sod
        ON soh.SalesOrderID = sod.SalesOrderID
    GROUP BY YEAR(soh.OrderDate), sod.ProductID
)
SELECT
    pys.SalesYear,
    pys.ProductID,
    p.Name AS ProductName,
    ROUND(pys.TotalSales, 2) AS TotalSales,
    RANK() OVER (PARTITION BY pys.SalesYear ORDER BY pys.TotalSales DESC) AS RankInYear
FROM ProductYearSales AS pys
JOIN Production.Product AS p
    ON pys.ProductID = p.ProductID
ORDER BY pys.SalesYear, RankInYear;


