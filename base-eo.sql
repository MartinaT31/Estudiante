-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-08-2024 a las 15:26:50
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base-eo`
--
CREATE DATABASE IF NOT EXISTS `base-eo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `base-eo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `estudiante_id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `apellido1` varchar(60) NOT NULL,
  `apellido2` varchar(60) NOT NULL,
  `curso` varchar(10) NOT NULL,
  `run` varchar(20) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `edad` int(11) NOT NULL,
  `peso` int(11) NOT NULL,
  `estatura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`estudiante_id`, `nombre`, `apellido1`, `apellido2`, `curso`, `run`, `correo`, `fecha_nacimiento`, `edad`, `peso`, `estatura`) VALUES
(1, 'María', 'Cortes', 'Jofre', '4B', '20.569.548-1', 'maria.2001@gmail.com', '2001-06-20', 19, 58, 168),
(2, 'Alberto', 'Godoy', 'Luengo', '3B', '20.145.693-2', 'alberto.2002@outlook.com', '2002-01-20', 18, 62, 172),
(3, 'Belen', 'Vera', 'Toledo', '3B', '21.456.325-k', 'belen.v@gmail.com', '2021-06-22', 21, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `observaciones`
--

CREATE TABLE `observaciones` (
  `observacion_id` int(11) NOT NULL,
  `estudiante_id` int(11) NOT NULL,
  `observacion` varchar(260) NOT NULL,
  `fecha` date NOT NULL,
  `indicador` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `observaciones`
--

INSERT INTO `observaciones` (`observacion_id`, `estudiante_id`, `observacion`, `fecha`, `indicador`) VALUES
(1, 1, 'No entrega trabajo en el plazo establecido, su actitud pasiva y gran desinterés por sus compromisos académicos en clase como encasa, arrojaron como resultado un bajo desempeño en varias asignaturas.', '2021-03-09', '-'),
(2, 1, 'Manifiesta interés y preocupación en su trabajo escolar, con gran esfuerzo logró obtener un destacado rendimiento. Posee un alto potencial para obtener mejores calificaciones.', '2021-10-03', '+'),
(3, 2, 'Es capaz de rendir más con mayor compromiso personal en su trabajo escolar', '2021-03-11', '-'),
(4, 2, 'Puede rendir más si se preocupa de sus compromisos escolares.', '2021-03-12', '-'),
(5, 2, 'Buen rendimiento, responsable y comprometido con sus deberes escolares. ¡Felicitaciones!', '2021-03-15', '+'),
(6, 2, 'Felicitaciones por obtener el segundo lugar dentro de su grupo curso.', '2021-03-16', '+');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`estudiante_id`);

--
-- Indices de la tabla `observaciones`
--
ALTER TABLE `observaciones`
  ADD PRIMARY KEY (`observacion_id`),
  ADD KEY `fk_estudiante_observaciones` (`estudiante_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `estudiante_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `observaciones`
--
ALTER TABLE `observaciones`
  MODIFY `observacion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `observaciones`
--
ALTER TABLE `observaciones`
  ADD CONSTRAINT `fk_estudiante_observaciones` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`estudiante_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
