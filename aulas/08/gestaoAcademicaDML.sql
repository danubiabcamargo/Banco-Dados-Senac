-- DML (INSERT - UPDATE - DELETE)
USE gestaoacademica;

-- inserindo novo aluno no banco de dados
INSERT INTO aluno (Matricula,Nome, cpf_aluno) values 
(4, 'Laryssa Camargo' , '45135213'),  
(5, 'Dayane Camargo' , '123335213'),  
(6, 'Danubia Camargo' , '43235213');  

select * from aluno;

--  Insira os cursos Ciência da Computação, Engenharia Civil, Administração, Medicina e Arquitetura na tabela 
-- gestaoacademica.curso

USE gestaoacademica;
INSERT INTO curso (Id,Nome) values
('1','Ciência da Computação'),
('2','Engenharia Civil'),
('3','Administração'),
('4','Medicina'),
('5','Arquitetura');

-- select para executar e verificar a tabela
select * from curso;

-- Cadastre o aluno de ID 1 nos cursos de ID 3 e 5.
-- Cadastre o aluno ID 2 nos cursos de ID 2 e 4.
-- Cadastre o aluno ID 3 nos cursos de ID 2 e 5.
-- Para cadastrar uma data, use o fomato '2024-02-23'

select * from matricula;

INSERT INTO matricula (Aluno_ID, Curso_ID, Data_Matricula) values
(3,5,'2024-02-19');


select * from professor;
-- Cadastre 5 professores e 3 disciplinas
-- Associe cada professor a ao menos uma disciplina

INSERT INTO professor (Id, Nome, Especializacao) values
-- alterar especializacao no UPDATE
	(1,'Pedro', 'Inteligência Artificial'),
	(2,'Laryssa', 'Saúde'),
	(3,'Domenica', 'Matemática Avançada'),
	(4,'Valentina', 'Matemática Básica'),
	(5,'Marcos', 'Historiadora');


select * from disciplina;
INSERT INTO disciplina (Id,Nome,horas) values
-- ALTERAR NO UPDATE APÓS O PROFESSOR EXPLICAR O QUE SIGNIFICA
	(1,'Tecnologia', 100),
	(2,'Obstetricia', '120'),
	(3,'Matemática Aplicada', '115'),
	(4,'Física', '900'),
	(5,'História', '300');

select * from professor_disciplina;
INSERT INTO professor_disciplina (Professor_ID, Disciplina_ID) values
	(1,3),
	(5,4),
	(4,2),
	(3,1),
	(2,5);

-- ALTER alterar a estrutura
-- UPDATE alterar um registro na tabela

-- DDL Update
UPDATE disciplina 
SET  Nome = 'História', horas = 500
-- WHERE especializacao = 'Geografia'; OU dois metodos de utilizar
WHERE id = 1;
-- WHERE - EM QUAL REGISTRO QUER APLICAR O UPDATE

-- Update de todas para 40 onde Horas for maior que 40
UPDATE disciplina
SET horas = 40
WHERE horas > 40;

select * from professor;
select * from disciplina;

-- DML Delete
DELETE FROM disciplina WHERE id = 3;