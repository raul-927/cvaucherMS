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


-- Volcando estructura para tabla est_vaucher.acl_class
DROP TABLE IF EXISTS `acl_class`;
CREATE TABLE IF NOT EXISTS `acl_class` (
  `id` bigint(20) NOT NULL,
  `class` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.acl_class: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `acl_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_class` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.acl_entry
DROP TABLE IF EXISTS `acl_entry`;
CREATE TABLE IF NOT EXISTS `acl_entry` (
  `id` bigint(20) NOT NULL,
  `acl_object_identity` bigint(20) NOT NULL,
  `ace_order` int(11) NOT NULL,
  `sid` bigint(20) NOT NULL,
  `mask` int(11) NOT NULL,
  `granting` int(11) NOT NULL,
  `audit_success` int(11) NOT NULL,
  `audit_failure` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `acl_object_identity_ace_order` (`acl_object_identity`,`ace_order`),
  KEY `foreign_fk_5` (`sid`),
  CONSTRAINT `foreign_fk_4` FOREIGN KEY (`acl_object_identity`) REFERENCES `acl_object_identity` (`id`),
  CONSTRAINT `foreign_fk_5` FOREIGN KEY (`sid`) REFERENCES `acl_sid` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.acl_entry: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `acl_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_entry` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.acl_object_identity
DROP TABLE IF EXISTS `acl_object_identity`;
CREATE TABLE IF NOT EXISTS `acl_object_identity` (
  `id` bigint(20) NOT NULL,
  `object_id_class` bigint(20) NOT NULL,
  `object_id_identity` bigint(20) NOT NULL,
  `parent_object` bigint(20) NOT NULL,
  `owner_sid` bigint(20) NOT NULL,
  `entries_inheriting` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `object_id_class_object_id_identity` (`object_id_class`,`object_id_identity`),
  KEY `foreign_fk_1` (`parent_object`),
  KEY `foreign_fk_3` (`owner_sid`),
  CONSTRAINT `foreign_fk_1` FOREIGN KEY (`parent_object`) REFERENCES `acl_object_identity` (`id`),
  CONSTRAINT `foreign_fk_2` FOREIGN KEY (`object_id_class`) REFERENCES `acl_class` (`id`),
  CONSTRAINT `foreign_fk_3` FOREIGN KEY (`owner_sid`) REFERENCES `acl_sid` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.acl_object_identity: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `acl_object_identity` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_object_identity` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.acl_sid
DROP TABLE IF EXISTS `acl_sid`;
CREATE TABLE IF NOT EXISTS `acl_sid` (
  `id` bigint(20) NOT NULL,
  `principal` int(11) NOT NULL,
  `sid` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `principal_sid` (`principal`,`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.acl_sid: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `acl_sid` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_sid` ENABLE KEYS */;


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
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.agenda: ~128 rows (aproximadamente)
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
	(249, 'TELEFONO', '24085478', 19345033),
	(250, 'CELULAR', '098547854', 25457892),
	(251, 'TELEFONO', '26102365', 25457892),
	(252, 'EMAIL', 'virginia.paez@dominio.com', 25457892),
	(253, 'CELULAR', '092321456', 24578912),
	(254, 'TELEFONO', '26145216', 24578912),
	(255, 'EMAIL', 'ana.pereira@dominio.com', 24578912),
	(256, 'CELULAR', '094120369', 32145624),
	(257, 'CELULAR', '098747521', 45632153),
	(258, 'CELULAR', '974512693', 47894519),
	(259, 'TELEFONO', '24789652', 47894519),
	(260, 'EMAIL', 'juana.martinez@gmail.com', 47894519),
	(261, 'CELULAR', '985492473', 19347188),
	(262, 'CELULAR', '976164510', 34121141),
	(263, 'CELULAR', '098741231', 14789454),
	(264, 'CELULAR', '098475124', 54124566),
	(265, 'TELEFONO', '26010171', 24512465),
	(266, 'CELULAR', '098741231', 45267483),
	(267, 'CELULAR', '098741231', 24158792),
	(268, 'CELULAR', '098741231', 15849853),
	(269, 'CELULAR', '099541252', 41254569),
	(270, 'CELULAR', '098457410', 21453325),
	(271, 'CELULAR', '095412002', 14788745),
	(272, 'CELULAR', '099541201', 31022037),
	(273, 'CELULAR', '096541203', 31021237),
	(274, 'CELULAR', '094541201', 54120128),
	(275, 'CELULAR', '096521332', 14512031),
	(276, 'CELULAR', '098741231', 35241021),
	(277, 'CELULAR', '014578954', 41023982),
	(278, 'CELULAR', '021457895', 14152637),
	(279, 'CELULAR', '098741231', 63210102),
	(280, 'CELULAR', '098741231', 25647893),
	(281, 'CELULAR', '097485632', 41245786),
	(283, 'CELULAR', '014578954', 35639636),
	(284, 'CELULAR', '085741245', 14528953),
	(285, 'CELULAR', '098741231', 41547893),
	(286, 'CELULAR', '096521451', 42011233),
	(287, 'CELULAR', '095478123', 15421528),
	(288, 'CELULAR', '098741524', 5412474),
	(289, 'EMAIL', 'rfirpo@domain.com', 5412474),
	(290, 'CELULAR', '976547895', 4512635),
	(291, 'CELULAR', '098455662', 45124108),
	(292, 'TELEFONO', '24056578', 45124108),
	(293, 'EMAIL', 'florencia.vaucher@domail.com', 45124108),
	(294, 'CELULAR', '085478965', 47896636);
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.asiento_contable
DROP TABLE IF EXISTS `asiento_contable`;
CREATE TABLE IF NOT EXISTS `asiento_contable` (
  `as_con_id` int(11) NOT NULL AUTO_INCREMENT,
  `as_cuenta_debe` int(11) DEFAULT NULL,
  `as_cuenta_debeMonto` decimal(10,0) DEFAULT '0',
  `as_cuenta_haber` int(11) DEFAULT NULL,
  `as_cuenta_haberMonto` decimal(10,0) DEFAULT '0',
  `as_con_descripcion` varchar(50) DEFAULT '0',
  `as_con_fecha` date DEFAULT NULL,
  `as_con_hora` date DEFAULT NULL,
  `as_con_usr` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`as_con_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.asiento_contable: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `asiento_contable` DISABLE KEYS */;
/*!40000 ALTER TABLE `asiento_contable` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.authorities
DROP TABLE IF EXISTS `authorities`;
CREATE TABLE IF NOT EXISTS `authorities` (
  `auth_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `authority` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`auth_id`),
  UNIQUE KEY `username_authority` (`username`,`authority`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.authorities: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
REPLACE INTO `authorities` (`auth_id`, `username`, `authority`) VALUES
	(1, 'admin', 'ROLE_ADMIN'),
	(2, 'raul', 'ROLE_USER');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.aux_precios: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `aux_precios` DISABLE KEYS */;
REPLACE INTO `aux_precios` (`aux_prec_id`, `aux_prec_id_list`, `aux_prec_fech_ini`, `aux_prec_fech_fin`, `aux_prec_descripcion`) VALUES
	(57, 1, '2016-05-02', '2016-06-01', 'Mayo-Junio-2016');
/*!40000 ALTER TABLE `aux_precios` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.caja
DROP TABLE IF EXISTS `caja`;
CREATE TABLE IF NOT EXISTS `caja` (
  `caja_id` int(11) NOT NULL AUTO_INCREMENT,
  `caja_estado` varchar(50) NOT NULL DEFAULT 'CERRADO',
  `caja_fecha` date NOT NULL DEFAULT '2016-01-01',
  `caja_hora` time NOT NULL DEFAULT '00:00:00',
  `caja_usr` varchar(50) NOT NULL DEFAULT 'Inicio',
  PRIMARY KEY (`caja_id`),
  KEY `caja_id_caja_estado` (`caja_id`,`caja_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.caja: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `caja` DISABLE KEYS */;
REPLACE INTO `caja` (`caja_id`, `caja_estado`, `caja_fecha`, `caja_hora`, `caja_usr`) VALUES
	(68, 'CERRADO', '2016-01-01', '00:00:00', 'Inicio'),
	(69, 'ABIERTO', '2016-05-09', '00:54:00', 'admin'),
	(70, 'CERRADO', '2016-05-09', '00:54:01', 'admin'),
	(71, 'ABIERTO', '2016-05-09', '00:55:00', 'admin'),
	(72, 'CERRADO', '2016-05-09', '00:55:00', 'raul'),
	(73, 'ABIERTO', '2016-05-10', '22:40:00', 'gaby'),
	(74, 'CERRADO', '2016-05-10', '22:57:00', 'gaby');
/*!40000 ALTER TABLE `caja` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.cuentas
DROP TABLE IF EXISTS `cuentas`;
CREATE TABLE IF NOT EXISTS `cuentas` (
  `cuenta_id` int(11) NOT NULL AUTO_INCREMENT,
  `cuenta_form_pago_id` int(11) NOT NULL DEFAULT '0',
  `cuenta_grupo_id` int(11) NOT NULL,
  `cuenta_desc` varchar(50) NOT NULL,
  `cuenta_fecha` date NOT NULL,
  `cuenta_hora` time NOT NULL,
  `cuenta_usuario` varchar(50) NOT NULL,
  PRIMARY KEY (`cuenta_id`),
  KEY `formas_de_pago` (`cuenta_desc`),
  KEY `FK_cuentas_grupo_cuentas` (`cuenta_grupo_id`),
  CONSTRAINT `FK_cuentas_grupo_cuentas` FOREIGN KEY (`cuenta_grupo_id`) REFERENCES `grupo_cuentas` (`grupo_cuenta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.cuentas: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
REPLACE INTO `cuentas` (`cuenta_id`, `cuenta_form_pago_id`, `cuenta_grupo_id`, `cuenta_desc`, `cuenta_fecha`, `cuenta_hora`, `cuenta_usuario`) VALUES
	(1, 19, 8, 'EFECTIVO_CAJA', '2016-05-16', '23:19:00', 'admin'),
	(2, 20, 9, 'OCA', '2016-05-16', '23:19:01', 'admin'),
	(3, 21, 9, 'VISA', '2016-05-16', '23:20:00', 'admin'),
	(4, 22, 9, 'MASTER', '2016-05-16', '23:20:00', 'admin'),
	(5, 23, 9, 'DINERS', '2016-05-16', '23:20:00', 'admin'),
	(6, 24, 9, 'AMERICAN_EXPRESS', '2016-05-22', '11:59:00', 'gaby'),
	(7, 0, 7, 'BCP', '2016-05-16', '23:20:00', 'admin'),
	(8, 25, 7, 'BROU', '2016-05-16', '23:21:00', 'admin'),
	(9, 0, 11, 'IVA 22%', '2016-05-16', '23:45:00', 'admin'),
	(10, 0, 11, 'IGV', '2016-05-16', '23:46:00', 'admin'),
	(11, 0, 12, 'OCA 10%', '2016-05-16', '23:46:00', 'admin'),
	(12, 0, 15, 'MASAJES', '2016-05-23', '21:19:00', 'admin'),
	(13, 0, 15, 'LIMPIEZA', '2016-05-23', '21:19:00', 'admin');
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
  `pac_cedula` int(8) DEFAULT NULL,
  PRIMARY KEY (`dir_id`),
  KEY `pacientes_direccion` (`pac_cedula`),
  CONSTRAINT `pacientes_direccion` FOREIGN KEY (`pac_cedula`) REFERENCES `pacientes` (`cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.direccion: ~87 rows (aproximadamente)
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
	(241, 'APARTAMENTO', 'Paulier', 2080, 205, 'Palmar', 'Rivera', 19345033),
	(242, 'CASA', 'Arocena', 2056, 0, 'M Otero', 'Schoeder', 25457892),
	(243, 'APARTAMENTO', 'Gabriel Pereira', 2145, 703, 'Rivera', 'Charrua', 24578912),
	(244, 'CASA', 'Camino Carrasco', 2030, 0, '', '', 32145624),
	(245, 'CASA', 'Calle 1', 2030, 0, 'Calle2', 'Calle3', 45632153),
	(246, 'APARTAMENTO', 'Avenida Brasil', 2014, 104, 'Calle1', 'Calle2', 47894519),
	(247, 'APARTAMENTO', 'Jiron Huascaran', 579, 2, 'Bolivar', '28 de Diciembre', 19347188),
	(248, 'CASA', 'La Marina', 206, 0, 'Avenida Brasil', 'Jr Jose M Ugarteche', 34121141),
	(249, 'APARTAMENTO', 'Avenida Bolivia', 2050, 2002, '', '', 14789454),
	(250, 'CASA', 'Marcelino Bartelot', 2024, 0, 'Gral Flores', 'Marcelino Sosa', 54124566),
	(251, 'CASA', 'Manuel B Otero', 2056, 0, 'Ancona', 'Bolognia', 24512465),
	(252, 'CASA', 'Avenida Bolivia', 4010, 0, '', '', 45267483),
	(253, 'CASA', 'Avenida Bolivia', 4040, 0, '', '', 24158792),
	(254, 'CASA', 'Manuel B Otero', 2020, 0, '', '', 15849853),
	(255, 'CASA', 'Ancona', 2013, 0, 'Av Italia', 'Juan Bautista Alberdi', 41254569),
	(256, 'CASA', 'Av San Martin', 2014, 0, '', '', 21453325),
	(257, 'CASA', 'Cavour', 2014, 0, 'Cairoli', 'Francisco Simon', 14788745),
	(258, 'CASA', 'Avenida Bolivia', 3010, 0, '', '', 31022037),
	(259, 'CASA', 'Cairoli', 1230, 0, 'Av Italia', 'Abalos', 31021237),
	(260, 'CASA', 'Av Gianatasio ', 8040, 0, '', '', 54120128),
	(261, 'CASA', 'Abalos', 2010, 0, 'Cairoli', 'Francisco Simon', 14512031),
	(262, 'CASA', 'Manuel B Otero', 2020, 0, 'Av Italia', 'Bolognia', 35241021),
	(263, 'CASA', 'Camino Carrasco', 2010, 0, '', '', 41023982),
	(264, 'CASA', 'Marcelino Bartelot', 1245, 0, '', '', 14152637),
	(265, 'CASA', 'Abalos', 3232, 0, 'Av Italia', 'Francisco Simon', 63210102),
	(266, 'CASA', 'Abalos', 2030, 0, '', '', 25647893),
	(267, 'CASA', 'Cavour', 1203, 2, 'Cairoli', 'Francisco Simon', 41245786),
	(269, 'CASA', 'Abalos', 2020, 0, '', '', 35639636),
	(270, 'APARTAMENTO', 'Av Uruguay', 1240, 102, 'Carlos Roxlo', 'Tacuarembo', 14528953),
	(271, 'CASA', 'Abalos', 2010, 0, '', '', 41547893),
	(272, 'CASA', 'Avenida Gianatasio', 2040, 0, '', '', 42011233),
	(273, 'APARTAMENTO', 'Camino Carrasco', 2014, 204, '', '', 15421528),
	(274, 'CASA', 'Arriola', 314, 5, '', '', 5412474),
	(275, 'CASA', 'Arriola', 328, 304, '', '', 4512635),
	(276, 'CASA', 'Abalos', 2010, 0, 'Av Italia', 'Francisco Simon', 45124108),
	(277, 'APARTAMENTO', 'Avenida Gianatasio', 4569, 0, 'calle A', 'calle D', 47896636);
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.domain_user
DROP TABLE IF EXISTS `domain_user`;
CREATE TABLE IF NOT EXISTS `domain_user` (
  `dom_usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `dom_usr_nom` varchar(50) NOT NULL,
  `dom_usr_ap` varchar(50) NOT NULL,
  `dom_usr_nic` varchar(50) NOT NULL,
  `dom_usr_pass` varchar(50) NOT NULL,
  `dom_usr_enabled` int(1) NOT NULL,
  PRIMARY KEY (`dom_usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.domain_user: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `domain_user` DISABLE KEYS */;
REPLACE INTO `domain_user` (`dom_usr_id`, `dom_usr_nom`, `dom_usr_ap`, `dom_usr_nic`, `dom_usr_pass`, `dom_usr_enabled`) VALUES
	(1, 'admin', 'admin', 'admin', 'admin', 1),
	(2, 'German', 'Hernandez', 'hirokkanti', 'german', 1),
	(3, 'Raul', 'Hernandez', 'raul', 'rulo', 1),
	(4, 'Gabriela', 'Silveira', 'gaby', 'gaby20', 1),
	(5, 'Raul', 'Hernandez', 'raul2', 'raul2', 0),
	(6, 'Raul', 'de Pablos', 'rauldep', 'rauldep', 0);
/*!40000 ALTER TABLE `domain_user` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.formas_de_pagos
DROP TABLE IF EXISTS `formas_de_pagos`;
CREATE TABLE IF NOT EXISTS `formas_de_pagos` (
  `form_pag_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_pag_abreviacion` varchar(20) NOT NULL,
  `form_pag_cuenta_id` int(11) DEFAULT NULL,
  `form_pag_desc` varchar(50) DEFAULT NULL,
  `form_pag_tipo` varchar(2) NOT NULL,
  PRIMARY KEY (`form_pag_id`),
  KEY `form_pag_abreviacion` (`form_pag_abreviacion`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.formas_de_pagos: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `formas_de_pagos` DISABLE KEYS */;
REPLACE INTO `formas_de_pagos` (`form_pag_id`, `form_pag_abreviacion`, `form_pag_cuenta_id`, `form_pag_desc`, `form_pag_tipo`) VALUES
	(19, 'EFECTIVO', 1, 'Efectivo', 'EF'),
	(20, 'OCA', 2, 'Tarjeta Credito Oca', 'TC'),
	(21, 'VISA', 3, 'Tarjeta Credito Visa', 'TC'),
	(22, 'MASTER', 4, 'Tarjeta Credito Master', 'TC'),
	(23, 'DINERS', 5, 'Tarjeta Credito Diners', 'TC'),
	(24, 'AMEX', 0, 'Tarjeta Credito American Express', 'TC'),
	(25, 'BROU', 8, 'Deposito Cuenta Brou', 'DP'),
	(26, 'ANDA', 0, 'Tarjeta Credito Anda', 'TC'),
	(27, 'CRED', 1, 'Credito en Efectivo', 'CE'),
	(30, 'VARIOS', 3, 'Varios', 'DP');
/*!40000 ALTER TABLE `formas_de_pagos` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.groups
DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) DEFAULT NULL,
  `group_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.groups: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
REPLACE INTO `groups` (`id`, `group_name`) VALUES
	(1, 'GROUP_MEMBERS_ADMIN'),
	(2, 'GROUP_MEMBERS_CEO'),
	(3, 'GROUP_MEMBERS_ENCARGADO'),
	(4, 'GROUP_MEMBERS_MASAJISTA');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.groups_authorities
DROP TABLE IF EXISTS `groups_authorities`;
CREATE TABLE IF NOT EXISTS `groups_authorities` (
  `group_id` int(11) DEFAULT NULL,
  `authority` varchar(50) NOT NULL,
  PRIMARY KEY (`authority`),
  UNIQUE KEY `group_id_authority` (`group_id`,`authority`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.groups_authorities: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `groups_authorities` DISABLE KEYS */;
REPLACE INTO `groups_authorities` (`group_id`, `authority`) VALUES
	(1, 'ROLE_ADMIN'),
	(1, 'ROLE_USER');
/*!40000 ALTER TABLE `groups_authorities` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.groups_members
DROP TABLE IF EXISTS `groups_members`;
CREATE TABLE IF NOT EXISTS `groups_members` (
  `group_id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.groups_members: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `groups_members` DISABLE KEYS */;
REPLACE INTO `groups_members` (`group_id`, `username`) VALUES
	(1, 'admin'),
	(2, 'raul'),
	(3, 'gaby'),
	(4, 'test');
/*!40000 ALTER TABLE `groups_members` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.grupo_cuentas
DROP TABLE IF EXISTS `grupo_cuentas`;
CREATE TABLE IF NOT EXISTS `grupo_cuentas` (
  `grupo_cuenta_id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo_tipo_cuenta` varchar(50) DEFAULT NULL,
  `grupo_cuenta_desc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`grupo_cuenta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.grupo_cuentas: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `grupo_cuentas` DISABLE KEYS */;
REPLACE INTO `grupo_cuentas` (`grupo_cuenta_id`, `grupo_tipo_cuenta`, `grupo_cuenta_desc`) VALUES
	(7, 'INGRESO', 'BANCOS'),
	(8, 'INGRESO', 'EFECTIVO'),
	(9, 'INGRESO', 'TARJETAS'),
	(10, 'GASTOS', 'PRODUCTOS'),
	(11, 'GASTOS', 'IMPUESTOS'),
	(12, 'GASTOS', 'DESCUENTOS'),
	(13, 'PATRIMONIO', 'EQUIPOS'),
	(14, 'DEUDAS', 'PRESTAMOS'),
	(15, 'VENTA', 'SERVICIOS');
/*!40000 ALTER TABLE `grupo_cuentas` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.historial_cajas
DROP TABLE IF EXISTS `historial_cajas`;
CREATE TABLE IF NOT EXISTS `historial_cajas` (
  `hist_caj_id` int(11) NOT NULL AUTO_INCREMENT,
  `cajas_id` int(11) DEFAULT NULL,
  `cajas_estado` varchar(50) DEFAULT NULL,
  `cajas_fecha` date DEFAULT NULL,
  `cajas_hora` time DEFAULT NULL,
  `cajas_usr` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`hist_caj_id`),
  KEY `FK_historial_cajas_cajas` (`cajas_id`),
  CONSTRAINT `FK_historial_cajas_cajas` FOREIGN KEY (`cajas_id`) REFERENCES `caja` (`caja_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.historial_cajas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `historial_cajas` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial_cajas` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.historial_pagos
DROP TABLE IF EXISTS `historial_pagos`;
CREATE TABLE IF NOT EXISTS `historial_pagos` (
  `hist_pagos_id` int(11) NOT NULL AUTO_INCREMENT,
  `hist_pagos_trat_pac_id` int(11) DEFAULT NULL,
  `hist_tipo_pago` varchar(50) DEFAULT NULL,
  `hist_pagos_fecha_pago` date DEFAULT NULL,
  `hist_pagos_hora_pago` time DEFAULT NULL,
  `hist_pagos_monto` int(11) DEFAULT NULL,
  `hist_pagos_usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`hist_pagos_id`),
  KEY `hist__pagos_trat_pac_id` (`hist_pagos_trat_pac_id`),
  CONSTRAINT `FK_historial_pagos_tratamiento_paciente` FOREIGN KEY (`hist_pagos_trat_pac_id`) REFERENCES `tratamiento_paciente` (`trat_pac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=627 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.historial_pagos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `historial_pagos` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.historia_clinica: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `historia_clinica` DISABLE KEYS */;
/*!40000 ALTER TABLE `historia_clinica` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.lista_precios
DROP TABLE IF EXISTS `lista_precios`;
CREATE TABLE IF NOT EXISTS `lista_precios` (
  `list_prec_id` int(11) DEFAULT NULL,
  `list_prec_id_trat` int(11) DEFAULT NULL,
  `list_prec_monto` int(11) DEFAULT NULL,
  UNIQUE KEY `list_prec_id_list_prec_id_trat` (`list_prec_id`,`list_prec_id_trat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.lista_precios: ~53 rows (aproximadamente)
/*!40000 ALTER TABLE `lista_precios` DISABLE KEYS */;
REPLACE INTO `lista_precios` (`list_prec_id`, `list_prec_id_trat`, `list_prec_monto`) VALUES
	(1, 2, 850),
	(1, 7, 10500),
	(1, 8, 4000),
	(1, 9, 13500),
	(1, 11, 5500),
	(1, 12, 350),
	(1, 16, 350),
	(1, 17, 650),
	(1, 19, 4500),
	(1, 20, 3000),
	(1, 21, 4200),
	(1, 22, 12500),
	(1, 23, 3500),
	(1, 24, 8900),
	(1, 25, 2600),
	(1, 26, 8250),
	(1, 27, 320),
	(1, 28, 320),
	(1, 29, 320),
	(1, 30, 3000),
	(1, 31, 6700),
	(1, 32, 6500),
	(1, 33, 320),
	(1, 34, 650),
	(1, 35, 320),
	(1, 36, 8700),
	(1, 37, 2300),
	(1, 38, 320),
	(1, 39, 320),
	(1, 40, 320),
	(1, 41, 1500),
	(1, 42, 320),
	(1, 43, 4200),
	(1, 44, 320),
	(1, 45, 7500),
	(1, 46, 220),
	(1, 47, 350),
	(1, 48, 150),
	(1, 49, 320),
	(1, 50, 2500),
	(1, 51, 220),
	(1, 52, 3200),
	(1, 53, 0),
	(1, 54, 3500),
	(1, 55, 550),
	(1, 56, 5000),
	(1, 57, 350),
	(1, 58, 2500),
	(1, 59, 2500),
	(1, 60, 320),
	(1, 61, 320),
	(1, 62, 150),
	(1, 63, 5400);
/*!40000 ALTER TABLE `lista_precios` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.nic_roles
DROP TABLE IF EXISTS `nic_roles`;
CREATE TABLE IF NOT EXISTS `nic_roles` (
  `nic_rol_id` int(11) NOT NULL AUTO_INCREMENT,
  `nic_rol_user_nic_id` int(11) NOT NULL,
  `nic_rol_name_id` int(11) NOT NULL,
  PRIMARY KEY (`nic_rol_id`),
  UNIQUE KEY `nic_rol_user_nic_id_nic_rol_name_id` (`nic_rol_user_nic_id`,`nic_rol_name_id`),
  KEY `FK_nic_roles_roles` (`nic_rol_name_id`),
  CONSTRAINT `FK_nic_roles_domain_user` FOREIGN KEY (`nic_rol_user_nic_id`) REFERENCES `domain_user` (`dom_usr_id`),
  CONSTRAINT `FK_nic_roles_roles` FOREIGN KEY (`nic_rol_name_id`) REFERENCES `roles` (`rol_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.nic_roles: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `nic_roles` DISABLE KEYS */;
REPLACE INTO `nic_roles` (`nic_rol_id`, `nic_rol_user_nic_id`, `nic_rol_name_id`) VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 3, 2),
	(4, 4, 2);
/*!40000 ALTER TABLE `nic_roles` ENABLE KEYS */;


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
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.pacientes: ~87 rows (aproximadamente)
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
	(306, 'Gianina', 'Perez', 19345033, 'Empleada', 'CASMU', 'SUAT'),
	(307, 'Virginia', 'Paez', 25457892, 'Escribana', 'La Española', 'SUAT'),
	(309, 'Ana ', 'Pereira', 24578912, 'Empleada', 'IMPASA', 'UCM'),
	(310, 'Mauricio', 'Martinez', 32145624, 'Transportista', 'CASMU', 'SUAT'),
	(311, 'Alexandra', 'Gomez', 45632153, 'Contadora', 'CASMU', 'SUAT'),
	(312, 'Juana', 'Martinez', 47894519, 'Odontologa', 'CASMU', 'UCM'),
	(313, 'German', 'Hernandez', 19347188, 'BioPsicologo', 'CASMU', 'SUAT'),
	(314, 'Marianela', 'Chave', 34121141, 'Empleada', 'IMPASA', 'UCM'),
	(315, 'Natalia', 'Poses', 14789454, 'Administrativa', 'CASMU', 'UCM'),
	(316, 'Carla', 'Perez', 54124566, 'Empleada', 'La Española', 'SUAT'),
	(317, 'Florencia', 'Hinze', 24512465, 'Medica', 'CASMU', 'SUAT'),
	(318, 'Ana', 'Gomez', 45267483, 'Contadora', 'La Española', 'UCM'),
	(319, 'Marianela', 'Hernandez', 24158792, 'Administrativa', 'CASMU', 'SUAT'),
	(320, 'Claudia', 'Romero', 15849853, 'Medica', 'La Española', 'SUAT'),
	(321, 'Valeria', 'Hinze', 41254569, 'Medica', 'IMPASA', 'UCM'),
	(322, 'Pamela', 'Vaucher', 21453325, 'Empleada', 'CASMU', 'SUAT'),
	(323, 'Graciela', 'Nuñez', 14788745, 'Abogada', 'Hospital Britanico', 'SUAT'),
	(324, 'Karen', 'Rodriguez', 31022037, 'Odontologa', 'IMPASA', 'UCM'),
	(325, 'Analia', 'Olmos', 31021237, 'Escribana', 'CASMU', 'SUAT'),
	(326, 'Julia', 'Rios', 54120128, 'Peluquera', 'IMPASA', 'SUAT'),
	(327, 'Julisa', 'Arias', 14512031, 'Contadora', 'CASMU', 'SUAT'),
	(328, 'Katy', 'Pereira', 35241021, 'Empleada', 'La Española', 'UCM'),
	(329, 'Sandra', 'Martinez', 41023982, 'Empleada', 'CASMU', 'SUAT'),
	(330, 'Marcela', 'Perdomo', 14152637, 'Empleada', 'CASMU', 'SUAT'),
	(331, 'Fabiana', 'Arias', 63210102, 'Abogada', 'Hospital Britanico', 'SUAT'),
	(332, 'Beatriz', 'Firpo', 25647893, 'Peluquera', 'CASMU', 'UCM'),
	(333, 'Andreina', 'Vaucher', 41245786, 'Psicologa', 'CASMU', 'SUAT'),
	(335, 'Carolina', 'Salazar', 35639636, 'Medica', 'Hospital Britanico', 'SUAT'),
	(336, 'Natalie', 'Silva', 54789544, 'Empleada', 'CASMU', 'SUAT'),
	(338, 'Ariana', 'Diaz', 14528953, 'Abogada', 'Hospital Britanico', 'SUAT'),
	(339, 'Sandra', 'Fernandez', 41547893, 'Administrativa', 'Hospital Britanico', 'SUAT'),
	(340, 'Erika', 'Hubert', 42011233, 'Medica', 'Hospital Britanico', 'SUAT'),
	(341, 'Leticia', 'Laborde', 15421528, 'Arquitecta', 'Hospital Britanico', 'SUAT'),
	(342, 'Rafaela', 'Firpo', 5412474, '', '', ''),
	(343, 'Pepe', 'Perez', 4512635, '', '', ''),
	(344, 'florencia', 'Vaucher', 45124108, '', '', ''),
	(345, 'Elizabet', 'Vaucher', 25478795, 'Enfermera', 'CASMU', 'SUAT'),
	(346, 'Victoria', 'Cabrera', 47896636, 'Medica', 'CASMU', 'SUAT'),
	(347, '56465', 'jjklk', 44188781, '', '', ''),
	(348, 'Graciela', 'Silva', 67895431, '', '', '');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.pago_bancos
DROP TABLE IF EXISTS `pago_bancos`;
CREATE TABLE IF NOT EXISTS `pago_bancos` (
  `pag_banc_id` int(11) NOT NULL,
  `pago_banc_nom` varchar(50) NOT NULL,
  `pag_banc_cuenta` int(50) NOT NULL,
  `pag_banc_monto` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.pago_bancos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pago_bancos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago_bancos` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.pago_efectivo
DROP TABLE IF EXISTS `pago_efectivo`;
CREATE TABLE IF NOT EXISTS `pago_efectivo` (
  `ef_id` int(11) NOT NULL AUTO_INCREMENT,
  `pago_ef_id` int(11) NOT NULL,
  `pago_ef_cedula` int(11) NOT NULL,
  `pago_ef_importe` int(11) NOT NULL,
  `pago_ef_desc` varchar(50) NOT NULL,
  `pago_ef_usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ef_id`)
) ENGINE=InnoDB AUTO_INCREMENT=344 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.pago_efectivo: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pago_efectivo` DISABLE KEYS */;
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
  `tarj_pago_usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tarj_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.pago_tarjetas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pago_tarjetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago_tarjetas` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `rol_id` int(11) NOT NULL AUTO_INCREMENT,
  `rol_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rol_id`),
  UNIQUE KEY `rol_name` (`rol_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.roles: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
REPLACE INTO `roles` (`rol_id`, `rol_name`) VALUES
	(1, 'ROLE_ADMIN'),
	(3, 'ROLE_ANONIMOUS'),
	(2, 'ROLE_USER'),
	(4, 'ROLE_VARIOS'),
	(5, 'ROLE_VARIOS2');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.seguimiento_pacientes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `seguimiento_pacientes` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.tratamiento: ~52 rows (aproximadamente)
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
	(38, 3, 'Plisagge', 1),
	(39, 1, 'Aroma terapia', 1),
	(40, 2, 'Meditacion', 1),
	(41, 9, '5 Sesiones de Meditacion', 5),
	(42, 4, 'Puntas de Diamante', 1),
	(43, 9, '5 Sesiones de Puntas de Diamante, 5 Sesiones de Peelling', 10),
	(44, 1, 'Cuencos Tibetanos', 1),
	(45, 9, '5 Sesiones de Ultracavitacion, 5 sesiones de Plissage, 5 Sesiones de drenage linfatico', 15),
	(46, 2, 'Masaje de ojos', 1),
	(47, 2, 'Quiropraxia de Espalda', 1),
	(48, 1, 'Masaje de 15 minutos de Espalda', 1),
	(49, 3, 'Masaje modelador de cuello', 1),
	(50, 9, '5 sesiones de SlowDeep', 5),
	(51, 2, 'Tens', 1),
	(52, 11, '2 X 1, 5 Sesiones de SlowDeep', 5),
	(53, 4, 'Depilacion de cavado', 1),
	(54, 11, '2 X 1 En 10 Sesiones de SlowDeep', 10),
	(55, 3, 'Maderoterapia', 1),
	(56, 9, '10 Sesiones de Maderoterapia', 10),
	(57, 3, 'Radio frecuencia', 1),
	(58, 9, '5 Sesiones de Peeling', 5),
	(59, 11, '2 X1 en Tratamiento Anti Age', 5),
	(60, 2, 'Tratamiento Anti Acne', 1),
	(61, 1, 'Pedicuria', 1),
	(62, 1, 'Masaje express 15 minutos', 1),
	(63, 9, '10 Sesiones de Ozono terapia', 10);
/*!40000 ALTER TABLE `tratamiento` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.tratamiento_paciente
DROP TABLE IF EXISTS `tratamiento_paciente`;
CREATE TABLE IF NOT EXISTS `tratamiento_paciente` (
  `trat_pac_id` int(11) NOT NULL AUTO_INCREMENT,
  `pac_cedula` int(11) DEFAULT NULL,
  `trat_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `costo_tratamiento` int(11) DEFAULT NULL,
  `importe_pagado` int(11) DEFAULT NULL,
  `saldo_pendiente` int(11) DEFAULT NULL,
  `cant_sesiones` int(11) DEFAULT NULL,
  PRIMARY KEY (`trat_pac_id`),
  KEY `Pacientes` (`pac_cedula`),
  CONSTRAINT `Pacientes` FOREIGN KEY (`pac_cedula`) REFERENCES `pacientes` (`cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=511 DEFAULT CHARSET=latin1 COMMENT='private int tratPacId;\r\nprivate Date fecha;\r\nprivate Pacientes pacientes;\r\nprivate Tratamiento tratamiento;\r\nprivate int cantSesiones;\r\nprivate int sesionesRealizadas;\r\nprivate int sesionesPendientes;\r\nprivate int costoTratamiento;\r\nprivate int importePagado;\r\nprivate int saldoPendiente;';

-- Volcando datos para la tabla est_vaucher.tratamiento_paciente: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tratamiento_paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tratamiento_paciente` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `enabled` int(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.users: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`user_id`, `username`, `password`, `enabled`) VALUES
	(1, 'admin', 'admin', 1),
	(2, 'gaby', 'gaby20', 1),
	(3, 'raul', 'rulo', 1),
	(4, 'test', 'test1', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
