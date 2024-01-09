CREATE DATABASE db_gen_school;
USE db_gen_school;

CREATE TABLE tb_estudantes(
matricula BIGINT AUTO_INCREMENT,
nome_completo VARCHAR (255) NOT NULL,
data_de_nascimento DATE,
endereco VARCHAR (255),
curso VARCHAR (255) NOT NULL,
nota_final DECIMAL (6,2) NOT NULL,
PRIMARY KEY (matricula)
);

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes (nome_completo,data_de_nascimento, endereco, curso, nota_final)
VALUES ("Ana Silva", "2005-03-12", "Rua das Flores, 123, Cidade A", "9º Ano", 8.5),
("Pedro Santos", "2004-07-25", "Avenida Principal, 456, Cidade B", "11º Ano", 7.2),
("Mariana Oliveira", "2006-01-08", "Travessa dos Estudantes, 789, Cidade C", "8º Ano", 9.0),
("Lucas Pereira", "2003-09-18", "Rua das Árvores, 987, Cidade A", "12º Ano", 6.8),
("Juliana Souza", "2005-11-30", "Alameda Central, 321, Cidade B", "10º Ano", 8.2),
("Rafael Lima", "2006-06-14", "Rua da Escola, 654, Cidade C", "7º Ano", 9.5),
("Camila Costa", "2004-04-02", "Avenida dos Estudantes, 159, Cidade A", "11º Ano", 7.9),
("Felipe Santos", "2003-12-20", "Praça da Educação, 753, Cidade B", "9º Ano", 8.7);

SELECT * FROM tb_estudantes WHERE nota_final > 7.00;
SELECT * FROM tb_estudantes WHERE nota_final < 7.00;

UPDATE tb_estudantes SET curso = "Pessoa Desenvolvedora Java FullStack" WHERE matricula = 1;
UPDATE tb_estudantes SET curso = "Pessoa Desenvolvedora Java FullStack" WHERE matricula = 3;
UPDATE tb_estudantes SET curso = "Pessoa Desenvolvedora Java FullStack" WHERE matricula = 5;
UPDATE tb_estudantes SET curso = "Pessoa Desenvolvedora Java FullStack" WHERE matricula = 7;
UPDATE tb_estudantes SET curso = "Pessoa Desenvolvedora Web/Cloud" WHERE matricula = 2;
UPDATE tb_estudantes SET curso = "Pessoa Desenvolvedora Web/Cloud" WHERE matricula = 4;
UPDATE tb_estudantes SET curso = "Pessoa Desenvolvedora Web/Cloud" WHERE matricula = 6;
UPDATE tb_estudantes SET curso = "Pessoa Desenvolvedora Web/Cloud" WHERE matricula = 8;