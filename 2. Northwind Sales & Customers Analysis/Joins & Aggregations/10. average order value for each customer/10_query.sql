/*Find the average order value for each customer.*/

WITH ord_tot AS(
SELECT 
    orders.order_id,
    orders.customer_id,
    SUM(order_details.unit_price*order_details.quantity) AS order_val
FROM orders
LEFT JOIN order_details ON  orders.order_id=order_details.order_id
GROUP BY 
    orders.order_id,
    orders.customer_id
)
SELECT contact_name,
    ROUND(AVG(ord_tot.order_val::NUMERIC),2) AS avg_order_val
FROM customers
JOIN ord_tot ON customers.customer_id=ord_tot.customer_id
GROUP BY contact_name
ORDER BY avg_order_val