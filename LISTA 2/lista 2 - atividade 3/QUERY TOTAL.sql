CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;


CREATE TABLE tb_categorias (
id INT AUTO_INCREMENT PRIMARY KEY,
nome  VARCHAR(50) NOT NULL,
descricaO VARCHAR(255)
);

CREATE TABLE tb_produtos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
descricao VARCHAR(255),
valor DECIMAL(10, 2) NOT NULL,
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

INSERT INTO tb_categorias (nome, descricao) 
VALUES ("Medicamentos", "Produtos relacionados a medicamentos"),
("Higiene Pessoal", "Produtos de cuidados pessoais"),
("Cosméticos", "Produtos cosméticos e de beleza"),
("Cuidados Capilares", "Produtos para cabelo"),
("Bem-Estar", "Produtos para o bem-estar geral");

INSERT INTO tb_produtos (nome, descricao, valor, id_categoria) 
VALUES ("Paracetamol", "Analgésico e antitérmico", 10.50, 1),
("Sabonete Neutro", "Sabonete para higiene diária", 5.90, 2),
("Shampoo Anticaspa", "Shampoo para controle de caspa", 15.75, 4),
("Perfume Floral", "Fragrância floral suave", 60.00, 3),
("Creme Hidratante", "Hidratante para pele seca", 25.50, 2),
("Escova de Dentes Elétrica", "Escova elétrica para uma limpeza eficaz", 35.99, 2),
("Condicionador Reparador", "Condicionador para cabelos danificados", 18.25, 4),
("Vitaminas Multivitamínicas", "Suplemento vitamínico", 49.90, 5);

SELECT * FROM tb_produtos WHERE valor > 50.00;
SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.*, tb_categorias.nome AS nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;

SELECT tb_produtos.*, tb_categorias.nome
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id
WHERE tb_categorias.nome = "Cosméticos";