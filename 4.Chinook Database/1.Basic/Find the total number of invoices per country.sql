/*
Find the total number of invoices per country
*/

SELECT BillingCountry AS Country,
count(InvoiceId) as Total_Count
FROM Invoice
GROUP BY BillingCountry
ORDER BY Total_Count DESC