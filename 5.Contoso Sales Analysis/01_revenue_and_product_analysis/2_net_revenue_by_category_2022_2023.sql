/* Q02. What are total net revenue and year-specific revenue for each product category,
 *  including a comparison of 2022 and 2023?*/



SELECT
  p.categoryname,
  SUM(s.quantity*s.netprice*s.exchangerate) AS net_revenue,
  SUM(CASE WHEN s.orderdate BETWEEN '2022-01-01' AND '2022-12-31' THEN s.quantity*s.netprice*s.exchangerate ELSE 0 END) AS total_net_revenue_2022,
  SUM(CASE WHEN s.orderdate BETWEEN '2023-01-01' AND '2023-12-31' THEN s.quantity*s.netprice*s.exchangerate ELSE 0 END) AS total_net_revenue_2023
FROM sales AS s
LEFT JOIN product AS p ON s.productkey=p.productkey
GROUP BY p.categoryname
ORDER BY p.categoryname;
