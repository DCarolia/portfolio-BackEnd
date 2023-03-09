-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 09-03-2023 a las 14:45:58
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portfolio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educacion`
--

DROP TABLE IF EXISTS `educacion`;
CREATE TABLE IF NOT EXISTS `educacion` (
  `ideducacion` int NOT NULL,
  `instituto` varchar(45) DEFAULT NULL,
  `titulo_obtenido` varchar(60) DEFAULT NULL,
  `usuario_idusuario` int NOT NULL,
  PRIMARY KEY (`ideducacion`,`usuario_idusuario`),
  KEY `fk_educacion_usuario1_idx` (`usuario_idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `educacion`
--

INSERT INTO `educacion` (`ideducacion`, `instituto`, `titulo_obtenido`, `usuario_idusuario`) VALUES
(1, 'Argentina Programa', 'Full Stack Developer Jr.', 3),
(2, 'Henry', 'Full Stack Developer Jr.', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_laboral`
--

DROP TABLE IF EXISTS `experiencia_laboral`;
CREATE TABLE IF NOT EXISTS `experiencia_laboral` (
  `idexperiencia_laboral` int NOT NULL,
  `nombre_de_la_empresa` varchar(45) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `usuario_idusuario` int NOT NULL,
  `tipo_de_empleo_idtipo_de_empleo` int NOT NULL,
  `periodo` varchar(45) NOT NULL,
  PRIMARY KEY (`idexperiencia_laboral`,`usuario_idusuario`,`tipo_de_empleo_idtipo_de_empleo`),
  KEY `fk_experiencia_laboral_usuario_idx` (`usuario_idusuario`),
  KEY `fk_experiencia_laboral_tipo_de_empleo1_idx` (`tipo_de_empleo_idtipo_de_empleo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `experiencia_laboral`
--

INSERT INTO `experiencia_laboral` (`idexperiencia_laboral`, `nombre_de_la_empresa`, `descripcion`, `usuario_idusuario`, `tipo_de_empleo_idtipo_de_empleo`, `periodo`) VALUES
(1, 'Escuela de Aviación Militar - FAA', 'Servicio de Mantenimiento de Aeronaves', 1, 1, '2008 al 2012'),
(1, 'Escuela de Aviación Militar - FAA', 'Servicio de Mantenimiento de Aeronaves', 3, 1, '20010 al 2019'),
(2, 'Escuela de Aviación Militar - FAA', 'Tesoreria del Casino de Suboficiales', 1, 1, '2019 al 2021'),
(3, 'Escuela de Aviación Militar - FAA', 'Planificación, Control y presupuestos', 1, 1, '2013 en adelante'),
(4, 'Escuela de Aviación Militar - FAA', 'Servicio de Información Logística', 3, 1, '2013 en adelante'),
(5, 'Escuela de Aviación Militar - FAA', 'Esolutions', 2, 1, '2021 en adelante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidades`
--

DROP TABLE IF EXISTS `habilidades`;
CREATE TABLE IF NOT EXISTS `habilidades` (
  `idhabilidades` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `progreso` varchar(45) DEFAULT NULL,
  `usuario_idusuario` int NOT NULL,
  PRIMARY KEY (`idhabilidades`,`usuario_idusuario`),
  KEY `fk_habilidades_usuario1_idx` (`usuario_idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `habilidades`
--

INSERT INTO `habilidades` (`idhabilidades`, `nombre`, `progreso`, `usuario_idusuario`) VALUES
(1, 'HTML', '80 %', 1),
(1, 'HTML', '90 %', 2),
(1, 'HTML', '70 %', 3),
(2, 'CSS', '85 %', 1),
(2, 'CSS', '85 %', 2),
(2, 'CSS', '70 %', 3),
(3, 'JS', '70 %', 1),
(3, 'JS', '85 %', 2),
(3, 'JS', '65 %', 3),
(4, 'Comunicación', '90 %', 1),
(4, 'Comunicación', '90 %', 2),
(4, 'Comunicación', '75 %', 3),
(5, 'Adaptabilidad', '80 %', 1),
(5, 'Adaptabilidad', '80 %', 2),
(5, 'Adaptabilidad', '80 %', 3),
(6, 'Proactividad', '80 %', 1),
(6, 'Proactividad', '85 %', 2),
(6, 'Proactividad', '75 %', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

DROP TABLE IF EXISTS `proyectos`;
CREATE TABLE IF NOT EXISTS `proyectos` (
  `idproyectos` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `tecnologias` varchar(45) DEFAULT NULL,
  `usuario_idusuario` int NOT NULL,
  PRIMARY KEY (`idproyectos`,`usuario_idusuario`),
  KEY `fk_proyectos_usuario1_idx` (`usuario_idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`idproyectos`, `nombre`, `tecnologias`, `usuario_idusuario`) VALUES
(1, 'Portfolio', 'Angular, Bootstap, MySQL, Java y Spring boot', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_empleo`
--

DROP TABLE IF EXISTS `tipo_de_empleo`;
CREATE TABLE IF NOT EXISTS `tipo_de_empleo` (
  `idtipo_de_empleo` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtipo_de_empleo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tipo_de_empleo`
--

INSERT INTO `tipo_de_empleo` (`idtipo_de_empleo`, `nombre`) VALUES
(1, 'Relación de dependencia'),
(2, 'Monotributista'),
(3, 'Full Time'),
(4, 'Part Time'),
(5, 'Add Honorem'),
(6, 'Eventual');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `idusuario` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `correo_electronico` varchar(45) DEFAULT NULL,
  `url_foto` varchar(250) DEFAULT NULL,
  `fecha_de_nacimiento` date DEFAULT NULL,
  `sobre_mi` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `apellido`, `telefono`, `correo_electronico`, `url_foto`, `fecha_de_nacimiento`, `sobre_mi`) VALUES
(1, 'Carolina', 'Dominguez', '+5493513222380', 'carolina.dominguez2217@gmail.com', 'https://media.licdn.com/dms/image/D4E03AQHCZdExH5eDkg/profile-displayphoto-shrink_200_200/0/1674874583582?e=1683158400&v=beta&t=2UvCSyzr8WPb3_ImO6ScgTTIFwWpLtY556MyBVpuJ4I', '1985-12-22', 'Desarrolladora Web Full Stack, soy una persona proactiva, me siento muy comoda trabajando en equipo y me adapto facilmente a los cambios.'),
(2, 'Dario', 'Dominguez', '+5493513812766', 'dominguez.dario@gmail.com', '', '1984-10-18', 'Full Stack Developer Jr.'),
(3, 'Maximiliano', 'Mazzuchini', '+5493513962195', 'mazzuchinimaxi@gmail.com', '', '1989-06-17', 'Full Stack Developer Jr.');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD CONSTRAINT `fk_educacion_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD CONSTRAINT `fk_experiencia_laboral_tipo_de_empleo1` FOREIGN KEY (`tipo_de_empleo_idtipo_de_empleo`) REFERENCES `tipo_de_empleo` (`idtipo_de_empleo`),
  ADD CONSTRAINT `fk_experiencia_laboral_usuario` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `habilidades`
--
ALTER TABLE `habilidades`
  ADD CONSTRAINT `fk_habilidades_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `fk_proyectos_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
