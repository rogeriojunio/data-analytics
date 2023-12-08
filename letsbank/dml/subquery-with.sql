-- With

WITH

clientes_com_cartao AS (
	SELECT DISTINCT cc.id_cliente
	FROM cartao_credito cc
),

clientes_com_emprestimo AS (
	SELECT DISTINCT ep.id_cliente
	FROM emprestimo_pessoal ep
),

clientes_com_financiamento AS (
	SELECT DISTINCT fi.id_cliente
	FROM financiamento_imobiliario fi
)

SELECT cl.nome
FROM cliente cl 
JOIN clientes_com_cartao cc
	ON cl.id = cc.id_cliente
JOIN clientes_com_emprestimo ep
	ON cl.id = ep.id_cliente
JOIN clientes_com_financiamento fi
	ON cl.id = fi.id_cliente