-- Gostaria de consultar o nome dos clientes do sexo feminino que nasceram depois de 1985

SELECT nome
FROM cliente
WHERE sexo = 'F' AND data_nascimento >= '01-01-1986';