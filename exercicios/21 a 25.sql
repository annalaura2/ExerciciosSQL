-- 5/5 <3 
--Exercício 21. Conte quantos produtos existem na tabela produtos.
SELECT COUNT(id_produto) as totalProdutos
FROM 
	produtos
--Exercício 22. Calcule o preço médio de todos os produtos.
SELECT 
	AVG(preco) as preçoMedio
FROM
	produtos
--Exercício 23. Encontre o produto com o maior preço.
SELECT nome_produto, preco
FROM produtos
WHERE preco = (SELECT MAX(preco) FROM produtos);
--Exercício 24. Encontre o produto com o menor estoque.
SELECT 
	nome_produto, 
	estoque 
FROM
	produtos 
WHERE 
	estoque = (SELECT MIN(estoque) FROM produtos)
--Exercício 25. Some o estoque total de todos os produtos.
SELECT SUM(estoque) as estoqueTotal
FROM produtos