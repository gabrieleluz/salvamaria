-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 04-Jun-2017 às 10:17
-- Versão do servidor: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salvamaria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `certidoes`
--

CREATE TABLE `certidoes` (
  `id` int(11) NOT NULL,
  `tipo` enum('FISCALIZACAO','RECUSA','RETORNO','TERMINO','NEGATIVA_ENDERECO') NOT NULL,
  `data` datetime NOT NULL,
  `testemunha` varchar(100) NOT NULL,
  `depoimento_usuaria` mediumtext NOT NULL,
  `depoimento_agressor` mediumtext,
  `users_id` int(11) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `processo` varchar(255) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `endereco_visita` varchar(255) DEFAULT NULL,
  `ponto_referencia` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `turno_visita` varchar(255) DEFAULT NULL,
  `estado_civil` varchar(255) DEFAULT NULL,
  `filhos` varchar(255) DEFAULT NULL,
  `filhos_com_agressor` varchar(255) DEFAULT NULL,
  `escolaridade` varchar(255) DEFAULT NULL,
  `etnia` varchar(255) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `religiao` varchar(255) DEFAULT NULL,
  `profissao` varchar(255) DEFAULT NULL,
  `trabalha` varchar(255) DEFAULT NULL,
  `ultimo_emprego` varchar(255) DEFAULT NULL,
  `local_trabalho` varchar(255) DEFAULT NULL,
  `renda` varchar(255) DEFAULT NULL,
  `responsavel_sustento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `nome`, `processo`, `createdAt`, `updatedAt`, `rua`, `bairro`, `numero`, `cidade`, `complemento`, `endereco_visita`, `ponto_referencia`, `telefone`, `turno_visita`, `estado_civil`, `filhos`, `filhos_com_agressor`, `escolaridade`, `etnia`, `idade`, `religiao`, `profissao`, `trabalha`, `ultimo_emprego`, `local_trabalho`, `renda`, `responsavel_sustento`) VALUES
(1, 'teste', 'teste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'ingrid', 'ingrid', '2017-06-04', '2017-06-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'ingrid', 'ingrid', '2017-06-04', '2017-06-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'retretert', 'ingrid', '2017-06-04', '2017-06-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Ingrid Cruz Rodrigues', 'ingrid', '2017-06-04', '2017-06-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'GDGFDGD', 'ingrid', '2017-06-04', '2017-06-04', 'GDGDG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Ingrid Cruz Rodrigues', '43244234', '2017-06-04', '2017-06-04', 'Avenida Cardeal da Silva', 'sad', 534553, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'hdf', 'sem numero vai?', '2017-06-04', '2017-06-04', 'hdfh', 'hdfhd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2222', 'sem numero vai?', '2017-06-04', '2017-06-04', 'hdfh', 'hdfhd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Ingrid Cruz Rodrigues', 'ingrid', '2017-06-04', '2017-06-04', 'Avenida Cardeal da Silva', 'sad', 0, 'Salvador', 'fsfds', 'Avenida Cardeal da Silva', 'dsfs', '75981100645', 'fsf', 'bahia', '2', '2', '2', '2', 1, 'fsf', '2', 'fsf', 'fsf', 'Salvador', '2', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certidoes`
--
ALTER TABLE `certidoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_certidoes_users_idx` (`users_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `certidoes`
--
ALTER TABLE `certidoes`
  ADD CONSTRAINT `fk_certidoes_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
