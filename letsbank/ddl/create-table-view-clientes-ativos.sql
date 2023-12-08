-- View de clientes ativos

CREATE VIEW clientes_ativos AS (
	SELECT * 
	FROM cliente
	WHERE cliente.ativo = true
)