- 3/3 
--Exercício 89. Use UNION para listar o nome_produto da tabela produtos 
--e o nome_loja da tabela lojas em uma única coluna chamada 'Nome'.
SELECT 
	nome_produto as Nome 
FROM 
	produtos
UNION 
SELECT 
	nome_loja as Nome
FROM
	lojas

--Exercício 90. Escreva uma consulta com UNION ALL para unir os produtos da marca 'MAC' 
--com os produtos da marca 'Sephora', mostrando todos incluindo duplicatas.
SELECT 
	nome_produto as ProdutosMac_e_Sephora
FROM 
	produtos
WHERE 
	marca = 'MAC'
UNION ALL 
SELECT 
	nome_produto as ProdutoMac_e_Sephora
FROM 
	produtos 
WHERE 
	marca = 'Sephora'

--Exercício 91. Use EXCEPT (ou MINUS dependendo do banco) para encontrar 
--as marcas de produtos que NÃO aparecem como marca de loja.

SELECT marca
FROM produtos

EXCEPT

SELECT marca
FROM lojas;