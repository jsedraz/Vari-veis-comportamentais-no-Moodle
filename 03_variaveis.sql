/*
Neste script são realizadas as seguintes tarefas:
	- Criar o cabeçalho para o arquivo com o resultado da consulta
	- Definir as variáveis que serão utilizadas na análise
	- Junções que determinam os valores das variáveis para cada aluno
	- Salvar o resultado no arquivo c:/resultado_SRL.csv
*/

-- Criar o cabeçalho para o arquivo com o resultado da consulta
SELECT * FROM (
    SELECT
	'Nome da Disciplina',
	'ID da Disciplina',
	'Turma',
	'Data de Início',
	'Data de Final',
	'Nome do Estudante',
	'ID do Estudante',
	'CPF do Estudante',
	'VAR01',
	'VAR02',
	'VAR03',
	'VAR04',
	'VAR05',
	'VAR06',
	'VAR07',
	'VAR08',
	'VAR09',
	'VAR10',
	'VAR11',
	'VAR12',
	'VAR13',
	'VAR14',
	'VAR15',
	'VAR16',
	'VAR17',
--	'VAR18',
--	'VAR19',
--	'VAR20',
	'VAR21',
	'VAR22',
	'VAR23',
	'VAR24',
	'VAR25',
	'VAR26',
	'VAR27',
	'VAR28',
--	'VAR29',
--	'VAR30',
	'VAR31',
	'VAR32',
	'VAR33',
	'VAR34',
	'VAR35',
	'VAR36',
	'VAR37',
	'VAR38',
	'VAR39',
	'VAR40',
	'VAR41',
	'VAR42',
	'VAR43',
	'VAR44',
	'VAR45',
	'VAR46',
	'VAR47',
	'VAR48',
	'VAR49',
	'VAR50',
	'VAR51',
	'VAR52',
	'VAR53',
	'VAR54',
	'SIM01',
	'SIM02',
	'SIM03',
	'SIM04',
	'SIM05',
	'SIM06'

UNION ALL(


-- Definir as variáveis que serão utilizadas na análise
SELECT
base.disciplina_nome AS 'Nome da Disciplina',
base.disciplina_id AS 'ID da Disciplina',
base.turma AS 'Turma',
base.data_inicio AS 'Data de Início',
base.data_final AS 'Data de Final',
base.estudante_nome AS 'Nome do Estudante',
base.estudante_id AS 'ID do Estudante',
base.estudante_cpf AS 'CPF do Estudante',
IFNULL(VAR01.VAR01,0) AS 'VAR01',
IFNULL(VAR02.VAR02,0) AS 'VAR02',
IFNULL(VAR03.VAR03,0) AS 'VAR03',
IFNULL(VAR04.VAR04,0) AS 'VAR04',
IFNULL(VAR05.VAR05,0) AS 'VAR05',
IFNULL(VAR06.VAR06,0) AS 'VAR06',
IFNULL(VAR07.VAR07,0) AS 'VAR07',
IFNULL(VAR08.VAR08,0) AS 'VAR08',
IFNULL(VAR09.VAR09,0) AS 'VAR09',
IFNULL(VAR10.VAR10,0) AS 'VAR10',
IFNULL(VAR11.VAR11,0) AS 'VAR11',
IFNULL(VAR12.VAR12,0) AS 'VAR12',
IFNULL(VAR13.VAR13,0) AS 'VAR13',
IFNULL(VAR14.VAR14,0) AS 'VAR14',
IFNULL(VAR15.VAR15,0) AS 'VAR15',
IFNULL(VAR16.VAR16,0) AS 'VAR16',
IFNULL(VAR17.VAR17,0) AS 'VAR17',
-- IFNULL(VAR18.VAR18,0) AS 'VAR18',
-- IFNULL(VAR19.VAR19,0) AS 'VAR19',
-- IFNULL(VAR20.VAR20,0) AS 'VAR20',
IFNULL(VAR21.VAR21,0) AS 'VAR21',
IFNULL(VAR22.VAR22,0) AS 'VAR22',
IFNULL(VAR23.VAR23,0) AS 'VAR23',
IFNULL(VAR24.VAR24,0) AS 'VAR24',
IFNULL(VAR25.VAR25,0) AS 'VAR25',
IFNULL(VAR26.VAR26,0) AS 'VAR26',
IFNULL(VAR27.VAR27,0) AS 'VAR27',
IFNULL(VAR28.VAR28,0) AS 'VAR28',
-- IFNULL(VAR29.VAR29,0) AS 'VAR29',
-- IFNULL(VAR30.VAR30,0) AS 'VAR30',
IFNULL(VAR31.VAR31,0) AS 'VAR31',
IFNULL(VAR32.VAR32,0) AS 'VAR32',
IFNULL(VAR33.VAR33,0) AS 'VAR33',
IFNULL(VAR34.VAR34,0) AS 'VAR34',
IFNULL(VAR35.VAR35,0) AS 'VAR35',
IFNULL(VAR36.VAR36,0) AS 'VAR36',
IFNULL(VAR37.VAR37,0) AS 'VAR37',
IFNULL(VAR38.VAR38,0) AS 'VAR38',
IFNULL(VAR39.VAR39,0) AS 'VAR39',
IFNULL(VAR40.VAR40,0) AS 'VAR40',
IFNULL(VAR41.VAR41,0) AS 'VAR41',
IFNULL(VAR42.VAR42,0) AS 'VAR42',
IFNULL(VAR43.VAR43,0) AS 'VAR43',
IFNULL(VAR44.VAR44,0) AS 'VAR44',
IFNULL(VAR45.VAR45,0) AS 'VAR45',
IFNULL(VAR46.VAR46,0) AS 'VAR46',
IFNULL(VAR47.VAR47,0) AS 'VAR47',
IFNULL(VAR48.VAR48,0) AS 'VAR48',
IFNULL(VAR49.VAR49,0) AS 'VAR49',
IFNULL(VAR50.VAR50,0) AS 'VAR50',
IFNULL(VAR51.VAR51,0) AS 'VAR51',
IFNULL(VAR52.VAR52,0) AS 'VAR52',
IFNULL(VAR53.VAR53,0) AS 'VAR53',
IFNULL(VAR54.VAR54,0) AS 'VAR54',
IFNULL(SIM01.SIM01,0) AS 'SIM01',
IFNULL(SIM02.SIM02,0) AS 'SIM02',
IFNULL(SIM03.SIM03,0) AS 'SIM03',
IFNULL(SIM04.SIM04,0) AS 'SIM04',
IFNULL(SIM05.SIM05,0) AS 'SIM05',
IFNULL(SIM06.SIM06,0) AS 'SIM06'



-- Junções que determinam os valores das variáveis para cada aluno
FROM

(SELECT * FROM base) AS base

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR01 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT b.disciplina_id, b.estudante_id, count(*) AS 'VAR01'
	FROM mdl_message_read r
	INNER JOIN base b ON b.estudante_id=r.useridfrom AND r.timecreated BETWEEN b.data_inicio and b.data_final
	AND r.useridto IN (SELECT estudante_id FROM base)
	GROUP BY b.disciplina_id, b.estudante_id) AS VAR01
	ON VAR01.disciplina_id = base.disciplina_id AND VAR01.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR02 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT b.disciplina_id, b.estudante_id, count(*) AS 'VAR02'
	FROM mdl_message_read r
	INNER JOIN base b ON b.estudante_id=r.useridto AND r.timecreated BETWEEN b.data_inicio and b.data_final
	AND r.useridfrom IN (SELECT estudante_id FROM base)
	GROUP BY b.disciplina_id, b.estudante_id) AS VAR02
	ON VAR02.disciplina_id = base.disciplina_id AND VAR02.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR03 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT temp.disciplina_id, temp.estudante_id, count(*) AS 'VAR03'
	FROM(SELECT b.disciplina_id, b.estudante_id, r.useridto, count(*) AS 'VAR03_temp'
	FROM mdl_message_read r
	INNER JOIN base b ON b.estudante_id=r.useridfrom AND r.timecreated BETWEEN b.data_inicio and b.data_final
	AND r.useridto IN (SELECT estudante_id FROM base)
	GROUP BY b.disciplina_id, b.estudante_id,r.useridto ) AS temp
	GROUP BY temp.disciplina_id, temp.estudante_id) AS VAR03
	ON VAR03.disciplina_id = base.disciplina_id AND VAR03.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR04 <<<<<<<<< */
