/*Identify the top 5 countries by total sales revenue.*/
SELECT o.ship_country,
    ROUND(SUM((od.unit_price*od.quantity)::NUMERIC),2) AS Tot_sal_$$
FROM orders o
LEFT JOIN order_details od ON o.order_id=od.order_id
GROUP BY o.ship_country
ORDER BY Tot_sal_$$ DESC
LIMIT 5