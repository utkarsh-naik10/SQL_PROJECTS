### QUESTION 11:
Identify the top 5 countries by total sales revenue.
---
### SQL QUERY
```sql
SELECT o.ship_country,
    ROUND(SUM((od.unit_price*od.quantity)::NUMERIC),2) AS Tot_sal_$$
FROM orders o
LEFT JOIN order_details od ON o.order_id=od.order_id
GROUP BY o.ship_country
ORDER BY Tot_sal_$$ DESC
LIMIT 5
```
---

### EXPLANATION
- SUM(unit_price * quantity) → calculates total sales per order.
- Grouped by ship_country → aggregates sales revenue per country.
- LIMIT 5 → only top 5 countries are displayed.
---

### SAMPLE OUTPUT
| ship_country | tot_sales    |
| ------------ | ------------ |
| USA          | 1,520,000.50 |
| Germany      | 1,210,500.75 |
| Brazil       | 987,400.00   |
| UK           | 875,600.25   |
| France       | 823,900.00   |

- *Values above are illustrative — actual results depend on the dataset
---
### WHY THIS MATTERS?
- Identifies key revenue markets.
- Helps businesses focus on top-performing regions.