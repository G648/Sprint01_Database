--criando o script DML

USE Exercicio_1_1;

INSERT INTO Pessoa (NomePessoa, NumCHNPessoa) VALUES 
	('guilherme', '12345678901'),
	('Amanda','12344321987'),
	('Julia','76859233390')

INSERT INTO Email (IdPessoa, EndEmail) VALUES 
	(1, 'cezarguilherme03@gmail.com'),
	(2, 'amanda@amanda.com'),
	(3, 'julia@julia.com');

/*UPDATE Email
	SET EndEmail = 'Amanda@amanda.com.br'
	WHERE IdPessoa = 2

UPDATE Email
	SET EndEmail = 'Julia@Julia.com.br'
	WHERE IdPessoa = 3 */

INSERT INTO Telefone (IdPessoa, NumTelefone) VALUES 
	(2, '11 988888-9999'),
	(1, '11 89999-5555'),
	(3, '12 75544-7666');









































SELECT * FROM Pessoa;
SELECT * FROM Telefone;
SELECT * FROM Email;