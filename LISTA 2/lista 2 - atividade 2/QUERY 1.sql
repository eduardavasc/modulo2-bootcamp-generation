CREATE DATABASE db_pizzaria_legal;
use db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(255) 
);

CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    id_categoria INT,
    nome_pizza VARCHAR(255) NOT NULL,
    descricao_pizza VARCHAR(255),
    valor DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Salgada', 'Pizzas salgadas tradicionais'),
('Doce', 'Pizzas doces irresistíveis'),
('Vegetariana', 'Pizzas com ingredientes vegetarianos'),
('Especial', 'Pizzas especiais com ingredientes exclusivos'),
('Calzone', 'Pizzas no formato de calzone recheadas');

INSERT INTO tb_pizzas (id_categoria, nome_pizza, descricao_pizza, valor) VALUES
(1, 'Calabresa', 'Calabresa, cebola e muçarela', 40.00),
(2, 'Chocolate com Morango', 'Chocolate, morango e leite condensado', 55.00),
(3, 'Margherita', 'Tomate, muçarela e manjericão', 48.00),
(4, 'Quatro Queijos', 'Muçarela, gorgonzola, parmesão e catupiry', 50.00),
(5, 'Frango com Catupiry', 'Frango, catupiry e milho', 45.00),
(1, 'Pepperoni', 'Pepperoni e muçarela', 42.00),
(3, 'Vegetariana Especial', 'Tomate, palmito, champignon e azeitona', 47.00),
(2, 'Banana com Canela', 'Banana, canela e leite condensado', 60.00);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE valor > 45.00;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

SELECT tb_pizzas.*, tb_categorias.nome_categoria
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT tb_pizzas.*, tb_categorias.nome_categoria
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Doce';



    



