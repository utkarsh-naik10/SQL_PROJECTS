### QUESTION 1:
10.Find the average order value for each customer
---
### SQL QUERY
```sql
WITH ord_tot AS(
SELECT 
    orders.order_id,
    orders.customer_id,
    SUM(order_details.unit_price*order_details.quantity) AS order_val
FROM orders
LEFT JOIN order_details ON  orders.order_id=order_details.order_id
GROUP BY 
    orders.order_id,
    orders.customer_id
)
SELECT contact_name,
    ROUND(AVG(ord_tot.order_val::NUMERIC),2) AS avg_order_val
FROM customers
JOIN ord_tot ON customers.customer_id=ord_tot.customer_id
GROUP BY contact_name
ORDER BY avg_order_val
```
---

### EXPLANATION
- Inner query (ord_tot) → computes total value for each order.
- Outer query → averages those order totals by customer.
- Produces true average order value per customer.
---

### SAMPLE OUTPUT
| contact_name  | avg_order_val |
| ------------- | ------------- |
| Ernst Handel  | 11,500.75     |
| Save-a-lot    | 10,200.50     |
| Queen Cozinha | 9,800.20      |

*Values above are illustrative — actual results depend on the dataset
---
### WHY THIS MATTERS?
- Identifies high-value customers who place large orders.
- Useful for priority customer management and targeted marketing.