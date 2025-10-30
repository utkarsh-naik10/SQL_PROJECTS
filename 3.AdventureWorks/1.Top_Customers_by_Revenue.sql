/*Top Customers by Revenue
Find the top 10 customers who generated the most revenue, considering discounts and taxes*/

WITH OrderTotals AS (
    SELECT
        sod.SalesOrderID,
        SUM(sod.OrderQty * sod.UnitPrice * (1.0 - sod.UnitPriceDiscount)) AS OrderLineRevenue
    FROM Sales.SalesOrderDetail AS sod
    GROUP BY sod.SalesOrderID 
)
SELECT TOP 10
    soh.CustomerID,
    COALESCE(CONCAT(pp.FirstName, ' ', pp.LastName), s.Name, 'Unknown') AS FullName,
    ROUND(SUM(ot.OrderLineRevenue) + SUM(ISNULL(soh.TaxAmt,0)) + SUM(ISNULL(soh.Freight,0)), 2) AS Total_Revenues
FROM Sales.SalesOrderHeader AS soh
JOIN OrderTotals AS ot
    ON soh.SalesOrderID = ot.SalesOrderID
JOIN Sales.Customer AS sc
    ON soh.CustomerID = sc.CustomerID
LEFT JOIN Person.Person AS pp
    ON sc.PersonID = pp.BusinessEntityID
LEFT JOIN Sales.Store AS s
    ON sc.StoreID = s.BusinessEntityID
WHERE soh.CustomerID IS NOT NULL
GROUP BY soh.CustomerID, COALESCE(CONCAT(pp.FirstName, ' ', pp.LastName), s.Name, 'Unknown')
ORDER BY Total_Revenues DESC;
