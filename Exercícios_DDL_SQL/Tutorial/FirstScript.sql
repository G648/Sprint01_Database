--criando a primeira base de dados
CREATE DATABASE	Teste;

--precisamos utilizar o banco de dados e utilizar ele 
use Teste;

--cria uma tabela no banco de dados
CREATE TABLE Funcionarios 
(
	--inserindo valores em uma tablea
	IdPessoa int primary key identity,
	PrimeiroNome varchar(255),
	NomeCidade varchar(255)
);

CREATE TABLE Empresas 
(
	IdEmpresa int primary key identity,
	IdFuncionario int foreign key references Funcionarios(IdPessoa),
	NomeEmpresa varchar(255)
);


--altera a tabela que queremos ir e podemos excluir valores e adicionar valores
alter table Funcionarios
drop column NomeCidade;

--comentário
select * from Funcionarios

--exclui uma tabela
drop table Funcionarios

--exclui o banco de dados
drop database Teste
