/*Determine which suppliers provide the most products.*/
SELECT p.supplier_id,
    s.company_name,
    COUNT(p.supplier_id) as total_count
FROM products p 
LEFT JOIN suppliers s ON p.supplier_id=s.supplier_id
GROUP BY p.supplier_id,
        s.company_name
ORDER BY total_count DESC