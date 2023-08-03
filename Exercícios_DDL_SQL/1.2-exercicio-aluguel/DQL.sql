--DQL
/*
Construa o Modelo Entidade Relacionamento considerando o seguinte cen�rio:

- uma empresa possui v�rios ve�culos
- um ve�culo possui marca(gm, ford, fiat), modelo(onix, fiesta, argo) e placa
- um cliente (cpf, nome) aluga um ou mais ve�culos

DML

- um registro de aluguel deve conter qual cliente alugou, o ve�culo alugado, data de retirada e data de devolu��o


DQL

- listar todos os alugueis mostrando as datas de in�cio e fim, o nome do cliente que alugou e nome do modelo do carro
- listar os alugueis de um determinado cliente mostrando seu nome, as datas de in�cio e fim e o nome do modelo do carro
*/


SELECT 
	AlugueL.DataAluguel AS PeriodoDeAloca��o,
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
