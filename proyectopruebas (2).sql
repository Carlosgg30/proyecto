-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-07-2023 a las 07:31:37
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
(3, 'Carlos Roberto Garcia Grajeda', 'cargar0401f@gmail.com', '$2y$10$HYzR/M0gKU5ja2XARIKB9ejDqjRZLNkDVh7y4Rgzjz/6L3kqbA6P.', 'docente', '9no'),
(4, 'Wisnaldy Enamorado', 'WisnaldyE@gmail.com', '$2y$10$1i7.oWZoFhSTPWKeMz8uHetKyDcjnmg/11x3JLSkxtV6ZcEUbRNh2', 'docente', '12vo');

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
(20, 'Laboratorio de informática ', 'Tablas dinámicas ', 'xcsd', '12vo', NULL),
(21, 'Laboratorio de informática ', 'Algoritmo', 'Responda este examen en base a lo visto en clase', '12vo', NULL),
(22, 'Ciencias ', 'Ciencias Naturales', 'Contestar', '9no', NULL),
(23, 'Ciencias ', 'Ciencias Naturales', 'Contestar', '12vo', NULL),
(24, 'Laboratorio de informática d', 'Sistemas operativos', 'realizar el examen', '12vo', NULL),
(25, 'Laboratorio de informática ', 'Tablas dinámicas ', 'Desarrollar', '12vo', NULL);

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
  `examen_id` int(11) DEFAULT NULL,
  `enunciado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id`, `pregunta`, `opcion1`, `opcion2`, `opcion3`, `opcion4`, `respuesta_correcta`, `examen_id`, `enunciado`) VALUES
(16, 'Es un sistema operativo?', '2', '3', '4', '5', 3, 20, ''),
(17, '¿Qué es un algoritmo?', 'Windows', 'Android', 'iOS', 'Todas son correctas', 4, 21, ''),
(18, '¿Es parte de una tabla dinámica?', 'Celda', 'Procesador de texto', 'Un lenguaje de programación', 'Campo calculado', 4, 21, ''),
(19, '¿Qué es un algoritmo?', 'Es una hoja de calculo ', 'Procesador de texto', 'Un lenguaje de programación', 'Serie de instrucciones lógicas ', 4, 21, ''),
(20, 'Cual de los siguientes animales es un mamifero?', 'pajaro', 'pez', 'gato', 'rana', 1, 22, ''),
(21, 'que parte de la planta es responsable de hacer que la planta crezca hacia la luz del sol?', 'holas', 'tallo', 'raiz ', 'flores', 3, 22, ''),
(22, 'Cual de los siguientes animales es un mamifero?', 'pajaro', 'pez', 'gato', 'rana', 1, 23, ''),
(23, '¿Qué es un algoritmo?', 'Es una hoja de calculo ', 'Conjunto de instrucciones', 'Un lenguaje de programación', 'Todas son correctas', 2, 24, ''),
(24, '¿Es parte de una tabla dinámica?', 'Celda', 'Sistema operativo', 'gato', 'Serie de instrucciones lógicas ', 1, 25, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas_estudiantes`
--

CREATE TABLE `respuestas_estudiantes` (
  `id` int(11) NOT NULL,
  `estudiante_id` int(11) DEFAULT NULL,
  `pregunta_id` int(11) DEFAULT NULL,
  `examen_id` int(11) DEFAULT NULL,
  `respuesta` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `respuestas_estudiantes`
--

INSERT INTO `respuestas_estudiantes` (`id`, `estudiante_id`, `pregunta_id`, `examen_id`, `respuesta`) VALUES
(1, NULL, 17, 21, 'opcion1'),
(2, NULL, 18, 21, 'opcion3'),
(3, NULL, 19, 21, 'opcion2'),
(4, NULL, 16, 20, 'opcion2'),
(5, NULL, 22, 23, 'opcion2'),
(6, NULL, 22, 23, 'opcion2'),
(7, NULL, 22, 23, 'opcion2'),
(8, NULL, 24, 25, 'opcion1'),
(9, NULL, 24, 25, 'opcion1');

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
-- Volcado de datos para la tabla `resultados_examenes`
--

INSERT INTO `resultados_examenes` (`id`, `estudiante_id`, `examen_id`, `calificacion`, `fecha`) VALUES
(1, NULL, 20, 0, '2023-07-14'),
(2, NULL, 20, 0, '2023-07-14'),
(3, NULL, 20, 0, '2023-07-14'),
(4, NULL, 20, 0, '2023-07-14'),
(5, NULL, 20, 0, '2023-07-14'),
(6, NULL, 20, 0, '2023-07-15'),
(7, NULL, 20, 0, '2023-07-15'),
(8, NULL, 20, 0, '2023-07-15'),
(9, NULL, 20, 0, '2023-07-15'),
(10, NULL, 20, 0, '2023-07-15'),
(11, NULL, 20, 0, '2015-07-23'),
(12, NULL, 20, 0, '2023-07-15'),
(13, NULL, 20, 0, '2023-07-15'),
(14, NULL, 20, 0, '2023-07-15'),
(15, NULL, 20, 0, '2023-07-15'),
(16, NULL, 20, 0, '2023-07-15'),
(17, NULL, 20, 0, '2023-07-15'),
(18, NULL, 20, 0, '2023-07-17'),
(19, NULL, 20, 0, '2023-07-17'),
(20, NULL, 20, 0, '2023-07-17'),
(21, NULL, 20, 0, '2023-07-17'),
(22, NULL, 20, 0, '2023-07-17'),
(23, NULL, 20, 0, '2023-07-17'),
(24, NULL, 20, 0, '2023-07-17'),
(25, NULL, 20, 0, '2023-07-18'),
(26, NULL, 23, 0, '2023-07-18'),
(27, NULL, 23, 0, '2023-07-18'),
(28, NULL, 23, 0, '2023-07-18'),
(29, NULL, 25, 0, '2023-07-18'),
(30, NULL, 25, 0, '2023-07-18');

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
-- Indices de la tabla `respuestas_estudiantes`
--
ALTER TABLE `respuestas_estudiantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estudiante_id` (`estudiante_id`),
  ADD KEY `pregunta_id` (`pregunta_id`),
  ADD KEY `examen_id` (`examen_id`);

--
-- Indices de la tabla `resultados_examenes`
--
ALTER TABLE `resultados_examenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `examen_id` (`examen_id`),
  ADD KEY `resultados_examenes_ibfk_1` (`estudiante_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `examenes`
--
ALTER TABLE `examenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `respuestas_estudiantes`
--
ALTER TABLE `respuestas_estudiantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `resultados_examenes`
--
ALTER TABLE `resultados_examenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
-- Filtros para la tabla `respuestas_estudiantes`
--
ALTER TABLE `respuestas_estudiantes`
  ADD CONSTRAINT `respuestas_estudiantes_ibfk_1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `respuestas_estudiantes_ibfk_2` FOREIGN KEY (`pregunta_id`) REFERENCES `pregunta` (`id`),
  ADD CONSTRAINT `respuestas_estudiantes_ibfk_3` FOREIGN KEY (`examen_id`) REFERENCES `examenes` (`id`);

--
-- Filtros para la tabla `resultados_examenes`
--
ALTER TABLE `resultados_examenes`
  ADD CONSTRAINT `resultados_examenes_ibfk_1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `resultados_examenes_ibfk_2` FOREIGN KEY (`examen_id`) REFERENCES `examenes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
