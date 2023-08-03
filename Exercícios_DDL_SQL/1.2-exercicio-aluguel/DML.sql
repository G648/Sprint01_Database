--Criando Script DML

USE Exercicio_1_2;

INSERT INTO Empresa (NomeEmpresa) VALUES 
	('tech info G&G'),
	('CarTech'),
	('Carros&Negócios');

INSERT INTO Cliente (NomeCliente, CPFCliente) VALUES 
	('Guilherme','123456789-00'),
	('Marcelo',	'123454325693'),
	('Marcela','67825909823');

INSERT INTO Marca (NomeMarcaCarro) VALUES 
	('Renault'),
	('Chevrolet'),
	('Ford'),
	('Audi');

INSERT INTO Modelo (NomeModelo) VALUES 
	('Sandero'),
	('Camaro'),
	('Ka'),
	('e-Tron');

INSERT INTO Aluguel (IdCliente, NumAluguel, IdVeiculo, DataAluguel) VALUES 
	(1, 2345, 1, '2023-08-01'),
	(2, 3542, 2, '2023-06-19'),
	(3, 5321, 3, '2023-12-01');

INSERT INTO Veiculo (IdMarca, IdModelo, IdEmpresa,IdAluguel, NomeVeiculo, PlacaVeiculo) VALUES 
	(1, 1, 1, 1, 'nei', 'EEE-1234'),
	(4, 4, 2, 2, 'E-tron', 'OOP-3544'),
	(3, 3, 2, 3, 'Ka', 'KKK-6473');














SELECT * FROM Empresa;
SELECT * FROM Veiculo;
SELECT * FROM Aluguel;
SELECT * FROM Modelo;
SELECT * FROM Cliente;
SELECT * FROM Marca;