/*
Neste script são realizadas as seguintes tarefas:

	- Criar a tabela auxiliar 'base_posts'
	- Criar a tabela auxiliar 'base_videos_teoria'
	- Criar a tabela auxiliar 'base_videos_exercicios'
	- Criar a tabela auxiliar 'base_exercicios'
	- Criar a tabela auxiliar 'simulados'
	- Criar a tabela auxiliar 'base_log_reduzido

*/

-- Criar a tabela auxiliar 'base_posts'
DROP TABLE base_posts CASCADE;
CREATE TABLE base_posts AS
SELECT fd.course AS 'disciplina_id', p2.created AS 'data', f.name AS 'nome_forum', p2.id AS 'post', p2.parent, p2.userid AS 'emissor', p1.userid AS 'receptor'
FROM mdl_forum_posts p1
INNER JOIN mdl_forum_posts p2 ON  p1.id=p2.parent
INNER JOIN mdl_forum_discussions fd ON p1.discussion=fd.id
INNER JOIN mdl_forum f ON fd.forum=f.id
ORDER BY fd.course, p2.userid;

-- Criar a tabela auxiliar 'base_videos_teoria'
-- Antes de criar a tabela, devem ser ajustados os id das páginas das lições e o id da disciplina
DROP TABLE base_videos_teoria CASCADE;
CREATE TABLE base_videos_teoria AS
SELECT p.id AS id
FROM
(SELECT * FROM mdl_lesson WHERE course=185) l
INNER JOIN
(SELECT * FROM mdl_lesson_pages WHERE id in (596,597,606,612,616,619)) p
ON l.id=p.lessonid
ORDER BY id;

-- Criar a tabela auxiliar 'base_videos_exercicios'
-- Antes de criar a tabela, devem ser ajustados os id das páginas das lições e o id da disciplina
DROP TABLE base_videos_exercicios CASCADE;
CREATE TABLE base_videos_exercicios AS
SELECT p.id AS id
FROM
(SELECT * FROM mdl_lesson WHERE course=185) l
INNER JOIN
(SELECT * FROM mdl_lesson_pages WHERE id in (599,607,608,615,617,621)) p
ON l.id=p.lessonid
ORDER BY id;

-- Criar a tabela auxiliar 'base_exercicios'
-- Antes de criar a tabela, devem ser ajustados os id das páginas das lições e o id da disciplina
DROP TABLE base_exercicios CASCADE;
CREATE TABLE base_exercicios AS
SELECT p.id AS id
FROM
(SELECT * FROM mdl_lesson WHERE course=185) l
INNER JOIN
(SELECT * FROM mdl_lesson_pages WHERE id in(600,609,613,620)) p
ON l.id=p.lessonid
ORDER BY id;

-- Criar a tabela auxiliar 'base_log_reduzido
-- Antes de criar a tabela, deve ser ajustado o id da disciplina
DROP TABLE base_log_reduzido;
CREATE TABLE base_log_reduzido AS
SELECT @curRank := @curRank + 1 AS id,time, userid,course,module,action,info
	FROM
		(SELECT id,time, userid,course,module,action,info FROM mdl_log WHERE course=185 AND userid IN (SELECT estudante_id FROM base)
		UNION
		SELECT id,time, userid,course,module,action,info FROM mdl_log WHERE action='logout'  AND userid IN (SELECT estudante_id FROM base)
		UNION
		SELECT id,time, userid,course,module,action,info  FROM mdl_log  WHERE action='login'  AND userid IN (SELECT estudante_id FROM base)
		ORDER BY userid, time) l,
	(SELECT @curRank := 0) r
	ORDER BY userid,time;
