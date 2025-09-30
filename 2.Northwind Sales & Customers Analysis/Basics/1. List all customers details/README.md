## QUESTION 1:
List all customers and their contact information.
---
## SQL QUERY
```sql
SELECT contact_name,
    city,
    country
FROM customers
```
---
## EXPLANATION
-- SELECT contact_name, city, country → retrieves customer contact name and location details.
-- Data comes directly from the customers table.
---
## SAMPLE OUTPUT
| contact_name       | city        | country |
| ------------------ | ----------- | ------- |
| Maria Anders       | Berlin      | Germany |
| Ana Trujillo       | México D.F. | Mexico  |
| Antonio Moreno     | México D.F. | Mexico  |
| Thomas Hardy       | London      | UK      |
| Christina Berglund | Luleå       | Sweden  |
*Values above are illustrative — actual results depend on the dataset
---
## WHY THIS MATTERS?
-- Useful for marketing campaigns or customer outreach.
--Provides an overview of where customers are located.