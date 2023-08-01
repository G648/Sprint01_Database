/*Construa o Modelo Entidade Relacionamento considerando o seguinte cenário:

- uma empresa possui vários veículos
- um veículo possui marca(gm, ford, fiat), modelo(onix, fiesta, argo) e placa
- um cliente (cpf, nome) aluga um ou mais veículos

DML

- um registro de aluguel deve conter qual cliente alugou, o veículo alugado, data de retirada e data de devolução


DQL

- listar todos os alugueis mostrando as datas de início e fim, o nome do cliente que alugou e nome do modelo do carro
- listar os alugueis de um determinado cliente mostrando seu nome, as datas de início e fim e o nome do modelo do carro*/


--Criando script DDL

CREATE DATABASE Exercicio_1_2;

USE Exercicio_1_2;

CREATE TABLE Empresa 
(
	IdEmpresa INT PRIMARY KEY IDENTITY,
	NomeEmpresa VARCHAR(255)
);

CREATE TABLE Cliente
(
	IdCliente INT PRIMARY KEY IDENTITY,
	NomeCliente VARCHAR(255),
	CPFCliente VARCHAR (255),
);


CREATE TABLE Marca
(
	IdMarcaCarro INT PRIMARY KEY IDENTITY,
	NomeMarcaCarro VARCHAR(255)
);

CREATE TABLE Modelo
(
	IdModeloCarro INT PRIMARY KEY IDENTITY,
	NomeModelo VARCHAR(255)
);

CREATE TABLE Aluguel
(
	IdAluguel INT PRIMARY KEY IDENTITY,
	IdCliente INT FOREIGN KEY REFERENCES Cliente(IdCLiente),
	NumAluguel VARCHAR(255),
	DataAluguel DATETIME
);

CREATE TABLE Veiculo
(
	IdVeiculo INT PRIMARY KEY IDENTITY,
	IdMarca	INT FOREIGN KEY REFERENCES Marca(IdMarcaCarro),
	IdModelo INT FOREIGN KEY REFERENCES Modelo(IdModeloCarro),
	IdEmpresa INT FOREIGN KEY REFERENCES Empresa(IdEmpresa),
	IdAluguel INT FOREIGN KEY REFERENCES Aluguel(IdAluguel),
	NomeVeiculo VARCHAR(255),
	PlacaVeiculo VARCHAR(255)
);



SELECT * FROM Empresa;
SELECT * FROM Veiculo;
SELECT * FROM Aluguel;
SELECT * FROM Modelo;
SELECT * FROM Cliente;
SELECT * FROM Marca;
