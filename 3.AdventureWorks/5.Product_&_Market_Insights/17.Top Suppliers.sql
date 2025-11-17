/*
Top Suppliers
Find vendors that supplied products leading to the highest total revenue in sales.
*/
WITH VendorProductSales AS (
    SELECT
        v.BusinessEntityID AS VendorID,
        v.Name AS VendorName,
        SUM(sod.LineTotal) AS TotalRevenue
    FROM Purchasing.Vendor AS v
    JOIN Purchasing.ProductVendor AS pv
        ON v.BusinessEntityID = pv.BusinessEntityID
    JOIN Production.Product AS p
        ON pv.ProductID = p.ProductID
    JOIN Sales.SalesOrderDetail AS sod
        ON p.ProductID = sod.ProductID
    GROUP BY v.BusinessEntityID, v.Name
)
SELECT
    VendorID,
    VendorName,
    CAST(TotalRevenue AS DECIMAL(18,2)) AS TotalRevenue
FROM VendorProductSales
ORDER BY TotalRevenue DESC;

