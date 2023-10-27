-- SKUs que venderam mais de 500 unidades

select product_id, sum(quantity) as total_units_sold
from order_details
group by product_id
having sum(quantity)>500