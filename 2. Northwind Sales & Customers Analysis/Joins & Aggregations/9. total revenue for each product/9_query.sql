/*Calculate the total revenue (sum of unit_price * quantity) for each product.*/
SELECT 
    products.product_name,
    ROUND(SUM(order_details.quantity*order_details.unit_price::NUMERIC),2) AS Total_revenue_$
FROM order_details
LEFT JOIN products ON order_details.product_id=products.product_id
GROUP BY products.product_name
ORDER BY Total_revenue_$ DESC