-- Subquery e alias

SELECT *
FROM cliente cl 
JOIN financiamento_imobiliario fi
	ON cl.id = fi.id_cliente
WHERE fi.uf_imovel 
	IN (
		SELECT DISTINCT uf_imovel
		FROM financiamento_imobiliario
		WHERE parcelas > 10
	)