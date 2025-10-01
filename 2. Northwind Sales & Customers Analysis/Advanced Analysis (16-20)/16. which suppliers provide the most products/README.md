### QUESTION 16:
Determine which supplier provides the most products.
---
### SQL QUERY
```sql
SELECT p.supplier_id,
    s.company_name,
    COUNT(p.supplier_id) as total_count
FROM products p 
LEFT JOIN suppliers s ON p.supplier_id=s.supplier_id
GROUP BY p.supplier_id,
        s.company_name
ORDER BY total_count DESC
```
---

### EXPLANATION
- Joins products with suppliers.
- COUNT(p.supplier_id) → counts how many products each supplier provides.
- Results are sorted in descending order to show the supplier with the most products first.
---

### SAMPLE OUTPUT
| supplier_id | company_name    | total_count |
| ----------- | --------------- | ----------- |
| 12          | Exotic Liquids  | 15          |
| 5           | Tokyo Traders   | 12          |
| 9           | Grandma Kelly’s | 10          |

- *Values above are illustrative — actual results depend on the dataset
---
### WHY THIS MATTERS?
- Identifies suppliers with the widest product catalog.
- Useful for evaluating key supply chain partners.