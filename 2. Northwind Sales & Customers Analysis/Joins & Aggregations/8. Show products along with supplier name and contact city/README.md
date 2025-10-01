### QUESTION 1:
8.Show all products along with their supplier’s company name and city
---
### SQL QUERY
```sql
SELECT products.product_name,
    suppliers.company_name,
    suppliers.city
FROM products
JOIN suppliers ON products.supplier_id=suppliers.supplier_id
```
---

### EXPLANATION
- JOIN suppliers → links each product with its supplier.
- Returns product name, supplier company, and supplier city.
---

### SAMPLE OUTPUT
| product_name  | company_name   | city     |
| ------------- | -------------- | -------- |
| Chai          | Exotic Liquids | London   |
| Chang         | Exotic Liquids | London   |
| Aniseed Syrup | Leka Trading   | Göteborg |

*Values above are illustrative — actual results depend on the dataset
---
### WHY THIS MATTERS?
- Maps products to suppliers for better inventory tracking.
- Helps businesses manage the supply chain effectively.