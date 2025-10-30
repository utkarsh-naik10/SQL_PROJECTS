/*High-Value Orders
Find orders where the total order value is in the top 5% percentile of all orders.
*/

WITH OrderTotals AS (
    SELECT
        sod.SalesOrderID,
        SUM(sod.LineTotal) AS OrderValue
    FROM Sales.SalesOrderDetail AS sod
    GROUP BY sod.SalesOrderID
),
Ranked AS (
    SELECT
        SalesOrderID,
        OrderValue,
        PERCENT_RANK() OVER (ORDER BY OrderValue) AS perc
    FROM OrderTotals
)
SELECT
    SalesOrderID,
    ROUND(OrderValue, 2) AS OrderValue,
    ROUND(perc,2)
FROM Ranked
WHERE perc >= 0.95         -- top 5 % of orders
ORDER BY perc DESC, OrderValue DESC;
