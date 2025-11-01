/*Calculate year-over-year growth in total sales.*/
WITH yearly_sales AS (
    SELECT EXTRACT(YEAR FROM o.order_date) AS yearr,
        ROUND(SUM((od.unit_price * od.quantity)::NUMERIC),2) AS sales
    FROM orders o
    JOIN order_details od ON o.order_id = od.order_id
    GROUP BY yearr
),
growth_calc AS (
    SELECT yearr,
           sales,
           LAG(sales, 1) OVER (ORDER BY yearr) AS prev_sales
    FROM yearly_sales
)
SELECT yearr,
       sales,
       prev_sales,
       ROUND((((sales - prev_sales) / prev_sales))::NUMERIC * 100, 2) AS yoy_growth
FROM growth_calc
ORDER BY yearr;