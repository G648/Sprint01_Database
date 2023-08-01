/*Uma cl�nica veterin�ria deseja cadastrar os pets que s�o atendidos em seu local.

- a cl�nica cont�m um endere�o;
- os pets dever�o ter nome, data de nascimento, tipo de pet;
- os pets dever�o ter ra�a;
- os pets dever�o ter donos;
- a cl�nica deseja cadastrar seus veterin�rios e todo atendimento de pet ser� feito por um veterin�rio;

DML

- cada atendimento deve registrar qual veterin�rio atendeu, qual pet foi atendido, descri��o da consulta e data da consulta

DQL

- listar todos os veterin�rios (nome e CRMV) de uma cl�nica (raz�o social)
- listar todas as ra�as que come�am com a letra S
- listar todos os tipos de pet que terminam com a letra O
- listar todos os pets mostrando os nomes dos seus donos
- listar todos os atendimentos mostrando o nome do veterin�rio que atendeu, o nome, a ra�a e o tipo do pet que foi atendido, o nome do dono do pet e o nome da cl�nica onde o pet foi atendido*/

-- CRIANDO SCRIPT DDL

CREATE DATABASE Exercicio_1_3;

USE Exercicio_1_3;

CREATE TABLE Endereco
(
	IdEndereco INT PRIMARY KEY IDENTITY,
	Numero INT,
	Cidade VARCHAR(255),
	Bairro VARCHAR (255),
	Complemento VARCHAR(255)
);

CREATE TABLE ClinicaPet
(
	IdClinica INT PRIMARY KEY IDENTITY,
	IdEndereco INT FOREIGN KEY REFERENCES Endereco (IdEndereco),
	NomeClinica VARCHAR(255)
);

CREATE TABLE Veterinario
(
	IdVeterinario INT PRIMARY KEY IDENTITY,
	IdClinica INT FOREIGN KEY REFERENCES ClinicaPet (IdClinica),
	NomeVeterinario VARCHAR (255),
	CRMV VARCHAR (255)
);