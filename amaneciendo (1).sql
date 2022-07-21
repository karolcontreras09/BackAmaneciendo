-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-07-2022 a las 15:39:40
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
(12, 'Karol', 'Km9 ', 'Karitoko200@gmail.com ', '12345'),
(13, 'Jejdj', 'Km9', 'Karitoko2020@gmail.com ', '1234'),
(14, 'David', 'Cll 13', 'David09', '12345'),
(15, 'David', 'Cll 13', 'David0910', '12345'),
(16, 'Jesus', 'Cll 13b ', 'David1234', '12345'),
(17, 'Karol', 'Km 9 via', 'Karitoko020@gmail.com ', '09876'),
(18, 'David ', 'Km 8', 'Jekada00@gmail.com ', '12345'),
(19, 'Carlos', 'Cll13', 'Karitoko2020@hmail.com', '1223'),
(20, 'Wini', 'Cll 19 # 39 - 17', 'Wini', 'wini123');

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
  `id_franquicia` int(11) NOT NULL,
  `imagen_estanco` varchar(255) NOT NULL,
  `logo_estanco` varchar(255) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `hora_estanco` varchar(20) NOT NULL,
  `horario_estanco` varchar(20) NOT NULL,
  `longitud` varchar(20) NOT NULL,
  `latitud` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estanco`
--

INSERT INTO `estanco` (`id_estanco`, `nombre_estanco`, `direccion_estanco`, `barrio`, `telefono_estanco`, `id_zona`, `id_franquicia`, `imagen_estanco`, `logo_estanco`, `descripcion`, `hora_estanco`, `horario_estanco`, `longitud`, `latitud`) VALUES
(1, 'CROBAR', 'CRA 5A #10-15', 'JARDIN', '3103020553', 3, 2, 'https://www.rdstation.com/blog/wp-content/uploads/sites/2/2017/09/thestocks.jpg', 'https://www.rdstation.com/blog/wp-content/uploads/sites/2/2017/09/thestocks.jpg', 'CLUB NOCTURNO', '9:00 P.M - 5:00 A.M', 'JUEVES A DOMINGO', '25528oo', '5252o'),
(2, 'OPIUM', 'CALLE 13B #32-31', 'LA ESPERANZA', '3133989513', 2, 4, 'https://www.rdstation.com/blog/wp-content/uploads/sites/2/2017/09/thestocks.jpg', 'https://www.rdstation.com/blog/wp-content/uploads/sites/2/2017/09/thestocks.jpg', 'CLUB NOCTURNO', '9:00 P.M - 5:00 A.M', 'JUEVES A DOMINGO', '-75.266694', '2.936511'),
(3, 'EL CAMINO', 'calle 75b #5-109 a 5', 'TIMANCO', '3103020553', 1, 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXAFdyWWUZrK2dG6oJBLkhcSZFl6tAE-qYBg&usqp=CAU', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXAFdyWWUZrK2dG6oJBLkhcSZFl6tAE-qYBg&usqp=CAU', 'CLUB NOCTURNO', '9:00 P.M - 5:00 A.M', 'VIERNES A DOMINGO', '-75.267940', '2.939693'),
(6, 'LOLA PEREZ', 'CRA 5A #10-15', 'GUADUALES', '3173189499', 1, 4, 'https://i0.wp.com/hipertextual.com/wp-content/uploads/2021/06/Google-Imagenes-Main-Site.jpg?fit=2000%2C1333&ssl=1', 'https://i0.wp.com/hipertextual.com/wp-content/uploads/2021/06/Google-Imagenes-Main-Site.jpg?fit=2000%2C1333&ssl=1', 'CLUB NOCTURNO', '9:00 P.M - 5:00 A.M', 'JUEVES A DOMINGO', '-75.271423', '2.921005'),
(7, 'COBE PUB', 'CRA 5B #43-21', 'CENTRO', '3228428002', 4, 4, 'https://blog.ida.cl/wp-content/uploads/sites/5/2020/04/tamano-redes-blog-655x470.png', 'https://blog.ida.cl/wp-content/uploads/sites/5/2020/04/tamano-redes-blog-655x470.png', 'CLUB NOCTURNO', '9:00 P.M - 5:00 A.M', 'JUEVES A DOMINGO', '-75.299927', '2.945345'),
(8, 'EL ESTANCO', 'CALLE 7 #02-52', 'PRADO ALTO', '3173189499', 4, 2, 'https://i0.wp.com/hipertextual.com/wp-content/uploads/2021/06/Google-Imagenes-Main-Site.jpg?fit=2000%2C1333&ssl=1', 'https://i0.wp.com/hipertextual.com/wp-content/uploads/2021/06/Google-Imagenes-Main-Site.jpg?fit=2000%2C1333&ssl=1', 'CLUB NOCTURNO', '9:00 P.M - 5:00 A.M', 'VIERNES A DOMINGO', ' -75.266669', '2.930003'),
(9, 'OLE', 'CALLE 13B #32-31', 'LA ESPERANZA', '3133989513', 2, 2, 'https://i0.wp.com/hipertextual.com/wp-content/uploads/2021/06/Google-Imagenes-Main-Site.jpg?fit=2000%2C1333&ssl=1', 'https://i0.wp.com/hipertextual.com/wp-content/uploads/2021/06/Google-Imagenes-Main-Site.jpg?fit=2000%2C1333&ssl=1', 'CLUB NOCTURNO', '9:00 P.M - 5:00 A.M', 'JUEVES A DOMINGO', ' -75.274711', '2.905858');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `franquicia`
--

CREATE TABLE `franquicia` (
  `id_franquicia` int(11) NOT NULL,
  `nombre_franquicia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `franquicia`
--

INSERT INTO `franquicia` (`id_franquicia`, `nombre_franquicia`) VALUES
(1, 'OPIUM'),
(2, 'CROBAR'),
(3, 'EL CAMINO'),
(4, 'SOLAR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona`
--

CREATE TABLE `zona` (
  `id_zona` int(11) NOT NULL,
  `tipo_zona` varchar(10) NOT NULL,
  `latitud` varchar(20) NOT NULL,
  `logitud` varchar(20) NOT NULL,
  `latitudelta` varchar(20) NOT NULL,
  `logintudelta` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `zona`
--

INSERT INTO `zona` (`id_zona`, `tipo_zona`, `latitud`, `logitud`, `latitudelta`, `logintudelta`) VALUES
(1, 'norte', '', '', '', ''),
(2, 'sur', '', '', '', ''),
(3, 'este', '', '', '', ''),
(4, 'oeste', '', '', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `U_email` (`email`);

--
-- Indices de la tabla `estanco`
--
ALTER TABLE `estanco`
  ADD PRIMARY KEY (`id_estanco`),
  ADD KEY `id_zona` (`id_zona`),
  ADD KEY `id_franquicia` (`id_franquicia`);

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
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `estanco`
--
ALTER TABLE `estanco`
  MODIFY `id_estanco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `franquicia`
--
ALTER TABLE `franquicia`
  MODIFY `id_franquicia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `zona`
--
ALTER TABLE `zona`
  MODIFY `id_zona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estanco`
--
ALTER TABLE `estanco`
  ADD CONSTRAINT `estanco_ibfk_1` FOREIGN KEY (`id_zona`) REFERENCES `zona` (`id_zona`),
  ADD CONSTRAINT `estanco_ibfk_2` FOREIGN KEY (`id_franquicia`) REFERENCES `franquicia` (`id_franquicia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
