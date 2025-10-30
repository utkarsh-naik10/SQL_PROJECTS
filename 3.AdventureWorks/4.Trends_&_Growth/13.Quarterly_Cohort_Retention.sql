/*Quarterly Cohort Retention
Build customer cohorts based on the quarter of their first purchase.
 Show how many made purchases in the next 4 quarters.*/


WITH FirstPurchase AS (
    SELECT
        CustomerID,
        MIN(YEAR(OrderDate)) AS FirstYear,
        MIN(DATEPART(QUARTER, OrderDate)) AS FirstQuarter
    FROM Sales.SalesOrderHeader
    GROUP BY CustomerID
),
CustomerPurchases AS (
    SELECT
        CustomerID,
        YEAR(OrderDate) AS OrderYear,
        DATEPART(QUARTER, OrderDate) AS OrderQuarter
    FROM Sales.SalesOrderHeader
)
SELECT
    fp.CustomerID,
    fp.FirstYear,
    fp.FirstQuarter,
    cp.OrderYear,
    cp.OrderQuarter
FROM FirstPurchase fp
JOIN CustomerPurchases cp
    ON fp.CustomerID = cp.CustomerID
ORDER BY fp.CustomerID, cp.OrderYear, cp.OrderQuarter;

