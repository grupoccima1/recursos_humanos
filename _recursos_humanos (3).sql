-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2023 a las 16:11:17
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: ` recursos_humanos`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetDepartamento` ()   BEGIN
    SELECT
        id_departamento,
        departamento, 
        puesto,
        sueldo_semanal,
        sueldo_mensual
    FROM
        departamento
    ORDER BY sueldo_mensual ;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_beneficiario` (`nombre` VARCHAR(60), `ap_paterno` VARCHAR(30), `ap_materno` VARCHAR(30), `celular` INT(10), `parentesco` VARCHAR(10), `id_empleado` INT(4))   BEGIN
                DECLARE empleado_existe INT;
                DECLARE id INT;
                SET empleado_existe = (SELECT id_empleado FROM empleados order by id_empleado DESC limit 1);
                IF empleado_existe = empleado_existe THEN
                        INSERT INTO beneficiario(nombre, ap_paterno,ap_materno,celular,parentesco,id_empleado) VALUES(nombre, ap_paterno,ap_materno,celular,parentesco,id_empleado);
                        SET id = LAST_INSERT_ID();
                ELSE
                        SET id = 0;
                END IF;
                SELECT id;

        END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_contacto` (`nomC` VARCHAR(60), `celC` INT(10), `id_empleado` INT(4))   BEGIN
                DECLARE empleado_existe INT;
                DECLARE id INT;
                SET empleado_existe = (SELECT id_empleado FROM empleados order by id_empleado DESC limit 1 );
                IF empleado_existe = 1 THEN
                        INSERT INTO contacto_emergencia(nombre, celular, id_empleado) VALUES(nomC,celC,id_empleado);
                        SET id = LAST_INSERT_ID();
                ELSE
                        SET id = 0;
                END IF;
                SELECT id;

        END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_contrato` (`tipo` VARCHAR(15), `fecha_ingreso` DATE, `fecha_baja` DATE, `antiguedad` FLOAT, `id_empleado` INT(4))   BEGIN
                DECLARE empleado_existe INT;
                DECLARE id INT;
                SET empleado_existe = (SELECT id_empleado FROM empleados order by id_empleado DESC limit 1);
                IF empleado_existe = empleado_existe THEN
                        INSERT INTO contrato(tipo, fecha_ingreso,fecha_baja,antiguedad,id_empleado) VALUES(tipo,fecha_ingreso,fecha_baja,antiguedad,id_empleado);
                        SET id = LAST_INSERT_ID();
                ELSE
                        SET id = 0;
                END IF;
                SELECT id;

        END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_datosFiscales` (`curp` VARCHAR(18), `rfc` VARCHAR(13), `cuenta_hsbc` INT(20), `infonavit` INT(20), `fonacot` INT(20), `id_empleado` INT(4))   BEGIN
            DECLARE empleado_existe int;
            DECLARE id int;
            SET empleado_existe = (SELECT id_empleado from empleados order by id_empleado DESC limit 1 );
            IF empleado_existe = empleado_existe THEN
                    INSERT INTO datos_fiscales(curp,rfc,cuenta_hsbc,infonavit,fonacot,id_empleado) VALUES (curp,rfc,cuenta_hsbc,infonavit,fonacot,id_empleado);
                    SET id = LAST_INSERT_ID();
            ELSE
                    SET id = 0;
            END IF;
            SELECT id;


        END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_departamento` (`departamento` VARCHAR(20), `puesto` VARCHAR(30), `sueldo_semanal` FLOAT, `sueldo_mensual` FLOAT, `id_empleado` INT(4))   BEGIN
                DECLARE empleado_existe INT;
                DECLARE id INT;
                SET empleado_existe = (SELECT id_empleado FROM empleados order by id_empleado DESC limit 1);
                IF empleado_existe = empleado_existe THEN
                        INSERT INTO departamento(departamento, puesto,sueldo_semanal,sueldo_mensual,id_empleado) VALUES(departamento,puesto,sueldo_semanal,sueldo_mensual,id_empleado);
                        SET id = LAST_INSERT_ID();
                ELSE
                        SET id = 0;
                END IF;
                SELECT id;

        END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario`
--

CREATE TABLE `beneficiario` (
  `id_beneficiario` int(4) NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `ap_paterno` varchar(30) DEFAULT NULL,
  `ap_materno` varchar(30) DEFAULT NULL,
  `celular` int(10) DEFAULT NULL,
  `parentesco` varchar(10) DEFAULT NULL,
  `id_empleado` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `beneficiario`
--

INSERT INTO `beneficiario` (`id_beneficiario`, `nombre`, `ap_paterno`, `ap_materno`, `celular`, `parentesco`, `id_empleado`) VALUES
(1, '0', '0', '0', 0, '0', 1),
(2, '', '', '', 0, '', 2),
(3, '', '', '', 0, '', 3),
(4, '', '', '', 0, '', 4),
(5, '', '', '', 0, '', 5),
(6, '', '', '', 0, '', 6),
(7, '', '', '', 0, '', 7),
(8, '', '', '', 0, '', 8),
(9, '', '', '', 0, '', 9),
(10, '', '', '', 0, '', 10),
(11, '', '', '', 0, '', 11),
(12, '', '', '', 0, '', 12),
(13, '', '', '', 0, '', 13),
(14, '', '', '', 0, '', 14),
(15, '', '', '', 0, '', 15),
(16, '', '', '', 0, '', 16),
(17, '', '', '', 0, '', 17),
(18, '', '', '', 0, '', 18),
(19, '', '', '', 0, '', 19),
(20, '', '', '', 0, '', 20),
(21, '', '', '', 0, '', 21),
(22, '', '', '', 0, '', 22),
(23, '', '', '', 0, '', 23),
(24, '', '', '', 0, '', 24),
(25, '', '', '', 0, '', 25),
(26, '', '', '', 0, '', 26),
(27, '', '', '', 0, '', 27),
(28, '', '', '', 0, '', 28),
(29, '', '', '', 0, '', 29),
(30, '', '', '', 0, '', 30),
(31, '', '', '', 0, '', 31),
(32, '', '', '', 0, '', 32),
(33, '', '', '', 0, '', 33),
(34, '', '', '', 0, '', 34),
(35, '', '', '', 0, '', 35),
(36, '', '', '', 0, '', 36),
(37, '', '', '', 0, '', 37),
(38, '', '', '', 0, '', 38),
(39, '', '', '', 0, '', 39),
(40, '', '', '', 0, '', 40),
(41, '', '', '', 0, '', 41),
(42, '', '', '', 0, '', 42),
(43, '', '', '', 0, '', 43),
(44, '', '', '', 0, '', 44),
(45, '', '', '', 0, '', 45),
(46, '', '', '', 0, '', 46),
(47, '', '', '', 0, '', 47),
(48, '', '', '', 0, '', 48),
(49, '', '', '', 0, '', 49),
(50, '', '', '', 0, '', 50),
(51, '', '', '', 0, '', 51),
(52, '', '', '', 0, '', 52),
(53, '', '', '', 0, '', 53),
(54, '', '', '', 0, '', 54),
(55, '', '', '', 0, '', 55),
(56, '', '', '', 0, '', 56),
(57, '', '', '', 0, '', 57),
(58, '', '', '', 0, '', 58),
(59, '', '', '', 0, '', 59),
(60, '', '', '', 0, '', 60),
(61, '', '', '', 0, '', 61),
(62, '', '', '', 0, '', 62),
(63, '', '', '', 0, '', 63),
(64, '', '', '', 0, '', 64),
(65, '', '', '', 0, '', 65),
(66, '', '', '', 0, '', 66),
(67, '', '', '', 0, '', 67),
(68, '', '', '', 0, '', 68),
(69, '', '', '', 0, '', 69),
(70, '', '', '', 0, '', 70),
(71, '', '', '', 0, '', 71),
(72, '', '', '', 0, '', 72),
(73, '', '', '', 0, '', 73),
(74, '', '', '', 0, '', 74),
(75, '', '', '', 0, '', 75),
(76, '', '', '', 0, '', 76),
(77, '', '', '', 0, '', 77),
(78, '', '', '', 0, '', 78),
(79, '', '', '', 0, '', 79),
(80, '', '', '', 0, '', 80),
(81, '', '', '', 0, '', 81),
(82, '', '', '', 0, '', 82),
(83, '', '', '', 0, '', 83),
(84, '', '', '', 0, '', 84),
(85, '', '', '', 0, '', 85),
(86, '', '', '', 0, '', 86),
(87, '', '', '', 0, '', 87),
(88, '', '', '', 0, '', 88),
(89, '', '', '', 0, '', 89),
(90, '', '', '', 0, '', 90),
(91, '', '', '', 0, '', 91),
(92, '', '', '', 0, '', 92),
(93, '', '', '', 0, '', 93),
(94, '', '', '', 0, '', 94),
(95, '', '', '', 0, '', 95),
(96, '', '', '', 0, '', 96),
(97, '', '', '', 0, '', 97),
(98, '', '', '', 0, '', 98),
(99, '', '', '', 0, '', 99),
(100, '', '', '', 0, '', 100),
(101, '', '', '', 0, '', 101),
(102, '', '', '', 0, '', 102),
(103, '', '', '', 0, '', 103),
(104, '', '', '', 0, '', 104),
(105, '', '', '', 0, '', 105),
(106, '', '', '', 0, '', 106),
(107, '', '', '', 0, '', 107),
(108, '', '', '', 0, '', 108),
(109, '', '', '', 0, '', 109),
(110, '', '', '', 0, '', 110),
(111, '', '', '', 0, '', 111),
(112, '', '', '', 0, '', 112),
(113, '', '', '', 0, '', 113),
(114, '', '', '', 0, '', 114),
(115, '', '', '', 0, '', 115),
(116, '', '', '', 0, '', 116),
(117, '', '', '', 0, '', 117),
(118, '', '', '', 0, '', 118),
(119, '', '', '', 0, '', 119),
(120, '', '', '', 0, '', 120),
(121, '', '', '', 0, '', 121),
(122, '', '', '', 0, '', 122),
(123, '', '', '', 0, '', 123),
(124, '', '', '', 0, '', 124),
(125, '', '', '', 0, '', 125),
(126, '', '', '', 0, '', 126),
(127, '', '', '', 0, '', 127),
(128, '', '', '', 0, '', 128),
(129, '', '', '', 0, '', 129),
(130, '', '', '', 0, '', 130),
(131, '', '', '', 0, '', 131),
(132, '', '', '', 0, '', 132),
(133, '', '', '', 0, '', 133),
(134, '', '', '', 0, '', 134),
(135, '', '', '', 0, 'padre', 135),
(136, '', '', '', 0, '', 136),
(138, 'prueba', 'prueba', 'prueba', 1234567890, 'prueba', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto_emergencia`
--

