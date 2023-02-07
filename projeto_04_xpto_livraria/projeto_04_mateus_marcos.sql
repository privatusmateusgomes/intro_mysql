-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Fev-2023 às 19:34
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


--
-- Banco de dados: `xpto_livraria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autores`
--

CREATE TABLE `autores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `autores`
--

INSERT INTO `autores` (`id`, `nome`, `email`) VALUES
(1, 'João', 'joão@joão.com'),
(2, 'Pedro', 'pedro@pedro.com'),
(3, 'Marcos', 'marcos@marcos.com'),
(4, 'Aurélio', 'aurélio@aurélio.com'),
(5, 'Rick', 'rick@rick.com'),
(6, 'Paulo', 'paulo@paulo.com'),
(7, 'Matias', 'matias@matias.com'),
(8, 'Vinicius', 'vinicius@vinicius.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `cpf`) VALUES
(1, 'Kauê Goncalves Rocha', 'kauegoncalvesrocha@gmail.com', '72925533973'),
(2, 'Laura Cavalcanti Barbosa', 'lauracavalcantibarbosa@gmail.com', '75627114290'),
(3, 'Renan Barros Ferreira', 'renanbarrosferreira@gmail.com', '33105651225'),
(4, 'Eduardo Cardoso Martins', 'eduardocardosomartins@gmail.com', '68461790111'),
(5, 'Júlia Pereira Araujo', 'juliapereiraaraujo@gmail.com', '10688391630');

-- --------------------------------------------------------

--
-- Estrutura da tabela `editoras`
--

CREATE TABLE `editoras` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cnpj` varchar(14) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `editoras`
--

INSERT INTO `editoras` (`id`, `nome`, `cnpj`, `telefone`, `email`) VALUES
(1, 'Senac', '34432660000163', '8939876873', 'contato.senac@gmail.com'),
(2, 'Erika', '77992467000190', '9523164125', 'contato.erika@gmail.com'),
(3, 'Adevair', '31387904000145', '4331688832', 'contato.adevair@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `id` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`id`, `quantidade`, `id_livro`) VALUES
(1, 50, 35),
(2, 100, 12),
(3, 150, 40),
(4, 80, 16),
(5, 40, 15),
(6, 60, 21),
(7, 20, 19),
(8, 90, 34),
(9, 50, 38),
(10, 30, 39);

-- --------------------------------------------------------

--
-- Estrutura da tabela `formas_pagamento`
--

CREATE TABLE `formas_pagamento` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `formas_pagamento`
--

INSERT INTO `formas_pagamento` (`id`, `tipo`) VALUES
(2, 'Cartão de Crédito'),
(3, 'Dinheiro'),
(1, 'PIX');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `matricula` int(11) NOT NULL,
  `status_funcionario` int(11) NOT NULL,
  `data_cadastro` date NOT NULL,
  `id_turno` int(11) NOT NULL,
  `id_funcao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`, `matricula`, `status_funcionario`, `data_cadastro`, `id_turno`, `id_funcao`) VALUES
