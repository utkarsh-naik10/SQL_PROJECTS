/*Employee Sales Performance
List the top-performing salespersons in each region by total sales.
 Show their name, region, and sales amount.*/


WITH abc AS (
    SELECT
        soh.TerritoryID,
        st.Name AS Territory_Name,
        soh.SalesPersonID,    
        CONCAT(pp.FirstName, ' ', pp.LastName) AS Full_Name,
        ROUND(SUM(soh.TotalDue),2) AS Revenue,
        RANK() OVER (
            PARTITION BY soh.TerritoryID 
            ORDER BY SUM(soh.TotalDue) DESC
        ) AS Rank_Ter
    FROM Sales.SalesOrderHeader AS soh
    LEFT JOIN Person.Person AS pp 
        ON soh.SalesPersonID = pp.BusinessEntityID
    LEFT JOIN Sales.SalesTerritory AS st
        ON soh.TerritoryID = st.TerritoryID
    WHERE soh.SalesPersonID IS NOT NULL
    GROUP BY 
        soh.TerritoryID,
        soh.SalesPersonID,
        CONCAT(pp.FirstName, ' ', pp.LastName),
        st.Name
)
SELECT
    abc.*
FROM abc
WHERE abc.Rank_Ter = 1
ORDER BY abc.TerritoryID ASC;



