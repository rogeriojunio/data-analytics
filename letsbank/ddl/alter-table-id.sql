ALTER TABLE cliente 
ADD COLUMN id SERIAL PRIMARY KEY;

ALTER TABLE cliente
DROP COLUMN id_cliente;

SELECT id, nome, sexo
FROM cliente;