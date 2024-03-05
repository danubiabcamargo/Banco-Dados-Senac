-- Selecionar todos os alunos
SELECT * FROM  aluno;

-- Selecionar apenas os nomes e CPFs dos alunos
SELECT nome,cpf FROM aluno;


-- Selecionar alunos matriculados após uma data específica
SELECT * FROM  DataMatricula
where 
DATA = '2024-01-10'; # NÃO CONSEGUI

-- Contar quantas disciplinas existem com carga horária maior que X
SELECT horas
 FROM disciplina
 WHERE horas >= 40;

-- Contar quantas matrículas existem para cada curso
SELECT id
FROM curso
# NÃO CONSEGUI

-- Contar quantas disciplinas cada professor leciona
SELECT COUNT(*) AS professores_disciplinas
FROM disciplina
 #NÃO CONSEGUI entender se precisa unir as duas tabelas

-- Combinar nome do aluno e data da matrícula
SELECT nome, matricula
FROM  aluno
INNER JOIN matricula ON Nome = DataMatricula;


-- Combinar nome do curso e nome do aluno
SELECT curso.nome as Nome_Curso, aluno.nome as Nome_Aluno
FROM curso
INNER JOIN aluno ON curso.id_aluno = aluno.id;
# NÃO CONSEGUI criar a relação dos dois

-- Contar quantos alunos se matricularam em cada curso
SELECT COUNT(*) AS MatriculasCurso
FROM  matricula
WHERE curso_id = curso_id;