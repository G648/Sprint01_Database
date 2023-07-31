--DML -> Data Manipulation Language

use Teste;

--inserir dados em uma tabela
insert into Funcionarios (PrimeiroNome, NomeCidade) values ('Santista','São Paulo')

--atualizando dados em uma tabela
update Funcionarios
set PrimeiroNome = 'Curintia' where PrimeiroNome = 'Santista'

update Funcionarios
set PrimeiroNome = 'Curintia' where IdPessoa = 3

--Excluir dados na tabela
delete from Funcionarios
where IdPessoa = 3

