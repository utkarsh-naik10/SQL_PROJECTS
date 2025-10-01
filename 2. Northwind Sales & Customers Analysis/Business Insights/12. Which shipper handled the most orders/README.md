### QUESTION 1:
12.Which shipper handled the most orders?
---
### SQL QUERY
```sql
SELECT sh.company_name,
     COUNT(od.ship_via) as Total
FROM orders od
JOIN shippers sh ON od.ship_via=sh.shipper_id
GROUP BY sh.company_name
ORDER BY Total
```
---

### EXPLANATION
- COUNT(ship_via) → counts how many orders each shipper fulfilled.
- Ordered in descending order to highlight the busiest shipper.
---

### SAMPLE OUTPUT
| company_name     | total |
| ---------------- | ----- |
| Speedy Express   | 280   |
| United Package   | 220   |
| Federal Shipping | 210   |

- *Values above are illustrative — actual results depend on the dataset
---
### WHY THIS MATTERS?
- Shows the most reliable shipping partner.
- Helps optimize logistics and partnerships.