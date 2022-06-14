-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-06-2022 a las 00:16:54
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `amaneciendo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(10) NOT NULL,
  `direccion_cliente` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contrasena` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre_cliente`, `direccion_cliente`, `email`, `contrasena`) VALUES
(10, 'asd', 'fdfdfgdfd', 'hola@gmail.com', 'caaa'),
(11, 'asd', 'fdfdfgdfd', 'gdhhfgggf', 'sdfdsfdoof'),
(12, 'Karol', 'Km9 ', 'Karitoko2020@gmail.com ', '12345'),
(13, 'Jejdj', 'Km9', 'Karitoko2020@gmail.com ', '1234'),
(14, 'David', 'Cll 13', 'David0910', '12345'),
(15, 'David', 'Cll 13', 'David0910', '12345'),
(16, 'Jesus', 'Cll 13b ', 'David1234', '12345'),
(17, 'Karol', 'Km 9 via', 'Karitoko2020@gmail.com ', '09876');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estanco`
--

CREATE TABLE `estanco` (
  `id_estanco` int(11) NOT NULL,
  `nombre_estanco` varchar(20) NOT NULL,
  `direccion_estanco` varchar(20) NOT NULL,
  `barrio` varchar(20) NOT NULL,
  `telefono_estanco` varchar(10) NOT NULL,
  `id_zona` int(11) NOT NULL,
  `id_franquicia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `franquicia`
--

CREATE TABLE `franquicia` (
  `id_franquicia` int(11) NOT NULL,
  `nombre_franquicia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona`
--

CREATE TABLE `zona` (
  `id_zona` int(11) NOT NULL,
  `tipo_zona` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona_estanco`
--

CREATE TABLE `zona_estanco` (
  `id_zona` int(11) NOT NULL,
  `id_estanco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `estanco`
--
ALTER TABLE `estanco`
  ADD PRIMARY KEY (`id_estanco`);

--
-- Indices de la tabla `franquicia`
--
ALTER TABLE `franquicia`
  ADD PRIMARY KEY (`id_franquicia`);

--
-- Indices de la tabla `zona`
--
ALTER TABLE `zona`
  ADD PRIMARY KEY (`id_zona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `estanco`
--
ALTER TABLE `estanco`
  MODIFY `id_estanco` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `franquicia`
--
ALTER TABLE `franquicia`
  MODIFY `id_franquicia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `zona`
--
ALTER TABLE `zona`
  MODIFY `id_zona` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
