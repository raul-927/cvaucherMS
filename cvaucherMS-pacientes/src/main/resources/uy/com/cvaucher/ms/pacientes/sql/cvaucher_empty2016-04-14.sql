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

-- La exportación de datos fue deseleccionada.


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

-- La exportación de datos fue deseleccionada.


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

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla est_vaucher.acl_sid
DROP TABLE IF EXISTS `acl_sid`;
CREATE TABLE IF NOT EXISTS `acl_sid` (
  `id` bigint(20) NOT NULL,
  `principal` int(11) NOT NULL,
  `sid` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `principal_sid` (`principal`,`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla est_vaucher.authorities
DROP TABLE IF EXISTS `authorities`;
CREATE TABLE IF NOT EXISTS `authorities` (
  `auth_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `authority` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`auth_id`),
  UNIQUE KEY `username_authority` (`username`,`authority`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla est_vaucher.cajas
DROP TABLE IF EXISTS `cajas`;
CREATE TABLE IF NOT EXISTS `cajas` (
  `caja_id` int(11) NOT NULL AUTO_INCREMENT,
  `caja_estado` varchar(50) DEFAULT NULL,
  `caja_fecha` date DEFAULT NULL,
  `caja_hora` time DEFAULT NULL,
  `caja_usr` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`caja_id`),
  KEY `caja_id_caja_estado` (`caja_id`,`caja_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla est_vaucher.cuentas
DROP TABLE IF EXISTS `cuentas`;
CREATE TABLE IF NOT EXISTS `cuentas` (
  `cuenta_id` int(11) NOT NULL AUTO_INCREMENT,
  `cuenta_caja_id` int(11) NOT NULL DEFAULT '0',
  `cuenta_form_pago_desc` varchar(6) NOT NULL,
  `cuenta_monto` int(11) NOT NULL DEFAULT '0',
  `cuenta_tipo_movimiento` varchar(7) NOT NULL,
  `cuenta_fecha` date NOT NULL,
  `cuenta_hora` time NOT NULL,
  `cuenta_usuario` varchar(50) NOT NULL,
  PRIMARY KEY (`cuenta_id`),
  KEY `formas_de_pago` (`cuenta_form_pago_desc`),
  KEY `FK_cuentas_cajas` (`cuenta_caja_id`),
  CONSTRAINT `FK_cuentas_cajas` FOREIGN KEY (`cuenta_caja_id`) REFERENCES `cajas` (`caja_id`),
  CONSTRAINT `formas_de_pago` FOREIGN KEY (`cuenta_form_pago_desc`) REFERENCES `formas_de_pagos` (`form_pag_abreviacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla est_vaucher.formas_de_pagos
DROP TABLE IF EXISTS `formas_de_pagos`;
CREATE TABLE IF NOT EXISTS `formas_de_pagos` (
  `form_pag_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_pag_abreviacion` varchar(6) NOT NULL,
  `form_pag_desc` varchar(50) DEFAULT NULL,
  `form_pag_tipo` varchar(2) NOT NULL,
  PRIMARY KEY (`form_pag_id`),
  KEY `form_pag_abreviacion` (`form_pag_abreviacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla est_vaucher.groups
DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) DEFAULT NULL,
  `group_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla est_vaucher.groups_authorities
DROP TABLE IF EXISTS `groups_authorities`;
CREATE TABLE IF NOT EXISTS `groups_authorities` (
  `group_id` int(11) DEFAULT NULL,
  `authority` varchar(50) NOT NULL,
  PRIMARY KEY (`authority`),
  UNIQUE KEY `group_id_authority` (`group_id`,`authority`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla est_vaucher.groups_members
DROP TABLE IF EXISTS `groups_members`;
CREATE TABLE IF NOT EXISTS `groups_members` (
  `group_id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


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
  CONSTRAINT `FK_historial_cajas_cajas` FOREIGN KEY (`cajas_id`) REFERENCES `cajas` (`caja_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla est_vaucher.lista_precios
DROP TABLE IF EXISTS `lista_precios`;
CREATE TABLE IF NOT EXISTS `lista_precios` (
  `list_prec_id` int(11) DEFAULT NULL,
  `list_prec_id_trat` int(11) DEFAULT NULL,
  `list_prec_monto` int(11) DEFAULT NULL,
  UNIQUE KEY `list_prec_id_list_prec_id_trat` (`list_prec_id`,`list_prec_id_trat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla est_vaucher.pago_bancos
DROP TABLE IF EXISTS `pago_bancos`;
CREATE TABLE IF NOT EXISTS `pago_bancos` (
  `pag_banc_id` int(11) NOT NULL,
  `pago_banc_nom` varchar(50) NOT NULL,
  `pag_banc_cuenta` int(50) NOT NULL,
  `pag_banc_monto` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla est_vaucher.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `rol_id` int(11) NOT NULL AUTO_INCREMENT,
  `rol_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rol_id`),
  UNIQUE KEY `rol_name` (`rol_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


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

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla est_vaucher.ses_realizadas
DROP TABLE IF EXISTS `ses_realizadas`;
CREATE TABLE IF NOT EXISTS `ses_realizadas` (
  `ses_realizada_id` int(11) NOT NULL,
  `ses_id` int(11) NOT NULL,
  `ses_cant` int(11) NOT NULL,
  `ses_fecha_realizada` int(11) NOT NULL,
  PRIMARY KEY (`ses_realizada_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla est_vaucher.tipo_tratamiento
DROP TABLE IF EXISTS `tipo_tratamiento`;
CREATE TABLE IF NOT EXISTS `tipo_tratamiento` (
  `tip_trat_id` int(11) NOT NULL AUTO_INCREMENT,
  `tip_trat_descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tip_trat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='private int tratPacId;\r\nprivate Date fecha;\r\nprivate Pacientes pacientes;\r\nprivate Tratamiento tratamiento;\r\nprivate int cantSesiones;\r\nprivate int sesionesRealizadas;\r\nprivate int sesionesPendientes;\r\nprivate int costoTratamiento;\r\nprivate int importePagado;\r\nprivate int saldoPendiente;';

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla est_vaucher.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `enabled` int(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
