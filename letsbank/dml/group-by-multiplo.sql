-- Quantos homens e mulheres com conta ativa tenho na base de clientes?

SELECT sexo, ativo, COUNT(nome) 
FROM cliente
WHERE ativo = true
GROUP BY sexo, ativo
ORDER BY ativo, sexo