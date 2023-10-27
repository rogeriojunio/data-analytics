-- Consultar produtos, valor unitário, unidades em estoque e total de receita em estoque

select 
	product_name, 
	unit_price,
	units_in_stock,
	unit_price * units_in_stock as total_revenue
from products