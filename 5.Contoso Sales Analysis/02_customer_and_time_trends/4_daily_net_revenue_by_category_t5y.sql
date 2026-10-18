-- Q04. What is daily net revenue by product category over the trailing five-year period?



SELECT
  s.orderdate,
  p.categoryname,
  SUM(s.quantity*s.netprice*s.exchangerate) AS net_revenue
FROM
  sales AS s
LEFT JOIN product AS p ON s.productkey=p.productkey
WHERE
  s.orderdate >= CURRENT_DATE - INTERVAL '5 years'
GROUP BY
  s.orderdate,
  p.categoryname
ORDER BY
  s.orderdate,
  p.categoryname;