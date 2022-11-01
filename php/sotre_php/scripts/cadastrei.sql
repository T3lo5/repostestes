-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Nov-2022 às 20:16
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastrei`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `address`
--

CREATE TABLE `address` (
  `id` int(10) UNSIGNED NOT NULL,
  `complemento` varchar(80) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `bairro` varchar(80) NOT NULL,
  `cep` varchar(8) NOT NULL,
  `uf` char(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `public_place_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `address`
--

INSERT INTO `address` (`id`, `complemento`, `numero`, `bairro`, `cep`, `uf`, `created_at`, `updated_at`, `public_place_id`) VALUES
(1, '16 Conjunto de casa', '19', 'Interior', '17512000', 'SP', '2022-10-28 11:03:36', '2022-10-28 11:03:36', 29);

-- --------------------------------------------------------

--
-- Estrutura da tabela `addres_user`
--

CREATE TABLE `addres_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo_endereco` varchar(40) NOT NULL,
  `address_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `addres_user`
--

INSERT INTO `addres_user` (`id`, `tipo_endereco`, `address_id`, `users_id`) VALUES
(1, 'Residencial', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome_categoria` varchar(130) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `category`
--

INSERT INTO `category` (`id`, `nome_categoria`) VALUES
(1, 'Masculino'),
(2, 'Feminino');

-- --------------------------------------------------------

--
-- Estrutura da tabela `payment_status`
--

