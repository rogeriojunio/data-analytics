-- BUSCAS INEXATAS
-- Informações de clientes que o nome começa com a letra 'A'

SELECT *
FROM cliente
WHERE LOWER(cliente.nome) LIKE 'a%'