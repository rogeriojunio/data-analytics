-- Consultar produtos, valor unitário, unidades em estoque e total de receita em estoque

SELECT 
	product_name, 
	unit_price,
	units_in_stock,
	unit_price * units_in_stock AS total_revenue
FROM products;