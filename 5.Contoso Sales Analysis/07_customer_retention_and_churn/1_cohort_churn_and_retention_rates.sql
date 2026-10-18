-- Q01. By acquisition cohort, classify eligible customers as active or churned based on the last purchase date and summarize status counts and percentages.
/*retention analysis*/
/*churned vs active customers*/

WITH customer_last_purchase AS (	
SELECT 
		ca.customerkey,
		ca.full_name,
		ca.orderdate,
		row_number() OVER (PARTITION BY customerkey ORDER BY orderdate DESC) AS rn,
		ca.first_purchase_date,
		ca.cohort_year 
	FROM cohort_analysis AS ca
), churned_customer AS (
	SELECT 
		customerkey,
		full_name,
		orderdate AS last_purchase_date,
		CASE 
			WHEN orderdate < (SELECT MAX(orderdate) FROM sales)::date - INTERVAL '6 months' THEN 'Churned'
			ELSE 'Active'
		END AS customer_status,
		cohort_year 
	FROM customer_last_purchase
	WHERE rn = 1 AND first_purchase_date  < (SELECT MAX(orderdate) FROM sales)::date - INTERVAL '6 months'
	)
	SELECT 
		cohort_year ,
		customer_status,
		COUNT(customerkey) AS num_customers,
		SUM(COUNT(customerkey))	OVER(PARTITION BY cohort_year) AS total_customer,
		ROUND(COUNT(customerkey)/SUM(COUNT(customerkey)) OVER(PARTITION BY cohort_year),2) AS status_percentage
	FROM churned_customer
	GROUP BY cohort_year , customer_status