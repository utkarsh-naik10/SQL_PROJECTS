/*Calculate monthly sales trend (sales per month for all years).*/
SELECT EXTRACT(MONTH FROM order_date) AS month,
    EXTRACT(YEAR FROM order_date) AS year,
    COUNT(order_id) AS order_count
FROM orders
GROUP BY month,year
ORDER BY order_count DESC