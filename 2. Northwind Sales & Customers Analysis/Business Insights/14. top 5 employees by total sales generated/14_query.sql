/*Who are the top 5 employees by total sales generated?*/
WITH abc AS(
SELECT 
    emp.first_name,
    emp.last_name,
    salid.*
FROM(
SELECT od.employee_id,
    ROUND(SUM((ods.unit_price*ods.quantity)::NUMERIC),2) AS total_sales
FROM orders od
JOIN order_details ods ON od.order_id=ods.order_id
GROUP BY od.employee_id
ORDER BY total_sales DESC) salid 
LEFT JOIN employees emp ON salid.employee_id=emp.employee_id
)
SELECT abc.*,
    RANK() OVER(ORDER BY total_sales DESC)
FROM abc