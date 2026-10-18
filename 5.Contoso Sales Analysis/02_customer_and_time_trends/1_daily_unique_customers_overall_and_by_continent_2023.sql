-- Q01. How many distinct customers purchased on each date in 2023, overall and by continent?



SELECT
  s.orderdate,
  COUNT(DISTINCT s.customerkey) AS total_customer,
  COUNT(DISTINCT CASE WHEN c.continent='Europe' THEN s.customerkey END ) AS eu_customer,
  COUNT(DISTINCT CASE WHEN c.continent='North America' THEN s.customerkey END ) AS us_customer,
  COUNT(DISTINCT CASE WHEN c.continent='Australia' THEN s.customerkey END ) AS au_customer
FROM sales AS s
LEFT JOIN customer AS c ON s.customerkey=c.customerkey
WHERE orderdate BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY orderdate
ORDER BY orderdate;
