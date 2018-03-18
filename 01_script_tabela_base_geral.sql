/*
Neste script s�o realizadas as seguintes tarefas:
	- Criar a tabela 'base' com a rela��o de estudantes por disciplina
	- Povoar a tabela 'base' com a rela��o de estudantes por disciplina
*/

-- Criar a tabela 'base' com a rela��o de alunos por disciplina
DROP TABLE base CASCADE;
CREATE TABLE base (
	`id` INT (6) NOT NULL AUTO_INCREMENT,
	`disciplina_nome` VARCHAR (100),
	`disciplina_id` INT (5),
	`turma` VARCHAR (2),
	`data_inicio` INT (10),
	`data_final` INT (10),
	`estudante_id` INT (6),
	`estudante_cpf` VARCHAR (11),
	`estudante_nome` VARCHAR (100),
	PRIMARY KEY (`id`)
) CHARSET = utf8;

-- Povoar a tabela 'base' com a relação de alunos por disciplina
INSERT INTO base (`id`,`disciplina_nome`,`disciplina_id`,`turma`,`data_inicio`,
`data_final`,`estudante_id`,`estudante_cpf`,`estudante_nome`)
VALUES

--- Lista com os dados de todos os usuários (dados omitidos)
-- Primeiro usuário
('1','<<Nome da disciplina>>','<<id da disciplina>>','<<turma>>','<<timestamp do início>>','<<timestamp do início>>','<<id do estudante>>','<<cpf do estudante>>','<<nome do estudante>>'),
--- Lista com os dados de todos os usuários (omitida)
-- Último usuário
('n','<<Nome da disciplina>>','<<id da disciplina>>','<<turma>>','<<timestamp do início>>','<<timestamp do início>>','<<id do estudante>>','<<cpf do estudante>>','<<nome do estudante>>')
