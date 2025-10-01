/*Which shipper handled the most orders?*/
SELECT sh.company_name,
     COUNT(od.ship_via) as Total
FROM orders od
JOIN shippers sh ON od.ship_via=sh.shipper_id
GROUP BY sh.company_name
ORDER BY Total 
