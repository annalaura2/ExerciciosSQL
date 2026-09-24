-- 5/5 <3
-- Exercício 59. Selecione os produtos cujo preço é maior que a média geral de preços (use subquery no WHERE).
SELECT 
	preco as PrecoMaiorMedia, 
	nome_produto
FROM
	produtos
WHERE 
	preco > (SELECT 
				AVG(preco)
			FROM 
				produtos)

-- Exercício 60. Liste os produtos da loja que tem o maior número de funcionários (subquery para encontrar id_loja).
SELECT 
	p.nome_produto
FROM 
	lojas l 
JOIN produtos p ON p.id_loja = l.id_loja
WHERE 
	funcionario_total = (SELECT
							MAX(funcionario_total)
						FROM 
							lojas)
-- Exercício 61. Encontre os produtos que têm estoque abaixo da média de estoque de todos os produtos.
SELECT 
	nome_produto
FROM
	produtos 
WHERE
	estoque < (SELECT 
					AVG(estoque)
				FROM
					produtos)
-- Exercício 62. Selecione as lojas que pertencem ao shopping com mais lojas cadastradas na tabela shoppings.
SELECT 
	l.nome_loja
FROM 
	lojas l
JOIN shoppings s ON s.id_shopping = l.id_shopping
WHERE 
	s.numero_lojas = (SELECT 
							MAX(numero_lojas)
						FROM 
							shoppings)
-- Exercício 63. Liste os nomes dos produtos mais caros de cada categoria (subquery correlacionada).
SELECT
    p.nome_produto,
    p.categoria,
    p.preco
FROM produtos p
WHERE p.preco = (
    SELECT MAX(p2.preco)
    FROM produtos p2
    WHERE p2.categoria = p.categoria
);