-- Antes de criar a tabela, devem ser ajustados os id dos usuários
LEFT OUTER JOIN
	(SELECT b.disciplina_id, b.estudante_id, count(*) AS 'VAR04'
	FROM mdl_message_read r
	INNER JOIN base b ON b.estudante_id=r.useridfrom AND r.timecreated BETWEEN b.data_inicio and b.data_final
	AND r.useridto IN (24,10870,12430)
	GROUP BY b.disciplina_id, b.estudante_id) AS VAR04
	ON VAR04.disciplina_id = base.disciplina_id AND VAR04.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR05 <<<<<<<<< */
-- Antes de criar a tabela, devem ser ajustados os id dos usuários
LEFT OUTER JOIN
	(SELECT b.disciplina_id, b.estudante_id, count(*) AS 'VAR05'
	FROM mdl_message_read r
	INNER JOIN base b ON b.estudante_id=r.useridto AND r.timecreated BETWEEN b.data_inicio and b.data_final
	AND r.useridfrom IN (24,10870,12430)
	GROUP BY b.disciplina_id, b.estudante_id) AS VAR05
	ON VAR05.disciplina_id = base.disciplina_id AND VAR05.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR06 <<<<<<<<< */
-- Antes de criar a tabela, devem ser ajustados os termo referentes ao fórum
LEFT OUTER JOIN
	(SELECT b.disciplina_id, b.estudante_id, count(*) AS 'VAR06'
	FROM mdl_forum_posts p
	INNER JOIN mdl_forum_discussions d ON (d.id = p.discussion)
	INNER JOIN mdl_forum f ON d.forum=f.id
	INNER JOIN base b ON b.disciplina_id=d.course AND b.estudante_id=p.userid AND p.created BETWEEN b.data_inicio and b.data_final
	WHERE p.parent=0 AND (f.name LIKE '%duvida%' OR f.name LIKE '%dúvida%')
	GROUP BY b.disciplina_id, b.estudante_id) AS VAR06
	ON VAR06.disciplina_id = base.disciplina_id AND VAR06.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR07 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT p1.disciplina_id, emissor, count(*) AS 'VAR07'
	FROM base_posts p1
	INNER JOIN base b ON b.disciplina_id=p1.disciplina_id AND b.estudante_id=p1.emissor AND p1.data BETWEEN b.data_inicio and b.data_final
	INNER JOIN (SELECT estudante_id,disciplina_id FROM base) p2 ON p2.disciplina_id=p1.disciplina_id  AND p2.estudante_id=p1.receptor AND emissor=receptor
	GROUP BY p1.disciplina_id, emissor) AS VAR07
	ON VAR07.disciplina_id = base.disciplina_id AND VAR07.emissor = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR08 <<<<<<<<< */
