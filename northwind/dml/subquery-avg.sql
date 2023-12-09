-- Quais foram as vendas acima a média geral?

SELECT *
FROM order_details
WHERE quantity < 
	(
	SELECT
		AVG(quantity)
	FROM order_details
	);
	
-- Forma elegante

WITH average AS (
	SELECT AVG(quantity) AS avg_qtd
	FROM order_details
)
	SELECT order_details.*
	FROM order_details, average
	WHERE quantity < average.avg_qtd;