-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2021 a las 03:26:53
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vacunacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add Cita', 1, 'add_cita'),
(2, 'Can change Cita', 1, 'change_cita'),
(3, 'Can delete Cita', 1, 'delete_cita'),
(4, 'Can view Cita', 1, 'view_cita'),
(5, 'Can add Ciudadano', 2, 'add_ciudadano'),
(6, 'Can change Ciudadano', 2, 'change_ciudadano'),
(7, 'Can delete Ciudadano', 2, 'delete_ciudadano'),
(8, 'Can view Ciudadano', 2, 'view_ciudadano'),
(9, 'Can add Departamento', 3, 'add_departamento'),
(10, 'Can change Departamento', 3, 'change_departamento'),
(11, 'Can delete Departamento', 3, 'delete_departamento'),
(12, 'Can view Departamento', 3, 'view_departamento'),
(13, 'Can add Municipio', 4, 'add_municipio'),
(14, 'Can change Municipio', 4, 'change_municipio'),
(15, 'Can delete Municipio', 4, 'delete_municipio'),
(16, 'Can view Municipio', 4, 'view_municipio'),
(17, 'Can add sede', 5, 'add_sede'),
(18, 'Can change sede', 5, 'change_sede'),
(19, 'Can delete sede', 5, 'delete_sede'),
(20, 'Can view sede', 5, 'view_sede'),
(21, 'Can add Dosis', 6, 'add_dosis'),
(22, 'Can change Dosis', 6, 'change_dosis'),
(23, 'Can delete Dosis', 6, 'delete_dosis'),
(24, 'Can view Dosis', 6, 'view_dosis'),
(25, 'Can add log entry', 7, 'add_logentry'),
(26, 'Can change log entry', 7, 'change_logentry'),
(27, 'Can delete log entry', 7, 'delete_logentry'),
(28, 'Can view log entry', 7, 'view_logentry'),
(29, 'Can add permission', 8, 'add_permission'),
(30, 'Can change permission', 8, 'change_permission'),
(31, 'Can delete permission', 8, 'delete_permission'),
(32, 'Can view permission', 8, 'view_permission'),
(33, 'Can add group', 9, 'add_group'),
(34, 'Can change group', 9, 'change_group'),
(35, 'Can delete group', 9, 'delete_group'),
(36, 'Can view group', 9, 'view_group'),
(37, 'Can add user', 10, 'add_user'),
(38, 'Can change user', 10, 'change_user'),
(39, 'Can delete user', 10, 'delete_user'),
(40, 'Can view user', 10, 'view_user'),
(41, 'Can add content type', 11, 'add_contenttype'),
(42, 'Can change content type', 11, 'change_contenttype'),
(43, 'Can delete content type', 11, 'delete_contenttype'),
(44, 'Can view content type', 11, 'view_contenttype'),
(45, 'Can add session', 12, 'add_session'),
(46, 'Can change session', 12, 'change_session'),
(47, 'Can delete session', 12, 'delete_session'),
(48, 'Can view session', 12, 'view_session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'admin', 'logentry'),
(9, 'auth', 'group'),
(8, 'auth', 'permission'),
(10, 'auth', 'user'),
(11, 'contenttypes', 'contenttype'),
(12, 'sessions', 'session'),
(1, 'vacunacion', 'cita'),
(2, 'vacunacion', 'ciudadano'),
(3, 'vacunacion', 'departamento'),
(6, 'vacunacion', 'dosis'),
(4, 'vacunacion', 'municipio'),
(5, 'vacunacion', 'sede');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-06-26 20:51:08.358387'),
(2, 'auth', '0001_initial', '2021-06-26 20:51:08.692109'),
(3, 'admin', '0001_initial', '2021-06-26 20:51:08.790800'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-06-26 20:51:08.793188'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-06-26 20:51:08.801242'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-06-26 20:51:08.891480'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-06-26 20:51:08.942604'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-06-26 20:51:08.961488'),
(9, 'auth', '0004_alter_user_username_opts', '2021-06-26 20:51:08.964437'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-06-26 20:51:09.006882'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-06-26 20:51:09.010950'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-06-26 20:51:09.014941'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-06-26 20:51:09.031637'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-06-26 20:51:09.041496'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-06-26 20:51:09.061713'),
(16, 'auth', '0011_update_proxy_permissions', '2021-06-26 20:51:09.071502'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-06-26 20:51:09.086573'),
(18, 'sessions', '0001_initial', '2021-06-26 20:51:09.112805'),
(19, 'vacunacion', '0001_initial', '2021-06-26 20:51:09.431566');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacunacion_cita`
--

CREATE TABLE `vacunacion_cita` (
  `id_cita` int(11) NOT NULL,
  `fecha_cita` datetime(6) NOT NULL,
  `asistio` tinyint(1) NOT NULL,
  `ciudadano_id` int(11) NOT NULL,
  `sede_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vacunacion_cita`
--

INSERT INTO `vacunacion_cita` (`id_cita`, `fecha_cita`, `asistio`, `ciudadano_id`, `sede_id`) VALUES
(1, '2021-06-26 15:39:00.000000', 1, 12345678, 13),
(2, '2021-06-26 16:42:00.000000', 1, 12345678, 55),
(3, '2021-06-26 18:09:00.000000', 1, 12345678, 191),
(4, '2021-06-26 18:14:00.000000', 1, 1235689, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacunacion_ciudadano`
--

CREATE TABLE `vacunacion_ciudadano` (
  `dui` int(11) NOT NULL,
  `nombre_completo` varchar(300) NOT NULL,
  `direccion` varchar(2000) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vacunacion_ciudadano`
--

INSERT INTO `vacunacion_ciudadano` (`dui`, `nombre_completo`, `direccion`, `fecha_nacimiento`) VALUES
(1235689, 'Ronald Ayala', 'Su casa', '1999-01-01'),
(12345678, 'Roberto Lozano', 'Mi casa', '1994-09-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacunacion_departamento`
--

CREATE TABLE `vacunacion_departamento` (
  `id_departamento` int(11) NOT NULL,
  `nombre_departamento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vacunacion_departamento`
--

INSERT INTO `vacunacion_departamento` (`id_departamento`, `nombre_departamento`) VALUES
(1, 'Ahuachapán'),
(2, 'Cabañas'),
(3, 'Chalatenango'),
(4, 'Cuscatlán'),
(5, 'La Libertad'),
(6, 'La Paz'),
(7, 'La Unión'),
(8, 'Morazán'),
(9, 'San Miguel'),
(10, 'San Salvador'),
(11, 'San Vicente'),
(12, 'Santa Ana'),
(13, 'Sonsonate'),
(14, 'Usulután');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacunacion_dosis`
--

CREATE TABLE `vacunacion_dosis` (
  `id_dosis` int(11) NOT NULL,
  `fecha_dosis` datetime(6) NOT NULL,
  `dosis_vacunacion` varchar(40) NOT NULL,
  `cita_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vacunacion_dosis`
--

INSERT INTO `vacunacion_dosis` (`id_dosis`, `fecha_dosis`, `dosis_vacunacion`, `cita_id`) VALUES
(1, '2021-06-26 16:02:00.000000', 'PRIMERA DOSIS', 1),
(2, '2021-06-26 16:42:00.000000', 'SEGUNDA DOSIS', 2),
(3, '2021-06-26 18:12:00.000000', 'SEGUNDA DOSIS', 3),
(4, '2021-06-26 18:14:00.000000', 'PRIMERA DOSIS', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacunacion_municipio`
--

CREATE TABLE `vacunacion_municipio` (
  `id_municipio` int(11) NOT NULL,
  `nombre_municipio` varchar(100) NOT NULL,
  `departamento_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vacunacion_municipio`
--

INSERT INTO `vacunacion_municipio` (`id_municipio`, `nombre_municipio`, `departamento_id`) VALUES
(1, 'Ahuachapán', 1),
(2, 'Jujutla', 1),
(3, 'Atiquizaya', 1),
(4, 'Concepción de Ataco', 1),
(5, 'El Refugio', 1),
(6, 'Guaymango', 1),
(7, 'Apaneca', 1),
(8, 'San Francisco Menéndez', 1),
(9, 'San Lorenzo', 1),
(10, 'San Pedro Puxtla', 1),
(11, 'Tacuba', 1),
(12, 'Turín', 1),
(13, 'Cinquera', 2),
(14, 'Villa Dolores', 2),
(15, 'Guacotecti', 2),
(16, 'Ilobasco', 2),
(17, 'Jutiapa', 2),
(18, 'San Isidro', 2),
(19, 'Sensuntepeque', 2),
(20, 'Ciudad de Tejutepeque', 2),
(21, 'Victoria', 2),
(22, 'Agua Caliente', 3),
(23, 'Arcatao', 3),
(24, 'Azacualpa', 3),
(25, 'Chalatenango', 3),
(26, 'Citalá', 3),
(27, 'Comalapa', 3),
(28, 'Concepción Quezaltepeque', 3),
(29, 'Dulce Nombre de María', 3),
(30, 'El Carrizal', 3),
(31, 'El Paraíso', 3),
(32, 'La Laguna', 3),
(33, 'La Palma', 3),
(34, 'La Reina', 3),
(35, 'Las Vueltas', 3),
(36, 'Nombre de Jesús', 3),
(37, 'Nueva Concepción', 3),
(38, 'Nueva Trinidad', 3),
(39, 'Ojos de Agua', 3),
(40, 'Potonico', 3),
(41, 'San Antonio de la Cruz', 3),
(42, 'San Antonio Los Ranchos', 3),
(43, 'San Fernando', 3),
(44, 'San Francisco Lempa', 3),
(45, 'San Francisco Morazán', 3),
(46, 'San Ignacio', 3),
(47, 'San Isidro Labrador', 3),
(48, 'San José Cancasque', 3),
(49, 'San José Las Flores', 3),
(50, 'San Luis del Carmen', 3),
(51, 'San Miguel de Mercedes', 3),
(52, 'San Rafael', 3),
(53, 'Santa Rita', 3),
(54, 'Tejutla', 3),
(55, 'Candelaria', 4),
(56, 'Cojutepeque', 4),
(57, 'El Carmen', 4),
(58, 'El Rosario', 4),
(59, 'Monte San Juan', 4),
(60, 'Oratorio de Concepción', 4),
(61, 'San Bartolomé Perulapía', 4),
(62, 'San Cristóbal', 4),
(63, 'San José Guayabal', 4),
(64, 'San Pedro Perulapán', 4),
(65, 'San Rafael Cedros', 4),
(66, 'San Ramón', 4),
(67, 'Santa Cruz Analquito', 4),
(68, 'Santa Cruz Michapa', 4),
(69, 'Suchitoto', 4),
(70, 'Tenancingo', 4),
(71, 'Antiguo Cuscatlán', 5),
(72, 'Chiltiupán', 5),
(73, 'Ciudad Arce', 5),
(74, 'Colón', 5),
(75, 'Comasagua', 5),
(76, 'Huizúcar', 5),
(77, 'Jayaque', 5),
(78, 'Jicalapa', 5),
(79, 'La Libertad', 5),
(80, 'Santa Tecla', 5),
(81, 'Nuevo Cuscatlán', 5),
(82, 'Opico', 5),
(83, 'Quezaltepeque', 5),
(84, 'Sacacoyo', 5),
(85, 'San José Villanueva', 5),
(86, 'San Matías', 5),
(87, 'San Pablo Tacachico', 5),
(88, 'Talnique', 5),
(89, 'Tamanique', 5),
(90, 'Teotepeque', 5),
(91, 'Tepecoyo', 5),
(92, 'Zaragoza', 5),
(93, 'Cuyultitán', 6),
(94, 'El Rosario', 6),
(95, 'Jerusalén', 6),
(96, 'Mercedes La Ceiba', 6),
(97, 'Olocuilta', 6),
(98, 'Paraíso de Osorio', 6),
(99, 'San Antonio Masahuat', 6),
(100, 'San Emigdio', 6),
(101, 'San Francisco Chinameca', 6),
(102, 'San Juan Nonualco', 6),
(103, 'San Juan Talpa', 6),
(104, 'San Juan Tepezontes', 6),
(105, 'San Luis La Herradura', 6),
(106, 'San Luis Talpa', 6),
(107, 'San Miguel Tepezontes', 6),
(108, 'San Pedro Masahuat', 6),
(109, 'San Pedro Nonualco', 6),
(110, 'San Rafael Obrajuelo', 6),
(111, 'Santa María Ostuma', 6),
(112, 'Santiago Nonualco', 6),
(113, 'Tapalhuaca', 6),
(114, 'Zacatecoluca', 6),
(115, 'Anamorós', 7),
(116, 'Bolívar', 7),
(117, 'Concepción de Oriente', 7),
(118, 'Conchagua', 7),
(119, 'El Carmen', 7),
(120, 'El Sauce', 7),
(121, 'Intipucá', 7),
(122, 'La Unión', 7),
(123, 'Lislique', 7),
(124, 'Meanguera del Golfo', 7),
(125, 'Nueva Esparta', 7),
(126, 'Pasaquina', 7),
(127, 'Polorós', 7),
(128, 'San Alejo', 7),
(129, 'San José', 7),
(130, 'Santa Rosa de Lima', 7),
(131, 'Yayantique', 7),
(132, 'Yucuayquín', 7),
(133, 'Arambala', 8),
(134, 'Cacaopera', 8),
(135, 'Chilanga', 8),
(136, 'Corinto', 8),
(137, 'Delicias de Concepción', 8),
(138, 'El Divisadero', 8),
(139, 'El Rosario', 8),
(140, 'Gualococti', 8),
(141, 'Guatajiagua', 8),
(142, 'Joateca', 8),
(143, 'Jocoaitique', 8),
(144, 'Jocoro', 8),
(145, 'Lolotiquillo', 8),
(146, 'Meanguera', 8),
(147, 'Osicala', 8),
(148, 'Perquín', 8),
(149, 'San Carlos', 8),
(150, 'San Fernando', 8),
(151, 'San Francisco Gotera', 8),
(152, 'San Isidro', 8),
(153, 'San Simón', 8),
(154, 'Sensembra', 8),
(155, 'Sociedad', 8),
(156, 'Torola', 8),
(157, 'Yamabal', 8),
(158, 'Yoloaiquín', 8),
(159, 'Carolina', 9),
(160, 'Chapeltique', 9),
(161, 'Chinameca', 9),
(162, 'Chirilagua', 9),
(163, 'Ciudad Barrios', 9),
(164, 'Comacarán', 9),
(165, 'El Tránsito', 9),
(166, 'Lolotique', 9),
(167, 'Moncagua', 9),
(168, 'Nueva Guadalupe', 9),
(169, 'Nuevo Edén de San Juan', 9),
(170, 'Quelepa', 9),
(171, 'San Antonio', 9),
(172, 'San Gerardo', 9),
(173, 'San Jorge', 9),
(174, 'San Luis de la Reina', 9),
(175, 'San Miguel', 9),
(176, 'San Rafael', 9),
(177, 'Sesori', 9),
(178, 'Uluazapa', 9),
(179, 'Aguilares', 10),
(180, 'Apopa', 10),
(181, 'Ayutuxtepeque', 10),
(182, 'Cuscatancingo', 10),
(183, 'Delgado', 10),
(184, 'El Paisnal', 10),
(185, 'Guazapa', 10),
(186, 'Ilopango', 10),
(187, 'Mejicanos', 10),
(188, 'Nejapa', 10),
(189, 'Panchimalco', 10),
(190, 'Rosario de Mora', 10),
(191, 'San Marcos', 10),
(192, 'San Martín', 10),
(193, 'San Salvador', 10),
(194, 'Santiago Texacuangos', 10),
(195, 'Santo Tomás', 10),
(196, 'Soyapango', 10),
(197, 'Tonacatepeque', 10),
(198, 'Apastepeque', 11),
(199, 'Guadalupe', 11),
(200, 'San Cayetano Istepeque', 11),
(201, 'San Esteban Catarina', 11),
(202, 'San Ildefonso', 11),
(203, 'San Lorenzo', 11),
(204, 'San Sebastián', 11),
(205, 'Santa Clara', 11),
(206, 'Santo Domingo', 11),
(207, 'San Vicente', 11),
(208, 'Tecoluca', 11),
(209, 'Tepetitán', 11),
(210, 'Verapaz', 11),
(211, 'Candelaria de la Frontera', 12),
(212, 'Chalchuapa', 12),
(213, 'Coatepeque', 12),
(214, 'El Congo', 12),
(215, 'El Porvenir', 12),
(216, 'Masahuat', 12),
(217, 'Metapán', 12),
(218, 'San Antonio Pajonal', 12),
(219, 'San Sebastián Salitrillo', 12),
(220, 'Santa Ana', 12),
(221, 'Santa Rosa Guachipilín', 12),
(222, 'Santiago de la Frontera', 12),
(223, 'Texistepeque', 12),
(224, 'Acajutla', 13),
(225, 'Armenia', 13),
(226, 'Caluco', 13),
(227, 'Cuisnahuat', 13),
(228, 'Izalco', 13),
(229, 'Juayúa', 13),
(230, 'Nahuizalco', 13),
(231, 'Nahulingo', 13),
(232, 'Salcoatitán', 13),
(233, 'San Antonio del Monte', 13),
(234, 'San Julián', 13),
(235, 'Santa Catarina Masahuat', 13),
(236, 'Santa Isabel Ishuatán', 13),
(237, 'Santo Domingo', 13),
(238, 'Sonsonate', 13),
(239, 'Sonzacate', 13),
(240, 'Alegría', 14),
(241, 'Berlín', 14),
(242, 'California', 14),
(243, 'Concepción Batres', 14),
(244, 'El Triunfo', 14),
(245, 'Ereguayquín', 14),
(246, 'Estanzuelas', 14),
(247, 'Jiquilisco', 14),
(248, 'Jucuapa', 14),
(249, 'Jucuarán', 14),
(250, 'Mercedes Umaña', 14),
(251, 'Nueva Granada', 14),
(252, 'Ozatlán', 14),
(253, 'Puerto El Triunfo', 14),
(254, 'San Agustín', 14),
(255, 'San Buenaventura', 14),
(256, 'San Dionisio', 14),
(257, 'San Francisco Javier', 14),
(258, 'Santa Elena', 14),
(259, 'Santa María', 14),
(260, 'Santiago de María', 14),
(261, 'Tecapán', 14),
(262, 'Usulután', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacunacion_sede`
--

CREATE TABLE `vacunacion_sede` (
  `id_sede` int(11) NOT NULL,
  `nombre_sede` varchar(100) NOT NULL,
  `municipio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vacunacion_sede`
--

INSERT INTO `vacunacion_sede` (`id_sede`, `nombre_sede`, `municipio_id`) VALUES
(1, 'SEDE de Ahuachapán', 1),
(2, 'SEDE de Jujutla', 2),
(3, 'SEDE de Atiquizaya', 3),
(4, 'SEDE de Concepción de Ataco', 4),
(5, 'SEDE de El Refugio', 5),
(6, 'SEDE de Guaymango', 6),
(7, 'SEDE de Apaneca', 7),
(8, 'SEDE de San Francisco Menéndez', 8),
(9, 'SEDE de San Lorenzo', 9),
(10, 'SEDE de San Pedro Puxtla', 10),
(11, 'SEDE de Tacuba', 11),
(12, 'SEDE de Turín', 12),
(13, 'SEDE de Cinquera', 13),
(14, 'SEDE de Villa Dolores', 14),
(15, 'SEDE de Guacotecti', 15),
(16, 'SEDE de Ilobasco', 16),
(17, 'SEDE de Jutiapa', 17),
(18, 'SEDE de San Isidro', 18),
(19, 'SEDE de Sensuntepeque', 19),
(20, 'SEDE de Ciudad de Tejutepeque', 20),
(21, 'SEDE de Victoria', 21),
(22, 'SEDE de Agua Caliente', 22),
(23, 'SEDE de Arcatao', 23),
(24, 'SEDE de Azacualpa', 24),
(25, 'SEDE de Chalatenango', 25),
(26, 'SEDE de Citalá', 26),
(27, 'SEDE de Comalapa', 27),
(28, 'SEDE de Concepción Quezaltepeque', 28),
(29, 'SEDE de Dulce Nombre de María', 29),
(30, 'SEDE de El Carrizal', 30),
(31, 'SEDE de El Paraíso', 31),
(32, 'SEDE de La Laguna', 32),
(33, 'SEDE de La Palma', 33),
(34, 'SEDE de La Reina', 34),
(35, 'SEDE de Las Vueltas', 35),
(36, 'SEDE de Nombre de Jesús', 36),
(37, 'SEDE de Nueva Concepción', 37),
(38, 'SEDE de Nueva Trinidad', 38),
(39, 'SEDE de Ojos de Agua', 39),
(40, 'SEDE de Potonico', 40),
(41, 'SEDE de San Antonio de la Cruz', 41),
(42, 'SEDE de San Antonio Los Ranchos', 42),
(43, 'SEDE de San Fernando', 43),
(44, 'SEDE de San Francisco Lempa', 44),
(45, 'SEDE de San Francisco Morazán', 45),
(46, 'SEDE de San Ignacio', 46),
(47, 'SEDE de San Isidro Labrador', 47),
(48, 'SEDE de San José Cancasque', 48),
(49, 'SEDE de San José Las Flores', 49),
(50, 'SEDE de San Luis del Carmen', 50),
(51, 'SEDE de San Miguel de Mercedes', 51),
(52, 'SEDE de San Rafael', 52),
(53, 'SEDE de Santa Rita', 53),
(54, 'SEDE de Tejutla', 54),
(55, 'SEDE de Candelaria', 55),
(56, 'SEDE de Cojutepeque', 56),
(57, 'SEDE de El Carmen', 57),
(58, 'SEDE de El Rosario', 58),
(59, 'SEDE de Monte San Juan', 59),
(60, 'SEDE de Oratorio de Concepción', 60),
(61, 'SEDE de San Bartolomé Perulapía', 61),
(62, 'SEDE de San Cristóbal', 62),
(63, 'SEDE de San José Guayabal', 63),
(64, 'SEDE de San Pedro Perulapán', 64),
(65, 'SEDE de San Rafael Cedros', 65),
(66, 'SEDE de San Ramón', 66),
(67, 'SEDE de Santa Cruz Analquito', 67),
(68, 'SEDE de Santa Cruz Michapa', 68),
(69, 'SEDE de Suchitoto', 69),
(70, 'SEDE de Tenancingo', 70),
(71, 'SEDE de Antiguo Cuscatlán', 71),
(72, 'SEDE de Chiltiupán', 72),
(73, 'SEDE de Ciudad Arce', 73),
(74, 'SEDE de Colón', 74),
(75, 'SEDE de Comasagua', 75),
(76, 'SEDE de Huizúcar', 76),
(77, 'SEDE de Jayaque', 77),
(78, 'SEDE de Jicalapa', 78),
(79, 'SEDE de La Libertad', 79),
(80, 'SEDE de Santa Tecla', 80),
(81, 'SEDE de Nuevo Cuscatlán', 81),
(82, 'SEDE de Opico', 82),
(83, 'SEDE de Quezaltepeque', 83),
(84, 'SEDE de Sacacoyo', 84),
(85, 'SEDE de San José Villanueva', 85),
(86, 'SEDE de San Matías', 86),
(87, 'SEDE de San Pablo Tacachico', 87),
(88, 'SEDE de Talnique', 88),
(89, 'SEDE de Tamanique', 89),
(90, 'SEDE de Teotepeque', 90),
(91, 'SEDE de Tepecoyo', 91),
(92, 'SEDE de Zaragoza', 92),
(93, 'SEDE de Cuyultitán', 93),
(94, 'SEDE de El Rosario', 94),
(95, 'SEDE de Jerusalén', 95),
(96, 'SEDE de Mercedes La Ceiba', 96),
(97, 'SEDE de Olocuilta', 97),
(98, 'SEDE de Paraíso de Osorio', 98),
(99, 'SEDE de San Antonio Masahuat', 99),
(100, 'SEDE de San Emigdio', 100),
(101, 'SEDE de San Francisco Chinameca', 101),
(102, 'SEDE de San Juan Nonualco', 102),
(103, 'SEDE de San Juan Talpa', 103),
(104, 'SEDE de San Juan Tepezontes', 104),
(105, 'SEDE de San Luis La Herradura', 105),
(106, 'SEDE de San Luis Talpa', 106),
(107, 'SEDE de San Miguel Tepezontes', 107),
(108, 'SEDE de San Pedro Masahuat', 108),
(109, 'SEDE de San Pedro Nonualco', 109),
(110, 'SEDE de San Rafael Obrajuelo', 110),
(111, 'SEDE de Santa María Ostuma', 111),
(112, 'SEDE de Santiago Nonualco', 112),
(113, 'SEDE de Tapalhuaca', 113),
(114, 'SEDE de Zacatecoluca', 114),
(115, 'SEDE de Anamorós', 115),
(116, 'SEDE de Bolívar', 116),
(117, 'SEDE de Concepción de Oriente', 117),
(118, 'SEDE de Conchagua', 118),
(119, 'SEDE de El Carmen', 119),
(120, 'SEDE de El Sauce', 120),
(121, 'SEDE de Intipucá', 121),
(122, 'SEDE de La Unión', 122),
(123, 'SEDE de Lislique', 123),
(124, 'SEDE de Meanguera del Golfo', 124),
(125, 'SEDE de Nueva Esparta', 125),
(126, 'SEDE de Pasaquina', 126),
(127, 'SEDE de Polorós', 127),
(128, 'SEDE de San Alejo', 128),
(129, 'SEDE de San José', 129),
(130, 'SEDE de Santa Rosa de Lima', 130),
(131, 'SEDE de Yayantique', 131),
(132, 'SEDE de Yucuayquín', 132),
(133, 'SEDE de Arambala', 133),
(134, 'SEDE de Cacaopera', 134),
(135, 'SEDE de Chilanga', 135),
(136, 'SEDE de Corinto', 136),
(137, 'SEDE de Delicias de Concepción', 137),
(138, 'SEDE de El Divisadero', 138),
(139, 'SEDE de El Rosario', 139),
(140, 'SEDE de Gualococti', 140),
(141, 'SEDE de Guatajiagua', 141),
(142, 'SEDE de Joateca', 142),
(143, 'SEDE de Jocoaitique', 143),
(144, 'SEDE de Jocoro', 144),
(145, 'SEDE de Lolotiquillo', 145),
(146, 'SEDE de Meanguera', 146),
(147, 'SEDE de Osicala', 147),
(148, 'SEDE de Perquín', 148),
(149, 'SEDE de San Carlos', 149),
(150, 'SEDE de San Fernando', 150),
(151, 'SEDE de San Francisco Gotera', 151),
(152, 'SEDE de San Isidro', 152),
(153, 'SEDE de San Simón', 153),
(154, 'SEDE de Sensembra', 154),
(155, 'SEDE de Sociedad', 155),
(156, 'SEDE de Torola', 156),
(157, 'SEDE de Yamabal', 157),
(158, 'SEDE de Yoloaiquín', 158),
(159, 'SEDE de Carolina', 159),
(160, 'SEDE de Chapeltique', 160),
(161, 'SEDE de Chinameca', 161),
(162, 'SEDE de Chirilagua', 162),
(163, 'SEDE de Ciudad Barrios', 163),
(164, 'SEDE de Comacarán', 164),
(165, 'SEDE de El Tránsito', 165),
(166, 'SEDE de Lolotique', 166),
(167, 'SEDE de Moncagua', 167),
(168, 'SEDE de Nueva Guadalupe', 168),
(169, 'SEDE de Nuevo Edén de San Juan', 169),
(170, 'SEDE de Quelepa', 170),
(171, 'SEDE de San Antonio', 171),
(172, 'SEDE de San Gerardo', 172),
(173, 'SEDE de San Jorge', 173),
(174, 'SEDE de San Luis de la Reina', 174),
(175, 'SEDE de San Miguel', 175),
(176, 'SEDE de San Rafael', 176),
(177, 'SEDE de Sesori', 177),
(178, 'SEDE de Uluazapa', 178),
(179, 'SEDE de Aguilares', 179),
(180, 'SEDE de Apopa', 180),
(181, 'SEDE de Ayutuxtepeque', 181),
(182, 'SEDE de Cuscatancingo', 182),
(183, 'SEDE de Delgado', 183),
(184, 'SEDE de El Paisnal', 184),
(185, 'SEDE de Guazapa', 185),
(186, 'SEDE de Ilopango', 186),
(187, 'SEDE de Mejicanos', 187),
(188, 'SEDE de Nejapa', 188),
(189, 'SEDE de Panchimalco', 189),
(190, 'SEDE de Rosario de Mora', 190),
(191, 'SEDE de San Marcos', 191),
(192, 'SEDE de San Martín', 192),
(193, 'SEDE de San Salvador', 193),
(194, 'SEDE de Santiago Texacuangos', 194),
(195, 'SEDE de Santo Tomás', 195),
(196, 'SEDE de Soyapango', 196),
(197, 'SEDE de Tonacatepeque', 197),
(198, 'SEDE de Apastepeque', 198),
(199, 'SEDE de Guadalupe', 199),
(200, 'SEDE de San Cayetano Istepeque', 200),
(201, 'SEDE de San Esteban Catarina', 201),
(202, 'SEDE de San Ildefonso', 202),
(203, 'SEDE de San Lorenzo', 203),
(204, 'SEDE de San Sebastián', 204),
(205, 'SEDE de Santa Clara', 205),
(206, 'SEDE de Santo Domingo', 206),
(207, 'SEDE de San Vicente', 207),
(208, 'SEDE de Tecoluca', 208),
(209, 'SEDE de Tepetitán', 209),
(210, 'SEDE de Verapaz', 210),
(211, 'SEDE de Candelaria de la Frontera', 211),
(212, 'SEDE de Chalchuapa', 212),
(213, 'SEDE de Coatepeque', 213),
(214, 'SEDE de El Congo', 214),
(215, 'SEDE de El Porvenir', 215),
(216, 'SEDE de Masahuat', 216),
(217, 'SEDE de Metapán', 217),
(218, 'SEDE de San Antonio Pajonal', 218),
(219, 'SEDE de San Sebastián Salitrillo', 219),
(220, 'SEDE de Santa Ana', 220),
(221, 'SEDE de Santa Rosa Guachipilín', 221),
(222, 'SEDE de Santiago de la Frontera', 222),
(223, 'SEDE de Texistepeque', 223),
(224, 'SEDE de Acajutla', 224),
(225, 'SEDE de Armenia', 225),
(226, 'SEDE de Caluco', 226),
(227, 'SEDE de Cuisnahuat', 227),
(228, 'SEDE de Izalco', 228),
(229, 'SEDE de Juayúa', 229),
(230, 'SEDE de Nahuizalco', 230),
(231, 'SEDE de Nahulingo', 231),
(232, 'SEDE de Salcoatitán', 232),
(233, 'SEDE de San Antonio del Monte', 233),
(234, 'SEDE de San Julián', 234),
(235, 'SEDE de Santa Catarina Masahuat', 235),
(236, 'SEDE de Santa Isabel Ishuatán', 236),
(237, 'SEDE de Santo Domingo', 237),
(238, 'SEDE de Sonsonate', 238),
(239, 'SEDE de Sonzacate', 239),
(240, 'SEDE de Alegría', 240),
(241, 'SEDE de Berlín', 241),
(242, 'SEDE de California', 242),
(243, 'SEDE de Concepción Batres', 243),
(244, 'SEDE de El Triunfo', 244),
(245, 'SEDE de Ereguayquín', 245),
(246, 'SEDE de Estanzuelas', 246),
(247, 'SEDE de Jiquilisco', 247),
(248, 'SEDE de Jucuapa', 248),
(249, 'SEDE de Jucuarán', 249),
(250, 'SEDE de Mercedes Umaña', 250),
(251, 'SEDE de Nueva Granada', 251),
(252, 'SEDE de Ozatlán', 252),
(253, 'SEDE de Puerto El Triunfo', 253),
(254, 'SEDE de San Agustín', 254),
(255, 'SEDE de San Buenaventura', 255),
(256, 'SEDE de San Dionisio', 256),
(257, 'SEDE de San Francisco Javier', 257),
(258, 'SEDE de Santa Elena', 258),
(259, 'SEDE de Santa María', 259),
(260, 'SEDE de Santiago de María', 260),
(261, 'SEDE de Tecapán', 261),
(262, 'SEDE de Usulután', 262);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `vacunacion_cita`
--
ALTER TABLE `vacunacion_cita`
  ADD PRIMARY KEY (`id_cita`),
  ADD KEY `vacunacion_cita_ciudadano_id_33bac06c_fk_vacunacio` (`ciudadano_id`),
  ADD KEY `vacunacion_cita_sede_id_77eff9d7_fk_vacunacion_sede_id_sede` (`sede_id`);

--
-- Indices de la tabla `vacunacion_ciudadano`
--
ALTER TABLE `vacunacion_ciudadano`
  ADD PRIMARY KEY (`dui`);

--
-- Indices de la tabla `vacunacion_departamento`
--
ALTER TABLE `vacunacion_departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `vacunacion_dosis`
--
ALTER TABLE `vacunacion_dosis`
  ADD PRIMARY KEY (`id_dosis`),
  ADD KEY `vacunacion_dosis_cita_id_1c80e500_fk_vacunacion_cita_id_cita` (`cita_id`);

--
-- Indices de la tabla `vacunacion_municipio`
--
ALTER TABLE `vacunacion_municipio`
  ADD PRIMARY KEY (`id_municipio`),
  ADD KEY `vacunacion_municipio_departamento_id_f99d3d20_fk_vacunacio` (`departamento_id`);

--
-- Indices de la tabla `vacunacion_sede`
--
ALTER TABLE `vacunacion_sede`
  ADD PRIMARY KEY (`id_sede`),
  ADD KEY `vacunacion_sede_municipio_id_f79c847f_fk_vacunacio` (`municipio_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `vacunacion_cita`
--
ALTER TABLE `vacunacion_cita`
  MODIFY `id_cita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `vacunacion_departamento`
--
ALTER TABLE `vacunacion_departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `vacunacion_dosis`
--
ALTER TABLE `vacunacion_dosis`
  MODIFY `id_dosis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `vacunacion_municipio`
--
ALTER TABLE `vacunacion_municipio`
  MODIFY `id_municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT de la tabla `vacunacion_sede`
--
ALTER TABLE `vacunacion_sede`
  MODIFY `id_sede` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `vacunacion_cita`
--
ALTER TABLE `vacunacion_cita`
  ADD CONSTRAINT `vacunacion_cita_ciudadano_id_33bac06c_fk_vacunacio` FOREIGN KEY (`ciudadano_id`) REFERENCES `vacunacion_ciudadano` (`dui`),
  ADD CONSTRAINT `vacunacion_cita_sede_id_77eff9d7_fk_vacunacion_sede_id_sede` FOREIGN KEY (`sede_id`) REFERENCES `vacunacion_sede` (`id_sede`);

--
-- Filtros para la tabla `vacunacion_dosis`
--
ALTER TABLE `vacunacion_dosis`
  ADD CONSTRAINT `vacunacion_dosis_cita_id_1c80e500_fk_vacunacion_cita_id_cita` FOREIGN KEY (`cita_id`) REFERENCES `vacunacion_cita` (`id_cita`);

--
-- Filtros para la tabla `vacunacion_municipio`
--
ALTER TABLE `vacunacion_municipio`
  ADD CONSTRAINT `vacunacion_municipio_departamento_id_f99d3d20_fk_vacunacio` FOREIGN KEY (`departamento_id`) REFERENCES `vacunacion_departamento` (`id_departamento`);

--
-- Filtros para la tabla `vacunacion_sede`
--
ALTER TABLE `vacunacion_sede`
  ADD CONSTRAINT `vacunacion_sede_municipio_id_f79c847f_fk_vacunacio` FOREIGN KEY (`municipio_id`) REFERENCES `vacunacion_municipio` (`id_municipio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
