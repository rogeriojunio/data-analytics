CREATE TABLE cartao_credito (
	id SERIAL,
	numero TEXT,
	bandeira TEXT,
	limite NUMERIC,
	juros_rotativo NUMERIC,
	CONSTRAINT cartao_credito_pkey PRIMARY KEY (id)
)