COPY cartao_credito
FROM 'C:\temp\dados_cartao.csv'
DELIMITER ','
CSV HEADER;

COPY emprestimo_pessoal
FROM 'C:\temp\dados_emprestimo.csv'
DELIMITER ','
CSV HEADER;

COPY financiamento_imobiliario
FROM 'C:\temp\dados_financiamento.csv'
DELIMITER ','
CSV HEADER;