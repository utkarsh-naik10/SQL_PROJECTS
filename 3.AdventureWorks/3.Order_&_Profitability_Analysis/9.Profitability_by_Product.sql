/*
Profitability by Product
For each product, calculate:
Total revenue
Total cost (Product.StandardCost)
Total profit
Sort by profit (highest first).
*/


SELECT
    p.ProductID,
    p.Name,
    ROUND(SUM(sod.LineTotal), 2) AS TotalRevenue,
    ROUND(SUM(sod.OrderQty * p.StandardCost), 2) AS TotalCost,
    ROUND(SUM(sod.LineTotal) - SUM(sod.OrderQty * p.StandardCost), 2) AS TotalProfit
FROM Production.Product AS p
JOIN Sales.SalesOrderDetail AS sod
    ON p.ProductID = sod.ProductID
GROUP BY p.ProductID, p.Name
ORDER BY TotalProfit DESC;