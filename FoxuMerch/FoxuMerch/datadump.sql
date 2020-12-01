-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 01, 2020 at 02:07 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datadump`
--

-- --------------------------------------------------------

--
-- Table structure for table `datos`
--

CREATE TABLE `datos` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datos`
--

INSERT INTO `datos` (`id`, `name`, `email`, `pass`) VALUES
(1, 'Ian', 'ian@hotmail.com', '12345'),
(2, 'Bernardo', 'Bernardo@hotmail.com', 'hola'),
(3, 'Pilar', 'pilar@hotmail.com', 'Pily23');

--
-- Table structure for table `Envio`
--

CREATE TABLE `Envio` (
  `Producto_ID` int,
  `Numero_pedido` int,
  `HoraDeCargoaTarjeta` DATE,
  `HoraDeEmpaquetado` DATE,
  `Fecha_envio` DATE,
  PRIMARY KEY (`Producto_ID`, `Numero_pedido`)
);

--
-- Table structure for table `Pedido`
--

CREATE TABLE `Pedido` (
  `Numero_pedido` int,
  `Cliente_ID` int,
  `Nombre_cliente` varchar(50),
  `A_calle` varchar(100),
  `A_ciudad` varchar(50),
  `A_estado` varchar(5),
  `A_CP` varchar(5),
  `Fecha_envio` DATE,
  `Producto_ID` int,
  PRIMARY KEY (`Numero_pedido`)
);


--
-- Table structure for table `Producto`
--

CREATE TABLE `Producto` (
  `Producto_ID` int,
  `Cantidad` int,
  `Tipo_producto` varchar(150),
  PRIMARY KEY (`Producto_ID`)
);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
