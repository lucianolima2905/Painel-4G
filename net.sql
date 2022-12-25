-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 02-Dez-2022 às 22:00
-- Versão do servidor: 5.5.62-0ubuntu0.14.04.1
-- versão do PHP: 5.5.9-1ubuntu4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `net`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivo`
--

CREATE TABLE IF NOT EXISTS `arquivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) DEFAULT NULL,
  `titulo` varchar(250) DEFAULT NULL,
  `descricao` varchar(250) DEFAULT NULL,
  `botao` varchar(250) DEFAULT NULL,
  `apn` varchar(250) DEFAULT NULL,
  `imagem` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `file` varchar(250) DEFAULT NULL,
  `tipo` varchar(250) DEFAULT NULL,
  `operadora` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `chave`
--

CREATE TABLE IF NOT EXISTS `chave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `chave`
--

INSERT INTO `chave` (`id`, `chave`) VALUES
(1, 'UPZCHUH1YLTHE0GZDU6H');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config_suporte`
--

CREATE TABLE IF NOT EXISTS `config_suporte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cad` varchar(250) DEFAULT NULL,
  `SuportePaginacao` int(11) DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `icone_perfil`
--

CREATE TABLE IF NOT EXISTS `icone_perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagem` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagem_perfil`
--

CREATE TABLE IF NOT EXISTS `imagem_perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagem` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cad` int(11) NOT NULL DEFAULT '0',
  `acesso` int(11) NOT NULL DEFAULT '3',
  `nome` varchar(250) DEFAULT NULL,
  `login` varchar(250) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  `senha2` varchar(250) DEFAULT NULL,
  `expiredate` varchar(250) DEFAULT NULL,
  `cota` varchar(250) NOT NULL DEFAULT '0',
  `operadora` varchar(250) DEFAULT NULL,
  `derrubado` varchar(250) DEFAULT '0',
  `bloqueado` varchar(11) NOT NULL DEFAULT 'N',
  `LimiteTeste` varchar(250) NOT NULL DEFAULT '0',
  `data` varchar(250) DEFAULT NULL,
  `ValorCobrado` varchar(250) DEFAULT NULL,
  `msginterna` longtext,
  `email` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id`, `id_cad`, `acesso`, `nome`, `login`, `senha`, `senha2`, `expiredate`, `cota`, `operadora`, `derrubado`, `bloqueado`, `LimiteTeste`, `data`, `ValorCobrado`, `msginterna`, `email`) VALUES
(1, 1, 1, 'admin', 'admin', 'admin', '', '', '999998932394', '', '0', 'N', '0', '', '10.00', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `relatorio`
--

CREATE TABLE IF NOT EXISTS `relatorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cad` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `data` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servidor`
--

CREATE TABLE IF NOT EXISTS `servidor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) DEFAULT NULL,
  `server` varchar(250) DEFAULT NULL,
  `porta` varchar(250) DEFAULT NULL,
  `user` varchar(250) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  `icone` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sms`
--

CREATE TABLE IF NOT EXISTS `sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(250) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `suporte`
--

CREATE TABLE IF NOT EXISTS `suporte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserEmissor` varchar(250) DEFAULT NULL,
  `UserReceptor` varchar(250) DEFAULT NULL,
  `Assunto` varchar(250) DEFAULT NULL,
  `data` varchar(250) DEFAULT NULL,
  `anexo` varchar(250) DEFAULT NULL,
  `Mensagem` longtext,
  `LidaEmissor` varchar(11) NOT NULL DEFAULT 'N',
  `LidaReceptor` varchar(11) NOT NULL DEFAULT 'N',
  `PastaEmissor` int(11) NOT NULL DEFAULT '2',
  `PastaReceptor` int(11) NOT NULL DEFAULT '1',
  `Marcacao` int(11) NOT NULL DEFAULT '5',
  `Estrela` varchar(11) NOT NULL DEFAULT 'N',
  `ExcluirEmissor` varchar(11) NOT NULL DEFAULT 'N',
  `ExcluirReceptor` varchar(11) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `suporteresp`
--

CREATE TABLE IF NOT EXISTS `suporteresp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_suporte` int(11) DEFAULT NULL,
  `UserEmissor` varchar(250) DEFAULT NULL,
  `mensagem` longtext,
  `anexo` varchar(250) DEFAULT NULL,
  `data` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `urlteste`
--

CREATE TABLE IF NOT EXISTS `urlteste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CadUser` varchar(2500) DEFAULT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'N',
  `tempo` int(11) DEFAULT NULL,
  `cemail` varchar(11) NOT NULL DEFAULT 'N',
  `email` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
