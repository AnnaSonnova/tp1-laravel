-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 18 fév. 2023 à 20:49
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `e2295591maisonneuve`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateDeNaissance` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ville_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `prenom`, `email`, `adresse`, `phone`, `dateDeNaissance`, `created_at`, `updated_at`, `ville_id`) VALUES
(1, 'Waelchi', 'Arlo', 'bcormier@hotmail.com', '84045 Jarvis Highway Apt. 464\nNew Izaiahtown, CO 51995', '(812) 707-1936', '2010-07-23', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 6),
(2, 'Larson', 'Santina', 'leannon.holly@hotmail.com', '506 Wisoky Vista\nHeidenreichville, MS 17511-3303', '(240) 297-3436', '2019-12-22', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 6),
(3, 'Rath', 'Irma', 'trisha68@kihn.com', '62053 Will Station Suite 508\nCartwrightborough, AL 31656-4236', '1-281-570-1044', '1925-05-30', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 2),
(4, 'Pouros', 'Maynard', 'xavier.cartwright@yahoo.com', '4825 Schaefer Park\nKatrinefurt, NM 08759-9256', '1-415-725-5588', '1932-05-29', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 6),
(5, 'Moen', 'Bill', 'zskiles@cummerata.net', '692 Gaylord Cliffs Apt. 016\nSmithmouth, MA 72265-4593', '+1.678.783.7063', '1924-03-19', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 12),
(6, 'Nienow', 'Devante', 'schuster.juana@hotmail.com', '27583 Wuckert Ramp\nAlbinaland, TX 03183', '+1-930-917-4371', '1960-11-05', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 9),
(7, 'Kertzmann', 'Leta', 'laisha.weber@quigley.info', '4228 Schneider Islands Apt. 204\nAnamouth, UT 76382', '206.320.8804', '2015-04-08', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 14),
(8, 'Grady', 'Madison', 'marge67@yahoo.com', '39420 Delta Key\nErdmanview, NM 17552-6839', '(920) 479-2433', '1975-09-22', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 1),
(9, 'Jenkins', 'Crystal', 'szieme@gmail.com', '638 Bins Estates Apt. 448\nBustermouth, HI 66768-4341', '+19042801584', '1964-08-23', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 9),
(10, 'Schuster', 'Greta', 'armstrong.josiane@hettinger.com', '898 Jayme Mountains\nDickinsonmouth, AL 85394', '(346) 531-2650', '2019-03-22', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 10),
(11, 'Considine', 'Oswald', 'ernesto.cartwright@yahoo.com', '81381 Adams Harbor\nGottliebview, AL 16849-9789', '(430) 679-5690', '1924-11-30', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 12),
(12, 'Hudson', 'Brandy', 'savanna.rice@pfannerstill.com', '10530 Eli Forest\nKiehnville, CT 36667-6022', '1-757-310-2297', '1986-07-04', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 5),
(13, 'Dickens', 'Claudie', 'dbuckridge@thiel.com', '72026 Lonny Isle Apt. 024\nLake Eliane, AR 57261-2510', '(715) 775-5299', '1951-11-13', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 7),
(14, 'Terry', 'Angelita', 'rohan.leonel@langworth.biz', '562 Crooks Crescent\nBrooksfort, ID 36333', '1-920-722-9880', '1991-06-12', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 8),
(15, 'Shields', 'Caden', 'jolie.mclaughlin@zieme.net', '19949 Romaguera Court Apt. 580\nNorth Hattiestad, RI 99241-8025', '+1-270-978-2934', '1991-02-12', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 1),
(16, 'Brakus', 'Cecil', 'wendell50@rohan.com', '36613 Linnea Keys Suite 302\nWest Erica, KS 37839-0328', '760-850-3087', '1944-09-22', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 14),
(17, 'McCullough', 'Destiny', 'zpouros@gmail.com', '88919 Arielle Lane Apt. 345\nWest Lilianaport, NH 88053', '+1-815-733-9528', '1924-01-28', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 10),
(18, 'Rutherford', 'Lue', 'mclaughlin.jerod@ullrich.com', '12188 Dana Center Apt. 767\nHettingerbury, IN 62885', '743-880-3329', '2008-10-05', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 12),
(19, 'Huel', 'Amanda', 'reilly.henri@yahoo.com', '64756 Laury Passage\nAngelinaville, CA 57568-2591', '+1-903-866-7466', '1996-10-12', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 8),
(20, 'Volkman', 'Columbus', 'bhane@beahan.com', '9931 Hessel Ramp\nTrompborough, MD 92860-8561', '740.232.3278', '2017-10-16', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 1),
(21, 'Bode', 'Brisa', 'brenna22@hotmail.com', '25575 Jast Square Apt. 289\nAsaview, AK 16538', '+19498314427', '1990-03-11', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 1),
(22, 'Schuster', 'Rita', 'wintheiser.geovanny@gmail.com', '226 Janelle Square Suite 688\nNew Shawn, IN 92162', '785-740-5216', '1992-06-02', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 10),
(23, 'Kilback', 'Porter', 'terry.laury@johns.com', '313 Rohan Prairie Suite 570\nDurganbury, OR 92354-7420', '(224) 461-6362', '1999-01-31', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 12),
(24, 'Beahan', 'Dora', 'tromp.reta@bernhard.com', '4497 Magdalen Station\nJosianneburgh, ND 72761', '1-940-578-3135', '1937-06-11', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 1),
(25, 'Nitzsche', 'Karen', 'gpagac@yahoo.com', '7136 Mozelle Greens\nRatkebury, IN 62727', '+1 (910) 534-4734', '1952-12-12', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 11),
(26, 'Hoppe', 'Lina', 'lilliana.goodwin@legros.com', '8332 Mitchell Route Suite 314\nWest Pasquale, LA 37835', '+1.813.368.3176', '1998-05-02', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 1),
(27, 'Jerde', 'Kip', 'shad.wisoky@williamson.com', '84916 Pollich View Apt. 415\nGrantton, MO 70539-7827', '+16512309201', '2006-04-04', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 14),
(28, 'Towne', 'Wilfred', 'florian.harvey@haley.biz', '12675 Konopelski Path Suite 734\nHansenberg, NC 87223', '1-667-826-4264', '1978-11-28', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 10),
(29, 'Ryan', 'Nya', 'eloy.stoltenberg@luettgen.biz', '5560 Bosco Station\nBashirianton, NJ 37826', '+1 (781) 595-5698', '1925-07-10', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 12),
(30, 'Bins', 'Yolanda', 'jlarson@gmail.com', '84458 Adelle Parkway Apt. 517\nDanielville, NE 75200', '(323) 420-9446', '1937-06-02', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 14),
(31, 'Spinka', 'Carolina', 'edamore@greenfelder.com', '13344 Wilhelm Summit\nEast Janie, WA 52466', '+1.409.290.9841', '1969-07-11', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 8),
(32, 'Shanahan', 'Carleton', 'pfeffer.leora@buckridge.biz', '9999 Diamond Roads Apt. 307\nCristianfurt, UT 20176-0625', '267-262-3773', '1954-02-07', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 7),
(33, 'Cremin', 'Jolie', 'okoch@gmail.com', '12147 Jackeline Mountains\nWest Danielaberg, KY 05894-9279', '+1.212.206.0590', '1953-11-09', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 4),
(34, 'Hermiston', 'Demarco', 'miracle91@yahoo.com', '27626 Stoltenberg Spring\nNaomishire, MO 44559', '1-907-697-5435', '1955-06-23', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 4),
(35, 'Lindgren', 'Adriana', 'christopher85@murazik.net', '70730 Jonatan Junction Apt. 939\nClaireport, IL 36054', '1-828-586-9503', '2017-04-09', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 9),
(36, 'Macejkovic', 'Anais', 'kbecker@hotmail.com', '85229 Brakus Station\nKreigermouth, OR 01390', '(209) 237-5835', '1940-02-22', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 4),
(37, 'Watsica', 'Evelyn', 'raleigh63@hessel.net', '11772 Amani Point Suite 517\nLake Krystalside, OH 92152-0021', '+1.773.688.7235', '1980-04-09', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 7),
(38, 'Champlin', 'Myrtice', 'phyllis39@bins.com', '378 Kayli Turnpike\nNew Lauryborough, ID 91225', '940.356.6348', '1926-05-05', '2023-01-28 07:02:26', '2023-01-28 07:02:26', 10),
(40, 'Keebler', 'Cassandre', 'adolphus.larson@grant.com', '9752 Jayda Port Suite 823\nFunkberg, AK 41173-8306', '+1-925-932-4399', '2019-08-28', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 6),
(41, 'Mayer', 'Shakira', 'icrist@hotmail.com', '142 Rolfson Haven Apt. 350\nAlekborough, OH 56816-6547', '(534) 428-6838', '1978-06-07', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 7),
(42, 'Streich', 'Jarvis', 'dayne.mcdermott@johnston.com', '7722 Glover Place\nWest Makennaport, PA 93235-3866', '+1-860-259-5502', '1961-04-13', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 7),
(43, 'Schiller', 'Constance', 'shilpert@torphy.com', '2055 Robert Divide\nFernefurt, AZ 98819-1886', '+1-740-222-5613', '1931-08-19', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 2),
(44, 'Gulgowski', 'Susie', 'lschuster@bogisich.com', '12112 Annabel Run\nWinnifredview, ID 88768-9841', '603-416-3058', '2002-03-25', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 3),
(45, 'McDermott', 'Albert', 'torey09@hotmail.com', '6668 Olson Mall Apt. 910\nSouth Caitlynbury, DC 00666-2086', '786.871.5804', '2012-08-04', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 14),
(46, 'Stiedemann', 'Oleta', 'queenie.gaylord@russel.com', '30690 Christiansen Fork Apt. 803\nKlingmouth, TN 62963-3980', '+1.931.557.9750', '1997-12-05', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 7),
(47, 'Trantow', 'Briana', 'eleonore.hermiston@yahoo.com', '80853 Stracke Run\nLake Julius, NM 95892-9067', '424.732.1824', '1939-03-13', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 2),
(48, 'McGlynn', 'Stone', 'jmorar@yahoo.com', '7036 Pollich Ville\nNew Howell, AR 32384-5168', '1-951-354-9277', '1941-12-30', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 13),
(49, 'Wisoky', 'Jazlyn', 'xgoldner@swift.com', '875 Herta Gateway\nPort Emanuel, NM 17607-7688', '1-539-512-4151', '1930-10-27', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 3),
(50, 'Lesch', 'Adalberto', 'yhuel@yahoo.com', '321 Mraz Falls\nRueckertown, WI 50620', '+1.445.810.9120', '1952-05-31', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 12),
(51, 'DuBuque', 'Tamara', 'bennett79@hotmail.com', '94470 Alphonso Parkway Apt. 531\nPort Dennisfort, WY 16520-8337', '+1 (458) 451-4807', '1989-06-04', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 2),
(52, 'Herman', 'Corine', 'predovic.eliane@reinger.org', '867 Magnus Mission Suite 283\nWizaland, MD 54472', '831-509-8534', '1971-08-16', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 10),
(53, 'Nitzsche', 'Earnest', 'kayli88@yahoo.com', '621 Glen Path Suite 683\nLake Rex, UT 64657', '1-580-492-3362', '1991-11-13', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 6),
(54, 'Shields', 'Roslyn', 'liza99@gmail.com', '20769 Murphy Key Apt. 369\nNorth Gregchester, CT 65348-9594', '435.885.9500', '1966-06-07', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 5),
(55, 'Rutherford', 'Lafayette', 'mac.abernathy@gmail.com', '241 Velma Springs Apt. 121\nNorth Nicklaus, MT 55600-2352', '+1-469-695-8660', '1990-01-18', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 5),
(56, 'Bradtke', 'Lilian', 'susana17@brekke.biz', '936 Cassin Mills Apt. 745\nEast Kenyatta, ND 10100', '820-450-2243', '2014-01-14', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 2),
(57, 'Hartmann', 'Celia', 'bosco.hannah@hotmail.com', '34139 Vivien Spurs Suite 071\nJammiechester, IA 01921-9347', '574-467-9450', '1937-10-18', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 3),
(58, 'Kuphal', 'Jude', 'alfred.collier@marks.org', '658 Kris Walks\nLake Ebonyburgh, RI 30788-0496', '+1-629-684-8701', '1957-10-20', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 5),
(59, 'O\'Kon', 'Brooklyn', 'dpurdy@prosacco.net', '624 Bruen Island Apt. 651\nKovacekstad, NH 86786', '346-313-4680', '1944-06-10', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 12),
(60, 'Stiedemann', 'Joany', 'aprice@morar.com', '43688 McLaughlin Falls\nFramiside, WV 16642', '+1.813.380.6558', '2022-10-11', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 7),
(61, 'Paucek', 'Jordi', 'jodie65@hessel.biz', '771 Koelpin Club\nNew Ernestinafurt, OH 40378-5945', '769.506.8201', '1945-10-17', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 10),
(62, 'Glover', 'Liliana', 'katlynn.hauck@gmail.com', '183 Colton Underpass\nEast Mohammad, OR 47118', '(828) 853-5191', '1963-11-14', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 7),
(63, 'Bruen', 'Darrick', 'lue62@yahoo.com', '14516 Lynch Freeway\nNew Emerald, PA 93968-1629', '934-382-5914', '2007-05-14', '2023-01-28 07:04:30', '2023-01-28 07:04:30', 7),
(65, 'D\'Amore', 'Adrienne', 'jaime75@gmail.com', '9995 Dee Fords\nLake Pablo, ME 25408-1255', '(419) 689-9711', '1955-05-08', '2023-01-28 07:06:30', '2023-01-28 07:06:30', 12),
(66, 'Wolf', 'Brayan', 'maurice57@rowe.com', '649 Gina Union Apt. 901\nNew Kenny, AK 86544', '+1 (936) 808-2901', '1960-04-22', '2023-01-28 07:06:30', '2023-01-28 07:06:30', 4),
(67, 'Walter', 'Hailee', 'maryse93@hotmail.com', '1196 Erna Mills Apt. 020\nGrimeshaven, WI 32400-0029', '1-262-625-1394', '1996-06-08', '2023-01-28 07:06:30', '2023-01-28 07:06:30', 2),
(68, 'Lueilwitz', 'Estevan', 'uerdman@gmail.com', '13046 O\'Conner Isle Apt. 754\nNorth Donato, IL 06655', '+1-949-274-3450', '2010-11-04', '2023-01-28 07:06:30', '2023-01-28 07:06:30', 9),
(69, 'Kutch', 'Heaven', 'antonetta63@vonrueden.biz', '2380 Jacky Mills Suite 914\nArvelmouth, PA 08097', '+1 (248) 751-4456', '1993-11-18', '2023-01-28 07:06:30', '2023-01-28 07:06:30', 10),
(70, 'Koepp', 'Remington', 'gsawayn@bins.info', '6153 Funk Expressway\nO\'Connellhaven, MI 83969', '(534) 272-9125', '1931-07-21', '2023-01-28 07:06:31', '2023-01-28 07:06:31', 8),
(71, 'Armstrong', 'Kaleb', 'rita.lang@gmail.com', '12865 Alex Fort\nEast Peteville, VA 11179', '+1-616-821-9061', '2004-07-14', '2023-01-28 07:06:31', '2023-01-28 07:06:31', 7),
(72, 'Zboncak', 'Kaia', 'finn.farrell@jones.com', '4251 Tyrique Stravenue Apt. 556\nNew Anne, WI 62967', '+1.629.291.7049', '1928-10-10', '2023-01-28 07:06:31', '2023-01-28 07:06:31', 14),
(73, 'Hansen', 'Vern', 'blanda.tyshawn@rutherford.com', '79146 Rutherford Manors\nPort Alexanne, LA 64406-1349', '+1.712.731.3108', '1955-04-22', '2023-01-28 07:06:31', '2023-01-28 07:06:31', 13),
(74, 'Balistreri', 'Johathan', 'mhirthe@stiedemann.com', '16470 Taylor Harbor\nNew Silas, OH 65862-2110', '434-419-0157', '1951-11-09', '2023-01-28 07:06:31', '2023-01-28 07:06:31', 12),
(75, 'Cole', 'Lessie', 'hartmann.fred@gmail.com', '233 Frances Radial Apt. 963\nMetzland, KY 58029', '+14404349759', '1993-10-13', '2023-01-28 07:06:31', '2023-01-28 07:06:31', 10),
(76, 'Hammes', 'Alan', 'jwhite@becker.com', '3769 Jolie Throughway\nStokesside, WA 33803', '1-812-259-3905', '1950-01-23', '2023-01-28 07:06:31', '2023-01-28 07:06:31', 10),
(77, 'Grant', 'Hattie', 'anibal17@gmail.com', '89727 Burley Crossing Suite 429\nMurrayhaven, PA 71388-7302', '1-208-587-3919', '1960-04-25', '2023-01-28 07:06:31', '2023-01-28 07:06:31', 11),
(78, 'Stanton', 'Myrtie', 'wanda54@hotmail.com', '39703 Moriah Plaza\nAngushaven, CT 59607-0835', '+1-954-844-2856', '2014-01-03', '2023-01-28 07:06:31', '2023-01-28 07:06:31', 8),
(79, 'Volkman', 'Sean', 'lwisoky@abshire.com', '30569 Roberts Hollow Suite 087\nNorth Darylfurt, AR 33387-2854', '971-451-9511', '2002-04-22', '2023-01-28 07:06:31', '2023-01-28 07:06:31', 13),
(80, 'Connelly', 'Robert', 'klocko.elisa@watsica.biz', '848 Bechtelar River\nGreysonhaven, AL 83168', '601-635-7091', '1954-06-05', '2023-01-28 07:06:31', '2023-01-28 07:06:31', 6),
(81, 'Rau', 'Norbert', 'estella68@becker.net', '2661 Sam Stravenue Apt. 564\nLake Pearltown, AL 95610', '+1 (856) 810-9917', '2018-09-22', '2023-01-28 07:06:31', '2023-01-28 07:06:31', 3),
(83, 'Harris', 'Zoe', 'cheyenne08@yahoo.com', '757 Jakubowski Harbor Suite 439\nAvafort, DE 33405-8836', '+1.469.585.5709', '1952-07-26', '2023-01-28 07:16:01', '2023-01-28 07:16:01', 11),
(84, 'Welch', 'Isaac', 'karlee.johnson@hotmail.com', '356 Esteban Stream\nNew Alfport, HI 88284-8879', '1-715-369-8894', '1961-03-05', '2023-01-28 07:16:01', '2023-01-28 07:16:01', 3),
(85, 'Runolfsson', 'Tessie', 'klocko.general@harber.biz', '806 Marvin Flats\nPort Lloyd, NM 34869', '+15413367341', '1988-11-13', '2023-01-28 07:16:01', '2023-01-28 07:16:01', 13),
(86, 'Schaden', 'Arjun', 'dorthy81@legros.net', '46984 Sanford Bridge Apt. 511\nPort Jaime, OH 84412', '346.919.3114', '1972-11-21', '2023-01-28 07:16:01', '2023-01-28 07:16:01', 12),
(87, 'Fisher', 'Mabel', 'jared06@rohan.com', '16577 Towne Island Apt. 455\nWest Amberville, WI 39806-8195', '651-483-4999', '1935-01-11', '2023-01-28 07:16:01', '2023-01-28 07:16:01', 7),
(88, 'Stark', 'Howard', 'cbartoletti@hotmail.com', '39092 Maribel Orchard\nNorth Branthaven, OR 61628-4904', '+14303016879', '1986-10-17', '2023-01-28 07:16:01', '2023-01-28 07:16:01', 9),
(89, 'Beahan', 'Lolita', 'brayan33@walker.com', '614 Ernie Trafficway\nNew Verda, OH 51205-2782', '+1 (386) 815-0251', '1965-12-10', '2023-01-28 07:16:01', '2023-01-28 07:16:01', 13),
(91, 'Sonnova', 'Anna', 'anna@gmail.com', '1234 rue.Vendom', '123-456-7890', '1988-06-27', '2023-01-28 07:38:09', '2023-01-28 07:38:38', 15),
(92, 'Thomas', 'Gaby', 'gaby.gaby@gmail.com', '1579 rue St-charles', '345-456-7890', '1992-02-10', '2023-02-10 21:19:57', '2023-02-10 21:19:57', 9),
(93, 'Mimosa', 'Mimi', 'mimi@mimosa.com', '1234 rue.Vendom', '123-456-7890', '1998-08-08', '2023-02-11 01:03:11', '2023-02-11 01:03:11', 10);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_28_011651_create_villes_table', 1),
(6, '2023_01_28_011829_create_etudiants_table', 2),
(7, '2023_01_28_012003_add_foreign_key_to__etudiant_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomVille` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `nomVille`, `created_at`, `updated_at`) VALUES
(1, 'Nathanialhaven', '2023-01-28 07:00:00', '2023-01-28 07:00:00'),
(2, 'West Rachael', '2023-01-28 07:00:00', '2023-01-28 07:00:00'),
(3, 'Romainechester', '2023-01-28 07:00:00', '2023-01-28 07:00:00'),
(4, 'Lake Alaina', '2023-01-28 07:00:00', '2023-01-28 07:00:00'),
(5, 'New Caryland', '2023-01-28 07:00:00', '2023-01-28 07:00:00'),
(6, 'Maximusmouth', '2023-01-28 07:00:00', '2023-01-28 07:00:00'),
(7, 'Lake Fannieside', '2023-01-28 07:00:00', '2023-01-28 07:00:00'),
(8, 'Isaitown', '2023-01-28 07:00:00', '2023-01-28 07:00:00'),
(9, 'Lake Randy', '2023-01-28 07:00:00', '2023-01-28 07:00:00'),
(10, 'West Salvadorhaven', '2023-01-28 07:00:00', '2023-01-28 07:00:00'),
(11, 'Port Claudieville', '2023-01-28 07:00:00', '2023-01-28 07:00:00'),
(12, 'Schowaltershire', '2023-01-28 07:00:00', '2023-01-28 07:00:00'),
(13, 'Erichchester', '2023-01-28 07:00:00', '2023-01-28 07:00:00'),
(14, 'Gusmouth', '2023-01-28 07:00:00', '2023-01-28 07:00:00'),
(15, 'Gulgowskimouth', '2023-01-28 07:00:00', '2023-01-28 07:00:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `etudiants_email_unique` (`email`),
  ADD KEY `etudiants_ville_id_foreign` (`ville_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `etudiants_ville_id_foreign` FOREIGN KEY (`ville_id`) REFERENCES `villes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
