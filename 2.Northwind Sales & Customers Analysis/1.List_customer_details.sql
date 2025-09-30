--Q.1
SELECT contact_name,
    city,
    country
FROM customers

--Q2
SELECT product_name,
products.category_id,
unit_price,
categories.category_name
FROM products
LEFT JOIN categories ON products.category_id=categories.category_id


--Q3
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



--q4
SELECT product_name,
unit_price
FROM products
ORDER BY unit_price DESC
LIMIT 5


--q5
SELECT country,
count(country) as Tot_Cust
FROM customers
GROUP BY country
ORDER BY Tot_Cust DESC