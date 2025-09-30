/*Count the number of customers in each country.*/
SELECT country,
count(country) as Tot_Cust
FROM customers
GROUP BY country
ORDER BY Tot_Cust DESC