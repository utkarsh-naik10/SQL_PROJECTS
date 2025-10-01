### QUESTION 13:
Find the most popular product category by sales volume.
---
### SQL QUERY
```sql
SELECT od.product_id,
    pr.product_name,
    ROUND(SUM((od.unit_price*od.quantity)::NUMERIC),2) AS sales_vol
FROM order_details od
LEFT JOIN products pr ON od.product_id=pr.product_id
GROUP BY od.product_id,
        pr.product_name
ORDER BY sales_vol DESC
```
---

### EXPLANATION
- SUM(unit_price * quantity) → calculates sales revenue per product.
- ORDER BY DESC → most popular product(s) appear first.
---

### SAMPLE OUTPUT
| product_name  | sales_vol  |
| ------------- | ---------- |
| Côte de Blaye | 158,000.00 |
| Thüringer     | 123,500.50 |
| Mishi Kobe    | 120,000.00 |

- *Values above are illustrative — actual results depend on the dataset
---
### WHY THIS MATTERS?
- Shows top-selling products.
- Guides product prioritization and marketing strategy.