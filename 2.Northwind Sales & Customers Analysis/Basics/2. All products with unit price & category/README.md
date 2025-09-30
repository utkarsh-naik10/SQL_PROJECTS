### QUESTION 2:
Show all products with their unit price and category name.
---

### SQL QUERY
```sql
SELECT product_name,
products.category_id,
unit_price,
categories.category_name
FROM products
LEFT JOIN categories ON products.category_id=categories.category_id
```
---

### EXPLANATION
LEFT JOIN links each product to its category.
- product_name, unit_price → product details.
- categories.category_name → adds descriptive category info.
---

### SAMPLE OUTPUT
| product_name       | category_id | unit_price | category_name |
| ------------------ | ----------- | ---------- | ------------- |
| Chai               | 1           | 18.00      | Beverages     |
| Chang              | 1           | 19.00      | Beverages     |
| Aniseed Syrup      | 2           | 10.00      | Condiments    |
| Chef Anton’s Cajun | 2           | 22.00      | Condiments    |
| Ikura              | 8           | 31.00      | Seafood       |

*Values above are illustrative — actual results depend on the dataset

---

### WHY THIS MATTERS?
- Connects product pricing with categories for better analysis.
- Useful for inventory and pricing strategy.