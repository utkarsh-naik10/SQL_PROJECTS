-- Q01. How much revenue is generated in each purchase year by customers grouped by their first-purchase cohort year?



WITH yearly_cohort AS(
    SELECT DISTINCT
      customerkey,
      EXTRACT(YEAR FROM MIN(orderdate) OVER(partition by customerkey)) AS cohort_year
    FROM SALES
)
SELECT
  y.cohort_year,
  EXTRACT(YEAR FROM orderdate) AS purchase_year,
  SUM(s.quantity*s.netprice*s.exchangerate) AS net_revenue
FROM sales AS s
LEFT JOIN yearly_cohort AS y ON s.customerkey=y.customerkey
GROUP BY
  y.cohort_year,
  purchase_year;