### QUESTION 6:
Find how many orders were processed by each employees.
---
### SQL QUERY
```sql
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
```
---

### EXPLANATION
- COUNT(orders.employee_id) → counts how many orders each employee handled.
- JOIN employees → matches orders to employees.
- GROUP BY ensures aggregation per employee.
---

### SAMPLE OUTPUT
| employee_id | first_name | last_name | tot |
| ----------- | ---------- | --------- | --- |
| 5           | Steven     | Buchanan  | 135 |
| 4           | Margaret   | Peacock   | 123 |
| 1           | Nancy      | Davolio   | 123 |

- *Values above are illustrative — actual results depend on the dataset
---
### WHY THIS MATTERS?
- Shows the workload distribution among employees.
- Helps identify top performers in order processing..