-- Q02. For each cohort, count customers and calculate revenue recorded on their first purchase date and revenue per customer.


SELECT
	ca.cohort_year ,
	COUNT(DISTINCT ca.customerkey ) AS total_customer,
	SUM(ca.total_net_revenue ) AS total_revenue,
	SUM(ca.total_net_revenue )/COUNT(DISTINCT ca.customerkey ) AS customer_revenue
FROM cohort_analysis AS ca
WHERE ca.orderdate =ca.first_purchase_date 
GROUP BY ca.cohort_year