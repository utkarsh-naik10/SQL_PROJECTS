/*
Regional Product Preference
For each region, list the most popular product (by highest sales volume).
*/

WITH abc AS (
    SELECT
        st.TerritoryID,
        st.Name AS TerritoryName,
        sod.ProductID,
        SUM(sod.OrderQty) AS TotalQty
    FROM Sales.SalesOrderDetail AS sod
    JOIN Sales.SalesOrderHeader AS soh
        ON sod.SalesOrderID = soh.SalesOrderID
    JOIN Sales.SalesTerritory AS st
        ON soh.TerritoryID = st.TerritoryID
    GROUP BY st.TerritoryID, st.Name, sod.ProductID
),
Ranked AS (
    SELECT
        TerritoryID,
        TerritoryName,
        ProductID,
        TotalQty,
        RANK() OVER (PARTITION BY TerritoryID ORDER BY TotalQty DESC) AS QtyRank
    FROM abc
)
SELECT
    TerritoryID,
    TerritoryName,
    ProductID,
    TotalQty
FROM Ranked
WHERE QtyRank = 1
ORDER BY TerritoryID;
