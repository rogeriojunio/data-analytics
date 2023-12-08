CREATE TABLE emprestimo_pessoal (
	id SERIAL,
	parcelas INTEGER,
	valor NUMERIC,
	juros NUMERIC,
	CONSTRAINT emprestimo_pessoal_pkey PRIMARY KEY (id)
)