-- Antes de criar a tabela, devem ser ajustados os id dos usuários
LEFT OUTER JOIN
	(SELECT p1.disciplina_id,emissor, count(*) AS 'VAR08'
	FROM base_posts p1
	INNER JOIN base b ON b.disciplina_id=p1.disciplina_id AND b.estudante_id=p1.emissor AND p1.data BETWEEN b.data_inicio and b.data_final
	AND p1.receptor IN (24,10870,12430)
	GROUP BY p1.disciplina_id, emissor) AS VAR08
	ON VAR08.disciplina_id = base.disciplina_id AND VAR08.emissor = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR09 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT p1.disciplina_id,emissor, count(*) AS 'VAR09'
	FROM base_posts p1
	INNER JOIN base b ON b.disciplina_id=p1.disciplina_id AND b.estudante_id=p1.emissor AND p1.data BETWEEN b.data_inicio and b.data_final
	AND p1.receptor IN (SELECT estudante_id FROM base)
	GROUP BY p1.disciplina_id, emissor) AS VAR09
	ON VAR09.disciplina_id = base.disciplina_id AND VAR09.emissor = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR10 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT p1.disciplina_id,receptor, count(*) AS 'VAR10'
	FROM (SELECT * FROM base_posts WHERE emissor IN (24,10870,12430) AND receptor IN (SELECT estudante_id FROM base)) p1
	INNER JOIN base b ON b.disciplina_id=p1.disciplina_id AND b.estudante_id=p1.receptor AND p1.data BETWEEN b.data_inicio and b.data_final
	GROUP BY p1.disciplina_id, receptor) AS VAR10
	ON VAR10.disciplina_id = base.disciplina_id AND VAR10.receptor = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR11 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT p1.disciplina_id,receptor, count(*) AS 'VAR11'
	FROM (SELECT * FROM base_posts WHERE emissor IN (SELECT estudante_id FROM base) AND receptor IN (SELECT estudante_id FROM base)) p1
	INNER JOIN base b ON b.disciplina_id=p1.disciplina_id AND b.estudante_id=p1.receptor AND p1.data BETWEEN b.data_inicio and b.data_final
	GROUP BY p1.disciplina_id, receptor) AS VAR11
	ON VAR11.disciplina_id = base.disciplina_id AND VAR11.receptor = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR12 <<<<<<<<< */
