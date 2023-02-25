-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 25 fév. 2023 à 06:33
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
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre_fr` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenu_fr` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONS POUR LA TABLE `articles`:
--   `user_id`
--       `users` -> `id`
--

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `contenu`, `titre_fr`, `contenu_fr`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Enim cum consequatur.', 'Dolorum reiciendis fugit sit et ut iure magnam fugit aut qui porro ut alias dolor cupiditate culpa incidunt est praesentium aliquid ab numquam assumenda voluptatem est ducimus ex debitis molestiae dicta neque similique totam quasi sequi cupiditate perferendis tempora harum ut consequatur nemo ab nihil consequuntur velit delectus consequatur aperiam ut necessitatibus corporis dolor sunt possimus qui maiores eum ut et minus eum nobis fugiat ut temporibus nisi accusantium odit.', 'Voluptatem qui molestiae.', 'Velit adipisci velit ex possimus repudiandae aut laboriosam labore rem hic quaerat deserunt et quia est doloribus earum velit doloribus beatae sed recusandae voluptatibus architecto non perferendis laudantium quasi delectus quia rem autem corporis quia consequuntur et suscipit excepturi non voluptate ratione temporibus dolore ullam aliquam voluptatum ut porro quia et id itaque et et harum sed quia unde.', '2023-02-19 04:01:47', '2023-02-19 04:01:47', 7),
(2, 'Dolores qui.', 'Qui sapiente quas itaque error qui asperiores doloremque excepturi nostrum quisquam velit ea necessitatibus est amet aliquam sunt dolorem laborum enim commodi sed sequi voluptatem enim non libero consequatur tempora animi sunt aliquid ipsa ut eum occaecati dolores hic officiis perspiciatis corrupti molestias.', 'Nostrum dolorum.', 'Deleniti voluptatem maiores beatae nostrum error illo suscipit ipsum ut quo non magnam est nihil in natus iure impedit placeat hic molestiae excepturi perferendis in non sed et et quisquam harum sed et accusamus omnis at aliquam fugit dolorum et pariatur totam perspiciatis dolor culpa maiores.', '2023-02-19 04:01:47', '2023-02-19 04:01:47', 34),
(3, 'Explicabo soluta quia.', 'Omnis voluptas eum repellendus consequatur iusto suscipit corporis quae voluptas vitae nostrum et mollitia error nihil blanditiis et odio illum porro itaque eius maxime unde omnis error accusamus accusantium dolor architecto harum et dicta nemo sapiente magnam velit aut mollitia nemo corrupti dolor tempore aut dolores qui occaecati assumenda amet sit aspernatur dolore molestiae porro et qui suscipit ad iste sint deleniti est voluptatem nisi quis id at vero.', 'Perferendis esse.', 'Vitae quibusdam omnis cum quos corrupti perspiciatis repudiandae laborum pariatur doloribus dolorem voluptate saepe tempore reprehenderit quisquam a vero rerum sed odio blanditiis atque est itaque quaerat sed inventore omnis et sequi suscipit soluta quo sed sunt voluptates molestiae dolor nihil omnis quod enim reprehenderit quo iure est eos cum.', '2023-02-19 04:01:47', '2023-02-19 04:01:47', 4),
(4, 'Laboriosam tempore.', 'Ut numquam quas quasi praesentium vitae itaque et dolor rem blanditiis in atque minima iusto temporibus sapiente aut qui quia est praesentium dolor labore dolorum non aut pariatur necessitatibus beatae ea est minima porro et dolores distinctio asperiores inventore rerum eos accusantium sit et qui officiis aut harum quae illo rerum consequatur libero eum minima amet ipsum illum sint veniam nisi non quaerat sapiente natus et recusandae et necessitatibus.', 'Rerum cumque ex.', 'Sint repudiandae et eligendi velit et quidem quae error error illo ipsam aspernatur rerum tenetur aut nihil ipsam aut voluptatem qui aperiam rerum consequuntur dolorem autem suscipit enim exercitationem nisi cumque qui praesentium ea vitae quaerat est qui est nam est praesentium aut quia iste iste eligendi repudiandae aut voluptas aut rerum consequatur similique ab saepe et et nostrum qui nihil amet vero maxime sint nesciunt aut fugit.', '2023-02-19 04:01:47', '2023-02-19 04:01:47', 8),
(5, 'Et esse.', 'Perferendis doloribus reiciendis earum iure molestiae soluta nihil iste earum doloribus reiciendis vitae facere numquam voluptate est ullam possimus eligendi vero voluptatem assumenda cupiditate sunt repudiandae illo unde magni ex et maxime aut sequi aut voluptatem ab dicta molestias quidem eius laborum doloremque qui architecto aut eos eaque ut praesentium itaque.', 'Libero sit officiis.', 'Enim laudantium sed veniam minima rerum voluptas enim similique nihil vitae id laboriosam quos et vitae labore fugiat unde rerum exercitationem delectus ratione illum autem velit sed est in fugit perspiciatis saepe dicta sequi quaerat nisi ratione ratione et suscipit similique est aut hic ea nihil amet rem sit voluptas deserunt corporis dolores dolorum voluptatibus sunt explicabo laudantium officiis labore nemo sint provident est tempore voluptatem quidem sint.', '2023-02-19 04:01:47', '2023-02-19 04:01:47', 9),
(6, 'Hello', 'My first article 1', 'Salut', 'Mon article 1', '2023-02-21 06:26:04', '2023-02-21 06:43:48', 53),
(7, 'Nina-en', 'dsgd vfbh ndjsk xb dj en', 'Nina-fr', 'adsfg gfhj bvncm france', '2023-02-22 22:25:42', '2023-02-22 22:25:42', 60),
(8, 'My post1', 'en kjbsdkl clakdchnacb acjkvbh ckdamd;mcasih. nhikdjcb  kkdbncbd', 'Mon article1', 'fr gfhfj dgdf dgds cvcb. sjsdl, djs.d skdndldnd', '2023-02-23 11:12:28', '2023-02-23 11:13:11', 58),
(14, 'Clara-en', 'clara clara', 'Clara-fr', 'clara clara', '2023-02-24 21:25:58', '2023-02-24 21:25:58', 61),
(15, 'en clara vb', 'sdfg', 'Clara vb', 'sdfg', '2023-02-24 21:35:20', '2023-02-24 21:36:03', 61);

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre_fr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONS POUR LA TABLE `documents`:
--

