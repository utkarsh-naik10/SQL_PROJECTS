/*
Top Customers by Category
For each product category, find the customer who bought the highest total value of products.
*/

WITH abc AS (
    SELECT
        pc.Name AS CategoryName,
        soh.CustomerID,
        SUM(sod.LineTotal) AS TotalValue
    FROM Sales.SalesOrderHeader AS soh
    JOIN Sales.SalesOrderDetail AS sod
        ON soh.SalesOrderID = sod.SalesOrderID
    JOIN Production.Product AS p
        ON sod.ProductID = p.ProductID
    JOIN Production.ProductSubcategory AS psc
        ON p.ProductSubcategoryID = psc.ProductSubcategoryID
    JOIN Production.ProductCategory AS pc
        ON psc.ProductCategoryID = pc.ProductCategoryID
    GROUP BY pc.Name, soh.CustomerID
),
Ranked AS (
    SELECT
        CategoryName,
        CustomerID,
        TotalValue,
        RANK() OVER (PARTITION BY CategoryName ORDER BY TotalValue DESC) AS RankInCategory
    FROM abc
)
SELECT *
FROM Ranked
WHERE RankInCategory = 1
ORDER BY CategoryName;
