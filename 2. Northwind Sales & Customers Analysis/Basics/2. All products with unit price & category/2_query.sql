SELECT product_name,
products.category_id,
unit_price,
categories.category_name
FROM products
LEFT JOIN categories ON products.category_id=categories.category_id