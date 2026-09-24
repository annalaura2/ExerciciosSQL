-- 5/5 <3
--Exercício 11. Liste todos os produtos ordenados pelo preço do menor para o maior.
SELECT 
	*
FROM
	produtos 
ORDER BY
	preco ASC
--Exercício 12. Liste todos os produtos ordenados pela avaliação do maior para o menor.
SELECT
	* 
FROM
	produtos 
ORDER BY
	avaliacao DESC
--Exercício 13. Selecione os nomes de todas as categorias distintas da tabela produtos.
SELECT DISTINCT 
	categoria 
FROM
	produtos
--Exercício 14. Selecione as marcas distintas da tabela lojas.
SELECT DISTINCT	
	marca
FROM
	lojas
--Exercício 15. Liste os produtos ordenados pelo nome em ordem alfabética.
SELECT 
	*
FROM
	produtos 
ORDER BY
	nome_produto ASC