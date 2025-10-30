/*
2.Customer Lifetime Value
For each customer, calculate their lifetime value (LTV) and categorize them into tiers:
Tier A: > $100,000
Tier B: $50,000–$100,000
Tier C: < $50,000
*/


SELECT
    soh.CustomerID,
    COALESCE(CONCAT(pp.FirstName,' ',pp.LastName),'unknown') AS Full_Name,
    ROUND(SUM(soh.TotalDue),2) AS Tot_Revenue,
    CASE 
        WHEN SUM(soh.TotalDue) > 100000 THEN  'Tier A'
        WHEN SUM(soh.TotalDue) >= 50000 THEN  'Tier B'
        ELSE 'Tier C'
    END
FROM Sales.SalesOrderHeader AS soh
LEFT JOIN Sales.Customer AS sc
    ON sc.CustomerID = soh.CustomerID
LEFT JOIN Person.Person AS pp 
    ON pp.BusinessEntityID = sc.PersonID
GROUP BY soh.CustomerID,COALESCE(CONCAT(pp.FirstName,' ',pp.LastName),'unknown')
ORDER BY Tot_Revenue DESC