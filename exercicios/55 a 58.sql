-- 3/4 
--Exercício 55. Crie uma coluna 'Faixa de Preço' usando CASE: 'Barato' para preço < 80, 
--'Médio' entre 80 e 200, 'Premium' acima de 200.
SELECT nome_produto, preco,
  CASE 
    WHEN preco < 80 THEN 'Barato'
    WHEN preco BETWEEN 80 AND 200 THEN 'Médio'
    ELSE 'premium'
  END AS categoria_preco
FROM produtos


-- Exercício 56. Classifique as lojas por número de funcionários: 
-- 'Pequena' (até 6), 'Média' (7 a 9), 'Grande' (10 ou mais).
SELECT 
    nome_loja, funcionario_total,
    CASE 
        WHEN funcionario_total <= 6 THEN 'pequena'
        WHEN funcionario_total >= 7 AND funcionario_total <= 9 THEN 'média'
        ELSE 'Grande'
    END as funcionario_total
FROM lojas

--Exercício 57. Adicione uma coluna 'Situação do Estoque' com CASE: 'Crítico' se estoque < 20, 'Regular' entre 20 e 30, 
--'Adequado' acima de 30.
SELECT 
    nome_produto, estoque,
    CASE
        WHEN estoque < 20 THEN 'crítico' 
        WHEN estoque >= 20 AND estoque <= 30 THEN 'regular'
        ELSE 'adequado'
    END as SituacaoEstoque
FROM produtos

--Exercício 58. Use CASE para exibir 'Sim' ou 'Não' no lugar do campo possui_estacionamento (assumindo 1 = Sim).
SELECT 
    nome, 
    CASE 
        WHEN possui_estacionamento = 1 THEN 'sim'
        ELSE 'não'
    END as possui_estacionamento
FROM 
    shoppings