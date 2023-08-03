--DQL

USE Exercicio_1_1;

SELECT 
	Pessoa.NomePessoa AS Cliente,
	Email.EndEmail AS Email,
	Telefone.NumTelefone AS Telefone
FROM
	Pessoa
LEFT JOIN 
	Telefone ON Pessoa.IdPessoa = Telefone.IdPessoa
LEFT JOIN 
	Email ON Pessoa.IdPessoa = Email.IdPessoa