/*For each region, find the employee handling the highest number of customers.*/
WITH emp_region AS (
    SELECT r.region_description,
           e.employee_id,
           e.first_name,
           e.last_name,
           COUNT(et.territory_id) AS territory_count
    FROM employee_territories et
    JOIN employees e ON et.employee_id = e.employee_id
    JOIN territories t ON et.territory_id = t.territory_id
    JOIN region r ON t.region_id = r.region_id
    GROUP BY r.region_description, e.employee_id, e.first_name, e.last_name
)
SELECT *
FROM (
    SELECT *,
           RANK() OVER (PARTITION BY region_description ORDER BY territory_count DESC) AS rank
    FROM emp_region
) ranked
WHERE rank = 1;