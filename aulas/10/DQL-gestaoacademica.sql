-- ____________________________________________
-- DQL - SELECT
-- _____________________________________________

-- __________________________________
# CONSULTAS BÁSICAS
-- __________________________________

-- Exemplo: Selecionar todos os alunos
SELECT * FROM Aluno;

-- SELECT
-- FROM
-- WHERE
-- ORDER BY

SELECT nome, cpf
FROM aluno;

SELECT nome, cpf 
FROM aluno  -- QUAL TABELA
WHERE matricula <> 5; -- diferente <>   WHERE QUAIS FILTROS VOU UTILIZAR

SELECT *
FROM aluno
WHERE matricula > 3
ORDER BY nome;   -- ORDENAÇÃO

-- OPERADORES MATEMÁTICOS E LÓGICOS:
SELECT * FROM disciplina;

SELECT Nome, Horas
FROM disciplina 
WHERE horas >= 40 AND horas <= 50;

-- ALIASES PARA MELHOR LEGIBILIDADE
SELECT nome AS nome_disciplina, horas AS carga_horaria
FROM disciplina;

-- Exiba da tabela professor, todos os professores por ordem alfabética
-- Onde o professor tenha ID maior do que 2 e menor do que 6
-- Não exibindo a especialização e mudando a coluna "Nome" para "Nome_Professor"
SELECT id, nome AS Nome_professor 
 FROM professor
 WHERE id > 2 AND id < 6
ORDER BY nome ASC;

-- Exemplo: Contar quantas disciplinas existem
SELECT COUNT(*) AS QuantidadeDeDisciplinas -- dentro do COUNT escreve a coluna 
FROM disciplina
WHERE horas <= 40;

-- Me informe quantas matrículas foram feitas no curso de ID 2

SELECT COUNT(curso_id) AS QuantidadeMatricula
FROM matricula
WHERE curso_id = 2;

-- Exemplo: Selecionar professor com especialização que envolva Tecnologia
SELECT *
FROM professor
WHERE especializacao LIKE '%tecnologia%';      -- LIKE como/parecido/ como se fosse















