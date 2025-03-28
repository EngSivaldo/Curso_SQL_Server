/*2. Você trabalha no setor de marketing da empresa Contoso e acaba de ter 
uma ideia de oferecer descontos especiais para os clientes no dia de seus
aniversários. Para isso, você vai precisar listar todos os clientes e as
suas respectivas datas de nascimento, além de um contato.
b) Renomeie as colunas dessa tabela usando o alias (comando AS).*/

--a) Selecione as colunas: CustomerKey, FirstName, EmailAddress, BirthDate 
--da tabela dimCustomer.

--SELECT * FROM dimCustomer;

SELECT TOP(10) * FROM dimCustomer;

SELECT 
	CustomerKey, 
	FirstName, 
	EmailAddress, 
	BirthDate
FROM 
	dimCustomer;



--b) Renomeie as colunas dessa tabela usando o alias (comando AS).

SELECT 
    CustomerKey AS ChaveDoCliente, 
    FirstName AS PrimeiroNome, 
    EmailAddress AS EnderecoEmail, 
    BirthDate AS DataDeNascimento
FROM 
    dimCustomer;


SELECT COLUMN_NAME 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'dimCustomer';


/*INFORMATION_SCHEMA.COLUMNS: Esta tabela contém informações sobre todas as colunas em todas as tabelas do banco de dados.
COLUMN_NAME: Seleciona o nome das colunas.
TABLE_NAME = 'dimCustomer': Filtra para a tabela dimCustomer.*/


