-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 14-Dez-2025 às 19:40
-- Versão do servidor: 8.4.7
-- versão do PHP: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de dados: `pap`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `material`
--

DROP TABLE IF EXISTS `material`;
CREATE TABLE IF NOT EXISTS `material` (
  `id_material` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_material` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disciplina` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_material`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

DROP TABLE IF EXISTS `professor`;
CREATE TABLE IF NOT EXISTS `professor` (
  `id_professor` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_professor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `requisicao`
--

DROP TABLE IF EXISTS `requisicao`;
CREATE TABLE IF NOT EXISTS `requisicao` (
  `id_requisicao` int NOT NULL AUTO_INCREMENT,
  `data_requisicao` date NOT NULL,
  `data_prevista_devolucao` date DEFAULT NULL,
  `data_devolucao` date DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_professor` int NOT NULL,
  `id_funcionario` int NOT NULL,
  PRIMARY KEY (`id_requisicao`),
  KEY `id_professor` (`id_professor`),
  KEY `id_funcionario` (`id_funcionario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `id_stock` int NOT NULL AUTO_INCREMENT,
  `id_material` int NOT NULL,
  `localizacao` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantidade` int NOT NULL,
  PRIMARY KEY (`id_stock`),
  KEY `id_material` (`id_material`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
