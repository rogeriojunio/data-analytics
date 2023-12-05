-- Funções de agregação

select date_trunc('month', order_date) as order_month, count(order_id), min(freight), max(freight), avg(freight)
from orders
group by order_month
order by order_month