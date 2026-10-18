-- Q03. What is net revenue by year and month?


SELECT
  EXTRACT(YEAR FROM orderdate) AS ordered_year,
  EXTRACT(MONTH FROM orderdate) AS ordered_month,
  SUM(quantity*netprice*exchangerate) AS net_revenue
FROM sales
GROUP BY
  ordered_year,
  ordered_month
ORDER BY
  ordered_year,
  ordered_month;