-- Antes de criar a tabela, devem ser ajustados os termo referentes ao fórum
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, module,count(*) AS 'VAR12'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE (module='forum' AND action='view forum' AND course=185 AND info=2510)) l
	ON b.disciplina_id=l.course AND b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR12
	ON VAR12.disciplina_id = base.disciplina_id AND VAR12.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR13 <<<<<<<<< */
-- Antes de criar a tabela, devem ser ajustados os termo referentes ao fórum
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, module,count(*) AS 'VAR13'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE (module='forum' AND action='view discussion')) l
	ON b.disciplina_id=l.course AND b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	INNER JOIN mdl_forum_discussions t ON l.info=t.id WHERE t.forum=2510
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR13
	ON VAR13.disciplina_id = base.disciplina_id AND VAR13.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR14 <<<<<<<<< */
-- Antes de criar a tabela, devem ser ajustados os termo referentes ao fórum
LEFT OUTER JOIN
	(SELECT temp.disciplina_id,temp.estudante_id, count(*) AS VAR14
    FROM
    (SELECT b.disciplina_id,b.estudante_id, module,t.id
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE (module='forum' AND action='view discussion')) l
	ON b.disciplina_id=l.course AND b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	INNER JOIN mdl_forum_discussions t ON l.info=t.id WHERE t.forum=2510
	GROUP BY b.disciplina_id,b.estudante_id,t.id) temp
    GROUP BY temp.disciplina_id,temp.estudante_id) AS VAR14
	ON VAR14.disciplina_id = base.disciplina_id AND VAR14.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR15 <<<<<<<<< */
-- Antes de criar a tabela, devem ser ajustados os termo referentes ao fórum e a disciplina
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, module,count(*) AS 'VAR15'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE (module='forum' AND action='view forum' AND course=185 AND info=304)) l
	ON b.disciplina_id=l.course AND b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR15
	ON VAR15.disciplina_id = base.disciplina_id AND VAR15.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR16 <<<<<<<<< */
-- Antes de criar a tabela, devem ser ajustados os termo referentes ao fórum
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, module,count(*) AS 'VAR16'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE (module='forum' AND action='view discussion')) l
	ON b.disciplina_id=l.course AND b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	INNER JOIN mdl_forum_discussions t ON l.info=t.id WHERE t.forum=304
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR16
	ON VAR16.disciplina_id = base.disciplina_id AND VAR16.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR17 <<<<<<<<< */
-- Antes de criar a tabela, devem ser ajustados os termo referentes ao fórum
LEFT OUTER JOIN
	(SELECT temp.disciplina_id,temp.estudante_id, count(*) AS VAR17
    FROM
    (SELECT b.disciplina_id,b.estudante_id, module,t.id
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE (module='forum' AND action='view discussion')) l
	ON b.disciplina_id=l.course AND b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	INNER JOIN mdl_forum_discussions t ON l.info=t.id WHERE t.forum=304
	GROUP BY b.disciplina_id,b.estudante_id,t.id) temp
    GROUP BY temp.disciplina_id,temp.estudante_id) AS VAR17
	ON VAR17.disciplina_id = base.disciplina_id AND VAR17.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR18 <<<<<<<<< */


/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR19 <<<<<<<<< */


/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR20 <<<<<<<<< */


/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR21 <<<<<<<<< */
-- Antes de criar a tabela, devem ser ajustados os termo referentes ao id da disciplina e aos id dos recursos
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, module,count(*) AS 'VAR21'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE (module='resource' AND action='view' AND course=185)) l
	ON b.disciplina_id=l.course AND b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	INNER JOIN (SELECT * FROM mdl_resource WHERE course=185 AND id in (17022, 17046,17074, 17167)) r
	ON r.id=l.info
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR21
	ON VAR21.disciplina_id = base.disciplina_id AND VAR21.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR22 <<<<<<<<< */
