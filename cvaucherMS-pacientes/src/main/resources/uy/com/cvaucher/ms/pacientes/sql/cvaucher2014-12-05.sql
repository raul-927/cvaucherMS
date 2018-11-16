-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.6.17 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para est_vaucher
CREATE DATABASE IF NOT EXISTS `est_vaucher` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `est_vaucher`;


-- Volcando estructura para tabla est_vaucher.agenda
CREATE TABLE IF NOT EXISTS `agenda` (
  `ag_pac_Id` int(11) NOT NULL AUTO_INCREMENT,
  `ag_tipo` varchar(50) NOT NULL,
  `ag_dato` varchar(50) NOT NULL,
  `pac_cedula` int(11) NOT NULL,
  PRIMARY KEY (`ag_pac_Id`),
  KEY `pacientes_agenda` (`pac_cedula`),
  CONSTRAINT `pacientes_agenda` FOREIGN KEY (`pac_cedula`) REFERENCES `pacientes` (`cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.agenda: ~65 rows (aproximadamente)
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
REPLACE INTO `agenda` (`ag_pac_Id`, `ag_tipo`, `ag_dato`, `pac_cedula`) VALUES
	(8, 'CELULAR', '091020020', 44188684),
	(9, 'EMAIL', 'info@vaucher.com.uy', 44188684),
	(10, 'TELEFONO', '24875544', 44188684),
	(11, 'CELULAR', '094225478', 44247486),
	(16, 'CELULAR', '095123456', 24578956),
	(17, 'TELEFONO', '26010171', 42542474),
	(18, 'EMAIL', 'cgomez@hotmail.com', 14578958),
	(19, 'CELULAR', '098447775', 14578958),
	(20, 'TELEFONO', '26104578', 24577742),
	(21, 'CELULAR', '099587451', 24577742),
	(22, 'EMAIL', 'drodriguez@gmail.com', 24577742),
	(23, 'TELEFONO', '26104050', 44588795),
	(45, 'CELULAR', '098585494', 19455549),
	(46, 'TELEFONO', '24875544', 19455549),
	(47, 'EMAIL', 'raulhern927@gmail.com', 19455549),
	(48, 'CELULAR', '096547897', 45698741),
	(49, 'TELEFONO', '24086827', 10042763),
	(50, 'TELEFONO', '24578987', 12456637),
	(51, 'CELULAR', '095478987', 12456637),
	(52, 'CELULAR', '099874547', 35465475),
	(53, 'TELEFONO', '24578987', 35465475),
	(54, 'EMAIL', 'lbermudez@gmail.com', 35465475),
	(55, 'CELULAR', '095700192', 42629707),
	(56, 'CELULAR', '094514789', 54145782),
	(57, 'TELEFONO', '26125478', 54145782),
	(58, 'EMAIL', 'eli.introino@gmail.com', 54145782),
	(129, 'CELULAR', '0965478789', 24567896),
	(130, 'TELEFONO', '29085454', 24567896),
	(131, 'EMAIL', 'natalia.mederos@gmail.com', 24567896),
	(132, 'CELULAR', '094578795', 24157481),
	(133, 'CELULAR', '098547895', 45789653),
	(134, 'TELEFONO', '24087985', 45789653),
	(135, 'CELULAR', '087485954', 45156898),
	(136, 'CELULAR', '094582145', 25890747),
	(145, 'CELULAR', '0965478789', 32145771),
	(146, 'CELULAR', '094547895', 23364786),
	(147, 'CELULAR', '098474545', 32124561),
	(148, 'CELULAR', '095478956', 41547843),
	(149, 'EMAIL', 'fernanda.martinez@mail.com', 41547843),
	(150, 'CELULAR', '095265147', 65453215),
	(151, 'CELULAR', '094124563', 54324322),
	(207, 'CELULAR', '09845454545', 29584732),
	(208, 'TELEFONO', '25478954', 29584732),
	(209, 'EMAIL', 'ale.gomez@algundominio.com', 29584732),
	(210, 'SKYPE', 'ale gomez', 29584732),
	(211, 'CELULAR', '098457895', 31245675),
	(212, 'TELEFONO', '45178965', 31245675),
	(213, 'EMAIL', 'Carolina.Martinez@undominio.com', 31245675),
	(214, 'FACEBOOK', 'Carolina.Martinez@facebook.com', 31245675),
	(215, 'CELULAR', '09845454545', 41578943),
	(216, 'TELEFONO', '29100210', 41578943),
	(217, 'EMAIL', 'marianela.fernandez@undominio.com', 41578943),
	(218, 'FACEBOOK', 'marianela fernandez', 41578943),
	(219, 'CELULAR', '09845454545', 62135218),
	(220, 'TELEFONO', '29100210', 62135218),
	(221, 'EMAIL', 'carolina.benitez@algundominio.com', 62135218),
	(222, 'FACEBOOK', 'carolina.benitez', 62135218),
	(223, 'CELULAR', '098745632', 51234568),
	(224, 'CELULAR', '098454789', 31245697),
	(225, 'TELEFONO', '24578965', 31245697),
	(226, 'EMAIL', 'analia.rubio@undominio.com', 31245697),
	(227, 'CELULAR', '094285111', 45213216),
	(228, 'TELEFONO', '24815151', 45213216),
	(229, 'EMAIL', 'maria.perez@gmail.com', 45213216),
	(230, 'CELULAR', '094145421', 41214153),
	(231, 'CELULAR', '099452145', 54152636),
	(232, 'TELEFONO', '24789854', 54152636),
	(233, 'CELULAR', '091214563', 29144124),
	(234, 'TELEFONO', '24874563', 29144124),
	(235, 'EMAIL', 'patricia.soca@undominio.com', 29144124),
	(236, 'CELULAR', '094123546', 42154126),
	(237, 'CELULAR', '098478456', 61234566),
	(238, 'CELULAR', '098585633', 41021326);
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.authorities
CREATE TABLE IF NOT EXISTS `authorities` (
  `username` varchar(50) DEFAULT NULL,
  `authority` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.authorities: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
REPLACE INTO `authorities` (`username`, `authority`) VALUES
	('raul', 'ROLE_USER'),
	('gaby', 'ROLE_ADMIN');
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.aux_precios
CREATE TABLE IF NOT EXISTS `aux_precios` (
  `aux_prec_id` int(11) NOT NULL,
  `aux_prec_id_list` int(11) DEFAULT NULL,
  `aux_prec_fech_ini` date DEFAULT NULL,
  `aux_prec_fech_fin` date DEFAULT NULL,
  `aux_prec_descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`aux_prec_id`),
  UNIQUE KEY `aux_prec_fech_ini_aux_prec_fech_fin` (`aux_prec_fech_ini`,`aux_prec_fech_fin`),
  KEY `FK_aux_precios_lista_precios` (`aux_prec_id_list`),
  CONSTRAINT `FK_aux_precios_lista_precios` FOREIGN KEY (`aux_prec_id_list`) REFERENCES `lista_precios` (`list_prec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.aux_precios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `aux_precios` DISABLE KEYS */;
/*!40000 ALTER TABLE `aux_precios` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.direccion
CREATE TABLE IF NOT EXISTS `direccion` (
  `dir_id` int(11) NOT NULL AUTO_INCREMENT,
  `tpo_Vivienda` varchar(50) DEFAULT NULL,
  `calle` varchar(50) DEFAULT NULL,
  `nro_Puerta` int(11) DEFAULT NULL,
  `nro_Ap` int(11) DEFAULT NULL,
  `calle_1` varchar(50) DEFAULT NULL,
  `calle_2` varchar(50) DEFAULT NULL,
  `pac_cedula` int(8),
  PRIMARY KEY (`dir_id`),
  KEY `pacientes_direccion` (`pac_cedula`),
  CONSTRAINT `pacientes_direccion` FOREIGN KEY (`pac_cedula`) REFERENCES `pacientes` (`cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.direccion: ~37 rows (aproximadamente)
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
REPLACE INTO `direccion` (`dir_id`, `tpo_Vivienda`, `calle`, `nro_Puerta`, `nro_Ap`, `calle_1`, `calle_2`, `pac_cedula`) VALUES
	(32, 'CASA', 'Cairoli', 2076, 0, 'Avenida Italia', 'Abalos', 44188684),
	(33, 'CASA', 'Roldos y Pons', 2020, 0, 'Robinson', 'Berlin', 44247486),
	(37, 'APARTAMENTO', '18 de Julio', 2082, 106, 'Martin C Martinez', 'Requena', 24578956),
	(38, 'CASA', 'Gabriel Otero', 1450, 0, 'Bolonia', 'Dublin', 42542474),
	(39, 'CASA', 'Roldos y Pons', 2522, 201, 'Robinson', 'Berlin', 14578958),
	(40, 'CASA', 'Federico Garia Lorca', 4050, 0, '', '', 24577742),
	(41, 'CASA', 'Av A la Palaya', 1020, 0, 'Gianatasio', '', 44588795),
	(66, 'CASA', 'Cairoli', 2076, 0, 'Avenida Italia', 'Abalos', 19455549),
	(67, 'APARTAMENTO', 'Palmar', 2124, 104, 'Requena', 'Paulier', 19455549),
	(68, 'CASA', '18 de Julio', 2015, 205, 'Martin C Martinez', 'Requena', 45698741),
	(69, 'APARTAMENTO', 'Palmar', 2180, 104, 'Requena', 'Paulier', 10042763),
	(70, 'APARTAMENTO', 'Feliciano Rodriguez', 2010, 107, 'Ramon Anador', 'Rivera', 12456637),
	(71, 'CASA', 'Cardal', 1046, 0, 'Francisco Simon', 'Luis Alberto de Herrera', 35465475),
	(72, 'APARTAMENTO', 'Pirineos', 2823, 1, '8 de Octubre', 'Mateo Cortes', 42629707),
	(73, 'CASA', 'Dublin', 2015, 0, 'Mones Roses', 'Pedro Domingo Murillo', 54145782),
	(74, 'APARTAMENTO', 'General Paz', 1506, 1005, 'Mones Roses', 'Pedro Domingo Murillo', 54145782),
	(144, 'CASA', 'San José', 2015, 0, 'Rio Negro', 'Paraguay', 24567896),
	(145, 'APARTAMENTO', 'Cerro Largo', 2425, 4, 'Juan Carlos Gomez', 'Treinta y Tres', 24157481),
	(146, 'APARTAMENTO', 'Gaboto', 2056, 105, 'Colonia', 'Mercedes', 45789653),
	(147, 'APARTAMENTO', 'Luis Alberto de Herrera', 2015, 405, 'Montes Caseros', 'Otra', 45156898),
	(148, 'CASA', 'Sevilla', 1478, 0, '', '', 25890747),
	(157, 'APARTAMENTO', 'Palmar', 200, 1212, 'Requena', 'Paulier', 32145771),
	(158, 'CASA', 'Palmar', 2020, 0, 'Requena', 'Paulier', 23364786),
	(159, 'CASA', 'Cairoli', 3030, 0, 'Abalos', 'Massini', 32124561),
	(160, 'CASA', 'Interbalnearea km 22', 0, 0, '', '', 41547843),
	(161, 'APARTAMENTO', 'Francisco Simón', 2015, 105, 'Cairoli', 'Minesota', 65453215),
	(162, 'APARTAMENTO', '18 de Julio', 1745, 5, 'Tacuarembó', 'Carlos Roxlo', 54324322),
	(217, 'APARTAMENTO', 'Gonzalo Ramirez', 2145, 105, 'Garzon', 'Av Italia', 29584732),
	(218, 'APARTAMENTO', '18 de Julio', 2024, 204, 'Martin C Martinez', 'Pablo de Maria', 31245675),
	(219, 'CASA', 'Gianatassio', 6050, 0, '', '', 31245675),
	(220, 'APARTAMENTO', '18 de Julio', 3020, 5, 'Convencion', 'Andes', 41578943),
	(221, 'APARTAMENTO', '18 de Julio', 3010, 1020, 'Convencion', 'Andes', 62135218),
	(222, 'CASA', 'Av Italia', 2020, 0, 'Comercio', 'Sevilla', 51234568),
	(223, 'CASA', 'Av A la Paya', 2010, 0, '', '', 31245697),
	(224, 'APARTAMENTO', 'Av Brasil', 4012, 2408, 'Masini', 'Chucarro', 31245697),
	(225, 'CASA', 'Cairoli', 2484, 0, 'Masini', 'Abalos', 45213216),
	(226, 'CASA', 'Corrales', 2845, 0, 'Galvani', 'Emilio Zola', 41214153),
	(227, 'APARTAMENTO', 'Bartolome Mitre', 1416, 6, 'Sarandi', 'Buenos Aires', 54152636),
	(228, 'APARTAMENTO', 'Benito Blanco', 1425, 1003, 'Av Brasil', 'Bulevar España', 29144124),
	(229, 'APARTAMENTO', 'Rivera', 2124, 203, 'Requena', 'Paulier', 42154126),
	(230, 'CASA', 'Rivera', 2124, 0, 'Requena', 'Paulier', 61234566),
	(231, 'CASA', 'Rivera', 2050, 0, 'Requena', 'Paulier', 41021326);
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.domain_user
CREATE TABLE IF NOT EXISTS `domain_user` (
  `dom_usr_id` int(11) NOT NULL,
  `dom_usr_nom` varchar(50) NOT NULL,
  `dom_usr_ap` varchar(50) NOT NULL,
  `dom_usr_nic` varchar(50) NOT NULL,
  `dom_usr_pass` varchar(50) NOT NULL,
  PRIMARY KEY (`dom_usr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.domain_user: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `domain_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `domain_user` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) DEFAULT NULL,
  `group_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.groups_authorities
CREATE TABLE IF NOT EXISTS `groups_authorities` (
  `group_id` int(11) DEFAULT NULL,
  `authority` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.groups_authorities: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `groups_authorities` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_authorities` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.groups_members
CREATE TABLE IF NOT EXISTS `groups_members` (
  `group_id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.groups_members: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `groups_members` DISABLE KEYS */;
REPLACE INTO `groups_members` (`group_id`, `username`) VALUES
	(1, 'raul');
/*!40000 ALTER TABLE `groups_members` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.historial_pagos
CREATE TABLE IF NOT EXISTS `historial_pagos` (
  `hist_pagos_id` int(11) NOT NULL AUTO_INCREMENT,
  `hist_pagos_trat_pac_id` int(11) DEFAULT NULL,
  `hist_pagos_fecha_pago` date DEFAULT NULL,
  `hist_pagos_monto` int(11) DEFAULT NULL,
  PRIMARY KEY (`hist_pagos_id`),
  KEY `hist__pagos_trat_pac_id` (`hist_pagos_trat_pac_id`),
  CONSTRAINT `FK_historial_pagos_tratamiento_paciente` FOREIGN KEY (`hist_pagos_trat_pac_id`) REFERENCES `tratamiento_paciente` (`trat_pac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.historial_pagos: ~85 rows (aproximadamente)
/*!40000 ALTER TABLE `historial_pagos` DISABLE KEYS */;
REPLACE INTO `historial_pagos` (`hist_pagos_id`, `hist_pagos_trat_pac_id`, `hist_pagos_fecha_pago`, `hist_pagos_monto`) VALUES
	(1, 42, '2014-11-19', 5000),
	(2, 41, '2014-11-19', 500),
	(3, 41, '2014-11-19', 500),
	(4, 41, '2014-11-19', 500),
	(5, 41, '2014-11-19', 500),
	(6, 41, '2014-11-19', 500),
	(7, 41, '2014-11-19', 300),
	(8, 41, '2014-11-19', 400),
	(9, 42, '2014-11-19', 100),
	(10, 41, '2014-11-19', 200),
	(11, 41, '2014-11-19', 200),
	(12, 41, '2014-11-20', 200),
	(13, 41, '2014-11-20', 300),
	(14, 41, '2014-11-20', 300),
	(15, 41, '2014-11-20', 300),
	(16, 41, '2014-11-20', 200),
	(17, 41, '2014-11-20', 1300),
	(18, 42, '2014-11-20', -1000),
	(19, 39, '2014-11-20', 1000),
	(20, 39, '2014-11-20', 500),
	(21, 43, '2014-11-20', 1500),
	(22, 43, '2014-11-20', 2000),
	(23, 43, '2014-11-20', 1500),
	(25, 43, '2014-11-20', 100),
	(27, 43, '2014-11-21', 1900),
	(47, 43, '2014-11-21', 100),
	(48, 43, '2014-11-21', 200),
	(49, 43, '2014-11-21', 300),
	(50, 43, '2014-11-21', 100),
	(51, 43, '2014-11-21', 500),
	(52, 43, '2014-11-21', 300),
	(53, 43, '2014-11-21', 200),
	(54, 43, '2014-11-21', 800),
	(55, 42, '2014-11-21', 300),
	(56, 42, '2014-11-21', -300),
	(57, 43, '2014-11-21', 1500),
	(58, 44, '2014-11-21', 3500),
	(59, 44, '2014-11-21', 300),
	(60, 44, '2014-11-21', 1500),
	(61, 45, '2014-11-21', 200),
	(62, 44, '2014-11-21', 200),
	(63, 45, '2014-11-21', 1000),
	(64, 44, '2014-11-21', 1000),
	(65, 44, '2014-11-22', 500),
	(66, 44, '2014-11-22', 500),
	(67, 44, '2014-11-22', 500),
	(68, 44, '2014-11-23', 200),
	(69, 44, '2014-11-23', 100),
	(70, 43, '2014-11-23', 500),
	(71, 46, '2014-11-23', 500),
	(72, 46, '2014-11-24', 1500),
	(73, 47, '2014-11-24', 500),
	(74, 47, '2014-11-24', 2000),
	(75, 47, '2014-11-25', 2000),
	(76, 48, '2014-11-25', 5500),
	(77, 48, '2014-11-25', 3),
	(78, 48, '2014-11-25', 2997),
	(79, 49, '2014-11-28', 800),
	(80, 27, '2014-11-30', 650),
	(81, 50, '2014-12-01', 500),
	(82, 49, '2014-12-01', 5000),
	(83, 51, '2014-12-01', 5000),
	(84, 56, '2014-12-01', 2000),
	(85, 57, '2014-12-01', 6500),
	(86, 56, '2014-12-01', 300),
	(87, 58, '2014-12-01', 6500),
	(88, 56, '2014-12-01', 100),
	(89, 60, '2014-12-01', 2500),
	(90, 61, '2014-12-01', 490),
	(91, 62, '2014-12-01', 6500),
	(92, 63, '2014-12-01', 4000),
	(93, 65, '2014-12-01', 4500),
	(94, 66, '2014-12-01', 450),
	(95, 64, '2014-12-01', 8400),
	(96, 56, '2014-12-01', 100),
	(97, 57, '2014-12-01', 2000),
	(98, 64, '2014-12-01', 100),
	(99, 59, '2014-12-01', 4500),
	(100, 68, '2014-12-01', 1500),
	(101, 31, '2014-12-01', 850),
	(102, 70, '2014-12-01', 350),
	(103, 71, '2014-12-01', 1500),
	(104, 71, '2014-12-01', 100),
	(105, 72, '2014-12-01', 7500),
	(106, 73, '2014-12-02', 6000),
	(107, 71, '2014-12-02', 500),
	(108, 74, '2014-12-02', 4000),
	(109, 74, '2014-12-02', 400),
	(110, 67, '2014-12-02', 4000),
	(111, 75, '2014-12-02', 500),
	(112, 76, '2014-12-02', 9100),
	(113, 76, '2014-12-04', 400),
	(114, 41, '2014-11-19', 300);
/*!40000 ALTER TABLE `historial_pagos` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.historia_clinica
CREATE TABLE IF NOT EXISTS `historia_clinica` (
  `hist_id` int(11) NOT NULL AUTO_INCREMENT,
  `pac_cedula` int(8) DEFAULT NULL,
  `diabetes` int(11) DEFAULT NULL,
  `epilepsia` int(11) DEFAULT NULL,
  `marcaPaso` int(11) DEFAULT NULL,
  `diu` int(11) DEFAULT NULL,
  `problemas_cardiacos` varchar(50) DEFAULT NULL,
  `medicacion` varchar(50) DEFAULT NULL,
  `cant_hijos` int(11) DEFAULT NULL,
  `operaciones` varchar(50) DEFAULT NULL,
  `hipertension` int(11) DEFAULT NULL,
  `procesos_oncologicos` int(11) DEFAULT NULL,
  `tiroides` int(11) DEFAULT NULL,
  `actividad_fisica` varchar(50) DEFAULT NULL,
  `agua_diaria` varchar(50) DEFAULT NULL,
  `alimentacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`hist_id`),
  KEY `pacientes_historia_clinica` (`pac_cedula`),
  CONSTRAINT `paciente_historia` FOREIGN KEY (`pac_cedula`) REFERENCES `pacientes` (`cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.historia_clinica: ~31 rows (aproximadamente)
/*!40000 ALTER TABLE `historia_clinica` DISABLE KEYS */;
REPLACE INTO `historia_clinica` (`hist_id`, `pac_cedula`, `diabetes`, `epilepsia`, `marcaPaso`, `diu`, `problemas_cardiacos`, `medicacion`, `cant_hijos`, `operaciones`, `hipertension`, `procesos_oncologicos`, `tiroides`, `actividad_fisica`, `agua_diaria`, `alimentacion`) VALUES
	(2, 24578956, 1, 1, 1, 1, 'Arritmia', 'Medicacion para la Arritmia', 2, 'NO', 1, 1, 1, 'Mucha', 'Mucha', 'Buena'),
	(3, 42542474, 1, 1, 1, 1, 'NO', 'NO', 4, 'NO', 1, 0, 1, 'MUCHA', 'MUCHA', 'BUENA'),
	(4, 14578958, 1, 1, 1, 1, 'Arritmia', 'Medicacion para la Arritmia', 1, 'Apendicitis', 1, 1, 1, 'Natacion, Gimnasia', '3 Litros diarios', 'Variada, preferente vegetariana'),
	(5, 24577742, 1, 1, 1, 1, 'No', 'Para Dormir', 1, 'Hernia Inguinal', 1, 1, 1, 'Gimnasia Artistica, Aparatos', '3 Litros diarios', 'Variada'),
	(6, 44588795, 1, 1, 1, 1, 'NO', 'NO', 0, 'Tumor Cerebral Benigno', 1, 0, 1, 'Gimnasia Artistica, Aparatos', '3 Litros diarios', 'Variada, preferente vegetariana'),
	(15, 19455549, 0, 0, 0, 0, '', '', 0, 'Amigdalas', 1, 0, 0, 'Artes Marciales, Pesas', '3 Litros diarios', 'Variada, preferente vegetariana'),
	(16, 45698741, 1, 0, 0, 1, '', '', 2, 'Apendicitis', 0, 0, 1, '', '2 Litros Diarios', 'Buena, Variada'),
	(17, 10042763, 0, 0, 0, 0, '', 'Enalapril, Alprazolan', 2, '2 Cesáreas, Metatarsos.', 1, 0, 0, 'Yoga', '1 Litro Diario', 'Variada, preferente vegetariana'),
	(18, 12456637, 1, 1, 1, 1, 'Arritmia', 'Ipertension', 3, 'Apendicitis', 1, 0, 1, 'Natacion, Gimnasia', '1 Litro Diario', 'Variada, preferente vegetariana'),
	(19, 35465475, 0, 0, 0, 1, '', '', 1, 'Cesarea', 0, 0, 0, 'Correr', '2 Litros Diarios', 'Variada, preferente vegetariana'),
	(20, 42629707, 0, 0, 0, 0, '', '', 1, '', 1, 0, 0, '', '1 Litro Diario', 'BUENA'),
	(21, 54145782, 0, 0, 0, 1, '', '', 4, 'Cesarea', 1, 0, 0, 'Gimnasia Artistica, Aparatos', '3 Litros diarios', 'Variada, preferente vegetariana'),
	(92, 24567896, 0, 0, 0, 0, '', '', 2, 'Cesarea', 1, 0, 0, 'Gimnasia Artistica, Aparatos', '1 Litro Diario', 'Buena, Variada'),
	(93, 24157481, 0, 0, 0, 1, '', '', 0, '', 0, 0, 1, '', '2 Litros Diarios', 'Variada, preferente vegetariana'),
	(94, 45789653, 1, 1, 1, 0, 'Arritmia', 'Medicacion para la Arritmia', 2, '', 1, 0, 0, '', '3 Litros diarios', 'Buena, Variada'),
	(95, 45156898, 1, 0, 0, 0, '', '', 0, '', 0, 0, 1, '', '2 Litros Diarios', 'Variada, preferente vegetariana'),
	(96, 25890747, 1, 0, 0, 0, '', '', 0, '', 1, 0, 1, '', '2', 'Buena, Variada'),
	(105, 32145771, 0, 0, 0, 0, '', '', 0, '', 0, 0, 0, 'Gimnasia Artistica, Aparatos', '3 Litros diarios', 'Variada, preferente vegetariana'),
	(106, 23364786, 1, 1, 0, 1, '', '', 0, '', 0, 0, 0, '', '', ''),
	(107, 32124561, 1, 1, 1, 1, '', '', 0, '', 0, 0, 0, '', '', ''),
	(108, 41547843, 1, 0, 0, 1, '', '', 2, '2 Cesareas', 0, 0, 0, 'Yoga', '2 Litros Diarios', 'Vegetariana'),
	(109, 65453215, 0, 0, 0, 1, '', '', 1, 'Cesarea', 0, 0, 0, 'Yoga', '2 Litros Diarios', 'Vegetariana'),
	(110, 54324322, 0, 0, 0, 1, '', '', 0, '', 1, 0, 1, '', '', ''),
	(168, 29584732, 1, 0, 0, 1, '', 'Para la Hipertension', 3, 'Cesarea', 1, 0, 0, 'Correr', '3 Litros diarios', 'Variada'),
	(169, 31245675, 0, 0, 0, 1, '', 'Para la Hipertension', 3, '', 1, 0, 0, 'Correr', '3 Litros diarios', 'VARIADA'),
	(170, 41578943, 0, 0, 0, 1, '', '', 1, 'Cesarea', 0, 0, 0, 'Gimnasia', '3 Litros diarios', 'VARIADA'),
	(171, 62135218, 1, 0, 0, 0, '', 'Para la Hipertension', 2, 'Cesarea', 1, 0, 0, 'Gimnasia', 'POCA', ''),
	(172, 51234568, 0, 0, 0, 1, '', '', 1, '', 1, 0, 0, 'Deportes Varios', '2 litros aprox', 'Variada'),
	(173, 31245697, 0, 0, 0, 1, '', '', 3, 'Cesarea', 0, 0, 0, 'Deportes Varios', '2 litros aprox', 'Variada'),
	(174, 45213216, 1, 0, 1, 0, 'Arritmia', 'Anticuagulantes', 3, 'Cesarea', 0, 0, 0, 'Deportes Varios', '2 litros aprox', 'Variada'),
	(175, 41214153, 0, 0, 0, 0, '', '', 1, '', 0, 0, 1, 'Deportes Varios', '2 litros aprox', 'Variada'),
	(176, 54152636, 0, 0, 0, 1, 'Arritmia', 'Para la arritmia', 2, 'Cesarea', 1, 0, 0, '', '', ''),
	(177, 29144124, 1, 1, 0, 1, 'Arritmia', 'Anticuagulantes', 3, 'Cesarea', 1, 0, 0, 'Deportes Varios', '2 litros aprox', 'Variada'),
	(178, 42154126, 1, 1, 1, 1, '', '', 0, '', 1, 0, 1, 'Poca', 'Poca', 'Variada'),
	(179, 61234566, 0, 0, 0, 0, '', '', 2, '', 0, 0, 0, 'Gimnasia', '2 litros', 'Variada'),
	(180, 41021326, 0, 0, 0, 0, '', '', 0, '', 0, 0, 0, 'Gimnasia', '2 litros', 'Variada');
/*!40000 ALTER TABLE `historia_clinica` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.lista_precios
CREATE TABLE IF NOT EXISTS `lista_precios` (
  `list_prec_id` int(11) DEFAULT NULL,
  `list_prec_id_trat` int(11) DEFAULT NULL,
  `list_prec_monto` int(11) DEFAULT NULL,
  UNIQUE KEY `list_prec_id_list_prec_id_trat` (`list_prec_id`,`list_prec_id_trat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.lista_precios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `lista_precios` DISABLE KEYS */;
REPLACE INTO `lista_precios` (`list_prec_id`, `list_prec_id_trat`, `list_prec_monto`) VALUES
	(1, 2, 100),
	(1, 7, 200),
	(1, 8, 300),
	(1, 9, 400),
	(1, 11, 500),
	(1, 12, 600),
	(1, 16, 700),
	(1, 17, 800),
	(1, 19, 900),
	(1, 20, 1000),
	(1, 21, 1100),
	(1, 22, 1200),
	(2, 2, 100),
	(2, 7, 200),
	(2, 8, 300),
	(2, 9, 400),
	(2, 11, 500),
	(2, 12, 600),
	(2, 16, 700),
	(2, 17, 800),
	(2, 19, 900),
	(2, 20, 1000),
	(2, 21, 1100),
	(2, 22, 1200);
/*!40000 ALTER TABLE `lista_precios` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.pacientes
CREATE TABLE IF NOT EXISTS `pacientes` (
  `pac_id` int(11) NOT NULL AUTO_INCREMENT,
  `pac_nombre` varchar(50) DEFAULT NULL,
  `pac_apellido` varchar(50) DEFAULT NULL,
  `cedula` int(8) DEFAULT NULL,
  `pac_ocupacion` varchar(50) DEFAULT NULL,
  `pac_soc_med` varchar(50) DEFAULT NULL,
  `pac_em_movil` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pac_id`),
  UNIQUE KEY `cedula` (`cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.pacientes: ~34 rows (aproximadamente)
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
REPLACE INTO `pacientes` (`pac_id`, `pac_nombre`, `pac_apellido`, `cedula`, `pac_ocupacion`, `pac_soc_med`, `pac_em_movil`) VALUES
	(99, 'Gabriela', 'Silveira', 44188684, 'Masajista', 'CASMU', 'SUAT'),
	(100, 'Luisa', 'Silveira', 44247486, 'Cajera', 'La Española ', 'SUAT'),
	(106, 'Maria', 'Fernandez', 24578956, 'Arquitecto', 'La Española ', 'SMI'),
	(107, 'Florencia', 'Gonzalez', 42542474, 'Medica', 'CASMU', 'SUAT'),
	(110, 'Carina', 'Gomez', 14578958, 'Empleada', 'CASMU', 'SUAT'),
	(111, 'Daniela', 'Rodriguez', 24577742, 'Empresaria', 'La Española ', 'SUAT'),
	(112, 'Leticia', 'Firpo', 44588795, 'Escribana', 'CASMU', 'SUAT'),
	(132, 'Raul', 'Hernandez', 19455549, 'Programador', 'CASMU', 'SUAT'),
	(133, 'Maria', 'Gonzalez', 45698741, 'Cajera', 'La Española ', 'SMI'),
	(134, 'Maria del Carmen', 'de Pablos', 10042763, 'Jubilada', 'ASSE', 'NO'),
	(135, 'Marianela', 'Rodriguez', 12456637, 'Abogada', 'CASMU', 'SUAT'),
	(136, 'Lucia', 'Bermudez', 35465475, 'Comerciante', 'CASMU', 'SEM'),
	(137, 'Fernando', 'Quiroga', 42629707, 'Amo de Casa', 'GRENCA', 'SUAT'),
	(138, 'Elisa', 'Introinni', 54145782, 'Secretaria', 'CASMU', 'SEM'),
	(209, 'Natalia', 'Mederos', 24567896, 'Escribana', 'La Española ', 'SMI'),
	(210, 'Fernanda', 'Lacco', 24157481, 'Diseñadora', 'Hospital Britanico', 'SUAT'),
	(211, 'Mario', 'Cabrera', 45789653, 'Medico', 'La Española ', 'SEM'),
	(212, 'Ximena', 'Rodriguez', 45156898, 'Pedicura', 'CASMU', 'SUAT'),
	(213, 'jessi', 'Martínez ', 25890747, 'Enfermera ', 'Médica Uruguaya ', 'SEM'),
	(223, 'Natalia', 'Gonzalez', 32145771, 'Cajera', 'CASMU', 'SUAT'),
	(224, 'Fiorela', 'Lacco', 23364786, 'Medica', 'CASMU', 'SUAT'),
	(225, 'Marcela', 'Perdomo', 32124561, 'Maestra', 'CASMU', 'SUAT'),
	(226, 'Fernanda', 'Martinez', 41547843, 'Escribana', 'La Española', 'SUAT'),
	(227, 'Marianela', 'Caputto', 65453215, 'Secretaria', 'La Española', 'SUAT'),
	(228, 'Daniela', 'Gonzalez', 54324322, 'Empleada', 'CASMU', 'SUAT'),
	(284, 'Alejandra', 'Gomez', 29584732, 'Empleada', 'La Española', 'SUAT'),
	(285, 'Patricia', 'Martinez', 31245675, 'Odontologa', 'CASMU', 'SUAT'),
	(286, 'Marianela', 'Fernandez', 41578943, 'Escribana', 'CASMU', 'SUAT'),
	(287, 'Claudia', 'Benitez', 62135218, 'Empleada', 'CASMU', 'SUAT'),
	(288, 'Laura', 'Paulier', 51234568, 'Escribana', 'CASMU', 'SUAT'),
	(289, 'Analia', 'Rubio', 31245697, 'Empresaria', 'Hospital Britanico', 'SUAT'),
	(290, 'Maria', 'Perez', 45213216, 'Administrativa', 'SMI', 'SEM'),
	(291, 'Elida', 'Martinez', 41214153, 'Empleada', 'Hospital Militar', 'SUAT'),
	(292, 'Lorena', 'Errico', 54152636, 'Maestra', 'CASMU', 'SUAT'),
	(293, 'Patricia', 'Soca', 29144124, 'Docente', 'La Española', 'SEM'),
	(294, 'Camila', 'Perez', 42154126, 'Empleada', 'CASMU', 'SUAT'),
	(295, 'Florencia', 'Chavez', 61234566, 'Arquitecta', 'CASMU', 'SUAT'),
	(296, 'Leticia', 'Lacorte', 41021326, 'Arquitecta', 'CASMU', 'SUAT');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.seguimiento_pacientes
CREATE TABLE IF NOT EXISTS `seguimiento_pacientes` (
  `seg_pac_id` int(11) NOT NULL AUTO_INCREMENT,
  `trat_pac_id` int(11) NOT NULL,
  `fecha_control` varchar(50) DEFAULT NULL,
  `brazo_izquierdo` int(11) DEFAULT NULL,
  `brazo_derecho` int(11) DEFAULT NULL,
  `muzlo_izquierdo` int(11) DEFAULT NULL,
  `muzlo_derecho` int(11) DEFAULT NULL,
  `abdomen` int(11) DEFAULT NULL,
  `cintura` int(11) DEFAULT NULL,
  `cadera` int(11) DEFAULT NULL,
  `peso` int(11) DEFAULT NULL,
  `imc` double unsigned DEFAULT NULL,
  `observaciones` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`seg_pac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.seguimiento_pacientes: ~15 rows (aproximadamente)
/*!40000 ALTER TABLE `seguimiento_pacientes` DISABLE KEYS */;
REPLACE INTO `seguimiento_pacientes` (`seg_pac_id`, `trat_pac_id`, `fecha_control`, `brazo_izquierdo`, `brazo_derecho`, `muzlo_izquierdo`, `muzlo_derecho`, `abdomen`, `cintura`, `cadera`, `peso`, `imc`, `observaciones`) VALUES
	(1, 42, '2014-11-21', 0, 0, 0, 0, 0, 0, 0, 50, 50.4, 'observaciones'),
	(2, 42, '2014-11-21', 0, 0, 0, 0, 0, 0, 0, 50, 50.4, 'observaciones'),
	(3, 43, '2014-11-21', 0, 0, 0, 0, 0, 0, 0, 50, 50.4, 'observaciones'),
	(4, 43, '2014-11-21', 0, 0, 0, 0, 0, 0, 0, 40, 50.4, 'observaciones'),
	(5, 43, '2014-11-21', 42, 42, 60, 60, 60, 40, 40, 60, 40, 'Prueba'),
	(6, 43, '2014-11-21', 42, 42, 60, 60, 60, 40, 40, 60, 40, 'Prueba'),
	(7, 43, '2014-11-21', 42, 42, 60, 60, 60, 40, 40, 60, 40.1, 'Prueba2'),
	(8, 43, '2014-11-21', 50, 50, 80, 80, 100, 50, 50, 78, 80.5, 'Prueba3'),
	(9, 41, '2014-11-21', 40, 40, 60, 60, 80, 40, 90, 60, 40.2, 'Prueba 1'),
	(10, 43, '2014-11-21', 35, 35, 50, 50, 60, 60, 90, 55, 12.4, 'Otra prueba'),
	(11, 44, '2014-11-21', 35, 35, 60, 60, 90, 60, 90, 55, 20.6, 'Prueba 1'),
	(12, 45, '2014-11-21', 20, 20, 50, 50, 100, 80, 89, 90, 28.3, 'Esta bastante gorda'),
	(13, 44, '2014-11-22', 30, 30, 55, 55, 80, 50, 80, 50, 18.4, 'Mejorando'),
	(14, 46, '2014-11-23', 30, 30, 60, 60, 120, 90, 90, 80, 20.8, 'Inicio '),
	(15, 47, '2014-11-24', 20, 20, 60, 60, 120, 90, 130, 60, 14.7, 'Comienzo de Tratamiento'),
	(16, 48, '2014-11-25', 20, 20, 60, 60, 120, 90, 120, 56, 12.3, 'Se evalua en primer sesion'),
	(17, 56, '2014-12-01', 20, 20, 20, 20, 20, 20, 90, 74, 20.4, 'rtyrt'),
	(18, 67, '2014-12-02', 40, 40, 70, 70, 90, 90, 90, 79, 20.5, 'Todo Ok'),
	(19, 43, '2014-11-21', 42, 42, 60, 60, 60, 40, 40, 60, 40.1, 'Prueba2');
/*!40000 ALTER TABLE `seguimiento_pacientes` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.sesiones
CREATE TABLE IF NOT EXISTS `sesiones` (
  `ses_id` int(11) NOT NULL AUTO_INCREMENT,
  `ses_trat_pac_id` int(11) NOT NULL,
  `ses_cantidad` int(11) NOT NULL,
  `sesiones_realizadas` int(11) NOT NULL,
  `sesiones_pendientes` int(11) NOT NULL,
  `ses_fecha_reserva` date DEFAULT NULL,
  `ses_estado_realizada` varchar(50) DEFAULT NULL,
  `ses_estado_vigencia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ses_id`),
  KEY `sesion_tratamiento` (`ses_trat_pac_id`),
  CONSTRAINT `sesion_tratamiento` FOREIGN KEY (`ses_trat_pac_id`) REFERENCES `tratamiento_paciente` (`trat_pac_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.sesiones: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sesiones` DISABLE KEYS */;
/*!40000 ALTER TABLE `sesiones` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.ses_realizadas
CREATE TABLE IF NOT EXISTS `ses_realizadas` (
  `ses_realizada_id` int(11) NOT NULL,
  `ses_id` int(11) NOT NULL,
  `ses_cant` int(11) NOT NULL,
  `ses_fecha_realizada` int(11) NOT NULL,
  PRIMARY KEY (`ses_realizada_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.ses_realizadas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ses_realizadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ses_realizadas` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.tipo_tratamiento
CREATE TABLE IF NOT EXISTS `tipo_tratamiento` (
  `tip_trat_id` int(11) NOT NULL AUTO_INCREMENT,
  `tip_trat_descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tip_trat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.tipo_tratamiento: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_tratamiento` DISABLE KEYS */;
REPLACE INTO `tipo_tratamiento` (`tip_trat_id`, `tip_trat_descripcion`) VALUES
	(1, 'Relax'),
	(2, 'Terapeutico'),
	(3, 'Modelador'),
	(4, 'Estetico'),
	(9, 'Cuponera'),
	(11, 'Promocion');
/*!40000 ALTER TABLE `tipo_tratamiento` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.tratamiento
CREATE TABLE IF NOT EXISTS `tratamiento` (
  `trat_id` int(11) NOT NULL AUTO_INCREMENT,
  `trat_tpo_id` int(11) DEFAULT NULL,
  `trat_descripcion` varchar(200) NOT NULL,
  `trat_cant_sesiones` int(11) DEFAULT '1',
  PRIMARY KEY (`trat_id`),
  KEY `FK_tratamiento_tipo_tratamiento` (`trat_tpo_id`),
  CONSTRAINT `FK_tratamiento_tipo_tratamiento` FOREIGN KEY (`trat_tpo_id`) REFERENCES `tipo_tratamiento` (`tip_trat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.tratamiento: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `tratamiento` DISABLE KEYS */;
REPLACE INTO `tratamiento` (`trat_id`, `trat_tpo_id`, `trat_descripcion`, `trat_cant_sesiones`) VALUES
	(2, 3, 'Ultracavitacion', 1),
	(7, 9, '10 Sesiones de 1/2 Hora de presoterapia, y 1/2 Hora de Ultracavitacion', 10),
	(8, 9, '15 Sesiones de 15 minutos Ultrasonido', 15),
	(9, 9, '6 Sesiones Ultracavitacion, 8 Sesiones Plissage, 2 Sesiones de Presoterapia, 4 Sesiones de Electrodos', 20),
	(11, 9, '10 Sesiones 1/2 hora de Plisagge + 10 Sesiones 1/2 hora de Electrodos.', 20),
	(12, 4, 'Peeling', 1),
	(16, 2, 'Ultrasonido', 1),
	(17, 2, 'Masaje de Espalda', 1),
	(19, 9, '8 sesiones de masaje muslos', 8),
	(20, 2, '5 Sesiones de Masaje de Espalda', 5),
	(21, 2, '10 Sesiones de Masaje de Muzlos, 10 Sesiones de Ultrasonido, 10 Sesiones de Tens', 30),
	(22, 9, '20 Sesiones de Masaje Descontracturante', 20);
/*!40000 ALTER TABLE `tratamiento` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.tratamiento_paciente
CREATE TABLE IF NOT EXISTS `tratamiento_paciente` (
  `trat_pac_id` int(11) NOT NULL AUTO_INCREMENT,
  `pac_cedula` int(11),
  `trat_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `costo_tratamiento` int(11) DEFAULT NULL,
  `importe_pagado` int(11) DEFAULT NULL,
  `saldo_pendiente` int(11) DEFAULT NULL,
  `cant_sesiones` int(11) DEFAULT NULL,
  PRIMARY KEY (`trat_pac_id`),
  KEY `Pacientes` (`pac_cedula`),
  CONSTRAINT `Pacientes` FOREIGN KEY (`pac_cedula`) REFERENCES `pacientes` (`cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1 COMMENT='private int tratPacId;\r\nprivate Date fecha;\r\nprivate Pacientes pacientes;\r\nprivate Tratamiento tratamiento;\r\nprivate int cantSesiones;\r\nprivate int sesionesRealizadas;\r\nprivate int sesionesPendientes;\r\nprivate int costoTratamiento;\r\nprivate int importePagado;\r\nprivate int saldoPendiente;';

-- Volcando datos para la tabla est_vaucher.tratamiento_paciente: ~37 rows (aproximadamente)
/*!40000 ALTER TABLE `tratamiento_paciente` DISABLE KEYS */;
REPLACE INTO `tratamiento_paciente` (`trat_pac_id`, `pac_cedula`, `trat_id`, `fecha`, `costo_tratamiento`, `importe_pagado`, `saldo_pendiente`, `cant_sesiones`) VALUES
	(27, 24567896, 12, '2014-09-25', 650, 650, 0, 11),
	(28, 24157481, 2, '2014-09-25', 850, 0, 850, 12),
	(29, 45789653, 8, '2014-10-02', 8500, 0, 8500, 2),
	(30, 45156898, 9, '2014-10-08', 6400, 0, 6400, 1),
	(31, 25890747, 17, '2014-10-02', 850, 850, 0, 10),
	(32, 23364786, 9, '2014-10-20', 5600, 0, 5600, 20),
	(39, 29584732, 9, '2014-11-05', 12500, 9000, 3500, 20),
	(40, 31245675, 7, '2014-11-06', 6500, 6500, 0, 10),
	(41, 41578943, 9, '2014-11-06', 10500, 10700, -200, 20),
	(42, 62135218, 8, '2014-11-07', 6500, 6500, 0, 15),
	(43, 51234568, 7, '2014-11-20', 11500, 11500, 0, 10),
	(44, 31245697, 8, '2014-11-21', 8500, 8300, 200, 15),
	(45, 45213216, 9, '2014-11-21', 2000, 2000, 0, 20),
	(46, 41214153, 9, '2014-11-23', 8500, 2000, 6500, 20),
	(47, 54152636, 19, '2014-11-24', 8500, 4500, 4000, 8),
	(48, 29144124, 7, '2014-11-25', 8500, 8500, 0, 10),
	(49, 42154126, 7, '2014-11-28', 5800, 5800, 0, 10),
	(50, 42154126, 7, '2014-12-01', 8500, 500, 8000, 10),
	(51, 42154126, 8, '2014-12-01', 9000, 5000, 4000, 15),
	(56, 44188684, 8, '2014-12-01', 2500, 2500, 0, 15),
	(57, 44188684, 9, '2014-12-01', 8500, 8500, 0, 20),
	(58, 44247486, 7, '2014-12-01', 6500, 6500, 0, 10),
	(59, 24578956, 9, '2014-12-01', 4500, 4500, 0, 20),
	(60, 19455549, 8, '2014-12-01', 2500, 2500, 0, 15),
	(61, 19455549, 17, '2014-12-01', 490, 490, 0, 1),
	(62, 14578958, 9, '2014-12-01', 8500, 6500, 2000, 20),
	(63, 41578943, 7, '2014-12-01', 4500, 4000, 500, 10),
	(64, 44188684, 8, '2014-12-01', 8500, 8500, 0, 15),
	(65, 61234566, 19, '2014-12-01', 4500, 4500, 0, 8),
	(66, 41021326, 17, '2014-12-01', 450, 450, 0, 1),
	(67, 19455549, 19, '2014-12-01', 4500, 4000, 500, 8),
	(68, 10042763, 20, '2014-12-01', 2100, 1500, 600, 5),
	(69, 25890747, 20, '2014-12-01', 2100, 0, 2100, 5),
	(70, 45698741, 16, '2014-12-01', 350, 350, 0, 1),
	(71, 44188684, 8, '2014-12-01', 2100, 2100, 0, 15),
	(72, 35465475, 9, '2014-12-01', 7600, 7500, 100, 20),
	(73, 12456637, 9, '2014-12-02', 6700, 6000, 700, 20),
	(74, 44188684, 20, '2014-12-02', 4400, 4400, 0, 5),
	(75, 24578956, 19, '2014-12-02', 5200, 500, 4700, 8),
	(76, 41021326, 11, '2014-12-02', 9500, 9500, 0, 20);
/*!40000 ALTER TABLE `tratamiento_paciente` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.users
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `enabled` int(1) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.users: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`username`, `password`, `enabled`) VALUES
	('gaby', 'gaby20', 1),
	('raul', 'rulo', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
