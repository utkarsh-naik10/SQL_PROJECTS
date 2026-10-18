-- Q02. What percentage of each order date's total revenue is contributed by each sales line?



SELECT
  orderdate,
  orderkey * 10 + linenumber AS order_line_number,
  (quantity*netprice*exchangerate) AS net_revenue,
  SUM(quantity*netprice*exchangerate) OVER(partition by orderdate) AS daily_net_revenue,
  (quantity*netprice*exchangerate)*100 / SUM(quantity*netprice*exchangerate) OVER(partition by orderdate) AS pct_daily_revenue
FROM
  sales
ORDER BY
  orderdate,
  pct_daily_revenue DESC
LIMIT 10;