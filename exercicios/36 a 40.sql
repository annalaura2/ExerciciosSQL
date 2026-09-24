-- 4,5/5
-- Exercício 36. Faça um INNER JOIN entre produtos e lojas para exibir o nome do produto e o nome da loja onde está cadastrado.
SELECT 
	p.nome_produto, 
	l.nome_loja	
FROM
	produtos p 
JOIN lojas l ON l.id_loja = p.id_loja
-- Exercício 37. Faça um JOIN entre lojas e shoppings para exibir o nome da loja e o nome do shopping onde ela fica.
SELECT 
	l.nome_loja, 
	s.nome as NomeShopping
FROM 
	lojas l
JOIN shoppings s ON s.id_shopping = l.id_shopping
-- Exercício 38. Junte as três tabelas (produtos, lojas, shoppings) e exiba: nome do produto, nome da loja e nome do shopping.
SELECT 
		p.nome_produto, 
		l.nome_loja, 
		s.nome as NomeShopping
FROM 
	produtos p 
JOIN lojas l ON l.id_loja = p.id_loja
JOIN shoppings s ON s.id_shopping = l.id_shopping
-- Exercício 39. Liste o nome do produto, o preço e o nome do shopping onde ele é vendido, ordenado pelo preço decrescente.
SELECT 
		p.nome_produto, 
		p.preco, 
		s.nome as NomeShopping
FROM 
	produtos p 
JOIN lojas l ON l.id_loja = p.id_loja
JOIN shoppings s ON s.id_shopping = l.id_shopping
ORDER BY
	p.preco DESC
-- Exercício 40. Faça um LEFT JOIN entre lojas e produtos para mostrar lojas que possuem ou não produtos cadastrados.
SELECT 
	*
FROM 
	lojas l 
LEFT JOIN produtos p ON p.id_loja = l.id_loja