-- CRIANDO UM BANCO DE DADOS EFICIENTE:
CREATE DATABASE Cadastro 
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;
USE Cadastro;

-- CRIANDO UMA TABELA:
CREATE TABLE Pessoas(
	id TINYINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
	nascimento DATE,
	sexo ENUM('M','F'),
	peso DECIMAL(5,2),
	altura DECIMAL(3,2),
	nacionalidade VARCHAR(20) DEFAULT 'Brasil'
    
) DEFAULT CHARSET = utf8mb4;


-- PRIMAIRA FORMA DE ADICIONAR DADOS:
INSERT INTO Pessoas(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES ('Golofredo', '1984-01-02', 'M', '78.50', '1.83', 'Brasil'),
	   ('Maria', '1999-12-30', 'F', '55.20', '1.65', 'Portugal'),
	   ('Creuza', '1920-12-30', 'F', '50.20', '1.65', 'Brasil');
       
-- SEGUNDA FORMA DE ADICIONAR DADOS:
INSERT INTO Pessoas
VALUES (DEFAULT, 'Arelina', '1985-05-22', 'F', '86.50', '1.60', 'Brasil'),
	   (DEFAULT, 'José', '200-08-09', 'M', '65', '1.70', 'França');


-- VER OS DADOS DA TABELA:
SELECT * FROM Pessoas;

