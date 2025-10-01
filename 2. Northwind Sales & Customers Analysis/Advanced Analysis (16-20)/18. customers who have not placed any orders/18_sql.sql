/*Identify customers who have not placed any orders.*/
SELECT cc.customer_id,
    cc.company_name
FROM customers cc
LEFT JOIN orders od ON cc.customer_id=od.customer_id
WHERE od.customer_id IS NULL