-- Antes de criar a tabela, devem ser ajustados os termo referentes ao id da disciplina e aos id dos recursos
LEFT OUTER JOIN
	(SELECT temp.disciplina_id,temp.estudante_id, count(*) AS VAR22
    FROM
	(SELECT b.disciplina_id,b.estudante_id, module,r.id
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE (module='resource' AND action='view' AND course=185)) l
	ON b.disciplina_id=l.course AND b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	INNER JOIN (SELECT * FROM mdl_resource WHERE course=185 AND id in (17022, 17046,17074, 17167)) r
	ON r.id=l.info
	GROUP BY b.disciplina_id,b.estudante_id,r.id) temp
	GROUP BY temp.disciplina_id,temp.estudante_id) AS VAR22
	ON VAR22.disciplina_id = base.disciplina_id AND VAR22.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR23 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, module,count(*) AS 'VAR23'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE (module='lesson' AND action='view' AND info IN (SELECT * FROM base_videos_teoria))) l
	ON b.disciplina_id=l.course AND b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR23
	ON VAR23.disciplina_id = base.disciplina_id AND VAR23.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR24 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT userid,course,ROUND(SUM(intervalo)/3600,2) AS VAR24
	FROM
	(SELECT a.id,a.userid,a.course,a.info, (cast(b.time as signed) - cast(a.time as signed)) AS intervalo
	FROM base_log_reduzido a
	INNER JOIN base_log_reduzido b ON b.id=a.id+1
	WHERE a.userid=b.userid AND b.action NOT LIKE 'login' AND b.action NOT LIKE 'mail error' AND
	a.course=185 AND a.module='lesson' AND a.action='view' AND a.info IN (SELECT * FROM base_videos_teoria)) temp
	WHERE intervalo<3000
	GROUP BY course,userid) AS VAR24
	ON VAR24.course = base.disciplina_id AND VAR24.userid = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR25 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT temp.disciplina_id,temp.estudante_id, count(*) AS VAR25
    FROM
	(SELECT b.disciplina_id,b.estudante_id, module,l.info
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE (module='lesson' AND action='view' AND info IN (SELECT * FROM base_videos_exercicios))) l
	ON b.disciplina_id=l.course AND b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id,l.info) temp
	GROUP BY temp.disciplina_id,temp.estudante_id) AS VAR25
	ON VAR25.disciplina_id = base.disciplina_id AND VAR25.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR26 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, module,count(*) AS 'VAR26'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE (module='lesson' AND action='view' AND info IN (SELECT * FROM base_videos_exercicios))) l
	ON b.disciplina_id=l.course AND b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR26
	ON VAR26.disciplina_id = base.disciplina_id AND VAR26.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR27 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT userid,course,ROUND(SUM(intervalo)/3600,2) AS VAR27
	FROM
	(SELECT a.id,a.userid,a.course,a.info, (cast(b.time as signed) - cast(a.time as signed)) AS intervalo
	FROM base_log_reduzido a
	INNER JOIN base_log_reduzido b ON b.id=a.id+1
	WHERE a.userid=b.userid AND b.action NOT LIKE 'login' AND b.action NOT LIKE 'mail error' AND
	a.course=185 AND a.module='lesson' AND a.action='view' AND a.info IN (SELECT * FROM base_videos_exercicios)) temp
	WHERE intervalo<3000
	GROUP BY course,userid) AS VAR27
	ON VAR27.course = base.disciplina_id AND VAR27.userid = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR28 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT temp.disciplina_id,temp.estudante_id, count(*) AS VAR28
    FROM
	(SELECT b.disciplina_id,b.estudante_id, module,l.info
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE (module='lesson' AND action='view' AND info IN (SELECT * FROM base_videos_exercicios))) l
	ON b.disciplina_id=l.course AND b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id,l.info) temp
	GROUP BY temp.disciplina_id,temp.estudante_id) AS VAR28
	ON VAR28.disciplina_id = base.disciplina_id AND VAR28.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR29 <<<<<<<<< */


/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR30 <<<<<<<<< */


/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR31 <<<<<<<<< */
-- Antes de criar a tabela, deve ser ajustado o id da disciplina
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, module,count(*) AS 'VAR31'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE (module='resource' AND action='view' AND course=185)) l
	ON b.disciplina_id=l.course AND b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	INNER JOIN (SELECT * FROM mdl_resource WHERE course=185 AND type='file' AND summary LIKE '%Exercícios%') r
	ON r.id=l.info
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR31
	ON VAR31.disciplina_id = base.disciplina_id AND VAR31.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR32 <<<<<<<<< */
