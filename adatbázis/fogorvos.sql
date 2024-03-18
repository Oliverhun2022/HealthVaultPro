-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Feb 16. 10:18
-- Kiszolgáló verziója: 10.4.24-MariaDB
-- PHP verzió: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `projekt`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `fogorvos_osszevon`
--

CREATE TABLE `fogorvos` (
  `ID` int(8) NOT NULL,
  `mobiltelefonszam` int(10) DEFAULT NULL,
  `nev` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `email_cim` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `szuletesi_datum` date DEFAULT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `fogorvos_osszevon`
--

INSERT INTO `fogorvos` (`ID`, `mobiltelefonszam`, `neve`, `email_cim`, `szuletesi_datum`) VALUES
(1, 620322101, 'Dr. Kovács Dániel', 'drkovacsdaniel@email.hu', '1979-11-19'),
(2, 630200123, 'Dr. Szilágyi George', 'szilagyi.george@gmail.com', '1963-02-10'),
(3, 2147483647, 'Dr.Horváth Péter', 'horvath.peterdr@email.hu', '1980-03-20'),
(4, 630510240, 'dr. Balázs István', 'balazs.istvandr@gmail.com', '1969-10-10'),
(5, 620756101, 'Dr. Orbán Balázs', 'dr.orban.balazs@gmail.com', '1956-03-23'),
(6, 620200145, 'Dr. Kovács István', 'kovacsdoktor@gmail.com', '1965-03-15'),
(7, 620200145, 'Dr. Varga Dániel Balázs', 'varga.daniel.balazs@gmail.com', '1990-06-01'),
(8, 620200145, 'Dr. Vajda Antónia Ágota', 'vajdaantonia@gmail.com', '1990-05-03'),
(9, 630250120, 'Dr. Kálócz Borbála', 'kalocz.borbala@gmail.com', '1974-10-23'),
(10, 647525200, 'Dr. Ugrai György', 'gyorgyugrai@gmail.com', '1989-03-04');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `fogorvos_osszevon`
--
ALTER TABLE `fogorvos_osszevon`
  ADD PRIMARY KEY (`fogorvos_azon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
