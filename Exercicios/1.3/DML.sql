-- DML

USE Exercicio_1_3;

INSERT INTO Endereco (Numero, Cidade, Bairro, Complemento) VALUES (97, 'São Paulo', 'Tamanduateí','Bloco A');

INSERT INTO ClinicaPet (IdEndereco, NomeClinica) VALUES (1, 'Pets+');

INSERT INTO TipoPets (NomePets, DescrcaoPets) VALUES ('Ave', 'a');



INSERT INTO RacaPets (NomeRacaPets, DescricaoPets) VALUES ('Tucano', 'N/A');

INSERT INTO DonosPets (NomeDono) VALUES ('Guilherme');

--INSERT INTO Pets (IdTipoPets, IdRacaPets, IdDonos, NomePets, DataNascimento) VALUES (