-- Q02. How many customers from each acquisition cohort purchased in each subsequent year?



WITH yearly_cohort AS (
SELECT DISTINCT
  customerkey,
  EXTRACT(YEAR FROM (MIN(orderdate) OVER (PARTITION BY customerkey))) AS cohort_year,
  EXTRACT(YEAR FROM orderdate) AS purchase_year
FROM
  sales
)
SELECT DISTINCT
  cohort_year,
  purchase_year,
  COUNT(*) OVER (PARTITION BY cohort_year,purchase_year) AS num_customer
FROM yearly_cohort
ORDER BY
cohort_year,
purchase_year;