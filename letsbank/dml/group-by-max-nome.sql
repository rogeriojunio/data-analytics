-- Agrupar por sexo e pegar o maior nome (em termos lexicográficos)

SELECT sexo, MAX(nome) 
FROM cliente
GROUP BY sexo