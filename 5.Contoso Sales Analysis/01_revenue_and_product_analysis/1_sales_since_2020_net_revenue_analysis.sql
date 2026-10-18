/* Q01. For sales since 2020, what is line-level net revenue,
 *  and how does each sale relate to customer and product attributes? */



SELECT
  s.orderdate,
  s.netprice*s.quantity*s.exchangerate AS net_revenue,
  c.givenname,
  c.surname,
  c.countryfull,
  c.continent,
  p.productkey,
  p.productname,
  p.categoryname,
  p.subcategoryname,
  CASE WHEN s.netprice*s.quantity*s.exchangerate > 1000 THEN 'HIGH' ELSE 'LOW' END AS high_low
FROM
  sales AS s
LEFT JOIN
  customer AS c ON s.customerkey=c.customerkey
LEFT JOIN
  product AS p ON s.productkey=p.productkey
WHERE
  orderdate >= '2020-01-01'
LIMIT 10;
