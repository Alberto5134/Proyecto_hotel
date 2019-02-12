-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2019 a las 17:32:26
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `automovil`
--

CREATE TABLE `automovil` (
  `Matricula` varchar(50) NOT NULL,
  `Modelo` varchar(50) NOT NULL,
  `Marca` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `DPI_Cliente` int(11) NOT NULL,
  `Nombre_Cliente` varchar(50) NOT NULL,
  `Apellido_Cliente` varchar(50) NOT NULL,
  `Telefono_Cliente` int(8) NOT NULL,
  `Edad_Cliente` varchar(50) NOT NULL,
  `Matricula_Auto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `No_Registro` int(11) NOT NULL,
  `Cod_Hotel` int(11) NOT NULL,
  `Coste_Habitacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `Cod_Empleado` int(11) NOT NULL,
  `Nombre_Empleado` varchar(50) NOT NULL,
  `Apellido_Empleado` varchar(50) NOT NULL,
  `Telefono_Empleado` int(8) NOT NULL,
  `Cod_turno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gerente`
--

CREATE TABLE `gerente` (
  `DPI_Gerente` int(15) NOT NULL,
  `Nombre_Gerente` varchar(50) NOT NULL,
  `Apellido_Gerente` varchar(50) NOT NULL,
  `Telefono_Gerente` int(8) NOT NULL,
  `Direccion_Gerente` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `No_Habitacion` int(11) NOT NULL,
  `Categoria_Habitacion` varchar(50) NOT NULL,
  `Tiempo_Reservado` varchar(50) NOT NULL,
  `Coste_Habitacion` varchar(50) NOT NULL,
  `Servicios_Habitacion` varchar(50) NOT NULL,
  `No_Reservacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotel`
--

CREATE TABLE `hotel` (
  `Cod_Hotel` int(11) NOT NULL,
  `Nombre_Hotel` varchar(50) NOT NULL,
  `Telefono_Hotel` int(8) NOT NULL,
  `Direccion_Hotel` varchar(50) NOT NULL,
  `Email_Hotel` varchar(50) NOT NULL,
  `No_Habitacion` int(11) NOT NULL,
  `DPI_Cliente` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `No_Registro` int(11) NOT NULL,
  `Fecha_Registro` varchar(50) NOT NULL,
  `Desc_Registro` varchar(50) NOT NULL,
  `DPI_Cliente` int(15) NOT NULL,
  `Cod_Empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservacion`
--

CREATE TABLE `reservacion` (
  `No_Reservacion` int(11) NOT NULL,
  `Fecha_Reserva` varchar(50) NOT NULL,
  `Nombre_Cliente` varchar(50) NOT NULL,
  `Habitacion_Reservada` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `Cod_Turno` int(11) NOT NULL,
  `Tipo_Turno` varchar(50) NOT NULL,
  `Horario_Turno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `automovil`
--
ALTER TABLE `automovil`
  ADD PRIMARY KEY (`Matricula`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`DPI_Cliente`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`No_Registro`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`Cod_Empleado`);

--
-- Indices de la tabla `gerente`
--
ALTER TABLE `gerente`
  ADD PRIMARY KEY (`DPI_Gerente`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`No_Habitacion`);

--
-- Indices de la tabla `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`Cod_Hotel`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`No_Registro`);

--
-- Indices de la tabla `reservacion`
--
ALTER TABLE `reservacion`
  ADD PRIMARY KEY (`No_Reservacion`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`Cod_Turno`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
