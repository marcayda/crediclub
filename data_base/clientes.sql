-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-11-2022 a las 23:57:08
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clientes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido_pat` varchar(40) NOT NULL,
  `apellido_mat` varchar(40) NOT NULL,
  `fecha_nac` date NOT NULL,
  `rfc` varchar(10) NOT NULL,
  `ingresos_mens` float NOT NULL,
  `num_dep` int(11) NOT NULL,
  `aprobado` bit(1) NOT NULL,
  `fecha_reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido_pat`, `apellido_mat`, `fecha_nac`, `rfc`, `ingresos_mens`, `num_dep`, `aprobado`, `fecha_reg`) VALUES
(1, 'Rosa', 'Martinez', 'Lara', '1989-03-13', 'ROML890313', 26000, 3, b'0', '2022-11-02'),
(2, 'Tonantzin', 'Guerrero', 'Velázquez', '1987-08-07', 'GUVT870807', 22000, 1, b'1', '2022-11-02'),
(3, 'Luis', 'García', 'Sanchez', '1987-06-08', 'GASL870608', 23000, 5, b'1', '2022-11-02'),
(4, 'Laura', 'Chávez', 'Rosas', '1993-05-03', 'CHRL930503', 15000, 1, b'1', '0000-00-00'),
(5, 'Laura', 'Lira', 'Rosas', '1992-03-05', 'LIRL929395', 13000, 1, b'1', '0000-00-00'),
(7, 'Carlos', 'Juárez', 'Rosas', '1992-02-01', 'JURC920201', 11000, 2, b'0', '2022-11-02'),
(8, 'Carlos', 'Juárez', 'Rosas', '1992-02-01', 'JURC920201', 11000, 2, b'0', '2022-11-02'),
(9, 'Sandra', 'Lima', 'Ruíz', '1994-06-03', 'LIRS940603', 16000, 0, b'1', '2022-11-03'),
(10, 'Sandra', 'Lima', 'Ruíz', '1994-06-03', 'LIRS940603', 14000, 0, b'0', '2022-11-03'),
(11, 'Rosa', 'Martinez', 'Lara', '1989-03-13', 'ROML890313', 26000, 3, b'1', '2022-11-03'),
(12, 'Rosa', 'Martinez', 'Lara', '1989-03-13', 'ROML890313', 26000, 3, b'1', '2022-11-03'),
(13, 'Rosa', 'Martinez', 'Lara', '1989-03-13', 'ROML890313', 26000, 3, b'1', '2022-11-03'),
(15, 'Tonantzin Marcayda', 'Guerrero', 'Velazquez', '1987-08-07', 'GUVT870807', 1000, 0, b'0', '2022-11-03'),
(16, 'Tonantzin Marcayda', 'Guerrero', 'Velazquez', '1987-08-07', 'GUVT870807', 17000, 0, b'1', '2022-11-03'),
(17, 'Clara', 'Rosas', 'Jiménez', '1997-07-17', 'ROJC970717', 16500, 1, b'1', '2022-11-03');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