-- Antes de criar a tabela, deve ser ajustado o id da disciplina
LEFT OUTER JOIN
	(SELECT temp.disciplina_id,temp.estudante_id, count(*) AS VAR32
    FROM
	(SELECT b.disciplina_id,b.estudante_id, module,r.id
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE (module='resource' AND action='view' AND course=185)) l
	ON b.disciplina_id=l.course AND b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	INNER JOIN (SELECT * FROM mdl_resource WHERE course=185 AND type='file' AND summary LIKE '%Exercícios%') r
	ON r.id=l.info
	GROUP BY b.disciplina_id,b.estudante_id,r.id) temp
	GROUP BY temp.disciplina_id,temp.estudante_id) AS VAR32
	ON VAR32.disciplina_id = base.disciplina_id AND VAR32.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR33 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, module,count(*) AS 'VAR33'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE (module='lesson' AND action='view' AND info IN (SELECT * FROM base_exercicios))) l
	ON b.disciplina_id=l.course AND b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR33
	ON VAR33.disciplina_id = base.disciplina_id AND VAR33.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR34 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT temp.disciplina_id,temp.estudante_id, count(*) AS VAR34
    FROM
	(SELECT b.disciplina_id,b.estudante_id, module,l.info
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE (module='lesson' AND action='view' AND info IN (SELECT * FROM base_exercicios))) l
	ON b.disciplina_id=l.course AND b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id,l.info) temp
	GROUP BY temp.disciplina_id,temp.estudante_id) AS VAR34
	ON VAR34.disciplina_id = base.disciplina_id AND VAR34.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR35 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT temp.disciplina_id,temp.estudante_id, count(*) AS VAR35
    FROM
	(SELECT b.disciplina_id,b.estudante_id,l.pageid
	FROM base b
	INNER JOIN (SELECT * FROM mdl_lesson_attempts WHERE (correct=1 AND pageid IN (SELECT * FROM base_exercicios))) l
	ON b.estudante_id=l.userid AND l.timeseen BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id,l.pageid) temp
	GROUP BY temp.disciplina_id,temp.estudante_id) AS VAR35
	ON VAR35.disciplina_id = base.disciplina_id AND VAR35.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR36 <<<<<<<<< */
-- Antes de criar a tabela, devem ser ajustados os termos referentes ao id da disciplina e aos recursos
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, module,count(*) AS 'VAR36'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE (module='resource' AND action='view' AND course=185)) l
	ON b.disciplina_id=l.course AND b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	INNER JOIN (SELECT * FROM mdl_resource WHERE course=185 AND type='file' AND summary LIKE '%1ª Prova%') r
	ON r.id=l.info
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR36
	ON VAR36.disciplina_id = base.disciplina_id AND VAR36.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR37 <<<<<<<<< */
-- Antes de criar a tabela, devem ser ajustados os termos referentes ao id da disciplina e aos recursos
LEFT OUTER JOIN
	(SELECT temp.disciplina_id,temp.estudante_id, count(*) AS VAR37
    FROM
	(SELECT b.disciplina_id,b.estudante_id, module,r.id
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE (module='resource' AND action='view' AND course=185)) l
	ON b.disciplina_id=l.course AND b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	INNER JOIN (SELECT * FROM mdl_resource WHERE course=185 AND type='file' AND summary LIKE '%1ª Prova%') r
	ON r.id=l.info
	GROUP BY b.disciplina_id,b.estudante_id,r.id) temp
	GROUP BY temp.disciplina_id,temp.estudante_id) AS VAR37
	ON VAR37.disciplina_id = base.disciplina_id AND VAR37.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR38 <<<<<<<<< */
-- Antes de criar a tabela, deve ser ajustado o id da disciplina
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, module,count(*) AS 'VAR38'
	FROM base b
	INNER JOIN (SELECT * FROM moodle.mdl_log where course=185 AND module='quiz' AND action IN ('continue attemp','attemp')) l
	ON b.disciplina_id=l.course AND b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR38
	ON VAR38.disciplina_id = base.disciplina_id AND VAR38.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR39 <<<<<<<<< */
-- Antes de criar a tabela, deve ser ajustado o id da disciplina
LEFT OUTER JOIN
	(SELECT temp.disciplina_id,temp.estudante_id, count(*) AS VAR39
	FROM
	(SELECT b.disciplina_id,b.estudante_id, DATE(FROM_UNIXTIME(time)) AS data
	FROM base b
	INNER JOIN (SELECT * FROM moodle.mdl_log where course=185 AND module='quiz' AND action IN ('continue attemp','attemp')) l
	ON b.disciplina_id=l.course AND b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id, data) temp
	GROUP BY temp.disciplina_id,temp.estudante_id) AS VAR39
	ON  VAR39.estudante_id = base.estudante_id AND VAR39.disciplina_id = base.disciplina_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR40 <<<<<<<<< */
-- Antes de criar a tabela, deve ser ajustado o id da disciplina
LEFT OUTER JOIN
	(SELECT temp.disciplina_id, temp.estudante_id,ROUND(AVG(temp.tempo)/(3600*24),2) AS 'VAR40' FROM
	(SELECT b.disciplina_id,b.estudante_id, q.id AS quiz, SUM(q.timeclose-a.timestart) AS tempo
	FROM (SELECT * FROM mdl_quiz where course=185) q
	INNER JOIN (SELECT * FROM mdl_quiz_attempts) a ON q.id=a.quiz
	INNER JOIN base b ON b.estudante_id=a.userid AND a.timestart BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id,quiz) temp
	GROUP BY temp.disciplina_id, temp.estudante_id) AS VAR40
	ON  VAR40.estudante_id = base.estudante_id AND VAR40.disciplina_id = base.disciplina_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR41 <<<<<<<<< */
