### QUESTION 1:
15.Show monthly sales trends (sales per month across all years).
---

### SQL QUERY
```sql
SELECT EXTRACT(MONTH FROM order_date) AS month,
    EXTRACT(YEAR FROM order_date) AS year,
    COUNT(order_id) AS order_count
FROM orders
GROUP BY month,year
ORDER BY order_count DESC
```
---

### EXPLANATION
- Extracts YEAR and MONTH from order_date.
- Counts total orders placed per month.
- Ordered chronologically by year and month.
---

### SAMPLE OUTPUT
| year | month | order_count |
| ---- | ----- | ----------- |
| 1996 | 7     | 120         |
| 1996 | 8     | 95          |
| 1996 | 9     | 105         |
| 1997 | 1     | 130         |

- *Values above are illustrative — actual results depend on the dataset
---
### WHY THIS MATTERS?
- Reveals seasonal trends in sales.
- Helps with demand forecasting and business planning.