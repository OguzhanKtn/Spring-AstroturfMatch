-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Tem 2023, 18:54:40
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `vize_2`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `backup`
--

CREATE TABLE `backup` (
  `bid` bigint(20) NOT NULL,
  `fid` bigint(20) DEFAULT NULL,
  `tid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `backup`
--

INSERT INTO `backup` (`bid`, `fid`, `tid`) VALUES
(1, 24, 1),
(2, 25, 1),
(3, 26, 1),
(4, 30, 2),
(5, 31, 2),
(7, 32, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `footballer`
--

CREATE TABLE `footballer` (
  `fid` bigint(20) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `footballer`
--

INSERT INTO `footballer` (`fid`, `age`, `email`, `name`, `password`, `surname`) VALUES
(1, 31, 'oguzhanktn@hotmail.com', 'Oğuzhan', 'wp1Uw67Dg2IlGMKewplXbMKTw7rDs8KwLMKVwpjCum7DjQgIa8KsHj94wpvDscKbZw==', 'Kotan'),
(13, 37, 'alex@hotmail.com', 'Alex', 'H8KcPsK7KMOzaT7CrsKjw7FjHsK7T29JwpMbw7M7f2vCsRlww5DDmR4UThY=', 'DeSouza'),
(16, 58, 'ekotan@hotmail.com', 'Esen', 'wocORVjDnsKtTn55dG8yIWXDqcOFRMOMwqY5PcKxwohBEMOIJz/DucKUw51N', 'Kotan'),
(17, 18, 'aguler@hotmail.com', 'Arda', 'w61Fw7fDq3PDl8OhCHAjw4fDuMOhNCcpMGgEw47DrcKvwql3w4AnAcOHw79/RWU=', 'Guler'),
(18, 33, 'enner@hotmail.com', 'Enner', 'cGvChTbDnhfCmsKKwpNUw5UGw7w4w6B8w5/DplxVwpB7w5fDnsK2CHrDm2JowrbDtw==', 'Valencia'),
(19, 29, 'mb@hotmail.com', 'Mitchy', 'HE3CqsKcw7BGUMKXDsK/RD9Xw5XDmsKlHiNSXw0nw7ICDsO3w5vCiXnCnyrDhg==', 'Batshuayi'),
(20, 23, 'as@hotmail.com', 'Attila', 'wqVebxFqFjvDpmrDt3wmWcOtw6bDusK+PcOzAMKvBcONDVDCnMOjE8KCwoZ9wpA=', 'Szalai'),
(21, 20, 'fk@hotmail.com', 'Ferdi', 'dsKGw65rKmHCh8ODC8Okw59Yw5IZw417NDAYwqzCshDDtsOEwr8mE8KsbDZ6wq4=', 'Kadioglu'),
(24, 30, 'sd@hotmail.com', 'Serdar', 'FsKmw4/CqiATwoQZw5vDlylXLsKFw5UwQMOWwrvCtsKjdxs4w53DqnfDvmHCgcKfwqE=', 'Dursun'),
(25, 27, 'aelmas@hotmail.com', 'Ali', 'DMOwAcKbwqcoe05CwrF8woZtw79Bw6jCgsOMw4zDqBDDq8K+JU44w7HDsR/CsMKtUw==', 'Elmas'),
(26, 27, 'anelka@hotmail.com', 'Nicolas', 'D1bDtVduX8Krw7nClj0Xw4fCtwETOQBbXMOPN8OXOijDvCt7BMKLw7jColQ=', 'Anelka'),
(27, 29, 'myandas@hotmail.com', 'Mert Hakan', 'wpoww4cSwoxcw65fw5Bew7BUasOjFcKOw5TCocKlBWHCtMKOSsKJw7V5wo7CpghwGw==', 'Yandas'),
(28, 22, 'abayindir@hotmail.com', 'Altay', 'w5tAKSFFNcKcwopZCHrCg8O1USt/empuwrrDgwIzQMK1RwDCv8K4w5vCgz8=', 'Bayindir'),
(29, 22, 'acinar@hotmail.com', 'Abdullah', 'd11PGcK9ew8pTxRAwq7CnxsCf0vDtWw+wp/CuCTDr8K9al4wwovChMKfwp4=', 'Cinar'),
(30, 36, 'erkin@hotmail.com', 'Caner', 'wow1EsK2wphxf8Opw5NYD8O4wq4Pw5EtwrnDkgFIcsOAJV1vw4U8wrHCpMOJP8Om', 'Erkin'),
(31, 27, 'ovural@hotmail.com', 'Onur', 'wpJNJXx8TFMFw7xDPzfCsSkEDcOtw5xgwrphw6DDrU8Lw6owQ8KNwojDhws=', 'Vural'),
(32, 41, 'gcelik@hotmail.com', 'Gökhan', 'w5UBw49Sw6TCv8OhN8KCWcOVRgPDhRnCmsKLLMK5woMKBsKeUXpiZsO3b8OOw7LCpw==', 'Celik');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `team`
--

CREATE TABLE `team` (
  `tid` bigint(20) NOT NULL,
  `tname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `team`
--

INSERT INTO `team` (`tid`, `tname`) VALUES
(1, 'A'),
(2, 'B');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) NOT NULL,
  `fid` bigint(20) DEFAULT NULL,
  `tid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `teams`
--

INSERT INTO `teams` (`id`, `fid`, `tid`) VALUES
(1, 1, 1),
(2, 13, 1),
(3, 16, 1),
(4, 17, 2),
(5, 18, 2),
(6, 19, 1),
(7, 20, 1),
(8, 21, 1),
(10, 26, 2),
(11, 27, 2),
(12, 28, 2),
(13, 29, 2);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `backup`
--
ALTER TABLE `backup`
  ADD PRIMARY KEY (`bid`);

--
-- Tablo için indeksler `footballer`
--
ALTER TABLE `footballer`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `UK_ej557xjl1fi78ko6q9f1fedbm` (`email`);

--
-- Tablo için indeksler `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`tid`);

--
-- Tablo için indeksler `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `backup`
--
ALTER TABLE `backup`
  MODIFY `bid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `footballer`
--
ALTER TABLE `footballer`
  MODIFY `fid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Tablo için AUTO_INCREMENT değeri `team`
--
ALTER TABLE `team`
  MODIFY `tid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
