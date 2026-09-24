-- Exercício 92. Escreva um comando INSERT para adicionar um novo produto à tabela produtos. 
--Use dados fictícios coerentes com a estrutura.
INSERT INTO produtos (id_produto, nome_produto, categoria, marca, preco, estoque, data_validade, avaliacao, id_loja)
VALUES (12, 'Pó solto', 'Pó', 'Huda Beauty', '159.90', 60, '2028-04-03', '5', 4)

--Exercício 93. Escreva um UPDATE para reajustar em 10% o preço de todos os produtos da marca 'Natura'.
UPDATE produtos 
SET preco = (preco*0.10) + preco
WHERE marca = 'Natura'

--Exercício 94. Escreva um DELETE para remover todos os produtos com estoque igual a 0.
DELETE FROM produtos 
WHERE estoque = 0;

--Exercício 95. Escreva um UPDATE que atualize a avaliação de um produto específico (escolha um id) para 5.0.
UPDATE produtos 
set avaliacao = 5.0
where id_produto = 1