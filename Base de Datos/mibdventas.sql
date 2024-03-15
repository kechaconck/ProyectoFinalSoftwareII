-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 14-03-2024 a las 20:46:30
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
-- Base de datos: `mibdventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `iddetalleventa` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidadproducto` int(11) NOT NULL,
  `precioventa` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`iddetalleventa`, `idventa`, `idproducto`, `cantidadproducto`, `precioventa`) VALUES
(1, 1, 1, 1, 32000),
(2, 1, 2, 1, 70000),
(3, 2, 1, 1, 32000),
(4, 2, 2, 1, 70000),
(5, 3, 4, 1, 32213),
(6, 3, 1, 1, 32000),
(7, 4, 4, 1, 32213),
(8, 4, 1, 1, 32000),
(9, 4, 2, 5, 70000),
(10, 5, 4, 1, 32213),
(11, 5, 1, 1, 32000),
(12, 5, 2, 5, 70000),
(13, 5, 1, 1, 32000),
(14, 6, 4, 1, 32213),
(15, 6, 1, 1, 32000),
(16, 6, 2, 5, 70000),
(17, 6, 1, 1, 32000),
(18, 6, 1, 1, 32000),
(19, 7, 4, 1, 32213),
(20, 7, 1, 1, 32000),
(21, 7, 2, 5, 70000),
(22, 7, 1, 1, 32000),
(23, 7, 1, 1, 32000),
(24, 8, 4, 1, 32213),
(25, 8, 1, 1, 32000),
(26, 8, 2, 5, 70000),
(27, 8, 1, 1, 32000),
(28, 8, 1, 1, 32000),
(29, 9, 4, 1, 32213),
(30, 9, 1, 1, 32000),
(31, 9, 2, 5, 70000),
(32, 9, 1, 1, 32000),
(33, 9, 1, 1, 32000),
(34, 9, 3, 20, 10560000),
(35, 10, 4, 1, 32213),
(36, 10, 1, 1, 32000),
(37, 10, 2, 5, 70000),
(38, 10, 1, 1, 32000),
(39, 10, 1, 1, 32000),
(40, 10, 3, 20, 10560000),
(41, 10, 3, 4, 10560000),
(42, 11, 6, 5, 230000),
(43, 12, 6, 5, 230000),
(44, 12, 2, 1, 70000),
(45, 12, 6, 1, 230000),
(46, 13, 6, 5, 230000),
(47, 13, 2, 1, 70000),
(48, 13, 6, 1, 230000),
(49, 13, 6, 1, 230000),
(50, 14, 2, 1, 70000),
(51, 15, 6, 1, 230000),
(52, 16, 1, 1, 32000),
(53, 16, 6, 1, 230000),
(54, 17, 1, 3, 32000),
(55, 17, 6, 1, 230000),
(56, 17, 2, 1, 70000),
(57, 18, 1, 3, 32000),
(58, 18, 6, 1, 230000),
(59, 18, 2, 1, 70000),
(60, 19, 1, 4, 32000),
(61, 19, 2, 1, 70000),
(62, 20, 1, 5, 32000),
(63, 20, 6, 15, 230000),
(64, 21, 1, 5, 32000),
(65, 21, 6, 15, 230000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) NOT NULL,
  `nombreproducto` varchar(200) NOT NULL,
  `descripcionproducto` varchar(500) NOT NULL,
  `unidad` varchar(10) NOT NULL,
  `precio` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombreproducto`, `descripcionproducto`, `unidad`, `precio`) VALUES
(1, 'La Biblia', 'La Biblia es el conjunto de libros canónicos del judaísmo y el cristianismo. La canonicidad de cada libro varía dependiendo de la tradición adoptada. Según las religiones judía y cristiana, transmite la palabra de Dios.', 'UND', 50),
(2, 'Harry Potter', 'Harry Potter es una heptalogía de novelas fantásticas escrita por la autora británica J. K. Rowling, en la que se describen las aventuras del joven aprendiz de mago Harry Potter y sus amigos Hermione Granger y Ron Weasley, durante los siete años que pasan en el Colegio Hogwarts de Magia y Hechicería. El argumento se centra en la lucha entre Harry Potter y el malvado mago Lord Voldemort, quien mató a los padres de Harry en su afán de conquistar el mundo mágico.', 'UND', 120),
(3, 'El Señor de los Anillos', 'El Señor de los Anillos es una novela de fantasía épica escrita por el filólogo y escritor británico J. R. R. Tolkien. Su historia se desarrolla en la Tercera Edad del Sol de la Tierra Media, un lugar ficticio poblado por hombres y otras razas antropomorfas como los hobbits, los elfos o los enanos, así como por muchas otras criaturas reales y fantásticas. La novela narra el viaje del protagonista principal, el hobbit Frodo Bolsón, para destruir el Anillo Único y la consiguiente guerra que provoc', 'UND', 75),
(4, 'El Código da Vinci', 'El código Da Vinci es una novela de misterio escrita por Dan Brown. […] Al combinar los géneros de suspenso detectivesco y esoterismo Nueva Era, con una teoría de conspiración relativa al Santo Grial y al papel de María Magdalena en el cristianismo, la novela espoleó el difundido interés (sobre todo en los Estados Unidos de América) por ciertas teorías de complots «urdidos en la sombra por poderes ocultos», un fenómeno definido por Brown como el «auge conspiranoico».', 'dssa', 100),
(6, ' El diario de Ana Frank ', 'Con el título de El diario de Ana Frank se conoce la edición de los diarios personales escritos por la niña judía Ana Frank (Annelies Marie Frank) entre el 12 de junio de 1942 y el 1 de agosto de 1944 en un total de tres cuadernos conservados a la actualidad, donde relata su historia como adolescente y el tiempo de dos años cuando tuvo que ocultarse de los nazis en Ámsterdam, durante la Segunda Guerra Mundial.', 'UND', 67),
(9, 'Luna de Puton', 'En un lejano parque de diversiones y en plena misiÃ³n secreta para defender a su amada luna de un peligroso emperador, la joven Claudia, hija de Metallus, conoce a Knaach, y juntos se embarcan en una odisea de sucesos desafortunados que desatarÃ¡n una verdadera guerra galÃ¡ctica.', 'UND', 30),
(10, 'WIGETTA: UN VIAJE MAGICO', 'Una historia ilustrada e interactiva que se inspira en el mundo de los videojuegos y en el universo de los cÃ©lebres Willyrex y Vegetta777.', 'UND', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) NOT NULL,
  `documento` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `Rol` enum('Empleado','Cliente') NOT NULL,
  `estado` enum('Activo','Inactivo') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `documento`, `nombre`, `correo`, `password`, `Rol`, `estado`) VALUES
(1, 7728013, 'César Augusto Garcia', 'cperezt@misena.edu.co', '12345', 'Cliente', 'Activo'),
(2, 1075212819, 'Juan Camilo Gonzalez', 'jgonz@mail.com', '123', 'Empleado', 'Activo'),
(10, 7730123, 'Alfonso Martinez Gomes', 'am2@mail.com', '12345', 'Cliente', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idventa` int(11) NOT NULL,
  `numerofactura` varchar(20) NOT NULL,
  `idclienteventa` int(11) NOT NULL,
  `idempleadoventa` int(11) NOT NULL,
  `fechaventa` date NOT NULL,
  `totalventa` double NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idventa`, `numerofactura`, `idclienteventa`, `idempleadoventa`, `fechaventa`, `totalventa`, `estado`) VALUES
(1, '34', 2, 2, '2020-10-01', 342342, 'A'),
(2, '0', 1, 1, '2020-10-21', 102000, '1'),
(3, '35', 1, 1, '2020-10-21', 64213, '1'),
(4, '36', 2, 1, '2020-10-21', 414213, '1'),
(5, '37', 1, 1, '2020-10-21', 446213, '1'),
(6, '38', 1, 1, '2020-10-21', 478213, '1'),
(7, '38', 1, 1, '2020-10-21', 478213, '1'),
(8, '39', 1, 1, '2020-10-21', 478213, '1'),
(9, '40', 1, 1, '2020-10-21', 211678213, '1'),
(10, '41', 2, 1, '2020-10-21', 253918213, '1'),
(11, '42', 7, 1, '2020-10-21', 1150000, '1'),
(12, '42', 1, 1, '2020-10-21', 1450000, '1'),
(13, '43', 2, 1, '2020-10-21', 1680000, '1'),
(14, '44', 1, 1, '2020-10-21', 70000, '1'),
(15, '45', 1, 1, '2020-10-21', 230000, '1'),
(16, '46', 7, 1, '2020-10-21', 262000, '1'),
(17, '47', 2, 1, '2020-10-21', 396000, '1'),
(18, '47', 2, 1, '2020-10-21', 396000, '1'),
(19, '48', 9, 1, '2020-10-21', 198000, '1'),
(20, '49', 10, 1, '2020-10-21', 3610000, '1'),
(21, '49', 10, 1, '2020-10-21', 7220000, '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`iddetalleventa`),
  ADD KEY `venta detalle venta` (`idventa`),
  ADD KEY `detalle producto` (`idproducto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idventa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  MODIFY `iddetalleventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `detalle producto` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `venta detalle venta` FOREIGN KEY (`idventa`) REFERENCES `ventas` (`idventa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
