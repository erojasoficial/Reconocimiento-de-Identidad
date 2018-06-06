-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2018 a las 23:09:51
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `criminales`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `nombres` varchar(200) NOT NULL,
  `delito` varchar(200) NOT NULL,
  `recompensa` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombres`, `delito`, `recompensa`) VALUES
(1, 'ROSALES YUPANQUI FRANK GINO', 'Homicidio calificado', '20,000.00'),
(2, 'HUAYANEY GIRALDO JULIO CLAUDIO', 'Violación de persona en incapacidad de resistencia', 'S/. 20,000.00'),
(3, 'CHAVEZ BELLO ALBERTO', 'Secuestro', '10,000.00'),
(4, 'MARTEL TARAZONA YHIDER YHIMER', 'Tráfico ilí­cito de drogas', '15,000.00'),
(5, 'ALARCON RAMOS PEDRO JULIAN', 'Robo agravado', '10,000.00'),
(6, 'CASTILLEJO TARAZONA PEDRO', 'Parricidio', '10,000.00'),
(7, 'CAMPOS VELEZMORO CYNTHIA MELINA', 'Tráfico ilí­cito de drogas', '15,000.00'),
(8, 'CCOPA AYALA DANTE', 'Violación sexual', '15,000.00'),
(9, 'SANTOS PEREZ MIGUEL ANGEL', 'Violación sexual', '15,000.00'),
(10, 'SAAVEDRA PRINCIPE CERILO', 'Violación sexual de menor de edad', '20,000.00'),
(11, 'OLAVIDE GOMEZ DE LA TORRE MARTIN IGNACIO', 'Tráfico ilí­cito de drogas', '15,000.00'),
(12, 'FLORES INFANTE CARLOS ALMILCAR', 'Robo agravado', '10,000.00'),
(13, 'MEJIA GALLEGOS ROLANDO', 'ViolaciÃ³n sexual', 'S/. 15,000.00'),
(14, 'MORALES VACAS JUAN DE MATA', 'ViolaciÃ³n sexual', 'S/. 15,000.00'),
(15, 'TORRES IZQUIERDO ANTHONY MAYER', 'Actos contra el pudor en menores', 'S/. 15,000.00'),
(16, 'RODRIGUEZ BENAVIDES YOSSI AMELIA', 'Robo agravado', 'S/. 10,000.00'),
(17, 'HENOSTROZA MAZA MARIA ISABEL', 'Homicidio calificado', 'S/. 10,000.00'),
(18, 'LOPEZ PARDO NELIO J', 'ViolaciÃ³n sexual de menor de edad', 'S/. 20,000.00'),
(19, 'RAMIREZ SALINAS LUCIA ELENA', 'TrÃ¡fico ilÃ­cito de drogas', 'S/. 10,000.00'),
(20, 'HUAYHUA URBANO BERNABE', 'TRAFICO ILICITO DE INSUMOS QUIMICOS', 'S/. 15,000.00'),
(21, 'VERAMENDI SALGADO SOCRATES', 'Homicidio calificado', 'S/. 15,000.00'),
(22, 'INOCENTE AGURTO ELMER JORGE', 'ViolaciÃ³n sexual de menor de edad', 'S/. 20,000.00'),
(23, 'CISNEROS HILARIO DIONICIO WILFREDO', 'TrÃ¡fico ilÃ­cito de drogas', 'S/. 10,000.00'),
(24, 'EDQUEN FERNANDEZ SEGUNDO ALEJANDRO', 'Homicidio calificado', 'S/. 15,000.00'),
(25, 'PEREZ GONZALES ERNESTO FIDEL', 'TrÃ¡fico ilÃ­cito de drogas', 'S/. 10,000.00'),
(26, 'OCHOA CUCHO DANNY RAPHAEL', 'TrÃ¡fico ilÃ­cito de drogas', 'S/. 15,000.00'),
(27, 'AYALA CABANA GABINO SAUL', 'ViolaciÃ³n sexual', 'S/. 15,000.00'),
(28, 'YATACO ALVARADO JULIO CHRISTIAN', 'ViolaciÃ³n sexual', 'S/. 15,000.00'),
(29, 'LEIVA ROMERO ALFREDO PROCOPIO', 'Homicidio calificado', 'S/. 10,000.00'),
(30, 'LOZADA TOUZETT MARTHA ELIZABETH', 'Peculado', 'S/. 10,000.00'),
(31, 'PILLCO CANAL ALEJANDRINA', 'Trata de personas', 'S/. 15,000.00'),
(32, 'ROMERO SALVATIERRA DEOMIDES', 'ViolaciÃ³n sexual', 'S/. 15,000.00'),
(33, 'PINZAS GONZALES JESUS MANUEL', 'Robo agravado', 'S/. 10,000.00'),
(34, 'ORTIZ PORTAL FRANCISCO', 'Secuestro', 'S/. 10,000.00'),
(35, 'MANRIQUE ALONZO NOE JESUS', 'ViolaciÃ³n sexual', 'S/. 15,000.00'),
(36, 'FELICES ALCARRAZ JONNATHA YAN POOL', 'Secuestro', 'S/. 15,000.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
