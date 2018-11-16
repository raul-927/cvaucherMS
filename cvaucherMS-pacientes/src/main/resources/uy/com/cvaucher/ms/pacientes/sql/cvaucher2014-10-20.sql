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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.agenda: ~34 rows (aproximadamente)
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
	(146, 'CELULAR', '094547895', 23364786);
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.direccion: ~22 rows (aproximadamente)
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
	(158, 'CASA', 'Palmar', 2020, 0, 'Requena', 'Paulier', 23364786);
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.historia_clinica: ~18 rows (aproximadamente)
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
	(106, 23364786, 1, 1, 0, 1, '', '', 0, '', 0, 0, 0, '', '', '');
/*!40000 ALTER TABLE `historia_clinica` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.lista_precios
CREATE TABLE IF NOT EXISTS `lista_precios` (
  `list_prec_id` int(11) DEFAULT NULL,
  `list_prec_id_trat` int(11) DEFAULT NULL,
  `list_prec_monto` int(11) DEFAULT NULL,
  `list_prec_descripcion` varchar(50) DEFAULT NULL,
  UNIQUE KEY `list_prec_id_list_prec_id_trat` (`list_prec_id`,`list_prec_id_trat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.lista_precios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `lista_precios` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.pacientes: ~19 rows (aproximadamente)
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
	(224, 'Fiorela', 'Lacco', 23364786, 'Medica', 'CASMU', 'SUAT');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.seguimiento_pacientes
CREATE TABLE IF NOT EXISTS `seguimiento_pacientes` (
  `pac_cedula` int(11) NOT NULL,
  `sesion_id` int(11) NOT NULL,
  `fecha_comienzo_tratamiento` date DEFAULT NULL,
  `frecuencia` int(11) DEFAULT NULL,
  `observaciones` varchar(50) DEFAULT NULL,
  `brazo_izquierdo` varchar(50) DEFAULT NULL,
  `brazo_derecho` varchar(50) DEFAULT NULL,
  `muzlo_izquierdo` varchar(50) DEFAULT NULL,
  `muzlo_derecho` varchar(50) DEFAULT NULL,
  `abdomen` varchar(50) DEFAULT NULL,
  `cintura` varchar(50) DEFAULT NULL,
  `cadera` varchar(50) DEFAULT NULL,
  `peso` int(11) DEFAULT NULL,
  `imc` float DEFAULT NULL,
  PRIMARY KEY (`pac_cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.seguimiento_pacientes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `seguimiento_pacientes` DISABLE KEYS */;
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
  `ses_estado_pago` varchar(50) DEFAULT NULL,
  `ses_fecha_pago` date DEFAULT NULL,
  PRIMARY KEY (`ses_id`),
  KEY `sesion_tratamiento` (`ses_trat_pac_id`),
  CONSTRAINT `sesion_tratamiento` FOREIGN KEY (`ses_trat_pac_id`) REFERENCES `tratamiento_paciente` (`trat_pac_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.sesiones: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sesiones` DISABLE KEYS */;
/*!40000 ALTER TABLE `sesiones` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.sesion_pagada
CREATE TABLE IF NOT EXISTS `sesion_pagada` (
  `ses_pago_id` int(11) NOT NULL,
  `ses_id` int(11) NOT NULL,
  `ses_monto_pagado` int(11) NOT NULL,
  `ses_fecha` date NOT NULL,
  PRIMARY KEY (`ses_pago_id`),
  KEY `Sesion_sesionp` (`ses_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.sesion_pagada: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sesion_pagada` DISABLE KEYS */;
/*!40000 ALTER TABLE `sesion_pagada` ENABLE KEYS */;


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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla est_vaucher.tratamiento: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `tratamiento` DISABLE KEYS */;
REPLACE INTO `tratamiento` (`trat_id`, `trat_tpo_id`, `trat_descripcion`, `trat_cant_sesiones`) VALUES
	(1, 1, 'Masaje descontracturante', 1),
	(2, 3, 'Ultracavitacion', 1),
	(7, 9, '10 Sesiones de 1/2 Hora de presoterapia, y 1/2 Hora de Ultracavitacion', 10),
	(8, 9, '10 Sesiones de 15 minutos Ultrasonido', 10),
	(9, 9, '6 Sesiones Ultracavitacion, 8 Sesiones Plissage, 2 Sesiones de Presoterapia, 4 Sesiones de Electrodos', 20),
	(11, 9, '10 Sesiones 1/2 hora de Plisagge + 10 Sesiones 1/2 hora de Electrodos.', 20),
	(12, 4, 'Peeling', 1),
	(16, 2, 'Ultrasonido', 1),
	(17, 2, 'Masaje de Espalda', 1);
/*!40000 ALTER TABLE `tratamiento` ENABLE KEYS */;


-- Volcando estructura para tabla est_vaucher.tratamiento_paciente
CREATE TABLE IF NOT EXISTS `tratamiento_paciente` (
  `trat_pac_id` int(11) NOT NULL AUTO_INCREMENT,
  `pac_cedula` int(11) DEFAULT NULL,
  `trat_id` int(11) DEFAULT NULL,
  `fecha` date NOT NULL,
  `costo_tratamiento` int(11) DEFAULT NULL,
  `importe_pagado` int(11) DEFAULT NULL,
  `saldo_pendiente` int(11) DEFAULT NULL,
  `cant_sesiones` int(11) DEFAULT NULL,
  PRIMARY KEY (`trat_pac_id`),
  KEY `pacientes` (`pac_cedula`),
  CONSTRAINT `pacientes` FOREIGN KEY (`pac_cedula`) REFERENCES `pacientes` (`cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COMMENT='private int tratPacId;\r\nprivate Date fecha;\r\nprivate Pacientes pacientes;\r\nprivate Tratamiento tratamiento;\r\nprivate int cantSesiones;\r\nprivate int sesionesRealizadas;\r\nprivate int sesionesPendientes;\r\nprivate int costoTratamiento;\r\nprivate int importePagado;\r\nprivate int saldoPendiente;';

-- Volcando datos para la tabla est_vaucher.tratamiento_paciente: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `tratamiento_paciente` DISABLE KEYS */;
REPLACE INTO `tratamiento_paciente` (`trat_pac_id`, `pac_cedula`, `trat_id`, `fecha`, `costo_tratamiento`, `importe_pagado`, `saldo_pendiente`, `cant_sesiones`) VALUES
	(27, 24567896, 12, '2014-09-25', 650, 0, 650, 11),
	(28, 24157481, 2, '2014-09-25', 850, 0, 850, 12),
	(29, 45789653, 8, '2014-10-02', 8500, 0, 8500, 2),
	(30, 45156898, 9, '2014-10-08', 6400, 0, 6400, 1),
	(31, 25890747, 17, '2014-10-02', 850, 0, 850, 10),
	(32, 23364786, 9, '2014-10-20', 5600, 0, 5600, 20);
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
