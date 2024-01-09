INSERT INTO tb_personagens (id,nome_personagem, nivel, pontos_vida, arma_principal) VALUES
(1, 'Aragorn', 30, 150, 'Espada Bastarda'),
(2, 'Gandalf', 25, 120, 'Cajado Mágico'),
(3, 'Legolas', 28, 100, 'Arco Élfico'),
(4, 'Sombra', 22, 80, 'Adagas Envenenadas'),
(5, 'CuraDivina', 20, 90, 'Cajado Sagrado'),
(6, 'Thorin', 26, 130, 'Martelo Anão'),
(7, 'Artemis', 24, 110, 'Besta'),
(8, 'Merlin', 29, 140, 'Varinha Mágica');

SELECT * FROM tb_personagens;

ALTER TABLE tb_personagens
ADD COLUMN poder_ataque INT,
ADD COLUMN poder_defesa INT;

DELETE FROM tb_personagens;

INSERT INTO tb_personagens (id, nome_personagem, nivel, pontos_vida, poder_ataque, poder_defesa) VALUES
(1, 'Aragorn', 30, 150, 2200, 1200),
(2, 'Gandalf', 25, 120, 1800, 800),
(3, 'Legolas', 28, 100, 2000, 950),
(4, 'Sombra', 22, 80, 1500, 700),
(5, 'CuraDivina', 20, 90, 1200, 1800),
(6, 'Thorin', 26, 130, 1900, 1000),
(7, 'Artemis', 24, 110, 2100, 900),
(8, 'Merlin', 29, 140, 2300, 950);

DELETE FROM tb_personagens;

INSERT INTO tb_personagens (id, id_classe, nome_personagem, nivel, pontos_vida, poder_ataque, poder_defesa, arma_principal) VALUES
(1, 6, 'Aragorn', 30, 150, 2200, 1200, 'Espada Bastarda'),
(2, 7, 'Gandalf', 25, 120, 1800, 800, 'Cajado Mágico'),
(3, 8,  'Legolas', 28, 100, 2000, 950, 'Arco Élfico'),
(4,8, 'Sombra', 22, 80, 1500, 700, 'Adagas Envenenadas'),
(5,7,'CuraDivina', 20, 90, 1200, 1800, 'Cajado Sagrado'),
(6,8, 'Thorin', 26, 130, 1900, 1000, 'Martelo Anão'),
(7,9,'Artemis', 24, 110, 2100, 900, 'Besta'),
(8,9,'Merlin', 29, 140, 2300, 950, 'Varinha Mágica');