--
-- Déchargement des données de la table `documents`
--

INSERT INTO `documents` (`id`, `titre`, `titre_fr`, `document`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'CV', 'CV', 'C:\\xampp\\nxampp\\tmp\\phpBCE1.tmp', 53, '2023-02-21 07:23:07', '2023-02-21 07:23:07'),
(3, 'CV mimi', 'CV mimi', 'C:\\xampp\\nxampp\\tmp\\php5A1D.tmp', 54, '2023-02-21 07:27:04', '2023-02-21 07:27:04'),
(4, 'tp1-laravel', 'tp1-laravel-fr', 'C:\\xampp\\nxampp\\tmp\\php7FFE.tmp', 60, '2023-02-22 22:34:32', '2023-02-22 22:34:32'),
(5, 'Angle', 'France', 'C:\\xampp\\nxampp\\tmp\\phpDA03.tmp', 61, '2023-02-24 21:31:54', '2023-02-24 22:16:43');

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateDeNaissance` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ville_id` bigint(20) UNSIGNED DEFAULT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONS POUR LA TABLE `etudiants`:
--   `ville_id`
--       `villes` -> `id`
--   `users_id`
--       `users` -> `id`
--

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `adresse`, `phone`, `dateDeNaissance`, `created_at`, `updated_at`, `ville_id`, `users_id`) VALUES
(51, 'Pacocha', '3390 Nelda Rapids Suite 701\nRoryport, AK 32042', '360-609-1351', '2039-08-19', '2023-02-19 03:46:50', '2023-02-19 03:46:50', 1, 0),
(52, 'Von', '881 Delphine Green\nFedericoberg, SD 48666', '+19549253406', '2048-05-01', '2023-02-19 03:46:50', '2023-02-19 03:46:50', 4, 0),
(53, 'Little', '3452 Kemmer Burgs\nBarrowsborough, TN 96051-4403', '1-351-699-1996', '2046-02-07', '2023-02-19 03:46:50', '2023-02-19 03:46:50', 11, 0),
(56, 'Nitzsche', '799 Considine Prairie\nWest Amelie, IA 74260', '283-423-7322', '2022-03-09', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 5, 0),
(59, 'Koch', '5910 Jeffry Harbor Suite 241\nNorth Floyfurt, LA 98721-9547', '1-309-777-7239', '2018-09-17', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 11, 0),
(60, 'Goyette', '55491 Powlowski Mount\nNew Ayanaberg, MA 72209-4624', '808-361-8198', '1986-11-03', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 8, 0),
(61, 'Glover', '962 Pacocha Mall Apt. 377\nNew Stephon, RI 51033-5907', '+1-442-658-9877', '2053-12-03', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 15, 0),
(62, 'Rice', '73508 Geovany Locks\nNorth Carlosmouth, WY 16361', '+1.323.487.6890', '2062-05-20', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 6, 0),
(63, 'Hagenes', '18577 Dibbert Junctions Suite 543\nNew Janessaborough, IN 90014-1414', '+1-480-444-6249', '2002-05-18', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 3, 0),
(64, 'Abshire', '4530 Cummings Corners Suite 665\nTorphyhaven, MO 92062', '810.605.7481', '2052-05-28', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 1, 0),
(65, 'Armstrong', '7777 Joany Bypass Suite 777\nReichelstad, WY 47466', '(307) 706-8558', '1992-02-24', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 2, 0),
(66, 'Osinski', '453 Lily Ramp Suite 986\nSmithside, GA 01683-3023', '+1.309.331.9151', '2069-09-28', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 15, 0),
(67, 'Fahey', '6864 Marlee Rest\nLake Neha, CT 59586-2566', '+1-570-291-6274', '1985-10-22', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 11, 0),
(68, 'Roob', '7717 Schulist Shore\nRemingtonburgh, AR 11655-3513', '(971) 590-1841', '2056-08-28', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 3, 0),
(69, 'Kutch', '18472 Buford Avenue Apt. 903\nAnnabelbury, MD 02054', '770-764-7944', '1973-09-29', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 9, 0),
(70, 'Ziemann', '2279 Kareem Wells\nEstefaniaville, NY 05017-5951', '352-305-3277', '2037-03-31', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 4, 0),
(71, 'Funk', '1759 Kiehn Views\nNaomieport, AZ 78298', '615-349-3990', '2053-02-15', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 12, 0),
(72, 'Watsica', '5317 Hermiston Circles\nNorth Osvaldoburgh, WA 64423-4726', '+1 (385) 894-1413', '1974-12-14', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 14, 0),
(73, 'Kilback', '780 Vincenza Manor\nDarrellberg, NV 62907-3501', '1-865-738-4685', '1976-09-24', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 9, 0),
(74, 'Pacocha', '6389 Feest Cliffs\nNorth Vernerport, MA 50544-6175', '215.436.6652', '2025-12-26', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 2, 0),
(75, 'Grady', '50949 Dylan Canyon\nCeciliahaven, WA 09398', '231-534-3500', '2023-08-07', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 11, 0),
(76, 'Christiansen', '754 Erich Port Apt. 546\nWalterville, CA 66881', '+1-651-712-0237', '2046-10-01', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 5, 0),
(77, 'Runte', '298 Baumbach Rapid Suite 323\nPort Ila, HI 89878', '463-980-6412', '1974-07-06', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 12, 0),
(78, 'Champlin', '490 Lebsack Row Apt. 232\nLinafurt, OH 07179', '1-458-556-8090', '1980-08-11', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 5, 0),
(79, 'Herman', '604 Friesen Land Suite 056\nEastonfurt, PA 24605', '714-800-1133', '2060-10-02', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 9, 0),
(80, 'Reinger', '59099 Reese Mount\nJazmynburgh, MI 65534', '212.780.1880', '2000-01-31', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 15, 0),
(81, 'Hegmann', '2333 Royce Plain Suite 246\nWest Walterville, FL 09701-9928', '256.240.1731', '1994-11-03', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 15, 0),
(82, 'Maggio', '283 Yadira Island\nWest Ernashire, NV 62104-1894', '+1-321-831-2165', '1984-06-07', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 13, 0),
(83, 'Kautzer', '2596 Mittie Branch\nEast Elroy, WI 04151', '(651) 689-5073', '2047-12-13', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 11, 0),
(84, 'Bashirian', '2468 Abbott Radial\nLake Elsabury, TN 34386', '925-210-0834', '2063-07-25', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 13, 0),
(85, 'Lynch', '3902 White Drive Apt. 135\nKovacekborough, UT 45951-4896', '+1.540.436.9970', '2044-04-15', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 8, 0),
(86, 'Adams', '2003 Kieran Estate Apt. 223\nLake Anne, NC 08428', '+1.404.767.6593', '1992-05-23', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 11, 0),
(87, 'Pouros', '22490 Misty Oval\nFayshire, ME 25985', '657-703-6014', '2015-12-18', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 4, 0),
(88, 'Greenholt', '42834 Jerde Vista Suite 202\nNicoletteborough, WA 32812-6036', '+14255362610', '1972-06-05', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 6, 0),
(89, 'Turcotte', '2014 Monahan Street\nNorth Aprilfort, SD 80223', '+1-272-778-9515', '1997-05-12', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 1, 0),
(90, 'Conn', '192 Bernice Fall\nEast Jaunita, KY 17151-3671', '417-533-5470', '1998-09-27', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 14, 0),
(91, 'Little', '58427 Grant Views Apt. 656\nNorth Huldaview, MN 21439-7030', '862.735.9469', '2064-03-25', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 12, 0),
(92, 'Murazik', '4380 Goldner Oval Apt. 553\nWhiteberg, NH 24787', '(269) 930-0377', '2054-07-08', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 11, 0),
(93, 'Dach', '31427 Josh Courts\nHirthehaven, AK 80824', '+1-559-519-2983', '2021-12-31', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 7, 0),
(94, 'Roberts', '36991 Kyleigh Village\nNew Wyman, AR 93189-0242', '+1-757-664-7601', '1982-12-17', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 6, 0),
(95, 'Jaskolski', '169 Thaddeus Forges Suite 009\nNorth Ethyl, OR 98100-1605', '+1.270.415.2214', '1986-06-20', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 14, 0),
(96, 'Runte', '1666 Johnston Trail\nLake Jermeymouth, IA 59702-3875', '+1 (617) 864-1749', '2049-11-15', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 9, 0),
(97, 'Kerluke', '407 Sydnie Mountains Suite 509\nEast Sheldon, DC 25928-6537', '351.946.3241', '1976-02-22', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 7, 0),
(98, 'Russel', '994 Verna Valley Suite 173\nPort Altheabury, SD 64199', '828.789.0354', '2015-02-05', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 9, 0),
(99, 'Cassin', '25505 Armando Mills Apt. 660\nWest Carmela, ME 45838', '+17148489693', '2014-10-28', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 5, 0),
(100, 'Effertz', '759 Lubowitz Run\nLake Timmyshire, SD 47481-0014', '586.491.2093', '1988-02-26', '2023-02-19 03:46:51', '2023-02-19 03:46:51', 7, 0),
(166, 'Dr. Leon Prohaska', '', '', '0000-00-00', NULL, NULL, NULL, 1),
(167, 'Prof. Armani Fahey MD', '', '', '0000-00-00', NULL, NULL, NULL, 2),
(168, 'Anya Weissnat', '', '', '0000-00-00', NULL, NULL, NULL, 3),
(169, 'Hilma Pouros', '', '', '0000-00-00', NULL, NULL, NULL, 4),
(170, 'Prof. Freeman Bednar', '', '', '0000-00-00', NULL, NULL, NULL, 5),
(171, 'Cassie Fisher I', '', '', '0000-00-00', NULL, NULL, NULL, 6),
(172, 'Prof. Ilene Upton II', '', '', '0000-00-00', NULL, NULL, NULL, 7),
(173, 'Prof. Dewitt Gibson', '', '', '0000-00-00', NULL, NULL, NULL, 8),
(174, 'Cristina Blanda PhD', '', '', '0000-00-00', NULL, NULL, NULL, 9),
(175, 'Eve Mitchell', '', '', '0000-00-00', NULL, NULL, NULL, 10),
(176, 'Miss Lilyan Sanford', '', '', '0000-00-00', NULL, NULL, NULL, 11),
(177, 'Sigmund Schaefer', '', '', '0000-00-00', NULL, NULL, NULL, 12),
(178, 'Jena Rau I', '', '', '0000-00-00', NULL, NULL, NULL, 13),
(179, 'Hailee Braun', '', '', '0000-00-00', NULL, NULL, NULL, 14),
(180, 'Ruthie Schaefer III', '', '', '0000-00-00', NULL, NULL, NULL, 15),
(181, 'Prof. Wilfrid Yundt', '', '', '0000-00-00', NULL, NULL, NULL, 16),
(182, 'Dr. Adrian Kreiger V', '', '', '0000-00-00', NULL, NULL, NULL, 17),
(183, 'Marjory Lueilwitz DVM', '', '', '0000-00-00', NULL, NULL, NULL, 18),
(184, 'Jarrett Reinger', '', '', '0000-00-00', NULL, NULL, NULL, 19),
(185, 'Charity Price', '', '', '0000-00-00', NULL, NULL, NULL, 20),
(186, 'Prof. Finn Johnston', '', '', '0000-00-00', NULL, NULL, NULL, 21),
(187, 'Cleve Ruecker', '', '', '0000-00-00', NULL, NULL, NULL, 22),
(188, 'Rubie Purdy', '', '', '0000-00-00', NULL, NULL, NULL, 23),
(189, 'Demarco Aufderhar III', '', '', '0000-00-00', NULL, NULL, NULL, 24),
(190, 'Leopoldo Gottlieb', '', '', '0000-00-00', NULL, NULL, NULL, 25),
(191, 'Mr. Ethan Bogisich Jr.', '', '', '0000-00-00', NULL, NULL, NULL, 26),
(192, 'Jessy Pacocha', '', '', '0000-00-00', NULL, NULL, NULL, 27),
(193, 'Miss Mona Willms DVM', '', '', '0000-00-00', NULL, NULL, NULL, 28),
(194, 'Loma Davis', '', '', '0000-00-00', NULL, NULL, NULL, 29),
(195, 'Dr. Hardy Jaskolski', '', '', '0000-00-00', NULL, NULL, NULL, 30),
(196, 'Kirstin Lowe', '', '', '0000-00-00', NULL, NULL, NULL, 31),
(197, 'Ali Keeling V', '', '', '0000-00-00', NULL, NULL, NULL, 32),
(198, 'Ignatius Ullrich', '', '', '0000-00-00', NULL, NULL, NULL, 33),
(199, 'Anna Lowe', '', '', '0000-00-00', NULL, NULL, NULL, 34),
(200, 'Joany Trantow MD', '', '', '0000-00-00', NULL, NULL, NULL, 35),
(201, 'Zander Hoppe', '', '', '0000-00-00', NULL, NULL, NULL, 36),
(202, 'Mallory Stokes DDS', '', '', '0000-00-00', NULL, NULL, NULL, 37),
(203, 'Alia Pollich', '', '', '0000-00-00', NULL, NULL, NULL, 38),
(204, 'Prof. General Sauer', '', '', '0000-00-00', NULL, NULL, NULL, 39),
(205, 'Celia Fay', '', '', '0000-00-00', NULL, NULL, NULL, 40),
(206, 'Dessie Hartmann', '', '', '0000-00-00', NULL, NULL, NULL, 41),
(207, 'Marlene Ankunding', '', '', '0000-00-00', NULL, NULL, NULL, 42),
(208, 'Isaac Auer', '', '', '0000-00-00', NULL, NULL, NULL, 43),
(209, 'Prof. Maximo Keebler IV', '', '', '0000-00-00', NULL, NULL, NULL, 44),
(210, 'Anderson Jacobson Sr.', '', '', '0000-00-00', NULL, NULL, NULL, 45),
(211, 'Ms. Elna Rosenbaum III', '', '', '0000-00-00', NULL, NULL, NULL, 46),
(212, 'Tess Blanda DVM', '', '', '0000-00-00', NULL, NULL, NULL, 47),
(213, 'Marjolaine Zieme', '', '', '0000-00-00', NULL, NULL, NULL, 48),
(214, 'Lemuel Schroeder', '', '', '0000-00-00', NULL, NULL, NULL, 49),
(215, 'Tara Ullrich III', '', '', '0000-00-00', NULL, NULL, NULL, 50),
(229, 'Kkk', '1234 rue.Vendom', '123-456-7890', '1999-09-09', '2023-02-22 07:58:51', '2023-02-22 07:58:51', NULL, 57),
(230, 'Asdf', '1234 rue.Vendom', '123-456-7890', '1989-08-08', '2023-02-22 08:02:33', '2023-02-22 08:02:33', NULL, 58),
(231, 'Mumu', '234 rue Pilin', '450-672-3410', '1999-09-09', '2023-02-22 08:05:34', '2023-02-22 08:05:34', NULL, 59),
(232, 'Nina', '234 rue Pilin', '123-456-7890', '1988-08-08', '2023-02-22 08:08:04', '2023-02-22 08:08:04', NULL, 60),
(233, 'Clara', '1234 rue.Verdan', '4506723410', '1996-08-07', '2023-02-22 22:57:06', '2023-02-22 22:57:06', 13, 61),
(234, 'Annie Martin', '3646 Taschereau', '4506723410', '1996-04-04', '2023-02-23 00:07:30', '2023-02-23 00:07:30', 7, 62),
(235, 'Daniel', '1234 rue.Verdan', '123-456-7890', '2000-05-05', '2023-02-23 05:26:33', '2023-02-23 05:26:33', 1, 63),
(236, 'Anna', '815 Place Du Val-Royal', '123-456-7890', '1995-06-05', '2023-02-24 22:41:19', '2023-02-24 22:41:19', 4, 64),
(237, 'Mitchell', '4586 Homenick Shores Suite 179', '802-988-9084', '2000-12-12', '2023-02-25 08:47:30', '2023-02-25 08:47:30', 2, 65),
(238, 'Monahan', '267 Kane Lodge Apt. 375', '4236528542', '1994-09-08', '2023-02-25 08:49:35', '2023-02-25 08:49:35', 15, 66),
(239, 'Kon', '5948 Giles Street Suite 629', '1234567891', '1977-03-04', '2023-02-25 08:51:33', '2023-02-25 08:51:33', 14, 67),
(240, 'Ferry', '30641 Considine Plains Suite 917', '786-934-4572', '1988-07-07', '2023-02-25 08:53:09', '2023-02-25 08:53:09', 13, 68);

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

