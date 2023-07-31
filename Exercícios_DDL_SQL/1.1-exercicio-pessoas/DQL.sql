
--Construa a modelagem que represente pessoas e seus dados, observando que:

-- uma pessoa pode ter vários telefones e vários emails, porém, pode possuir somente uma CNH.

--DQL

-- listar as pessoas em ordem alfabética reversa, mostrando seus telefones, seus e-mails e suas CNHs

--DDL (Data Definition Language)


CREATE DATABASE	Informacoes;

USE Informacoes;

CREATE TABLE Telefone 
(
	IdTelefone INT PRIMARY KEY IDENTITY,
	NumTelefone INT
);

CREATE TABLE Email
(
	IdEmail INT PRIMARY KEY IDENTITY,
	EndEmail VARCHAR(255)
);

CREATE TABLE Cnh 
(
	IdCnh INT PRIMARY KEY IDENTITY,
	IdPessoa INT FOREIGN KEY REFERENCES Pessoas(IdPessoa),
	NumCnh INT
);

CREATE TABLE Pessoas
(
	IdPessoa INT PRIMARY KEY IDENTITY,
	IdTelefone INT FOREIGN KEY REFERENCES Telefone(IdTelefone),
	IdEmail INT FOREIGN KEY REFERENCES Email(IdEmail),
	IdCnh INT FOREIGN KEY REFERENCES Cnh(IdCnh),
	NomePessoa VARCHAR(255),
);


