-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2020 at 09:26 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `routebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Contraseña` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `Nombre`, `Apellido`, `Email`, `Contraseña`) VALUES
(43, 'Admin', 'Admin', 'admin@routebook.com', '81DC9BDB52D04DC20036DBD8313ED055'),
(44, 'Víctor', 'Gallardo', 'victor.gallardo@routebook.com', '81DC9BDB52D04DC20036DBD8313ED055'),
(45, 'Alejandro', 'Antiñolo', 'alejandro.antiñolo@routebook.com', '81DC9BDB52D04DC20036DBD8313ED055');

-- --------------------------------------------------------

--
-- Table structure for table `usuvia`
--

CREATE TABLE `usuvia` (
  `IdUsuario` int(11) NOT NULL,
  `IdVia` int(11) NOT NULL,
  `Valoracion` char(5) NOT NULL,
  `Intentos` int(11) DEFAULT NULL,
  `Comentario` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuvia`
--

INSERT INTO `usuvia` (`IdUsuario`, `IdVia`, `Valoracion`, `Intentos`, `Comentario`) VALUES
(44, 62, '*****', 3, 'Mítico'),
(44, 63, '**', 2, 'Facilón'),
(44, 64, '***', 2, 'Muy bonita'),
(44, 67, '***', 3, 'Bloquera'),
(44, 68, '**', 4, 'Fea'),
(44, 69, '***', 7, 'Floja para 7c'),
(44, 70, '***', 2, 'Explosiva'),
(44, 71, '****', 3, 'Continuidad'),
(44, 72, '****', 2, 'Fina fina'),
(44, 73, '****', 6, 'Dura!'),
(45, 74, '***', 1, 'Bonita '),
(45, 75, '**', 2, 'Parecida a la Jungla'),
(45, 76, '***', 2, 'Con un paso duro');

-- --------------------------------------------------------

--
-- Table structure for table `via`
--

CREATE TABLE `via` (
  `idVia` int(11) NOT NULL,
  `Nom_Via` varchar(80) NOT NULL,
  `Grado` char(5) NOT NULL,
  `Localidad` varchar(45) NOT NULL,
  `Sector` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `via`
--

INSERT INTO `via` (`idVia`, `Nom_Via`, `Grado`, `Localidad`, `Sector`) VALUES
(62, 'Metecaña Forever', '7a', 'Mijas', 'La Raja'),
(63, 'Pa que veas', '7a', 'Mijas', 'La Raja'),
(64, 'Tubérculo erectus', '7a', 'Mijas ', 'La Raja'),
(67, 'Taladro casero', '7a+', 'Mijas', 'La Raja'),
(68, 'Enjambre', '7b', 'Mijas', 'La Raja'),
(69, 'Eterno retorno', '7c', 'Mijas', 'La Raja'),
(70, 'Ultimo cartucho', '7c', 'Villanueva Del Trabuco', 'Los Bloques'),
(71, 'FranK Sinatra', '7b', 'El Chorro', 'Buenasombra'),
(72, 'Hilando fino', '7b', 'El Chorro', 'Buena Sombra'),
(73, 'Mou', '7b+', 'Villanueva Del Rosario', 'El Corral'),
(74, 'La jungla ', '6c+', 'Málaga', 'Pinares De San Antón'),
(75, 'La jungla Mix', '7a', 'Málaga', 'Pinares De San Antón'),
(76, 'Sin Sospecha', '7a', 'Villanueva De Cauche', 'Yugoslavia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indexes for table `usuvia`
--
ALTER TABLE `usuvia`
  ADD PRIMARY KEY (`IdUsuario`,`IdVia`),
  ADD KEY `fk_Usuario_has_Via_Via1_idx` (`IdVia`),
  ADD KEY `fk_Usuario_has_Via_Usuario_idx` (`IdUsuario`);

--
-- Indexes for table `via`
--
ALTER TABLE `via`
  ADD PRIMARY KEY (`idVia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `via`
--
ALTER TABLE `via`
  MODIFY `idVia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `usuvia`
--
ALTER TABLE `usuvia`
  ADD CONSTRAINT `fk_usuario` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_via` FOREIGN KEY (`IdVia`) REFERENCES `via` (`idVia`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
