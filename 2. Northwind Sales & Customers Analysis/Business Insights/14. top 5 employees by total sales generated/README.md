### QUESTION 14:
List the top 5 employees ranked by total sales generated.
---
### SQL QUERY
```sql
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
```
---

### EXPLANATION
- First calculates total sales per employee.
- Then ranks them using RANK() OVER.
- Final result: top 5 employees.
---

### SAMPLE OUTPUT
| first_name | last_name | total_sales | rank |
| ---------- | --------- | ----------- | ---- |
| Margaret   | Peacock   | 512,300.75  | 1    |
| Nancy      | Davolio   | 498,200.50  | 2    |
| Andrew     | Fuller    | 471,000.00  | 3    |

- *Values above are illustrative — actual results depend on the dataset
---
### WHY THIS MATTERS?
- Highlights top sales performers.
- Useful for employee performance evaluation.