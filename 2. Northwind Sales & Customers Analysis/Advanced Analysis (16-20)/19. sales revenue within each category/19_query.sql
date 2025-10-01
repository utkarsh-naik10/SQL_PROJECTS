/*Rank products by sales revenue within each category (using window functions).*/
SELECT c.category_name,
       p.product_name,
       SUM(od.unit_price * od.quantity) AS total_sales,
       RANK() OVER (PARTITION BY c.category_name ORDER BY SUM(od.unit_price * od.quantity) DESC) AS rank_within_category
FROM order_details od
JOIN products p ON od.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name, p.product_name
ORDER BY c.category_name, rank_within_category;
