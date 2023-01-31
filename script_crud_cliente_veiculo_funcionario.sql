-- Mateus Chagas Gomes

-- CRUD para as seguintes entidades:
-- cliente(id,nome,email,telefone)
-- veiculos(id,placa,ano,marca,id_cliente)
-- funcionarios(id,nome,funcao,salario,matricula,status_funcionario)

-- Homenagem ao professor: @profadevairvitorio



-- Criar uma base de dados

CREATE DATABASE empresa_localiza;
USE empresa_localiza;

CREATE TABLE clientes(
id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
telefone VARCHAR(12)
);

CREATE TABLE veiculos(
id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
placa VARCHAR(8) NOT NULL,
ano INTEGER NOT NULL,
marca VARCHAR(30),
id_cliente INTEGER NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

CREATE TABLE funcionarios(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	funcao VARCHAR(8) NOT NULL,
	salario DOUBLE NOT NULL,
	matricula INTEGER,
	status_funcionario INTEGER NOT NULL
);

INSERT INTO clientes(nome, email, telefone) VALUES ("Geraldo Marinho","geraldomarinho@gmail.com","279988607552");
INSERT INTO clientes(nome, email, telefone) VALUES ("Luis Almeida","luisalmeida@gmail.com","279988707551");
INSERT INTO clientes(nome, email, telefone) VALUES ("Pedro Vasconcelos","petrusvasconcelos@gmail.com","279980007552");

INSERT INTO veiculos(placa, ano, marca, id_cliente) VALUES ("MPR-6339","2016", "Mercedes",1);
INSERT INTO veiculos(placa, ano, marca, id_cliente) VALUES ("MXR-6238","2010", "Honda",2);
INSERT INTO veiculos(placa, ano, marca, id_cliente) VALUES ("MXR-6139","2012", "Gol",3);
INSERT INTO veiculos(placa, ano, marca, id_cliente) VALUES ("MXR-6639","2015", "Palio",2);

INSERT INTO funcionarios(nome, funcao, salario, matricula, status_funcionario) VALUES ("Sandro Almeida","gerente", 5000.50, 123456, 1);
INSERT INTO funcionarios(nome, funcao, salario, matricula, status_funcionario) VALUES ("Julio Vasconcelos","vendedor", 2000.50, 123457, 0);

-- Criando consultas em clientes:

-- 1. Todos os campos de todos os clientes:

SELECT * FROM clientes;

-- 2. Email do cliente com id = 2:

SELECT email FROM clientes WHERE id=2;

-- 3. Todos os nomes dos clientes:

SELECT nome FROM clientes;

-- 4. Todos os emails e telefones dos clientes:

SELECT email,telefone FROM clientes;

-- 5. Lista telefonica

SELECT nome,telefone FROM clientes;

-- Crindo consultas em veiculos:

-- 1. Todos os campos de todos os veiculos:

SELECT * FROM veiculos;

-- 2. Placa do veiculo com id = 3:

SELECT placa FROM veiculos WHERE id = 3;

-- 3. Todas as placas dos veiculos:

SELECT placa FROM veiculos;

-- 4. Todos os veiculos do cliente com id = 1:

SELECT * FROM veiculos WHERE id_cliente = 1;

-- Crindo consultas em funcionarios:

-- 1.Todos os funcionarios:

SELECT * FROM funcionarios;

-- 2. Todos os funcionarios ativos:

SELECT * FROM funcionarios WHERE status_funcionario = 1;

-- 3. Matricula de todos os funcionarios:

SELECT matricula FROM funcionarios;

-- 4. Funcao e salario de todos os funcionarios:

SELECT funcao, salario FROM funcionarios;

-- 5. Funcao, salario e status de todos os funcionarios ativos:

SELECT funcao, salario, status_funcionario FROM funcionarios WHERE status_funcionario = 1;

-- Atualizar os registros existentes usando o comando UPDATE:
-- Clientes 
-- 1. Atualizar o nome do cliente de id = 2 para "Junior Silva" WHERE id = 2:

UPDATE clientes SET nome = "Junior Silva" WHERE id = 2;

-- Veiculos
-- 1. Atualizar o ano do veiculo do cliente d eid = 2 para 1997:

UPDATE veiculos SET ano = 1997 WHERE id_cliente = 2;

-- Funcionarios
-- 1. Atualizar o nome do funcionario de id = 1 para "Jonas":

UPDATE funcionarios SET nome = "Jonas" WHERE id = 1;

-- Obrigado!