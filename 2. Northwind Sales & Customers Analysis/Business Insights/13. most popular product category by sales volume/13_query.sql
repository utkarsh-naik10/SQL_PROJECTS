/*Find the most popular product category by sales volume.*/
SELECT od.product_id,
    pr.product_name,
    ROUND(SUM((od.unit_price*od.quantity)::NUMERIC),2) AS sales_vol
FROM order_details od
LEFT JOIN products pr ON od.product_id=pr.product_id
GROUP BY od.product_id,
        pr.product_name
ORDER BY sales_vol DESC