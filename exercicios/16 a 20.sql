-- 5/5 <3
--Exercício 16. Encontre todos os produtos cujo nome começa com a letra 'B'.
SELECT * 
FROM 
	produtos 
WHERE 
	nome_produto LIKE 'B%'
--Exercício 17. Encontre todos os produtos cujo nome contém a palavra 'Líquido'.
SELECT * 
FROM 
	produtos 
WHERE	
	nome_produto LIKE '%Líquido%'
--Exercício 18. Liste os produtos com preço entre R$ 50,00 e R$ 150,00.
SELECT *
FROM produtos 
WHERE 
preco BETWEEN 50 and 150
--Exercício 19. Selecione os produtos das marcas 'MAC', 'Natura' e 'Sephora' usando IN.
SELECT * 
FROM 
	produtos
WHERE 
	marca IN ('MAC', 'Natura', 'Sephora')
--Exercício 20. Encontre lojas cujo nome_loja termina com a letra 'e'.
SELECT * 
FROM 
	lojas
WHERE 
	nome_loja LIKE '%e'