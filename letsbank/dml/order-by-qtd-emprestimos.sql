-- Quais clientes ativos tem mais empréstimos pessoais?

SELECT cl.nome, COUNT(ep.id) AS contagem
FROM emprestimo_pessoal ep
JOIN cliente cl 
	ON ep.id_cliente = cl.id
WHERE cl.ativo = true
GROUP BY cl.nome
ORDER BY contagem DESC