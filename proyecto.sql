-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2023 a las 05:02:26
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros1`
--

CREATE TABLE `registros1` (
  `id` int(11) NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `precio` int(11) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registros1`
--

INSERT INTO `registros1` (`id`, `ciudad`, `pais`, `precio`, `link`) VALUES
(0, 'Cali', 'Colombia', 230, 'https://www.eltiempo.com/files/image_640_428/uploads/2022/01/08/61d93de8c972a.jpeg'),
(1, 'Medellin', 'Colombia', 280, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Medellin.jpg/266px-Medellin.jpg'),
(2, 'Cartagena', 'Colombia', 480, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/f5/1e/be/bocagrande-desde-el-hotel.jpg?w=500&h=-1&s=1'),
(4, 'cancun', 'mexico', 300, 'https://i0.wp.com/presidenteiccancun.com/wp-content/uploads/2022/01/que-hacer-en-cancun-tulum.jpg?fit=540%2C450&ssl=1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registros1`
--
ALTER TABLE `registros1`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
