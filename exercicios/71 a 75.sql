-- Exercício 71. Use EXISTS para listar as lojas que possuem pelo menos um produto cadastrado.
SELECT 
	l.nome_loja
FROM lojas l
WHERE 
	EXISTS (SELECT 1
			FROM produtos p
			WHERE p.id_loja = l.id_loja)
-- Exercício 72. Use NOT EXISTS para listar as lojas sem nenhum produto cadastrado.
SELECT 
	l.nome_loja
FROM lojas l
WHERE 
	NOT EXISTS (SELECT 1
			FROM produtos p
			WHERE p.id_loja = l.id_loja)
-- Exercício 73. Selecione os produtos cujo preço é maior que o preço máximo de todos os produtos da categoria 'Base'.
SELECT 
    p.nome_produto,
    p.preco
FROM 
    produtos p
WHERE 
    p.preco > (
        SELECT MAX(p2.preco)
        FROM produtos p2
        WHERE p2.categoria = 'Base'
    );
	
-- Exercício 74. Liste os shoppings que possuem lojas do tipo 'Maquiagem' (subquery com IN).
SELECT
    s.nome
FROM
    shoppings s
WHERE
    s.id_shopping IN (
        SELECT
            l.id_shopping
        FROM
            lojas l
        WHERE
            l.tipo_loja = 'Maquiagem'
    );
-- Exercício 75. Encontre o produto mais caro de cada loja usando subquery correlacionada no WHERE.
SELECT 
    p.id_loja,
    p.nome_produto,
    p.preco
FROM produtos p
WHERE 
    p.preco = (
        SELECT MAX(p2.preco)
        FROM produtos p2
        WHERE p2.id_loja = p.id_loja
    );

    -- 4,5/5