CREATE TABLE `contacto_emergencia` (
  `id_contacto` int(4) NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `celular` int(10) DEFAULT NULL,
  `id_empleado` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contacto_emergencia`
--

INSERT INTO `contacto_emergencia` (`id_contacto`, `nombre`, `celular`, `id_empleado`) VALUES
(1, 'Maria guadalupe -luna Alvarez ', 2147483647, 1),
(2, 'HUMBERTO GONZALEZ DEL VILLAR - PADRE', 2147483647, 2),
(3, 'Efren Gpe Castro Beltran-Esposo', 442, 3),
(4, 'J. JUADALUPE BALENCIA', 2147483647, 4),
(5, '', 0, 5),
(6, 'CAROLINA GARCIA VAZQUEZ', 2147483647, 6),
(7, 'VERONICA APAES-MAMA', 2147483647, 7),
(8, 'MARIA GUADALUPE MARQUEZ / MADRE', 2147483647, 8),
(9, 'Merik Garcia Vargas. Preja', 2147483647, 9),
(10, 'Roberta Rios - Madre', 2147483647, 10),
(11, 'INEDINA RIVERA VEGA / MADRE', 2147483647, 11),
(12, 'MACIEL QUINTANA HOMERO', 2147483647, 12),
(13, 'ALMA MARGARITA/MADRE', 2147483647, 13),
(14, 'GLENDA  GISELA SUAREZ BECERRA', 2147483647, 14),
(15, 'Jose Alfredo medellin caseres- padre', 2147483647, 15),
(16, '', 0, 16),
(17, 'RAMIRO RAMIRES HERNANDEZ', 2147483647, 17),
(18, 'Mar?a de Lourdes Moreno Jaramillo', 2147483647, 18),
(19, 'Sandra Maria Nu?ez Guerrero', 2147483647, 19),
(20, 'VERONICA RUFINO HERNANDEZ ', 2147483647, 20),
(21, 'CANDERIA SALAS PEREZ', 2147483647, 21),
(22, 'Jose Antonio Glez- hijo', 2147483647, 22),
(23, 'MARIA DOLORES AVILA ALVAREZ', 2147483647, 23),
(24, 'Karina Legorreta Torres', 2147483647, 24),
(25, 'MARISOL MARTINEZ MARTINEZ', 2147483647, 25),
(26, 'JESICA JOVANA BARROSO CONTRERAS', 0, 26),
(27, 'Marcela Reyes - Esposa', 2147483647, 27),
(28, 'LUZ LAURA BALDERAS HERNANDEZ', 2147483647, 28),
(29, 'Luis e Telles', 2147483647, 29),
(30, 'ESTHER RAMIREZ SANCHEZ', 2147483647, 30),
(31, 'FIDEL GOMEZ CRUZ', 2147483647, 31),
(32, 'MOISES MENDOZA HERNANDEZ / PADRE', 2147483647, 32),
(33, 'Jonathan Garcia Roman', 2147483647, 33),
(34, 'SERGIO TELLEZ MARIN', 2147483647, 34),
(35, 'Aime Ramirez crespo- prima', 2147483647, 35),
(36, 'LORENZO HERRERA FLORES', 2147483647, 36),
(37, 'ISRAEL JACOB JIMENEZ AGUILAR', 2147483647, 37),
(38, 'KARLA ROMO GARCIA', 2147483647, 38),
(39, 'Minerva Romero Dominguez', 2147483647, 39),
(40, 'NANCY ASCENCIO TORRES', 2147483647, 40),
(41, 'Inocencio Sanchez Morelos-Esposo', 2147483647, 41),
(42, 'CARMEN SOLANO GONZALEZ - MADRE', 2147483647, 42),
(43, 'Fabiola Guerrero', 2147483647, 43),
(44, 'CARLOS ADRIAN CUELLAR LOPEZ', 2147483647, 44),
(45, 'ROCIO VAZQUEZ HERNANDEZ - MADRE', 2147483647, 45),
(46, 'Jackelin Gonzalez Montes de Oca', 2147483647, 46),
(47, 'Ma. Elena Enriquez Sonora', 2147483647, 47),
(48, 'SILVIA RAMIREZ UBIARCO ', 2147483647, 48),
(49, 'ULISES BONILLA', 2147483647, 49),
(50, 'MARGARITA GONZALEZ PALMARES-MADRE', 2147483647, 50),
(51, 'Edtih Gonzalez- Conyugue', 442, 51),
(52, 'INES RUIZ BANDA', 2147483647, 52),
(53, 'Adrinana Rodriguez Gonzalez - Esposa', 55, 53),
(54, 'CIRIA ROSALES OLVERA - MADRE', 2147483647, 54),
(55, 'GUADALUPE NAVA BENITEZ', 2147483647, 55),
(56, '', 0, 56),
(57, 'MARIA PUEBLITO SANCHEZ CABRERA', 2147483647, 57),
(58, 'Gerardo ugalde Esquivel-Padre', 2147483647, 58),
(59, 'Fabiola Castillo Basurto', 2147483647, 59),
(60, 'Mar?a Teresa Hern?ndez Ch?vez - Mama', 2147483647, 60),
(61, 'Maria Gpe. Guerrero Perez-esposa', 2147483647, 61),
(62, '', 0, 62),
(63, '', 0, 63),
(64, 'Leopoldo Rodriguez Vega- Padre', 2147483647, 64),
(65, 'Rosa maria Patlan Ram-madre', 2147483647, 65),
(66, 'VICTOR PLATA BAUTISTA', 2147483647, 66),
(67, '__', 0, 67),
(68, '__', 0, 68),
(69, '__', 0, 69),
(70, 'Patricia sanchez -madre', 2147483647, 70),
(71, 'GABRIELA DEL SAUZ', 2147483647, 71),
(72, 'MARITZA VELAZQUEZ MENDOZA ', 2147483647, 72),
(73, 'PATRICIA MARTINEZ MACEDO - MADRE', 2147483647, 73),
(74, 'MARTHA PATRICIA RUIZ / ESPOSA', 2147483647, 74),
(75, 'FRANCISCO RAMIREZ GUTIERREZ', 2147483647, 75),
(76, 'CLARA ADRIANA MARTINEZ FLORES - MADRE', 2147483647, 76),
(77, 'ROSA SUSANA RAMIREZ MENDEZ / HERMANA', 2147483647, 77),
(78, 'FRANCISCA GONZALEZ RAMOS', 2147483647, 78),
(79, 'MARIA DEL CARMEN ORRANTIA RODRIGUEZ-AMIGA', 2147483647, 79),
(80, 'EUSTOVA MEDINA RODRIGUEZ-MADRE', 2147483647, 80),
(81, 'ALEJANDRO MACIAS MARTINEZ ', 2147483647, 81),
(82, ' SERGIO VELAZQUEZ RODRIGUEZ - PADRE', 2147483647, 82),
(83, 'Maria Nanci Juarez Alvarez-Madre', 2147483647, 83),
(84, 'ALBERTO GONZALEZ HERNANDEZ', 2147483647, 84),
(85, 'ANA MARIA NEVADO CASTRO - MADRE', 2147483647, 85),
(86, 'Eva Elizalde alquisira- hermana', 2147483647, 86),
(87, 'LOURDES COTA', 2147483647, 87),
(88, 'MARCELA VAZQUEZ', 2147483647, 88),
(89, 'JOSE JAVIER CRUZ VARGAS - PADRE', 2147483647, 89),
(90, 'ANA ROSA DIAZ GALVAN ', 2147483647, 90),
(91, 'MARIA DEL ROSARIO PADRON DON - madre', 2147483647, 91),
(92, 'GARDENIA MARGARITA MORALES MAYA ', 2147483647, 92),
(93, 'JOSE LUIS BAUTISTA GOMEZ', 2147483647, 93),
(94, 'SALOMON CABRERA', 2147483647, 94),
(95, 'Maria Dolores Olvera Flores', 2147483647, 95),
(96, 'ANA MARIA JARDINEZ HERNANDEZ', 2147483647, 96),
(97, '', 0, 97),
(98, 'MODESTO BADILLO FRANCO', 2147483647, 98),
(99, 'Ma. Clemencia guerrero carrillo-esposa', 2147483647, 99),
(100, 'ANA SONIA BARRERO PEDRAZA / ESPOSA', 2147483647, 100),
(101, 'MA. GUADALUPEGUTIERREZ - MADRE', 2147483647, 101),
(102, 'ELIZABETH HARO MORAN', 2147483647, 102),
(103, '', 0, 103),
(104, 'ESTHER MORAN PEDRAZA', 2147483647, 104),
(105, 'MARIA CONCEPCION- ESPOSA', 2147483647, 105),
(106, 'ELIZABETH HARO MORAN - HIJA', 2147483647, 106),
(107, 'OSCAR GARCIA MIRANDA - PAREJA', 2147483647, 107),
(108, 'Patricia Estrella- Hernandez', 2147483647, 108),
(109, 'Antonio Sanchez- padre', 2147483647, 109),
(110, 'JOSE ROMAN VARGAS PEREZ - ESPOSO', 2147483647, 110),
(111, 'FLOR IVETH LOPEZ HDERNANDEZ - ESPOSA', 2147483647, 111),
(112, 'ROSA MARIA AGUILAR BALDERAS- HERMANA', 2147483647, 112),
(113, 'JENNIFER ADRIANA RUIZ GUDI?O', 2147483647, 113),
(114, '__', 0, 114),
(115, 'MARIA TERESA JUAREZ ROMERO', 2147483647, 115),
(116, 'ELSA LETICIA SOLIS AGUILAR ', 2147483647, 116),
(117, 'JUAN LOPEZ GOMEZ', 2147483647, 117),
(118, 'Sofia Mendoza-Hermana', 2147483647, 118),
(119, 'ROGELIO VARGAS ALVARADO - PAREJA', 2147483647, 119),
(120, 'Elizabeth- Esposa', 2147483647, 120),
(121, 'Beatriz Badillo Franco- hermana', 2147483647, 121),
(122, 'Ana Rodea Soriano -madre', 735, 122),
(123, 'MODESTO BADILLO FRANCO - HERMANO', 2147483647, 123),
(124, '', 0, 124),
(125, 'CLAUDIA VENEGAS - PAREJA', 2147483647, 125),
(126, 'Alan cabrera ya?ez- hermano', 2147483647, 126),
(127, 'JOSE CRUZ TOVAR PEREZ / PAREJA', 2147483647, 127),
(128, '', 0, 128),
(129, 'ARELI DEL ANGEL HERNANDEZ-MADRE', 2147483647, 129),
(130, 'JAZMIN GABRIELA LIRA HERNANDEZ ', 2147483647, 130),
(131, 'MARTHA ITURBE LOPEZ - MADRE', 2147483647, 131),
(132, 'MARTIN NOE RENOVATO SALAZAR / PADRE', 2147483647, 132),
(133, 'JORGE LUIS GARCIA CORTEZ', 2147483647, 133),
(134, 'BRAULIO CABELLO LEDEZMA ', 2147483647, 134),
(135, 'CONSUELO LOPEZ', 2147483647, 135),
(137, 'actualizado', 1234567890, 1),
(139, NULL, NULL, 139),
(140, 'nuevo', NULL, 139),
(407, 'nuevo', NULL, 139),
(408, NULL, NULL, 135);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato`
--

CREATE TABLE `contrato` (
  `id_contrato` int(4) NOT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_baja` date DEFAULT NULL,
  `antiguedad` float DEFAULT NULL,
  `id_empleado` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contrato`
--

INSERT INTO `contrato` (`id_contrato`, `tipo`, `fecha_ingreso`, `fecha_baja`, `antiguedad`, `id_empleado`) VALUES
(1, 'INDETERMINADO', '2019-07-31', '0000-00-00', 3.8, 1),
(2, 'DETERMINADO', '2023-02-01', '0000-00-00', 0.3, 2),
(3, 'INDETERMINADO', '2018-05-29', '0000-00-00', 4.9, 3),
(4, 'INDETERMINADO', '2020-01-06', '0000-00-00', 3.3, 4),
(5, 'INDETERMINADO', '2023-04-27', '0000-00-00', 0, 5),
(6, 'DETERMINADO', '2023-01-23', '0000-00-00', 0.3, 6),
(7, 'DETERMINADO', '2022-05-30', '0000-00-00', 0.9, 7),
(8, 'DETERMINADO', '2022-04-20', '0000-00-00', 1, 8),
(9, 'INDETERMINADO', '2018-11-14', '0000-00-00', 4.5, 9),
(10, 'INDETERMINADO', '2018-02-01', '0000-00-00', 5.3, 10),
(11, 'DETERMINADO', '2022-03-10', '0000-00-00', 1.2, 11),
(12, 'DETERMINADO', '2022-03-24', '0000-00-00', 1.1, 12),
(13, 'DETERMINADO', '2022-06-27', '0000-00-00', 0.9, 13),
(14, 'DETERMINADO', '2022-06-16', '0000-00-00', 0.9, 14),
(15, 'INDETERMINADO', '2020-12-14', '0000-00-00', 2.4, 15),
(16, 'DETERMINADO', '2023-04-03', '0000-00-00', 0.1, 16),
(17, 'DETERMINADO', '2021-06-21', '0000-00-00', 1.9, 17),
(18, 'DETERMINADO', '2021-08-30', '0000-00-00', 1.7, 18),
(19, 'DETERMINADO', '2021-08-06', '0000-00-00', 1.7, 19),
(20, 'DETERMINADO', '2022-11-29', '0000-00-00', 0.4, 20),
(21, 'DETERMINADO', '2022-10-17', '0000-00-00', 0.5, 21),
(22, 'INDETERMINADO', '2020-07-08', '0000-00-00', 2.8, 22),
(23, 'DETERMINADO', '2023-03-22', '0000-00-00', 0.1, 23),
(24, 'INDETERMINADO', '2018-07-17', '0000-00-00', 4.8, 24),
(25, 'INDETERMINADO', '2014-04-01', '0000-00-00', 9.1, 25),
(26, 'DETERMINADO', '2022-09-27', '0000-00-00', 0.6, 26),
(27, 'INDETERMINADO', '2018-09-04', '0000-00-00', 4.7, 27),
(28, 'DETERMINADO', '2022-09-06', '0000-00-00', 0.7, 28),
(29, 'INDETERMINADO', '2020-07-14', '0000-00-00', 2.8, 29),
(30, 'DETERMINADO', '2022-08-04', '0000-00-00', 0.7, 30),
(31, 'DETERMINADO', '2021-02-08', '0000-00-00', 2.2, 31),
(32, 'DETERMINADO', '2022-03-11', '0000-00-00', 1.1, 32),
(33, 'DETERMINADO', '2022-03-28', '0000-00-00', 1.1, 33),
(34, 'DETERMINADO', '2022-09-26', '0000-00-00', 0.6, 34),
(35, 'DETERMINADO', '2020-08-06', '0000-00-00', 2.7, 35),
(36, 'INDETERMINADO', '2021-01-15', '0000-00-00', 2.3, 36),
(37, 'DETERMINADO', '2022-09-22', '0000-00-00', 0.6, 37),
(38, 'INDETERMINADO', '2014-02-20', '0000-00-00', 9.2, 38),
(39, 'DETERMINADO', '2022-03-28', '0000-00-00', 1.1, 39),
(40, 'DETERMINADO', '2022-07-04', '0000-00-00', 0.8, 40),
(41, 'INDETERMINADO', '2019-12-06', '0000-00-00', 3.4, 41),
(42, 'DETERMINADO', '2023-04-17', '0000-00-00', 0, 42),
(43, 'INDETERMINADO', '2017-09-19', '0000-00-00', 5.6, 43),
(44, 'DETERMINADO', '2021-07-26', '0000-00-00', 1.8, 44),
(45, 'DETERMINADO', '2022-07-04', '0000-00-00', 0.8, 45),
(46, 'INDETERMINADO', '2018-07-26', '0000-00-00', 4.8, 46),
(47, 'DETERMINADO', '2022-03-28', '0000-00-00', 1.1, 47),
(48, 'DETERMINADO', '2022-03-19', '0000-00-00', 1.1, 48),
(49, 'DETERMINADO', '2022-11-28', '0000-00-00', 0.4, 49),
(50, 'DETERMINADO', '2021-06-21', '0000-00-00', 1.9, 50),
(51, 'INDETERMINADO', '2018-11-12', '0000-00-00', 4.5, 51),
(52, 'INDETERMINADO', '2021-03-08', '0000-00-00', 2.2, 52),
(53, 'INDETERMINADO', '2018-11-20', '0000-00-00', 4.5, 53),
(54, 'DETERMINADO', '2023-04-17', '0000-00-00', 0, 54),
(55, 'DETERMINADO', '2022-10-14', '0000-00-00', 0.6, 55),
(56, 'DETERMINADO', '2023-01-10', '0000-00-00', 0.3, 56),
(57, 'INDETERMINADO', '2020-11-23', '0000-00-00', 2.4, 57),
(58, 'DETERMINADO', '2020-06-30', '0000-00-00', 2.8, 58),
(59, 'DETERMINADO', '2021-08-09', '0000-00-00', 1.7, 59),
(60, 'INDETERMINADO', '2017-12-06', '0000-00-00', 5.4, 60),
(61, 'INDETERMINADO', '2014-09-01', '0000-00-00', 8.7, 61),
(62, 'INDETERMINADO', '2020-06-01', '0000-00-00', 2.9, 62),
(63, 'DETERMINADO', '2023-03-23', '0000-00-00', 0.1, 63),
(64, 'INDETERMINADO', '2020-06-30', '0000-00-00', 2.8, 64),
(65, 'INDETERMINADO', '2019-11-25', '0000-00-00', 3.4, 65),
(66, 'DETERMINADO', '2023-01-02', '0000-00-00', 0.3, 66),
(67, 'INDETERMINADO', '2012-01-02', '0000-00-00', 11.3, 67),
(68, 'INDETERMINADO', '2018-07-16', '0000-00-00', 4.8, 68),
(69, 'INDETERMINADO', '2012-01-02', '0000-00-00', 11.3, 69),
(70, 'INDETERMINADO', '2019-11-12', '0000-00-00', 3.5, 70),
(71, 'DETERMINADO', '2022-09-23', '0000-00-00', 0.6, 71),
(72, 'DETERMINADO', '2022-09-20', '0000-00-00', 0.6, 72),
(73, 'DETERMINADO', '2023-03-14', '0000-00-00', 0.1, 73),
(74, 'DETERMINADO', '2022-03-22', '0000-00-00', 1.1, 74),
(75, 'INDETERMINADO', '2021-02-16', '0000-00-00', 2.2, 75),
(76, 'BECARIO', '2023-01-13', '0000-00-00', 0.3, 76),
(77, 'DETERMINADO', '2022-05-09', '0000-00-00', 1, 77),
(78, 'DETERMINADO', '2022-12-05', '0000-00-00', 0.4, 78),
(79, 'DETERMINADO', '2022-10-17', '0000-00-00', 0.5, 79),
(80, 'DETERMINADO', '2023-02-07', '0000-00-00', 0.2, 80),
(81, 'DETERMINADO', '2023-02-07', '0000-00-00', 0.2, 81),
(82, 'INDETERMINADO', '2019-01-22', '0000-00-00', 4.3, 82),
(83, 'INDETERMINADO', '2017-12-05', '0000-00-00', 5.4, 83),
(84, 'DETERMINADO', '2022-10-05', '0000-00-00', 0.6, 84),
(85, 'DETERMINADO', '2023-04-17', '0000-00-00', 0, 85),
(86, 'INDETERMINADO', '2020-06-30', '0000-00-00', 2.8, 86),
(87, 'DETERMINADO', '2022-12-02', '0000-00-00', 0.4, 87),
(88, 'DETERMINADO', '2022-11-21', '0000-00-00', 0.4, 88),
(89, 'DETERMINADO', '2023-02-27', '0000-00-00', 0.2, 89),
(90, 'DETERMINADO', '2022-05-20', '0000-00-00', 1, 90),
(91, 'DETERMINADO', '2023-01-09', '0000-00-00', 0.3, 91),
(92, 'DETERMINADO', '2022-05-13', '0000-00-00', 1, 92),
(93, 'DETERMINADO', '2023-01-09', '0000-00-00', 0.3, 93),
(94, 'INDETERMINADO', '2021-02-02', '0000-00-00', 2.2, 94),
(95, 'INDETERMINADO', '2019-02-05', '0000-00-00', 4.2, 95),
(96, 'BECARIO', '2022-08-17', '0000-00-00', 0.7, 96),
(97, 'INDETERMINADO', '2016-02-02', '0000-00-00', 7.3, 97),
(98, 'DETERMINADO', '2023-03-22', '0000-00-00', 0.1, 98),
(99, 'INDETERMINADO', '2005-02-09', '0000-00-00', 18.2, 99),
(100, 'INDETERMINADO', '2022-03-22', '0000-00-00', 1.1, 100),
(101, 'DETERMINADO', '2022-04-04', '0000-00-00', 1.1, 101),
(102, 'INDETERMINADO', '2011-09-03', '0000-00-00', 11.7, 102),
(103, 'DETERMINADO', '2023-04-19', '0000-00-00', 0, 103),
(104, 'DETERMINADO', '2022-05-25', '0000-00-00', 0.9, 104),
(105, 'DETERMINADO', '2023-01-16', '0000-00-00', 0.3, 105),
(106, 'DETERMINADO', '2023-01-31', '0000-00-00', 0.3, 106),
(107, 'DETERMINADO', '2023-04-19', '0000-00-00', 0, 107),
(108, 'INDETERMINADO', '2015-09-01', '0000-00-00', 7.7, 108),
(109, 'INDETERMINADO', '2018-04-03', '0000-00-00', 5.1, 109),
(110, 'DETERMINADO', '2023-04-10', '0000-00-00', 0, 110),
(111, 'DETERMINADO', '2023-03-24', '0000-00-00', 0.1, 111),
(112, 'DETERMINADO', '2023-03-28', '0000-00-00', 0.1, 112),
(113, 'DETERMINADO', '2022-08-01', '0000-00-00', 0.76, 113),
(114, 'INDETERMINADO', '2012-10-30', '0000-00-00', 10.5, 114),
(115, 'DETERMINADO', '2023-01-03', '0000-00-00', 0.3, 115),
(116, 'BECARIO', '2022-08-17', '0000-00-00', 0.7, 116),
(117, 'INDETERMINADO', '2021-03-18', '0000-00-00', 2.1, 117),
(118, 'INDETERMINADO', '2016-02-10', '0000-00-00', 7.2, 118),
(119, 'DETERMINADO', '2023-03-10', '0000-00-00', 0.2, 119),
(120, 'INDETERMINADO', '2009-01-09', '0000-00-00', 14.3, 120),
(121, 'INDETERMINADO', '2018-08-14', '0000-00-00', 4.7, 121),
(122, 'INDETERMINADO', '2019-07-16', '0000-00-00', 3.8, 122),
(123, 'DETERMINADO', '2022-12-12', '0000-00-00', 0.4, 123),
(124, 'INDETERMINADO', '2023-03-27', '0000-00-00', 0.1, 124),
(125, 'DETERMINADO', '2021-07-06', '0000-00-00', 1.8, 125),
(126, 'INDETERMINADO', '2019-02-05', '0000-00-00', 4.2, 126),
(127, 'DETERMINADO', '2022-02-14', '0000-00-00', 1.2, 127),
(128, 'DETERMINADO', '2022-07-27', '0000-00-00', 0.8, 128),
(129, 'DETERMINADO', '2022-05-23', '0000-00-00', 0.9, 129),
(130, 'DETERMINADO', '2023-03-21', '0000-00-00', 0, 130),
(131, 'DETERMINADO', '2023-02-13', '0000-00-00', 0.2, 131),
(132, 'INDETERMINADO', '2022-02-14', '0000-00-00', 1.2, 132),
(133, 'INDETERMINADO', '2022-05-09', '0000-00-00', 1, 133),
(134, 'BECARIO', '2022-10-10', '0000-00-00', 0.6, 134),
(135, 'DETERMINADO', '2022-05-02', '0000-00-00', 1, 135),
(146, 'tipo', '0000-00-00', '0000-00-00', 1, 2),
(147, 'tipo', '0000-00-00', '0000-00-00', 1, 131),
(149, 'tipo', '0000-00-00', '0000-00-00', 1, 130);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_fiscales`
--

CREATE TABLE `datos_fiscales` (
  `id_datosFiscales` int(4) NOT NULL,
  `curp` varchar(18) DEFAULT NULL,
  `rfc` varchar(13) DEFAULT NULL,
  `cuenta_hsbc` int(20) DEFAULT NULL,
  `infonavit` int(20) DEFAULT NULL,
  `fonacot` int(20) DEFAULT NULL,
  `id_empleado` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos_fiscales`
--

INSERT INTO `datos_fiscales` (`id_datosFiscales`, `curp`, `rfc`, `cuenta_hsbc`, `infonavit`, `fonacot`, `id_empleado`) VALUES
(1, 'VELA971118793', '14139766183', 0, 0, 0, 1),
(2, 'GOGA000414BZ1', '09210069598', 0, 0, 0, 2),
(3, 'RAHA920602BV3', '39109226561', 0, 0, 0, 3),
(4, 'HEMA801118SB6', '14998019500', 0, 0, 0, 4),
(5, '', '', 0, 0, 0, 5),
(6, 'ROGC991123HU4', '47169933711', 0, 0, 0, 6),
(7, 'SAAD990310KH5', '08189931457', 0, 0, 0, 7),
(8, 'CAME890621T47', '20108903244', 0, 0, 0, 8),
(9, 'PICE851216IA7', '45028505191', 0, 0, 0, 9),
(10, 'AARF930411GC6', '15109311256', 0, 0, 0, 10),
(11, 'AURI971121EU7', '14139739826', 0, 0, 0, 11),
(12, 'PAGJ9905253X8', '42169943836', 0, 0, 0, 12),
(13, 'CEMJ000217D74', '18170033940', 0, 0, 0, 13),
(14, 'SUBI990728KW6', '03149983607', 0, 0, 0, 14),
(15, 'MECA9811233ZA', '07139838028', 0, 0, 0, 15),
(16, 'AIRJ9307149X4', '14109358813', 0, 0, 0, 16),
(17, 'RAOJ030527Q43', '25210309651', 0, 0, 0, 17),
(18, 'MAMJ910105P97', '14109121039', 0, 0, 0, 18),
(19, 'RANJ0112052MA', '14130195432', 0, 0, 0, 19),
(20, 'EURL000426IW4', '13150086604', 0, 0, 0, 20),
(21, 'LOSL93080353A', '21139303081', 0, 0, 0, 21),
(22, 'BARS740719EC6', '39937472965', 0, 2147483647, 0, 22),
(23, 'MEAM9909104A6', '10159978252', 0, 0, 0, 23),
(24, 'ROEM881103QC5', '03168803108', 0, 0, 0, 24),
(25, 'ROMM8706144I5', '01058714310', 0, 0, 0, 25),
(26, 'LOMO8807312D4', '15058815182', 0, 0, 0, 26),
(27, 'GAMR890106Q49', '92078946073', 0, 0, 0, 27),
(28, 'RUBS0001069Q7', '02150044374', 0, 0, 0, 28),
(29, 'JIMY970626EL7', '28169766954', 0, 0, 0, 29),
(30, 'RORY000814L25', '02150041388', 0, 0, 0, 30),
(31, 'GOFA940105532', '94129405877', 0, 0, 0, 31),
(32, 'MEAD9711178F4', '26149755907', 0, 0, 0, 32),
(33, 'GARE9811016J7', '65169876532', 0, 0, 0, 33),
(34, 'TEOI9911168C9', '03229972280', 0, 0, 0, 34),
(35, 'CURF9307116L8', '20129304810', 0, 0, 0, 35),
(36, 'MAVI920430365', '06139263401', 0, 0, 0, 36),
(37, 'AUFK8902269K9', '28058904187', 0, 2147483647, 0, 37),
(38, 'ROGJ910523F56', '14099140932', 0, 0, 0, 38),
(39, 'XARJ9907015R1', '55169923715', 0, 0, 0, 39),
(40, 'BAAK990903A10', '01219900154', 0, 0, 0, 40),
(41, 'VERL8608224L0', '78048621011', 0, 0, 0, 41),
(42, 'RESC980227AP6', '17179859081', 0, 0, 0, 42),
(43, 'GUZM9602139P8', '14129601341', 0, 0, 0, 43),
(44, 'CULX990818ET2-', '14149902349', 0, 0, 0, 44),
(45, 'GOVP0003105Z2', '01190051449', 0, 0, 0, 45),
(46, 'GOMR881021A39', '15078819362', 0, 0, 0, 46),
(47, 'MOES9909301Z4', '40169980022', 0, 0, 0, 47),
(48, 'HERS8911054S9', '20108903269', 0, 0, 0, 48),
(49, 'MOTY960922A85', '10169627790', 0, 0, 0, 49),
(50, 'VAGL970429C87', '08199700702', 0, 0, 0, 50),
(51, 'IALM830912JN7', '13028316571', 0, 0, 0, 51),
(52, 'RARA931231MY6', '22169352568', 0, 0, 0, 52),
(53, 'MEMA741002', '39927434876', 0, 0, 0, 53),
(54, 'EERD990827N98', '03199906946', 0, 0, 0, 54),
(55, 'VANA021223KJ1', '02200290837', 0, 0, 0, 55),
(56, 'LINF7909273Q6', '14967919649', 0, 0, 0, 56),
(57, 'SACE000520DH9', '14020000205', 0, 0, 0, 57),
(58, 'UAFG9803128LA', '14139853262', 0, 0, 0, 58),
(59, 'LACJ9403184S4', '65139486602', 0, 0, 0, 59),
(60, 'HUHJ941014G66', '09129484581', 0, 0, 0, 60),
(61, 'VAPJ880914C81', '63068825650', 0, 0, 0, 61),
(62, 'GAGJ550824CN0', '14935500844', 0, 0, 0, 62),
(63, 'SOAT870514FU2', '02228790024', 0, 0, 0, 63),
(64, 'ROVL960825UYA', '14119664390', 0, 0, 0, 64),
(65, 'RAPR960229E40', '50149633419', 0, 0, 0, 65),
(66, 'PALV971222T2A', '05229721369', 0, 0, 0, 66),
(67, 'MAML7801103T2', '14037800670', 0, 0, 0, 67),
(68, 'MEMR000510ER2', '-', 0, 0, 0, 68),
(69, '-', '-', 0, 0, 0, 69),
(70, 'CASA860730EZ4', '14058605065', 0, 0, 0, 70),
(71, 'PAVA990727NQA', '19189961063', 0, 0, 0, 71),
(72, 'RIVB990827F72', '14149909476', 0, 0, 0, 72),
(73, 'GAMC950909UB7', '15169528930', 0, 0, 0, 73),
(74, 'HEBC960710QX2', '14129674835', 0, 0, 0, 74),
(75, 'RACK960603IP1', '14129681087', 0, 0, 0, 75),
(76, 'LAMI000114V24', '02150064448', 0, 0, 0, 76),
(77, 'RAMA980620ST2', '3149890992', 0, 0, 0, 77),
(78, 'GORL970910FY5', '1179711989', 0, 0, 0, 78),
(79, 'TEOP000727G35', '03150039026', 0, 0, 0, 79),
(80, 'HEMV951229AWA', '14119560218', 0, 0, 0, 80),
(81, 'MALV990425EW4', '2189988518', 0, 0, 0, 81),
(82, 'VEMV880401GB6', '14098818918', 0, 0, 0, 82),
(83, 'MOJA910905G72', '14119104116', 0, 0, 0, 83),
(84, 'GOMA9801186Q1', '03169897323', 0, 0, 0, 84),
(85, 'GENJ930921CJ1', '05199354191', 0, 0, 0, 85),
(86, 'EIAL9607052GA', '14119649490', 0, 0, 0, 86),
(87, 'SAAP980504432', '91169857249', 0, 0, 0, 87),
(88, 'VAMA950708V91', '46169525774', 0, 0, 0, 88),
(89, 'CUPA041129S91', '46190435811', 0, 0, 0, 89),
(90, 'DIGD960806E52', '03149659934', 0, 0, 0, 90),
(91, 'BAPR991202577', '21169916083', 0, 0, 0, 91),
(92, 'GAMS010718HL5', '26170108380', 0, 0, 0, 92),
(93, 'SARM910722KB9', '11917423755', 0, 0, 0, 93),
(94, 'CAYA010213U19', '10160149521', 0, 0, 0, 94),
(95, 'OEJA890520LV9', '14078944783', 0, 0, 0, 95),
(96, 'BECARIO', '', 0, 0, 0, 96),
(97, 'CARA861229S1A', '13118618415', 0, 0, 0, 97),
(98, 'MABD031114Q90', '30220319997', 0, 0, 0, 98),
(99, 'RIAA801219A80', '14987929750', 0, 0, 0, 99),
(100, 'TACC8007122D3', '14998035779', 0, 0, 0, 100),
(101, 'AUGD961205LT1', '14129644671', 0, 0, 0, 101),
(102, 'GUGE841018281', '14068420463', 0, 0, 0, 102),
(103, 'HEPE871228IH8', '14068721605', 0, 0, 0, 103),
(104, 'HAME970626KZ5', '10169725958', 0, 0, 0, 104),
(105, 'LEGF8705048E8', '14068716720', 0, 0, 0, 105),
(106, 'HALE611010UE6', '10816101918', 0, 0, 0, 106),
(107, 'GAMJ970426G17', '14139727862', 0, 0, 0, 107),
(108, 'SUBJ7409224V9', '14917440464', 0, 0, 0, 108),
(109, 'SAPJ9607291J1', '17129610006', 0, 0, 0, 109),
(110, 'SABM970225RBA', '14129728045', 0, 0, 0, 110),
(111, 'REZM770130PT4', '96067705887', 0, 0, 0, 111),
(112, 'AUBJ0010048P1', '03170033710', 0, 0, 0, 112),
(113, 'PASG971027TD8', '14139715214', 0, 0, 0, 113),
(114, 'RUMJ8003162I2', '1405800670', 0, 0, 0, 114),
(115, 'GAJL980521T16', '03179864057', 0, 0, 0, 115),
(116, 'BECARIO', '', 0, 0, 0, 116),
(117, 'LOCG970704961', '14129726130', 0, 0, 0, 117),
(118, 'METM850506AU3', '14038516481', 0, 0, 0, 118),
(119, 'DICN8608152D7', '12058624813', 0, 0, 0, 119),
(120, 'PASM730214', '14947300290', 0, 0, 0, 120),
(121, 'BAFM8603045Z2', '01168650867', 0, 0, 0, 121),
(122, 'OARP9401171D9', '05169436697', 0, 0, 0, 122),
(123, 'BAFP0109144F1', '04160144467', 0, 0, 0, 123),
(124, '', '', 0, 0, 0, 124),
(125, 'TORR850813636', '14118507863', 0, 0, 0, 125),
(126, 'CAYS980908DL2', '08149879630', 0, 0, 0, 126),
(127, 'VEVS020806', '19210293825', 0, 0, 0, 127),
(128, 'IUCM961001PJ7', '46159671083', 0, 0, 0, 128),
(129, 'ROAY971126T34', '33169775179', 0, 0, 0, 129),
(130, 'BECARIO', '', 0, 0, 0, 130),
(131, 'BAIJ980622B15', '17149896874', 0, 0, 0, 131),
(132, 'REHA971206QA0', '04169716497', 0, 0, 0, 132),
(133, 'AAVB861228MM9', '28108601312', 0, 0, 0, 133),
(134, 'BECARIO', '2150038350', 0, 0, 0, 134),
(135, 'GAHI960110PA2', '96119671616', 0, 0, 0, 135),
(136, 'DOZD9404073B8', '66169429074', 0, 0, 0, 136),
(138, 'prueba', 'prueba', 3, 4, 5, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(4) NOT NULL,
  `departamento` varchar(20) DEFAULT NULL,
  `puesto` varchar(30) DEFAULT NULL,
  `sueldo_semanal` float DEFAULT NULL,
  `sueldo_mensual` float DEFAULT NULL,
  `id_empleado` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `departamento`, `puesto`, `sueldo_semanal`, `sueldo_mensual`, `id_empleado`) VALUES
(1, 'ADMINISTRACION', 'ALMACENISTA', 0, 0, 1),
(2, 'ADMINISTRACION ', 'AUXILIAR ADMINISTRATIVO ', 0, 0, 2),
(3, 'ADMINISTRACION', 'JEFATURA DE ADMINISTRACI?N NAV', 0, 0, 3),
(4, 'ADMINISTRACION', 'AYUDANTE GENERAL BETA', 0, 0, 4),
(5, 'ADIMINISTRACION', 'BECARIO ADMINISTRATIVO', 0, 0, 5),
(6, 'ADMINISTRACION ', 'AUXILIAR ADMINISTRATIVO', 0, 0, 6),
(7, 'ADMINISTRACION ', 'AUXILIAR ADMINISTRATIVO', 1750, 7000, 7),
(8, 'ADMINISTRACION', 'AUXILIAR ADMINISTRATIVO', 1750, 7000, 8),
(9, 'ADMINISTRACION', 'JEFATURA DE ADMINISTRACION', 0, 0, 9),
(10, 'ADMINISTRACION', 'JEFATURA DE ADMINISTRACION HAB', 0, 0, 10),
(11, 'ADMINISTRACION', 'AUXILIAR DE COMPRAS ', 1750, 7000, 11),
(12, 'ADMINISTRACION', 'AUXILIAR DE COMPRAS', 1750, 7000, 12),
(13, 'ADMINISTRACION', 'AUXILIAR ADMINISTRATIVO', 1750, 7000, 13),
(14, 'ADMINISTRACION ', 'AYUDANTE DE MANTENIMIENTO', 1600, 6400, 14),
(15, 'ADMINISTRACION', 'AUXILIAR DE COMPRAS', 0, 0, 15),
(16, 'ADMINISTRACION', 'AUXILIAR DE ALMACEN ', 0, 0, 16),
(17, 'ADMINISTRACION', 'AYUDANTE GENERAL BANCO', 0, 0, 17),
(18, 'ADMINISTRACION', 'AUXILIAR ADMINSITRATIVO HABITT', 0, 0, 18),
(19, 'ADMINISTRACION', 'AYUDANTE GENERAL SANTA ROSA', 0, 0, 19),
(20, 'ADMINISTRACION ', 'AUXILIAR ADMINISTRATIVO', 500, 2000, 20),
(21, 'ADMINISTRACION ', 'VIGILANTE', 0, 0, 21),
(22, 'ADMINISTRACION', 'COORDINADOR DE COMPRAS', 0, 0, 22),
(23, 'ADMINISTRACION', 'AUXILIAR ADMINISTRATIVO', 0, 0, 23),
(24, 'ADMINISTRACION', 'COORDINADOR DE PARQUES', 0, 0, 24),
(25, 'ADMINISTRACION', 'GERENTE DE ADMINISTRACI?N', 0, 0, 25),
(26, 'ADMINISTRACION', 'VELADOR', 2500, 10000, 26),
(27, 'ADMINISTRACION', 'ENCARGADO DE ALMACEN', 0, 0, 27),
(28, 'ADMINISTRACION ', 'AUXILIAR ADMINISTRACION ', 1750, 7000, 28),
(29, 'ADMINISTRACION', 'AUXILIAR ADMINISTRATIVO HABITT', 0, 0, 29),
(30, 'ADMINISTRACION', 'AUXILIAR ADMINISTRATIVO', 1750, 7000, 30),
(31, 'COMERCIALIZACION', 'SALES DEVELOPER CDMX', 0, 0, 31),
(32, 'COMERCIALIZACION', 'RECEPCIONISTA', 1500, 6000, 32),
(33, 'COMERCIALIZACION', 'AUXILIAR CONTROL Y MEDICION', 0, 0, 33),
(34, 'COMERCIALIZACION', 'AUXILIAR DE DISE?O', 1750, 7000, 34),
(35, 'COMERCIALIZACION', 'GERENTE DE MARKETING', 0, 0, 35),
(36, 'COMERCIALIZACION', 'AUXILIAR DE LIMPIEZA', 0, 0, 36),
(37, 'COMERCIALIZACION', 'LIDER DE CUSTOMER SERVICE', 0, 0, 37),
(38, 'COMERCIALIZACION', 'DIRECTOR COMERCIAL', 0, 0, 38),
(39, 'COMERCIALIZACION', 'AUXILIAR CONTROL Y MEDICION', 0, 0, 39),
(40, 'COMERCIALIZACION', 'AUXILIAR DE MARKETING', 0, 0, 40),
(41, 'COMERCIALIZACION', 'SALES DEVELOPER QRO', 0, 0, 41),
(42, 'COMERCIALIZACION', 'AUXILIAR DE TELEMARKETING ', 0, 0, 42),
(43, 'COMERCIALIZACION', 'LIDER DE CONTROL Y MEDICION', 0, 0, 43),
(44, 'COMERCIALIZACION', 'AUXILIAR DE DISE?O', 0, 0, 44),
(45, 'COMERCIALIZACION', 'AUXILIAR DE MARKETING', 0, 0, 45),
(46, 'COMERCIALIZACION', 'BRANDING', 0, 0, 46),
(47, 'COMERCIALIZACION', 'AUXILIAR CONTROL Y MEDICION', 0, 0, 47),
(48, 'COMERCIALIZACION', 'RECEPCIONISTA CDMX', 0, 0, 48),
(49, 'SISTEMAS', 'AUXILIAR DE SISTEMAS ', 1000, 4000, 49),
(50, 'CONTROLLER', 'AUXILIAR ADMINISTRATIVO CONTAB', 0, 0, 50),
(51, 'CONTROLLER', 'DIRECTOR OPERATIVO', 0, 0, 51),
(52, 'DESARROLLO Y CONS.', 'SUPERVISOR DE OBRA', 0, 0, 52),
(53, 'DESARROLLO Y CONS.', 'SUPERVISOR MOVIMIENTO DE TIERR', 0, 0, 53),
(54, 'DESARROLLO Y CONS.', 'AUXILIAR DE PRECIOS UNITARIOS', 0, 0, 54),
(55, 'DESARROLLO Y CONS.', 'AYUDANTE DE TERRACERIAS', 0, 0, 55),
(56, 'DESARROLLO Y CONS.', 'AYUDANTE DE TERRACERIAS', 0, 0, 56),
(57, 'DESARROLLO Y CONS.', 'AYUDANTE GENERAL', 0, 0, 57),
(58, 'DESARROLLO Y CONS.', 'SUPERVISOR DE OBRA', 0, 0, 58),
(59, 'DESARROLLO Y CONS.', 'TOPOGRAFO', 0, 0, 59),
(60, 'DESARROLLO Y CONS.', 'JEFE DE DESARROLLO', 0, 0, 60),
(61, 'DESARROLLO Y CONS.', 'AYUDANTE GENERAL MANTENIMIENTI', 0, 0, 61),
(62, 'DESARROLLO Y CONS.', 'AYUDANTE GENERAL', 0, 0, 62),
(63, 'DESARROLLO Y CONS.', 'AYUDANTE DE TERRACERIAS ', 0, 0, 63),
(64, 'DESARROLLO Y CONS.', 'SUPERVISOR DE OBRA', 0, 0, 64),
(65, 'DESARROLLO Y CONS.', 'JEFATURA CONTROL OBRA Y PRESUP', 0, 0, 65),
(66, 'DESARROLLO Y CONS.', 'AUXILIAR DE ANALISTA DE PRECIO', 0, 0, 66),
(67, 'DIRECCI?N', 'DIRECCION', 0, 0, 67),
(68, 'DIRECCI?N', 'DIRECCION', 0, 0, 68),
(69, 'DIRECCI?N', 'DIRECTOR GENERAL', 0, 0, 69),
(70, 'JURIDICO', 'GERENTE JURIDICO', 0, 0, 70),
(71, 'JURIDICO', 'AUXILIAR ADMINISTRATIVO JURIDI', 1500, 6000, 71),
(72, 'JURIDICO', 'ASISTENTE JURIDICO', 1000, 4000, 72),
(73, 'JURIDICO', 'AUXILIAR JURIDICO ', 0, 0, 73),
(74, 'JURIDICO', 'ABOGADO JR', 1750, 7000, 74),
(75, 'JURIDICO', 'JEFATURA DE GESTION', 0, 0, 75),
(76, 'JURIDICO', 'AUXILIAR GESTORIA ', 0, 0, 76),
(77, 'JURIDICO', 'JEFATURA DE TITULACION ', 1000, 4000, 77),
(78, 'JURIDICO', 'AUXILIAR JURIDICO ', 0, 0, 78),
(79, 'JURIDICO', 'AUXILIAR JURIDICO ', 0, 0, 79),
(80, 'JURIDICO', 'AUXILIAR JURIDICO ', 0, 0, 80),
(81, 'JURIDICO', 'AUXILIAR JURDICO', 0, 0, 81),
(82, 'NUEVOS NEGOCIOS', 'GERENTE DE NUEVOS NEGOCIOS Y R', 0, 0, 82),
(83, 'PROYECTOS', 'GERENTE DE PROYECTOS', 0, 0, 83),
(84, 'PROYECTOS', 'AUXILIAR DE PROYECTOS', 2000, 8000, 84),
(85, 'PROYECTOS', 'AUXILIAR DE PROYECTOS SENIOR ', 0, 0, 85),
(86, 'PROYECTOS', 'JEFE DE PROYECTOS', 0, 0, 86),
(87, 'PROYECTOS', 'AUXILIAR DE PROYECTOS', 0, 0, 87),
(88, 'RECURSOS HUMANOS', 'JEFATURA RECURSOS HUMANOS', 0, 0, 88),
(89, 'RECURSOS HUMANOS', 'RECEPCIONISTA ', 0, 0, 89),
(90, 'RECURSOS HUMANOS', 'RECLUTADOR', 1750, 7000, 90),
(91, 'RECURSOS HUMANOS', 'AUXILIAR DE RECURSOS HUMANOS', 0, 0, 91),
(92, 'RECURSOS HUMANOS', 'AUXILIAR DE RECURSOS HUMANOS ', 1600, 6400, 92),
(93, 'RECURSOS HUMANOS', 'AUXILIAR DE LIMPIEZA', 0, 0, 93),
(94, 'RENTAS', 'OPERADOR', 0, 0, 94),
(95, 'RENTAS', 'ASISTENTE DE GERENCIA RENTAS', 0, 0, 95),
(96, 'RENTAS', 'BECARIA ADMINISTRACION', 0, 0, 96),
(97, 'RENTAS', 'COORDINADOR DE MANTENIMIENTO', 0, 0, 97),
(98, 'RESTAS', 'OPERADOR DE RETROEXCAVADORA', 1600, 6400, 98),
(99, 'RENTAS', 'COORDINADOR DE OPERACIONES', 0, 0, 99),
(100, 'RENTAS', 'COORDINADOR DE VENTAS', 1700, 6800, 100),
(101, 'RENTAS', 'EJECUTIVA DE ATENCION AL CLIEN', 1500, 6000, 101),
(102, 'RENTAS', 'GERENTE DE RENTAS', 0, 0, 102),
(103, 'RENTAS', 'OPERADOR DE GRUA', 0, 0, 103),
(104, 'RENTAS', 'AYUDANTE DE CONTROL ', 1600, 6400, 104),
(105, 'RENTAS', 'MECANICO GASOLINA', 0, 0, 105),
(106, 'RENTAS', 'AYUDANTE GENERAL ', 0, 0, 106),
(107, 'RENTAS', 'AUXILIAR ADMINISTRATIVO', 0, 0, 107),
(108, 'RENTAS', 'OPERADOR DE TITAN', 0, 0, 108),
(109, 'RENTAS', 'OPERADOR DE TITAN', 0, 0, 109),
(110, 'RENTAS ', 'ASISTENTE ', 0, 0, 110),
(111, 'RENATS ', 'AYUDANTE DE MECANICO ', 0, 0, 111),
(112, 'RENTAS ', 'AYUDANTE DE MECANICO ', 0, 0, 112),
(113, 'RENTAS', 'OPERADOR DE GRUAS', 1600, 6400, 113),
(114, 'RENTAS', 'OPERADOR DE GRUA ARTICULADA', 0, 0, 114),
(115, 'RENTAS', 'AUXILIAR ADMINISTRATIVO', 0, 0, 115),
(116, 'RENTAS', 'BECARIA ADMINISTRATIVO', 0, 0, 116),
(117, 'RENTAS', 'EJECUTIVA DE RENTAS', 0, 0, 117),
(118, 'RENTAS', 'JEFATURA DE RENTAS JR', 0, 0, 118),
(119, 'RENTAS', 'AUXILAIR ADMINISTRATIVO ', 0, 0, 119),
(120, 'RENTAS', 'OPERADOR DE TITAN', 0, 0, 120),
(121, 'RENTAS', 'OPERADOR RETROEXCAVADORA', 0, 0, 121),
(122, 'RENTAS', 'EJECUTIVO DE RENTAS', 0, 0, 122),
(123, 'RENTAS', 'OPERADOR DE RETROEXCAVADORA', 0, 0, 123),
(124, 'RENTAS ', 'OPERADOR DE GRUA ', 0, 0, 124),
(125, 'RENTAS', 'SUPERVISOR DE GRUAS', 0, 0, 125),
(126, 'RENTAS', 'OPERADOR RETROEXCAVADORA', 0, 0, 126),
(127, 'RENTAS', 'AUXILIAR DE CONTROL ', 1500, 6000, 127),
(128, 'RENTAS', 'OPERADOR  DE GRUA JR', 2200, 8800, 128),
(129, 'SISTEMAS', 'AUXILIAR DE SISTEMAS', 1500, 6000, 129),
(130, 'SISTEMAS', 'AUXILIAR DE SISTEMAS ', 0, 0, 130),
(131, 'SISTEMAS', 'AUXILIAR DE SISTEMAS', 0, 0, 131),
(132, 'SISTEMAS', 'AUXILIAR DE SISTEMAS', 1750, 7000, 132),
(133, 'SISTEMAS', 'GERENTE DE SISTEMAS', 3000, 12000, 133),
(134, 'SISTEMAS', 'BECARIO DE SISTEMAS', 0, 0, 134),
(135, 'actualizado', 'actualizado', 1, 1, 135),
(138, 'Auxiliar administrat', 'Auxiliar de compras', 20, 5, 1),
(139, 'depa', 'puesto', 20, 5, 1),
(140, 'depa', 'puesto', 20, 5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(4) NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `ap_paterno` varchar(30) DEFAULT NULL,
  `ap_materno` varchar(30) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `edad` int(2) DEFAULT NULL,
  `nacionalidad` varchar(15) DEFAULT NULL,
  `originario` varchar(15) DEFAULT NULL,
  `sexo` enum('Femenino','Masculino','Prefiero no decir','') DEFAULT NULL,
  `celular` int(10) DEFAULT NULL,
  `correo` varchar(20) DEFAULT NULL,
  `domicilio` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `nombre`, `ap_paterno`, `ap_materno`, `fecha_nac`, `edad`, `nacionalidad`, `originario`, `sexo`, `celular`, `correo`, `domicilio`) VALUES
(1, 'ALEJANDRO', 'VELAZQUEZ', 'LUNA', '1997-11-18', 25, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'skaerrmudos@gmail.co', 'Priv. Gardenias s/n Loc. Jurica Pueblo C.P 76100 Santa Rosa '),
(2, 'ALEJANDRO', 'GONZALEZ', 'GAYTAN', '2000-04-14', 23, 'MEXICANA', 'DISTRITO FEDERA', 'Masculino', 2147483647, 'alexgonz881@gmail.co', 'COND FOGGIA TRES CANTOS FRACC. CP. 76117, SONTERRA, QUERETAR'),
(3, 'ANAHI', 'RAMIREZ ', 'HERNANDEZ', '1992-06-02', 31, 'MEXICANA', 'CDMX', 'Femenino', 2147483647, 'ramirezh_ana02@hotma', 'Puertas del Encino 112 Ext. 181 int. 36 Puertas de San Migue'),
(4, 'ARTURO', 'HERNANDEZ ', 'MORENO', '1980-11-18', 42, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'N/A', 'Av del Ferrocarril ote 47-b colonia la Ca?ada , C.P 76240, E'),
(5, 'CRISTOPHER ELEAZAR', 'GUZMAN ', 'MORA', '0000-00-00', 0, 'MEXICANA', '', 'Masculino', 0, '', ''),
(6, 'CAROLINA', ' DE LA ROSA ', 'GARCIA', '1999-11-23', 23, 'MEXICANA', 'SAN LUIS POTOSI', 'Femenino', 2147483647, 'carolinadlrg78@gmail', 'AV MARQUES DE MONTEMAYOR 602-1, REAL DEL MARQUES RESIDENCIAL'),
(7, 'DANIELA', 'SANCHEZ  ', 'APAES', '1999-03-10', 24, 'MEXICANA', 'MORELOS', 'Femenino', 2147483647, 'danieladsa10@gmail.c', 'PUERTA DEL ENCINO PASEOS DE SAN MIGUEL 4 C.P. 76118 SUBURBAN'),
(8, 'EDUARDO JESUS', 'CASTILLO ', 'MARQUEZ', '1989-06-21', 34, 'MEXICANA', 'CDMX', 'Masculino', 2147483647, 'eom161@gmail.com', 'AVENIDA PIE DE LA CUESTA 1205 A 43, FRACC. TAMAYO Y TLALOC Q'),
(9, 'ERICK ADRIAN', ' PINEDA ', 'CARRILLO', '1985-12-16', 37, 'MEXICANA', 'CDMX', 'Masculino', 2147483647, 'erikoos360@gmail.com', 'Condomio Turquesa 19, , Fraccionamiento EsmeraldaC.P. 76906,'),
(10, 'FRANCELIA', 'ATANACIO ', 'RIOS', '1993-04-11', 30, 'MEXICANA', 'GUERRERO', 'Femenino', 2147483647, 'francelia_atanacio@h', 'C PUERTA DEL ENCINO 181, COLONIA PASEOS DE SAN MIGUEL 76118,'),
(11, 'ISAAC BERNABE', 'AGUILAR  ', 'RIVERA', '1997-11-21', 25, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'isaac.121@life.com', 'SANTIAGO ATENAS 324, COL. VILLAS DE SANTIAGO, CP. 76148, QUE'),
(12, 'JHONY', 'PACHECO ', 'GARCIA', '1999-05-25', 24, 'MEXICANA', 'GUERRERO', 'Masculino', 2147483647, 'jhony2584@gmail.com', 'ERNESTO CHE GUEVARA 33, COL. LOMAS DE SAN PEDRITO, CP. 76148'),
(13, 'JIOVANNY ALEXIS', ' CEBALLOS ', 'MENDOZA', '2000-02-17', 23, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'jiovaalex@gmail.com', 'FRAY MARTIN CORUNA 281 24 COL VALLE DE SANTIAGO II CIUDAD DE'),
(14, 'JOSE IRVIN', 'SUAREZ ', 'BECERRA', '1999-07-28', 24, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'joseirvingsuarez@gma', 'ZARAGOZA CASA BLANCA C.P. 76228 CASA BLANCA, QRO, QRO. '),
(15, 'JOSE ALFREDO', 'MEDELLIN', 'CASTILLO', '1998-11-23', 24, 'MEXICANA', 'TAMAULIPAS', 'Masculino', 2147483647, 'medellin-castillo@ho', 'Av Euripides no 10054, Col. San Pedrito Pe?uelas, Queretaro,'),
(16, 'JAVIER ALEJANDRO', 'ARRIETA', 'RODRIGUEZ', '1993-07-14', 30, 'MEXICANA', 'QUERETARO', 'Masculino', 0, '', 'HACIENDA CULEBRILLAS 741 HACIENDA DEL MILAGRO SANTA ROSA C.P'),
(17, 'JOSUE', 'RAMIREZ', 'OLVERA', '2003-05-27', 20, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'N/A', 'TEOTIHUACAN 205, EL SALITRE, CP 76223, QUERETARO, QUERETARO'),
(18, 'JUAN DANIEL ', 'MALDONADO', 'MORENO', '1991-01-05', 32, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'huevodaniel@hotmail.', 'AND. COLINAS ED III, N D101, COLONIA EL MIRADOR, CP 76134, S'),
(19, 'JUAN FRANCISCO', 'RAMIREZ ', 'NU?EZ', '2001-12-05', 21, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'jno80183@gmail.com', 'Ignacio Zaragoza s/n, Col. Centro, Queretaro, Qro.'),
(20, 'LETICIA', 'ESQUIVEL', 'RUFINO', '2000-04-26', 23, 'MEXICANA', 'HIDALGO', 'Femenino', 2147483647, 'letty.steel@gmail.co', 'CALLE LOS SABINOS S/N BARRIO DEL CARMEN Y SAN JOSE DE ATLAN,'),
(21, 'LUCAS', 'LOPEZ', 'SALAS', '1993-08-03', 30, 'MEXICANA', 'CHIAPAS', 'Masculino', 0, 'N/A', 'CALLE RENO SN, COL. MANSION DEL CIERVO 76655, EZEQUIEL MONTE'),
(22, 'MARIA DEL SOL ELOISA ', 'BARRERA', 'RAIGOSA', '1974-07-19', 49, 'MEXICANA', 'CDMX', 'Femenino', 2147483647, 'marisol_barrera@hotm', 'Porvenir 129-32 , Colonia los Faroles C.P 76158 queretaro, Q'),
(23, 'MARIA MONSERRATH', 'MENDOZA ', 'AVILA', '1999-09-10', 24, 'MEXICANA', 'QUERETARO', 'Femenino', 2147483647, 'monsemendoza15035@gm', 'GUANAJUATO 4 COLONIA EL PEDREGAL C.P. 76220 SANTA ROSA JAURE'),
(24, 'MARTIN', 'RODRIGUEZ', 'ESCOBAR', '1988-11-03', 35, 'MEXICANA', 'CDMX', 'Masculino', 2147483647, 'm.rodriguez.e@hotmai', 'C Balcon de San Juan, Manzana , Colonia Balcones de San Pabl'),
(25, 'MAURICIO', 'ROJANO', 'MATA', '1987-06-14', 36, 'MEXICANA', 'CDMX', 'Masculino', 2147483647, 'mauricio.negrojano@g', 'choles # 308 int. 29, col. Cerrito colorado II c.p 76116, sa'),
(26, 'OSCAR RAMON', 'LOPEZ', 'MARIN', '1988-07-31', 35, 'MEXICANA', 'OAXACA', 'Masculino', 0, 'N/A', 'LOMA GRANDE MZ.17 LT.21-B, LOMAS DE IXTAPALUCA, ESTADO DE ME'),
(27, 'ROBERTO', 'GARCIA', 'MAGDALENO', '1989-01-06', 34, 'MEXICANA', 'CDMX', 'Masculino', 2147483647, 'roberto_p_a@hotmail.', 'Jazmin,# 117,Fraccionamiento Insurgentes, Queretaro.'),
(28, 'SABINA GUADALUPE', 'RUBIO', 'BALDERAS', '2000-01-06', 23, 'MEXICANA', 'QUERETARO', 'Femenino', 2147483647, 'srubiobalderas@gmail', 'SAN MIGUEL SN, LOCALIDAD SAN MIGUEL 76220, SAN MIGUELITO QUE'),
(29, 'YADIRA', 'JIMENEZ', 'CERVANTES', '1997-06-26', 26, 'MEXICANA', 'VERACRUZ', 'Femenino', 2147483647, 'jimenezcervantesyadi', 'Cordillera san Jose #103, Col Fray junipero serra, C.P 76147'),
(30, 'YESENIA', 'RODRIGUEZ', 'RAMIREZ', '2000-08-14', 23, 'MEXICANA', 'QUERETARO', 'Femenino', 2147483647, 'yesenia.rodriguez.ce', 'IGNACIO PEREZ S/N, LOCALIDAD LA MONJA, QUERETARO,QRO.'),
(31, 'ALEJANDRA ANGELICA', 'GOMEZ ', 'FIGEROA', '1994-01-05', 29, 'MEXICANA', 'ESTADO DE MEXIC', 'Femenino', 2147483647, 'aleangy_gomezfig@out', 'GADIOLAS #17, COL CASAS REALES, CP 55066, EXATEPEC DE MORELO'),
(32, 'DULCE IVETTE ', 'MENDOZA ', 'ANZORENA', '1997-11-17', 25, 'MEXICANA', 'QUERETARO', 'Femenino', 2147483647, 'dulceanzorena@gmail.', 'GUANAJUATO SN, COMUNIDAD SAN ISIDRO MIRANDA, CP. 76209, EL M'),
(33, 'EMMANUEL', 'GARCIA', 'ROMAN', '1998-11-01', 25, 'MEXICANA', 'VERACRUZ', 'Masculino', 2147483647, 'emmanuelgarciaroman@', 'Tecnologico No.7 Col. Balcon Campestre; Queretaro, Qro.'),
(34, 'ISABELA', 'TELLEZ ', 'OLVERA', '1999-11-16', 23, 'MEXICANA', 'GEORGIA', 'Femenino', 2147483647, 'isabelaaa1611@gmail.', 'PUNTA DIAMANTE 978, FRACCIONAMIENTO PUNTA SAN CARLOS, SANTIA'),
(35, 'FERNANDO BENJAMIN', 'CUACUAS', 'RAMIREZ', '1993-07-11', 30, 'MEXICANA', 'CDMX', 'Masculino', 2147483647, 'fer.cuacuas@outlook.', 'Palma paraiso 113col. Villas palmira C.P 76146 Queretaro, Qr'),
(36, 'IVETH', 'MARTINEZ', 'VARGAS', '1992-04-30', 31, 'MEXICANA', 'VERACRUZ', 'Femenino', 2147483647, 'ivethmartinezvargas6', 'UNION 25, COL EL CERRITO, CP 76168, QUERETARO, QRO.'),
(37, 'KATIA DENNIS', 'AGUILAR  ', 'FLORES', '1989-02-26', 34, 'MEXICANA', 'CIUDAD DE MEXIC', 'Femenino', 2147483647, 'floreskatia325@gmail', 'CTO PETEN 54 LOOS ENCINOS EL MARQUES, QRO. 76243-CR76061'),
(38, 'JUAN CARLOS', 'ROMO', 'GARCIA', '1991-05-23', 32, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'jcromo@grupoccima.co', 'plaza san juan de los lagos # 124 , col. Plazas del sol, c.p'),
(39, 'JULIO', 'XACO', 'ROMERO', '1999-07-01', 24, 'MEXICANA', 'VERACRUZ', 'Masculino', 2147483647, 'julioige300421@gmail', 'CALLE ANAHUAC NO.44, COL. LOMAS DEL VALLE, 2DA SECCION QUERE'),
(40, 'KARINA FERNANDA ', 'BRAVO', 'ASCENCIO', '1999-09-03', 24, 'MEXICANA', 'ESTADO DE MEXIC', 'Femenino', 2147483647, 'kbravoascencio@gmail', 'CTO PUNTA NORTE 140, COL. PUNTA JURIQUILLA, CP 76230, QUERET'),
(41, 'LIU YESENIA ', 'VELAZQUEZ', 'RICARDEZ', '1986-08-22', 37, 'MEXICANA', 'OAXACA', 'Femenino', 2147483647, 'lic.liuyesenia@gmail', 'Calle la Era 16 Ampl Nuva pinto Col. El pinto C.P 76223 Quer'),
(42, 'MARIA DEL CARMEN', 'REYES', 'SOLANO', '1998-02-27', 25, 'MEXICANA', 'DISTRITO FEDERA', 'Femenino', 2147483647, 'marie-777@hotmail.co', 'CALLE OSA MAYO UN, 104 COLONIA LAL LUNA CP. 76113 QUERETARO '),
(43, 'MARISOL', 'GUERRERO', 'ZEA', '1996-02-13', 27, 'MEXICANA', 'QUERETARO', 'Femenino', 2147483647, 'sol_guerrero_@hotmai', 'calle 4 308 col el paraiso cp 76118 Queretaro, Qro.'),
(44, 'OMAR JAIR ', 'CUELLAR', 'LOZADA', '1999-08-18', 24, 'MEXICANA', 'CDMX', 'Masculino', 2147483647, 'ojcuellarlozada@gmai', 'SIERRA DE LAS CRUCES PTE PRIV 11, INT 15, FRACC. HACIENDA LA'),
(45, 'PAOLA PATRICIA', 'GONZALEZ', 'VAZQUEZ', '2000-03-10', 23, 'MEXICANA', 'GUANAJUATO', 'Femenino', 2147483647, 'pao_glz_@hotmail.com', 'FRAY BARTOLOME DE OLMEDO 146, COL. QUINTAS DEL MARQUES, CP76'),
(46, 'RICARDO ALAN ', 'GONZALEZ', 'MONTES DE OCA', '1988-10-21', 35, 'MEXICANA', 'CDMX', 'Masculino', 2147483647, 'alangmo004@gmail.com', 'CIERVO 12 INTERIOR 9, LA PRADERA. EL M?RQUEZ.'),
(47, 'SAUL', 'MORALES', 'ENRIQUEZ', '1999-09-30', 24, 'MEXICANA', 'DURANGO', 'Masculino', 2147483647, 'vbmsezs@gmail.com', 'AV. VALLE DEL SOL 155 INT. 24-B, CP 76160, SANTIAGO DE QUERE'),
(48, 'SILVIA LUCRECIA ', 'HERNANDEZ ', 'RAMIREZ', '1989-11-05', 34, 'MEXICANA', 'DISTRITO FEDERA', 'Femenino', 2147483647, 'slhramirez@outlook.c', 'VOLC?N TLAJOMULCO MZ. B6 LT 1 COL. AMPLIACION PROVIDENCIA C.'),
(49, 'YULISA MONTSERRATT', 'MORALES', 'TEJADA', '1996-09-22', 27, 'MEXICANA', 'GUERRERO', 'Femenino', 2147483647, 'tejadamontserratt@gm', 'CONDOMINIO CERRO DE LA CRUZ, COLINAS DE LA PIEDAD C.P. 76246'),
(50, 'LEONARDO DANIEL', 'VALERO ', 'GONZALEZ', '1997-04-29', 26, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'leandro_valgon@outlo', 'CALZADA DE BELEN 548-B-7, COL. LOMAS DE SAN PEDRITO, CP 7614'),
(51, 'MARIO ', 'ISLAS ', 'LIRA', '1983-09-12', 40, 'MEXICANA', 'HIDALGO', 'Masculino', 2147483647, 'mario.islas.lira83@g', 'AV. Residencial de Parque 1090 73 , Av. Mirador Constituyent'),
(52, 'ALBERTO', 'RANGEL', 'RUIZ', '1993-12-31', 29, 'MEXICANA', 'TAMAULIPAS', 'Masculino', 2147483647, 'alberto.ranru@gmail.', 'Puebla no 54 Col. Obrera .CP 76130 Queretaro, Qro'),
(53, 'ANGEL BALDOMERO', 'MENDEZ', 'MORALES', '1974-10-02', 49, 'MEXICANA', 'CDMX', 'Masculino', 2147483647, 'angel.aguaneza@gmail', 'Av. Hda Los Azadones 42 20, Cond Hda Canada, Los Heroes Quer'),
(54, 'DANIELA FERNANDA', 'ESTRELLA', 'ROSALES', '1999-08-27', 24, 'MEXICANA', 'SAN LUIS POTOSI', 'Femenino', 2147483647, 'estrella.270899@gmai', 'AV DE LA CANTERA 2832 445 CALLE 7 CIUDAD DEL SOL RESIDENCIA '),
(55, 'ANGEL DE JESUS', 'VALLE', 'NAVA', '2002-12-23', 20, 'MEXICANA', 'GUERRERO', 'Masculino', 2147483647, 'Navabenitez@gmail.co', 'VILLAS DE LA ESTANCIA, COL. DE LAS PLAZAS, PRIVADA 112, CASA'),
(56, 'JOSE FIDEL', 'LICEA', 'NIEVES', '1979-09-27', 44, 'MEXICANA', 'QUERETARO', 'Masculino', 0, '', 'MARIANO ESCOBEDO SN LOCALIDAD TLACOTE EL BAJO 76229, TLACOTE'),
(57, 'EDMUNDO', 'SANCHEZ  ', 'CABRERA', '2000-05-20', 23, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'Sanchezedmun@gmail.c', 'LAURELES SN, LOCALIDAD TIERRA BLANCA, CP 76250, EL MARQUES, '),
(58, 'GERARDO', 'UGALDE', 'FEREGRINO', '1998-03-12', 25, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'gerardugal100@gmail.', 'Hda. San Juanico 55 Residencial Haciendas C.P 76795 Tequisqu'),
(59, 'JONATHAN', 'LARA', 'CADENA', '1994-03-18', 29, 'MEXICANA', 'VERACRUZ', 'Masculino', 2147483647, 'jonathan_lara10@hotm', 'DE ECALA NO.45,FRAC.VILLAS DE LA CARAMBADA , QUERETARO,QRO.'),
(60, 'JORGE ALBERTO', 'HUERTA', '  HERNANDEZ', '1994-10-14', 29, 'MEXICANA', 'TAMAULIPAS', 'Masculino', 2147483647, 'ing.jorgehuertahdz@g', 'Puebla no 54 Col. Obrera .CP 76130 Queretaro, Qro'),
(61, 'JORGE ', 'VAZQUEZ', ' PEREZ', '1988-09-14', 35, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'N/A', 'Calle el Rosal S/N loc. el gallo , C.P 76290 Colon  Queretar'),
(62, 'JOSE  ', 'GARCIA', 'GARCIA', '1955-08-24', 68, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'N/A', 'Mezquite #450 int 3, Col Hacienda Santa Rosa, Queretaro, que'),
(63, 'TONY JOSELIN ', 'SOLER', ' AGUILAR ', '1987-05-14', 36, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'NA', 'AV PASEO DE LA ESTANCIA 1009 - G 5 VILLAS DE LA ESTANCIA APA'),
(64, 'LUIS MARIO  ', 'RODRIGUEZ', 'VEGA', '1996-08-25', 27, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'luismariov20@gmail.c', 'B. Dominguez s/n Col. San Jose Los trejo C.P 76675 Ezequiel '),
(65, 'ROSA KARINA ', 'RAMIREZ', ' PATLAN', '1996-02-29', 27, 'MEXICANA', 'GUANAJUATO', 'Femenino', 2147483647, 'rramirezpatlan@gmail', 'FUNDADORES LOS C.P. 76117, QUERETARO,QRO.'),
(66, 'VICTOR ALFONSO  ', 'PLATA', 'LUGO', '1997-12-22', 25, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'victor_plata97@hotma', 'CALLE DE LA MESA #221 MZ 31 LT 24 COL. VILLAS DEL MESON, QUE'),
(67, 'MARIA DE LOURDES  ', 'MALDONADO', 'MALDONADO', '1978-01-10', 45, 'MEXICANA', 'CDMX', 'Femenino', 0, '__', '__'),
(68, 'RICARDO  ', 'MEDINA', 'MALDONADO', '2000-05-10', 23, 'MEXICANA', 'QUERETARO', 'Masculino', 0, '', ''),
(69, 'RICARDO  ', 'MEDINA', 'ROJAS', '1974-08-07', 49, 'MEXICANA', '', 'Masculino', 0, '', ''),
(70, 'ABEL ALEJANDRO  SANCHEZ', 'CARRANZA', 'SANCHEZ', '1986-07-30', 37, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'alecscarr@icloud.com', 'Reforma Agraria 86 Col. Casa Blanca C.P 76030 Queretaro, Qro'),
(71, 'ALBERTO  ', 'PLANCARTE', 'VAZQUEZ', '1999-07-27', 24, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'plancartevazquezalbe', 'SOLON 35 AVENIDA PIE DE LA CUESTA ECOLOGICA QUERETARO 76148,'),
(72, 'BRENDA PAOLA   ', 'RIVERA', 'VELAZQUEZ', '1999-08-27', 24, 'MEXICANA', 'QUERETARO', 'Femenino', 2147483647, 'brendanverapaola@gma', 'C GIRASOL LTE 5 COL LAS FLORES 76220 QUERETARO, QRO '),
(73, 'CRUZ DANIEL  ', 'GARCIA', 'MARTIENEZ', '1995-09-09', 28, 'MEXICANA', 'HIDALGO', 'Masculino', 2147483647, 'cdlcram@gmail.com', 'CIRCUITO COLINAS DEL MARQUES, CONDOMINIO ACASIA COLINAS DE L'),
(74, 'CESAR ALONSO  ', 'HERRERA', 'BARRERA', '1996-07-10', 27, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'cesarherrebarre@gmai', 'SIERRA ZIMAPAN #213, COLONIA VILLAS DEL SOL. QUERETARO.'),
(75, 'KARLA DANIELA  ', 'RAMIREZ', 'CRUZ', '1996-06-03', 27, 'MEXICANA', 'QUERETARO', 'Femenino', 2147483647, 'karla.ramirez9603@gm', 'CALLE VALLE DEL BOSQUE #21, COL. LOMAS DEL VALLE, CP 76080, '),
(76, 'IVAN ALEXIS  ', 'LAGUNAS', 'MARTINEZ', '2000-01-14', 23, 'MEXICANA', 'MORELOS', 'Masculino', 2147483647, 'lagunasivan.mt14@gma', 'PROLONGACION DE BERNARDO QUINTANA 4031 COL LA LOMA CP 76116'),
(77, 'MARIA AMPARO  ', 'RAMIREZ', 'MENDEZ', '1998-06-20', 25, 'MEXICANA', 'GUANAJUATO', 'Femenino', 2147483647, 'ramirezperezmariaamp', 'CALLE SIN NOMBRE, MZA 12, LOTE 6, COL. RICARDO FLORES MAGON,'),
(78, 'MARIA LAURA  ', 'GONZALEZ', 'RAMOS', '1997-09-10', 26, 'MEXICANA', 'QUERETARO', 'Femenino', 2147483647, 'nllgr071023@gmail.co', 'C.ROSA DE CASTILLA S/N LOC. LADERAS DEL SALITRE 76223 QUERET'),
(79, 'PATRICIO ISRAEL  ', 'TREJO', 'ORTIZ', '2000-07-27', 23, 'MEXICANA', 'GUANAJUATO', 'Masculino', 2147483647, 'trejopatricio91@gmai', 'JIMENEZ 25 COL. LINDA VISTA C.P. 76168 QRO. '),
(80, 'VICTOR EDUARDO  ', 'HERNANDEZ', 'MEDINA', '1995-12-23', 27, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'vic.lalo.med@gmail.c', 'AVENIDA ALFONSO REYES 207 COLONIA TINDERO 76134, SANTIAGO DE'),
(81, 'VANESSA LUCIA  ', 'MACIAS', 'LOPEZ', '1999-04-25', 24, 'MEXICANA', 'GUANAJUATO', 'Femenino', 2147483647, 'vanessalmacias1@hotm', 'CALLE VALLE DE MENA FRACC. AGAVE LT15,LT. 15,COL. ZIBATA, CP'),
(82, 'VICTOR MANUEL  ', 'VELAZQUEZ', 'MARTINEZ', '1988-04-01', 35, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'victormanuel.vlz.mtz', 'Mariano Escobedo, c.p. 76000, Col. Centro, Queretaro'),
(83, 'ANA LUCIA  ', 'MONTIEL', 'JUAREZ', '1991-09-05', 32, 'MEXICANA', 'CDMX', 'Femenino', 2147483647, 'montiellucia@gmail.c', 'circuito jardines de hercules # 17 26 , col. Hercules, c.p. '),
(84, 'ANDREA YARET  ', 'GONZALEZ', 'MORALES', '1998-01-18', 25, 'MEXICANA', 'GUANAJUATO', 'Femenino', 2147483647, 'arq.andgm@gmail.com', 'COND CHULA VISTA, LA LOMA VIII. C.P. 76116, SUBURBANO, QRO.'),
(85, 'JUAN MANUEL  ', 'GREGORIO', 'NBEVADO', '1993-09-21', 30, 'MEXICANA', 'QUERETARO', 'Femenino', 2147483647, 'juanmaneva87@gmail.c', 'AGAVE 208 C COLONIA AJUSTE 844 MAYAS Y HUASTECOS CERRITOS CO'),
(86, 'LISSET GUADALUPE  ', 'ELIZALDE', 'ALQUISIRA', '1996-07-05', 27, 'MEXICANA', 'ESTADO DE MEXIC', 'Femenino', 2147483647, 'lissa5796@gmail.com', 'Jardinera #3, Fracc Alamos 3ra Seccion, CP 76160, Queretaro,'),
(87, 'PALOMA  ', 'SANCHEZ', 'ANGULO', '1998-05-04', 25, 'MEXICANA', 'SINALOA', 'Femenino', 2147483647, 'palomasanchez98@gmai', 'AV HERNAN CORTES Y JUAN ALVAREZ  CHIC LA CONQUISTA. C.P. 800'),
(88, 'AMERICA ARACELI  ', 'VAZQUEZ', 'MARTINEZ', '1995-07-08', 28, 'MEXICANA', 'TAMAULIPAS', 'Femenino', 2147483647, 'america vazquezm@gma', 'CTO ESMERALDA 121-21 COL PASEOS DEL PEDREGAL 76148 QUERETARO'),
(89, 'ALONDRA  ', 'CRUZ', 'PICHARDO', '2004-11-29', 18, 'MEXICANA', 'QUERETARO', 'Femenino', 2147483647, 'alicruzzzzp@gmail.co', 'HDA CULEBRILLAS 743 '),
(90, 'DIEGO   ', 'DIAZ', 'GALVAN', '1996-08-06', 27, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'dd665409@gmail.com', 'BOLIVIA 2 , COL. VICTORIA POPULAR 5 C.P. 76147 QUERETARO, QR'),
(91, 'MARIA DEL ROSARIO  ', 'BADILLO', 'PADRON', '1999-12-02', 23, 'MEXICANA', 'SAN LUIS POTOSI', 'Femenino', 2147483647, 'rozbadillopa99@gmail', 'AV MARQUEZ DE MONTEMAYOR 602-1, REAL DEL MARQUES RESIDENCIAL'),
(92, 'SAMANTHA VALERIA  ', 'GARNICA', 'MORALES', '2001-07-18', 22, 'MEXICANA', 'QUERETARO', 'Femenino', 2147483647, 'N/A', 'BLVD MISION DE SAN FRANCISCO 358, CONDOMINIO CALETTO JURIQUI'),
(93, 'MAGDALENA  ', 'SANCHEZ', 'RODRIGUEZ', '1991-07-22', 32, 'MEXICANA', 'ESTADO DE MEXIC', 'Femenino', 2147483647, 'rodriguezmalena341@g', 'COLONIA LAS ROSAS CALLE  MARGARITAS NUM. 69'),
(94, 'ALAN JOSE  ', 'CABRERA', 'YA?EZ', '2001-02-13', 22, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'N/A', 'LOC. TIERRA BLANCA, SN, LOC. TIERRA BLANCA CP 76256, EL MARQ'),
(95, 'AMAYRANI ORICEL  ', 'OLVERA', 'JAIMES', '1989-05-20', 34, 'MEXICANA', 'CDMX', 'Femenino', 2147483647, 'amay.olve@gmail.com', 'Av. El Retablo num. 24 col. La era, QUERETARO, QRO.'),
(96, 'ANDREA  ', 'ALFARO', 'JARDINEZ', '2001-01-29', 22, 'MEXICANA', 'HIDALGO', 'Femenino', 2147483647, 'andrea-alfaro.jardin', 'CLL TOLLAN 118 MIGUEL NEGRETE OLMECA GUADALUPE, TULANCINGO,H'),
(97, 'ANDRES  ', 'CANTERA', 'RAMIREZ', '1986-12-29', 36, 'MEXICANA', 'HIDALGO', 'Masculino', 2147483647, 'peluso_c35@hotmail.c', 'C Hacienda Santa Rosa de Lima #642, Col. Hacienda Santa Rosa'),
(98, 'DAVID  ', 'MALDONADO', 'BADILLO', '2003-12-14', 19, 'MEXICANA', 'VERACRUZ', 'Masculino', 2147483647, 'dm708952@gmail.com', 'ATLAHUALCO EXT. 100-B-8, LA ESTANCIA, PASEO EL GRANDE, GUANA'),
(99, 'ANTONIO  ', 'RIVERA', 'AGUILAR', '1980-12-19', 42, 'MEXICANA', 'QUERETARO', 'Masculino', 442, 'ccimaantoniorivera@g', 'CALLE QUERETARO S/N, SAN JOSE EL ALTO, CP. 76140, QUERETARO,'),
(100, 'CESAR  ', 'TABARES', 'CASTELLANOS', '1980-07-12', 43, 'MEXICANA', 'CDMX', 'Masculino', 2147483647, 'ctabares1980@gmail.c', 'CRISTAL 6 INT 2, COL. VALLE DIAMANTE, CP. 76903, QUERETARO, '),
(101, 'DANIELA  ', 'AGUILAR', 'GUTIERREZ', '1996-12-05', 26, 'MEXICANA', 'QUERETARO', 'Femenino', 2147483647, '05daniaguilar12@gmai', 'JOSE MA. MORELOS SN, COL. MONTENEGREO, CP. 76220, QUERETARO,'),
(102, 'EDGAR ENRIQUE  ', 'GUTIERREZ', 'GARCIA', '1984-10-18', 39, 'MEXICANA', 'CDMX', 'Masculino', 2147483647, 'N/A', 'Av.Hda los cazadones 42 20 c.p, cond, Hda canada, los heroes'),
(103, 'ELVIS LUIS  ', 'HERNADNEZ', 'PERRUSQUIA', '1987-12-28', 35, 'MEXICANA', 'QUERETARO', 'Masculino', 0, '', 'CUAHTEMOC 8, COLONIA CENTRO 76700 PEDRO ESCOBEDO, QUERETARO '),
(104, 'ENRIQUE  ', 'HARO', 'MORAN', '1997-06-26', 26, 'MEXICANA', 'CDMX', 'Masculino', 2147483647, 'enrique.haro.26@gmai', 'LOS HEROES QUERETARO 6. C.P. 76150, LOS HEROES, QUERETARO, Q'),
(105, 'FELIPE  ', 'LEON', 'GUZMAN', '1987-05-04', 36, 'MEXICANA', 'HIDALGO', 'Masculino', 2147483647, '765321eic@gmail.com', 'PRIV. LA PENA 8 cp. 76230 LA SOLANA SAN JUAN SOLANA QUERETAR'),
(106, 'ENRIQUE  ', 'HARO', 'LOPEZ', '1961-10-10', 62, 'MEXICANA', 'DISTRITO FEDERA', 'Masculino', 2147483647, 'N/A', 'AV HDA LOS AZADONES 42 20 C.P. 76150 LOS HEROES QUERETARO QR'),
(107, 'JENNIFER ALANIS   ', 'GARCIA', 'MORALES', '1997-04-26', 26, 'MEXICANA', 'QUERETARO', 'Femenino', 2147483647, 'jennycoba9@gmail.com', 'AV DE LOS FRESNOS 232 DEPTO 33 ENRTRE VALLE VERDE Y CEDROS C'),
(108, 'JAIME  ', 'SUAREZ', 'BAUTISTA', '1974-09-22', 49, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'N/A', 'monterrey s/n la estacada , c.p. 76220, Qro.'),
(109, 'JUAN ANTONIO  ', 'SANCHEZ', 'PADILLA', '1996-07-29', 27, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'N/A', 'santa maria de los ba?os, s/n, c.p 76250, el marques Qro.'),
(110, 'MARIA MAGDALENA   ', 'SANCHEZ', 'BALDERAS', '1997-02-25', 26, 'MEXICANA', 'QUERETARO', 'Femenino', 2147483647, 'malegabyroman97@gmai', 'PUERTA DEL NOGAL 112 34 AV SAN RAFAEL Y PRIVADA PUERTA SN MI'),
(111, 'MARTIN  ', 'REBOLLAR', 'ZEPEDA', '1977-01-30', 46, 'MEXICANA', 'DISTRITO FEDERA', 'Masculino', 2147483647, 'NA', 'COLONIA NI?OS HEROES 1RA SECC 56610 VALLE DE CHALCO SOLIDADR'),
(112, 'JUAN FRANCISCO  ', 'AGUILAR', 'BALDERAS', '2000-10-04', 23, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'juanfranciscoaguilar', 'SAN MIGUELITO SN, LOCALIDAD SAN MIGUELITO 76220, QUERETARO '),
(113, 'JOSE GUADALUPE  ', 'PACHECO', 'SALAZAR', '1997-10-27', 26, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, '', 'BAJA CALIFORNIA 348 SAN JOSE EL ALTO C.P 76147 SAN JOSE DE A'),
(114, 'JUAN MIGUEL  ', 'RUIZ', 'MARTINEZ', '1980-03-16', 43, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'N/A', 'c. choferes 130, col.san pedrito pe?uelas , c.p 75148 Qro.'),
(115, 'LUZ DEL ANGEL  ', 'GARCIA', 'JUAREZ', '1998-05-21', 25, 'MEXICANA', 'QUERETARO', 'Femenino', 2147483647, 'luzg2122@gmail.com', 'ALFA PLATA 601, COLONIA EL PROGRESO CP. 76138, SANTIAGO QUER'),
(116, 'NANCY BERENICE  ', 'MORALES', 'SOLIS', '2001-03-24', 22, 'MEXICANA', 'VERACRUZ', 'Femenino', 2147483647, 'nancymoralessolis16@', 'ENRIQUE PONCE DEL VILLAR 116,COLONIA AMPLIACION LA CRUZ,TULA'),
(117, 'MARIA GUADALUPE  ', 'LOPEZ', 'CAMPUZANO', '1997-07-04', 26, 'MEXICANA', 'QUERETARO', 'Femenino', 2147483647, 'mglc@outlook.com', 'BELISARIO DOMINGUEZ SN, LOCALIDAD TLACOTE EL BAJO, CP 76229,'),
(118, 'MARISELA  ', 'MENDOZA', 'TORRES', '1985-05-06', 38, 'MEXICANA', 'QUERETARO', 'Femenino', 2147483647, 'marisela.mendozat@gm', 'Psic?logos 219 colonia el l marqu?s cp 76047. Quer?taro. Qro'),
(119, 'MARIA NELLELY   ', 'DIAZ', 'CORNEJO', '1986-08-15', 37, 'MEXICANA', 'GUANAJUATO', 'Femenino', 2147483647, 'cdn@live.com.mx', 'HIDALGO 1 SUR STA ROSA VECINO MEDD FW6962 CENTRO C.P. 76000 '),
(120, 'MIGUEL  ', 'PACHECO', 'SUAREZ', '1973-02-14', 50, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'N/A', 'loma dorada 40, sta rosa jauregui Qro. '),
(121, 'MODESTO  ', 'BADILLO', 'FRANCO', '1986-03-04', 37, 'MEXICANA', 'VERACRUZ', 'Masculino', 2147483647, 'N/A', 'Atlayahualco, Ext. 100-B-10, La Estancia, Apaseo el Grande, '),
(122, 'PAOLA ANAHI  ', 'OCA?A', 'RODEA', '1994-01-17', 29, 'MEXICANA', 'MORELOS', 'Femenino', 442, 'ana_639@hotmail.com', 'Privada 5,Nueva santa Rosa jauregui C.P 76220 Queretaro,Qro.'),
(123, 'PEDRO  ', 'BADILLO', 'FRANCO', '2001-09-14', 22, 'MEXICANA', 'VERACRUZ', 'Masculino', 2147483647, 'reyremi14sep2001@gma', 'ATLAYAHUALCO EXT. 100-B-3 LA ESTANCIA APASEO EL GRANE, GTO'),
(124, 'HILARIO   ', 'VILLANUEVA', 'MARTINEZ', '0000-00-00', 0, 'MEXICANA', '', 'Masculino', 0, '', ''),
(125, 'RAFAEL  ', 'TORRES', 'RAMIREZ', '1985-08-13', 38, 'MEXICANA', 'ESTADO DE MEXIC', 'Masculino', 2147483647, 'raftorram12@gmail.co', 'VENUSTIANO CARRANZA 19, EZ COLON, CP 76270, COLON, QUERETARO'),
(126, 'SERGIO  ', 'CABRERA', 'YA?EZ', '1998-09-08', 25, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'checocy1998@gmail.co', 'Tierra Blanca, El Marquez, Queretaro.'),
(127, 'SOFIA ESMERALDA  ', 'VERA', 'VICTORIO', '2002-08-06', 21, 'MEXICANA', 'ESTADO DE MEXIC', 'Femenino', 2147483647, 'sofiaesmeralda2002@g', 'PROLONGACION ARGENTINA 78, COL. LOMAS DE ORO, CP. 76190, QUE'),
(128, 'MISSAEL  ', 'IUIT', 'CHEL', '1996-01-01', 27, 'MEXICANA', 'YUCATAN', 'Masculino', 0, '', 'JARDINES DE SANTA BARBARA UMAN C.P.  97390, UMAN, YUCATAN.'),
(129, 'YARESSI  ', 'RODRIGUEZ', 'DEL ANGEL ', '1997-11-26', 25, 'MEXICANA', 'VERACRUZ', 'Femenino', 2147483647, 'yaressi.rodrioguez97', 'CALLE LA UARORA 16. COL SAN FRANCISQUITO C.P. 76058, QRO, QR'),
(130, 'JUAN RAMON  ', 'LIRA', 'HERNANDEZ', '1999-09-07', 24, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'juanh_17@outlook.com', 'MONTE ATLAS 204-99, COLONIA LA LOMA 76116, SANTIAGO QUERETAR'),
(131, 'JUAN PABLO   ', 'BARCENAS', 'ITURBE', '1998-06-22', 25, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'juan.iturbe2206@gmai', 'MONTES CARPATOS AV CARPATOS LA LOMA C.P. 76220'),
(132, 'JOSE ANTONIO  ', 'RENOVATO', 'HIEDRA', '1997-12-06', 25, 'MEXICANA', 'ESTADO DE MEXIC', 'Masculino', 2147483647, 'n_01_047@outlook.com', 'CALZADA SAN AGUSTIN DEL RETABLO 130, COL. EL RETABLO, CP. 76'),
(133, 'BRENDA JIMENA  ', 'ALARCON', 'VARGAS', '1986-12-22', 36, 'MEXICANA', 'CDMX', 'Femenino', 2147483647, 'jimena.alarcon@live.', 'CUESTA BONITA 70-25, COLONIA CUESTA BONITA, 76063, SANTIAGO '),
(134, 'ALEJANDRO ', 'CABELLO', ' DE JESUS', '2000-07-07', 23, 'MEXICANA', 'QUERETARO', 'Masculino', 2147483647, 'cabelloagape@gmail.c', 'LISBOA130, COLONIA LOS SAUCES 76114, SANTIAGO DE QUERETARO, '),
(135, 'ISAI JEZIEL  ', 'GARCIA', 'HERNANDEZ', '1996-01-10', 27, 'MEXICANA', 'EDO DE MEXICO', 'Masculino', 2147483647, 'igarciah1007@gmail.c', 'JARDINES DE LAS DELICIAS LOS HEROES AZUMBILLA, C.P. 55764 TE'),
(136, 'DIEGO  ', 'DOMINGUEZ', 'ZACAPALA', '1994-04-07', 29, 'MEXICANA', 'GUERRERO', 'Masculino', 2147483647, 'diego.dguezz@gmail.c', 'SAN LUIS 4, COLONIA CENTRO, QUERETARO, QRO.'),
(137, 'prueba', 'prueba', 'prueba', '0000-00-00', 0, 'prueba', 'prueba', '', 0, 'prueba', 'prueba'),
(138, 'prueba', 'prueba', 'prueba', '0000-00-00', 0, 'prueba', 'prueba', '', 0, 'prueba', 'prueba'),
(139, 'nuevo', '', '', '0000-00-00', 0, '', '', NULL, 0, '', ''),
(140, 'Alejandro', 'Cabello', 'De Jesus', NULL, NULL, NULL, NULL, NULL, 2147483647, 'cabeloagape@gmail.co', 'Los Sauces, Lisboa 130'),
(141, 'Alejandro', 'Cabello', 'De Jesus', NULL, NULL, NULL, NULL, NULL, 2147483647, 'cabeloagape@gmail.co', 'Los Sauces, Lisboa 130');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `beneficiario`
--
ALTER TABLE `beneficiario`
  ADD PRIMARY KEY (`id_beneficiario`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `contacto_emergencia`
--
ALTER TABLE `contacto_emergencia`
  ADD PRIMARY KEY (`id_contacto`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`id_contrato`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `datos_fiscales`
--
ALTER TABLE `datos_fiscales`
  ADD PRIMARY KEY (`id_datosFiscales`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `beneficiario`
--
ALTER TABLE `beneficiario`
  MODIFY `id_beneficiario` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT de la tabla `contacto_emergencia`
--
ALTER TABLE `contacto_emergencia`
  MODIFY `id_contacto` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=414;

--
-- AUTO_INCREMENT de la tabla `contrato`
--
ALTER TABLE `contrato`
  MODIFY `id_contrato` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT de la tabla `datos_fiscales`
--
ALTER TABLE `datos_fiscales`
  MODIFY `id_datosFiscales` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleado` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `beneficiario`
--
ALTER TABLE `beneficiario`
  ADD CONSTRAINT `beneficiario_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`);

--
-- Filtros para la tabla `contacto_emergencia`
--
ALTER TABLE `contacto_emergencia`
  ADD CONSTRAINT `contacto_emergencia_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `datos_fiscales`
--
ALTER TABLE `datos_fiscales`
  ADD CONSTRAINT `datos_fiscales_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`);

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
