-- Q05. For monthly revenue, what are the first, last, third, previous, and next month values using window functions?


WITH monthly_revenue AS (
    SELECT
      TO_CHAR(orderdate, 'YYYY-MM') AS month,
      SUM(quantity*netprice*exchangerate) AS net_revenue
    FROM
      sales
    WHERE orderdate >= '2023-01-01'
    GROUP BY  month
    ORDER BY   month
)
SELECT *,
  FIRST_VALUE(net_revenue) OVER(ORDER BY month) AS first_month_revenue,
  LAST_VALUE(net_revenue) OVER(ORDER BY month ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_month_revenue,
  NTH_VALUE(net_revenue,3) OVER(ORDER BY month ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS third_month_revenue,
  LAG(net_revenue) OVER (ORDER BY month) AS previous_month_revenue,
  LEAD(net_revenue) OVER (ORDER BY month) AS next_month_revenue
FROM monthly_revenue;