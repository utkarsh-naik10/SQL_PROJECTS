-- Q08. What is the centered three-month moving average using the previous, current, and next months?


WITH monthly_sale AS (
    SELECT
      TO_CHAR(orderdate, 'YYYY-MM') AS month,
      SUM(quantity*netprice*exchangerate) AS net_revenue
    FROM
      sales
    WHERE EXTRACT(YEAR FROM orderdate) = 2023
    GROUP BY month
    ORDER By month )
SELECT
  *,
  AVG(net_revenue) OVER (
    ORDER BY month
    ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING
  ) AS net_revenue_current
FROM monthly_sale;
