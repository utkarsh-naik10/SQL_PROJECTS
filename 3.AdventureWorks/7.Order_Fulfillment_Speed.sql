/*Order Fulfillment Speed
Calculate the average number of days between OrderDate and ShipDate for each territory.
 Rank territories by speed.*/

WITH AvgSpeed AS(
SELECT
    soh.TerritoryID,
    st.Name AS TerritoryName,
    ROUND(AVG(CAST(DATEDIFF(day,soh.OrderDate,soh.ShipDate) AS FLOAT)),4) AS AvgDays,
    ROUND(AVG(CAST(DATEDIFF(day,soh.DueDate,soh.OrderDate) AS FLOAT)),4) AS AvgDelay,
    COUNT(soh.SalesOrderID) AS OrderCount
FROM Sales.SalesOrderHeader AS soh
JOIN Sales.SalesTerritory AS st 
    ON st.TerritoryID=soh.TerritoryID
GROUP BY soh.TerritoryID, st.Name
)
SELECT
    AvgSpeed.*,
    DENSE_RANK() OVER(ORDER BY AvgDays) AS Rank
FROM AvgSpeed
ORDER BY Rank



