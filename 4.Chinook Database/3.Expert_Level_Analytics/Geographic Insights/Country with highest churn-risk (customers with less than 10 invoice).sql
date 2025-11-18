#Country with highest churn-risk (customers with less than 10 invoice)

SELECT
    BillingCountry AS Country,
    COUNT(*) AS count_of_invoice
FROM Invoice 
GROUP BY Country
HAVING count_of_invoice <= 10