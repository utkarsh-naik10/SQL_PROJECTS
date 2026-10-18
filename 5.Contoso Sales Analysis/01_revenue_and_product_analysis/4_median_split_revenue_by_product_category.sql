/* Q04. For each product category and year, 
 * how does revenue from sales lines below the overall median compare with revenue at or above the median?*/



WITH median_value AS (
 SELECT
  PERCENTILE_CONT(.50) WITHIN GROUP (ORDER BY (s.quantity*s.netprice*s.exchangerate)) AS median
FROM Sales AS s
WHERE orderdate BETWEEN '2022-01-01' AND '2023-12-31'
)
SELECT
  p.categoryname,
  SUM(CASE WHEN (s.quantity*s.netprice*s.exchangerate) < mv.median
    AND s.orderdate BETWEEN '2022-01-01' AND '2022-12-31'
    THEN (s.quantity*s.netprice*s.exchangerate) END) AS low_net_revenue_2022,
  SUM(CASE WHEN (s.quantity*s.netprice*s.exchangerate) >= mv.median
   AND s.orderdate BETWEEN '2022-01-01' AND '2022-12-31'
    THEN (s.quantity*s.netprice*s.exchangerate) END) AS high_net_revenue_2022,
  SUM(CASE WHEN (s.quantity*s.netprice*s.exchangerate) < mv.median
    AND s.orderdate BETWEEN '2023-01-01' AND '2023-12-31'
    THEN (s.quantity*s.netprice*s.exchangerate) END) AS low_net_revenue_2023,
  SUM(CASE WHEN (s.quantity*s.netprice*s.exchangerate) >= mv.median
   AND s.orderdate BETWEEN '2023-01-01' AND '2023-12-31'
    THEN (s.quantity*s.netprice*s.exchangerate) END) AS high_net_revenue_2023
FROM sales AS s
  LEFT JOIN product AS p ON s.productkey=p.productkey,
  median_value AS mv
GROUP BY p.categoryname
ORDER BY p.categoryname;
