/*Find the top 10 customers who placed the highest number of orders*/

SELECT orders.customer_id,
    customers.contact_name,
    customers.phone,
    COUNT(orders.customer_id) as Total
FROM orders
JOIN customers ON orders.customer_id=customers.customer_id
GROUP BY orders.customer_id,
    customers.contact_name,
    customers.phone
ORDER BY Total DESC
LIMIT 10