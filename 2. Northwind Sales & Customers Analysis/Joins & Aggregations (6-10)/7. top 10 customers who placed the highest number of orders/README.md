### QUESTION 7:
Find the top 10 customers by total orders placed.
---
### SQL QUERY
```sql
SELECT orders.customer_id,
    customers.contact_name,
    customers.phone,
    COUNT(orders.customer_id) as Total
FROM orders
JOIN customers ON orders.customer_id=customers.customer_id
GROUP BY orders.customer_id,
    customers.contact_name,
    customers.phone
ORDER BY Total DESC
LIMIT 10
```
---

### EXPLANATION
- COUNT(orders.customer_id) → counts how many orders each customer made.
- JOIN customers → brings in customer names and phone numbers.
- LIMIT 10 → restricts output to the top 10 customers.
---

### SAMPLE OUTPUT
| customer_id | contact_name | phone        | total |
| ----------- | ------------ | ------------ | ----- |
| SAVEA       | Josefina     | (208)555-555 | 31    |
| QUICK       | Horst        | (312)555-888 | 28    |
| HUNGO       | Pedro        | (514)555-777 | 27    |

- *Values above are illustrative — actual results depend on the dataset
---
### WHY THIS MATTERS?
- Highlights the most loyal customers.
- Helps in customer retention strategies and special loyalty programs.