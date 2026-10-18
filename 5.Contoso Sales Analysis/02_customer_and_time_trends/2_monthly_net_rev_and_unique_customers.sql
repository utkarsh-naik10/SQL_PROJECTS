-- Q02. What are monthly net revenue and distinct customer counts?


SELECT
  DATE_TRUNC('month',orderdate)::DATE AS ordered_month,
  SUM(quantity*netprice*exchangerate) AS net_revenue,
  COUNT(DISTINCT customerkey) AS total_unique_cust
FROM sales
GROUP BY
  ordered_month
LIMIT 10;