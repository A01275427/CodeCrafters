-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-arturosanchezrodriguez.alwaysdata.net
-- Generation Time: Mar 15, 2024 at 04:09 PM
-- Server version: 10.6.16-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arturosanchezrodriguez_viadisenio`
--

-- --------------------------------------------------------

--
-- Table structure for table `Causan`
--

CREATE TABLE `Causan` (
  `IDCausan` int(11) NOT NULL,
  `IDDeuda` int(11) DEFAULT NULL,
  `IDMateria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Causan`
--

INSERT INTO `Causan` (`IDCausan`, `IDDeuda`, `IDMateria`) VALUES
(1, 1, 101),
(2, 1, 102),
(3, 2, 103),
(4, 3, 104),
(5, 3, 105),
(6, 4, 106),
(7, 5, 107),
(8, 6, 108),
(9, 7, 109),
(10, 8, 110),
(11, 9, 111),
(12, 10, 112),
(13, 11, 113),
(14, 12, 114),
(15, 13, 115),
(16, 14, 116),
(17, 15, 117),
(18, 16, 118),
(19, 17, 119),
(20, 18, 120),
(21, 19, 121),
(22, 20, 122),
(23, 21, 123),
(24, 22, 124),
(25, 23, 125);

-- --------------------------------------------------------

--
-- Table structure for table `CicloEscolar`
--

CREATE TABLE `CicloEscolar` (
  `IDCiclo` int(11) NOT NULL,
  `Ciclo` varchar(30) DEFAULT NULL,
  `Fecha_Inicio` datetime DEFAULT NULL,
  `Fecha_Fin` datetime DEFAULT NULL,
  `Ciclo_activo` tinyint(1) DEFAULT NULL,
  `Precio_credito` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CicloEscolar`
--

INSERT INTO `CicloEscolar` (`IDCiclo`, `Ciclo`, `Fecha_Inicio`, `Fecha_Fin`, `Ciclo_activo`, `Precio_credito`) VALUES
(1, 'Enero - Junio 2014', '2014-01-06 00:00:00', '2014-06-29 00:00:00', 0, 500),
(2, 'Agosto - Diciembre 2014', '2014-08-04 00:00:00', '2014-12-19 00:00:00', 0, 510),
(3, 'Enero - Junio 2015', '2015-01-05 00:00:00', '2015-06-28 00:00:00', 0, 520),
(4, 'Agosto - Diciembre 2015', '2015-08-03 00:00:00', '2015-12-18 00:00:00', 0, 530),
(5, 'Enero - Junio 2016', '2016-01-04 00:00:00', '2016-06-26 00:00:00', 0, 540),
(6, 'Agosto - Diciembre 2016', '2016-08-01 00:00:00', '2016-12-16 00:00:00', 0, 550),
(7, 'Enero - Junio 2017', '2017-01-09 00:00:00', '2017-06-25 00:00:00', 0, 560),
(8, 'Agosto - Diciembre 2017', '2017-08-07 00:00:00', '2017-12-15 00:00:00', 0, 570),
(9, 'Enero - Junio 2018', '2018-01-08 00:00:00', '2018-06-24 00:00:00', 0, 580),
(10, 'Agosto - Diciembre 2018', '2018-08-06 00:00:00', '2018-12-14 00:00:00', 0, 590),
(11, 'Enero - Junio 2019', '2019-01-07 00:00:00', '2019-06-23 00:00:00', 0, 600),
(12, 'Agosto - Diciembre 2019', '2019-08-05 00:00:00', '2019-12-13 00:00:00', 0, 610),
(13, 'Enero - Junio 2020', '2020-01-06 00:00:00', '2020-06-28 00:00:00', 0, 620),
(14, 'Agosto - Diciembre 2020', '2020-08-03 00:00:00', '2020-12-18 00:00:00', 0, 630),
(15, 'Enero - Junio 2021', '2021-01-04 00:00:00', '2021-06-27 00:00:00', 0, 640),
(16, 'Agosto - Diciembre 2021', '2021-08-02 00:00:00', '2021-12-17 00:00:00', 0, 650),
(17, 'Enero - Junio 2022', '2022-01-10 00:00:00', '2022-06-26 00:00:00', 0, 660),
(18, 'Agosto - Diciembre 2022', '2022-08-08 00:00:00', '2022-12-16 00:00:00', 0, 670),
(19, 'Enero - Junio 2023', '2023-01-09 00:00:00', '2023-06-25 00:00:00', 0, 680),
(20, 'Agosto - Diciembre 2023', '2023-08-07 00:00:00', '2023-12-15 00:00:00', 1, 690),
(21, 'Enero - Junio 2024', '2024-01-08 00:00:00', '2024-06-23 00:00:00', 0, 700),
(22, 'Agosto - Diciembre 2024', '2024-08-05 00:00:00', '2024-12-13 00:00:00', 0, 710),
(23, 'Enero - Junio 2025', '2025-01-06 00:00:00', '2025-06-29 00:00:00', 0, 720),
(24, 'Agosto - Diciembre 2025', '2025-08-04 00:00:00', '2025-12-19 00:00:00', 0, 730),
(25, 'Enero - Junio 2026', '2026-01-05 00:00:00', '2026-06-28 00:00:00', 0, 740);

