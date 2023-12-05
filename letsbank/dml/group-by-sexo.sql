-- Contagem do número de clientes por sexo
SELECT sexo, COUNT(nome) 
FROM cliente
GROUP BY sexo;