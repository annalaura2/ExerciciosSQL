-- Exercício 26. Selecione o nome_produto e o preço, renomeando a coluna preco como 'Valor (R$)'.
SELECT 
	nome_produto, 
	preco as ValorR$
FROM 
	produtos
-- Exercício 27. Calcule o valor total em estoque (preco * estoque) para cada produto, exibindo o nome e o total.
SELECT 
		(preco*estoque) as ValorTotalEmEstoque, 
		nome_produto
FROM 
	produtos

-- Exercício 28. Liste as lojas com um alias 'Estabelecimento' para a coluna nome_loja.
SELECT 
		nome_loja as Estabelecimento 
FROM 
	lojas
-- Exercício 29. Selecione os shoppings mostrando o nome e o estado, com alias 'UF' para estado.
SELECT 
	nome,
	estado as UF
FROM 
	shoppings
-- Exercício 30. Liste produtos com avaliação maior ou igual a 4.5 e estoque maior que 20.
SELECT 
	nome_produto 
FROM 
	produtos 
WHERE 
	avaliacao >= 4.5 
AND 
	estoque > 20