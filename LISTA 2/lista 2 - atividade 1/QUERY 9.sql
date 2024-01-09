SELECT id_classe, nome_personagem, nivel, pontos_vida, poder_ataque, poder_defesa, arma_principal
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id;

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

SELECT tb_personagens.id AS id_personagem, id_classe, nome_personagem, nivel, pontos_vida, poder_ataque, poder_defesa, arma_principal, nome_classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.nome_classe = 'Arqueiro';
