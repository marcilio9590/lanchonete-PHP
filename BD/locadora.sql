-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Nov-2017 às 03:29
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.1.9

create database locadora;

--
-- Database: `locadora`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `cod_cliente` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `ddd` varchar(10) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`cod_cliente`, `nome`, `email`, `cpf`, `sexo`, `ddd`, `telefone`, `endereco`, `bairro`, `cidade`, `estado`) VALUES
(1, 'cliente 1', 'cliente1@gmail.com', '11111111111', 'Masculino', '81', '988888888', 'rua teste', 'bairro teste', 'cidade teste', 'estado teste');

-- --------------------------------------------------------

--
-- Estrutura da tabela `filmes`
--

CREATE TABLE `filmes` (
  `cod_filme` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `status` int(10) NOT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `filmes`
--

INSERT INTO `filmes` (`cod_filme`, `nome`, `genero`, `status`, `preco`) VALUES
(1, 'Lagoa Azul', 'Romance', 1, '3.50'),
(2, 'Lagoa Azul 2', 'Romance', 1, '2.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `cod_funcionario` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `rua` varchar(50) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `rg` varchar(10) NOT NULL,
  `sexo` varchar(15) NOT NULL,
  `data_nascimento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `telefone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`cod_funcionario`, `nome`, `rua`, `cep`, `bairro`, `cidade`, `cpf`, `rg`, `sexo`, `data_nascimento`, `telefone`) VALUES
(1, 'Funcionario Teste', 'hgdfhjgf', 'hgfghf', 'hgfhgf', 'hgfhgf', 'hgfhgf', 'hgfhgf', 'hgfhgf', '2017-11-14 00:31:00', '654654654');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_locacao`
--

CREATE TABLE `itens_locacao` (
  `codigo` int(11) NOT NULL,
  `cod_filme` int(11) NOT NULL,
  `cod_locacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `itens_locacao`
--

INSERT INTO `itens_locacao` (`codigo`, `cod_filme`, `cod_locacao`) VALUES
(4, 2, 29),
(5, 1, 29),
(6, 2, 30),
(7, 1, 30),
(8, 1, 31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `locacoes`
--

CREATE TABLE `locacoes` (
  `cod_locacao` int(11) NOT NULL,
  `cod_cliente` int(11) NOT NULL,
  `cod_funcionario` int(11) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total` decimal(10,2) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `locacoes`
--

INSERT INTO `locacoes` (`cod_locacao`, `cod_cliente`, `cod_funcionario`, `data`, `total`, `status`) VALUES
(1, 1, 1, '2017-11-15 03:50:23', '3.50', 0),
(2, 1, 1, '2017-11-15 03:55:41', '3.50', 0),
(3, 1, 1, '2017-11-15 03:56:07', '3.50', 0),
(4, 1, 1, '2017-11-14 23:58:03', '2.00', 0),
(5, 1, 1, '2017-11-15 00:03:20', '2.00', 0),
(6, 1, 1, '2017-11-15 00:03:32', '2.00', 0),
(7, 1, 1, '2017-11-15 00:03:50', '2.00', 0),
(8, 1, 1, '2017-11-15 00:04:07', '2.00', 0),
(9, 1, 1, '2017-11-15 00:06:22', '3.50', 0),
(10, 1, 1, '2017-11-15 00:06:54', '3.50', 0),
(11, 1, 1, '2017-11-15 00:08:15', '2.00', 0),
(12, 1, 1, '2017-11-15 00:08:42', '2.00', 0),
(13, 1, 1, '2017-11-15 00:58:08', '2.00', 0),
(14, 1, 1, '2017-11-15 00:58:47', '2.00', 0),
(15, 1, 1, '2017-11-15 00:58:52', '2.00', 0),
(16, 1, 1, '2017-11-15 00:58:59', '2.00', 0),
(17, 1, 1, '2017-11-15 00:59:07', '2.00', 0),
(18, 1, 1, '2017-11-15 00:59:34', '2.00', 0),
(19, 1, 1, '2017-11-15 00:59:54', '3.50', 0),
(20, 1, 1, '2017-11-15 01:00:46', '3.50', 0),
(21, 1, 1, '2017-11-15 01:01:36', '3.50', 0),
(22, 1, 1, '2017-11-15 01:02:03', '5.50', 0),
(23, 1, 1, '2017-11-15 01:04:41', '5.50', 0),
(24, 1, 1, '2017-11-15 01:09:32', '5.50', 0),
(25, 1, 1, '2017-11-15 01:09:59', '5.50', 0),
(26, 1, 1, '2017-11-15 01:10:39', '5.50', 0),
(27, 1, 1, '2017-11-15 01:11:01', '5.50', 0),
(28, 1, 1, '2017-11-15 01:11:37', '5.50', 0),
(29, 1, 1, '2017-11-15 01:14:20', '5.50', 0),
(30, 1, 1, '2017-11-15 01:26:12', '5.50', 0),
(31, 1, 1, '2017-11-15 01:28:54', '3.50', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cod_cliente`);

--
-- Indexes for table `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`cod_filme`);

--
-- Indexes for table `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`cod_funcionario`);

--
-- Indexes for table `itens_locacao`
--
ALTER TABLE `itens_locacao`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `cod_locacao` (`cod_locacao`),
  ADD KEY `cod_filme` (`cod_filme`);

--
-- Indexes for table `locacoes`
--
ALTER TABLE `locacoes`
  ADD PRIMARY KEY (`cod_locacao`),
  ADD KEY `cod_cliente` (`cod_cliente`),
  ADD KEY `cod_funcionario` (`cod_funcionario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cod_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `filmes`
--
ALTER TABLE `filmes`
  MODIFY `cod_filme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `cod_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `itens_locacao`
--
ALTER TABLE `itens_locacao`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `locacoes`
--
ALTER TABLE `locacoes`
  MODIFY `cod_locacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `itens_locacao`
--
ALTER TABLE `itens_locacao`
  ADD CONSTRAINT `cod_filme` FOREIGN KEY (`cod_filme`) REFERENCES `filmes` (`cod_filme`),
  ADD CONSTRAINT `cod_locacao` FOREIGN KEY (`cod_locacao`) REFERENCES `locacoes` (`cod_locacao`);

--
-- Limitadores para a tabela `locacoes`
--
ALTER TABLE `locacoes`
  ADD CONSTRAINT `cod_cliente` FOREIGN KEY (`cod_cliente`) REFERENCES `clientes` (`cod_cliente`),
  ADD CONSTRAINT `cod_funcionario` FOREIGN KEY (`cod_funcionario`) REFERENCES `funcionarios` (`cod_funcionario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
