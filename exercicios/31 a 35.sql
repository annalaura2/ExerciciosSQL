-- NOTA: 4/5

--Exercício 31. O comando abaixo deveria retornar todos os produtos, mas não funciona. Qual o erro?
--🔍 Encontre o erro:
--SELEC * FROM produtos;
-- Resposta: Comando correto seria SELECT e não SELEC
SELECT * FROM produtos;

--Exercício 32. O comando tenta filtrar produtos da marca MAC, mas retorna erro. Por quê?
--🔍 Encontre o erro:
--SELECT * FROM produtos
--WHERE marca = MAC;
--Resposta: por falta as aspas simples, o comando correto seria:
SELECT * FROM produtos WHERE marca = 'MAC'


--Exercício 33. O código abaixo tenta ordenar por preço decrescente. O que está errado?
--🔍 Encontre o erro:
--SELECT nome_produto, preco FROM produtos
--ORDER preco DESC;
-- Resposta: por falta do comando completo ORDER BY, no exemplo está somente ORDER
SELECT nome_produto, preco
FROM produtos 
ORDER BY preco DESC

--Exercício 34. O comando abaixo deveria contar os produtos, mas tem um problema lógico: 
--retorna resultado, porém não faz o que se espera. Explique.
--🔍 Encontre o erro:
--SELECT COUNT(preco) FROM produtos;
-- Resposta: para contar a QUANTIDADE de produtos o indicado seria SELECT COUNT(*) PRODUTOS OU SELECT COUNT(id_produto) form PRODUTOS

--Exercício 35. O filtro BETWEEN está sendo usado incorretamente. Identifique o problema.
--🔍 Encontre o erro:
SELECT * FROM produtos
WHERE preco BETWEEN 150 AND 50;
-- Resposta: o INTERVALO ESTÁ INVERTIDO, DEVERIA SER 50 AND 150