--
-- RELATIONS POUR LA TABLE `failed_jobs`:
--

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
-- RELATIONS POUR LA TABLE `migrations`:
--

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_28_011651_create_villes_table', 1),
(6, '2023_01_28_011829_create_etudiants_table', 1),
(7, '2023_01_28_012003_add_foreign_key_to__etudiant_table', 1),
(8, '2023_02_18_201620_create_articles_table', 1),
(9, '2023_02_18_202833_create_documents_table', 1),
(10, '2023_02_18_205051_add_foreign_key_to_article_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONS POUR LA TABLE `password_resets`:
--

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

--
-- RELATIONS POUR LA TABLE `personal_access_tokens`:
--

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

--
-- RELATIONS POUR LA TABLE `users`:
--

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Leon Prohaska', 'towne.annetta@example.net', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ypFH7LpcsU', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(2, 'Prof. Armani Fahey MD', 'bmuller@example.org', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hcrs5FWG88', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(3, 'Anya Weissnat', 'west.danyka@example.org', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9BWjh2kkiU', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(4, 'Hilma Pouros', 'benedict.beahan@example.com', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JtvJaojJDt', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(5, 'Prof. Freeman Bednar', 'anthony75@example.com', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'twWM7sBCa7', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(6, 'Cassie Fisher I', 'nick41@example.org', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hjbc8v6Kkk', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(7, 'Prof. Ilene Upton II', 'ymiller@example.org', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pPYCGgGDRf', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(8, 'Prof. Dewitt Gibson', 'lubowitz.miracle@example.net', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v9dwotjFOf', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(9, 'Cristina Blanda PhD', 'nikki10@example.net', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k6SWjNSSxP', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(10, 'Eve Mitchell', 'marcelle.daniel@example.org', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tyzIykJJTg', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(11, 'Miss Lilyan Sanford', 'yullrich@example.org', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9fJMxCVqGY', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(12, 'Sigmund Schaefer', 'kacie.russel@example.com', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ielJsOxJHz', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(13, 'Jena Rau I', 'witting.ora@example.net', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6GkLLUDbc3', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(14, 'Hailee Braun', 'eichmann.malika@example.org', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NkWD7HgLnF', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(15, 'Ruthie Schaefer III', 'jarrett26@example.org', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'azHkSrEqfj', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(16, 'Prof. Wilfrid Yundt', 'wiza.alberta@example.net', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BhkXh6Sx67', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(17, 'Dr. Adrian Kreiger V', 'kristopher03@example.net', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hmwNLOUo6x', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(18, 'Marjory Lueilwitz DVM', 'marlon.rath@example.net', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sUenaTVXTY', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(19, 'Jarrett Reinger', 'cole.jovan@example.org', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7PP0iejduR', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(20, 'Charity Price', 'will.fausto@example.net', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LxdBmmlu7P', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(21, 'Prof. Finn Johnston', 'quigley.elliot@example.org', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bWEc5JXZWP', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(22, 'Cleve Ruecker', 'letitia64@example.org', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GuNdzpexSl', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(23, 'Rubie Purdy', 'della02@example.com', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'W0Zoi3GGzA', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(24, 'Demarco Aufderhar III', 'weissnat.jessyca@example.org', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nMWCuKb4qp', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(25, 'Leopoldo Gottlieb', 'wolff.johnson@example.org', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4tw71dqsD8', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(26, 'Mr. Ethan Bogisich Jr.', 'trent13@example.org', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ArV9v0qMhN', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(27, 'Jessy Pacocha', 'ynolan@example.org', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A1OiUyMwpj', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(28, 'Miss Mona Willms DVM', 'jbogisich@example.net', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6cdJVYOxib', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(29, 'Loma Davis', 'ruthe55@example.net', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kjOkFsc2BA', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(30, 'Dr. Hardy Jaskolski', 'mcorwin@example.net', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '724TG5I8dd', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(31, 'Kirstin Lowe', 'zokeefe@example.com', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3vdD2dZ1wh', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(32, 'Ali Keeling V', 'bmarks@example.net', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iN9w9CRyL4', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(33, 'Ignatius Ullrich', 'tyson54@example.net', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6ZQYLIoD1k', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(34, 'Anna Lowe', 'lynn68@example.com', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V6hkYogozV', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(35, 'Joany Trantow MD', 'ahmad.barrows@example.org', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9pwaTk4u1S', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(36, 'Zander Hoppe', 'zachery23@example.com', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lA7m2CrVNJ', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(37, 'Mallory Stokes DDS', 'wlarson@example.org', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ady5bhtmKr', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(38, 'Alia Pollich', 'eriberto.rosenbaum@example.com', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2sEBV5Bynv', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(39, 'Prof. General Sauer', 'krystel24@example.net', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Yq2E2zmNT4', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(40, 'Celia Fay', 'alize.schuppe@example.org', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HxcAVoWMCJ', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(41, 'Dessie Hartmann', 'pfunk@example.net', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nlqLQeEgPh', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(42, 'Marlene Ankunding', 'wrohan@example.net', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b2NZopN6Wu', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(43, 'Isaac Auer', 'dangelo07@example.org', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4BbVdTDviM', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(44, 'Prof. Maximo Keebler IV', 'marcia.rolfson@example.com', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7HjqXQI7AG', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(45, 'Anderson Jacobson Sr.', 'sbradtke@example.net', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bqlQVmnQiJ', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(46, 'Ms. Elna Rosenbaum III', 'giovanny74@example.net', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3QHbEoTUzJ', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(47, 'Tess Blanda DVM', 'yschaefer@example.com', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yfJreI1vlF', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(48, 'Marjolaine Zieme', 'qnicolas@example.net', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dNJnVM1ljA', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(49, 'Lemuel Schroeder', 'ygaylord@example.com', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7Sl0JU73Cq', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(50, 'Tara Ullrich III', 'sid.blick@example.net', '2023-02-19 04:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZvvuBGXBZR', '2023-02-19 04:01:29', '2023-02-19 04:01:29'),
(53, 'Anna', 'anna@gmail.com', NULL, '$2y$10$z73q8J8HqhxKwrJ04.6LkOYoNg1pLrIUcbn.AvHO9TMZj2ps84BQm', NULL, '2023-02-19 08:57:06', '2023-02-19 08:57:06'),
(54, 'Mimi', 'mimi@mimosa.com', NULL, '$2y$10$pMMrgcTv37eSlPAKozmVfeezW5gZQGVBOQURhuMGvO4.Wwy6ij1DS', NULL, '2023-02-21 07:24:12', '2023-02-21 07:24:12'),
(55, 'Kiki', 'kiki@gmail.com', NULL, '$2y$10$otLMqlBK.ouVkT/mNl4j1emxl75edLyrwq/y8LeXcEsDFNlBSgm.y', NULL, '2023-02-22 06:31:14', '2023-02-22 06:31:14'),
(57, 'Kkk', 'kkk@kk.com', NULL, '$2y$10$qtrrWFCOeM9kyEvNBBPAZu5WcEAu5qdbDSpo086kXh1ZV97geHK1G', NULL, '2023-02-22 07:58:51', '2023-02-22 07:58:51'),
(58, 'Asdf', 'asdf@asd.com', NULL, '$2y$10$a11N84Z0FvHWT3m0CvZHleeNFgngpNORwuM1Wa0.zyVnQ/M26F/TK', NULL, '2023-02-22 08:02:33', '2023-02-22 08:02:33'),
(59, 'Mumu', 'mumu@gn.com', NULL, '$2y$10$KaHSkbwNk.269kPYh3U5OuW/rnYPkHp7uhr9lc9mtb9Oa3UDdXArK', NULL, '2023-02-22 08:05:34', '2023-02-22 08:05:34'),
(60, 'Nina', 'nina@ni.na', NULL, '$2y$10$NJibUctf1p8T.NcpT3y1duYUAgMqvmB9itHdEH9xx5SD0p5lH8APG', NULL, '2023-02-22 08:08:04', '2023-02-22 08:08:04'),
(61, 'Clara', 'clara@gmail.com', NULL, '$2y$10$Pl/8akDmoVUF.O6pDSPg9uyx9TbWNhq3T7hgTqsM2rlnaGNSbSsD.', NULL, '2023-02-22 22:57:06', '2023-02-22 22:57:06'),
(62, 'Annie Martin', 'anMartin@gmail.com', NULL, '$2y$10$zrl4U0SuQPXVpkOs8qrsReImQKyJ7wKancrtiTSU5/xWJmv/Zwx0y', NULL, '2023-02-23 00:07:30', '2023-02-23 00:07:30'),
(63, 'Daniel', 'daniel@gmail.com', NULL, '$2y$10$BHcE/qDCNnBvO/FVpYTIuOkIv.XHogBg6evmJqEhGrQht0DYwKGlK', NULL, '2023-02-23 05:26:33', '2023-02-23 05:26:33'),
(64, 'Anna', 'anna.anna@gmail.com', NULL, '$2y$10$839WOwh2kPHaJmxEoi2DgOnmwrwgzTR5jNEOiFD3XCDPXOQadgfrq', NULL, '2023-02-24 22:41:19', '2023-02-24 22:41:19'),
(65, 'Mitchell', 'mitchell@ng.ru', NULL, '$2y$10$0qoC7lJBrT2Xf405oF9XKOX069syWQltPerBQXL8.yKKzNj13G0ce', NULL, '2023-02-25 08:47:30', '2023-02-25 08:47:30'),
(66, 'Monahan', 'monahan@monahan.monahan', NULL, '$2y$10$Ent1xGUEqx.uPz7j87lZfetRxzxD76Y8CXZqQFE47aKqtLUjl3WrW', NULL, '2023-02-25 08:49:35', '2023-02-25 08:49:35'),
(67, 'Kon', 'adfgh@kon.com', NULL, '$2y$10$HBsuyzf0G.P4WwIuYjJ/4OXEjRRO0YrW9tffsxhLTHA78dbnBI8aG', NULL, '2023-02-25 08:51:33', '2023-02-25 08:51:33'),
(68, 'Ferry', 'ferry@erry.erry', NULL, '$2y$10$i7Q5npALmDXgucKpK7/eM.OSaxXwBi3L9t44HthHP6JVZBeQMi6Wa', NULL, '2023-02-25 08:53:09', '2023-02-25 08:53:09');

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
-- RELATIONS POUR LA TABLE `villes`:
--

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `nomVille`, `created_at`, `updated_at`) VALUES
(1, 'Magaliburgh', '2023-02-19 03:34:25', '2023-02-19 03:34:25'),
(2, 'Bauchton', '2023-02-19 03:34:25', '2023-02-19 03:34:25'),
(3, 'North Zachariah', '2023-02-19 03:34:25', '2023-02-19 03:34:25'),
(4, 'Chanelton', '2023-02-19 03:34:25', '2023-02-19 03:34:25'),
(5, 'Nienowchester', '2023-02-19 03:34:25', '2023-02-19 03:34:25'),
(6, 'Lake Tyree', '2023-02-19 03:34:25', '2023-02-19 03:34:25'),
(7, 'Lake Josiemouth', '2023-02-19 03:34:25', '2023-02-19 03:34:25'),
(8, 'South Raeganbury', '2023-02-19 03:34:25', '2023-02-19 03:34:25'),
(9, 'Lake Duane', '2023-02-19 03:34:25', '2023-02-19 03:34:25'),
(10, 'Ursulaburgh', '2023-02-19 03:34:25', '2023-02-19 03:34:25'),
(11, 'Weldonview', '2023-02-19 03:34:25', '2023-02-19 03:34:25'),
(12, 'New Merlborough', '2023-02-19 03:34:25', '2023-02-19 03:34:25'),
(13, 'North Joellestad', '2023-02-19 03:34:25', '2023-02-19 03:34:25'),
(14, 'Cronaview', '2023-02-19 03:34:25', '2023-02-19 03:34:25'),
(15, 'Kuphalside', '2023-02-19 03:34:25', '2023-02-19 03:34:25');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`);

--
-- Index pour la table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `etudiants_ville_id_foreign` (`ville_id`),
  ADD KEY `fk_etudiants_users_idx` (`users_id`);

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
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `etudiants_ville_id_foreign` FOREIGN KEY (`ville_id`) REFERENCES `villes` (`id`),
  ADD CONSTRAINT `fk_etudiants_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
