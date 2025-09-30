### QUESTION 5:
Count how many customers are from each country.
---
### SQL QUERY
```sql
SELECT country,
count(country) as Tot_Cust
FROM customers
GROUP BY country
ORDER BY Tot_Cust DESC

```
---

### EXPLANATION
- GROUP BY country → aggregates customers by their country.
- COUNT(country) → calculates number of customers per country.
- ORDER BY DESC → ranks countries with most customers at the top.
---

### SAMPLE OUTPUT
| country | tot_cust |
| ------- | -------- |
| USA     | 13       |
| Germany | 11       |
| France  | 11       |
| Brazil  | 9        |
| UK      | 7        |

*Values above are illustrative — actual results depend on the dataset

---

### WHY THIS MATTERS?
- Identifies key customer markets by country.
- Useful for regional sales strategy and expansion planning.