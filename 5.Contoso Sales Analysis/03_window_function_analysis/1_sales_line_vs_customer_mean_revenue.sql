-- Q01. For each sales line, what is its net revenue compared with the average sales-line revenue for that customer?

SELECT
  customerkey,
  orderkey,
  linenumber,
  (quantity*netprice*exchangerate) AS net_revenue,
  AVG(quantity*netprice*exchangerate) OVER ( PARTITION BY customerkey) AS avg_net_revenue_all_order
FROM
  sales;