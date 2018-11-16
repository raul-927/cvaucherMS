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
DROP DATABASE IF EXISTS `est_vaucher`;
CREATE DATABASE IF NOT EXISTS `est_vaucher` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `est_vaucher`;


-- Volcando estructura para tabla est_vaucher.agenda
DROP TABLE IF EXISTS `agenda`;
CREATE TABLE IF NOT EXISTS `agenda` (
  `ag_pac_Id` int(11) NOT NULL AUTO_INCREMENT,
  `ag_tipo` varchar(50) NOT NULL,
  `ag_dato` varchar(50) NOT NULL,
  `pac_cedula` int(11) NOT NULL,
  PRIMARY KEY (`ag_pac_Id`),
  KEY `pacientes_agenda` (`pac_cedula`),
  CONSTRAINT `pacientes_agenda` FOREIGN KEY (`pac_cedula`) REFERENCES `pacientes` (`cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.agenda: ~67 rows (aproximadamente)
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
	(238, 'CELULAR', '098585633', 41021326),
	(239, 'CELULAR', '096541230', 32145618),
	(240, 'CELULAR', '096214587', 12034566),
	(241, 'CELULAR', '095414526', 12542339),
	(242, 'CELULAR', '099214536', 25413634),
	(243, 'CELULAR', '096541257', 32145226),
	(244, 'CELULAR', '0995874778', 15478418),
	(245, 'CELULAR', '094547441', 14547886),
	(246, 'CELULAR', '094547441', 31244455),
	(247, 'CELULAR', '094547441', 23413632),
	(248, 'CELULAR', '096321123', 19345033),
	(249, 'TELEFONO', '24085478', 19345033);
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.authorities
DROP TABLE IF EXISTS `authorities`;
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
DROP TABLE IF EXISTS `aux_precios`;
CREATE TABLE IF NOT EXISTS `aux_precios` (
  `aux_prec_id` int(11) NOT NULL AUTO_INCREMENT,
  `aux_prec_id_list` int(11) DEFAULT NULL,
  `aux_prec_fech_ini` date DEFAULT NULL,
  `aux_prec_fech_fin` date DEFAULT NULL,
  `aux_prec_descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`aux_prec_id`),
  UNIQUE KEY `aux_prec_fech_ini_aux_prec_fech_fin` (`aux_prec_fech_ini`,`aux_prec_fech_fin`),
  KEY `aux_prec_id_list` (`aux_prec_id_list`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.aux_precios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `aux_precios` DISABLE KEYS */;
REPLACE INTO `aux_precios` (`aux_prec_id`, `aux_prec_id_list`, `aux_prec_fech_ini`, `aux_prec_fech_fin`, `aux_prec_descripcion`) VALUES
	(26, 1, '2014-12-18', '2015-01-01', 'Lista del 18/12/2014 al 01/01/2015'),
	(27, 2, '2015-01-02', '2015-02-01', 'Lista Verano 2015');
/*!40000 ALTER TABLE `aux_precios` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.cuentas
DROP TABLE IF EXISTS `cuentas`;
CREATE TABLE IF NOT EXISTS `cuentas` (
  `cuenta_id` int(11) NOT NULL AUTO_INCREMENT,
  `cuenta_form_pago_desc` varchar(6) NOT NULL,
  `cuenta_monto` int(11) NOT NULL DEFAULT '0',
  `cuenta_tipo_movimiento` varchar(7) NOT NULL,
  `cuenta_fecha` date NOT NULL,
  PRIMARY KEY (`cuenta_id`),
  KEY `formas_de_pago` (`cuenta_form_pago_desc`),
  CONSTRAINT `formas_de_pago` FOREIGN KEY (`cuenta_form_pago_desc`) REFERENCES `formas_de_pagos` (`form_pag_abreviacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.cuentas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.direccion
DROP TABLE IF EXISTS `direccion`;
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
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.direccion: ~38 rows (aproximadamente)
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
	(231, 'CASA', 'Rivera', 2050, 0, 'Requena', 'Paulier', 41021326),
	(232, 'CASA', 'Massini', 2030, 0, 'Cairoli', 'Luis Alberto de Herrera', 32145618),
	(233, 'CASA', 'Massini', 2020, 0, 'Cairoli', 'Luis Alberto de Herrera', 12034566),
	(234, 'CASA', 'Massini', 6464, 0, 'Cairoli', 'Luis Alberto de Herrera', 12542339),
	(235, 'CASA', 'Arocena', 2034, 0, 'Mones Roses', 'Lieja', 25413634),
	(236, 'CASA', 'Av Gianatassio', 4050, 0, 'Calle1', 'Calle5', 32145226),
	(237, 'CASA', 'Arocena', 1532, 0, 'Mones Roses', 'Lieja', 15478418),
	(238, 'CASA', 'Abalos', 1020, 0, 'Cairoli', 'Luis Alberto de Herrera', 14547886),
	(239, 'CASA', 'Arocena', 3030, 0, 'Mones Roses', 'Lieja', 31244455),
	(240, 'CASA', 'Arocena', 1235, 0, 'Mones Roses', 'Lieja', 23413632),
	(241, 'APARTAMENTO', 'Paulier', 2080, 205, 'Palmar', 'Rivera', 19345033);
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.domain_user
DROP TABLE IF EXISTS `domain_user`;
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


-- Volcando estructura para tabla est_vaucher.formas_de_pagos
DROP TABLE IF EXISTS `formas_de_pagos`;
CREATE TABLE IF NOT EXISTS `formas_de_pagos` (
  `form_pag_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_pag_abreviacion` varchar(6) NOT NULL,
  `form_pag_desc` varchar(50) DEFAULT NULL,
  `form_pag_tipo` varchar(2) NOT NULL,
  PRIMARY KEY (`form_pag_id`),
  KEY `form_pag_abreviacion` (`form_pag_abreviacion`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.formas_de_pagos: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `formas_de_pagos` DISABLE KEYS */;
REPLACE INTO `formas_de_pagos` (`form_pag_id`, `form_pag_abreviacion`, `form_pag_desc`, `form_pag_tipo`) VALUES
	(19, 'EF', 'Efectivo', 'EF'),
	(20, 'OCA', 'Tarjeta Credito Oca', 'TC'),
	(21, 'VISA', 'Tarjeta Credito Visa', 'TC'),
	(22, 'MASTER', 'Tarjeta Credito Master', 'TC'),
	(23, 'DINERS', 'Tarjeta Credito Diners', 'TC'),
	(24, 'AMEX', 'Tarjeta Credito American Express', 'TC'),
	(25, 'BROU', 'Deposito Cuenta Brou', 'DP'),
	(26, 'ANDA', 'Tarjeta Credito Anda', 'TC'),
	(27, 'CRED', 'Credito en Efectivo', 'CE');
/*!40000 ALTER TABLE `formas_de_pagos` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.groups
DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) DEFAULT NULL,
  `group_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.groups_authorities
DROP TABLE IF EXISTS `groups_authorities`;
CREATE TABLE IF NOT EXISTS `groups_authorities` (
  `group_id` int(11) DEFAULT NULL,
  `authority` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.groups_authorities: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `groups_authorities` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_authorities` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.groups_members
DROP TABLE IF EXISTS `groups_members`;
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
DROP TABLE IF EXISTS `historial_pagos`;
CREATE TABLE IF NOT EXISTS `historial_pagos` (
  `hist_pagos_id` int(11) NOT NULL AUTO_INCREMENT,
  `hist_pagos_trat_pac_id` int(11) DEFAULT NULL,
  `hist_tipo_pago` varchar(50) DEFAULT NULL,
  `hist_pagos_fecha_pago` date DEFAULT NULL,
  `hist_pagos_monto` int(11) DEFAULT NULL,
  PRIMARY KEY (`hist_pagos_id`),
  KEY `hist__pagos_trat_pac_id` (`hist_pagos_trat_pac_id`),
  CONSTRAINT `FK_historial_pagos_tratamiento_paciente` FOREIGN KEY (`hist_pagos_trat_pac_id`) REFERENCES `tratamiento_paciente` (`trat_pac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=298 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.historial_pagos: ~232 rows (aproximadamente)
/*!40000 ALTER TABLE `historial_pagos` DISABLE KEYS */;
REPLACE INTO `historial_pagos` (`hist_pagos_id`, `hist_pagos_trat_pac_id`, `hist_tipo_pago`, `hist_pagos_fecha_pago`, `hist_pagos_monto`) VALUES
	(1, 42, NULL, '2014-11-19', 5000),
	(2, 41, NULL, '2014-11-19', 500),
	(3, 41, NULL, '2014-11-19', 500),
	(4, 41, NULL, '2014-11-19', 500),
	(5, 41, NULL, '2014-11-19', 500),
	(6, 41, NULL, '2014-11-19', 500),
	(7, 41, NULL, '2014-11-19', 300),
	(8, 41, NULL, '2014-11-19', 400),
	(9, 42, NULL, '2014-11-19', 100),
	(10, 41, NULL, '2014-11-19', 200),
	(11, 41, NULL, '2014-11-19', 200),
	(12, 41, NULL, '2014-11-20', 200),
	(13, 41, NULL, '2014-11-20', 300),
	(14, 41, NULL, '2014-11-20', 300),
	(15, 41, NULL, '2014-11-20', 300),
	(16, 41, NULL, '2014-11-20', 200),
	(17, 41, NULL, '2014-11-20', 1300),
	(18, 42, NULL, '2014-11-20', -1000),
	(19, 39, NULL, '2014-11-20', 1000),
	(20, 39, NULL, '2014-11-20', 500),
	(21, 43, NULL, '2014-11-20', 1500),
	(22, 43, NULL, '2014-11-20', 2000),
	(23, 43, NULL, '2014-11-20', 1500),
	(25, 43, NULL, '2014-11-20', 100),
	(27, 43, NULL, '2014-11-21', 1900),
	(47, 43, NULL, '2014-11-21', 100),
	(48, 43, NULL, '2014-11-21', 200),
	(49, 43, NULL, '2014-11-21', 300),
	(50, 43, NULL, '2014-11-21', 100),
	(51, 43, NULL, '2014-11-21', 500),
	(52, 43, NULL, '2014-11-21', 300),
	(53, 43, NULL, '2014-11-21', 200),
	(54, 43, NULL, '2014-11-21', 800),
	(55, 42, NULL, '2014-11-21', 300),
	(56, 42, NULL, '2014-11-21', -300),
	(57, 43, NULL, '2014-11-21', 1500),
	(58, 44, NULL, '2014-11-21', 3500),
	(59, 44, NULL, '2014-11-21', 300),
	(60, 44, NULL, '2014-11-21', 1500),
	(61, 45, NULL, '2014-11-21', 200),
	(62, 44, NULL, '2014-11-21', 200),
	(63, 45, NULL, '2014-11-21', 1000),
	(64, 44, NULL, '2014-11-21', 1000),
	(65, 44, NULL, '2014-11-22', 500),
	(66, 44, NULL, '2014-11-22', 500),
	(67, 44, NULL, '2014-11-22', 500),
	(68, 44, NULL, '2014-11-23', 200),
	(69, 44, NULL, '2014-11-23', 100),
	(70, 43, NULL, '2014-11-23', 500),
	(71, 46, NULL, '2014-11-23', 500),
	(72, 46, NULL, '2014-11-24', 1500),
	(73, 47, NULL, '2014-11-24', 500),
	(74, 47, NULL, '2014-11-24', 2000),
	(75, 47, NULL, '2014-11-25', 2000),
	(76, 48, NULL, '2014-11-25', 5500),
	(77, 48, NULL, '2014-11-25', 3),
	(78, 48, NULL, '2014-11-25', 2997),
	(79, 49, NULL, '2014-11-28', 800),
	(80, 27, NULL, '2014-11-30', 650),
	(81, 50, NULL, '2014-12-01', 500),
	(82, 49, NULL, '2014-12-01', 5000),
	(83, 51, NULL, '2014-12-01', 5000),
	(84, 56, NULL, '2014-12-01', 2000),
	(85, 57, NULL, '2014-12-01', 6500),
	(86, 56, NULL, '2014-12-01', 300),
	(87, 58, NULL, '2014-12-01', 6500),
	(88, 56, NULL, '2014-12-01', 100),
	(89, 60, NULL, '2014-12-01', 2500),
	(90, 61, NULL, '2014-12-01', 490),
	(91, 62, NULL, '2014-12-01', 6500),
	(92, 63, NULL, '2014-12-01', 4000),
	(93, 65, NULL, '2014-12-01', 4500),
	(94, 66, NULL, '2014-12-01', 450),
	(95, 64, NULL, '2014-12-01', 8400),
	(96, 56, NULL, '2014-12-01', 100),
	(97, 57, NULL, '2014-12-01', 2000),
	(98, 64, NULL, '2014-12-01', 100),
	(99, 59, NULL, '2014-12-01', 4500),
	(100, 68, NULL, '2014-12-01', 1500),
	(101, 31, NULL, '2014-12-01', 850),
	(102, 70, NULL, '2014-12-01', 350),
	(103, 71, NULL, '2014-12-01', 1500),
	(104, 71, NULL, '2014-12-01', 100),
	(105, 72, NULL, '2014-12-01', 7500),
	(106, 73, NULL, '2014-12-02', 6000),
	(107, 71, NULL, '2014-12-02', 500),
	(108, 74, NULL, '2014-12-02', 4000),
	(109, 74, NULL, '2014-12-02', 400),
	(110, 67, NULL, '2014-12-02', 4000),
	(111, 75, NULL, '2014-12-02', 500),
	(112, 76, NULL, '2014-12-02', 9100),
	(113, 76, NULL, '2014-12-04', 400),
	(114, 41, NULL, '2014-11-19', 300),
	(115, 77, NULL, '2014-12-05', 6300),
	(116, 77, NULL, '2014-12-05', 500),
	(117, 77, NULL, '2014-12-05', 500),
	(118, 77, NULL, '2014-12-06', 870),
	(119, 41, NULL, '2014-11-19', 300),
	(120, 41, NULL, '2014-11-19', 300),
	(121, 82, NULL, '2014-12-12', 1000),
	(122, 85, NULL, '2014-12-12', 100),
	(123, 86, NULL, '2014-12-12', 500),
	(124, 85, NULL, '2014-12-12', 390),
	(125, 86, NULL, '2014-12-12', 9000),
	(126, 88, NULL, '2014-12-12', 500),
	(127, 118, NULL, '2014-12-13', 500),
	(128, 114, NULL, '2014-12-13', 850),
	(129, 77, NULL, '2014-12-13', 630),
	(130, 78, NULL, '2014-12-13', 6500),
	(131, 79, NULL, '2014-12-13', 3400),
	(132, 80, NULL, '2014-12-13', 5100),
	(133, 82, NULL, '2014-12-13', 2800),
	(134, 83, NULL, '2014-12-13', 850),
	(135, 84, NULL, '2014-12-13', 5100),
	(136, 115, NULL, '2014-12-13', 850),
	(137, 117, NULL, '2014-12-13', 850),
	(138, 118, NULL, '2014-12-13', 2000),
	(139, 119, NULL, '2014-12-13', 5700),
	(140, 119, NULL, '2014-12-13', 500),
	(141, 120, NULL, '2014-12-15', 800),
	(142, 120, NULL, '2014-12-15', -300),
	(143, 116, NULL, '2014-12-15', 800),
	(144, 67, NULL, '2014-12-18', 500),
	(145, 121, NULL, '2014-12-18', 1500),
	(146, 121, NULL, '2014-12-18', 800),
	(147, 112, NULL, '2014-12-22', 4500),
	(148, 87, NULL, '2014-12-23', 90),
	(149, 122, NULL, '2014-12-23', 200),
	(150, 122, NULL, '2014-12-23', 800),
	(151, 107, NULL, '2014-12-23', 50),
	(152, 108, NULL, '2014-12-23', 500),
	(153, 109, NULL, '2014-12-23', 4000),
	(154, 110, NULL, '2014-12-23', 3500),
	(155, 111, NULL, '2014-12-23', 6200),
	(156, 107, NULL, '2014-12-23', 800),
	(157, 108, NULL, '2014-12-23', 2000),
	(158, 109, NULL, '2014-12-23', 500),
	(159, 110, NULL, '2014-12-23', 300),
	(160, 123, NULL, '2014-12-23', 50),
	(161, 122, NULL, '2014-12-23', 2200),
	(162, 123, NULL, '2014-12-23', 600),
	(163, 73, NULL, '2014-12-26', 700),
	(164, 124, NULL, '2015-12-29', 300),
	(165, 116, NULL, '2015-12-29', 50),
	(166, 126, NULL, '2015-12-29', 300),
	(167, 44, NULL, '2015-12-29', 200),
	(168, 127, NULL, '2015-01-07', 650),
	(169, 130, NULL, '2015-01-08', 800),
	(170, 147, NULL, '2015-01-08', 850),
	(171, 75, NULL, '2015-01-08', 4700),
	(172, 100, NULL, '2015-01-08', 800),
	(173, 174, NULL, '2015-01-09', 4700),
	(174, 69, NULL, '2015-01-09', 2100),
	(175, 175, NULL, '2015-01-09', 8500),
	(176, 176, NULL, '2015-01-09', 2900),
	(177, 177, NULL, '2015-01-09', 8500),
	(178, 178, NULL, '2015-01-09', 850),
	(179, 179, NULL, '2015-01-09', 3500),
	(180, 180, NULL, '2015-01-09', 850),
	(181, 181, NULL, '2015-01-09', 850),
	(182, 182, NULL, '2015-01-09', 8500),
	(183, 183, NULL, '2015-01-09', 3500),
	(184, 184, NULL, '2015-01-09', 380),
	(185, 185, NULL, '2015-01-09', 3500),
	(186, 46, NULL, '2015-01-09', 6500),
	(187, 186, NULL, '2015-01-09', 5500),
	(188, 30, NULL, '2015-01-09', 6400),
	(189, 164, NULL, '2015-01-09', 2900),
	(190, 187, NULL, '2015-01-09', 3000),
	(191, 172, NULL, '2015-01-09', 4200),
	(192, 176, NULL, '2015-01-09', 2900),
	(193, 125, NULL, '2015-01-09', 650),
	(194, 188, NULL, '2015-01-09', 3500),
	(195, 68, NULL, '2015-01-09', 600),
	(196, 189, NULL, '2015-01-09', 3500),
	(197, 190, NULL, '2015-01-10', 3500),
	(198, 191, NULL, '2015-01-10', 4200),
	(199, 192, NULL, '2015-01-10', 2900),
	(200, 193, NULL, '2015-01-10', 450),
	(201, 39, NULL, '2015-01-10', 3500),
	(202, 194, NULL, '2015-01-10', 7000),
	(203, 195, NULL, '2015-01-10', 2900),
	(204, 196, NULL, '2015-01-11', 2900),
	(205, 197, 'VISA', '2015-01-11', 3500),
	(206, 198, 'OCA', '2015-01-12', 5500),
	(207, 199, 'AMEX', '2015-01-13', 8500),
	(208, 200, 'OCA', '2015-01-15', 8500),
	(209, 47, NULL, '2015-01-15', 4000),
	(210, 201, 'MASTER', '2015-01-15', 8500),
	(211, 205, 'EF', '2015-01-16', 850),
	(212, 206, 'EF', '2015-01-16', 3500),
	(213, 209, 'EF', '2015-01-16', 850),
	(214, 72, NULL, '2015-01-16', 100),
	(215, 214, 'CRED', '2015-01-16', 850),
	(216, 126, NULL, '2015-01-16', 350),
	(217, 215, 'CRED', '2015-01-16', 850),
	(218, 216, 'CRED', '2015-01-16', 850),
	(219, 217, 'CRED', '2015-01-16', 200),
	(220, 218, 'CRED', '2015-01-16', 0),
	(221, 219, 'CRED', '2015-01-16', 200),
	(222, 220, 'CRED', '2015-01-16', 200),
	(223, 221, 'CRED', '2015-01-16', 200),
	(224, 222, 'CRED', '2015-01-16', 200),
	(225, 223, 'CRED', '2015-01-16', 200),
	(226, 224, 'CRED', '2015-01-16', 200),
	(227, 225, 'CRED', '2015-01-16', 200),
	(228, 226, 'CRED', '2015-01-16', 0),
	(229, 227, 'CRED', '2015-01-16', 200),
	(231, 229, 'CRED', '2015-01-16', 200),
	(232, 230, 'CRED', '2015-01-16', 200),
	(233, 230, NULL, '2015-01-16', 650),
	(234, 231, 'CRED', '2015-01-16', 500),
	(235, 232, 'CRED', '2015-01-16', 300),
	(236, 232, NULL, '2015-01-16', 300),
	(237, 232, NULL, '2015-01-16', 250),
	(238, 233, 'CRED', '2015-01-16', 200),
	(239, 233, 'CRED', '2015-01-16', 200),
	(240, 233, 'CRED', '2015-01-16', 100),
	(241, 233, 'CRED', '2015-01-16', 350),
	(242, 234, 'EF', '2015-01-16', 3500),
	(243, 235, 'CRED', '2015-01-16', 100),
	(244, 171, 'CRED', '2015-01-16', 450),
	(245, 106, 'CRED', '2015-01-16', 850),
	(246, 236, 'CRED', '2015-01-16', 2500),
	(247, 236, 'CRED', '2015-01-16', 100),
	(248, 236, 'CRED', '2015-01-16', 900),
	(249, 236, 'CRED', '2015-01-16', 4000),
	(250, 237, 'VISA', '2015-01-16', 4700),
	(251, 238, 'CRED', '2015-01-17', 3500),
	(252, 239, 'EF', '2015-01-17', 3500),
	(253, 240, 'OCA', '2015-01-17', 8500),
	(254, 238, 'CRED', '2015-01-17', 800),
	(255, 238, 'CRED', '2015-01-17', 2000),
	(256, 241, 'VISA', '2015-01-17', 7600),
	(257, 238, 'CRED', '2015-01-17', 700),
	(258, 242, 'EF', '2015-01-17', 7600),
	(259, 243, 'ANDA', '2015-01-17', 4700),
	(260, 244, 'EF', '2015-01-17', 380),
	(261, 245, 'CRED', '2015-01-17', 400),
	(262, 245, 'CRED', '2015-01-17', 1400),
	(263, 245, 'CRED', '2015-01-17', 1200),
	(264, 246, 'VISA', '2015-01-18', 7600),
	(265, 247, 'OCA', '2015-01-19', 7600),
	(266, 248, 'CRED', '2015-01-20', 1200),
	(267, 249, 'CRED', '2015-01-20', 1300),
	(268, 249, 'CRED', '2015-01-20', 1700),
	(269, 250, 'CRED', '2015-01-22', 3000),
	(270, 250, 'CRED', '2015-01-22', 500),
	(271, 251, 'EF', '2015-01-22', 4200),
	(272, 252, 'VISA', '2015-01-22', 7600),
	(273, 253, 'OCA', '2015-01-22', 7000),
	(274, 235, 'CRED', '2015-01-22', 280),
	(275, 254, 'MASTER', '2015-01-22', 3500),
	(276, 255, 'EF', '2015-01-22', 4700),
	(277, 256, 'DINERS', '2015-01-23', 7600),
	(278, 257, 'EF', '2015-01-23', 7600),
	(279, 258, 'EF', '2015-01-23', 7600),
	(280, 259, 'AMEX', '2015-01-23', 8500),
	(281, 260, 'EF', '2015-01-23', 500),
	(282, 261, 'DINERS', '2015-01-23', 3500),
	(283, 262, 'VISA', '2015-01-23', 8900),
	(284, 263, 'EF', '2015-01-23', 400),
	(285, 264, 'AMEX', '2015-01-23', 3200),
	(286, 265, 'EF', '2015-01-27', 550),
	(287, 266, 'VISA', '2015-01-27', 7200),
	(288, 267, 'CRED', '2015-01-28', 2500),
	(289, 267, 'CRED', '2015-01-28', 6000),
	(290, 268, 'OCA', '2015-01-28', 8500),
	(291, 269, 'EF', '2015-01-28', 450),
	(292, 270, 'EF', '2015-01-29', 2850),
	(293, 271, 'CRED', '2015-01-29', 200),
	(294, 271, 'CRED', '2015-01-29', 150),
	(295, 272, 'MASTER', '2015-01-29', 2850),
	(296, 96, 'CRED', '2015-01-29', 850),
	(297, 273, 'EF', '2015-01-29', 7600);
/*!40000 ALTER TABLE `historial_pagos` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.historia_clinica
DROP TABLE IF EXISTS `historia_clinica`;
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
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.historia_clinica: ~32 rows (aproximadamente)
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
	(180, 41021326, 0, 0, 0, 0, '', '', 0, '', 0, 0, 0, 'Gimnasia', '2 litros', 'Variada'),
	(181, 32145618, 1, 1, 1, 1, '', '', 3, '', 1, 0, 0, 'Muy poca', '1 litro diario', 'Variada'),
	(182, 12034566, 1, 1, 1, 1, '', '', 0, '', 0, 0, 0, 'Muy poca', '1 litro diario', 'Variada'),
	(183, 12542339, 1, 1, 1, 0, '', '', 0, '', 0, 0, 0, 'Muy poca', '1 litro diario', 'Variada'),
	(184, 25413634, 0, 0, 0, 1, '', '', 2, '', 1, 0, 0, 'Yoga', '2Litros', 'Variada'),
	(185, 32145226, 0, 0, 0, 0, '', '', 0, '', 0, 0, 0, 'Yoga', '2Litros', 'Variada'),
	(186, 15478418, 0, 0, 0, 0, '', '', 4, '', 0, 0, 0, 'Yoga', '2Litros', 'Variada'),
	(187, 14547886, 0, 0, 0, 0, '', '', 1, '', 0, 0, 0, 'Yoga', '2Litros', 'Variada'),
	(188, 31244455, 0, 0, 0, 0, '', '', 2, '', 1, 0, 0, 'Yoga', '2Litros', 'Variada'),
	(189, 23413632, 0, 0, 0, 0, '', '', 2, '', 1, 0, 0, 'Yoga', '2Litros', 'Variada'),
	(190, 19345033, 1, 1, 1, 1, 'Arritmia', 'Para la arritmia', 4, 'Cesarea', 1, 0, 1, 'Poca', '1 litro', 'Variada');
/*!40000 ALTER TABLE `historia_clinica` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.lista_precios
DROP TABLE IF EXISTS `lista_precios`;
CREATE TABLE IF NOT EXISTS `lista_precios` (
  `list_prec_id` int(11) DEFAULT NULL,
  `list_prec_id_trat` int(11) DEFAULT NULL,
  `list_prec_monto` int(11) DEFAULT NULL,
  UNIQUE KEY `list_prec_id_list_prec_id_trat` (`list_prec_id`,`list_prec_id_trat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.lista_precios: ~40 rows (aproximadamente)
/*!40000 ALTER TABLE `lista_precios` DISABLE KEYS */;
REPLACE INTO `lista_precios` (`list_prec_id`, `list_prec_id_trat`, `list_prec_monto`) VALUES
	(1, 2, 650),
	(1, 7, 5500),
	(1, 8, 3200),
	(1, 9, 8900),
	(1, 11, 5500),
	(1, 12, 350),
	(1, 16, 350),
	(1, 17, 490),
	(1, 19, 3800),
	(1, 20, 2300),
	(1, 21, 7700),
	(1, 22, 8600),
	(1, 23, 8600),
	(1, 24, 6300),
	(2, 26, 7600),
	(2, 2, 850),
	(2, 7, 8500),
	(2, 8, 3500),
	(2, 9, 8500),
	(2, 11, 5500),
	(2, 12, 450),
	(2, 16, 380),
	(2, 17, 650),
	(2, 19, 4700),
	(2, 20, 3000),
	(2, 21, 4200),
	(2, 22, 7000),
	(2, 23, 6300),
	(2, 24, 6300),
	(2, 25, 2900),
	(2, 27, 500),
	(2, 28, 300),
	(2, 29, 650),
	(2, 30, 3500),
	(2, 31, 8900),
	(2, 32, 7900),
	(2, 33, 400),
	(2, 34, 3200),
	(2, 35, 550),
	(2, 36, 7200),
	(2, 37, 2850),
	(2, 38, 350);
/*!40000 ALTER TABLE `lista_precios` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.pacientes
DROP TABLE IF EXISTS `pacientes`;
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
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.pacientes: ~35 rows (aproximadamente)
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
	(296, 'Leticia', 'Lacorte', 41021326, 'Arquitecta', 'CASMU', 'SUAT'),
	(297, 'Natalia', 'Rodriguez', 32145618, 'Empleada', 'CASMU', 'SUAT'),
	(298, 'Paula', 'Fernandez', 12034566, 'Empleada', 'CASMU', 'SUAT'),
	(299, 'Fernanda', 'Gonzalez', 12542339, 'Empleada', 'CASMU', 'SUAT'),
	(300, 'Graciela', 'Diaz', 25413634, 'Escribana', 'CASMU', 'SUAT'),
	(301, 'Pamela', 'Fernandez', 32145226, 'Abogada', 'La Española', 'SUAT'),
	(302, 'Luciana', 'Cabrera', 15478418, 'Licenciada', 'La Española', 'SMI'),
	(303, 'Carla', 'Benitez', 14547886, 'Empleada', 'CASMU', 'SUAT'),
	(304, 'Pilar', 'Rodriguez', 31244455, 'Economista', 'La Española', 'SUAT'),
	(305, 'Micaela', 'Blanco', 23413632, 'Psicologa', 'CASMU', 'SUAT'),
	(306, 'Gianina', 'Perez', 19345033, 'Empleada', 'CASMU', 'SUAT');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.pago_efectivo
DROP TABLE IF EXISTS `pago_efectivo`;
CREATE TABLE IF NOT EXISTS `pago_efectivo` (
  `ef_id` int(11) NOT NULL AUTO_INCREMENT,
  `pago_ef_id` int(11) NOT NULL,
  `pago_ef_cedula` int(11) NOT NULL,
  `pago_ef_importe` int(11) NOT NULL,
  `pago_ef_desc` varchar(50) NOT NULL,
  PRIMARY KEY (`ef_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.pago_efectivo: ~64 rows (aproximadamente)
/*!40000 ALTER TABLE `pago_efectivo` DISABLE KEYS */;
REPLACE INTO `pago_efectivo` (`ef_id`, `pago_ef_id`, `pago_ef_cedula`, `pago_ef_importe`, `pago_ef_desc`) VALUES
	(1, 205, 24578956, 850, 'EF'),
	(2, 206, 24578956, 3500, 'EF'),
	(3, 209, 42542474, 850, 'EF'),
	(4, 214, 35465475, 300, 'CRED'),
	(5, 215, 12542339, 300, 'CRED'),
	(6, 216, 12542339, 300, 'CRED'),
	(7, 217, 12542339, 200, 'CRED'),
	(8, 218, 12542339, 200, 'CRED'),
	(9, 219, 12542339, 200, 'CRED'),
	(10, 220, 12542339, 200, 'CRED'),
	(11, 221, 12542339, 200, 'CRED'),
	(12, 222, 12542339, 200, 'CRED'),
	(13, 223, 12542339, 200, 'CRED'),
	(14, 224, 12542339, 200, 'CRED'),
	(15, 225, 12542339, 200, 'CRED'),
	(16, 226, 12542339, 200, 'CRED'),
	(17, 227, 12542339, 200, 'CRED'),
	(19, 229, 12542339, 200, 'CRED'),
	(20, 230, 12542339, 200, 'CRED'),
	(21, 231, 12542339, 500, 'CRED'),
	(22, 232, 41214153, 300, 'CRED'),
	(23, 233, 41214153, 200, 'CRED'),
	(24, 233, 41214153, 200, 'CRED'),
	(25, 233, 41214153, 100, 'CRED'),
	(26, 233, 41214153, 350, 'CRED'),
	(27, 234, 19455549, 3500, 'EF'),
	(28, 235, 19455549, 100, 'CRED'),
	(29, 171, 24577742, 450, 'CRED'),
	(30, 106, 24577742, 850, 'CRED'),
	(31, 236, 24577742, 2500, 'CRED'),
	(32, 236, 24577742, 100, 'CRED'),
	(33, 236, 24577742, 900, 'CRED'),
	(34, 236, 24577742, 4000, 'CRED'),
	(35, 238, 25413634, 3500, 'CRED'),
	(36, 239, 25413634, 3500, 'EF'),
	(37, 238, 25413634, 800, 'CRED'),
	(38, 238, 25413634, 2000, 'CRED'),
	(39, 238, 25413634, 700, 'CRED'),
	(40, 242, 25413634, 7600, 'EF'),
	(41, 244, 25413634, 380, 'EF'),
	(42, 245, 25413634, 400, 'CRED'),
	(43, 245, 25413634, 1400, 'CRED'),
	(44, 245, 25413634, 1200, 'CRED'),
	(45, 248, 24578956, 1200, 'CRED'),
	(46, 249, 45698741, 1300, 'CRED'),
	(47, 249, 45698741, 1700, 'CRED'),
	(48, 250, 25413634, 3000, 'CRED'),
	(49, 250, 25413634, 500, 'CRED'),
	(50, 251, 32145226, 4200, 'EF'),
	(51, 235, 19455549, 280, 'CRED'),
	(52, 255, 51234568, 4700, 'EF'),
	(53, 257, 32145226, 7600, 'EF'),
	(54, 258, 23413632, 7600, 'EF'),
	(55, 260, 44247486, 500, 'EF'),
	(56, 263, 31244455, 400, 'EF'),
	(57, 265, 44188684, 550, 'EF'),
	(58, 267, 23413632, 2500, 'CRED'),
	(59, 267, 23413632, 6000, 'CRED'),
	(60, 269, 23413632, 450, 'EF'),
	(61, 270, 31244455, 2850, 'EF'),
	(62, 271, 31244455, 200, 'CRED'),
	(63, 271, 31244455, 150, 'CRED'),
	(64, 96, 12034566, 850, 'CRED'),
	(65, 273, 35465475, 7600, 'EF');
/*!40000 ALTER TABLE `pago_efectivo` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.pago_tarjetas
DROP TABLE IF EXISTS `pago_tarjetas`;
CREATE TABLE IF NOT EXISTS `pago_tarjetas` (
  `tarj_id` int(11) NOT NULL AUTO_INCREMENT,
  `tarj_pac_cedula` int(11) NOT NULL,
  `tarj_pago_id` int(11) NOT NULL,
  `tarj_nro` bigint(20) NOT NULL,
  `tarj_desc` varchar(50) NOT NULL,
  `tarj_vence` date NOT NULL,
  `tarj_importe` int(11) NOT NULL,
  `tarj_cuotas` int(11) NOT NULL,
  PRIMARY KEY (`tarj_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.pago_tarjetas: ~49 rows (aproximadamente)
/*!40000 ALTER TABLE `pago_tarjetas` DISABLE KEYS */;
REPLACE INTO `pago_tarjetas` (`tarj_id`, `tarj_pac_cedula`, `tarj_pago_id`, `tarj_nro`, `tarj_desc`, `tarj_vence`, `tarj_importe`, `tarj_cuotas`) VALUES
	(1, 44188684, 0, 123456789, 'OCA', '2015-01-09', 850, 2),
	(2, 44247486, 0, 123456789, 'OCA', '0000-00-00', 850, 2),
	(3, 32145618, 0, 42525252, 'VISA', '2015-01-09', 2900, 6),
	(4, 14578958, 0, 123456789, 'DINERS', '2015-01-09', 650, 4),
	(11, 44188684, 0, 6546546, 'VISA', '2015-01-13', 850, 22),
	(12, 44247486, 0, 4745474, 'AMEX', '2015-01-14', 7000, 44),
	(13, 24578956, 0, 4125489, 'DINERS', '2015-01-21', 6300, 33),
	(14, 14578958, 0, 547895, 'ANDA', '2015-01-22', 8500, 32),
	(15, 24577742, 0, 56464, 'OCA', '2015-01-07', 450, 2),
	(16, 19455549, 0, 123456, 'MASTER', '2015-01-14', 4200, 2),
	(18, 24578956, 0, 1234567847, 'MASTER', '2015-01-31', 4700, 3),
	(19, 25890747, 0, 2451478, 'DINERS', '2015-01-07', 8500, 5),
	(20, 19455549, 0, 321654, 'OCA', '2015-01-06', 2900, 3),
	(21, 44588795, 0, 25412568, 'OCA', '2015-01-30', 8500, 4),
	(22, 44588795, 0, 41526378, 'VISA', '2015-01-09', 850, 4),
	(23, 44588795, 0, 456789, 'MASTER', '2015-01-09', 3500, 3),
	(24, 44588795, 0, 526398741, 'AMEX', '2015-01-09', 850, 1),
	(25, 44588795, 0, 2323, 'OCA', '2015-01-15', 850, 2),
	(26, 44588795, 0, 34343, 'VISA', '2015-01-09', 8500, 3),
	(27, 44588795, 0, 34234, 'OCA', '2015-01-03', 3500, 2),
	(28, 44588795, 0, 3434234, 'OCA', '2015-01-08', 380, 2),
	(29, 14578958, 0, 8888888, 'OCA', '2015-01-31', 3500, 4),
	(30, 41214153, 0, 12345678, 'MASTER', '2015-01-09', 5500, 4),
	(31, 45156898, 0, 25415478, 'ANDA', '2015-01-31', 3000, 12),
	(32, 19455549, 0, 123456789, 'ANDA', '2016-03-26', 3500, 12),
	(33, 10042763, 0, 123456789, 'MASTER', '2015-01-31', 3500, 4),
	(34, 31245697, 8, 45124589, 'OCA', '2015-01-03', 3500, 10),
	(35, 61234566, 0, 1234567892, 'MASTER', '0000-00-00', 4200, 12),
	(36, 61234566, 0, 456464654, 'AMEX', '2015-01-17', 2900, 10),
	(37, 61234566, 0, 5465465, 'VISA', '2015-01-31', 450, 2),
	(38, 12542339, 194, 41425214, 'DINERS', '2015-01-16', 7000, 6),
	(39, 24567896, 195, 2132131, 'VISA', '2015-01-31', 2900, 6),
	(40, 29584732, 196, 123456789, 'OCA', '2015-01-31', 2900, 5),
	(41, 29584732, 197, 2131231, 'VISA', '2015-01-10', 3500, 3),
	(42, 29144124, 198, 134654987, 'OCA', '2015-01-31', 5500, 5),
	(43, 31245675, 199, 54545, 'AMEX', '2015-01-31', 8500, 7),
	(44, 24578956, 200, 4234, 'OCA', '2015-01-10', 8500, 4),
	(45, 54152636, 201, 123456789, 'MASTER', '2017-04-30', 8500, 10),
	(46, 12456637, 237, 1233245, 'VISA', '2015-01-31', 4700, 4),
	(47, 25413634, 240, 3434545, 'OCA', '2015-01-31', 8500, 3),
	(48, 25413634, 241, 123456789, 'VISA', '2015-01-31', 7600, 6),
	(49, 25413634, 243, 42156421, 'ANDA', '2015-01-31', 4700, 3),
	(50, 25413634, 246, 123456789, 'VISA', '2015-01-31', 7600, 4),
	(51, 32145226, 247, 123456789, 'OCA', '2015-01-31', 7600, 3),
	(52, 32145226, 252, 123456789, 'VISA', '2015-01-31', 7600, 6),
	(53, 32145226, 253, 324654, 'OCA', '2015-01-31', 7000, 2),
	(54, 19455549, 254, 123456789, 'MASTER', '2015-01-31', 3500, 5),
	(55, 32145226, 256, 1234567891234526, 'DINERS', '2015-01-31', 7600, 2),
	(56, 31244455, 259, 1451256987453214, 'AMEX', '2015-02-28', 8500, 10),
	(57, 23413632, 261, 1245789541254789, 'DINERS', '2017-03-31', 3500, 6),
	(58, 19455549, 262, 1245789865847523, 'VISA', '2018-01-05', 8900, 10),
	(59, 32145226, 264, 5412635478954721, 'AMEX', '2017-01-28', 3200, 12),
	(60, 23413632, 266, 1245784136259874, 'VISA', '2016-02-28', 7200, 6),
	(61, 23413632, 268, 1234568748956321, 'OCA', '2015-01-31', 8500, 4),
	(62, 19345033, 272, 2145789856523214, 'MASTER', '2015-01-31', 2850, 6);
/*!40000 ALTER TABLE `pago_tarjetas` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.seguimiento_pacientes
DROP TABLE IF EXISTS `seguimiento_pacientes`;
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.seguimiento_pacientes: ~14 rows (aproximadamente)
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
	(19, 43, '2014-11-21', 42, 42, 60, 60, 60, 40, 40, 60, 40.1, 'Prueba2'),
	(20, 43, '2014-11-21', 42, 42, 60, 60, 60, 40, 40, 60, 40.1, 'Prueba2'),
	(21, 43, '2014-11-21', 42, 42, 60, 60, 60, 40, 40, 60, 40.1, 'Prueba2');
/*!40000 ALTER TABLE `seguimiento_pacientes` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.sesiones
DROP TABLE IF EXISTS `sesiones`;
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
DROP TABLE IF EXISTS `ses_realizadas`;
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
DROP TABLE IF EXISTS `tipo_tratamiento`;
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
DROP TABLE IF EXISTS `tratamiento`;
CREATE TABLE IF NOT EXISTS `tratamiento` (
  `trat_id` int(11) NOT NULL AUTO_INCREMENT,
  `trat_tpo_id` int(11) DEFAULT NULL,
  `trat_descripcion` varchar(200) NOT NULL,
  `trat_cant_sesiones` int(11) DEFAULT '1',
  PRIMARY KEY (`trat_id`),
  KEY `FK_tratamiento_tipo_tratamiento` (`trat_tpo_id`),
  CONSTRAINT `FK_tratamiento_tipo_tratamiento` FOREIGN KEY (`trat_tpo_id`) REFERENCES `tipo_tratamiento` (`tip_trat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.tratamiento: ~27 rows (aproximadamente)
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
	(22, 9, '20 Sesiones de Masaje Descontracturante', 20),
	(23, 9, '5 Sesiones de Drenaje Linfatico, 5 Sesiones de Masaje de Piernas, 5 Sesiones de Ultrasonido', 15),
	(24, 9, '5 Sesiones de Masaje descontracturante, 10 Sesiones de Masaje Relax', 15),
	(25, 9, '8 Sesiones de Peeling', 8),
	(26, 9, '10 Sesiones de Ultracavitacion', 10),
	(27, 1, 'Masaje cuero cabelludo', 1),
	(28, 1, 'Masaje de pies', 1),
	(29, 3, 'Masaje de abdomen con plissage', 1),
	(30, 9, '10 masajes de cuello', 10),
	(31, 9, '10 Sesiones de Ultrasonido + 10 Sesiones de Bio Magnetismo', 20),
	(32, 9, '10 Sesiones de Radio Frecuencia y 5 Sesiones de Peeling', 15),
	(33, 2, 'Masaje de Brazos', 1),
	(34, 11, '2 por 1 5 Sesiones de Masajes de Muzlos', 5),
	(35, 2, 'Masaje de hombros', 1),
	(36, 9, '5 Sesiones de Ultracavitacion y 5 Sesiones de Presoterapia', 10),
	(37, 9, '5 Sesiones de BioMagnetismo', 5),
	(38, 3, 'Plisagge', 1);
/*!40000 ALTER TABLE `tratamiento` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.tratamiento_paciente
DROP TABLE IF EXISTS `tratamiento_paciente`;
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
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=latin1 COMMENT='private int tratPacId;\r\nprivate Date fecha;\r\nprivate Pacientes pacientes;\r\nprivate Tratamiento tratamiento;\r\nprivate int cantSesiones;\r\nprivate int sesionesRealizadas;\r\nprivate int sesionesPendientes;\r\nprivate int costoTratamiento;\r\nprivate int importePagado;\r\nprivate int saldoPendiente;';

-- Volcando datos para la tabla est_vaucher.tratamiento_paciente: ~188 rows (aproximadamente)
/*!40000 ALTER TABLE `tratamiento_paciente` DISABLE KEYS */;
REPLACE INTO `tratamiento_paciente` (`trat_pac_id`, `pac_cedula`, `trat_id`, `fecha`, `costo_tratamiento`, `importe_pagado`, `saldo_pendiente`, `cant_sesiones`) VALUES
	(27, 24567896, 12, '2014-09-25', 650, 650, 0, 11),
	(28, 24157481, 2, '2014-09-25', 850, 0, 850, 12),
	(29, 45789653, 8, '2014-10-02', 8500, 0, 8500, 2),
	(30, 45156898, 9, '2014-10-08', 6400, 6400, 0, 1),
	(31, 25890747, 17, '2014-10-02', 850, 850, 0, 10),
	(32, 23364786, 9, '2014-10-20', 5600, 0, 5600, 20),
	(39, 29584732, 9, '2014-11-05', 12500, 12500, 0, 20),
	(40, 31245675, 7, '2014-11-06', 6500, 6500, 0, 10),
	(41, 41578943, 9, '2014-11-06', 10500, 11100, -600, 20),
	(42, 62135218, 8, '2014-11-07', 6500, 6500, 0, 15),
	(43, 51234568, 7, '2014-11-20', 11500, 11500, 0, 10),
	(44, 31245697, 8, '2014-11-21', 8500, 8500, 0, 15),
	(45, 45213216, 9, '2014-11-21', 2000, 2000, 0, 20),
	(46, 41214153, 9, '2014-11-23', 8500, 8500, 0, 20),
	(47, 54152636, 19, '2014-11-24', 8500, 8500, 0, 8),
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
	(67, 19455549, 19, '2014-12-01', 4500, 4500, 0, 8),
	(68, 10042763, 20, '2014-12-01', 2100, 2100, 0, 5),
	(69, 25890747, 20, '2014-12-01', 2100, 2100, 0, 5),
	(70, 45698741, 16, '2014-12-01', 350, 350, 0, 1),
	(71, 44188684, 8, '2014-12-01', 2100, 2100, 0, 15),
	(72, 35465475, 9, '2014-12-01', 7600, 7600, 0, 20),
	(73, 12456637, 9, '2014-12-02', 6700, 6700, 0, 20),
	(74, 44188684, 20, '2014-12-02', 4400, 4400, 0, 5),
	(75, 24578956, 19, '2014-12-02', 5200, 5200, 0, 8),
	(76, 41021326, 11, '2014-12-02', 9500, 9500, 0, 20),
	(77, 44188684, 22, '2014-12-05', 8800, 8800, 0, 20),
	(78, 44188684, 23, '2014-12-05', 6500, 6500, 0, 15),
	(79, 44188684, 2, '2014-12-07', 3400, 3400, 0, 1),
	(80, 44188684, 9, '2014-12-12', 5100, 5100, 0, 20),
	(81, 32145618, 7, '2014-12-12', 2500, 0, 2500, 10),
	(82, 44188684, 19, '2014-12-12', 3800, 3800, 0, 8),
	(83, 44188684, 2, '2014-12-12', 850, 850, 0, 1),
	(84, 44188684, 9, '2014-12-12', 5100, 5100, 0, 20),
	(85, 44247486, 17, '2014-12-12', 490, 490, 0, 1),
	(86, 44247486, 22, '2014-12-12', 9500, 9500, 0, 20),
	(87, 44188684, 17, '2014-12-12', 490, 490, 0, 1),
	(88, 12034566, 7, '2014-12-12', 2500, 500, 2000, 10),
	(89, 12034566, 2, '2014-12-12', 850, 0, 0, 1),
	(90, 12034566, 7, '2014-12-12', 2500, 0, 0, 10),
	(91, 12034566, 9, '2014-12-12', 5100, 0, 0, 20),
	(92, 32145618, 2, '2014-12-12', 850, 0, 0, 1),
	(93, 12034566, 24, '2014-12-12', 6200, 0, 0, 15),
	(94, 32145618, 22, '2014-12-12', 9500, 0, 0, 20),
	(95, 32145618, 19, '2014-12-12', 3800, 0, 0, 8),
	(96, 12034566, 2, '2014-12-12', 850, 850, 0, 1),
	(97, 41021326, 20, '2014-12-12', 2300, 0, 0, 5),
	(98, 41021326, 24, '2014-12-12', 6200, 0, 0, 15),
	(99, 41021326, 2, '2014-12-12', 850, 20, 0, 1),
	(100, 24578956, 2, '2014-12-12', 850, 850, 0, 1),
	(101, 42542474, 11, '2014-12-12', 4500, 0, 0, 20),
	(102, 42542474, 2, '2014-12-12', 850, 50, 800, 1),
	(103, 42542474, 7, '2014-12-12', 2500, 0, 0, 10),
	(104, 14578958, 8, '2014-12-12', 4300, 0, 0, 15),
	(105, 14578958, 2, '2014-12-12', 850, 0, 0, 1),
	(106, 24577742, 2, '2014-12-12', 850, 850, 0, 1),
	(107, 19455549, 2, '2014-12-12', 850, 850, 0, 1),
	(108, 19455549, 7, '2014-12-12', 2500, 2500, 0, 10),
	(109, 19455549, 11, '2014-12-12', 4500, 4500, 0, 20),
	(110, 19455549, 19, '2014-12-12', 3800, 3800, 0, 8),
	(111, 19455549, 24, '2014-12-13', 6200, 6200, 0, 15),
	(112, 19455549, 11, '2014-12-13', 4500, 4500, 0, 20),
	(113, 44588795, 2, '2014-12-13', 850, 0, 0, 1),
	(114, 44188684, 2, '2014-12-13', 850, 850, 0, 1),
	(115, 44188684, 2, '2014-12-13', 850, 850, 0, 1),
	(116, 12542339, 2, '2014-12-13', 850, 850, 0, 1),
	(117, 44188684, 2, '2014-12-13', 850, 850, 0, 1),
	(118, 44188684, 7, '2014-12-13', 2500, 2500, 0, 10),
	(119, 44188684, 24, '2014-12-13', 6200, 6200, 0, 15),
	(120, 32124561, 11, '2014-12-15', 500, 500, 0, 20),
	(121, 19455549, 20, '2014-12-18', 2300, 2300, 0, 5),
	(122, 44188684, 8, '2014-12-23', 3200, 3200, 0, 15),
	(123, 44188684, 2, '2014-12-23', 650, 650, 0, 1),
	(124, 44188684, 2, '2015-12-29', 650, 300, 350, 1),
	(125, 19455549, 2, '2015-12-29', 650, 650, 0, 1),
	(126, 12542339, 2, '2015-12-29', 650, 650, 0, 1),
	(127, 44188684, 2, '2015-12-31', 650, 650, 0, 1),
	(128, 23364786, 2, '2015-01-01', 650, 0, 650, 1),
	(129, 54324322, 2, '2015-01-07', 850, 0, 850, 1),
	(130, 44188684, 2, '2015-01-07', 850, 800, 50, 1),
	(131, 44188684, 2, '2015-01-07', 850, 0, 850, 1),
	(132, 44188684, 2, '2015-01-07', 850, 0, 850, 1),
	(133, 44188684, 2, '2015-01-07', 850, 0, 850, 1),
	(134, 44188684, 2, '2015-01-07', 850, 0, 850, 1),
	(135, 44188684, 2, '2015-01-07', 850, 0, 850, 1),
	(136, 44188684, 2, '2015-01-07', 850, 0, 850, 1),
	(137, 44188684, 2, '2015-01-07', 850, 0, 850, 1),
	(138, 44188684, 2, '2015-01-07', 850, 0, 850, 1),
	(139, 44188684, 2, '2015-01-07', 850, 0, 850, 1),
	(140, 44188684, 2, '2015-01-07', 850, 0, 850, 1),
	(141, 44188684, 7, '2015-01-07', 8500, 0, 8500, 10),
	(142, 44188684, 2, '2015-01-07', 850, 0, 850, 1),
	(143, 44188684, 2, '2015-01-07', 850, 0, 850, 1),
	(144, 44188684, 2, '2015-01-07', 850, 0, 850, 1),
	(145, 44188684, 2, '2015-01-08', 850, 0, 850, 1),
	(146, 44188684, 2, '2015-01-08', 850, 0, 850, 1),
	(147, 44247486, 2, '2015-01-08', 850, 850, 0, 1),
	(148, 44188684, 2, '2015-01-08', 850, 0, 850, 1),
	(149, 44247486, 2, '2015-01-08', 850, 0, 850, 1),
	(150, 32145771, 24, '2015-01-08', 6300, 0, 6300, 15),
	(151, 44247486, 8, '2015-01-08', 3500, 0, 3500, 15),
	(152, 24578956, 12, '2015-01-08', 450, 0, 450, 1),
	(154, 44188684, 2, '2015-01-09', 850, 0, 850, 1),
	(155, 44247486, 2, '2015-01-09', 850, 0, 850, 1),
	(156, 32145618, 25, '2015-01-09', 2900, 0, 2900, 8),
	(160, 14578958, 17, '2015-01-09', 650, 0, 650, 1),
	(162, 42542474, 2, '2015-01-09', 850, 0, 850, 1),
	(163, 42542474, 19, '2015-01-09', 4700, 0, 4700, 8),
	(164, 45156898, 25, '2015-01-09', 2900, 2900, 0, 8),
	(165, 44188684, 2, '2015-01-09', 850, 0, 850, 1),
	(166, 44188684, 2, '2015-01-09', 850, 0, 850, 1),
	(167, 44188684, 2, '2015-01-09', 850, 0, 850, 1),
	(168, 44247486, 22, '2015-01-09', 7000, 0, 7000, 20),
	(169, 24578956, 23, '2015-01-09', 6300, 0, 6300, 15),
	(170, 14578958, 7, '2015-01-09', 8500, 0, 8500, 10),
	(171, 24577742, 12, '2015-01-09', 450, 450, 0, 1),
	(172, 19455549, 21, '2015-01-09', 4200, 4200, 0, 30),
	(173, 23364786, 11, '2015-01-09', 5500, 0, 5500, 20),
	(174, 24578956, 19, '2015-01-09', 4700, 0, 4700, 8),
	(175, 25890747, 9, '2015-01-09', 8500, 0, 8500, 20),
	(176, 19455549, 25, '2015-01-09', 2900, 2900, 0, 8),
	(177, 44588795, 7, '2015-01-09', 8500, 0, 8500, 10),
	(178, 44588795, 2, '2015-01-09', 850, 0, 850, 1),
	(179, 44588795, 8, '2015-01-09', 3500, 0, 3500, 15),
	(180, 44588795, 2, '2015-01-09', 850, 0, 850, 1),
	(181, 44588795, 2, '2015-01-09', 850, 0, 850, 1),
	(182, 44588795, 7, '2015-01-09', 8500, 0, 8500, 10),
	(183, 44588795, 8, '2015-01-09', 3500, 0, 3500, 15),
	(184, 44588795, 16, '2015-01-09', 380, 380, 0, 1),
	(185, 14578958, 8, '2015-01-09', 3500, 3500, 0, 15),
	(186, 41214153, 11, '2015-01-09', 5500, 5500, 0, 20),
	(187, 45156898, 20, '2015-01-09', 3000, 3000, 0, 5),
	(188, 19455549, 8, '2015-01-09', 3500, 3500, 0, 15),
	(189, 10042763, 8, '2015-01-09', 3500, 3500, 0, 15),
	(190, 31245697, 8, '2015-01-10', 3500, 3500, 0, 15),
	(191, 61234566, 21, '2015-01-10', 4200, 4200, 0, 30),
	(192, 61234566, 25, '2015-01-10', 2900, 2900, 0, 8),
	(193, 61234566, 12, '2015-01-10', 450, 450, 0, 1),
	(194, 12542339, 22, '2015-01-10', 7000, 7000, 0, 20),
	(195, 24567896, 25, '2015-01-10', 2900, 2900, 0, 8),
	(196, 29584732, 25, '2015-01-11', 2900, 2900, 0, 8),
	(197, 29584732, 8, '2015-01-11', 3500, 3500, 0, 15),
	(198, 29144124, 11, '2015-01-12', 5500, 5500, 0, 20),
	(199, 31245675, 9, '2015-01-13', 8500, 8500, 0, 20),
	(200, 24578956, 7, '2015-01-15', 8500, 8500, 0, 10),
	(201, 54152636, 7, '2015-01-15', 8500, 8500, 0, 10),
	(205, 24578956, 2, '2015-01-16', 850, 850, 0, 1),
	(206, 24578956, 8, '2015-01-16', 3500, 3500, 0, 15),
	(209, 42542474, 2, '2015-01-16', 850, 850, 0, 1),
	(214, 35465475, 2, '2015-01-16', 850, 850, 0, 1),
	(215, 12542339, 2, '2015-01-16', 850, 850, 0, 1),
	(216, 12542339, 2, '2015-01-16', 850, 850, 0, 1),
	(217, 12542339, 2, '2015-01-16', 850, 400, 450, 1),
	(218, 12542339, 2, '2015-01-16', 850, 0, 850, 1),
	(219, 12542339, 2, '2015-01-16', 850, 200, 850, 1),
	(220, 12542339, 2, '2015-01-16', 850, 400, 450, 1),
	(221, 12542339, 2, '2015-01-16', 850, 400, 450, 1),
	(222, 12542339, 2, '2015-01-16', 850, 400, 450, 1),
	(223, 12542339, 2, '2015-01-16', 850, 400, 650, 1),
	(224, 12542339, 2, '2015-01-16', 850, 400, 650, 1),
	(225, 12542339, 2, '2015-01-16', 850, 400, 650, 1),
	(226, 12542339, 2, '2015-01-16', 850, 0, 850, 1),
	(227, 12542339, 2, '2015-01-16', 850, 400, 650, 1),
	(229, 12542339, 2, '2015-01-16', 850, 400, 650, 1),
	(230, 12542339, 2, '2015-01-16', 850, 850, 0, 1),
	(231, 12542339, 7, '2015-01-16', 8500, 500, 8000, 10),
	(232, 41214153, 2, '2015-01-16', 850, 850, 0, 1),
	(233, 41214153, 2, '2015-01-16', 850, 850, 0, 1),
	(234, 19455549, 8, '2015-01-16', 3500, 3500, 0, 15),
	(235, 19455549, 16, '2015-01-16', 380, 380, 0, 1),
	(236, 24577742, 9, '2015-01-16', 8500, 7500, 1000, 20),
	(237, 12456637, 19, '2015-01-16', 4700, 4700, 0, 8),
	(238, 25413634, 22, '2015-01-17', 7000, 7000, 0, 20),
	(239, 25413634, 8, '2015-01-17', 3500, 3500, 0, 15),
	(240, 25413634, 9, '2015-01-17', 8500, 8500, 0, 20),
	(241, 25413634, 26, '2015-01-17', 7600, 7600, 0, 10),
	(242, 25413634, 26, '2015-01-17', 7600, 7600, 0, 10),
	(243, 25413634, 19, '2015-01-17', 4700, 4700, 0, 8),
	(244, 25413634, 16, '2015-01-17', 380, 380, 0, 1),
	(245, 25413634, 20, '2015-01-17', 3000, 3000, 0, 5),
	(246, 25413634, 26, '2015-01-18', 7600, 7600, 0, 10),
	(247, 32145226, 26, '2015-01-19', 7600, 7600, 0, 10),
	(248, 24578956, 20, '2015-01-20', 3000, 1200, 1800, 5),
	(249, 45698741, 20, '2015-01-20', 3000, 3000, 0, 5),
	(250, 25413634, 8, '2015-01-22', 3500, 3500, 0, 15),
	(251, 32145226, 21, '2015-01-22', 4200, 4200, 0, 30),
	(252, 32145226, 26, '2015-01-22', 7600, 7600, 0, 10),
	(253, 32145226, 22, '2015-01-22', 7000, 7000, 0, 20),
	(254, 19455549, 8, '2015-01-22', 3500, 3500, 0, 15),
	(255, 51234568, 19, '2015-01-22', 4700, 4700, 0, 8),
	(256, 32145226, 26, '2015-01-23', 7600, 7600, 0, 10),
	(257, 15478418, 26, '2015-01-23', 7600, 7600, 0, 10),
	(258, 23413632, 26, '2015-01-23', 7600, 7600, 0, 10),
	(259, 31244455, 9, '2015-01-23', 8500, 8500, 0, 20),
	(260, 44247486, 27, '2015-01-23', 500, 500, 0, 1),
	(261, 23413632, 30, '2015-01-23', 3500, 3500, 0, 10),
	(262, 19455549, 31, '2015-01-23', 8900, 8900, 0, 20),
	(263, 31244455, 33, '2015-01-23', 400, 400, 0, 1),
	(264, 32145226, 34, '2015-01-23', 3200, 3200, 0, 5),
	(265, 44188684, 35, '2015-01-27', 550, 550, 0, 1),
	(266, 23413632, 36, '2015-01-27', 7200, 7200, 0, 10),
	(267, 23413632, 7, '2015-01-28', 8500, 8500, 0, 10),
	(268, 23413632, 9, '2015-01-28', 8500, 8500, 0, 20),
	(269, 23413632, 12, '2015-01-28', 450, 450, 0, 1),
	(270, 31244455, 37, '2015-01-29', 2850, 2850, 0, 5),
	(271, 31244455, 38, '2015-01-29', 350, 350, 0, 1),
	(272, 19345033, 37, '2015-01-29', 2850, 2850, 0, 5),
	(273, 35465475, 26, '2015-01-29', 7600, 7600, 0, 10);
/*!40000 ALTER TABLE `tratamiento_paciente` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.users
DROP TABLE IF EXISTS `users`;
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
