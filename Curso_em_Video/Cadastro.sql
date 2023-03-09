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


INSERT INTO Cursos VALUES 
(DEFAULT, 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
(DEFAULT, 'Java', 'Curso de Java - Básico', '10', '29', '2000'),
(DEFAULT, 'MySQL', 'Curso de MySQL', '20', '39', '2005'),
(DEFAULT, 'PGP', 'Curso de PHP - Iniciantes', '40', '20', '2010');

-- ATUALIZAR DADOS DA TABELA:
UPDATE Cursos 
SET nome = "HTML5"
WHERE id = 1;

UPDATE Cursos 
SET carga = 40
WHERE id = 2;

UPDATE Cursos 
SET nome = "PHP", ano = 2018
WHERE id = 4;

-- DELETAR UM DADO/LINHA DA TABELA:
DELETE FROM Cursos
WHERE id = 2;

-- DELETAR TODOS OS DADOS/LINHAS DA TABELA:
TRUNCATE TABLE Cursos;

--  ------------------------------------------------------------
DROP DATABASE Cadastro;

CREATE DATABASE IF NOT EXISTS Cadastro;
USE Cadastro;

CREATE TABLE `cursos` (
  `idcurso` int(11) NOT NULL DEFAULT '0',
  `nome` varchar(30) NOT NULL,
  `descricao` text,
  `carga` int(10) unsigned DEFAULT NULL,
  `totaulas` int(10) unsigned DEFAULT NULL,
  `ano` year(4) DEFAULT '2016',
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `cursos` VALUES (1,'HTML5','Curso de HTML5',40,37,2014),(2,'Algoritmos','Lógica de Programação',20,15,2014),(3,'Photoshop5','Dicas de Photoshop CC',10,8,2014),(4,'PHP','Curso de PHP para iniciantes',40,20,2015),(5,'Java','Introdução à Linguagem Java',40,29,2015),(6,'MySQL','Bancos de Dados MySQL',30,15,2016),(7,'Word','Curso completo de Word',40,30,2016),(8,'Python','Curso de Python',40,18,2017),(9,'POO','Curso de Programação Orientada a Objetos',60,35,2016),(10,'Excel','Curso completo de Excel',40,30,2017),(11,'Responsividade','Curso de Responsividade',30,15,2018),(12,'C++','Curso de C++ com Orientação a Objetos',40,25,2017),(13,'C#','Curso de C#',30,12,2017),(14,'Android','Curso de Desenvolvimento de Aplicativos para Android',60,30,2018),(15,'JavaScript','Curso de JavaScript',35,18,2017),(16,'PowerPoint','Curso completo de PowerPoint',30,12,2018),(17,'Swift','Curso de Desenvolvimento de Aplicativos para iOS',60,30,2019),(18,'Hardware','Curso de Montagem e Manutenção de PCs',30,12,2017),(19,'Redes','Curso de Redes para Iniciantes',40,15,2016),(20,'Segurança','Curso de Segurança',15,8,2018),(21,'SEO','Curso de Otimização de Sites',30,12,2017),(22,'Premiere','Curso de Edição de Vídeos com Premiere',20,10,2017),(23,'After Effects','Curso de Efeitos em Vídeos com After Effects',20,10,2018),(24,'WordPress','Curso de Criação de Sites com WordPress',60,30,2019),(25,'Joomla','Curso de Criação de Sites com Joomla',60,30,2019),(26,'Magento','Curso de Criação de Lojas Virtuais com Magento',50,25,2019),(27,'Modelagem de Dados','Curso de Modelagem de Dados',30,12,2020),(28,'HTML4','Curso Básico de HTML, versão 4.0',20,9,2010),(29,'PHP7','Curso de PHP, versão 7.0',40,20,2020),(30,'PHP4','Curso de PHP, versão 4.0',30,11,2010);



CREATE TABLE `gafanhotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `profissao` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4;

INSERT INTO `gafanhotos` VALUES (1,'Daniel Morais','Auxiliar Administrat','1984-01-02','M',78.50,1.83,'Brasil'),(2,'Talita Nascimento','Farmacêutico','1999-12-30','F',55.20,1.65,'Portugal'),(3,'Emerson Gabriel','Programador','1920-12-30','M',50.20,1.65,'Moçambique'),(4,'Lucas Damasceno','Auxiliar Administrat','1930-11-02','M',63.20,1.75,'Irlanda'),(5,'Leila Martins','Farmacêutico','1975-04-22','F',99.00,2.15,'Brasil'),(6,'Letícia Neves','Programador','1999-12-03','F',87.00,2.00,'Brasil'),(7,'Janaína Couto','Auxiliar Administrat','1987-11-12','F',75.40,1.66,'EUA'),(8,'Carlisson Rosa','Professor','2010-08-01','M',78.22,1.98,'Brasil'),(9,'Jackson Telles','Programador','1999-01-23','M',55.75,1.33,'Portugal'),(10,'Danilo Araujo','Dentista','1975-12-10','M',99.21,1.87,'EUA'),(11,'Andreia Delfino','Auxiliar Administrat','1975-07-01','F',48.64,1.54,'Irlanda'),(12,'Valter Vilmerson','Ator','1985-10-12','M',88.55,2.03,'Brasil'),(13,'Allan Silva','Programador','1993-11-11','M',76.99,1.55,'Brasil'),(14,'Rosana Kunz','Professor','1935-01-16','F',55.24,1.87,'Brasil'),(15,'Josiane Dutra','Empreendedor','1950-01-20','F',98.70,1.04,'Portugal'),(16,'Elvis Schwarz','Dentista','2011-05-07','M',66.69,1.76,'EUA'),(17,'Paulo Narley','Auxiliar Administrat','1997-03-17','M',120.10,2.22,'Brasil'),(18,'Joade Assis','Médico','1930-12-01','M',65.88,1.78,'França'),(19,'Nara Matos','Programador','1978-03-17','F',65.90,1.33,'Brasil'),(20,'Marcos Dissotti','Empreendedor','2010-01-01','M',53.79,1.54,'Portugal'),(21,'Ana Carolina Mendes','Ator','2000-12-15','F',88.30,1.54,'Brasil'),(22,'Guilherme de Sousa','Dentista','2001-05-18','M',132.70,1.97,'Moçambique'),(23,'Bruno Torres','Auxiliar Administrat','2000-01-30','M',44.65,1.65,'Brasil'),(24,'Yuji Homa','Empreendedor','1996-12-25','M',33.90,1.22,'Japão'),(25,'Raian Porto','Programador','1989-05-05','M',54.89,1.54,'Brasil'),(26,'Paulo Batista','Ator','1999-03-15','M',110.12,1.87,'Portugal'),(27,'Monique Precivalli','Auxiliar Administrat','2013-12-30','F',48.20,1.22,'Brasil'),(28,'Herisson Silva','Auxiliar Administrat','1965-10-10','M',74.65,1.56,'EUA'),(29,'Tiago Ulisses','Dentista','1993-04-22','M',150.30,2.35,'Brasil'),(30,'Anderson Rafael','Programador','1989-12-01','M',64.22,1.44,'Irlanda'),(31,'Karine Ribeiro','Empreendedor','1988-10-01','F',42.10,1.65,'Brasil'),(32,'Roberto Luiz Debarba','Ator','2007-01-09','M',77.44,1.56,'Brasil'),(33,'Jarismar Andrade','Dentista','2000-06-23','F',63.70,1.33,'Brasil'),(34,'Janaina Oliveira','Professor','1955-03-12','F',52.90,1.76,'Canadá'),(35,'Márcio Mello','Programador','2011-11-20','M',54.11,1.55,'EUA'),(36,'Robson Rodolpho','Auxiliar Administrat','2000-08-08','M',110.10,1.76,'Brasil'),(37,'Daniele Moledo','Empreendedor','2006-08-11','F',101.30,1.99,'Brasil'),(38,'Neto Sophiate','Ator','1996-05-17','M',59.28,1.65,'Portugal'),(39,'Neriton Dias','Auxiliar Administrat','2009-10-30','M',48.99,1.29,'Brasil'),(40,'André Schmidt','Programador','1993-07-26','M',55.37,1.22,'Angola'),(41,'Isaias Buscarino','Dentista','2001-01-07','M',99.90,1.55,'Moçambique'),(42,'Rafael Guimma','Empreendedor','1968-04-11','M',88.88,1.54,'Brasil'),(43,'Ana Carolina Hernandes','Ator','1970-10-11','F',65.40,2.08,'EUA'),(44,'Luiz Paulo','Professor','1984-11-01','M',75.12,1.38,'Portugal'),(45,'Bruna Teles','Programador','1980-11-07','F',55.10,1.86,'Brasil'),(46,'Diogo Padilha','Auxiliar Administrat','2000-03-03','M',54.34,1.88,'Angola'),(47,'Bruno Miltersteiner','Dentista','1986-02-19','M',77.45,1.65,'Alemanha'),(48,'Elaine Nunes','Programador','1998-08-15','F',35.90,2.00,'Canadá'),(49,'Silvio Ricardo','Programador','2012-03-12','M',65.99,1.23,'EUA'),(50,'Denilson Barbosa da Silva','Empreendedor','2000-01-08','M',97.30,2.00,'Brasil'),(51,'Jucinei Teixeira','Professor','1977-11-22','F',44.80,1.76,'Portugal'),(52,'Bruna Santos','Auxiliar Administrat','1991-12-01','F',76.30,1.45,'Canadá'),(53,'André Vitebo','Médico','1970-07-01','M',44.11,1.55,'Brasil'),(54,'Andre Santini','Programador','1991-08-15','M',66.00,1.76,'Itália'),(55,'Ruan Valente','Programador','1998-03-19','M',101.90,1.76,'Canadá'),(56,'Nailton Mauricio','Médico','1992-04-25','M',86.01,1.43,'EUA'),(57,'Rita Pontes','Professor','1999-09-02','F',54.10,1.35,'Angola'),(58,'Carlos Camargo','Programador','2005-02-22','M',124.65,1.33,'Brasil'),(59,'Philppe Oliveira','Auxiliar Administrat','2000-05-23','M',105.10,2.19,'Brasil'),(60,'Dayana Dias','Professor','1993-05-30','F',88.30,1.66,'Angola'),(61,'Silvana Albuquerque','Programador','1999-05-22','F',56.00,1.50,'Brasil');


-- Ordem de Filtragem
SELECT * FROM cursos
ORDER BY nome DESC;

SELECT * FROM cursos
ORDER BY nome /*ACS*/;

-- Filtar colunas
SELECT nome, carga, ano
FROM cursos;

SELECT ano, nome, carga
FROM cursos
ORDER BY ano, nome;

-- Filtar por linhas
SELECT nome, descricao, carga
FROM cursos
WHERE ano = 2016
ORDER BY nome;


SELECT nome, descricao, ano
FROM cursos
WHERE ano BETWEEN 2014 AND 2016 
ORDER BY nome, ano;

SELECT nome, descricao, ano
FROM cursos
WHERE ano IN (2014, 2016, 2020) 
ORDER BY nome, ano;

SELECT nome, carga, totaulas
FROM cursos
WHERE carga > 30 AND totaulas < 50;

-- ----------------------------------------------------------------------

-- Busca que comecem ou terminem por letras/palavras especificas:
SELECT * FROM cursos
WHERE nome LIKE "%a%";

SELECT * FROM cursos
WHERE nome NOT LIKE "ph%p%";

SELECT * FROM cursos
WHERE nome NOT LIKE "p_p%";

SELECT * FROM cursos
WHERE nome NOT LIKE "%silva%";

-- Busca agrupando iguais:
SELECT DISTINCT nacionalidade 
FROM gafanhotos
ORDER BY nacionalidade;



-- FUNÇÕES DE AGREGAÇÃO:

-- Retorna a quantidade:
SELECT count(carga) AS qtd
FROM cursosa;

-- Retorna o MAIOR valor:
SELECT MAX(carga) AS maxCarga
FROM cursos;

SELECT MAX(totaulas) AS maxCarga
FROM cursos
WHERE ano = 2016;

-- Retorna o MENOR valor:
SELECT nome, MIN(totaulas) AS minCarga
FROM cursos
WHERE ano = 2016;

-- Retorna a SOMA dos valores:
SELECT SUM(totaulas)
FROM cursos
WHERE ano = 2016;

-- Retorna a MÉDIA dos valores:
SELECT AVG(totaulas)
FROM cursos
WHERE ano = 2016;

-- CASO TENHA ALGUM ERRO AO RODAR UM DOS CODIGOS ACIMA, USE ESSES COMANDOS E TENTE NOVAMENTE.
-- Desativa
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
-- Ativar
SET sql_mode=(SELECT CONCAT(@@sql_mode,'ONLY_FULL_GROUP_BY',''));*


-- RESPOSTAS DOS EXERCÍCIOS DA AULA

-- 1
SELECT nome 
FROM gafanhotos
WHERE sexo = 'F';

-- 2
SELECT * FROM gafanhotos
WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31';

-- 3
SELECT nome 
FROM gafanhotos
WHERE profissao = 'Programador';

-- 4
SELECT * FROM gafanhotos
WHERE sexo = 'F' AND nacionalidade =  'Brasil' AND nome LIKE 'J%';

-- 5 
SELECT nome 
FROM gafanhotos
WHERE sexo = 'M' AND nome LIKE '%Silva' AND nacionalidade != 'Brasil' AND peso < 100;

-- 6
SELECT MAX(altura) 
FROM gafanhotos
WHERE sexo = 'M' AND nacionalidade = 'Brasil';

-- 7
SELECT AVG(peso)
FROM gafanhotos;

-- 8
SELECT MIN(peso)
FROM gafanhotos
WHERE sexo = 'F' AND nacionalidade != 'Brasil' AND nascimento BETWEEN '1990-01-01' AND '2000-12-31';

-- 9 
SELECT count(altura)
FROM gafanhotos
WHERE sexo = 'F' AND altura > 1.90;
