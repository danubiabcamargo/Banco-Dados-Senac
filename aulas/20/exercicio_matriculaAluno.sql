-- Adicione na tabela gestacaoacademica.aluno a coluna "matriculado"

-- Crie uma transaction que, ao matricular um aluno em um curso mude a coluna
 -- matriculado para 'true';
 
 USE gestaoacademica;
 START TRANSACTION;
 
 SELECT * FROM aluno;
 
 ALTER TABLE aluno
 ADD matriculado VARCHAR(50);
 
 INSERT INTO matriculado (matricula, nome, cpf, matriculado) VALUES ();
