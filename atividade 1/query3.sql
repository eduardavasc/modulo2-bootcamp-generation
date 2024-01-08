INSERT INTO tb_colaboradores(nome, data_de_nascimento, cargo, salario, conta_bancaria)
VALUES ("Maria Eduarda Vasconcelos","2000-09-16", "Desenvolvedora Jr.",4000,"Ag. 1234 Cc. 3455"),
("Carlos Silva Pereira","1995-03-22","Analista de Marketing",3500,"Ag. 5678 Cc. 9012"), 
("Ana Beatriz Oliveira","1988-11-05","Engenheira de Software Sênior",8000,"Ag. 4321 Cc. 7890"),
("Rafael Santos Lima","1992-07-12","Gerente de Projetos",6500,"Ag. 8765 Cc. 2345"),
("Juliana Costa Souza","1980-04-30","Analista Financeira",4500,"Ag. 2109 Cc. 6789");

SELECT * FROM tb_colaboradores;

UPDATE tb_colaboradores SET salario = 4000 WHERE Id = 1;