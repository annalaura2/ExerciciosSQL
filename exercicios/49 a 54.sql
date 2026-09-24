-- 5/6 
--Exercício 49. Selecione os produtos com data_validade no ano de 2027.
SELECT
    nome_produto,
    data_validade
FROM
    produtos
WHERE
    YEAR(data_validade) = 2027;
--Exercício 50. Mostre o ano de abertura de cada loja extraindo o ano de data_abertura.
SELECT
    nome_loja,
    YEAR(data_abertura) AS ano_abertura
FROM
    lojas;
--Exercício 51. Liste os produtos cuja data_validade já passou (anteriores à data atual).
SELECT 
    nome_produto, 
    data_validade 
FROM
    produtos 
WHERE 
    data_validade <= GETDATE();
--Exercício 52. Converta o nome_produto para maiúsculas em sua consulta.
SELECT 
    UPPER(nome_produto) as NOME_PRODUTO
FROM 
    produtos
--Exercício 53. Selecione o comprimento (número de caracteres) do nome de cada produto.
SELECT 
    nome_produto, 
    LEN(nome_produto) as QtdeLetras
FROM
    produtos
--Exercício 54. Mostre os produtos com data_validade nos próximos 365 dias a partir de hoje.
SELECT 
    nome_produto, 
    data_validade 
FROM
    produtos 
WHERE 
    data_validade BETWEEN GETDATE() AND DATEADD(day, 365, GETDATE());