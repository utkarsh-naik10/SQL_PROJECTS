-- Q03. What is each customer’s lifetime revenue, and what is average customer LTV by acquisition cohort?


WITH yearly_cohort AS (
    SELECT
      customerkey,
      EXTRACT(YEAR FROM MIN(orderdate)) AS cohort_year,
      SUM(quantity*netprice*exchangerate) AS customer_ltv
    FROM
      Sales
    GROUP BY
      customerkey
)
SELECT
*,
AVG(customer_ltv) OVER (PARTITION BY cohort_year) AS avg_cohort_ltv
FROM
  yearly_cohort
ORDER BY
  cohort_year,
  customerkey;
