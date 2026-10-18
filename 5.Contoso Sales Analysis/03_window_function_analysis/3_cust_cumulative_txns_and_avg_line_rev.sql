-- Q03. How do transaction counts and average sales-line revenue accumulate over time for each customer?


SELECT
  customerkey,
  orderdate,
  (quantity*netprice*exchangerate) AS net_revenue,
  COUNT(*) OVER(
    PARTITION BY customerkey
    ORDER BY orderdate
  ) AS running_count,
    AVG(quantity*netprice*exchangerate) OVER(
    PARTITION BY customerkey
    ORDER BY orderdate
  ) AS running_avg_revenue

FROM
  sales;