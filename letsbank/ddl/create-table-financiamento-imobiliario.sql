CREATE TABLE financiamento_imobiliario (
	id SERIAL,
	parcelas INTEGER,
	valor NUMERIC,
	cidade_imovel TEXT,
	uf_imovel TEXT,
	juros NUMERIC,
	CONSTRAINT financiamento_imobiliario_pkey PRIMARY KEY (id)
)