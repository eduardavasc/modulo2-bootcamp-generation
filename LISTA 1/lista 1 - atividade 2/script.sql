CREATE DATABASE db_gen_commerce;
USE db_gen_commerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
preco DECIMAL (6,2) NOT NULL,
estoque INT,
categoria varchar (255),
frete INT,
PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, preco, estoque,categoria,frete)
VALUES ("Adesivos",5.00,200,"decorativos",2),
("Mousepad", 12.50, 150, "acessórios", 5),
("Bloco de Notas", 8.99, 100, "papelaria", 6),
("Caderno", 19.99, 80, "papelaria", 8),
("Placa Decorativa", 29.99, 50, "decorativos", 8),
("Agenda", 14.99, 90, "papelaria", 7),
("Suporte de headset", 14.99, 90, "acessórios", 7),
("Capa de Webcam", 14.99, 90, "acessórios", 2)
;

SELECT * FROM tb_produtos WHERE preco > 500.00;

UPDATE tb_produtos SET preco = 10.00 WHERE Id = 8;
UPDATE tb_produtos SET preco = 20.00 WHERE Id = 7;
