### QUESTION 20:
Calculate year-over-year (YoY) sales growth.
---
### SQL QUERY
```sql
WITH yearly_sales AS (
    SELECT EXTRACT(YEAR FROM o.order_date) AS yearr,
           SUM(od.unit_price * od.quantity) AS sales
    FROM orders o
    JOIN order_details od ON o.order_id = od.order_id
    GROUP BY yearr
),
growth_calc AS (
    SELECT yearr,
           sales,
           LAG(sales, 1) OVER (ORDER BY yearr) AS prev_sales
    FROM yearly_sales
)
SELECT yearr,
       sales,
       prev_sales,
       ROUND((((sales - prev_sales) / prev_sales))::NUMERIC * 100, 2) AS yoy_growth
FROM growth_calc
ORDER BY yearr;
```
---

### EXPLANATION
- First CTE (yearly_sales) → calculates total sales per year.
- Second CTE (growth_calc) → uses LAG() to fetch previous year’s sales.
- Final step → calculates percentage growth year-over-year.
---

### SAMPLE OUTPUT
| yearr | sales      | prev_sales | yoy_growth |
| ----- | ---------- | ---------- | ---------- |
| 1996  | 500,000.00 | NULL       | NULL       |
| 1997  | 650,000.00 | 500,000.00 | 30.00      |
| 1998  | 720,000.00 | 650,000.00 | 10.77      |

- *Values above are illustrative — actual results depend on the dataset
---
### WHY THIS MATTERS?
- Tracks annual sales performance trends.
- Useful for strategic planning and long-term forecasting.