-- Antes de criar a tabela, deve ser ajustado o id da disciplina
LEFT OUTER JOIN
	(SELECT temp.disciplina_id, temp.estudante_id,ROUND(AVG(temp.tempo)/(3600*24),2) AS 'VAR41' FROM
	(SELECT b.disciplina_id,b.estudante_id, q.id AS quiz, SUM(a.timefinish-a.timestart) AS tempo
	FROM (SELECT * FROM mdl_quiz where course=185) q
	INNER JOIN (SELECT * FROM mdl_quiz_attempts where timefinish>0) a ON q.id=a.quiz
	INNER JOIN base b ON b.estudante_id=a.userid AND a.timestart BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id,quiz) temp
	GROUP BY temp.disciplina_id, temp.estudante_id) AS VAR41
	ON  VAR41.estudante_id = base.estudante_id AND VAR41.disciplina_id = base.disciplina_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR42 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, count(*) AS 'VAR42'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE action='login' AND HOUR(FROM_UNIXTIME(time)) >= 6 AND HOUR(FROM_UNIXTIME(time)) < 12) l
	ON b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR42
	ON  VAR42.estudante_id = base.estudante_id AND VAR42.disciplina_id = base.disciplina_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR43 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, count(*) AS 'VAR43'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE action='login' AND HOUR(FROM_UNIXTIME(time)) >= 12 AND HOUR(FROM_UNIXTIME(time)) < 18) l
	ON b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR43
	ON  VAR43.estudante_id = base.estudante_id AND VAR43.disciplina_id = base.disciplina_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR44 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, count(*) AS 'VAR44'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE action='login' AND HOUR(FROM_UNIXTIME(time)) >= 18 AND HOUR(FROM_UNIXTIME(time)) < 24) l
	ON b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR44
	ON  VAR44.estudante_id = base.estudante_id AND VAR44.disciplina_id = base.disciplina_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR45 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, count(*) AS 'VAR45'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE action='login' AND HOUR(FROM_UNIXTIME(time)) >= 0 AND HOUR(FROM_UNIXTIME(time)) < 6) l
	ON b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR45
	ON  VAR45.estudante_id = base.estudante_id AND VAR45.disciplina_id = base.disciplina_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR46 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, count(*) AS 'VAR46'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE action='login' AND DAYOFWEEK(FROM_UNIXTIME(time))=1) l
	ON b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR46
	ON  VAR46.estudante_id = base.estudante_id AND VAR46.disciplina_id = base.disciplina_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR47 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, count(*) AS 'VAR47'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE action='login' AND DAYOFWEEK(FROM_UNIXTIME(time))=2) l
	ON b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR47
	ON  VAR47.estudante_id = base.estudante_id AND VAR47.disciplina_id = base.disciplina_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR48 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, count(*) AS 'VAR48'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE action='login' AND DAYOFWEEK(FROM_UNIXTIME(time))=3) l
	ON b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR48
	ON  VAR48.estudante_id = base.estudante_id AND VAR48.disciplina_id = base.disciplina_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR49 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, count(*) AS 'VAR49'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE action='login' AND DAYOFWEEK(FROM_UNIXTIME(time))=4) l
	ON b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR49
	ON  VAR49.estudante_id = base.estudante_id AND VAR49.disciplina_id = base.disciplina_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR50 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, count(*) AS 'VAR50'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE action='login' AND DAYOFWEEK(FROM_UNIXTIME(time))=5) l
	ON b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR50
	ON  VAR50.estudante_id = base.estudante_id AND VAR50.disciplina_id = base.disciplina_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR51 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, count(*) AS 'VAR51'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE action='login' AND DAYOFWEEK(FROM_UNIXTIME(time))=6) l
	ON b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR51
	ON  VAR51.estudante_id = base.estudante_id AND VAR51.disciplina_id = base.disciplina_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR52 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, count(*) AS 'VAR52'
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE action='login' AND DAYOFWEEK(FROM_UNIXTIME(time))=7) l
	ON b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id) AS VAR52
	ON  VAR52.estudante_id = base.estudante_id AND VAR52.disciplina_id = base.disciplina_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR53 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT temp.disciplina_id,temp.estudante_id, count(*) AS VAR53
	FROM
	(SELECT b.disciplina_id,b.estudante_id, DATE(FROM_UNIXTIME(time)) AS data
	FROM base b
	INNER JOIN (SELECT * FROM mdl_log WHERE action='login') l
	ON b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id, data) temp
	GROUP BY temp.disciplina_id,temp.estudante_id) AS VAR53
	ON  VAR53.estudante_id = base.estudante_id AND VAR53.disciplina_id = base.disciplina_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL VAR54 <<<<<<<<< */
