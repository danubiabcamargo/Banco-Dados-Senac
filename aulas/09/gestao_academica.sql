-- _______________________________________________________
-- DDL - CRIAÇÃO DE BANCO DE DADOS
-- _______________________________________________________

CREATE SCHEMA IF NOT EXISTS gestaoacademica;
USE gestaoacademica; -- banco que está selecionado pelo SQL

-- _______________________________________________________
-- DDL - CRIAÇÃO DE TABELAS
-- _______________________________________________________

-- criando tabela
CREATE TABLE IF NOT EXISTS gestaoacademica.aluno(
				
	Matricula INT AUTO_INCREMENT, 
    Nome VARCHAR(50) NOT NULL, 					
    CPF VARCHAR(11) NOT NULL UNIQUE, 			
    PRIMARY KEY(Matricula)    
);    
    
CREATE TABLE IF NOT EXISTS gestaoacademica.curso(
	id INT AUTO_INCREMENT,
    Nome VARCHAR(50) NULL DEFAULT NULL, -- senão passar nada ele volta Nulo    
    PRIMARY KEY(Id)
);
    
ALTER TABLE curso
DROP COLUMN Horas; -- alteração de uma tabela
    
CREATE TABLE IF NOT EXISTS disciplina(
	Id INT  AUTO_INCREMENT,
    Nome VARCHAR(50) NULL DEFAULT NULL,
    Horas INT NOT NULL DEFAULT 0, -- não passou nada ele retorna 0 horas
    PRIMARY KEY (Id)    
);
    
CREATE TABLE IF NOT EXISTS gestaoacademica.professor(
	Id INT  AUTO_INCREMENT,
    Nome VARCHAR(100) NULL DEFAULT NULL,
    Especializacao VARCHAR(50) NULL DEFAULT NULL,
    PRIMARY KEY (Id)
);
    
 -- PRIMARY KEY chave primaria precisa ter valores unicos e nao podem ser nulos   
 
 CREATE TABLE IF NOT EXISTS matricula(
	Aluno_ID INT,
    Curso_ID INT,
    DataMatricula DATE NOT NULL, -- not null para o campo não ficar nulo
    PRIMARY KEY (Aluno_ID, Curso_ID),
    FOREIGN KEY (Aluno_ID) REFERENCES Aluno(Matricula),  -- referencia a uma tabela
    FOREIGN KEY (Curso_ID) REFERENCES Curso(Id)
);
    
CREATE TABLE IF NOT EXISTS disciplinas_cursos(
	Disciplina_ID INT,
    Curso_ID INT,
    PRIMARY KEY (Disciplina_ID, Curso_ID),
    FOREIGN KEY (Disciplina_ID) REFERENCES Disciplina(Id),
    FOREIGN KEY (Curso_ID) REFERENCES Curso(Id)
);

CREATE TABLE IF NOT EXISTS professores_disciplinas(
	Professor_ID INT,
    Disciplina_ID INT,
    PRIMARY KEY (Professor_ID, Disciplina_ID),
    FOREIGN KEY(Professor_ID) REFERENCES Professor(Id),
    FOREIGN KEY(Disciplina_ID) REFERENCES Disciplina(Id)
);



-- ____________________________________________
-- DML - Inserção de Dados nas Tabelas
-- ____________________________________________
INSERT INTO Aluno (Nome, CPF) VALUES
	('Carlos Silva','12345678901'),
	('Pedro Rocha','23456789012'),
	('Monica Souza','34567890123'),
	('Fabio Silva','45678901234');
	
INSERT INTO Curso (Nome) VALUES
	('Ciência da Computação'),
    ('Engenharia Civil'),
    ('Administração'),
    ('Medicina'),
    ('Arquitetura');
    
INSERT INTO Matricula (Aluno_ID, Curso_ID, DataMatricula) VALUES
	(1, 2, '2024-02-01'),
    (1, 5, '2024-02-02'),
    (2, 2, '2024-01-02'),
    (2, 5, '2024-02-01'),
    (3, 2, '2024-01-15'),
    (3, 5, '2024-01-29');
    
INSERT INTO Professor (Nome, Especializacao) VALUES
	('Huguinho', 'Tecnologia'),
    ('Zezinho', 'Idiomas'),
    ('Luizinho', 'Cálculo'),
    ('Tico', 'Tecnologia'),
    ('Teco', 'Idiomas');
    
INSERT INTO Disciplina (Nome, Horas) VALUES
	('Matemática "Avançada" II', '40'),
    ('Inglês Técnico','50'),
    ('Linguagem de Programação', '45');
          
    
INSERT INTO Professores_Disciplinas (Professor_ID, Disciplina_ID) VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,1),
	(5,2);

INSERT INTO  Disciplinas_Cursos(Disciplina_ID, Curso_ID) VALUES
	(1,1),
	(2,2),
	(3,3);

    
    
    
    
    
    
    
    
    
    
    
    
    

