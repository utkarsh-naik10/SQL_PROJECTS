/*Inactive Customers
Find customers who haven’t placed any orders in the last 3 years but had placed at least 5 orders earlier.*/


WITH CustomerOrderStats AS (
    SELECT
        CustomerID,
        COUNT(SalesOrderID) AS TotalOrders,
        MAX(OrderDate) AS LastOrderDate
    FROM Sales.SalesOrderHeader
    GROUP BY CustomerID
)
SELECT
    c.CustomerID,
    p.FirstName + ' ' + p.LastName AS CustomerName,
    cos.TotalOrders,
    cos.LastOrderDate
FROM CustomerOrderStats AS cos
JOIN Sales.Customer AS c
    ON cos.CustomerID = c.CustomerID
JOIN Person.Person AS p
    ON c.PersonID = p.BusinessEntityID
WHERE
    cos.TotalOrders >= 5
    AND cos.LastOrderDate < DATEADD(YEAR, -3, GETDATE()) 
ORDER BY cos.LastOrderDate;