LEFT OUTER JOIN
	(SELECT temp.disciplina_id,temp.estudante_id, count(*) AS 'VAR54'
	FROM (SELECT b.disciplina_id,b.estudante_id, SUBSTRING_INDEX(ip,'.',3) AS ip_reduzido, count(*) AS 'Num_Acesso_IP'
	FROM (SELECT * FROM mdl_log WHERE action='login') l
	INNER JOIN base b
	ON b.estudante_id=l.userid AND l.time BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id,b.estudante_id,ip_reduzido) AS temp
	GROUP BY temp.disciplina_id, temp.estudante_id) AS VAR54
	ON VAR54.disciplina_id = base.disciplina_id AND VAR54.estudante_id = base.estudante_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL SIM01 <<<<<<<<< */
-- Antes de criar a tabela, deve ser ajustado o id do quiz
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, q.sumgrades/10 AS 'SIM01'
	FROM (SELECT * FROM mdl_quiz_attempts where quiz=532) q
	INNER JOIN base b ON b.estudante_id=q.userid AND q.timestart BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id, b.estudante_id, SIM01) AS SIM01
	ON  SIM01.estudante_id = base.estudante_id AND SIM01.disciplina_id = base.disciplina_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL SIM02 <<<<<<<<< */
-- Antes de criar a tabela, deve ser ajustado o id do quiz
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, q.sumgrades/10 AS 'SIM02'
	FROM (SELECT * FROM mdl_quiz_attempts where quiz=533) q
	INNER JOIN base b ON b.estudante_id=q.userid AND q.timestart BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id, b.estudante_id, SIM02) AS SIM02
	ON  SIM02.estudante_id = base.estudante_id AND SIM02.disciplina_id = base.disciplina_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL SIM03 <<<<<<<<< */
-- Antes de criar a tabela, deve ser ajustado o id do quiz
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, q.sumgrades/10 AS 'SIM03'
	FROM (SELECT * FROM mdl_quiz_attempts where quiz=534) q
	INNER JOIN base b ON b.estudante_id=q.userid AND q.timestart BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id, b.estudante_id, SIM03) AS SIM03
	ON  SIM03.estudante_id = base.estudante_id AND SIM03.disciplina_id = base.disciplina_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL SIM04 <<<<<<<<< */
-- Antes de criar a tabela, deve ser ajustado o id do quiz
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, q.sumgrades/5 AS 'SIM04'
	FROM (SELECT * FROM mdl_quiz_attempts where quiz=535) q
	INNER JOIN base b ON b.estudante_id=q.userid AND q.timestart BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id, b.estudante_id, SIM04) AS SIM04
	ON  SIM04.estudante_id = base.estudante_id AND SIM04.disciplina_id = base.disciplina_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL SIM05 <<<<<<<<< */
-- Antes de criar a tabela, deve ser ajustado o id do quiz
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, q.sumgrades/5 AS 'SIM05'
	FROM (SELECT * FROM mdl_quiz_attempts where quiz=536) q
	INNER JOIN base b ON b.estudante_id=q.userid AND q.timestart BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id, b.estudante_id, SIM05) AS SIM05
	ON  SIM05.estudante_id = base.estudante_id AND SIM05.disciplina_id = base.disciplina_id

/* >>>>>>>> ESPAÇO DA VARIÁVEL SIM06 <<<<<<<<< */
-- Antes de criar a tabela, deve ser ajustado o id do quiz
LEFT OUTER JOIN
	(SELECT b.disciplina_id,b.estudante_id, q.sumgrades/6 AS 'SIM06'
	FROM (SELECT * FROM mdl_quiz_attempts where quiz=537) q
	INNER JOIN base b ON b.estudante_id=q.userid AND q.timestart BETWEEN b.data_inicio and b.data_final
	GROUP BY b.disciplina_id, b.estudante_id, SIM06) AS SIM06
	ON  SIM06.estudante_id = base.estudante_id AND SIM06.disciplina_id = base.disciplina_id

-- Salvar o resultado no arquivo c:/resultado_experimento.csv
)
) resulting_set
INTO OUTFILE 'c:/resultado_experimento.csv'
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
