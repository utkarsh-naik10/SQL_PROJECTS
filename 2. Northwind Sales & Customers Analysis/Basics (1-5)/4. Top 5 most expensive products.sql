/*Find the top 5 most expensive products.*/
SELECT product_name,
unit_price
FROM products
ORDER BY unit_price DESC
LIMIT 5