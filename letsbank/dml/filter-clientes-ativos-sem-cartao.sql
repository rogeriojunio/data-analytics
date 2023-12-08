-- Quais clientes ativos não possuem nenhum cartão?

-- Opção do Leon:
SELECT cl.nome
FROM cliente cl
LEFT JOIN cartao_credito cc
	ON cl.id = cc.id_cliente
WHERE cl.ativo = true
GROUP BY cl.nome
HAVING COUNT(cc.numero) = 0
ORDER BY cl.nome;

-- Meu raciocínio:
SELECT cl.nome
FROM cliente cl
LEFT JOIN cartao_credito cc
	ON cl.id = cc.id_cliente
WHERE cc.id IS NULL AND cl.ativo = true
ORDER BY cl.nome;