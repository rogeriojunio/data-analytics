-- Quantos cartões de crédito com a bandeira jcb
-- emitidos para clientes ativos

SELECT COUNT(cc.id)
FROM cartao_credito cc
JOIN cliente cl
	ON cc.id_cliente = cl.id
WHERE cc.bandeira = 'jcb'
	AND cl.ativo = true;