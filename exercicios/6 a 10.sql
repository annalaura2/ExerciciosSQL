-- 5/5 :))))))
--Exercício 6. Liste todos os produtos com preço menor que R$ 100,00.
SELECT nome_produto as produtos_mais_baratos
FROM 
	produtos
WHERE 
	preco < 100
--Exercício 7. Selecione os produtos da marca 'MAC'.
SELECT	nome_produto as produtos_MAC
FROM
	produtos
WHERE 
	marca = 'MAC'
--Exercício 8. Selecione as lojas localizadas no andar 2.
SELECT nome_loja as lojas_segundo_andar
FROM 
	lojas
WHERE 
	andar = 2
--Exercício 9. Liste os shoppings localizados na cidade de 'Palmas'.
SELECT nome as shoppings_em_Palmas
FROM 
	shoppings
WHERE 
	cidade = 'Palmas'
--Exercício 10. Mostre os produtos com avaliação igual a 4.9.
SELECT nome_produto
FROM 
	produtos
WHERE 
	avaliacao = 4.9