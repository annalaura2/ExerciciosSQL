-- NOTA: 5/5 <3

--Exercício 1. Selecione todos os registros da tabela produtos.
SELECT * 
FROM 
produtos
--Exercício 2. Selecione todos os registros da tabela lojas.
SELECT *
FROM
lojas
--Exercício 3. Selecione todos os registros da tabela shoppings.
SELECT * 
FROM 
shoppings
--Exercício 4. Selecione apenas o nome_produto e o preco de todos os produtos.
SELECT nome_produto, preco
FROM
	produtos
--Exercício 5. Liste todos os produtos da categoria 'Base'.
SELECT *
FROM produtos
WHERE 
	categoria = 'base'