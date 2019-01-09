-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 09 Sty 2019, 22:39
-- Wersja serwera: 10.3.11-MariaDB
-- Wersja PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `biblioteka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filmy`
--

CREATE TABLE `filmy` (
  `id` int(11) NOT NULL,
  `tytul` varchar(100) CHARACTER SET latin1 NOT NULL,
  `autor` varchar(100) CHARACTER SET latin1 NOT NULL,
  `minuty` int(11) NOT NULL,
  `obejrzane` varchar(3) CHARACTER SET latin1 NOT NULL,
  `gatunek` varchar(100) CHARACTER SET latin1 NOT NULL,
  `rok_wydania` int(11) NOT NULL,
  `okladka` varchar(1000) CHARACTER SET latin1 NOT NULL,
  `uzytkownik` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `filmy`
--

INSERT INTO `filmy` (`id`, `tytul`, `autor`, `minuty`, `obejrzane`, `gatunek`, `rok_wydania`, `okladka`, `uzytkownik`) VALUES
(34, 'Spider-Man Uniwersum (2018)', '	Bob PersichettiPeter Ramsey', 117, 'Nie', 'Fantastyka', 2018, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGIbsPI7Uprabx_S7yGPFKu0PffsW4PAWWsxk6dNe96VHI52s5', 'guest'),
(47, 'Najlepszy (2017)', ' Bartosz Chajdecki', 110, 'Nie', 'Biografia', 2017, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1kL7a1R9c3eJdf7EK2cEfScPeoxwO1W2VXsQRMN84C-BSxlsk', 'administrator'),
(33, 'Avengers: Wojna bez granic (2018)', '	Anthony RussoJoe Russo', 149, 'Nie', 'Fantastyka', 2018, 'https://ssl-gfx.filmweb.pl/po/37/58/693758/7839647.6.jpg', 'guest'),
(5, 'Bumblebee', 'Travis Knight II', 111, 'Tak', 'Fantastyka', 2001, 'https://ssl-gfx.filmweb.pl/po/03/50/790350/7864347.3.jpg', 'administrator'),
(48, 'Iniemamocni 2 (2018)', ' Michael Giacchino', 118, 'Nie', 'Przygodowa', 2018, 'https://ssl-gfx.filmweb.pl/po/01/44/740144/7841690.6.jpg', 'administrator'),
(49, 'Piraci z KaraibÃ³w: Zemsta Salazara (2017)', ' Geoff Zanelli', 129, 'Nie', 'Przygodowa', 2017, 'https://ssl-gfx.filmweb.pl/po/65/42/606542/7785907.6.jpg', 'administrator'),
(50, 'Doktor Strange (2016)', ' Scott Derrickson', 130, 'Nie', 'Przygodowa', 2016, 'https://cont7.naekranie.pl/wp-content/uploads/2014/01/Doktor-Strange-plakat-278x400.jpg', 'administrator'),
(30, 'Grinch', 'Yarrow Cheney, Scott Mosier', 105, 'Tak', 'Fantastyka', 2018, 'http://t2.gstatic.com/images?q=tbn:ANd9GcQVhau6HsdNl4fVBPLXEEbQiUJabKGxCgPhPCXG_tv6J8v846PE', 'guest'),
(35, 'Iluzja 2 (2016)', ' Jon M. Chu', 129, 'Nie', 'Thriller', 2016, 'https://cont7.naekranie.pl/wp-content/uploads/2014/06/Iluzja-2-plakat-270x400.jpg', 'guest'),
(36, 'Gwiezdne wojny: Przebudzenie Mocy (2015)', ' J.J. Abrams', 136, 'Nie', 'Fantastyka', 2015, 'https://ssl-gfx.filmweb.pl/po/10/51/671051/7709414.6.jpg', 'guest'),
(37, 'Kapitan Ameryka: Wojna bohaterÃ³w (2016)', ' Anthony Russo Joe Russo', 147, 'Nie', 'Fantastyka', 2016, 'https://ssl-gfx.filmweb.pl/po/62/09/706209/7729780.6.jpg', 'guest'),
(38, 'Coco (2017)', ' Michael Giacchino', 109, 'Nie', 'Przygodowa', 2017, 'https://ssl-gfx.filmweb.pl/po/22/60/752260/7813486.6.jpg', 'guest'),
(39, 'Gwiezdne wojny: ostatni Jedi (2017)', ' John Williams', 150, 'Nie', 'Przygodowa', 2017, 'https://ssl-gfx.filmweb.pl/po/10/49/671049/7808454.6.jpg', 'guest'),
(40, 'Thor: Ragnarok (2017)', ' Mark Mothersbaugh', 130, 'Nie', 'Przygodowa', 2017, 'https://i.pinimg.com/originals/35/68/59/356859f2719267c3ce7cb551e189cc63.jpg', 'guest'),
(41, ' Czarna Pantera (2018)', ' Ludwig GÃ¶ransson', 134, 'Nie', 'Fantastyka', 2018, 'https://cont7.naekranie.pl/wp-content/uploads/2014/10/Czarna-Pantera-plakat-278x400.jpg', 'guest'),
(42, 'Zakonnica (2018)', ' Corin Hardy', 96, 'Nie', 'Horror', 2018, 'https://ssl-gfx.filmweb.pl/po/70/24/777024/7849765.3.jpg', 'guest'),
(43, 'Avengers: Czas Ultrona (2015)', ' Brian Tyler', 141, 'Nie', 'Fantastyka', 2015, 'https://ssl-gfx.filmweb.pl/po/72/47/637247/7681633.6.jpg', 'guest'),
(44, 'Ant-Man i Osa (2018)', 'Christophe Beck', 118, 'Nie', 'Przygodowa', 2018, 'https://kino.mck.skarzysko.pl/images/2018/07/26/_spmedia_thumbs/ant-man_i_osa.jpg', 'guest'),
(45, 'StraÅ¼nicy Galaktyki (2014)', 'Tyler Bates', 121, 'Nie', 'Przygodowa', 2014, 'https://ssl-gfx.filmweb.pl/po/43/57/594357/7619980.6.jpg', 'guest'),
(46, 'Seria Niezgodna: Wierna (2016)', ' Robert Schwentke', 120, 'Nie', 'Przygodowa', 2016, 'https://ssl-gfx.filmweb.pl/po/86/47/698647/7727963.6.jpg', 'administrator'),
(51, 'Alicja po drugiej stronie lustra (2016)', ' James Bobin', 113, 'Nie', 'Fantastyka', 2016, 'https://ssl-gfx.filmweb.pl/po/02/91/690291/7723186.6.jpg', 'administrator'),
(52, 'Jumanji: Przygoda w dÅ¼ungli (2017)', ' James Newton Howard', 119, 'Nie', 'Przygodowa', 2017, 'https://ssl-gfx.filmweb.pl/po/72/50/717250/7815013.6.jpg', 'administrator'),
(53, 'Sicario 2: Soldado (2018)', ' Hildur GuÃ°nadÃ³ttir', 122, 'Nie', 'Kryminal', 2018, 'https://ssl-gfx.filmweb.pl/po/61/71/776171/7847061.6.jpg', 'administrator'),
(54, 'Listy do M. 3 (2017)', 'Tomasz Konecki', 100, 'Nie', 'Przygodowa', 2017, 'https://6.allegroimg.com/s512/01d06e/c80d708948759ca4c2c5faee3306', 'administrator'),
(55, 'Gra o wszystko (2017)', ' Daniel Pemberton', 140, 'Nie', 'Biografia', 2017, 'https://5.allegroimg.com/s512/034f08/0081609c476c9d9504e8bee2fc65', 'administrator'),
(56, 'Transformers: Ostatni Rycerz (2017)', ' Steve Jablonsky', 155, 'Nie', 'Przygodowa', 2017, 'https://i.wpimg.pl/O/423x660/d.wpimg.pl/958528950--1554668610/transformers-the-last.jpg', 'administrator'),
(57, 'Aquaman (2018)', ' Rupert Gregson-Williams', 142, 'Nie', 'Fantastyka', 2018, 'https://ssl-gfx.filmweb.pl/po/90/85/549085/7867964.6.jpg', 'administrator');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `konta`
--

CREATE TABLE `konta` (
  `id` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `haslo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `konta`
--

INSERT INTO `konta` (`id`, `login`, `haslo`) VALUES
(1, 'administrator', 'damianded0'),
(4, 'Metan', 'damianded0'),
(5, 'gowno', 'damianded1'),
(6, 'Damiand', 'damianded0'),
(7, 'dupa', 'Damianded0'),
(8, 'ProHusarzx1997', '12345678'),
(9, 'xXxSromotnygolebiarzxXx98', 'sramwlesie'),
(10, 'FuBuxMetin', 'elodamian'),
(11, 'metannnn', 'damianded0'),
(12, 'PierdolonyMarekMostowiak', 'hankalubiwdupe'),
(13, 'xOGNISTYROZBUJNIK69xX', 'ELOTURAFAL'),
(14, 'krulAlbani', 'elowalewiadro'),
(15, 'RudyKut0ngZAGLADYx997', 'lolololo'),
(16, 'xXxZabujcaSmokuwxXx1996vip', '12345678'),
(17, 'PapricoMocarzXVI', '12345678');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `filmy`
--
ALTER TABLE `filmy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `konta`
--
ALTER TABLE `konta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_UNIQUE` (`login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `filmy`
--
ALTER TABLE `filmy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT dla tabeli `konta`
--
ALTER TABLE `konta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
