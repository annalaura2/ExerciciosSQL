--Exercício 96. Escreva uma transação (BEGIN/COMMIT) que insira uma nova loja e, em seguida, insira um produto vinculado a essa loja.
BEGIN TRANSACTION;

DECLARE @novo_id_loja INT;
DECLARE @novo_id_produto INT;

SELECT @novo_id_loja = ISNULL(MAX(id_loja), 0) + 1 FROM lojas;
SELECT @novo_id_produto = ISNULL(MAX(id_produto), 0) + 1 FROM produtos;

INSERT INTO lojas (id_loja, nome_loja, id_shopping)
VALUES (@novo_id_loja, 'Loja Exemplo Tech', 1);

INSERT INTO produtos (id_produto, nome_produto, preco, id_loja)
VALUES (@novo_id_produto, 'Teclado Mecânico', 250.00, @novo_id_loja);

COMMIT TRANSACTION;


--Exercício 97. Escreva uma transação com ROLLBACK: insira um shopping fictício, depois reverta a operação.

BEGIN TRANSACTION;


INSERT INTO shoppings (id_shopping, nome, cidade)
VALUES (999, 'Shopping Fictício Teste', 'São Paulo');

ROLLBACK TRANSACTION;