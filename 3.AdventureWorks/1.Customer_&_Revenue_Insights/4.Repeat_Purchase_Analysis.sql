/*Repeat Purchase Analysis
Find customers who placed at least 3 repeat purchases of the same product across different orders.*/


WITH abc AS (
    SELECT
        sod.ProductID,
        soh.CustomerID,
        CONCAT(pp.FirstName, ' ', pp.LastName) AS Full_Name,
        COUNT(DISTINCT soh.SalesOrderID) AS Total_Count
    FROM Sales.SalesOrderDetail AS sod
    JOIN Sales.SalesOrderHeader AS soh
        ON sod.SalesOrderID = soh.SalesOrderID
    LEFT JOIN Person.Person AS pp
        ON soh.CustomerID = pp.BusinessEntityID
    GROUP BY
        sod.ProductID,
        soh.CustomerID,
        CONCAT(pp.FirstName, ' ', pp.LastName)
)
SELECT *
FROM abc
WHERE Total_Count >= 3
ORDER BY Total_Count DESC;




