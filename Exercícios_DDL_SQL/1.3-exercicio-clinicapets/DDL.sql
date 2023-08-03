--DDL

/* Uma clínica veterinária deseja cadastrar os pets que são atendidos em seu local.

- a clínica contém um endereço;
- os pets deverão ter nome, data de nascimento, tipo de pet;
- os pets deverão ter raça;
- os pets deverão ter donos;
- a clínica deseja cadastrar seus veterinários e todo atendimento de pet será feito por um veterinário;

DML

- cada atendimento deve registrar qual veterinário atendeu, qual pet foi atendido, descrição da consulta e data da consulta

DQL

- listar todos os veterinários (nome e CRMV) de uma clínica (razão social)
- listar todas as raças que começam com a letra S
- listar todos os tipos de pet que terminam com a letra O
- listar todos os pets mostrando os nomes dos seus donos
- listar todos os atendimentos mostrando o nome do veterinário que atendeu, o nome, a raça e o tipo do pet que foi atendido, 
	o nome do dono do pet e o nome da clínica onde o pet foi atendido
*/

CREATE DATABASE Exercicio_1_3;

USE Exercicio_1_3;


CREATE TABLE Endereco
(
	IdEndereco INT PRIMARY KEY IDENTITY,
	NomeRua VARCHAR(255) NOT NULL,
	Bairro VARCHAR(255) NOT NULL,
	CEP VARCHAR(255) NOT NULL,
	Complemento VARCHAR(255) 
);

CREATE TABLE Clinica
(
	IdClinica INT PRIMARY KEY IDENTITY,
	IdEndereco INT FOREIGN KEY REFERENCES Endereco(IdEndereco),
	NomeClinica VARCHAR (255) NOT NULL 
);

CREATE TABLE Veterinario 
(
	IdVeterinario INT PRIMARY KEY IDENTITY,
	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica),
	NomeVeterinario VARCHAR(255) NOT NULL,
	CRMV VARCHAR (4) NOT NULL
);

CREATE TABLE DonoPet
(
	IdDonoPet INT PRIMARY KEY IDENTITY,
	NomeDonoPet VARCHAR (255) NOT NULL
);

CREATE TABLE TipoPet
(
	IdTipoPet INT PRIMARY KEY IDENTITY,
	TipoPet VARCHAR (255) NOT NULL,
	Descricao VARCHAR (255)
);

CREATE TABLE RacaPet
(
	IdRacaPet INT PRIMARY KEY IDENTITY,
	NomeRacaPet VARCHAR (255) NOT NULL,
	Descricao VARCHAR (255)
);

CREATE TABLE Pet
(
	IdPet INT PRIMARY KEY IDENTITY,
	IdTipoPet INT FOREIGN KEY REFERENCES TipoPet(IdTipoPet),
	IdRacaPet INT FOREIGN KEY REFERENCES RacaPet(IdRacaPet),
	IdDonoPet INT FOREIGN KEY REFERENCES DonoPet(IdDonoPet)
);