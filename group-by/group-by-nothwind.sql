-- Quantidade de produtos vendidos por produto

select product_id, sum(quantity) as total_unit_sold
from order_details
group by product_id
order by total_unit_sold desc