--DQL
/*
Construa o Modelo Entidade Relacionamento considerando o seguinte cenário:

- uma empresa possui vários veículos
- um veículo possui marca(gm, ford, fiat), modelo(onix, fiesta, argo) e placa
- um cliente (cpf, nome) aluga um ou mais veículos

DML

- um registro de aluguel deve conter qual cliente alugou, o veículo alugado, data de retirada e data de devolução


DQL

- listar todos os alugueis mostrando as datas de início e fim, o nome do cliente que alugou e nome do modelo do carro
- listar os alugueis de um determinado cliente mostrando seu nome, as datas de início e fim e o nome do modelo do carro
*/


SELECT 
	AlugueL.DataAluguel AS PeriodoDeAlocação,
	Cliente.NomeCliente AS NomeDoCliente,
	Marca.NomeMarcaCarro AS MarcaDoCarro,
	Modelo.NomeModelo AS ModeloDoCarro
FROM
	Aluguel
LEFT JOIN
	Cliente ON Aluguel.IdCliente = Cliente.IdCliente
LEFT JOIN
	Marca ON Aluguel.IdAluguel = Marca.IdMarcaCarro
LEFT JOIN
	Modelo ON Aluguel. = Modelo.IdModeloCarro
