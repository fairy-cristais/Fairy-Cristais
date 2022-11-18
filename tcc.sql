-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Nov-2022 às 15:46
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id` int(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `turma` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cadastro`
--

CREATE TABLE `tb_cadastro` (
  `id` int(11) NOT NULL,
  `usuario` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `endereco` varchar(300) NOT NULL,
  `senha` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_cadastro`
--

INSERT INTO `tb_cadastro` (`id`, `usuario`, `email`, `endereco`, `senha`) VALUES
(3, 'admin', 'admin@gmail.com', 'Rua Sao Paulo', '1212'),
(15, 'ana', 'ana@gmail.com', 'rua da ana ', '1212'),
(16, 'Maria Dos Santos', 'maria@gmail.com', 'Rua da Maria', 'maria123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_categoria`
--

CREATE TABLE `tb_categoria` (
  `id_categ` int(11) NOT NULL,
  `nome_categ` varchar(300) NOT NULL,
  `desc_categ` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_categoria`
--

INSERT INTO `tb_categoria` (`id_categ`, `nome_categ`, `desc_categ`) VALUES
(1, 'Pulseira', 'Pulseira de pedra ametista'),
(2, 'aaaa', 'aaaa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produto3`
--

CREATE TABLE `tb_produto3` (
  `id_prod` int(11) NOT NULL,
  `nome_prod` varchar(300) NOT NULL,
  `descricao` varchar(300) NOT NULL,
  `valor` varchar(300) NOT NULL,
  `categoria` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_produto3`
--

INSERT INTO `tb_produto3` (`id_prod`, `nome_prod`, `descricao`, `valor`, `categoria`) VALUES
(1, '➸ Turmalina rosa bruta', '', ' R$ 150,00', 'Cristal'),
(2, '➸ Apatita azul rolada', '.', ' R$15,00 ', 'Cristal'),
(3, '➸ Amazonita bruta ', '.', 'R$ 60,00', 'Cristal'),
(4, '➸ Coração de Cacoxenita ', '.', 'R$ 74,90', 'Cristal'),
(5, '➸ Quartzo vermelho rolado ', '.', 'R$ 08,00', 'Cristais'),
(6, '➸ Unakita rolada ', '.', 'R$ 13,00', 'Cristais'),
(7, '➸ Kit 7 cristais Chackras rolado ', '.', ' R$ 30,00', 'Cristais'),
(8, '➸ Ponta Lapidada de Quartzo Morango ', '.', 'R$ 70,00', 'Cristal'),
(9, '➸ Incensário peruano redondo roxo ', '.', 'R$ 19,90', 'Incenso'),
(10, '➸ Incensário canaleta bambu ', '.', 'R$ 8,00', 'Incenso'),
(11, '➸ Incensário peruano sol ', '.', 'R$ 24,90', 'Incenso'),
(12, '➸ Incensário peruano', '.', ' R$ 22,00', 'Incenso'),
(13, '➸ Incensário Ganesha ', '.', 'R$ 29,90', 'Sal de Banho'),
(14, '➸ Incensário redondo mão de Hamsa ', '.', 'R$ 39,00', 'Incenso'),
(15, '➸ Incensário Olho Grego ', '.', 'R$ 27,80', 'Incenso'),
(16, '➸ Incensário Yoga Namastê ', '.', 'R$ 45,00', 'Incenso'),
(17, '➸ Pulseira de Rodocrosita ', '.', ' R$ 39,00', 'Pulseira'),
(18, '➸ Pulseira de Ametista ', '.', 'R$ 25,90', 'Pulseira'),
(19, '➸ Pulseira de Quartzo Verde  ', '.', 'R$ 23,80', 'Pulseira'),
(20, '➸ Pulseira de Obsidiana Floco de Neve ', '.', 'R$ 31,90', 'Pulseira'),
(21, '➸ Pulseira de Cornalina ', '.', 'R$ 21,80', 'Pulseira'),
(22, '➸ Pulseira de Água Marinha ', '.', 'R$ 33,90', 'Pulseira'),
(23, '➸ Pulseira de Quartzo Rosa ', '.', 'R$ 40,90', 'Pulseira'),
(24, '➸ Pulseira de Jaspe Vermelho ', '.', 'R$ 27,50', 'Pulseira'),
(25, '➸ Japalama de Hematita ', '.', 'R$ 119,80', 'Japalama'),
(26, '➸ Japamala de Semente de Açaí Roxo ', '.', 'R$ 109,70', 'Japalama'),
(27, '➸ Japamala de cristais transparentes', '.', ' R$ 130,00', 'Japalama'),
(28, '➸ Japamala de Olho de Tigre ', '.', 'R$ 145,50', 'Japalama'),
(29, '➸ Japamala de cristais verdes', '.', ' R$ 130,00', 'Japalama'),
(30, '➸ Japamala 7 Chackras ', '.', 'R$ 139,90', 'Japalama'),
(31, '➸ Japamala de madeira com cristais azuis ', '.', 'R$ 155,80', 'Japalama'),
(32, '➸ Japamala de Semente de Açaí Azul ', '.', 'R$ 109,70', 'Japalama'),
(33, '➸ Sal Aromatizado Amor ', '.', ' R$ 12,00', 'Sal de Banho'),
(34, '➸ Banho de Ervas Só Love ', '.', 'R$ 10,00', 'Sal de Banho'),
(35, '➸ Sal Aromatizado Bom Sono ', '.', 'R$ 12,00', 'Sal de Banho'),
(36, '➸ Banho Energético para Limpeza e Proteção ', '.', 'R$ 13,00 ', 'Sal de Banho'),
(37, '➸ Banho de Ervas Tô Pronta! ', '.', 'R$ 18,00', 'Sal de Banho'),
(38, '➸ Banho De Ervas para Revigorar Energias ', '.', 'R$ 15,50 ', 'Sal de Banho'),
(39, '➸ Banho de Ervas Xô Urucubaca ', '.', 'R$ 19,00 ', 'Sal de Banho'),
(40, '➸ Banho de Ervas Nada me Abala  ', '.', 'R$ 18,40 ', 'Sal de Banho'),
(41, '➸ Incenso Nirvana Lavanda ', '.', 'R$ 18,00', 'Sal de Banho'),
(42, '➸ Incenso Massala Satya', '.', ' R$ 16,00', 'Incenso'),
(43, '➸ Sálvia Branca em bastão ', '.', 'R$ 22,00', 'Incenso'),
(44, '➸ Incenso Nirvana de Limpeza Espiritual ', '.', 'R$ 18,00', 'Incenso'),
(45, '➸ Incenso Massala Goloka Chackras', '.', ' R$ 19,50', 'Incenso'),
(46, '➸ Palo Santo ', '.', 'R$ 25,00', 'Incenso'),
(47, '➸ Incenso Padmini', '.', ' R$ 05,00', 'Incenso'),
(48, '➸ Incenso Massala Shankar ', '.', 'R$ 11,00', 'Incenso');

-- --------------------------------------------------------

--
-- Estrutura da tabela `upload`
--

CREATE TABLE `upload` (
  `id` int(11) NOT NULL,
  `path` varchar(250) NOT NULL,
  `data_upload` datetime NOT NULL,
  `nome` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `upload`
--

INSERT INTO `upload` (`id`, `path`, `data_upload`, `nome`) VALUES
(1, 'imagens/636a5c93d1ff0.jpeg', '0000-00-00 00:00:00', 'prod1.jpeg'),
(2, 'imagens/636a5cd8a8d65.jpg', '0000-00-00 00:00:00', 'prod22.jpg'),
(3, 'imagens/636a5cf1867e3.jpeg', '0000-00-00 00:00:00', 'prod3.jpeg'),
(4, 'imagens/636a5d086e11b.jpeg', '0000-00-00 00:00:00', 'prod4.jpeg'),
(5, 'imagens/636a6025a7c00.jpg', '0000-00-00 00:00:00', 'prod23.jpg'),
(6, 'imagens/636a604254136.jpg', '0000-00-00 00:00:00', 'prod24.jpg'),
(7, 'imagens/636a6087b13df.jpg', '0000-00-00 00:00:00', 'prod25.jpg'),
(8, 'imagens/636a60cfbd392.jpg', '0000-00-00 00:00:00', 'prod21.jpg'),
(9, 'imagens/636a610192b84.jpg', '0000-00-00 00:00:00', 'prod26.jpg'),
(10, 'imagens/636a611bb8167.jpg', '0000-00-00 00:00:00', 'prod27.jpg'),
(11, 'imagens/636a6147ee868.jpg', '0000-00-00 00:00:00', 'prod28.jpg'),
(12, 'imagens/636a618803f8e.jpg', '0000-00-00 00:00:00', 'prod29.jpg'),
(13, 'imagens/636a623a20ae2.jpg', '0000-00-00 00:00:00', 'prod30.jpg'),
(14, 'imagens/636a62539b40b.jpg', '0000-00-00 00:00:00', 'prod31.jpg'),
(15, 'imagens/636a62a9ca7e2.jpg', '0000-00-00 00:00:00', 'prod33.jpg'),
(16, 'imagens/636a683fac922.jpg', '0000-00-00 00:00:00', 'prod34.jpg'),
(17, 'imagens/636a6863a4f94.jpeg', '0000-00-00 00:00:00', 'prod5.jpeg'),
(18, 'imagens/636a687f59065.jpg', '0000-00-00 00:00:00', 'prod20.jpg'),
(19, 'imagens/636a6895ca662.jpg', '0000-00-00 00:00:00', 'prod35.jpg'),
(20, 'imagens/636a68b31c6c3.jpg', '0000-00-00 00:00:00', 'prod36.jpg'),
(21, 'imagens/636a68ed59784.jpg', '0000-00-00 00:00:00', 'prod37.jpg'),
(22, 'imagens/636a6905c683f.jpg', '0000-00-00 00:00:00', 'prod38.jpg'),
(23, 'imagens/636a691b10522.jpg', '0000-00-00 00:00:00', 'prod39.jpg'),
(24, 'imagens/636a693fb682d.jpg', '0000-00-00 00:00:00', 'prod40.jpg'),
(25, 'imagens/636a6962421cc.jpg', '0000-00-00 00:00:00', 'prod41.jpg'),
(26, 'imagens/636a698774222.jpg', '0000-00-00 00:00:00', 'prod42.jpg'),
(27, 'imagens/636a69b3aa45e.jpg', '0000-00-00 00:00:00', 'prod43.jpg'),
(28, 'imagens/636a69eecb86f.jpg', '0000-00-00 00:00:00', 'prod44.jpg'),
(29, 'imagens/636a6a033e584.jpg', '0000-00-00 00:00:00', 'prod45.jpg'),
(30, 'imagens/636a6aaa9d97d.jpg', '0000-00-00 00:00:00', 'prod46.jpg'),
(31, 'imagens/636a6acb560c5.jpg', '0000-00-00 00:00:00', 'prod47.jpg'),
(32, 'imagens/636a6ae33aba1.jpg', '0000-00-00 00:00:00', 'prod48.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_cadastro`
--
ALTER TABLE `tb_cadastro`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_categoria`
--
ALTER TABLE `tb_categoria`
  ADD PRIMARY KEY (`id_categ`);

--
-- Índices para tabela `tb_produto3`
--
ALTER TABLE `tb_produto3`
  ADD PRIMARY KEY (`id_prod`);

--
-- Índices para tabela `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_cadastro`
--
ALTER TABLE `tb_cadastro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `tb_categoria`
--
ALTER TABLE `tb_categoria`
  MODIFY `id_categ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_produto3`
--
ALTER TABLE `tb_produto3`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de tabela `upload`
--
ALTER TABLE `upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
