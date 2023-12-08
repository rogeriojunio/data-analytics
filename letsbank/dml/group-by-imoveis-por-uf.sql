-- Os imóveis financiados por clientes ativos são de quais estados?
-- Quantos são os imóveis por estado?

SELECT fi.uf_imovel, COUNT(fi.id)
FROM financiamento_imobiliario fi
JOIN cliente cl
	ON fi.id_cliente = cl.id
WHERE cl.ativo = true
GROUP BY fi.uf_imovel