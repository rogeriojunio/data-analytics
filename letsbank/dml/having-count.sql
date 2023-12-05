-- Contagem de clientes ativos agrupados por sexo, cujo conjunto tenha pelo menos 12 clientes
SELECT sexo, COUNT(nome) 
FROM cliente
WHERE ativo = true
GROUP BY sexo
HAVING COUNT(nome) > 12