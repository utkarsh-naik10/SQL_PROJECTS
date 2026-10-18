-- Q01. Segment customers into low-, medium-, and high-lifetime-value groups using the 25th and 75th percentiles.
/*most valuable customer*/

WITH customer_ltv AS (
		SELECT 
			ca.customerkey ,
			ca.full_name ,
			SUM(ca.total_net_revenue ) AS total_ltv
		FROM
			cohort_analysis AS ca 
		GROUP BY 
			ca.customerkey ,
			ca.full_name 
), customer_segment AS(
	SELECT
		PERCENTILE_CONT(.25) WITHIN GROUP (ORDER BY total_ltv) AS ltv_25th_perc,
		PERCENTILE_CONT(.75) WITHIN GROUP (ORDER BY total_ltv) AS ltv_75th_perc
	FROM 
		customer_ltv 
)
SELECT 
	c.*,
	CASE 
		WHEN c.total_ltv < cs.ltv_25th_perc THEN '1-Low Value'
		WHEN c.total_ltv <= cs.ltv_75th_perc THEN '2-Mid Value'
		ELSE '3-High Value'		
	END	AS customer_seg
FROM customer_ltv AS c,
	customer_segment  AS cs