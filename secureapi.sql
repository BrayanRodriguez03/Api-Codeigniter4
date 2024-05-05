-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-04-2024 a las 21:55:09
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `secureapi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE `client` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `retainer_fee` int(100) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `client`
--

INSERT INTO `client` (`id`, `name`, `email`, `retainer_fee`, `updated_at`, `created_at`) VALUES
(3, 'Mrs. Vernice Rowe', 'qpfeffer@hotmail.com', 80116771, NULL, '2024-04-15 11:50:30'),
(4, 'Dr. Lelah Goyette Jr.', 'sblock@yahoo.com', 1000090, NULL, '2024-04-15 11:50:30'),
(5, 'Dr. Kaitlin O\'Conner IV', 'adrien.bernhard@emard.org', 19035895, NULL, '2024-04-15 11:50:30'),
(6, 'Dr. Cleve Kertzmann II', 'vlittel@terry.com', 11005123, NULL, '2024-04-15 11:50:30'),
(7, 'Freeman Hansen', 'jchristiansen@hotmail.com', 70390405, NULL, '2024-04-15 11:50:30'),
(8, 'Gussie Medhurst', 'umueller@klocko.com', 10992723, NULL, '2024-04-15 11:50:30'),
(9, 'Mr. Edward Pollich DVM', 'oran.bailey@hotmail.com', 29356902, NULL, '2024-04-15 11:50:30'),
(10, 'Darwin Luettgen', 'wthompson@ullrich.com', 49990198, NULL, '2024-04-15 11:50:30'),
(14, 'clientbrayan', 'yo@gmail.com', 2147483647, NULL, '2024-04-17 15:14:43'),
(16, 'clientbrayann', 'yooo@gmail.com', 123456543, NULL, '2024-04-17 15:23:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-03-25-172528', 'App\\Database\\Migrations\\AddClient', 'default', 'App', 1711460968, 1),
(2, '2024-03-25-172603', 'App\\Database\\Migrations\\AddUser', 'default', 'App', 1711460968, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `updated_at`, `created_at`) VALUES
(1, 'brayan', 'brayita@gmail.com', '$2y$10$YYVsYPzedA3yMKn.2Ei7qOSXasI0xjAqqyCLlIGcKQ2244XtvKgUm', NULL, '2024-04-16 18:19:20'),
(2, 'brayan2', 'brayan2@gmail.com', '$2y$10$jseupap6rM3EQ.Gud4jameDs.jW6SCFq5MmpA1azMRutTD/2Xd7Pi', NULL, '2024-04-17 13:06:37'),
(3, 'brayan3', 'brayan3@gmail.com', '$2y$10$ODUe2yMiAEayiD9X19WEfOWt23/vTVYMzARGHWGc4ubrojgmL9GsO', NULL, '2024-04-17 15:12:41'),
(4, 'brayan5', 'brayan5@gmail.com', '$2y$10$T0i1RmQit09/aJPBn/Kz5Ovna/8F/80PDMirs0sJSrLOCPtFs2Cme', NULL, '2024-04-17 15:21:27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `retainer_fee` (`retainer_fee`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password` (`password`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `client`
--
ALTER TABLE `client`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
