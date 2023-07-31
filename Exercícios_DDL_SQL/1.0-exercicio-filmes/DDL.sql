--Voc� dever� criar a modelagem para o cat�logo de filmes, observando a seguinte situa��o:

-- - um filme possui apenas um �nico g�nero.
-- - um g�nero pode definir mais de um filme.

--Criando o Primeiro Script DDL (Data Definition Language)

CREATE DATABASE Catalogo;

CREATE TABLE Filme 
(
	IdFilme INT PRIMARY KEY IDENTITY,
	IdGenero INT FOREIGN KEY REFERENCES Genero(IdGenero),
	NomeFilme VARCHAR(255)

);

CREATE TABLE Genero
(
	IdGenero INT PRIMARY KEY IDENTITY,
	NomeGenero VARCHAR(255)
);

DROP TABLE Filme;

USE Catalogo;

DROP DATABASE Catalogo;