CREATE TABLE `payment_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `purchasing_id` int(10) UNSIGNED NOT NULL,
  `data_status` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome_produto` varchar(100) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `preco` decimal(8,2) NOT NULL,
  `qtd_estoque` int(11) NOT NULL,
  `visibilidade` char(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `nome_produto`, `descricao`, `imagem`, `preco`, `qtd_estoque`, `visibilidade`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Tshirt Vermelha', 'Ab laborum, commodi aspernatur, quas distinctio cum quae omnis autem ea, odit sint quisquam similique! Labore aliquam amet veniam ad fugiat optio.', 'tshirt_vermelha.png', '45.70', 0, '1', '2021-02-06 19:45:18', '2021-02-06 19:45:25', 1),
(2, 'Tshirt Azul', 'Possimus iusto esse atque autem rem, porro officiis sapiente quos velit laboriosam id expedita odio obcaecati voluptate repudiandae dignissimos eveniet repellat blanditiis.', 'tshirt_azul.png', '55.25', 100, '1', '2021-02-06 19:45:19', '2021-02-06 19:45:25', 1),
(3, 'Tshirt Verde', 'Nostrum quisquam dolorum dolor autem accusamus fugit nesciunt, atque et? Quis eum nemo quidem officia cum dolorem voluptates! Autem, earum. Similique, fugit.', 'tshirt_verde.png', '35.15', 100, '1', '2021-02-06 19:45:20', '2021-02-06 19:45:26', 1),
(4, 'Tshirt Amarela', 'Molestiae quaerat distinctio, facere perferendis necessitatibus optio repellat alias commodi voluptatem velit corrupti natus exercitationem quos amet facilis sint nulla delectus.', 'tshirt_amarela.png', '32.00', 100, '1', '2021-02-06 19:45:20', '2021-02-06 19:45:27', 1),
(5, 'Vestido Vermelho', 'Labore voluptatem sed in distinctio iste tempora quo assumenda impedit illo soluta repudiandae animi earum suscipit, sequi excepturi inventore magnam velit voluptatibus.', 'dress_vermelho.png', '75.20', 100, '1', '2021-02-06 19:45:21', '2021-02-06 19:45:27', 2),
(6, 'Vertido Azul', 'Provident ipsum earum magnam odit in, illum nostrum est illo pariatur molestias esse delectus aliquam ullam maxime mollitia tempore, sunt officia suscipit.', 'dress_azul.png', '86.00', 100, '1', '2021-02-06 19:45:21', '2021-02-06 19:45:28', 2),
(7, 'Vestido Verde', 'Qui aliquid sed quisquam autem quas recusandae labore neque laudantium iusto modi repudiandae doloremque ipsam ad omnis inventore, cum ducimus praesentium. Consectetur!', 'dress_verde.png', '48.85', 100, '1', '2021-02-06 19:45:22', '2021-02-06 19:45:28', 2),
(8, 'Vestido Amarelo', 'Aspernatur labore corporis modi quis temporibus eos hic? Sed fugiat, repudiandae distinctio, labore temporibus, non magni consectetur dolorum earum amet impedit nesciunt.', 'dress_amarelo.png', '46.45', 100, '1', '2021-02-06 19:45:22', '2021-02-06 19:45:29', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `public_place`
--

CREATE TABLE `public_place` (
  `id` int(10) UNSIGNED NOT NULL,
  `logradouro` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `public_place`
--

INSERT INTO `public_place` (`id`, `logradouro`) VALUES
(1, 'Aeroporto'),
(2, 'Alameda'),
(3, 'Área'),
(4, 'Avenida'),
(5, 'Campo'),
(6, 'Chácara'),
(7, 'Colônia'),
(8, 'Condomínio'),
(9, 'Conjunto'),
(10, 'Distrito'),
(11, 'Esplanada'),
(12, 'Estação'),
(13, 'Estrada'),
(14, 'Favela'),
(15, 'Fazenda'),
(16, 'Feira'),
(17, 'Jardim'),
(18, 'Ladeira'),
(19, 'Lago'),
(20, 'Lagoa'),
(21, 'Largo'),
(22, 'Loteamento'),
(23, 'Morro'),
(24, 'Núcleo'),
(25, 'Parque'),
(26, 'Passarela'),
(27, 'Pátio'),
(28, 'Praça'),
(29, 'Quadra'),
(30, 'Recanto'),
(31, 'Residencial'),
(32, 'Rodovia'),
(33, 'Rua'),
(34, 'Setor'),
(35, 'Sítio'),
(36, 'Travessa'),
(37, 'Trecho'),
(38, 'Trevo'),
(39, 'Vale'),
(40, 'Vereda'),
(41, 'Via'),
(42, 'Viaduto'),
(43, 'Viela'),
(44, 'Vila');

-- --------------------------------------------------------

--
-- Estrutura da tabela `purchase_product`
--

CREATE TABLE `purchase_product` (
  `preco_unidade` decimal(8,2) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `products_id` int(10) UNSIGNED NOT NULL,
  `purchasing_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `purchase_product`
--

INSERT INTO `purchase_product` (`preco_unidade`, `quantidade`, `created_at`, `products_id`, `purchasing_id`) VALUES
('55.25', 1, '2022-10-30 14:06:07', 2, 1),
('35.15', 1, '2022-10-30 14:06:07', 3, 1),
('32.00', 1, '2022-10-30 14:06:07', 4, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `purchasing`
--

CREATE TABLE `purchasing` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_compra` datetime NOT NULL,
  `codigo_compra` varchar(70) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` char(9) DEFAULT NULL,
  `users_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `purchasing`
--

INSERT INTO `purchasing` (`id`, `data_compra`, `codigo_compra`, `created_at`, `updated_at`, `status`, `users_id`) VALUES
(1, '2022-10-30 08:06:07', 'JKD513187', '2021-03-30 08:06:07', '2022-10-30 08:06:07', 'canceled', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `purchasing_status`
--

CREATE TABLE `purchasing_status` (
  `id` int(11) NOT NULL,
  `data_status` datetime NOT NULL,
  `purchasing_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `purchasing_status`
--

INSERT INTO `purchasing_status` (`id`, `data_status`, `purchasing_id`, `status_id`) VALUES
(1, '2022-10-30 08:06:07', 1, 1),
(2, '2022-10-30 08:06:07', 1, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `status`
--

CREATE TABLE `status` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome_status` varchar(60) NOT NULL,
  `mensagem_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `status`
--

INSERT INTO `status` (`id`, `nome_status`, `mensagem_status`) VALUES
(1, 'Pedido confirmado', 'O seu pedido foi confirmado e está aguardando a confirmação do pagamento'),
(2, 'Pagamento pendente', 'O seu pagamento ainda não foi confirmado'),
(3, 'Pagamento aprovado', 'O seu pagamento foi aprovado, em seguida será preparado para o envio'),
(4, 'Preparando pedido', 'O seu pedido está sendo preparado para ser enviado'),
(5, 'Enviar pedido', 'O seu pedido foi enviado'),
(6, 'Pedido entregue', 'O pedido foi entregue'),
(7, 'Pagamento Negado', 'O seu pagamento não foi aprovado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(155) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `ativo` char(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `token`, `ativo`, `created_at`, `updated_at`, `last_login_ip`) VALUES
(1, 'Anderson Willian Santana Franciscato', 'andersonwsf@gmail.com', '$2y$10$LrfS1DNOf/FDml3JkT.BG.86ISLxeCTla3o7Bo0/uI4pjRS8ZGP4W', '', '1', '2022-11-01 14:38:07', '2022-11-01 14:38:07', '::1');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_address_public_place1_idx` (`public_place_id`) USING BTREE;

--
-- Índices para tabela `addres_user`
--
ALTER TABLE `addres_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_addres_user_address1_idx` (`address_id`) USING BTREE,
  ADD KEY `fk_addres_user_users1_idx` (`users_id`) USING BTREE;

--
-- Índices para tabela `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `payment_status`
--
ALTER TABLE `payment_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_payment_status_status1_idx` (`status_id`) USING BTREE,
  ADD KEY `fk_payment_status_purchasing1_idx` (`purchasing_id`) USING BTREE;

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_products_category_idx1` (`category_id`) USING BTREE;

--
-- Índices para tabela `public_place`
--
ALTER TABLE `public_place`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `purchase_product`
--
ALTER TABLE `purchase_product`
  ADD KEY `fk_purchase_product_products1_idx` (`products_id`) USING BTREE,
  ADD KEY `fk_purchase_product_purchasing1_idx` (`purchasing_id`) USING BTREE;

--
-- Índices para tabela `purchasing`
--
ALTER TABLE `purchasing`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo_compra_UNIQUE` (`codigo_compra`),
  ADD KEY `fk_purchasing_users1_idx` (`users_id`) USING BTREE;

--
-- Índices para tabela `purchasing_status`
--
ALTER TABLE `purchasing_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_purchasing_status_purchasing1_idx` (`purchasing_id`) USING BTREE,
  ADD KEY `fk_purchasing_status_status1_idx` (`status_id`) USING BTREE;

--
-- Índices para tabela `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `address`
--
ALTER TABLE `address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `addres_user`
--
ALTER TABLE `addres_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `payment_status`
--
ALTER TABLE `payment_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `public_place`
--
ALTER TABLE `public_place`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de tabela `purchasing`
--
ALTER TABLE `purchasing`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `purchasing_status`
--
ALTER TABLE `purchasing_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `status`
--
ALTER TABLE `status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `fk_address_public_place1` FOREIGN KEY (`public_place_id`) REFERENCES `public_place` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `addres_user`
--
ALTER TABLE `addres_user`
  ADD CONSTRAINT `fk_addres_user_address1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_addres_user_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `payment_status`
--
ALTER TABLE `payment_status`
  ADD CONSTRAINT `fk_payment_status_purchasing1` FOREIGN KEY (`purchasing_id`) REFERENCES `purchasing` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_payment_status_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `purchase_product`
--
ALTER TABLE `purchase_product`
  ADD CONSTRAINT `fk_purchase_product_products1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_purchase_product_purchasing1` FOREIGN KEY (`purchasing_id`) REFERENCES `purchasing` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `purchasing`
--
ALTER TABLE `purchasing`
  ADD CONSTRAINT `fk_purchasing_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Limitadores para a tabela `purchasing_status`
--
ALTER TABLE `purchasing_status`
  ADD CONSTRAINT `fk_purchasing_status_purchasing1` FOREIGN KEY (`purchasing_id`) REFERENCES `purchasing` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_purchasing_status_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
