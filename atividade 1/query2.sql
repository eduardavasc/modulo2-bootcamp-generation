CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
data_de_nascimento DATE,
cargo VARCHAR (255) NOT NULL,
salario DECIMAL NOT NULL,
conta_bancaria VARCHAR (255) NOT NULL,
PRIMARY KEY (id)
);
