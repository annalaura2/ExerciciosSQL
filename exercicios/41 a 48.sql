-- 5/8 
 --Exercício 41. Conte quantos produtos existem por categoria.
SELECT 
	categoria,
	SUM(estoque) as EstoquePorCategoria
FROM
	produtos
GROUP BY 
	categoria
--Exercício 42. Calcule o preço médio dos produtos por marca.
SELECT 
	marca,
	AVG(preco) as PrecoMedioPorMarca
FROM
	produtos
GROUP BY
	marca
--Exercício 43. Mostre quantas lojas existem por shopping (use id_shopping).
SELECT
    s.id_shopping,
    COUNT(s.numero_lojas) as LojasPorShopping
FROM shoppings s
LEFT JOIN lojas l ON l.id_shopping = s.id_shopping
GROUP BY 
	s.id_shopping
--Exercício 44. Liste as categorias que têm mais de 1 produto cadastrado usando HAVING.
SELECT
    categoria,
    COUNT(*) as CategoriaComMaisDeUmProduto
FROM produtos
GROUP BY 
	categoria
HAVING 
	COUNT(*) > 1
--Exercício 45. Mostre a média de avaliação dos produtos por marca, exibindo apenas marcas com média acima de 4.5.
SELECT
    marca, 
	AVG(avaliacao) as MediaAvaliacaoPorMarca
FROM produtos
GROUP BY 
	marca
HAVING 
	AVG(avaliacao) > 4.5
--Exercício 46. Some o estoque por categoria e ordene do maior para o menor.
SELECT 
	categoria,
	SUM(estoque) as EstoquePorCategoria
FROM
	produtos
GROUP BY 
	categoria
ORDER BY 
	SUM(estoque) ASC
--Exercício 47. Conte quantos produtos cada loja possui, exibindo o nome da loja (use JOIN + GROUP BY).
SELECT
    l.nome_loja, 
	SUM(estoque) as ProdutoPorLoja
FROM lojas l 
LEFT JOIN produtos p ON p.id_loja = l.id_loja
GROUP BY 
	l.nome_loja
	
--Exercício 48. Mostre o produto mais caro de cada categoria usando GROUP BY e MAX.
SELECT
    p.categoria,
    p.nome_produto,
    p.preco
FROM
    produtos p
WHERE
    p.preco = (
        SELECT MAX(preco)
        FROM produtos p2
        WHERE p2.categoria = p.categoria
    );