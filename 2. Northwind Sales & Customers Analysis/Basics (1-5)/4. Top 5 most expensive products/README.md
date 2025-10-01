### QUESTION 4:
Find the top 5 most expensive products.
---

## SQL QUERY
```sql
SELECT product_name,
unit_price
FROM products
ORDER BY unit_price DESC
LIMIT 5

```
---

### EXPLANATION
- Orders products by unit_price in descending order.
- LIMIT 5 → restricts results to the top 5 highest-priced products.
---

### SAMPLE OUTPUT
| product_name            | unit_price |
| ----------------------- | ---------- |
| Côte de Blaye           | 263.50     |
| Thüringer Rostbratwurst | 123.79     |
| Mishi Kobe Niku         | 97.00      |
| Sir Rodney's Marmalade  | 81.00      |
| Carnarvon Tigers        | 62.50      |

- *Values above are illustrative — actual results depend on the dataset

---
### WHY THIS MATTERS?
- Helps identify premium products in the catalog.
- Useful for high-value sales targeting.