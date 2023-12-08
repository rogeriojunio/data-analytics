ALTER TABLE cartao_credito
ADD COLUMN id_cliente INTEGER
REFERENCES cliente(id);

ALTER TABLE emprestimo_pessoal
ADD COLUMN id_cliente INTEGER
REFERENCES cliente(id);

ALTER TABLE financiamento_imobiliario
ADD COLUMN id_cliente INTEGER
REFERENCES cliente(id);