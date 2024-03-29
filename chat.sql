-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-02-2024 a las 20:32:45
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
-- Base de datos: `chat`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 295304104, 1674855078, 'hey bro'),
(2, 295304104, 1383272350, 'hi'),
(3, 1383272350, 295304104, 'hi'),
(4, 295304104, 1674855078, 'hi'),
(5, 295304104, 1674855078, 'hola'),
(6, 295304104, 1674855078, 'como estas'),
(7, 295304104, 1674855078, 'hola'),
(8, 295304104, 1383272350, 'hey'),
(11, 1383272350, 1383272350, 'hola'),
(14, 1674855078, 1674855078, 'hola'),
(15, 1674855078, 295304104, 'hola'),
(16, 295304104, 1674855078, 'hola'),
(17, 1674855078, 295304104, 'mensaje de 1'),
(18, 295304104, 1674855078, 'mensaje de 2'),
(19, 295304104, 1674855078, 'holaaaaaa'),
(20, 1674855078, 295304104, 'holaas'),
(21, 295304104, 1674855078, 'hola'),
(22, 1674855078, 295304104, 'holas'),
(23, 295304104, 295304104, 'This is last message'),
(24, 295304104, 295304104, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(25, 295304104, 295304104, 'aaaaaaaaaaaaaaaaaaaaaassssssssssssssssssssssssssssssssssssssssssssss'),
(26, 1674855078, 295304104, 'hey'),
(27, 1674855078, 295304104, 'hola'),
(28, 295304104, 1674855078, 'uwu');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(200) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(400) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 295304104, 'César', 'Malavé', 'cesar123@gmail.com', '1234', '1708217053Captura de pantalla 2024-02-09 211516.png', 'Offline now'),
(2, 1674855078, 'Alfonso', 'Gonzales', 'alfonso123@gmail.com', '12345', '1708217188Captura de pantalla 2024-02-01 220103.png', 'Offline now'),
(3, 1383272350, 'Andrew', 'Neil', 'andrew@gmail.com', 'andrew', '17083467071707402940hhhh.jpg', 'Offline now');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
