UPDATE financiamento_imobiliario
SET uf_imovel = 'DF', cidade_imovel = 'Brasília'
WHERE id % 3 = 0;

UPDATE financiamento_imobiliario
SET uf_imovel = 'RJ', cidade_imovel = 'Rio de Janeiro'
WHERE id % 3 = 1;

UPDATE financiamento_imobiliario
SET uf_imovel = 'SP' , cidade_imovel = 'São Paulo'
WHERE id % 3 = 2;

SELECT * 
FROM financiamento_imobiliario;