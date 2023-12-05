-- Gostaria de consultar o nome dos clientes do sexo masculino que não possuem cadastro ativo no banco

SELECT nome
FROM cliente
WHERE sexo = 'M' AND NOT ativo;