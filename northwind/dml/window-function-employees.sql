--Identificar o primeiro produto vendido pelos funcionários e data da venda

SELECT distinct
	employee_id,
	first_value(order_date) OVER (PARTITION BY employee_id ORDER BY order_date) AS first_sale,
	first_value(product_name) OVER (PARTITION BY employee_id ORDER BY order_date) AS first_product
FROM orders
INNER JOIN order_details ON 
	orders.order_id = order_details.order_id
INNER JOIN products ON 
	products.product_id = order_details.product_id