### QUESTION 19:
Rank products by sales revenue within each category (window function).
---
### SQL QUERY
```sql
SELECT c.category_name,
       p.product_name,
       SUM(od.unit_price * od.quantity) AS total_sales,
       RANK() OVER (PARTITION BY c.category_name ORDER BY SUM(od.unit_price * od.quantity) DESC) AS rank_within_category
FROM order_details od
JOIN products p ON od.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name, p.product_name
ORDER BY c.category_name, rank_within_category;
```
---

### EXPLANATION
- Joins order_details, products, and categories.
- Aggregates sales revenue by product.
- RANK() OVER (PARTITION BY category_name ...) ranks products within each category.
---

### SAMPLE OUTPUT
| category_name | product_name  | total_sales | rank_within_category |
| ------------- | ------------- | ----------- | -------------------- |
| Beverages     | Chai          | 120,000.00  | 1                    |
| Beverages     | Chang         | 98,500.50   | 2                    |
| Condiments    | Aniseed Syrup | 80,000.00   | 1                    |

- *Values above are illustrative — actual results depend on the dataset
---
### WHY THIS MATTERS?
- Helps identify best-performing products per category.
- Useful for product mix optimization and category management.