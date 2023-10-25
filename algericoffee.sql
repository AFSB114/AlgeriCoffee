-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2023 a las 22:17:29
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `algericoffee`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id` int(11) NOT NULL,
  `idPedido` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `subTotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedidos`
--

INSERT INTO `detalle_pedidos` (`id`, `idPedido`, `idProducto`, `cantidad`, `subTotal`) VALUES
(1, 1, 1, 2, 2400),
(2, 1, 4, 1, 1800),
(3, 4, 4, 3, 2500),
(4, 2, 2, 2, 16000),
(5, 3, 1, 1, 1000),
(6, 3, 2, 3, 17000),
(7, 2, 4, 3, 5000),
(8, 1, 3, 2, 705);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `idUser`, `Total`, `Fecha`) VALUES
(1, 2, 4200, '2023-07-11'),
(2, 5, 345345, '2023-07-25'),
(3, 2, 444, '2023-07-25'),
(4, 3, 4444445, '2023-07-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `name`, `price`, `description`, `img`) VALUES
(1, 'Cafe Americano ', 2000, 'El café americano es una bebida caliente preparada con espresso y agua caliente, resultando en una tLa bebida del café campesino es una taza de café elaborada con granos cultivados por agricultores locales, generalmente de manera orgánica y sostenible. ', 'imagenes/slide1.jpg'),
(2, 'Cafe Campesino ', 2500, ' La bebida del café campesino es una taza de café elaborada con granos cultivados por agricultores locales, generalmente de manera orgánica y sostenible. Tiene un sabor auténtico, con notas terrosas y sabores frutales, que reflejan el carácter único de su origen y proceso de cultivo.', 'imagenes/slide2.jpg'),
(3, 'Cafe Espresso', 2500, 'La bebida del café espresso es una taza pequeña de café concentrado y aromático, preparada con una máquina de espresso que fuerza agua caliente a través de café molido fino. Tiene un sabor intenso y rico, con una capa cremosa de espuma en la parte superior conocida como crema.', 'imagenes/slide3.jpg'),
(4, 'Milo', 4000, 'La bebida Milo es una mezcla en polvo de chocolate y malta que se disuelve en leche caliente', 'imagenes/slide4.jpg'),
(5, 'Capuccion Caliente ', 6000, 'La bebida del café cappuccino caliente es una taza de café elaborada con una mezcla de espresso, leche caliente y espuma de leche. Tiene un sabor suave y cremoso, con una capa de espuma en la parte superior que se puede decorar con canela o cacao en polvo.', 'imagenes/slide5.jpg'),
(6, 'Capuccino (amareto, crema irlandesa)', 9000, 'La bebida del café cappuccino con crema irlandesa es una variación del cappuccino tradicional, que incluye una medida de licor de crema irlandesa en la mezcla de espresso y leche caliente. ', 'imagenes/slide6.jpg'),
(7, 'Capuccino Baileys', 9000, 'La bebida del café cappuccino Baileys es una variante del cappuccino tradicional que incluye una medida de licor Baileys en la mezcla de espresso y leche caliente.', 'imagenes/slide7.jpg'),
(8, 'Latte', 6000, 'La bebida latte tiene un sabor suave y cremoso, con notas dulces y un toque distintivo de Baileys.', 'imagenes/slide8.jpg'),
(9, 'Aromatica Panela ', 1000, 'La bebida aromática de panela es una infusión caliente preparada con agua y panela, un tipo de azúcar no refinado que se extrae de la caña de azúcar. Tiene un sabor dulce y característico, con notas caramelizadas y un aroma reconfortante.', 'imagenes/slide9.jpg'),
(10, 'Aromatica Frutas', 5000, 'La bebida aromática de frutas es una infusión caliente preparada con una combinación de frutas frescas o deshidratadas, hierbas y especias. Puede incluir ingredientes como manzanas, naranjas, canela, clavo de olor y otros sabores naturales.', 'imagenes/slide10.jpg'),
(11, 'Aromatica Hierbabuena ', 3500, 'La bebida aromática de hierbabuena es una infusión caliente preparada con hojas de hierbabuena fresca o seca. Tiene un sabor refrescante y mentolado, con un aroma distintivo a menta. Es conocida por sus propiedades digestivas y su capacidad para brindar una sensación de frescura. ', 'imagenes/slide11.jpg'),
(12, 'Te chai Manana Canela ', 8000, 'La bebida Te chei Manana Canela es una infusión caliente o fría preparada con una combinación de frutas frescas o deshidratadas, hierbas y especias.', 'imagenes/slide12.jpg'),
(13, 'Capuccino Frio con Helado ', 9000, 'El cappuccino frío con helado es una bebida refrescante y deliciosa que combina un cappuccino tradicional con helado. Se prepara mezclando espresso o café fuerte con leche fría y luego se sirve sobre una bola de helado, generalmente de vainilla.', 'imagenes/slide13.jpg'),
(14, 'Granizado de Cafe ', 9000, 'El granizado de café es una bebida refrescante que se elabora con café fuerte o espresso, azúcar y hielo triturado. Se mezclan todos los ingredientes juntos hasta obtener una textura granulada y se sirve en un vaso.', 'imagenes/slide14.jpg'),
(15, 'Malteada de Cafe ', 10000, 'La malteada de café es una bebida cremosa y dulce que combina café, leche, helado y malta en polvo. Se mezclan todos los ingredientes juntos hasta obtener una textura suave y espumosa. Suele ser servida en un vaso alto con una pajita.', 'imagenes/slide15.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nomUser` varchar(30) NOT NULL,
  `apeUser` varchar(30) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `passUser` varchar(100) NOT NULL,
  `rolUser` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Admin, 2=Client'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nomUser`, `apeUser`, `Email`, `passUser`, `rolUser`) VALUES
(1, 'leo', 'messi', 'messi.22@gmail.com', '123456', 2),
(2, 'Andres', 'Suaza', 'afsuaza@gmail.com', '123456', 1),
(3, 'free', 'messi', 'mesrrsi.22@gmail.com', '1234', 2),
(4, 'Andres', 'deeeee', 'afsudddaza@gmail.com', '1234', 2),
(5, 'mario', 'sedgfrd', 'gterygre@gmail.com', '123', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `rol` int(11) NOT NULL COMMENT 'Admin = 1\r\nUser = 2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `email`, `password`, `rol`) VALUES
(1, 'AFSB114', 'asuazab13@gmail.com', 'Af300407', 2),
(2, 'bsl', 'brayanstidcorteslombana@gmail.com', '1129844804', 1),
(3, 'jhon', 'cruzmedinaj.26@gmail.com', '12345678', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPedido` (`idPedido`,`idProducto`),
  ADD KEY `idProducto` (`idProducto`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `detalle_pedidos_ibfk_1` FOREIGN KEY (`idPedido`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedidos_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
