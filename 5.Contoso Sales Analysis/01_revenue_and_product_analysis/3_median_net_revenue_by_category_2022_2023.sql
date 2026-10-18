/*Q03. What is the median line-level net revenue for each product category in 2022 and 2023?*/




SELECT
  p.categoryname,
  PERCENTILE_CONT(.50) WITHIN GROUP (ORDER BY (CASE
    WHEN s.orderdate BETWEEN '2022-01-01' AND '2022-12-31' THEN  (s.quantity*s.netprice*s.exchangerate)
    END )) AS y2022_median_sales,
  PERCENTILE_CONT(.50) WITHIN GROUP (ORDER BY (CASE
  WHEN s.orderdate BETWEEN '2023-01-01' AND '2023-12-31' THEN (s.quantity*s.netprice*s.exchangerate)
  END )) AS y2023_median_sales
FROM sales AS s
LEFT JOIN product AS p ON s.productkey=p.productkey
GROUP BY p.categoryname
ORDER BY p.categoryname;
