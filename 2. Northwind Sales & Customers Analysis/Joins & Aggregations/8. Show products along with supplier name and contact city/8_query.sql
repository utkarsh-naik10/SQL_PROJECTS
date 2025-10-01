/*Show products along with supplier name and contact city.*/
SELECT products.product_name,
    suppliers.company_name,
    suppliers.city
FROM products
JOIN suppliers ON products.supplier_id=suppliers.supplier_id