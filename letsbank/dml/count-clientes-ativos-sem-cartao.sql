-- Quantos clientes ativos não possuem nenhum cartão?

SELECT COUNT(cl.nome)
FROM cliente cl
LEFT JOIN cartao_credito cc
	ON cl.id = cc.id_cliente
WHERE cc.id IS NULL AND cl.ativo = true