(1, 'Pedro  da silva', 123456, 1, '2022-01-20', 2, 1),
(2, 'Marcos Silveira', 321654, 1, '2022-10-21', 2, 1),
(3, 'João Silvestre', 147852, 1, '2021-01-22', 2, 1),
(4, 'Augusto Pereira', 369852, 1, '2023-01-23', 2, 2),
(5, 'Adevair Vitório', 1596327, 1, '1998-01-24', 1, 1),
(6, 'Ezequiel Barcellos', 3461987, 0, '2022-01-25', 2, 1),
(7, 'Thiago Andreão', 19555642, 1, '2022-01-26', 2, 1),
(8, 'Junior Silva', 333214, 1, '2022-01-27', 2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcoes`
--

CREATE TABLE `funcoes` (
  `id` int(11) NOT NULL,
  `descricao` varchar(20) NOT NULL,
  `salario` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcoes`
--

INSERT INTO `funcoes` (`id`, `descricao`, `salario`) VALUES
(1, 'Vendedor', 2300),
(2, 'Gerente', 4800),
(3, 'Estoquista', 1900);

-- --------------------------------------------------------

--
-- Estrutura da tabela `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `generos`
--

INSERT INTO `generos` (`id`, `descricao`) VALUES
(3, 'Ação'),
(5, 'Comédia'),
(2, 'Ficção Científica'),
(1, 'Romance'),
(4, 'Terror');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `codigo_barras` varchar(14) NOT NULL,
  `preco` double NOT NULL,
  `data_cadastro` date NOT NULL,
  `id_editora` int(11) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`id`, `titulo`, `isbn`, `codigo_barras`, `preco`, `data_cadastro`, `id_editora`, `id_autor`, `id_genero`) VALUES
(1, 'HARRY POTTER 1', '3717502934', '59308158066', 48, '2022-05-20', 2, 7, 1),
(2, 'HARRY POTTER 2', '6037103689', '99895704364', 39, '2022-01-21', 2, 8, 3),
(3, 'HARRY POTTER 3', '7997100562', '40745635495', 27, '2022-06-22', 2, 5, 4),
(4, 'HARRY POTTER 4', '9624849758', '84837016126', 53, '2022-05-23', 3, 3, 5),
(5, 'HARRY POTTER 5', '9472899286', '92250388426', 60, '2022-01-24', 3, 4, 5),
(6, 'HARRY POTTER 6', '8528600203', '12539927956', 56, '2022-01-25', 3, 7, 2),
(7, 'HARRY POTTER 7', '6014655524', '57174752904', 30, '2022-01-26', 3, 5, 3),
(8, 'SENHOR DOS ANÉIS 1', '9621192921', '84782979020', 67, '2022-09-27', 2, 8, 2),
(9, 'SENHOR DOS ANÉIS 2', '3752986104', '56562969981', 66, '2022-10-28', 2, 1, 4),
(10, 'SENHOR DOS ANÉIS 3', '2321211855', '83235742401', 21, '2022-01-29', 3, 5, 4),
(11, 'SENHOR DOS ANÉIS 4', '933426280', '73978948413', 70, '2022-01-30', 3, 3, 4),
(12, 'PATATI PATATA EM FAMÍLIA', '6409233573', '38567242352', 4, '2022-01-31', 2, 6, 1),
(13, 'INTROÇÃO AO MYSQL', '4133810231', '42059427634', 45, '2022-01-30', 2, 7, 1),
(14, 'JAVA 8', '9239997621', '32637019714', 78, '2022-01-21', 1, 3, 2),
(15, 'HEROI POR UM DIA', '4525767108', '93111460475', 36, '2022-01-28', 2, 4, 2),
(16, 'MÃE GANHEI A COPA', '1376648637', '44656438062', 69, '2022-01-01', 2, 3, 3),
(17, 'MENTE MILIONÁRIA', '554379976', '10151259801', 61, '2022-01-16', 1, 4, 2),
(18, '1 MILHÃO EM 60 DIAS', '4862801448', '33629646444', 62, '2022-01-27', 1, 2, 1),
(19, 'PAI RICO FILHO POBRE', '6040861313', '92408908319', 33, '2022-02-28', 2, 3, 1),
(20, 'DIÁRIO DE UM BANANA', '8713309107', '98549016009', 40, '2022-01-29', 2, 8, 4),
(21, 'ANABELE A HISTÓRIA NÃO CONTADA', '3433283880', '41375702770', 37, '2022-01-30', 1, 3, 5),
(22, 'VONTADE DE VENCER', '3484100484', '33919957628', 70, '2022-01-21', 1, 6, 2),
(23, 'ROCK ESTILO DE VIDA', '516010772', '54370307170', 20, '2022-01-12', 2, 3, 2),
(24, 'CÁCLULO 1 - SW', '3715766542', '51564962337', 81, '2022-01-13', 1, 7, 1),
(25, 'CÁLCULO 2 -JWL', '256205462', '94961813528', 10, '2022-01-14', 1, 3, 3),
(26, 'GEOMETRIA', '3025013731', '57837178375', 35, '2022-01-25', 1, 5, 3),
(27, 'INTRODUÇÃO A LÓGICA', '9406304542', '83574001258', 29, '2022-01-26', 1, 5, 1),
(28, 'ABC DA PROGRAMAÇÃO V1', '2945847474', '87781256511', 17, '2022-01-17', 1, 2, 1),
(29, 'ABC DA PROGRAMAÇÃO V2', '9558040266', '46061764365', 58, '2022-01-28', 1, 3, 4),
(30, 'ABC DA PROGRAMAÇÃO V3', '5035122051', '18222623621', 34, '2022-01-29', 3, 4, 1),
(31, 'ABC DA PROGRAMAÇÃO V4', '1889235348', '5909368764', 30, '2022-01-20', 3, 4, 4),
(32, 'ABC DA PROGRAMAÇÃO V5', '9240713393', '35250086127', 89, '2022-01-11', 2, 2, 5),
(33, 'ABC DA PROGRAMAÇÃO V6', '5212665304', '95136212603', 48, '2022-01-22', 1, 6, 5),
(34, 'HELLO WORD EM 50 LINGUAGENS', '5492188378', '47659916266', 30, '2022-01-13', 3, 5, 2),
(35, 'ODEIO BANCO DE DADOS V1', '2990418436', '77440868731', 61, '2022-01-14', 2, 7, 4),
(36, 'ODEIO BANCO DE DADOS V2', '4361942761', '28145386053', 66, '2022-01-25', 2, 1, 2),
(37, 'A VIDA ALÉM DO BANCO DE DADOS', '9276322316', '49126484831', 42, '2022-06-26', 1, 1, 3),
(38, '123 RUA - LAYOFF BRASIL', '1927241582', '72051394852', 73, '2022-03-17', 2, 5, 1),
(39, 'BRASIL UM PAÍS DE DEV\'S', '1218001174', '12070357853', 72, '2022-12-18', 2, 4, 3),
(40, 'SEM PACIÊNCIA PARA NOME', '1759947864', '46632949184', 76, '2022-11-19', 3, 8, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turnos`
--

CREATE TABLE `turnos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(15) NOT NULL,
  `carga_horaria` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turnos`
--

INSERT INTO `turnos` (`id`, `descricao`, `carga_horaria`) VALUES
(1, 'Matutino', 5),
(2, 'Vespertino', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `quantidade_livros` int(11) NOT NULL,
  `data_venda` date NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_pagamento` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id`, `quantidade_livros`, `data_venda`, `id_cliente`, `id_pagamento`, `id_funcionario`, `id_livro`) VALUES
(1, 3, '2023-02-01', 1, 1, 1, 35),
(2, 2, '2023-02-02', 3, 3, 2, 12),
(3, 5, '2023-02-03', 4, 2, 3, 40),
(4, 2, '2023-02-04', 5, 2, 5, 16),
(5, 5, '2023-02-05', 1, 1, 2, 15),
(6, 1, '2023-02-05', 2, 3, 7, 21),
(7, 4, '2023-02-05', 3, 1, 3, 19),
(8, 6, '2023-02-06', 5, 2, 7, 34),
(9, 1, '2023-02-06', 1, 3, 3, 38),
(10, 5, '2023-02-06', 3, 1, 1, 39);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices para tabela `editoras`
--
ALTER TABLE `editoras`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cnpj` (`cnpj`),
  ADD UNIQUE KEY `telefone` (`telefone`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_livro` (`id_livro`);

--
-- Índices para tabela `formas_pagamento`
--
ALTER TABLE `formas_pagamento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tipo` (`tipo`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matricula` (`matricula`),
  ADD KEY `id_turno` (`id_turno`),
  ADD KEY `id_funcao` (`id_funcao`);

--
-- Índices para tabela `funcoes`
--
ALTER TABLE `funcoes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descricao` (`descricao`);

--
-- Índices para tabela `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descricao` (`descricao`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD UNIQUE KEY `codigo_de_barras` (`codigo_barras`),
  ADD KEY `id_editora` (`id_editora`),
  ADD KEY `id_autor` (`id_autor`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Índices para tabela `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descricao` (`descricao`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_pagamento` (`id_pagamento`),
  ADD KEY `id_funcionario` (`id_funcionario`),
  ADD KEY `id_livro` (`id_livro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autores`
--
ALTER TABLE `autores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `editoras`
--
ALTER TABLE `editoras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `estoque`
--
ALTER TABLE `estoque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `formas_pagamento`
--
ALTER TABLE `formas_pagamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `funcoes`
--
ALTER TABLE `funcoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `turnos`
--
ALTER TABLE `turnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estoque`
--
ALTER TABLE `estoque`
  ADD CONSTRAINT `estoque_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`id`);

--
-- Limitadores para a tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `funcionarios_ibfk_1` FOREIGN KEY (`id_turno`) REFERENCES `turnos` (`id`),
  ADD CONSTRAINT `funcionarios_ibfk_2` FOREIGN KEY (`id_funcao`) REFERENCES `funcoes` (`id`);

--
-- Limitadores para a tabela `livros`
--
ALTER TABLE `livros`
  ADD CONSTRAINT `livros_ibfk_1` FOREIGN KEY (`id_editora`) REFERENCES `editoras` (`id`),
  ADD CONSTRAINT `livros_ibfk_2` FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id`),
  ADD CONSTRAINT `livros_ibfk_3` FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id`);

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`id_pagamento`) REFERENCES `formas_pagamento` (`id`),
  ADD CONSTRAINT `vendas_ibfk_3` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionarios` (`id`),
  ADD CONSTRAINT `vendas_ibfk_4` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- Criação da Base de Dados
CREATE DATABASE xpto_livraria;

-- Conectar na Base de Dados
USE xpto_livraria;

-- Criação das Tabelas
-- generos
CREATE TABLE generos(
	id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
        descricao VARCHAR(30) NOT NULL UNIQUE
);

-- autores
CREATE TABLE autores(
    id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE
);

-- editoras
CREATE TABLE editoras(
    id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cnpj VARCHAR(14) NOT NULL UNIQUE,
    telefone VARCHAR(11) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL UNIQUE
);

-- clientes
CREATE TABLE clientes(
    id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    cpf VARCHAR(11) NOT NULL UNIQUE
);

-- formas_pagamento
CREATE TABLE formas_pagamento(
    id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    tipo VARCHAR(20) NOT NULL UNIQUE
);

-- turnos
CREATE TABLE turnos(
    id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(15) NOT NULL UNIQUE,
    carga_horaria DOUBLE NOT NULL
);

-- funcoes
CREATE TABLE funcoes(
    id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(20) NOT NULL UNIQUE,
    salario DOUBLE NOT NULL
);

-- livros
CREATE TABLE livros(
    id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(50) NOT NULL,
    isbn VARCHAR(13) NOT NULL UNIQUE,
    codigo_de_barras VARCHAR(14) NOT NULL UNIQUE,
    preco DOUBLE NOT NULL,
    data_de_cadastro DATE NOT NULL,
    id_editora INTEGER NOT NULL,
    id_autor INTEGER NOT NULL,
    id_genero INTEGER NOT NULL,
    FOREIGN KEY (id_editora) REFERENCES editoras(id),
    FOREIGN KEY (id_autor) REFERENCES autores(id),
    FOREIGN KEY (id_genero) REFERENCES generos(id)
);

-- estoque
CREATE TABLE estoque(
    id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    quantidade INTEGER NOT NULL,
    id_livro INTEGER NOT NULL,
    FOREIGN KEY (id_livro) REFERENCES livros(id)
);

-- funcionarios
CREATE TABLE funcionarios(
    id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    matricula INTEGER NOT NULL UNIQUE,
    status_funcionario INTEGER NOT NULL,
    data_cadastro DATE NOT NULL,
    id_turno INTEGER NOT NULL,
    id_funcao INTEGER NOT NULL,
    FOREIGN KEY (id_turno) REFERENCES turnos(id),
    FOREIGN KEY (id_funcao) REFERENCES funcoes(id)
);

-- vendas
CREATE TABLE vendas(
    id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    quantidade_livros INTEGER NOT NULL,
    data_venda DATE NOT NULL,
    id_cliente INTEGER NOT NULL,
    id_pagamento INTEGER NOT NULL,
    id_funcionario INTEGER NOT NULL,
    id_livro INTEGER NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_pagamento) REFERENCES formas_pagamento(id),
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id),
    FOREIGN KEY (id_livro) REFERENCES livros(id)
);

-- Inserção de dados
-- generos
INSERT INTO generos(descricao) VALUES
("Romance"),
("Ficção Científica"),
("Ação"),
("Terror"),
("Comédia");

-- autores
INSERT INTO autores(nome, email) VALUES 
("João", "joão@joão.com"),
("Pedro", "pedro@pedro.com"),
("Marcos", "marcos@marcos.com"),
("Aurélio", "aurélio@aurélio.com"),
("Rick", "rick@rick.com"),
("Paulo", "paulo@paulo.com"),
("Matias", "matias@matias.com"),
("Vinicius", "vinicius@vinicius.com");

-- editoras
INSERT INTO editoras(nome, cnpj, telefone, email) VALUES
("Senac","34432660000163","8939876873","contato.senac@gmail.com"),
("Erika","77992467000190","9523164125","contato.erika@gmail.com"),
("Adevair","31387904000145","4331688832","contato.adevair@gmail.com");

-- livros
INSERT INTO livros(titulo, isbn, preco, data_cadastro, codigo_barras, id_genero, id_autor, id_editora) VALUES
("HARRY POTTER 1",	3717502934,	48,	"2022-05-20",	59308158066,	1,	7,	2),
("HARRY POTTER 2",	6037103689,	39,	"2022-01-21",	99895704364,	3,	8	,2),
("HARRY POTTER 3",	7997100562,	27,	"2022-06-22",	40745635495,	4,	5,	2),
("HARRY POTTER 4",	9624849758,	53,	"2022-05-23",	84837016126,	5, 3, 3),
("HARRY POTTER 5",	9472899286,	60,	"2022-01-24",	92250388426,	5,	4,	3),
("HARRY POTTER 6",	8528600203,	56,	"2022-01-25",	12539927956,	2,	7,	3),
("HARRY POTTER 7",	6014655524,	30,	"2022-01-26",	57174752904,	3,	5,	3),
("SENHOR DOS ANÉIS 1",	9621192921,	67,	"2022-09-27",	84782979020,	2,	8,	2),
("SENHOR DOS ANÉIS 2",	3752986104,	66,	"2022-10-28",	56562969981,	4,	1,	2),
("SENHOR DOS ANÉIS 3",	2321211855,	21,	"2022-01-29",	83235742401,	4,	5,	3),
("SENHOR DOS ANÉIS 4",	933426280,	70,	"2022-01-30",	73978948413,	4,	3,	3),
("PATATI PATATA EM FAMÍLIA",	6409233573,	4,	"2022-01-31",	38567242352,	1,	6,	2),
("INTROÇÃO AO MYSQL",	4133810231,	45,	"2022-01-30",	42059427634,	1,	7,	2),
("JAVA 8",	9239997621,	78,	"2022-01-21",	32637019714,	2,	3,	1),
("HEROI POR UM DIA",	4525767108,	36,	"2022-01-28",	93111460475,	2,	4,	2),
("MÃE GANHEI A COPA",	1376648637,	69,	"2022-01-01",	44656438062,	3,	3,	2),
("MENTE MILIONÁRIA",	554379976,	61,	"2022-01-16",	10151259801,	2,	4,	1),
("1 MILHÃO EM 60 DIAS",	4862801448,	62,	"2022-01-27",	33629646444,	1,	2,	1),
("PAI RICO FILHO POBRE",	6040861313,	33,	"2022-02-28",	92408908319,	1,	3,	2),
("DIÁRIO DE UM BANANA",	8713309107,	40,	"2022-01-29",	98549016009,	4,	8,	2),
("ANABELE A HISTÓRIA NÃO CONTADA",	3433283880,	37,	"2022-01-30",	41375702770,	5,	3,	1),
("VONTADE DE VENCER",	3484100484,	70,	"2022-01-21",	33919957628,	2,	6,	1),
("ROCK ESTILO DE VIDA",	516010772,	20,	"2022-01-12",	54370307170,	2,	3,	2),
("CÁCLULO 1 - SW",	3715766542,	81,	"2022-01-13",	51564962337,	1,	7,	1),
("CÁLCULO 2 -JWL",	256205462,	10,	"2022-01-14",	94961813528,	3,	3,	1),
("GEOMETRIA",	3025013731,	35,	"2022-01-25",	57837178375,	3,	5,	1),
("INTRODUÇÃO A LÓGICA",	9406304542,	29,	"2022-01-26",	83574001258,	1,	5,	1),
("ABC DA PROGRAMAÇÃO V1",	2945847474,	17,	"2022-01-17",	87781256511,	1,	2,	1),
("ABC DA PROGRAMAÇÃO V2" ,9558040266,	58,	"2022-01-28",	46061764365,	4,	3,	1),
("ABC DA PROGRAMAÇÃO V3",	5035122051,	34,	"2022-01-29",	18222623621,	1,	4,	3),
("ABC DA PROGRAMAÇÃO V4",	1889235348,	30,	"2022-01-20",	5909368764,	4,	4,	3),
("ABC DA PROGRAMAÇÃO V5",	9240713393,	89,	"2022-01-11",	35250086127,	5,	2,	2),
("ABC DA PROGRAMAÇÃO V6",	5212665304,	48,	"2022-01-22",	95136212603,	5,	6,	1),
("HELLO WORD EM 50 LINGUAGENS",	5492188378,	30,	"2022-01-13",	47659916266,	2,	5,	3),
("ODEIO BANCO DE DADOS V1",	2990418436,	61,	"2022-01-14",	77440868731,	4,	7,	2),
("ODEIO BANCO DE DADOS V2",	4361942761,	66,	"2022-01-25",	28145386053,	2,	1,	2),
("A VIDA ALÉM DO BANCO DE DADOS",	9276322316,	42,	"2022-06-26",	49126484831,	3,	1,	1),
("123 RUA - LAYOFF BRASIL",	1927241582,	73,	"2022-03-17",	72051394852,	1,	5,	2),
("BRASIL UM PAÍS DE DEV'S",	1218001174,	72,	"2022-12-18",	12070357853,	3,	4,	2),
("SEM PACIÊNCIA PARA NOME",	1759947864,	76,	"2022-11-19",	46632949184,	2,	8,	3);

-- estoque
INSERT INTO estoque(quantidade, id_livro) VALUES
(50, 35),
(100, 12),
(150, 40),
(80, 16),
(40, 15),
(60, 21),
(20, 19),
(90, 34),
(50, 38),
(30, 39);

-- clientes
INSERT INTO clientes(nome, email, cpf) VALUES
("Kauê Goncalves Rocha", "kauegoncalvesrocha@gmail.com", "72925533973"),
("Laura Cavalcanti Barbosa", "lauracavalcantibarbosa@gmail.com", "75627114290"),
("Renan Barros Ferreira", "renanbarrosferreira@gmail.com", "33105651225"),
("Eduardo Cardoso Martins", "eduardocardosomartins@gmail.com", "68461790111"),
("Júlia Pereira Araujo", "juliapereiraaraujo@gmail.com", "10688391630");

-- vendas
INSERT INTO vendas(quantidade_livros, data_venda, id_cliente, id_pagamento, id_funcionario, id_livro) VALUES
(3, "2023-02-01", 1, 1, 1, 35),
(2, "2023-02-02", 3, 3, 2, 12),
(5, "2023-02-03", 4, 2, 3, 40),
(2, "2023-02-04", 5, 2, 5, 16),
(5, "2023-02-05", 1, 1, 2, 15),
(1, "2023-02-05", 2, 3, 7, 21),
(4, "2023-02-05", 3, 1, 3, 19),
(6, "2023-02-06", 5, 2, 7, 34),
(1, "2023-02-06", 1, 3, 3, 38),
(5, "2023-02-06", 3, 1, 1, 39);

-- funcionarios
INSERT INTO funcionarios(nome, matricula, status_funcionario, data_cadastro,id_funcao, id_turno) VALUES
("Pedro  da silva",	123456,	1,	"2022-01-20",	1,	2),
("Marcos Silveira",	321654,	1,	"2022-10-21",	1,	2),
("João Silvestre",	147852,	1,	"2021-01-22",	1,	2),
("Augusto Pereira",	369852,	1,	"2023-01-23",	2,	2),
("Adevair Vitório",	1596327,	1,	"1998-01-24",	1,	1),
("Ezequiel Barcellos",	3461987,	0,	"2022-01-25",	1,	2),
("Thiago Andreão",	19555642,	1,	"2022-01-26",	1,	2),
("Junior Silva",	333214,	1	,"2022-01-27"	,2	,2);

-- turnos
INSERT INTO turnos(descricao, carga_horaria) VALUES
("Matutino", 5),
("Vespertino", 5);

-- funcoes
INSERT INTO funcoes(descricao, salario) VALUES
("Gerente", 4800.00),
("Vendedor", 2300.00),
("Estoquista", 1900.00);

-- formas_pagamento
INSERT INTO formas_pagamento(tipo) VALUES
("PIX"),
("Cartão de Crédito"),
("Dinheiro");


-- Todas as consultas que foram realizadas


SELECT estoque.quantidade, livros.titulo FROM estoque JOIN livros ON estoque.id_livro = livros.id;


SELECT autores.nome, livros.titulo FROM autores JOIN livros ON livros.id_autor = autores.id;


SELECT livros.titulo, generos.descricao FROM livros JOIN generos ON livros.id_autor = generos.id;


SELECT nome,cpf,email FROM clientes;


SELECT funcionarios.nome, vendas.quantidade_livros FROM vendas JOIN funcionarios  ON vendas.id_funcionario = funcionarios.id ORDER BY vendas.quantidade_livros DESC;


SELECT funcionarios.nome, vendas.quantidade_livros AS QNT FROM vendas JOIN funcionarios  ON vendas.id_funcionario = funcionarios.id ORDER BY vendas.quantidade_livros DESC;


SELECT titulo, preco, codigo_barras FROM livros;

 
SELECT titulo as Título, preco AS Preço, codigo_barras AS Código FROM livros;


SELECT vendas.data_venda, livros.titulo FROM vendas JOIN livros ON vendas.id_livro = livros.id WHERE data_venda BETWEEN "2023-02-02" AND "2023-02-23";


SELECT vendas.data_venda, vendas.quantidade_livros, livros.titulo FROM vendas JOIN livros ON vendas.id_livro = livros.id WHERE data_venda BETWEEN "2023-02-01" AND "2023-02-28";
