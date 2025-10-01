### QUESTION 17:
For each region, find the employee managing the highest number of territories.
---
### SQL QUERY
```sql
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
```
---

### EXPLANATION
- Joins employees with territories and region.
- Counts number of territories managed per employee within each region.
- Uses RANK() OVER (PARTITION BY region) to find the top employee per region.
---

### SAMPLE OUTPUT
| region_description | first_name | last_name | territory_count | rank |
| ------------------ | ---------- | --------- | --------------- | ---- |
| Western            | Nancy      | Davolio   | 5               | 1    |
| Eastern            | Steven     | Buchanan  | 4               | 1    |
| Northern           | Margaret   | Peacock   | 3               | 1    |

- *Values above are illustrative — actual results depend on the dataset
---
### WHY THIS MATTERS?
- Identifies regional leaders in customer coverage.
- Helps in sales territory management and performance tracking.