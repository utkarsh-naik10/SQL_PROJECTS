/* Q05. How can sales lines be segmented into low-, medium-, 
 and high-revenue tiers using the 25th and 75th percentiles?*/



WITH pencentiles AS(
    SELECT
      PERCENTILE_CONT(.25) WITHIN GROUP (ORDER BY (s.quantity*s.netprice*s.exchangerate)) AS revenue_25th_percentile,
      PERCENTILE_CONT(.75) WITHIN GROUP (ORDER BY (s.quantity*s.netprice*s.exchangerate)) AS revenue_75th_percentile
    FROM Sales AS s
    WHERE orderdate BETWEEN '2022-01-01' AND '2023-12-31'
)
SELECT
  p.categoryname,
  CASE
    WHEN (s.quantity*s.netprice*s.exchangerate) <= pc.revenue_25th_percentile THEN '3-Low'
    WHEN (s.quantity*s.netprice*s.exchangerate) >= pc.revenue_75th_percentile THEN '1-High'
    ELSE '2-Medium'
  END AS revenue_tier,
  SUM(s.quantity*s.netprice*s.exchangerate) AS total_revenue
FROM sales AS s
  LEFT JOIN product AS p ON s.productkey=p.productkey,
  pencentiles AS pc
GROUP BY p.categoryname,
  revenue_tier
ORDER BY p.categoryname ,
  revenue_tier;
