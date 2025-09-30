## QUESTION 3:
Get all orders placed in the year 1997.
---
## SQL QUERY
```sql
SELECT orders.order_id,
products.product_name,
ship_address,
ship_city,
ship_country,
order_date
FROM orders
LEFT JOIN order_details ON orders.order_id=order_details.order_id
LEFT JOIN products ON order_details.product_id=products.product_id
WHERE EXTRACT(YEAR FROM orders.order_date::DATE) =1997
```
---
## EXPLANATION
-- EXTRACT(YEAR...) = 1997 → filters orders by year.
-- Joins orders, order_details, and products → shows product names along with shipping info.
-- Output includes order_id, product_name, ship_address, ship_city, ship_country, and order_date.
---
## SAMPLE OUTPUT
| order_id | product_name        | ship_address       | ship_city | ship_country | order_date |
| -------- | ------------------- | ------------------ | --------- | ------------ | ---------- |
| 10248    | Queso Cabrales      | 59 rue de l’Abbaye | Reims     | France       | 1997-07-04 |
| 10248    | Singaporean Hokkien | 59 rue de l’Abbaye | Reims     | France       | 1997-07-04 |
| 10249    | Tofu                | Luisenstr. 48      | Münster   | Germany      | 1997-07-05 |

*Values above are illustrative — actual results depend on the dataset

---
## WHY THIS MATTERS?
-- Provides details of all 1997 orders including products and shipping addresses.
-- Useful for year-specific sales and logistics analysis.