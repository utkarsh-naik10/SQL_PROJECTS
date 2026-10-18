-- Q06. What are month-over-month revenue change and percentage change?


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
  LAG(net_revenue) OVER (ORDER BY month) AS previous_month_revenue,
  net_revenue - LAG(net_revenue) OVER (ORDER BY month) AS monthly_revenue_growth,
  100*(net_revenue - LAG(net_revenue) OVER (ORDER BY month))/ LAG(net_revenue) OVER (ORDER BY month) AS  rate_of_change
FROM monthly_revenue;