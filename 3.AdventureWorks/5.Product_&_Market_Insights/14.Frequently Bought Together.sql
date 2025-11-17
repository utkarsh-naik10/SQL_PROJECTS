/*
Basket Analysis (Frequently Bought Together)
Identify pairs of products most frequently ordered together in the same order.
*/

WITH OrderProducts AS (
    SELECT
        SalesOrderID,
        ProductID
    FROM Sales.SalesOrderDetail
)
SELECT
    p1.ProductID AS ProductA_ID,
    p2.ProductID AS ProductB_ID,
    COUNT(*) AS Times_Bought_Together
FROM OrderProducts AS p1
JOIN OrderProducts AS p2
    ON p1.SalesOrderID = p2.SalesOrderID   
   AND p1.ProductID < p2.ProductID         
GROUP BY p1.ProductID, p2.ProductID
HAVING COUNT(*) > 1                        
ORDER BY Times_Bought_Together DESC;
