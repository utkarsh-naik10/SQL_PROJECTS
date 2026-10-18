-- Q03. Create the cohort analysis view with a trimmed customer full name and first-purchase cohort year.
DROP VIEW cohort_analysis;


CREATE OR REPLACE VIEW public.cohort_analysis AS 
WITH customer_revenue AS (
         SELECT s.customerkey,
            s.orderdate,
            sum(s.quantity::double precision * s.netprice * s.exchangerate) AS total_net_revenue,
            count(s.orderkey) AS num_order,
            c.country,
            c.age,
            c.givenname,
            c.surname
           FROM sales s
             LEFT JOIN customer c ON s.customerkey = c.customerkey
          GROUP BY s.customerkey, s.orderdate, c.country, c.age, c.givenname, c.surname
        )
 SELECT customerkey,
    orderdate,
    total_net_revenue,
    num_order,
    country,
    age,
	CONCAT(TRIM(cr.givenname) ,' ',TRIM(cr.surname) ) AS full_name,
    min(orderdate) OVER (PARTITION BY customerkey) AS first_purchase_date,
    EXTRACT(year FROM min(orderdate) OVER (PARTITION BY customerkey)) AS cohort_year
   FROM customer_revenue cr;
