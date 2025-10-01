/*Show all orders placed in 1997.*/

SELECT orders.order_id,
products.product_name,
ship_address,
ship_city,
ship_country,
order_date
FROM orders
LEFT JOIN order_details ON orders.order_id=order_details.order_id
LEFT JOIN products ON order_details.product_id=products.product_id
WHERE EXTRACT(YEAR FROM orders.order_date::DATE) =1997