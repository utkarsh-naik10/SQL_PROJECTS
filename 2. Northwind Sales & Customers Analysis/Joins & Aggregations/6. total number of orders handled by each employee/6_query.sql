/*Get the total number of orders handled by each employee.*/

SELECT orders.employee_id,
    employees.first_name,
    employees.last_name,
    COUNT(orders.employee_id) as Tot
FROM orders
JOIN employees ON orders.employee_id=employees.employee_id
GROUP BY orders.employee_id,
    employees.first_name,
    employees.last_name
ORDER BY Tot DESC