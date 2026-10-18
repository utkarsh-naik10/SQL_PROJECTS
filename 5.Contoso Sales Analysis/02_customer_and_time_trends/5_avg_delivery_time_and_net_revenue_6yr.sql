-- Q05. What are average order-to-delivery processing time and net revenue by order year over the recent six-year period?


SELECT
  EXTRACT(YEAR FROM orderdate) AS order_year,
  ROUND(AVG(EXTRACT (DAYS FROM AGE(deliverydate,orderdate))),2) AS avg_processing_time,
  CAST(SUM(quantity*netprice*exchangerate) AS INTEGER) AS net_revenue
FROM
  sales
WHERE
  orderdate >= CURRENT_DATE - INTERVAL '6 years'
GROUP BY
  order_year
ORDER BY
  order_year;
