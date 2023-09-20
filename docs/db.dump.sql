-- Adminer 4.7.6 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'L''identifiant de la catégorie',
  `name` varchar(50) NOT NULL COMMENT 'Le nom de la catégorie',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp() COMMENT 'La date de création de la categorie',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'La date de la dernière mise à jour de la catégorie',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1,	'Activté ménagère',	'0000-00-00 00:00:00',	NULL),
(2,	'Loisirs',	'2023-08-29 05:55:08',	NULL),
(3,	'Travail',	'2023-08-29 05:55:12',	NULL),
(4,	'Repos',	'2023-08-29 05:55:16',	NULL);

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'L''identifiant du tag',
  `label` varchar(50) NOT NULL COMMENT 'nom du tag',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp() COMMENT 'La date de création du tag ',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'La date de la dernière mise à jour',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tags` (`id`, `label`, `created_at`, `updated_at`) VALUES
(1,	'Intérieur',	'0000-00-00 00:00:00',	NULL),
(2,	'Exterieur',	'2023-08-29 05:55:34',	'2023-08-24 06:19:05'),
(3,	'Plaisir',	'0000-00-00 00:00:00',	NULL),
(4,	'Pensum',	'2023-08-29 05:55:34',	'2023-08-24 06:19:05');

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tasks` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1,	'Acheter une salade',	0,	'2022-08-21 17:13:59',	'2022-08-21 17:13:59'),
(2,	'Manger la salade',	0,	'2022-08-21 17:14:18',	'2022-08-21 17:14:18'),
(3,	'Laver l\'assiette',	0,	'2022-08-21 17:13:59',	'2022-08-21 17:13:59'),
(4,	'Laver les couverts',	0,	'2022-08-21 17:13:59',	'2022-08-21 17:13:59'),
(5,	'Prendre une douche',	0,	'2022-08-21 17:14:18',	'2022-08-21 17:14:18'),
(6,	'Aller aux champignons',	0,	'2022-08-21 17:13:59',	'2022-08-21 17:13:59'),
(7,	'Regarder la télé',	0,	'2022-08-21 17:13:59',	'2022-08-21 17:13:59'),
(8,	'Ballade en montagne',	0,	'2022-08-21 17:14:18',	'2022-08-21 17:14:18'),
(9,	'Dormir',	0,	'2022-08-21 17:13:59',	'2022-08-21 17:13:59');

-- 2023-08-29 05:57:36