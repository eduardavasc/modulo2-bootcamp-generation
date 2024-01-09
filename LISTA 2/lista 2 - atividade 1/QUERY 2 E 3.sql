CREATE TABLE tb_personagens (
    id BIGINT PRIMARY KEY,
    id_classe INT,
    nome_personagem VARCHAR(255) NOT NULL,
    nivel INT,
    pontos_vida INT,
    arma_principal VARCHAR(255),
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

SELECT * FROM tb_personagens