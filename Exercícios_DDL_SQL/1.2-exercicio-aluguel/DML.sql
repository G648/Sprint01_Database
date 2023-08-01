--Criando Script DML

USE Exercicio_1_2;

INSERT INTO Empresa (NomeEmpresa) VALUES ('tech info G&G');

INSERT INTO Cliente (NomeCliente, CPFCliente) VALUES ('Guilherme','123456789-00');

INSERT INTO Marca (NomeMarcaCarro) VALUES ('Renault');

INSERT INTO Modelo (NomeCarro) VALUES ('Sandero');

INSERT INTO Aluguel (IdCliente, NumAluguel, DataAluguel) VALUES (1, 2345, '2023-08-01 10:14:00.00');

INSERT INTO Veiculo (IdMarca, IdModelo, IdEmpresa,IdAluguel, NomeVeiculo, PlacaVeiculo) VALUES (1, 1, 1, 2, 'nei', 'EEE-1234');














SELECT * FROM Empresa;
SELECT * FROM Veiculo;
SELECT * FROM Aluguel;
SELECT * FROM Modelo;
SELECT * FROM Cliente;
SELECT * FROM Marca;