-- --------------------------------------------------------

--
-- Table structure for table `Contiene`
--

CREATE TABLE `Contiene` (
  `IDContiene` int(11) NOT NULL,
  `IDRol` int(11) DEFAULT NULL,
  `IDPrivilegios` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Contiene`
--

INSERT INTO `Contiene` (`IDContiene`, `IDRol`, `IDPrivilegios`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 4),
(6, 2, 5),
(7, 3, 1),
(8, 3, 6),
(9, 3, 7),
(10, 4, 2),
(11, 4, 8),
(12, 4, 9),
(13, 5, 3),
(14, 5, 10),
(15, 5, 11),
(16, 6, 4),
(17, 6, 12),
(18, 6, 13),
(19, 7, 5),
(20, 7, 14),
(21, 7, 15),
(22, 8, 6),
(23, 8, 16),
(24, 8, 17),
(25, 9, 7);

-- --------------------------------------------------------

--
-- Table structure for table `Deuda`
--

CREATE TABLE `Deuda` (
  `IDDeuda` int(11) NOT NULL,
  `IDUsuario` int(11) DEFAULT NULL,
  `Total_deuda` float DEFAULT NULL,
  `Plan_pago` varchar(50) DEFAULT NULL,
  `Concepto` varchar(50) DEFAULT NULL,
  `Mes` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Deuda`
--

INSERT INTO `Deuda` (`IDDeuda`, `IDUsuario`, `Total_deuda`, `Plan_pago`, `Concepto`, `Mes`) VALUES
(1, 1, 5000, 'Pago único', 'Inscripción Enero 2024', 'Enero'),
(2, 2, 7500, '3 cuotas', 'Curso de verano', 'Junio'),
(3, 3, 2500, 'Pago único', 'Material didáctico', 'Septiembre'),
(4, 4, 3000, '2 cuotas', 'Taller de arte', 'Agosto'),
(5, 5, 10000, '5 cuotas', 'Semestre completo', 'Enero'),
(6, 6, 4500, 'Pago único', 'Laboratorio de ciencias', 'Marzo'),
(7, 7, 3800, '4 cuotas', 'Certificación profesional', 'Julio'),
(8, 8, 6200, '6 cuotas', 'Programa de idiomas', 'Febrero'),
(9, 9, 2900, 'Pago único', 'Material de computación', 'Abril'),
(10, 10, 5600, '3 cuotas', 'Curso de fotografía', 'Mayo'),
(11, 11, 4700, '2 cuotas', 'Seminario de historia', 'Noviembre'),
(12, 12, 8500, '5 cuotas', 'Programa de intercambio', 'Octubre'),
(13, 13, 6400, '6 cuotas', 'Torneo deportivo', 'Diciembre'),
(14, 14, 3200, 'Pago único', 'Curso de diseño gráfico', 'Febrero'),
(15, 15, 2100, '3 cuotas', 'Taller de música', 'Marzo'),
(16, 16, 5300, '4 cuotas', 'Curso de programación', 'Abril'),
(17, 17, 7800, '2 cuotas', 'Curso intensivo de matemáticas', 'Mayo'),
(18, 18, 4600, 'Pago único', 'Curso de robótica', 'Junio'),
(19, 19, 5900, '5 cuotas', 'Programa de verano', 'Julio'),
(20, 20, 6700, '6 cuotas', 'Curso de física avanzada', 'Agosto'),
(21, 21, 3500, 'Pago único', 'Taller de escritura creativa', 'Septiembre'),
(22, 22, 4100, '3 cuotas', 'Curso de teatro', 'Octubre'),
(23, 23, 8800, '4 cuotas', 'Programa de liderazgo', 'Noviembre'),
(24, 24, 7200, '2 cuotas', 'Curso de emprendimiento', 'Diciembre'),
(25, 25, 6500, '5 cuotas', 'Programa de historia del arte', 'Enero');

-- --------------------------------------------------------

--
-- Table structure for table `Inscribe`
--

CREATE TABLE `Inscribe` (
  `IDInscribe` int(11) NOT NULL,
  `IDUsuario` int(11) DEFAULT NULL,
  `IDMateria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Inscribe`
--

INSERT INTO `Inscribe` (`IDInscribe`, `IDUsuario`, `IDMateria`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 4),
(6, 3, 2),
(7, 4, 5),
(8, 5, 6),
(9, 6, 1),
(10, 7, 7),
(11, 8, 8),
(12, 8, 9),
(13, 9, 1),
(14, 9, 10),
(15, 10, 11),
(16, 11, 12),
(17, 12, 13),
(18, 13, 1),
(19, 14, 14),
(20, 15, 15),
(21, 16, 16),
(22, 17, 1),
(23, 18, 17),
(24, 19, 18),
(25, 20, 19);

-- --------------------------------------------------------

--
-- Table structure for table `Materias`
--

CREATE TABLE `Materias` (
  `IDMateria` int(11) NOT NULL,
  `Nombre_mat` varchar(50) DEFAULT NULL,
  `Creditos` float DEFAULT NULL,
  `Semestre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Materias`
--

INSERT INTO `Materias` (`IDMateria`, `Nombre_mat`, `Creditos`, `Semestre`) VALUES
(101, 'Matemáticas Básicas', 6, 1),
(102, 'Introducción a la Literatura', 4, 1),
(103, 'Química General', 6, 1),
(104, 'Historia Mundial Contemporánea', 4, 1),
(105, 'Dibujo Técnico', 6, 1),
(106, 'Programación I', 8, 1),
(107, 'Biología Celular', 6, 2),
(108, 'Álgebra Lineal', 6, 2),
(109, 'Fundamentos de Física', 6, 2),
(110, 'Estadística Descriptiva', 6, 2),
(111, 'Diseño Gráfico', 8, 2),
(112, 'Cálculo Diferencial', 6, 2),
(113, 'Programación II', 8, 3),
(114, 'Ecología y Medio Ambiente', 4, 3),
(115, 'Economía', 6, 3),
(116, 'Cálculo Integral', 6, 3),
(117, 'Física Avanzada', 8, 3),
(118, 'Literatura Comparada', 4, 3),
(119, 'Microbiología', 6, 4),
(120, 'Estructuras de Datos', 8, 4),
(121, 'Análisis Numérico', 6, 4),
(122, 'Ingeniería de Software', 8, 4),
(123, 'Optativa: Filosofía de la Ciencia', 4, 4),
(124, 'Optativa: Arte Moderno', 4, 4),
(125, 'Proyecto de Fin de Carrera', 12, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Pago`
--

CREATE TABLE `Pago` (
  `IDPago` int(11) NOT NULL,
  `IDUsuario` int(11) DEFAULT NULL,
  `IDDueda` int(11) DEFAULT NULL,
  `Cant_pagada` float DEFAULT NULL,
  `Fecha_de_pago` datetime DEFAULT NULL,
  `Metodo` varchar(50) DEFAULT NULL,
  `Banco` varchar(30) DEFAULT NULL,
  `Nota` varchar(255) DEFAULT NULL,
  `Prorroga` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Pago`
--

INSERT INTO `Pago` (`IDPago`, `IDUsuario`, `IDDueda`, `Cant_pagada`, `Fecha_de_pago`, `Metodo`, `Banco`, `Nota`, `Prorroga`) VALUES
(1, 1, 1, 500, '2024-01-10 00:00:00', 'Transferencia', 'Banorte', 'Pago inscripción', NULL),
(2, 2, 2, 250, '2024-01-15 00:00:00', 'Pago en efectivo', 'BBVA', 'Primera cuota', '2024-01-20 00:00:00'),
(3, 3, 3, 750, '2024-01-20 00:00:00', 'Tarjeta de crédito', 'Santander', 'Material didáctico', NULL),
(4, 4, 4, 1000, '2024-01-25 00:00:00', 'Transferencia', 'HSBC', 'Taller de arte', NULL),
(5, 5, 5, 1250, '2024-02-01 00:00:00', 'Tarjeta de débito', 'Scotiabank', 'Semestre completo', '2024-02-10 00:00:00'),
(6, 6, 6, 1500, '2024-02-05 00:00:00', 'Transferencia', 'Banorte', 'Laboratorio ciencias', NULL),
(7, 7, 7, 1750, '2024-02-10 00:00:00', 'Pago en efectivo', 'BBVA', 'Certificación profesional', NULL),
(8, 8, 8, 2000, '2024-02-15 00:00:00', 'Tarjeta de crédito', 'Santander', 'Programa de idiomas', '2024-02-25 00:00:00'),
(9, 9, 9, 2250, '2024-02-20 00:00:00', 'Transferencia', 'HSBC', 'Material de computación', NULL),
(10, 10, 10, 2500, '2024-02-25 00:00:00', 'Tarjeta de débito', 'Scotiabank', 'Curso de fotografía', NULL),
(11, 11, 11, 2700, '2024-03-02 00:00:00', 'Transferencia', 'Banorte', 'Seminario de historia', '2024-03-12 00:00:00'),
(12, 12, 12, 2900, '2024-03-09 00:00:00', 'Pago en efectivo', 'BBVA', 'Programa de intercambio', NULL),
(13, 13, 13, 3100, '2024-03-16 00:00:00', 'Tarjeta de crédito', 'Santander', 'Torneo deportivo', NULL),
(14, 14, 14, 3300, '2024-03-23 00:00:00', 'Transferencia', 'HSBC', 'Curso de diseño gráfico', '2024-03-30 00:00:00'),
(15, 15, 15, 3500, '2024-03-30 00:00:00', 'Tarjeta de débito', 'Scotiabank', 'Taller de música', NULL),
(16, 16, 16, 3700, '2024-04-06 00:00:00', 'Transferencia', 'Banorte', 'Curso de programación', NULL),
(17, 17, 17, 3900, '2024-04-13 00:00:00', 'Pago en efectivo', 'BBVA', 'Curso intensivo matemáticas', '2024-04-20 00:00:00'),
(18, 18, 18, 4100, '2024-04-20 00:00:00', 'Tarjeta de crédito', 'Santander', 'Curso de robótica', NULL),
(19, 19, 19, 4300, '2024-04-27 00:00:00', 'Transferencia', 'HSBC', 'Programa de verano', NULL),
(20, 20, 20, 4500, '2024-05-04 00:00:00', 'Tarjeta de débito', 'Scotiabank', 'Curso de física avanzada', '2024-05-11 00:00:00'),
(21, 21, 21, 4700, '2024-05-11 00:00:00', 'Transferencia', 'Banorte', 'Taller de escritura creativa', NULL),
(22, 22, 22, 4900, '2024-05-18 00:00:00', 'Pago en efectivo', 'BBVA', 'Curso de teatro', NULL),
(23, 23, 23, 5100, '2024-05-25 00:00:00', 'Tarjeta de crédito', 'Santander', 'Programa de liderazgo', '2024-06-01 00:00:00'),
(24, 24, 24, 5300, '2024-06-01 00:00:00', 'Transferencia', 'HSBC', 'Curso de emprendimiento', NULL),
(25, 25, 25, 5500, '2024-06-08 00:00:00', 'Tarjeta de débito', 'Scotiabank', 'Historia del arte', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Pertenece`
--

CREATE TABLE `Pertenece` (
  `IDPertenece` int(11) NOT NULL,
  `IDMateria` int(11) DEFAULT NULL,
  `IDCiclo` int(11) DEFAULT NULL,
  `Beca` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Pertenece`
--

INSERT INTO `Pertenece` (`IDPertenece`, `IDMateria`, `IDCiclo`, `Beca`) VALUES
(1, 101, 1, 0),
(2, 102, 1, 10),
(3, 103, 2, 0),
(4, 104, 2, 20),
(5, 105, 3, 0),
(6, 106, 3, 0),
(7, 107, 4, 30),
(8, 108, 4, 0),
(9, 109, 5, 0),
(10, 110, 5, 40),
(11, 111, 6, 0),
(12, 112, 6, 0),
(13, 113, 7, 50),
(14, 114, 7, 0),
(15, 115, 8, 0),
(16, 116, 8, 60),
(17, 117, 9, 0),
(18, 118, 9, 0),
(19, 119, 10, 70),
(20, 120, 10, 0),
(21, 121, 11, 0),
(22, 122, 11, 80),
(23, 123, 12, 0),
(24, 124, 12, 0),
(25, 125, 13, 90);

-- --------------------------------------------------------

--
-- Table structure for table `Privilegios`
--

CREATE TABLE `Privilegios` (
  `IDPrivilegio` int(11) NOT NULL,
  `Actividades` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Privilegios`
--

INSERT INTO `Privilegios` (`IDPrivilegio`, `Actividades`) VALUES
(1, 'Acceso al dashboard principal'),
(2, 'Crear nuevos usuarios'),
(3, 'Eliminar usuarios'),
(4, 'Modificar información de usuarios'),
(5, 'Acceso completo a configuraciones del sistema'),
(6, 'Visualizar reportes financieros'),
(7, 'Generar reportes financieros'),
(8, 'Acceso a la configuración de seguridad'),
(9, 'Modificar roles y privilegios'),
(10, 'Crear nuevos cursos'),
(11, 'Eliminar cursos'),
(12, 'Modificar información de cursos'),
(13, 'Gestionar inscripciones'),
(14, 'Acceso a herramientas de análisis de datos'),
(15, 'Publicar anuncios'),
(16, 'Eliminar anuncios'),
(17, 'Modificar anuncios'),
(18, 'Gestionar calendario académico'),
(19, 'Acceso a la biblioteca digital'),
(20, 'Modificar la biblioteca digital'),
(21, 'Visualizar directorio de estudiantes'),
(22, 'Modificar directorio de estudiantes'),
(23, 'Gestionar solicitudes de becas'),
(24, 'Aprobar/denegar solicitudes de becas'),
(25, 'Acceso a registros académicos completos');

-- --------------------------------------------------------

--
-- Table structure for table `Rol`
--

CREATE TABLE `Rol` (
  `IDRol` int(11) NOT NULL,
  `Tipo_rol` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Rol`
--

INSERT INTO `Rol` (`IDRol`, `Tipo_rol`) VALUES
(1, 'Alumno'),
(2, 'Administrador'),
(3, 'Lector'),
(4, 'Alumno'),
(5, 'Administrador'),
(6, 'Lector'),
(7, 'Alumno'),
(8, 'Administrador'),
(9, 'Lector'),
(10, 'Alumno'),
(11, 'Administrador'),
(12, 'Lector'),
(13, 'Alumno'),
(14, 'Administrador'),
(15, 'Lector'),
(16, 'Alumno'),
(17, 'Administrador'),
(18, 'Lector'),
(19, 'Alumno'),
(20, 'Administrador'),
(21, 'Lector'),
(22, 'Alumno'),
(23, 'Administrador'),
(24, 'Lector'),
(25, 'Alumno');

-- --------------------------------------------------------

--
-- Table structure for table `Usuario`
--

CREATE TABLE `Usuario` (
  `IDUsuario` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Matricula` int(11) DEFAULT NULL,
  `Correo_electronico` varchar(255) DEFAULT NULL,
  `Contrasena` varchar(255) DEFAULT NULL,
  `Beca_actual` varchar(255) DEFAULT NULL,
  `Referencia` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Usuario`
--

INSERT INTO `Usuario` (`IDUsuario`, `Nombre`, `Matricula`, `Correo_electronico`, `Contrasena`, `Beca_actual`, `Referencia`) VALUES
(1, 'Juan Pérez', 10001, 'juan.perez@email.com', 'password123', 'Ninguna', 'Ref001'),
(2, 'María López', 10002, 'maria.lopez@email.com', 'password123', '50%', 'Ref002'),
(3, 'Carlos García', 10003, 'carlos.garcia@email.com', 'password123', 'Ninguna', 'Ref003'),
(4, 'Ana Martínez', 10004, 'ana.martinez@email.com', 'password123', '25%', 'Ref004'),
(5, 'David Rodríguez', 10005, 'david.rodriguez@email.com', 'password123', 'Ninguna', 'Ref005'),
(6, 'Lucía Hernández', 10006, 'lucia.hernandez@email.com', 'password123', '100%', 'Ref006'),
(7, 'Francisco Torres', 10007, 'francisco.torres@email.com', 'password123', 'Ninguna', 'Ref007'),
(8, 'Beatriz Sánchez', 10008, 'beatriz.sanchez@email.com', 'password123', '75%', 'Ref008'),
(9, 'Miguel Ángel Navarro', 10009, 'miguel.navarro@email.com', 'password123', 'Ninguna', 'Ref009'),
(10, 'Laura Jiménez', 10010, 'laura.jimenez@email.com', 'password123', '50%', 'Ref010'),
(11, 'Roberto López', 10011, 'roberto.lopez@email.com', 'password123', 'Ninguna', 'Ref011'),
(12, 'Sofía Gómez', 10012, 'sofia.gomez@email.com', 'password123', '25%', 'Ref012'),
(13, 'Alejandro Martín', 10013, 'alejandro.martin@email.com', 'password123', 'Ninguna', 'Ref013'),
(14, 'Carmen Díaz', 10014, 'carmen.diaz@email.com', 'password123', '100%', 'Ref014'),
(15, 'Fernando Álvarez', 10015, 'fernando.alvarez@email.com', 'password123', 'Ninguna', 'Ref015'),
(16, 'Elena Romero', 10016, 'elena.romero@email.com', 'password123', '75%', 'Ref016'),
(17, 'Pablo Moreno', 10017, 'pablo.moreno@email.com', 'password123', 'Ninguna', 'Ref017'),
(18, 'Patricia Muñoz', 10018, 'patricia.munoz@email.com', 'password123', '50%', 'Ref018'),
(19, 'Raúl Alonso', 10019, 'raul.alonso@email.com', 'password123', 'Ninguna', 'Ref019'),
(20, 'Clara Vidal', 10020, 'clara.vidal@email.com', 'password123', '25%', 'Ref020'),
(21, 'Sergio Ruiz', 10021, 'sergio.ruiz@email.com', 'password123', 'Ninguna', 'Ref021'),
(22, 'Blanca Morales', 10022, 'blanca.morales@email.com', 'password123', '100%', 'Ref022'),
(23, 'Jorge Ortega', 10023, 'jorge.ortega@email.com', 'password123', 'Ninguna', 'Ref023'),
(24, 'Marta Castro', 10024, 'marta.castro@email.com', 'password123', '75%', 'Ref024'),
(25, 'Luis Guerrero', 10025, 'luis.guerrero@email.com', 'password123', 'Ninguna', 'Ref025');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Causan`
--
ALTER TABLE `Causan`
  ADD PRIMARY KEY (`IDCausan`);

--
-- Indexes for table `CicloEscolar`
--
ALTER TABLE `CicloEscolar`
  ADD PRIMARY KEY (`IDCiclo`);

--
-- Indexes for table `Contiene`
--
ALTER TABLE `Contiene`
  ADD PRIMARY KEY (`IDContiene`);

--
-- Indexes for table `Deuda`
--
ALTER TABLE `Deuda`
  ADD PRIMARY KEY (`IDDeuda`);

--
-- Indexes for table `Inscribe`
--
ALTER TABLE `Inscribe`
  ADD PRIMARY KEY (`IDInscribe`);

--
-- Indexes for table `Materias`
--
ALTER TABLE `Materias`
  ADD PRIMARY KEY (`IDMateria`);

--
-- Indexes for table `Pago`
--
ALTER TABLE `Pago`
  ADD PRIMARY KEY (`IDPago`);

--
-- Indexes for table `Pertenece`
--
ALTER TABLE `Pertenece`
  ADD PRIMARY KEY (`IDPertenece`);

--
-- Indexes for table `Privilegios`
--
ALTER TABLE `Privilegios`
  ADD PRIMARY KEY (`IDPrivilegio`);

--
-- Indexes for table `Rol`
--
ALTER TABLE `Rol`
  ADD PRIMARY KEY (`IDRol`);

--
-- Indexes for table `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`IDUsuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `IDUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
