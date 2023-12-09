-- Identificar as categorias dos produtos

SELECT 
	product_name, 
	quantity_per_unit, 
	unit_price, 
	category_name,
	description
FROM products
INNER JOIN categories 
	ON categories.category_id = products.category_id;