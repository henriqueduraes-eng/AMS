-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/09/2026 às 19:29
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mercado`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `Código_cliente` int(20) NOT NULL,
  `Nome` text NOT NULL,
  `CPF` text NOT NULL,
  `E-mail` text NOT NULL,
  `Data_de_Nascimento` date NOT NULL,
  `Endereço` text NOT NULL,
  `Cidade` text NOT NULL,
  `Estado` text NOT NULL,
  `Data_de_Cadastro` date NOT NULL,
  `Telefone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `estoques`
--

CREATE TABLE `estoques` (
  `Código_estoque` int(11) NOT NULL,
  `Código_produto` int(11) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `Localização` text NOT NULL,
  `ultima_atualização` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `Código_Produto` int(11) NOT NULL,
  `Descrição` text NOT NULL,
  `Preço_Unitário` double NOT NULL,
  `Categoria` text NOT NULL,
  `Marca` text NOT NULL,
  `Data_de_Fabricação` text NOT NULL,
  `Nome_Produto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendas`
--

CREATE TABLE `vendas` (
  `código_vendas` int(11) NOT NULL,
  `código_cliente` int(11) NOT NULL,
  `código_produto` int(11) NOT NULL,
  `data_venda` date NOT NULL,
  `valor_total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Código_cliente`),
  ADD UNIQUE KEY `CPF` (`CPF`) USING HASH;

--
-- Índices de tabela `estoques`
--
ALTER TABLE `estoques`
  ADD PRIMARY KEY (`Código_estoque`),
  ADD KEY `Código_produto` (`Código_produto`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`Código_Produto`);

--
-- Índices de tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`código_vendas`),
  ADD KEY `código_cliente` (`código_cliente`),
  ADD KEY `código_produto` (`código_produto`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `estoques`
--
ALTER TABLE `estoques`
  ADD CONSTRAINT `estoques_ibfk_1` FOREIGN KEY (`Código_produto`) REFERENCES `produtos` (`Código_Produto`);

--
-- Restrições para tabelas `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`código_cliente`) REFERENCES `clientes` (`Código_cliente`),
  ADD CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`código_produto`) REFERENCES `produtos` (`Código_Produto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
