-- 9.5/10 
-- Conte quantos produtos existem em cada categoria. Exiba o nome da categoria e o total.
SELECT 
	categoria,
	COUNT(*) as ProdutoPorCategoria
FROM 
	produtos 
GROUP BY 
	categoria

-- Calcule o preço médio dos produtos agrupados por marca. Ordene do maior para o menor preço médio.
SELECT 
	marca, 
	AVG(preco) as PrecoMedioPorMarca
FROM
	produtos 
GROUP BY 
	marca 
ORDER BY
	AVG(preco) DESC

-- Mostre o total de funcionários por tipo de loja (tipo_loja) na tabela lojas.
SELECT 
	tipo_loja, 
	SUM(funcionario_total) as TotalFuncionariosPorTipoLoja
FROM
	lojas
GROUP BY
	tipo_loja

-- Liste a maior avaliação de produto dentro de cada marca. Exiba marca e max_avaliacao.
SELECT 
	marca, 
	MAX(avaliacao) as MaiorAvaliacaoPorProduto
FROM
	produtos
GROUP BY
	marca

-- Mostre quantas lojas existem em cada andar, exibindo o número do andar e a quantidade de lojas.
SELECT 
	andar, 
	COUNT(id_loja) as QtdeLojaPorAndar
FROM
	lojas
GROUP BY
	andar

-- Liste apenas as categorias que têm mais de 1 produto cadastrado. Use HAVING para filtrar.
SELECT 
	categoria, 
	COUNT(*) as CategoriaComMaisDeUmProduto
FROM 
	produtos
GROUP BY
	categoria 
HAVING 
	COUNT(*) > 1

-- Mostre as marcas de produto cuja média de avaliação seja superior a 4.5. Exiba a marca e a média formatada com 2 casas decimais.
SELECT 
	marca, 
	CAST(AVG(avaliacao) AS DECIMAL(10,2)) AS MediaAvaliacao
FROM
	produtos 
GROUP BY
	marca 
HAVING 
	AVG(avaliacao) > 4.5

-- Agrupe os produtos por categoria e mostre apenas aquelas onde o estoque total ultrapasse 50 unidades. 
--Ordene pelo estoque total decrescente.
SELECT 
	categoria, 
	SUM(estoque) SomaEstoqueSuperiorA50
FROM
	produtos 
GROUP BY
	categoria 
HAVING
	SUM(estoque) > 50
ORDER BY
	SUM(estoque) DESC

	
--O comando abaixo deveria listar marcas com mais de 1 produto, mas gera erro. Identifique o problema e corrija.
--SELECT marca, COUNT(*)
--FROM produtos
--WHERE COUNT(*) > 1
-- GROUP BY marca;
-- Comando correto:
SELECT marca, COUNT(*)
FROM produtos
GROUP BY marca
HAVING COUNT(*) > 1

--Este comando roda sem erro, mas o resultado está logicamente incorreto. O objetivo era listar o nome de cada produto 
--junto com a média de preço por categoria. O que está errado?
--SELECT categoria, nome_produto, AVG(preco)
--FROM produtos
--GROUP BY categoria;
-- Comando correto: 
SELECT 
	categoria, 
	nome_produto, 
	AVG(preco)
FROM 
	produtos 
GROUP BY
	categoria, 
	nome_produto