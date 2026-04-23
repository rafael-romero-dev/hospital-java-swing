-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         11.3.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para citas
CREATE DATABASE IF NOT EXISTS `citas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `citas`;

-- Volcando estructura para tabla citas.consultorio
DROP TABLE IF EXISTS `consultorio`;
CREATE TABLE IF NOT EXISTS `consultorio` (
  `Id_Doctor` char(10) DEFAULT NULL,
  `Id_Consultorio` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla citas.consultorio: ~0 rows (aproximadamente)
INSERT INTO `consultorio` (`Id_Doctor`, `Id_Consultorio`) VALUES
	('123456789', '12345');

-- Volcando estructura para tabla citas.doctor
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `Nombre_Doctor` varchar(30) DEFAULT NULL,
  `Apellido_Paterno_Doctor` varchar(30) DEFAULT NULL,
  `Apellido_Materno_Doctor` varchar(30) DEFAULT NULL,
  `Id_Doctor` char(10) DEFAULT NULL,
  `Especialidad` varchar(20) DEFAULT 'NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla citas.doctor: ~0 rows (aproximadamente)
INSERT INTO `doctor` (`Nombre_Doctor`, `Apellido_Paterno_Doctor`, `Apellido_Materno_Doctor`, `Id_Doctor`, `Especialidad`) VALUES
	('CHRISTIAN', 'ROMERO', 'DE LEON', '123456789', 'MEDICO CIRUJANO');

-- Volcando estructura para tabla citas.horario
DROP TABLE IF EXISTS `horario`;
CREATE TABLE IF NOT EXISTS `horario` (
  `Cita_Horario` varchar(10) DEFAULT NULL,
  `CURP` varchar(18) DEFAULT NULL,
  `Id_Doctor` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla citas.horario: ~0 rows (aproximadamente)
INSERT INTO `horario` (`Cita_Horario`, `CURP`, `Id_Doctor`) VALUES
	('MATUTINO', 'RONR025025MKJGFDE4', '123456789');

-- Volcando estructura para tabla citas.paciente
DROP TABLE IF EXISTS `paciente`;
CREATE TABLE IF NOT EXISTS `paciente` (
  `Nombre_Paciente` varchar(30) DEFAULT NULL,
  `Apellido_Paterno_Paciente` varchar(30) DEFAULT NULL,
  `Apellido_Materno_Paciente` varchar(30) DEFAULT NULL,
  `CURP` char(18) DEFAULT NULL,
  `Telefono` char(10) DEFAULT NULL,
  `Hora_Entrada` time DEFAULT NULL,
  `Hora_Salida` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla citas.paciente: ~0 rows (aproximadamente)
INSERT INTO `paciente` (`Nombre_Paciente`, `Apellido_Paterno_Paciente`, `Apellido_Materno_Paciente`, `CURP`, `Telefono`, `Hora_Entrada`, `Hora_Salida`) VALUES
	('RAFAEL HECTOR', 'ROMERO', 'NEGRETE', 'RONR025025MKJGFDE4', '7351455896', '08:00:00', '14:00:00');

-- Volcando estructura para tabla citas.sesion
DROP TABLE IF EXISTS `sesion`;
CREATE TABLE IF NOT EXISTS `sesion` (
  `Id_Sesion` int(11) NOT NULL AUTO_INCREMENT,
  `Rol_Usuario` varchar(15) DEFAULT NULL,
  `Contrasena_Ingresada` varchar(30) DEFAULT NULL,
  `Verificacion` varchar(10) DEFAULT NULL,
  `Fecha_Entrada` date DEFAULT NULL,
  `Hora_Entrada` time DEFAULT NULL,
  `No_Intentos_Fallidos` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`Id_Sesion`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla citas.sesion: ~57 rows (aproximadamente)
INSERT INTO `sesion` (`Id_Sesion`, `Rol_Usuario`, `Contrasena_Ingresada`, `Verificacion`, `Fecha_Entrada`, `Hora_Entrada`, `No_Intentos_Fallidos`) VALUES
	(239, 'DOCTOR', 'doctor999', 'VERDADERO', '2024-04-22', '23:25:04', '0'),
	(240, 'DOCTOR', 'contraseña', 'INCORRECTO', '2024-04-22', '23:27:28', '1'),
	(241, 'DOCTOR', 'nuevacontraseña', 'INCORRECTO', '2024-04-22', '23:27:38', '2'),
	(242, 'DOCTOR', 'doctor512345', 'INCORRECTO', '2024-04-22', '23:28:03', '3'),
	(243, 'DOCTOR', 'doctor999', 'VERDADERO', '2024-04-23', '08:42:11', '0'),
	(244, 'ADMINISTRADOR', 'admiistrador22', 'INCORRECTO', '2024-04-23', '08:44:06', '1'),
	(245, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2024-04-23', '08:44:29', '1'),
	(246, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2024-05-19', '14:19:42', '0'),
	(247, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2024-05-19', '15:15:04', '0'),
	(248, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2024-05-19', '15:15:56', '0'),
	(249, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2024-05-19', '15:18:36', '0'),
	(250, 'ADMINISTRADOR', 'contraseña221', 'INCORRECTO', '2024-05-19', '15:20:26', '1'),
	(251, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2024-05-19', '15:20:34', '1'),
	(252, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2024-05-19', '15:48:54', '0'),
	(253, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2024-05-19', '16:40:08', '0'),
	(254, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2024-05-19', '16:45:48', '0'),
	(255, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2024-05-19', '16:49:24', '0'),
	(256, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2024-05-19', '17:50:56', '0'),
	(257, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2024-05-19', '17:52:22', '0'),
	(258, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2024-05-19', '17:53:48', '0'),
	(259, 'PACIENTE', 'paciente159', 'VERDADERO', '2024-05-19', '18:04:42', '0'),
	(260, 'RECEPCIONISTA', 'recepcion512', 'VERDADERO', '2024-05-19', '18:14:46', '0'),
	(261, 'RECEPCIONISTA', 'ouzTaHZ', 'INCORRECTO', '2024-05-19', '18:16:01', '1'),
	(262, 'RECEPCIONISTA', 'recepcion512', 'VERDADERO', '2024-05-19', '18:16:20', '1'),
	(263, 'DOCTOR', 'doctor999', 'VERDADERO', '2024-05-19', '18:22:52', '0'),
	(264, 'DOCTOR', 'doctor999', 'VERDADERO', '2024-05-19', '18:28:25', '0'),
	(265, 'RECEPCIONISTA', 'recepcion512', 'VERDADERO', '2024-05-19', '18:37:44', '0'),
	(266, 'PACIENTE', 'paciente159', 'VERDADERO', '2024-05-19', '18:39:27', '0'),
	(267, 'DOCTOR', 'doctor999', 'VERDADERO', '2024-05-19', '18:41:29', '0'),
	(268, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2024-05-19', '18:43:14', '0'),
	(269, 'PACIENTE', 'paciete159', 'INCORRECTO', '2024-05-20', '08:21:42', '1'),
	(270, 'PACIENTE', 'paciente159', 'VERDADERO', '2024-05-20', '08:21:54', '1'),
	(271, 'DOCTOR', 'doctor999', 'VERDADERO', '2024-05-20', '08:40:47', '0'),
	(272, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2024-05-21', '01:39:17', '0'),
	(273, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2024-05-21', '01:55:14', '0'),
	(274, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2024-05-21', '01:58:06', '0'),
	(275, 'ADMINISTRADOR', 'administrador', 'INCORRECTO', '2024-05-21', '02:01:54', '1'),
	(276, 'ADMINISTRADOR', 'admiistrador221', 'INCORRECTO', '2024-05-21', '02:02:03', '2'),
	(277, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2024-05-21', '02:02:16', '2'),
	(278, 'RECEPCIONISTA', 'recepcion512', 'VERDADERO', '2024-05-21', '02:21:41', '0'),
	(279, 'PACIENTE', 'paciente159', 'VERDADERO', '2024-05-21', '02:26:54', '0'),
	(280, 'DOCTOR', 'doctor999', 'VERDADERO', '2024-05-21', '02:27:35', '0'),
	(281, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2024-05-21', '02:28:21', '0'),
	(282, 'DOCTOR', 'doctor999', 'VERDADERO', '2024-05-21', '14:18:27', '0'),
	(283, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2024-05-21', '08:46:50', '0'),
	(284, 'ADMINISTRADOR', '12345', 'INCORRECTO', '2025-10-10', '09:19:35', '1'),
	(285, 'ADMINISTRADOR', 'admin', 'INCORRECTO', '2025-10-10', '09:19:50', '2'),
	(286, 'ADMINISTRADOR', 'noseeeee', 'INCORRECTO', '2025-10-10', '09:19:58', '3'),
	(287, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2025-10-10', '09:22:09', '1'),
	(288, 'RECEPCIONISTA', 'rafa', 'INCORRECTO', '2026-04-12', '15:43:31', '1'),
	(289, 'DOCTOR', 'doctor999', 'VERDADERO', '2026-04-12', '15:46:26', '0'),
	(290, 'RECEPCIONISTA', 'recepcion512', 'VERDADERO', '2026-04-12', '15:47:54', '0'),
	(291, 'DOCTOR', 'doctor999', 'VERDADERO', '2026-04-12', '15:49:43', '0'),
	(292, 'ADMINISTRADOR', 'recepcion1', 'INCORRECTO', '2026-04-12', '15:52:26', '1'),
	(293, 'ADMINISTRADOR', 'recepcion512', 'INCORRECTO', '2026-04-12', '15:52:44', '2'),
	(294, 'ADMINISTRADOR', 'recepcion512', 'INCORRECTO', '2026-04-12', '15:53:07', '3'),
	(295, 'ADMINISTRADOR', 'administrador221', 'VERDADERO', '2026-04-12', '15:53:56', '0');

-- Volcando estructura para tabla citas.usuarios
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `Identificador` char(20) DEFAULT NULL,
  `Rol` varchar(20) DEFAULT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `Apellidos` varchar(40) DEFAULT NULL,
  `Direccion` varchar(80) DEFAULT NULL,
  `Telefono` char(10) DEFAULT NULL,
  `Correo` varchar(40) DEFAULT NULL,
  `RutaFoto` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla citas.usuarios: ~4 rows (aproximadamente)
INSERT INTO `usuarios` (`Identificador`, `Rol`, `Nombre`, `Apellidos`, `Direccion`, `Telefono`, `Correo`, `RutaFoto`) VALUES
	('1', 'RECEPCIONISTA', 'ULISES', 'SANTAMARIA GOMEZ', '16 DE MAYO, CUAUTLA', '7352477898', 'ulisesgomez@gmail.com', 'E:\\ProgramasUniversidad\\SeguridadWeb\\Hospital\\src\\Imagenes\\ FotoRecepcionista'),
	('2', 'PACIENTE', 'CESAR', 'OSORIO LOPEZ', '15 DE SEPTIEMBRE, CUAUTLA', '7351455788', 'cesarlopez@gmail.com', 'E:\\ProgramasUniversidad\\SeguridadWeb\\Hospital\\src\\Imagenes\\ FotoPaciente'),
	('3', 'DOCTOR', 'LIZETH', 'URBANO TECLA', 'REFORMA #15, CUAUTLA', '735250478', 'lizethtecla@gmail.com', 'E:\\ProgramasUniversidad\\SeguridadWeb\\Hospital\\src\\Imagenes\\ FotoDoctor'),
	('4', 'ADMINISTRADOR', 'RICARDO', 'HERNANDEZ ROMERO', 'INDEPENDENCIA #4, CUAUTLA', '7351477885', 'ricardoromero@gmail.com', 'E:ProgramasUniversidadSeguridadWebHospitalsrcImagenesFotoAdmin');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
