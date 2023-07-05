-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-07-2023 a las 19:34:30
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sis_inventario`
--
CREATE DATABASE IF NOT EXISTS `sis_inventario` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sis_inventario`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Base de maquillaje', '2017-12-21 20:53:29'),
(2, 'Correctores', '2017-12-21 20:53:29'),
(3, 'Preparación del rostro', '2017-12-21 20:53:29'),
(4, 'Máscara de pestañas', '2017-12-21 20:53:29'),
(5, 'Delineadores', '2017-12-21 20:53:29'),
(6, 'Labiales', '2017-12-21 23:06:40'),
(7, 'Cuidado de las brochas y herramientas de maquillaje', '2017-12-21 23:06:40'),
(8, 'Cuidado facial', '2017-12-21 23:06:40'),
(9, 'Variado', '2023-07-05 16:46:17'),
(10, 'Perfumes', '2023-07-05 16:52:34'),
(11, 'Ropa', '2023-07-05 17:05:49'),
(12, 'Joyería', '2023-07-05 17:09:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text NOT NULL,
  `telefono` text NOT NULL,
  `direccion` text NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(6, 'Margarita Londoño', 34565432, 'margarita@hotmail.com', '(344) 345-6678', 'Calle 45 # 34 - 56', '1976-11-30', 25, '2023-07-05 12:25:29', '2023-07-05 17:25:29'),
(8, 'Stella Jaramillo', 65756735, 'stella@gmail.com', '(435) 346-3463', 'Carrera 34 # 45- 56', '1956-06-05', 11, '2023-07-05 12:29:28', '2023-07-05 17:29:28'),
(10, 'Ximena Restrepo', 436346346, 'ximena@gmail.com', '(543) 463-4634', 'calle 45 # 23 - 45', '1956-03-04', 24, '2023-07-05 12:27:57', '2023-07-05 17:27:57'),
(13, 'Mariana Perez', 43455656, 'marianap@gmail.com', '(897) 776-4533', 'Villa buenos Aires', '1999-08-23', 0, '0000-00-00 00:00:00', '2023-07-05 17:33:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(61, 9, '3456', 'Corse top Talla M', 'vistas/img/productos/3456/460.png', 10, 140, 150, 0, '2023-07-05 16:48:46'),
(62, 9, '2367', 'Bolso Pop it', 'vistas/img/productos/2367/981.png', 13, 110, 150, 2, '2023-07-05 17:29:28'),
(63, 9, '4867', 'Manos libres Cats', 'vistas/img/productos/4867/498.png', 17, 320, 350, 0, '2023-07-05 16:51:46'),
(64, 10, '6932', 'Bodys para niños', 'vistas/img/productos/6932/681.png', 20, 90, 100, 0, '2023-07-05 16:53:09'),
(65, 9, '1163', 'Scrunchies', 'vistas/img/productos/1163/248.png', 17, 25, 35, 1, '2023-07-05 17:27:57'),
(66, 3, '0953', 'Paletas Ushas rubor contorno e iluminador', 'vistas/img/productos/0953/490.png', 16, 85, 90, 0, '2023-07-05 16:59:21'),
(67, 9, '5600', 'Aretes enchapados en oro', 'vistas/img/productos/5600/506.png', 8, 80, 100, 0, '2023-07-05 17:01:37'),
(68, 3, '8023', 'Set 3 perfiladores multiusos', 'vistas/img/productos/8023/955.png', 22, 30, 40, 0, '2023-07-05 17:03:35'),
(69, 9, '8876', 'Hairs clips Meet the beauty', 'vistas/img/productos/8876/390.png', 12, 20, 30, 0, '2023-07-05 17:05:24'),
(70, 11, '4478', 'Blusas top basicas', 'vistas/img/productos/4478/703.png', 30, 150, 210, 0, '2023-07-05 17:07:10'),
(71, 11, '7634', 'Corse estampado de mariposa', 'vistas/img/productos/7634/522.png', 20, 170, 200, 0, '2023-07-05 17:08:45'),
(72, 12, '5589', 'Aretes stainles steel modelo inoxidable', 'vistas/img/productos/5589/451.png', 24, 70, 75, 1, '2023-07-05 17:25:29'),
(73, 8, '3321', 'Parches hidratantes de labios', 'vistas/img/productos/3321/163.png', 13, 135, 150, 5, '2023-07-05 17:25:28'),
(74, 12, '4799', 'Aretes stainles steel', 'vistas/img/productos/4799/489.png', 12, 60, 84, 0, '2023-07-05 17:20:11'),
(75, 1, '7912', 'Polvo de adas', 'vistas/img/productos/7912/290.png', 25, 60, 75, 5, '2023-07-05 17:27:57'),
(76, 9, '5523', 'Bolsillo de manos libres', 'vistas/img/productos/5523/295.png', 5, 150, 170, 0, '2023-07-05 17:22:06'),
(77, 10, '9031', 'Fragancias para niños', 'vistas/img/productos/9031/683.png', 10, 70, 90, 0, '2023-07-05 17:22:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `usuario` text NOT NULL,
  `password` text NOT NULL,
  `perfil` text NOT NULL,
  `foto` text NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/191.jpg', 1, '2023-07-05 10:59:11', '2023-07-05 15:59:11'),
(57, 'Juan Fernando Urrego', 'juan', '$2a$07$asxx54ahjppf45sd87a5auwRi.z6UsW7kVIpm0CUEuCpmsvT2sG6O', 'Vendedor', 'vistas/img/usuarios/juan/461.jpg', 1, '2023-07-04 19:47:55', '2023-07-05 00:47:55'),
(58, 'Julio Gómez', 'julio', '$2a$07$asxx54ahjppf45sd87a5auQhldmFjGsrgUipGlmQgDAcqevQZSAAC', 'Especial', 'vistas/img/usuarios/julio/100.png', 1, '2018-02-06 17:09:22', '2019-05-25 06:06:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(41, 10001, 6, 1, '[{\"id\":\"73\",\"descripcion\":\"Parches hidratantes de labios\",\"cantidad\":\"5\",\"stock\":\"13\",\"precio\":\"150\",\"total\":\"750\"},{\"id\":\"72\",\"descripcion\":\"Aretes stainles steel modelo inoxidable\",\"cantidad\":\"1\",\"stock\":\"24\",\"precio\":\"75\",\"total\":\"75\"}]', 82.5, 825, 907.5, 'Efectivo', '2023-07-05 17:25:29'),
(42, 10002, 10, 1, '[{\"id\":\"75\",\"descripcion\":\"Polvo de adas\",\"cantidad\":\"5\",\"stock\":\"25\",\"precio\":\"75\",\"total\":\"375\"},{\"id\":\"65\",\"descripcion\":\"Scrunchies\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"35\",\"total\":\"35\"}]', 41, 410, 451, 'Efectivo', '2023-07-05 17:27:57'),
(43, 10003, 8, 1, '[{\"id\":\"62\",\"descripcion\":\"Bolso Pop it\",\"cantidad\":\"2\",\"stock\":\"13\",\"precio\":\"150\",\"total\":\"300\"}]', 30, 300, 330, 'Efectivo', '2023-07-05 17:29:28');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
