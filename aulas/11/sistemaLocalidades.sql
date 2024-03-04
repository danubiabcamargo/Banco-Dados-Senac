-- CRIAÇÃO E USO DO SCHEMA (BD)
CREATE DATABASE sistemaLocalidades;
USE sistemalocalidades;

-- CRIAÇÃO DAS TABELAS
CREATE TABLE IF NOT EXISTS Estado (
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    UF VARCHAR(2) NOT NULL
    );
    
CREATE TABLE IF NOT EXISTS CIDADE (
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Estado_Id INT,
    FOREIGN KEY (Estado_ID) REFERENCES ESTADO(Id)
);

CREATE TABLE IF NOT EXISTS PREFEITO(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    DataPosse DATE
    );

SELECT * FROM CIDADE;
SELECT * FROM ESTADO;

-- INSERÇÃO DE DADOS REAIS
INSERT INTO ESTADO (Nome, UF) VALUES
	('São Paulo', 'SP'),
    ('Rio de Janeiro', 'RJ'),
    ('Bahia', 'BA');

INSERT INTO CIDADE (Nome, Estado_ID) VALUES 
	('São Paulo', 1),
    ('Campinas', 1),
    ('Rio de Janeiro', 2),
    ('Niterói', 2),
    ('Salvador', 3),
    ('Feira de Santana', 3);
    
-- Dados Prefeito
 DataPosse INSERT INTO prefeito VALUES ('    -  -  ')
    
-- Inserção de Cidades Fictícias sem Estado
INSERT INTO CIDADE (Nome, Estado_ID) VALUES
	('Gotham City', NULL),
    ('Metropolis', NULL),
    ('Wonderland', NULL),
    ('Neverland', NULL);

-- -----------------------
-- Consultas SQL com JOINs
-- -----------------------
 SELECT CIDADE.Nome, ESTADO.Nome AS NomeEstado, ESTADO.UF AS UF
 FROM CIDADE
 INNER JOIN ESTADO ON CIDADE.Estado_ID = ESTADO.ID;
 
	# dois jeitos de fazer
    
SELECT Cidade.ID, Cidade.Nome, Estado.Nome AS NomeEstado, Estado.UF AS UF
FROM CIDADE
INNER JOIN ESTADO ON CIDADE.Estado_ID = ESTADO.ID;



