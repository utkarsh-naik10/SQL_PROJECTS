-- Q04. How do ROW_NUMBER, RANK, and DENSE_RANK compare when customers are ranked by sales-row count?


SELECT
  customerkey,
  COUNT(*) as total_order,
  ROW_NUMBER() OVER(ORDER BY COUNT(*) DESC ) AS total_order_row_num,
  RANK() OVER(ORDER BY COUNT(*) DESC ) AS total_order_rank,
  DENSE_RANK() OVER(ORDER BY COUNT(*) DESC ) AS total_order_dense_rank
FROM
  Sales
GROUP BY
  customerkey
LIMIT 10;