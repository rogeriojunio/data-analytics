-- Quais foram as vendas acima a média geral?

select *
from order_details
where quantity < 
	(
	select
		avg(quantity)
	from order_details
	)
	
-- Forma elegante

with average as (
	select avg(quantity) as avg_qtd
	from order_details
)
	select order_details.*
	from order_details, average
	where quantity < average.avg_qtd