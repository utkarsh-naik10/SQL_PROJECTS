/*Average Order Value by Region
Compute the average order value for each sales territory. 
Highlight the region with the largest deviation from the global average.*/

\WITH TerritoryAvg AS (
    SELECT
        soh.TerritoryID,
        st.Name AS TerritoryName,
        AVG(CAST(soh.TotalDue AS FLOAT)) AS AvgOrderValue
    FROM Sales.SalesOrderHeader AS soh
    JOIN Sales.SalesTerritory AS st 
        ON soh.TerritoryID = st.TerritoryID
    GROUP BY soh.TerritoryID, st.Name
),
GlobalAvg AS (
    SELECT AVG(CAST(TotalDue AS FLOAT)) AS GlobalAvg
    FROM Sales.SalesOrderHeader
)
SELECT
    t.TerritoryID,
    t.TerritoryName,
    ROUND(t.AvgOrderValue, 2) AS AvgOrderValue,
    ROUND(g.GlobalAvg, 2) AS GlobalAvg,
    ROUND(t.AvgOrderValue - g.GlobalAvg, 2) AS DiffFromGlobal
FROM TerritoryAvg t
CROSS JOIN GlobalAvg g
ORDER BY DiffFromGlobal DESC;
