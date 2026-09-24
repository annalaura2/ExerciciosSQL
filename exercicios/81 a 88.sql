--Exercício 81. Use ROW_NUMBER() para numerar os produtos dentro de cada categoria, ordenados pelo preço decrescente.
SELECT 
	nome_produto,
	categoria,
	ROW_NUMBER() OVER(PARTITION BY categoria ORDER BY preco DESC) as produtosCateg
FROM
	produtos
--Exercício 82. Use RANK() para rankear os produtos por avaliação (o produto mais bem avaliado é o 1°).
SELECT 
	nome_produto, 
	RANK() OVER(ORDER BY avaliacao) as avaliacaoProdutos
FROM
	produtos
--Exercício 83. Use DENSE_RANK() para classificar os produtos por preço dentro de cada marca.
SELECT 
	nome_produto, 
	DENSE_RANK() OVER(PARTITION BY marca ORDER BY preco) as classificaoPorPrecoMarca
FROM
	produtos
--Exercício 84. Calcule o preço médio de cada categoria usando AVG() como window function particionada por categoria, 
--exibindo também o preço individual de cada produto.
SELECT 
	nome_produto,
	categoria, 
	preco,
	AVG(preco) OVER(PARTITION BY categoria) as precoPorCategoria 
FROM
	produtos
--Exercício 85. Use LAG() para mostrar, para cada produto ordenado por id_produto, o preço do produto anterior.
SELECT 
    id_produto,
    nome_produto,
    preco,
    LAG(preco) OVER(ORDER BY id_produto) AS preco_produto_anterior
FROM produtos;
--Exercício 86. Use LEAD() para mostrar o nome do próximo produto (ordenado por id_produto) ao lado de cada produto.
SELECT 
    id_produto,
    nome_produto,
    LEAD(nome_produto) OVER(ORDER BY id_produto) AS proximo_produto
FROM produtos;
--Exercício 87. Use SUM() como window function para calcular o preço acumulado dos produtos ordenados por id_produto.
SELECT 
    id_produto,
    nome_produto,
    preco,
    SUM(preco) OVER(ORDER BY id_produto) AS preco_acumulado
FROM produtos;
--Exercício 88. Com NTILE(3), divida os produtos em 3 grupos iguais baseados no preço, e exiba em qual grupo cada produto está.
SELECT 
    nome_produto,
    preco,
    NTILE(3) OVER(ORDER BY preco ASC) AS numero_grupo
FROM produtos;

--7/8