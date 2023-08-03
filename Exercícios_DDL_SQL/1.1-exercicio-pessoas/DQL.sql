
--Construa a modelagem que represente pessoas e seus dados, observando que:

-- uma pessoa pode ter vários telefones e vários emails, porém, pode possuir somente uma CNH.

--DQL

-- listar as pessoas em ordem alfabética reversa, mostrando seus telefones, seus e-mails e suas CNHs

--DDL (Data Definition Language)

DROP DATABASE Exercicio_1_1;
DROP DATABASE Exercicio_1_2;
DROP DATABASE Exercicio_1_3;

CREATE DATABASE	Exercicio_1_1;

USE Exercicio_1_1;

CREATE TABLE Pessoa
(
	IdPessoa INT PRIMARY KEY IDENTITY,
	NomePessoa VARCHAR(255) NOT NULL,
	NumCHNPessoa VARCHAR (11) NOT NULL
);

CREATE TABLE Email
(
	IdEmail INT PRIMARY KEY IDENTITY,
	IdPessoa INT FOREIGN KEY REFERENCES Pessoa(IdPessoa),
	EndEmail VARCHAR(255)
);

CREATE TABLE Telefone
(
	IdTelefone INT PRIMARY KEY IDENTITY,
	IdPessoa INT FOREIGN KEY REFERENCES Pessoa (IdPessoa),
	NumTelefone VARCHAR(255)
);

SELECT * FROM Pessoa;
SELECT * FROM Telefone;
SELECT * FROM Email;