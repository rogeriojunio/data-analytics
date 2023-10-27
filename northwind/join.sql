-- Identificar as categorias dos produtos

select 
	product_name, 
	quantity_per_unit, 
	unit_price, 
	category_name,
	description
from products
inner join categories on categories.category_id = products.category_id