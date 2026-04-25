-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Märts 12, 2026 kell 10:54 EL
-- Serveri versioon: 10.4.32-MariaDB
-- PHP versioon: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `cr_rent`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `autod`
--

CREATE TABLE `autod` (
  `kl` int(11) NOT NULL,
  `mark` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `engine` varchar(255) NOT NULL,
  `fuel` enum('bensiin','diisel','elekter','gaas') NOT NULL,
  `price` int(4) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `autod`
--

INSERT INTO `autod` (`kl`, `mark`, `model`, `engine`, `fuel`, `price`, `image`) VALUES
(1, 'Audi', 'Q8', 'V8', 'elekter', 150, 'audiq8.jpg'),
(2, 'B-Series Plus', 'Xterra', 'V6', 'elekter', 501, '/eu.jpg'),
(3, 'Laser', 'Escape', 'V6', 'elekter', 542, '/mauris.xml'),
(4, 'Stylus', 'W201', 'V6', 'gaas', 801, '/semper/interdum/mauris/ullamcorper.aspx'),
(5, 'Quest', 'Probe', 'V8', 'diisel', 893, '/diam/nam/tristique/tortor.png'),
(6, 'Ram Van 2500', 'S2000', 'V8', 'diisel', 386, '/eget/eros.aspx'),
(7, 'Yukon', 'Fiero', 'V6', 'bensiin', 623, '/nisi/nam/ultrices/libero/non/mattis.png'),
(8, 'LS', 'Express 1500', 'V8', 'diisel', 437, '/mus/vivamus/vestibulum/sagittis/sapien.xml'),
(9, 'Hombre', 'Camaro', 'V12', 'elekter', 684, '/eros/viverra/eget/congue.jpg'),
(10, 'Grand Caravan', 'Altima', 'V8', 'gaas', 146, '/erat/id/mauris.png'),
(11, 'Civic GX', 'Murano', 'V8', 'diisel', 799, '/cursus/id/turpis/integer.png'),
(12, 'Corolla', 'Concorde', 'V12', 'bensiin', 318, '/posuere/cubilia/curae/nulla/dapibus/dolor/vel.aspx'),
(13, 'New Yorker', 'Sierra 1500', 'V8', 'elekter', 411, '/in/lectus/pellentesque.json'),
(14, 'GTI', 'Sterling', 'V8', 'gaas', 867, '/cursus/id/turpis/integer/aliquet.aspx'),
(15, 'S40', 'Rendezvous', 'V8', 'elekter', 276, '/turpis/sed.aspx'),
(16, 'Range Rover Sport', 'Mustang', 'V8', 'elekter', 664, '/fusce/lacus/purus/aliquet/at/feugiat/non.json'),
(17, '57', 'GranTurismo', 'V12', 'elekter', 721, '/massa/id.js'),
(18, 'Phaeton', 'Bronco', 'V6', 'bensiin', 579, '/nec/dui.js'),
(19, 'Odyssey', 'STS-V', 'V12', 'diisel', 468, '/nulla/sed/accumsan/felis/ut/at/dolor.jsp'),
(20, 'Quest', 'Envoy XUV', 'V8', 'gaas', 782, '/congue/etiam.png'),
(21, 'Grand Cherokee', 'Classic', 'V12', 'diisel', 766, '/est/et/tempus/semper.html'),
(22, 'Pajero', 'Ram', 'V6', 'elekter', 576, '/sapien.jsp'),
(23, 'Tacoma', 'Milan', 'V12', 'bensiin', 651, '/mollis.aspx'),
(24, 'GTI', 'RL', 'V12', 'gaas', 965, '/ante/ipsum/primis.html'),
(25, 'Savana 3500', 'Elantra', 'V12', 'gaas', 432, '/volutpat/erat/quisque/erat/eros/viverra/eget.json'),
(26, 'Intrepid', 'Navajo', 'V12', 'gaas', 150, '/nisl/ut/volutpat.jsp'),
(27, 'Vandura 3500', 'S-Class', 'V8', 'gaas', 129, '/tortor/risus/dapibus/augue/vel/accumsan.aspx'),
(28, 'Silhouette', 'Regal', 'V6', 'diisel', 603, '/lobortis/est/phasellus/sit/amet/erat.xml'),
(29, 'C-Class', '400E', 'V6', 'elekter', 640, '/ligula/sit.jpg'),
(30, 'Cavalier', 'Viper', 'V6', 'diisel', 649, '/nam/congue/risus/semper/porta/volutpat.js'),
(31, 'Accord', 'Rio', 'V8', 'bensiin', 664, '/viverra.jsp'),
(32, 'Econoline E150', 'LTD Crown Victoria', 'V8', 'elekter', 527, '/eget/orci/vehicula/condimentum/curabitur/in.xml'),
(33, 'Montana', 'RL', 'V8', 'elekter', 486, '/aliquam/sit/amet/diam.aspx'),
(34, 'Eldorado', 'Vibe', 'V8', 'diisel', 355, '/tempus/vivamus/in/felis/eu.html'),
(35, 'RVR', 'Clubman', 'V6', 'bensiin', 966, '/venenatis/lacinia/aenean.jpg'),
(36, 'Canyon', 'Avenger', 'V12', 'diisel', 604, '/lobortis/sapien.aspx'),
(37, 'Excursion', 'Tacoma Xtra', 'V12', 'gaas', 391, '/ultrices.html'),
(38, 'Ram 3500 Club', 'Outlander', 'V6', 'diisel', 814, '/lobortis/est/phasellus/sit/amet/erat/nulla.xml'),
(39, 'S4', 'M5', 'V8', 'diisel', 373, '/morbi/ut/odio.js'),
(40, '911', 'Savana', 'V6', 'gaas', 505, '/nullam/porttitor.png'),
(41, 'Eclipse', 'SL-Class', 'V12', 'diisel', 828, '/sit/amet/cursus/id/turpis.xml');

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `autod`
--
ALTER TABLE `autod`
  ADD PRIMARY KEY (`kl`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `autod`
--
ALTER TABLE `autod`
  MODIFY `kl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
