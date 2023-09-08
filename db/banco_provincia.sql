-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-09-2023 a las 18:48:19
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `banco_provincia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja_ahorro`
--

CREATE TABLE `caja_ahorro` (
  `numr_tarjeta` bigint(20) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `cvv` int(11) NOT NULL,
  `monto_disp` int(11) NOT NULL,
  `tipo_tarjeta` varchar(4) NOT NULL,
  `limite` int(11) NOT NULL,
  `fecha_emision` date NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `estado_tarjeta` varchar(10) NOT NULL,
  `moneda` varchar(14) NOT NULL,
  `fecha_alta` date NOT NULL,
  `fecha_baja` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `caja_ahorro`
--

INSERT INTO `caja_ahorro` (`numr_tarjeta`, `usuarios_id`, `cvv`, `monto_disp`, `tipo_tarjeta`, `limite`, `fecha_emision`, `fecha_vencimiento`, `estado_tarjeta`, `moneda`, `fecha_alta`, `fecha_baja`) VALUES
(2402005713803775, 41, 308, 1000, 'VISA', 1000000, '2023-09-11', '2026-09-30', 'ACTIVA', 'Peso Argentino', '2023-09-08', NULL),
(3181839098410886, 0, 955, 1000, 'VISA', 1000000, '2023-09-04', '2026-09-30', 'ACTIVA', 'Peso Argentino', '2023-09-01', NULL),
(3600961973447459, 0, 502, 1000, 'VISA', 1000000, '2023-09-04', '2026-09-30', 'ACTIVA', 'Peso Argentino', '2023-09-01', NULL),
(4409332347195537, 0, 652, 1000, 'VISA', 1000000, '2023-09-04', '2026-09-30', 'ACTIVA', 'Peso Argentino', '2023-09-01', NULL),
(4735670777869563, 0, 405, 1000, 'VISA', 1000000, '2023-09-04', '2026-09-30', 'ACTIVA', 'Peso Argentino', '2023-09-01', NULL),
(5528461744332042, 0, 944, 1000, 'VISA', 1000000, '2023-09-04', '2026-09-30', 'ACTIVA', 'Peso Argentino', '2023-09-01', NULL),
(6038420630079400, 39, 423, 1000, 'VISA', 1000000, '2023-09-04', '2026-09-30', 'ACTIVA', 'Peso Argentino', '2023-09-01', NULL),
(6633366427368062, 0, 837, 1000, 'VISA', 1000000, '2023-09-04', '2026-09-30', 'ACTIVA', 'Peso Argentino', '2023-09-01', NULL),
(7189545879781220, 0, 307, 1000, 'VISA', 1000000, '2023-09-04', '2026-09-30', 'ACTIVA', 'PESOS ARG', '2023-09-01', NULL),
(7225723760992974, 0, 968, 1000, 'VISA', 1000000, '2023-09-04', '2026-09-30', 'ACTIVA', 'Peso Argentino', '2023-09-01', NULL),
(7691518271253675, 0, 739, 1000, 'VISA', 1000000, '2023-09-04', '2026-09-30', 'ACTIVA', 'Peso Argentino', '2023-09-01', NULL),
(7699259884815750, 0, 103, 1000, 'VISA', 1000000, '2023-09-04', '2026-09-30', 'ACTIVA', 'Peso Argentino', '2023-09-01', NULL),
(8017760308268569, 40, 667, 1000, 'VISA', 1000000, '2023-09-04', '2026-09-30', 'ACTIVA', 'Peso Argentino', '2023-09-01', NULL),
(8128917088872862, 0, 607, 1000, 'VISA', 1000000, '2023-09-04', '2026-09-30', 'ACTIVA', 'Peso Argentino', '2023-09-01', NULL),
(9008612615782931, 11, 936, 1334156, 'VISA', 100000, '2010-11-06', '2027-04-16', 'habilitada', 'Peso Argentino', '2011-12-15', NULL),
(9008633168218445, 5, 650, 104605, 'VISA', 100000, '2011-05-03', '2026-12-18', 'habilitada', 'Dolar', '2022-05-30', NULL),
(9028778274394882, 11, 909, 478850, 'VISA', 100000, '2012-10-22', '2027-06-19', 'pausada', 'Dolar', '2022-03-05', NULL),
(9063806249426055, 14, 231, 1942518, 'VISA', 100000, '2012-02-15', '2027-02-10', 'habilitada', 'Peso Argentino', '2014-11-11', NULL),
(9102790471050286, 12, 533, 1313187, 'VISA', 100000, '2010-06-22', '2027-06-10', 'bloqueada', 'Peso Argentino', '2019-03-07', '2022-09-07'),
(9108905504885557, 16, 107, 1083885, 'VISA', 100000, '2011-07-11', '2024-05-05', 'habilitada', 'Peso Argentino', '2012-01-17', NULL),
(9280130175076040, 12, 801, 847999, 'VISA', 100000, '2010-05-09', '2025-07-17', 'habilitada', 'Peso Argentino', '2012-02-01', NULL),
(9281584351062836, 15, 109, 663009, 'VISA', 100000, '2011-09-05', '2027-04-07', 'habilitada', 'Dolar', '2018-11-28', NULL),
(9393674959172466, 15, 505, 495576, 'VISA', 100000, '2011-02-07', '2027-03-05', 'habilitada', 'Dolar', '2020-05-20', NULL),
(9412445785339079, 1, 123, 231493, 'VISA', 100000, '2012-06-13', '2026-03-30', 'habilitada', 'Peso Argentino', '2019-06-21', NULL),
(9444545709939264, 20, 313, 1488254, 'VISA', 100000, '2012-03-03', '2026-04-13', 'habilitada', 'Dolar', '2010-01-07', NULL),
(9470132552165830, 10, 159, 1729272, 'VISA', 100000, '2012-02-23', '2026-03-18', 'pausada', 'Peso Argentino', '2013-01-17', NULL),
(9487678145707285, 11, 608, 846918, 'VISA', 100000, '2012-06-03', '2026-08-23', 'habilitada', 'Peso Argentino', '2018-06-07', NULL),
(9499997748530813, 17, 763, 473180, 'VISA', 100000, '2010-01-13', '2024-12-07', 'habilitada', 'Dolar', '2023-03-26', NULL),
(9636434374829233, 13, 689, 1042742, 'VISA', 100000, '2012-04-08', '2027-03-29', 'habilitada', 'Peso Argentino', '2015-09-06', NULL),
(9698516100868343, 2, 273, 1172003, 'VISA', 100000, '2010-10-19', '2024-02-12', 'habilitada', 'Peso Argentino', '2013-01-24', NULL),
(9704485861863629, 0, 712, 1000, 'VISA', 1000000, '2023-09-04', '2026-09-30', 'ACTIVA', 'Peso Argentino', '2023-09-01', NULL),
(9801494123577617, 11, 622, 824763, 'VISA', 100000, '2010-11-14', '2027-07-25', 'habilitada', 'Dolar', '2011-09-26', NULL),
(9810301662981351, 9, 374, 417834, 'VISA', 100000, '2012-12-20', '2026-07-19', 'bloqueada', 'Peso Argentino', '2019-01-13', '2023-07-12'),
(9853552574253666, 16, 559, 965822, 'VISA', 100000, '2011-04-26', '2026-04-27', 'habilitada', 'Dolar', '2020-01-26', NULL),
(9905215659879409, 20, 890, 1421857, 'VISA', 100000, '2012-06-20', '2024-09-11', 'pausada', 'Dolar', '2019-05-27', NULL),
(9947200681663303, 18, 533, 1651340, 'VISA', 100000, '2012-10-19', '2025-02-08', 'pausada', 'Peso Argentino', '2013-12-28', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credito`
--

CREATE TABLE `credito` (
  `id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `CVV` int(11) NOT NULL,
  `tipo_tarjeta` varchar(4) NOT NULL,
  `limite_crediticio` int(11) NOT NULL,
  `fecha_emision` date NOT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `estado` varchar(10) NOT NULL,
  `moneda` varchar(14) NOT NULL,
  `fecha_baja` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `credito`
--

INSERT INTO `credito` (`id`, `usuarios_id`, `CVV`, `tipo_tarjeta`, `limite_crediticio`, `fecha_emision`, `fecha_vencimiento`, `estado`, `moneda`, `fecha_baja`) VALUES
(1, 25, 160, 'VISA', 649939, '2013-09-04', NULL, 'habilitada', 'Peso Argentino', NULL),
(2, 23, 797, 'VISA', 417583, '2010-12-07', NULL, 'habilitada', 'Peso Argentino', NULL),
(3, 9, 986, 'VISA', 617935, '2013-04-09', NULL, 'habilitada', 'Peso Argentino', NULL),
(4, 27, 223, 'VISA', 359379, '2011-05-23', NULL, 'habilitada', 'Peso Argentino', NULL),
(5, 23, 933, 'VISA', 735786, '2013-07-30', NULL, 'habilitada', 'Peso Argentino', NULL),
(6, 16, 596, 'VISA', 399492, '2012-02-20', NULL, 'habilitada', 'Peso Argentino', NULL),
(7, 4, 458, 'VISA', 370575, '2010-09-05', NULL, 'habilitada', 'Peso Argentino', NULL),
(8, 21, 641, 'VISA', 386931, '2012-08-20', NULL, 'habilitada', 'Peso Argentino', NULL),
(9, 3, 909, 'VISA', 293984, '2014-02-04', NULL, 'habilitada', 'Peso Argentino', NULL),
(10, 16, 618, 'VISA', 680559, '2013-12-08', NULL, 'habilitada', 'Peso Argentino', NULL),
(11, 20, 811, 'VISA', 509573, '2011-11-07', '2023-08-04', 'habilitada', 'Peso Argentino', '2023-08-04'),
(12, 3, 964, 'VISA', 614539, '2012-01-19', NULL, 'habilitada', 'Peso Argentino', NULL),
(13, 21, 539, 'VISA', 380924, '2012-01-22', NULL, 'habilitada', 'Peso Argentino', NULL),
(14, 6, 622, 'VISA', 632358, '2011-10-05', NULL, 'habilitada', 'Peso Argentino', NULL),
(15, 18, 561, 'VISA', 294829, '2013-11-30', NULL, 'habilitada', 'Peso Argentino', NULL),
(16, 19, 433, 'VISA', 395590, '2011-09-11', NULL, 'habilitada', 'Peso Argentino', NULL),
(17, 26, 858, 'VISA', 547568, '2013-12-01', '2023-08-04', 'habilitada', 'Peso Argentino', '2023-08-04'),
(18, 12, 770, 'VISA', 615826, '2012-07-11', NULL, 'habilitada', 'Peso Argentino', NULL),
(19, 16, 838, 'VISA', 778775, '2010-08-23', NULL, 'habilitada', 'Peso Argentino', NULL),
(20, 5, 590, 'VISA', 503042, '2013-04-08', '2023-08-04', 'bloqueada', 'Peso Argentino', '2023-08-04'),
(21, 25, 685, 'VISA', 675270, '2010-10-12', NULL, 'habilitada', 'Peso Argentino', NULL),
(22, 1, 710, 'VISA', 247008, '2013-08-05', NULL, 'pausada', 'Peso Argentino', NULL),
(23, 21, 545, 'VISA', 467313, '2011-10-16', NULL, 'habilitada', 'Peso Argentino', NULL),
(24, 6, 920, 'VISA', 514645, '2011-11-04', NULL, 'habilitada', 'Peso Argentino', '2023-08-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plazo_fijo`
--

CREATE TABLE `plazo_fijo` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `monto` int(11) NOT NULL,
  `tasa_interes` int(11) NOT NULL,
  `plazo` int(11) NOT NULL,
  `moneda` varchar(14) NOT NULL,
  `intereses_generados` int(11) NOT NULL,
  `nro_referencia` int(11) NOT NULL,
  `fecha_alta` date NOT NULL,
  `fecha_baja` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `plazo_fijo`
--

INSERT INTO `plazo_fijo` (`id`, `usuario_id`, `monto`, `tasa_interes`, `plazo`, `moneda`, `intereses_generados`, `nro_referencia`, `fecha_alta`, `fecha_baja`) VALUES
(1, 23, 27082, 105, 13, 'Peso Argentino', 51556, 9896, '2018-11-19', '2020-11-19'),
(2, 9, 28120, 10, 6, 'Dolar', 46008, 5040, '2018-04-10', '2019-04-10'),
(3, 14, 21367, 101, 23, 'Peso Argentino', 49991, 6000, '2017-07-26', '2022-07-26'),
(4, 2, 23928, 95, 6, 'Peso Argentino', 50911, 1938, '2016-05-11', NULL),
(5, 2, 27217, 105, 21, 'Peso Argentino', 45385, 1445, '2017-12-19', NULL),
(6, 20, 21349, 101, 10, 'Peso Argentino', 46337, 9810, '2019-02-18', NULL),
(7, 19, 28676, 104, 9, 'Peso Argentino', 40481, 4381, '2019-02-11', NULL),
(8, 6, 28332, 96, 23, 'Peso Argentino', 48212, 4370, '2015-10-13', '2021-10-13'),
(9, 16, 27307, 100, 15, 'Peso Argentino', 46080, 2073, '2017-02-11', '2019-02-11'),
(10, 21, 23068, 95, 18, 'Peso Argentino', 47224, 3866, '2017-09-14', '2018-09-14'),
(11, 23, 29792, 95, 14, 'Peso Argentino', 47806, 3071, '2016-02-18', NULL),
(12, 7, 25391, 97, 12, 'Peso Argentino', 54443, 2249, '2018-01-11', NULL),
(13, 24, 27055, 98, 8, 'Peso Argentino', 45880, 3920, '2015-11-06', NULL),
(14, 9, 24591, 104, 12, 'Peso Argentino', 47807, 4685, '2020-02-06', NULL),
(15, 15, 24750, 96, 12, 'Peso Argentino', 44114, 9575, '2019-05-28', NULL),
(16, 11, 24791, 96, 21, 'Peso Argentino', 56044, 9655, '2016-10-22', NULL),
(17, 17, 28279, 95, 24, 'Peso Argentino', 41583, 8464, '2017-07-30', NULL),
(18, 2, 21674, 105, 12, 'Peso Argentino', 55873, 9897, '2016-01-07', NULL),
(19, 25, 21888, 10, 16, 'Dolar', 52525, 8473, '2017-02-17', NULL),
(20, 14, 22253, 100, 8, 'Peso Argentino', 41373, 4989, '2016-12-07', NULL),
(21, 3, 20002, 95, 22, 'Peso Argentino', 42378, 4896, '2020-05-18', NULL),
(22, 16, 27808, 103, 14, 'Peso Argentino', 57551, 5335, '2019-10-09', NULL),
(23, 6, 25974, 95, 20, 'Peso Argentino', 50663, 3775, '2019-01-23', NULL),
(24, 16, 22284, 99, 24, 'Peso Argentino', 49951, 8301, '2019-08-20', NULL),
(25, 20, 22132, 99, 23, 'Peso Argentino', 48716, 2130, '2016-08-15', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`) VALUES
(1, 'En que año '),
(2, 'En que año entraste a la secundaria ?'),
(3, 'Cual es el segundo nombre de tu abuela ?'),
(4, 'Cual es el apodo de tu hijo/a ?'),
(5, 'Nombre de tu primera mascota ?'),
(6, 'Nombre de la primera escuela a la que fuiste ?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `prestamo_id` int(11) NOT NULL,
  `nro_prestamo` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `monto` int(11) NOT NULL,
  `cuotas` int(11) NOT NULL,
  `intereses` int(11) NOT NULL,
  `total_pagar` int(11) NOT NULL,
  `total_pagado` int(11) NOT NULL,
  `plazo_tiempo` int(11) NOT NULL,
  `descripcion_prestamo` varchar(50) NOT NULL,
  `tasa_interes` int(11) NOT NULL,
  `fecha_alta` date NOT NULL,
  `fecha_baja` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`prestamo_id`, `nro_prestamo`, `usuario_id`, `monto`, `cuotas`, `intereses`, `total_pagar`, `total_pagado`, `plazo_tiempo`, `descripcion_prestamo`, `tasa_interes`, `fecha_alta`, `fecha_baja`) VALUES
(1, 6080389, 22, 65, 17, 769327, 28724, 7829, 11, 'Proin interdum mauris non ligula pellentesque ultr', 50, '2015-01-28', NULL),
(2, 7793062, 6, 69, 14, 298924, 446437, 31245, 17, 'Vestibulum ante ipsum primis in faucibus orci luct', 38, '2015-11-08', NULL),
(3, 6833486, 9, 11, 26, 39178, 240605, 54894, 23, 'Duis aliquam convallis nunc. Proin at turpis a ped', 26, '2011-09-08', NULL),
(4, 6492032, 5, 29, 31, 757331, 333612, 2191, 21, 'Quisque erat eros, viverra eget, congue eget, semp', 23, '2013-07-05', NULL),
(5, 5341490, 12, 95, 14, 195763, 164179, 54576, 12, 'Nunc purus.', 25, '2009-03-14', NULL),
(6, 8701477, 12, 48, 25, 277821, 144310, 21334, 15, 'Fusce lacus purus, aliquet at, feugiat non, pretiu', 26, '2023-07-04', NULL),
(7, 1916979, 19, 69, 35, 555338, 403580, 48399, 24, 'Duis consequat dui nec nisi volutpat eleifend.', 50, '2012-06-05', NULL),
(8, 8260329, 8, 87, 30, 785945, 151167, 37572, 19, 'In hac habitasse platea dictumst. Aliquam augue qu', 38, '2016-08-14', NULL),
(9, 8580829, 18, 91, 15, 173296, 98181, 15628, 24, 'Vivamus metus arcu, adipiscing molestie, hendrerit', 42, '2008-11-02', NULL),
(10, 6864972, 5, 58, 12, 897667, 294694, 25743, 20, 'Vivamus metus arcu, adipiscing molestie, hendrerit', 43, '2006-12-14', '2007-12-24'),
(11, 8772039, 2, 88, 21, 155662, 64035, 19123, 13, 'Maecenas rhoncus aliquam lacus. Morbi quis tortor ', 26, '2019-07-01', NULL),
(12, 3282155, 24, 34, 30, 319440, 331069, 1387, 8, 'Pellentesque viverra pede ac diam.', 29, '2014-03-26', NULL),
(13, 4183622, 21, 46, 16, 982260, 377140, 53777, 13, 'Integer pede justo, lacinia eget, tincidunt eget, ', 24, '2009-01-12', NULL),
(14, 7043285, 20, 32, 16, 538116, 82224, 47590, 11, 'Praesent id massa id nisl venenatis lacinia. Aenea', 32, '2014-09-30', NULL),
(15, 5627032, 13, 17, 26, 310414, 506347, 39739, 10, 'Sed ante. Vivamus tortor. Duis mattis egestas metu', 33, '2022-02-03', '2006-09-18'),
(16, 5319570, 17, 5, 21, 536871, 471567, 44874, 14, 'Maecenas leo odio, condimentum id, luctus nec, mol', 37, '2009-09-21', NULL),
(17, 4554251, 1, 52, 18, 398905, 66028, 28705, 16, 'Maecenas leo odio, condimentum id, luctus nec, mol', 37, '2009-11-19', NULL),
(18, 4199760, 4, 98, 19, 757252, 408086, 9172, 12, 'In eleifend quam a odio. In hac habitasse platea d', 23, '2015-08-19', '2020-04-19'),
(19, 5742541, 25, 17, 18, 116280, 235097, 35040, 18, 'Donec ut dolor.', 20, '2017-07-18', NULL),
(20, 6994917, 2, 7, 17, 445380, 545325, 37227, 22, 'Suspendisse accumsan tortor quis turpis.', 40, '2013-12-30', NULL),
(21, 5434242, 3, 11, 23, 852129, 187280, 26507, 15, 'Nam nulla. Integer pede justo, lacinia eget, tinci', 33, '2006-06-28', NULL),
(22, 6528428, 23, 71, 29, 203618, 340695, 24044, 22, 'Phasellus sit amet erat.', 38, '2002-09-06', NULL),
(23, 2258047, 18, 16, 32, 177426, 508563, 35949, 9, 'Morbi porttitor lorem id ligula. Suspendisse ornar', 50, '2020-03-18', NULL),
(24, 9722445, 3, 14, 27, 485667, 83074, 55539, 21, 'Donec ut mauris eget massa tempor convallis. Nulla', 29, '2002-10-21', '2007-10-11'),
(25, 7786602, 20, 41, 30, 217995, 191046, 17661, 9, 'Pellentesque viverra pede ac diam.', 34, '2009-03-17', '2012-09-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

CREATE TABLE `transacciones` (
  `id_transaccion` int(11) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `cuenta_origen` int(11) NOT NULL,
  `cuenta_destino` int(11) DEFAULT NULL,
  `tipo_transaccion` varchar(13) NOT NULL,
  `monto` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `transacciones`
--

INSERT INTO `transacciones` (`id_transaccion`, `fecha_hora`, `cuenta_origen`, `cuenta_destino`, `tipo_transaccion`, `monto`, `descripcion`, `estado`) VALUES
(1, '2023-05-24 00:00:00', 2, 37, 'transferencia', 53748, NULL, 'exitosa'),
(2, '2022-10-21 00:00:00', 4, 59, 'transferencia', 68281, NULL, 'exitosa'),
(3, '2023-02-14 00:00:00', 18, 63, 'transferencia', 56581, 'Duis at velit eu est congue elementum.', 'exitosa'),
(4, '2023-06-23 00:00:00', 3, 50, 'transferencia', 66074, NULL, 'denegada'),
(5, '2023-03-09 00:00:00', 3, 24, 'transferencia', 53680, 'Nam nulla.', 'exitosa'),
(6, '2022-11-07 00:00:00', 15, NULL, 'retiro', 32330, NULL, 'exitosa'),
(7, '2022-10-29 00:00:00', 3, NULL, 'retiro', 19954, NULL, 'exitosa'),
(8, '2023-03-29 00:00:00', 13, NULL, 'retiro', 5260, 'Quisque erat eros, viverra eget, congue eget, semp', 'exitosa'),
(9, '2023-04-18 00:00:00', 15, 26, 'transferencia', 84681, NULL, 'exitosa'),
(10, '2023-05-24 00:00:00', 18, NULL, 'retiro', 22378, NULL, 'exitosa'),
(11, '2023-03-28 00:00:00', 15, 77, 'transferencia', 33061, NULL, 'exitosa'),
(12, '2023-06-23 00:00:00', 20, NULL, 'retiro', 74546, NULL, 'exitosa'),
(13, '2022-09-24 00:00:00', 10, 73, 'transferencia', 25912, NULL, 'exitosa'),
(14, '2022-09-05 00:00:00', 16, 35, 'transferencia', 78649, NULL, 'exitosa'),
(15, '2023-01-28 00:00:00', 20, 45, 'transferencia', 29490, 'Nulla ac enim. In tempor, turpis nec euismod scele', 'exitosa'),
(16, '2023-03-05 00:00:00', 19, NULL, 'retiro', 52165, NULL, 'exitosa'),
(17, '2022-10-12 00:00:00', 17, NULL, 'retiro', 22972, NULL, 'exitosa'),
(18, '2022-09-09 00:00:00', 10, 95, 'transferencia', 81949, NULL, 'exitosa'),
(19, '2023-01-08 00:00:00', 18, 99, 'transferencia', 90519, NULL, 'exitosa'),
(20, '2023-03-02 00:00:00', 8, NULL, 'retiro', 64487, NULL, 'exitosa'),
(21, '2022-09-26 00:00:00', 20, NULL, 'retiro', 10181, NULL, 'exitosa'),
(22, '2023-01-13 00:00:00', 8, 53, 'transferencia', 70617, 'In blandit ultrices enim.', 'exitosa'),
(23, '2022-08-14 00:00:00', 20, 78, 'transferencia', 61213, NULL, 'exitosa'),
(24, '2022-08-06 00:00:00', 16, 53, 'transferencia', 53376, NULL, 'exitosa'),
(25, '2022-11-24 00:00:00', 9, NULL, 'retiro', 18338, NULL, 'exitosa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `DNI` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `clave` varchar(128) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `nro_seguro_social` bigint(20) NOT NULL,
  `preguntas_seguridad` int(1) NOT NULL,
  `respuesta` varchar(50) NOT NULL,
  `fecha_alta` date NOT NULL,
  `fecha_baja` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `DNI`, `nombre`, `apellido`, `email`, `fecha_nacimiento`, `clave`, `telefono`, `direccion`, `nro_seguro_social`, `preguntas_seguridad`, `respuesta`, `fecha_alta`, `fecha_baja`) VALUES
(1, 68519637, 'Ardis', 'Fortescue', 'afortescue0@photobucket.com', '1967-06-29', 'mU5{}T4g', '+62 105 981 0278', '8 Buena Vista Way', 14506615719, 0, '', '2017-02-27', NULL),
(2, 66455970, 'Elnore', 'Wharf', 'ewharf1@free.fr', '1961-04-09', 'hV3&tbx9bWgl2', '+60 287 332 3472', '63548 Dunning Crossing', 19745988391, 0, '', '2006-11-26', '2023-03-13'),
(3, 85631119, 'Byrle', 'Mallall', 'bmallall2@auda.org.au', '1979-01-02', 'qX3_uWi075kO`L8l', '+86 810 486 6522', '96067 Duke Pass', 11920647487, 0, '', '2020-04-07', NULL),
(4, 29043814, 'Beatrisa', 'Menco', 'bmenco3@cyberchimps.com', '1967-01-09', 'vO1/=QEbkpdgW/4', '+86 884 940 9732', '34895 Thompson Junction', 13017032134, 0, '', '2004-11-20', NULL),
(5, 34236318, 'Joshuah', 'Culross', 'jculross4@yellowbook.com', '1980-02-10', 'aM9)|KB\"(Jb#z5', '+595 288 814 5771', '412 Haas Trail', 16205660239, 0, '', '2021-04-30', NULL),
(6, 23189785, 'Ann-marie', 'Rizzello', 'arizzello5@dailymail.co.uk', '1983-05-18', 'kP0)\"_X*w.EJDYe', '+7 628 467 8104', '37001 Westend Parkway', 13659037364, 0, '', '2020-09-05', '2022-10-18'),
(7, 47487958, 'Margette', 'Birkhead', 'mbirkhead6@wisc.edu', '1993-10-29', 'zX8CH<!z\\_r2.}*', '+62 869 221 5990', '54324 Anhalt Street', 19686984262, 0, '', '2011-09-11', NULL),
(8, 91052336, 'Robinette', 'Gillbanks', 'rgillbanks7@dedecms.com', '1961-10-19', '403926033d001b5279df37cbbe5287b7c7c267fa', '+63 104 455 6828', '4 Katie Way', 12385312074, 0, '', '2012-09-13', NULL),
(9, 51744403, 'Ned', 'Lux', 'nlux8@bluehost.com', '1997-08-29', 'oI7`\"|O2', '+51 581 875 6768', '95 Starling Drive', 12417436750, 0, '', '2006-09-19', NULL),
(10, 24687703, 'Shelli', 'Fairclough', 'sfairclough9@cnn.com', '1989-10-09', 'xV1{hM)Tre', '+297 733 999 4310', '03259 Bluejay Avenue', 12233060799, 0, '', '2000-12-08', NULL),
(11, 82972633, 'Alexandro', 'Lewzey', 'alewzeya@weibo.com', '1996-01-19', 'pD7>idSY', '+62 404 188 0365', '646 Dottie Road', 12936760142, 0, '', '2002-03-26', NULL),
(12, 22286780, 'Noemi', 'Newlin', 'nnewlinb@un.org', '1962-10-30', 'fY1>ro4%d,sXvI3', '+63 964 518 4524', '72506 Southridge Parkway', 11129986417, 0, '', '2010-09-17', NULL),
(13, 39972134, 'Serena', 'Neaverson', 'sneaversonc@booking.com', '1984-06-21', 'cV8$@PY@APG!B', '+86 642 943 8195', '7 Morning Street', 11161193622, 0, '', '2015-04-22', NULL),
(14, 86315013, 'Matilda', 'Duffree', 'mduffreed@4shared.com', '1994-05-27', 'bJ4p{eT|fR`{', '+62 383 515 5053', '0 Texas Street', 15807529059, 0, '', '2022-07-03', '2023-06-21'),
(15, 86574976, 'Ada', 'Walkinshaw', 'awalkinshawe@last.fm', '1985-10-26', 'gR7\'#E.8$r{1', '+84 377 849 4932', '3935 Ohio Place', 11934335251, 0, '', '2012-11-10', NULL),
(16, 61627156, 'Elizabet', 'Dawbury', 'edawburyf@cafepress.com', '1981-12-10', 'lI7=`b\'hNuK', '+55 444 723 2045', '34 Kingsford Place', 12474068127, 0, '', '2006-08-25', NULL),
(17, 56314875, 'Jakob', 'Cheesman', 'jcheesmang@narod.ru', '1976-01-23', 'cQ4$tnZQG*3*7.J', '+599 224 774 2853', '1 Forest Run Junction', 13743570919, 0, '', '2017-10-19', NULL),
(18, 44795768, 'Arda', 'Ziehms', 'aziehmsh@de.vu', '1999-06-13', 'wW8$LjW9(@#', '+7 765 998 7429', '2 Merry Place', 11633211923, 0, '', '2002-04-25', NULL),
(19, 66599601, 'Norris', 'Heineken', 'nheinekeni@tinypic.com', '1978-04-10', 'kI6}w2wdm_A', '+86 331 245 2717', '032 Northport Alley', 19408482997, 0, '', '2002-09-13', NULL),
(20, 86304640, 'Sheeree', 'Isakovitch', 'sisakovitchj@aol.com', '1971-06-21', 'aL2.q3JD~', '+54 171 299 8673', '85328 South Pass', 11714086080, 0, '', '2019-07-22', '2022-11-23'),
(21, 12341234, 'sdaf', 'asdf', 'a@asdf', '2023-09-04', '92429d82a41e930486c6de5ebda9602d55c39986', '1234', 'DSFAS', 12342134, 2, '6fb4fe68800d990e065353fdb7787b4c7b57996d', '0000-00-00', NULL),
(23, 43782497, 'maria', 'gonzalez', 'gonzales@ggmail.com', '1980-06-29', 'a9a98f4315df8cccd5358a671784e1567f9d4cc7', '1179964623', 'jujuy 255', 27437824979, 3, '1a1f58c9adc75e11a9c4c108e39bb79bfb4435ac', '0000-00-00', NULL),
(24, 15777770, 'Samuel', 'De Luque', 'guapisimo777@gmail.com', '1977-07-07', '7cc7aafa6d650f882d59fa52d7882d608b2a32a8', '1107770777', 'Andorra ', 20157777704, 5, '5740369bbd42b12b5cf604faf00983fe4448203a', '0000-00-00', NULL),
(25, 17777777, 'Samuel', 'De Luque', 'guapisimo777@gmail.com', '1977-07-07', '1abcde91b934fa469216cf09827123590afa02cb', '1107770777', 'Andorra', 20177777775, 3, 'a0ba9ddf43506bcf5631c9738d02d4d0e7cf91bd', '0000-00-00', NULL),
(26, 3245897, 'matias', 'herman', 'a@g', '2023-09-03', 'c129b324aee662b04eccf68babba85851346dff9', '12341243', 'mUFASA', 12351663, 1, '95c0282573633eb230f5064039e6b359e05e8752', '0000-00-00', NULL),
(27, 2147483647, 'jogf', 'gfejo', 'sdopfp@gmail.com', '1998-08-20', '0f3fde0103dd44077c040215a2fabd09a097aecc', '34174107', 'gfkgkgs', 2347924379243, 3, 'ded1026bfc9f9200df09909ab59b15b2a3d0c13c', '0000-00-00', NULL),
(28, 1323123123, 'sghi', 'fgji', 'dqfsdfq@gmail', '2002-12-20', '0f3fde0103dd44077c040215a2fabd09a097aecc', '3427923', 'gffgdf', 1231223321312, 2, '1c67455daddaa745740a0bcb41e49859795b507a', '0000-00-00', NULL),
(29, 1233312132, 'fsdkfskfsdf', 'fsdsdffs', 'sgja@gmail', '2002-12-20', '601f1889667efaebb33b8c12572835da3f027f78', '1321232132', 'fojgdfoo', 1132123213132, 2, '052983ee7dd36eb268b63f9e49b99f1772e839ba', '0000-00-00', NULL),
(30, 2147483647, '123132', '123312', 'fdaf@fad', '2002-12-20', '601f1889667efaebb33b8c12572835da3f027f78', '132123123', '1233132312', 1231321321, 2, '76139c3a6c4a26b538b872c96caf5172bf50bf2c', '0000-00-00', NULL),
(31, 2147483647, '123132', '123312', 'fdaf@fad', '2002-12-20', '0f3fde0103dd44077c040215a2fabd09a097aecc', '132123123', '1233132312', 1231321321, 2, '76139c3a6c4a26b538b872c96caf5172bf50bf2c', '0000-00-00', NULL),
(32, 2147483647, '123132', '123312', 'fdaf@fad', '2002-12-20', '0f3fde0103dd44077c040215a2fabd09a097aecc', '132123123', '1233132312', 1231321321, 2, '76139c3a6c4a26b538b872c96caf5172bf50bf2c', '0000-00-00', NULL),
(33, 2147483647, '123132', '123312', 'fdaf@fad', '2002-12-20', '0f3fde0103dd44077c040215a2fabd09a097aecc', '132123123', '1233132312', 1231321321, 2, '76139c3a6c4a26b538b872c96caf5172bf50bf2c', '0000-00-00', NULL),
(34, 2147483647, 'dgbdvg', 'dggd', 'dfgd@hma', '2002-12-20', '0f3fde0103dd44077c040215a2fabd09a097aecc', '35803480508', 'dggdfgd', 56645635234, 2, 'd5dbece041f718ce4cbb2cdd51a567571a9cc28e', '0000-00-00', NULL),
(35, 2147483647, 'dgbdvg', 'dggd', 'dfgd@hma', '2002-12-20', '0f3fde0103dd44077c040215a2fabd09a097aecc', '35803480508', 'dggdfgd', 56645635234, 2, 'd5dbece041f718ce4cbb2cdd51a567571a9cc28e', '0000-00-00', NULL),
(36, 2147483647, 'dgbdvg', 'dggd', 'dfgd@hma', '2002-12-20', '0f3fde0103dd44077c040215a2fabd09a097aecc', '35803480508', 'dggdfgd', 56645635234, 2, 'd5dbece041f718ce4cbb2cdd51a567571a9cc28e', '0000-00-00', NULL),
(37, 2147483647, 'dgbdvg', 'dggd', 'dfgd@hma', '2002-12-20', '0f3fde0103dd44077c040215a2fabd09a097aecc', '35803480508', 'dggdfgd', 56645635234, 2, 'd5dbece041f718ce4cbb2cdd51a567571a9cc28e', '0000-00-00', NULL),
(38, 12351, 'mas', 'MASD', 'A@asdf', '2023-08-28', 'c129b324aee662b04eccf68babba85851346dff9', '64361', 'asdf', 123451, 1, '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '0000-00-00', NULL),
(39, 1234, 'sadf', 'asdf', 'a@asdf', '2023-08-29', '3da541559918a808c2402bba5012f6c60b27661c', '12341234', '12341234', 1234, 2, '3da541559918a808c2402bba5012f6c60b27661c', '0000-00-00', NULL),
(40, 9234857, 'matias', 'herman', 'a@gmailcom', '2023-08-30', '92429d82a41e930486c6de5ebda9602d55c39986', '12341234', '12341234', 92348570, 1, '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '0000-00-00', NULL),
(41, 1234123400, 'matias', 'herman', 'a@gmail.com', '2005-08-22', '1ef64cc99ec9cbc83d73bb1f26ca6787a3d8a1ff', '1234123400', '1234123400', 1234123400, 1, '0c422ba64421103f8f58fc3c8676caf9c7c73178', '2023-09-08', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caja_ahorro`
--
ALTER TABLE `caja_ahorro`
  ADD PRIMARY KEY (`numr_tarjeta`);

--
-- Indices de la tabla `credito`
--
ALTER TABLE `credito`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plazo_fijo`
--
ALTER TABLE `plazo_fijo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`prestamo_id`);

--
-- Indices de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  ADD PRIMARY KEY (`id_transaccion`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caja_ahorro`
--
ALTER TABLE `caja_ahorro`
  MODIFY `numr_tarjeta` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9947200681663304;

--
-- AUTO_INCREMENT de la tabla `credito`
--
ALTER TABLE `credito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `plazo_fijo`
--
ALTER TABLE `plazo_fijo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `prestamo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  MODIFY `id_transaccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
