-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-07-2023 a las 19:49:20
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectopruebas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'docente',
  `grado` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `nombre`, `email`, `password`, `role`, `grado`) VALUES
(1, 'Carlos Roberto Garcia Grajeda', 'carogalito@gmail.com', '$2y$10$LXvh6chWSrWdE9lSbVWxS.pzG1qlbns9M.SkjDQPSeq0dWl0F/4EW', 'docente', '11'),
(3, 'Carlos Roberto Garcia Grajeda', 'cargar0401f@gmail.com', '$2y$10$HYzR/M0gKU5ja2XARIKB9ejDqjRZLNkDVh7y4Rgzjz/6L3kqbA6P.', 'docente', '9no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'estudiante',
  `grado` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombre`, `email`, `password`, `role`, `grado`) VALUES
(1, 'Carlos Garcia', 'carogalo90@hotmail.com', '$2y$10$SNP/Ug0T5iuh87VQDy4S3uyp9d3lvAHNdO9i53GiGd2U7USUqsQ/q', 'estudiante', '12vo'),
(2, 'Carlos Garcia', 'car3los0201@gmail.com', '$2y$10$/dDIpuEznpYPlh/8nlLEXeAeOCe/RVRHwwGl8W15LVApKuBggw58C', 'estudiante', '11vo'),
(3, 'Carlos Roberto Garcia Grajeda', 'sergia@gmail.com', '$2y$10$75jtXVrzcBOViq4vLN.AjenQHfUyCOGFS1B5Z8xi4GTN280ryC/HW', 'estudiante', '10mo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examenes`
--

CREATE TABLE `examenes` (
  `id` int(11) NOT NULL,
  `asignatura` varchar(255) DEFAULT NULL,
  `tema` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `grado` varchar(255) DEFAULT NULL,
  `docente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `examenes`
--

INSERT INTO `examenes` (`id`, `asignatura`, `tema`, `descripcion`, `grado`, `docente_id`) VALUES
(17, 'Laboratorio de informática ', 'Tablas dinámicas ', 'examn', '10mo', 0),
(18, 'Laboratorio de informática d', 'Sistemas operativos', 'examen', '12vo', 0),
(19, 'Laboratorio de informática ', 'Tablas dinámicas ', 'sfad', '11mo', 0),
(20, 'Laboratorio de informática ', 'Tablas dinámicas ', 'xcsd', '12vo', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(255) DEFAULT NULL,
  `opcion1` varchar(255) DEFAULT NULL,
  `opcion2` varchar(255) DEFAULT NULL,
  `opcion3` varchar(255) DEFAULT NULL,
  `opcion4` varchar(255) DEFAULT NULL,
  `respuesta_correcta` int(11) DEFAULT NULL,
  `examen_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id`, `pregunta`, `opcion1`, `opcion2`, `opcion3`, `opcion4`, `respuesta_correcta`, `examen_id`) VALUES
(13, '¿Qué es un algoritmo?', 'Es una hoja de calculo ', 'Procesador de texto', 'Un lenguaje de programación', 'Serie de instrucciones lógicas ', 4, 17),
(14, '¿Es parte de una tabla dinámica?', '1', '2', '3', '4', 4, 18),
(15, '¿Es parte de una tabla dinámica?', '1', '2', '3', '4', 3, 19),
(16, 'Es un sistema operativo?', '2', '3', '4', '5', 3, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados_examenes`
--

CREATE TABLE `resultados_examenes` (
  `id` int(11) NOT NULL,
  `estudiante_id` int(11) DEFAULT NULL,
  `examen_id` int(11) DEFAULT NULL,
  `calificacion` float DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `examenes`
--
ALTER TABLE `examenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `docente_id` (`docente_id`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pregunta_ibfk_1` (`examen_id`);

--
-- Indices de la tabla `resultados_examenes`
--
ALTER TABLE `resultados_examenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estudiante_id` (`estudiante_id`),
  ADD KEY `examen_id` (`examen_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `examenes`
--
ALTER TABLE `examenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `resultados_examenes`
--
ALTER TABLE `resultados_examenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `examenes`
--
ALTER TABLE `examenes`
  ADD CONSTRAINT `examenes_ibfk_1` FOREIGN KEY (`docente_id`) REFERENCES `docentes` (`id`);

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `pregunta_ibfk_1` FOREIGN KEY (`examen_id`) REFERENCES `examenes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `resultados_examenes`
--
ALTER TABLE `resultados_examenes`
  ADD CONSTRAINT `resultados_examenes_ibfk_1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `resultados_examenes_ibfk_2` FOREIGN KEY (`examen_id`) REFERENCES `examenes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
