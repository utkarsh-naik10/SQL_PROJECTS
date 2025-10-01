### QUESTION 18:
Find customers who have never placed an order.
---
### SQL QUERY
```sql
SELECT cc.customer_id,
    cc.company_name
FROM customers cc
LEFT JOIN orders od ON cc.customer_id=od.customer_id
WHERE od.customer_id IS NULL
```
---

### EXPLANATION
- Uses a LEFT JOIN between customers and orders.
- WHERE od.customer_id IS NULL filters customers with no matching orders.
---

### SAMPLE OUTPUT
| customer_id | company_name        |
| ----------- | ------------------- |
| LAZYK       | Lazy K Kountry      |
| TORTU       | Tortuga Restaurante |
| ISLAT       | Island Trading      |

- *Values above are illustrative — actual results depend on the dataset
---
### WHY THIS MATTERS?
- Identifies inactive customers.
- Useful for marketing re-engagement campaigns or churn analysis.