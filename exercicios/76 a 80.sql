-- 5/5

-- Exercício 76. Crie uma CTE chamada 'produtos_caros' que filtre produtos acima de R$ 100,00, e depois faça um SELECT 
--nela exibindo nome e preço.
WITH produtos_caros AS (
    SELECT 
        nome_produto,
        preco
    FROM produtos
    WHERE preco > 100.00
)
SELECT 
    nome_produto,
    preco
FROM produtos_caros;
-- Exercício 77. Crie uma CTE com a média de preços por categoria, e depois selecione as categorias cuja média supera R$ 100,00.
WITH MediaPrecosPorCategoria AS (
        SELECT 
                categoria, 
                AVG(preco) as mediaPreco
        FROM produtos
        GROUP BY
            categoria 
)
SELECT 
    categoria
FROM 
    MediaPrecosPorCategoria
WHERE 
    mediaPreco > 100;
-- Exercício 78. Use duas CTEs encadeadas: a primeira calcula o total de estoque por loja, a segunda filtra lojas
--com estoque total acima de 50 unidades.
-- Garante o encerramento de comandos anteriores
;

WITH totalEstoque AS (
    SELECT 
        id_loja,
        SUM(estoque) AS somaEstoque
    FROM 
        produtos
    GROUP BY 
        id_loja
),
lojasEstoqueAcima50 AS (
    SELECT 
        id_loja,
        somaEstoque
    FROM 
        totalEstoque
    WHERE 
        somaEstoque > 50
)
SELECT 
    l.nome_loja,
    e.somaEstoque
FROM 
    lojasEstoqueAcima50 e
JOIN 
    lojas l ON l.id_loja = e.id_loja;
-- Exercício 79. Crie uma CTE que junte lojas e shoppings, e depois use-a para listar o número de lojas por shopping.
;

WITH lojas_e_shoppings AS (
    SELECT 
        l.id_loja,
        l.nome_loja,
        s.id_shopping,
        s.nome AS nome_shopping
    FROM lojas l
    INNER JOIN shoppings s ON l.id_shopping = s.id_shopping
)
SELECT 
    nome_shopping,
    COUNT(id_loja) AS total_lojas
FROM lojas_e_shoppings
GROUP BY nome_shopping;
    

-- Exercício 80. Com uma CTE, classifique os produtos pela faixa de preço (Barato/Médio/Premium) 
-- e depois conte quantos produtos existem em cada faixa.
;

WITH produtos_classificados AS (
    SELECT 
        nome_produto,
        preco,
        CASE 
            WHEN preco < 50.00 THEN 'Barato'
            WHEN preco BETWEEN 50.00 AND 150.00 THEN 'Médio'
            ELSE 'Premium'
        END AS faixa_preco
    FROM produtos
)
SELECT 
    faixa_preco,
    COUNT(*) AS quantidade_produtos
FROM produtos_classificados
GROUP BY faixa_preco
ORDER BY quantidade_produtos DESC;