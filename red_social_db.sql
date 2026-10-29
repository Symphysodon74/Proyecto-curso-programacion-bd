-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-10-2026 a las 12:36:50
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
-- Base de datos: `red_social_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `publicacion_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `publicacion_id`, `usuario_id`, `comentario`, `creado_en`) VALUES
(1, 1, 2, '¡Bienvenida al lado oscuro de las bases de datos! 📊', '2026-10-02 09:32:18'),
(2, 1, 5, '¡Mucho éxito, Ana! Yo también estoy practicando SQL.', '2026-10-02 09:32:18'),
(3, 2, 1, '¡Consejo de oro! A más de uno nos ha salvado la vida.', '2026-10-02 09:32:18'),
(4, 3, 1, '¡Me encanta la paleta de colores, Elena! Muy limpia.', '2026-10-02 09:32:18'),
(5, 3, 4, 'Concuerdo, tiene un toque minimalista genial.', '2026-10-02 09:32:18'),
(6, 5, 1, '¡Brutal! Justo andaba investigando sobre n8n esta semana.', '2026-10-02 09:32:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `likes`
--

CREATE TABLE `likes` (
  `usuario_id` int(11) NOT NULL,
  `publicacion_id` int(11) NOT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `likes`
--

INSERT INTO `likes` (`usuario_id`, `publicacion_id`, `creado_en`) VALUES
(1, 2, '2026-10-02 09:32:18'),
(1, 3, '2026-10-02 09:32:18'),
(1, 5, '2026-10-02 09:32:18'),
(2, 1, '2026-10-02 09:32:18'),
(2, 3, '2026-10-02 09:32:18'),
(2, 4, '2026-10-02 09:32:18'),
(2, 5, '2026-10-02 09:32:18'),
(3, 1, '2026-10-02 09:32:18'),
(3, 2, '2026-10-02 09:32:18'),
(3, 5, '2026-10-02 09:32:18'),
(3, 6, '2026-10-02 09:32:18'),
(4, 2, '2026-10-02 09:32:18'),
(4, 3, '2026-10-02 09:32:18'),
(5, 1, '2026-10-02 09:32:18'),
(5, 2, '2026-10-02 09:32:18'),
(5, 4, '2026-10-02 09:32:18'),
(5, 5, '2026-10-02 09:32:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `contenido` text NOT NULL,
  `imagen_url` varchar(255) DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id`, `usuario_id`, `contenido`, `imagen_url`, `creado_en`) VALUES
(1, 1, '¡Hola a todos! Acabo de terminar de configurar mi entorno de bases de datos con MariaDB. 🚀', 'https://picsum.photos/seed/post1/600/400', '2026-10-02 09:32:18'),
(2, 2, 'Consejo del día: Nunca olviden hacer copias de seguridad antes de ejecutar un DROP DATABASE en producción. 😅', NULL, '2026-10-02 09:32:18'),
(3, 3, 'Nuevo diseño de interfaz completado. ¿Qué os parece esta combinación de colores?', 'https://picsum.photos/seed/post2/600/400', '2026-10-02 09:32:18'),
(4, 1, 'Practicando consultas multitabla y funciones de agregación en SQL. ¡Me encanta este mundillo!', NULL, '2026-10-02 09:32:18'),
(5, 4, 'Automatizando procesos repetitivos con webhooks y n8n. ¡Funciona de maravilla!', 'https://picsum.photos/seed/post3/600/400', '2026-10-02 09:32:18'),
(6, 5, 'Empezando con los diagramas Entidad-Relación. ¿Algún tip para normalizar rápido?', NULL, '2026-10-02 09:32:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguidores`
--

CREATE TABLE `seguidores` (
  `seguidor_id` int(11) NOT NULL,
  `seguido_id` int(11) NOT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ;

--
-- Volcado de datos para la tabla `seguidores`
--

INSERT INTO `seguidores` (`seguidor_id`, `seguido_id`, `creado_en`) VALUES
(1, 2, '2026-10-02 09:32:18'),
(1, 3, '2026-10-02 09:32:18'),
(1, 4, '2026-10-02 09:32:18'),
(2, 1, '2026-10-02 09:32:18'),
(2, 3, '2026-10-02 09:32:18'),
(3, 1, '2026-10-02 09:32:18'),
(3, 5, '2026-10-02 09:32:18'),
(4, 1, '2026-10-02 09:32:18'),
(4, 2, '2026-10-02 09:32:18'),
(5, 1, '2026-10-02 09:32:18'),
(5, 3, '2026-10-02 09:32:18'),
(5, 4, '2026-10-02 09:32:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `nombre_completo` varchar(100) NOT NULL,
  `biografia` text DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `verificado` tinyint(1) DEFAULT 0,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `email`, `password_hash`, `nombre_completo`, `biografia`, `avatar_url`, `verificado`, `creado_en`) VALUES
(1, 'ana_dev', 'ana@email.com', '$2y$10$abc123hash', 'Ana Gómez', 'Apasionada del desarrollo web y bases de datos 💻', 'https://picsum.photos/seed/ana/200', 1, '2026-10-02 09:32:18'),
(2, 'carlos_sql', 'carlos@email.com', '$2y$10$abc123hash', 'Carlos Ruiz', 'Administrador de sistemas y DBA en potencia 📊', 'https://picsum.photos/seed/carlos/200', 0, '2026-10-02 09:32:18'),
(3, 'elena_design', 'elena@email.com', '$2y$10$abc123hash', 'Elena Martínez', 'Diseñadora UI/UX y amante del café ☕🎨', 'https://picsum.photos/seed/elena/200', 1, '2026-10-02 09:32:18'),
(4, 'david_tech', 'david@email.com', '$2y$10$abc123hash', 'David Torres', 'Automatización, IA y cacharreo tecnológico 🤖', 'https://picsum.photos/seed/david/200', 0, '2026-10-02 09:32:18'),
(5, 'sofia_code', 'sofia@email.com', '$2y$10$abc123hash', 'Sofía Navarro', 'Estudiante de programación y entusiasta de SQL 🚀', 'https://picsum.photos/seed/sofia/200', 0, '2026-10-02 09:32:18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comentario_publicacion` (`publicacion_id`),
  ADD KEY `fk_comentario_usuario` (`usuario_id`);

--
-- Indices de la tabla `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`usuario_id`,`publicacion_id`),
  ADD KEY `fk_like_publicacion` (`publicacion_id`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_publicacion_usuario` (`usuario_id`);

--
-- Indices de la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD PRIMARY KEY (`seguidor_id`,`seguido_id`),
  ADD KEY `fk_seguido` (`seguido_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `fk_comentario_publicacion` FOREIGN KEY (`publicacion_id`) REFERENCES `publicaciones` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_comentario_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `fk_like_publicacion` FOREIGN KEY (`publicacion_id`) REFERENCES `publicaciones` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_like_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `fk_publicacion_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD CONSTRAINT `fk_seguido` FOREIGN KEY (`seguido_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_seguidor` FOREIGN KEY (`seguidor_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
