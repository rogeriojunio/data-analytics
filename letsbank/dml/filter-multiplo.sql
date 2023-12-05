-- Gostaria de consultar todas as informações dos clientes do sexo feminino com conta ativa

SELECT *
FROM cliente
WHERE sexo = 'F' AND ativo = true;