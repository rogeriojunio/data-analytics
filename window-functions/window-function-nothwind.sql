--Identificar o primeiro produto vendido pelos funcionários e data da venda

select distinct
	employee_id,
	first_value(order_date) over (partition by employee_id order  by order_date) as first_sale,
	first_value(product_name) over (partition by employee_id order  by order_date) as first_product
from orders
inner join order_details on 
	orders.order_id = order_details.order_id
inner join products on 
	products.product_id = order_details.product_id