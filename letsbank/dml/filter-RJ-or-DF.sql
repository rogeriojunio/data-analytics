-- Lista de financiamentos do RJ e do DF

-- Opção 1
SELECT * 
FROM financiamento_imobiliario fi
WHERE fi.uf_imovel = 'RJ' OR fi.uf_imovel = 'DF';

-- Opção 2
SELECT * 
FROM financiamento_imobiliario fi
WHERE fi.uf_imovel IN ('RJ', 'DF');