-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.5.6-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for bluebik_shorturl
CREATE DATABASE IF NOT EXISTS `bluebik_shorturl` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bluebik_shorturl`;

-- Dumping structure for table bluebik_shorturl.short_url
CREATE TABLE IF NOT EXISTS `short_url` (
  `id` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `static_click` int(11) NOT NULL,
  `created_datetime` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bluebik_shorturl.short_url: ~8 rows (approximately)
DELETE FROM `short_url`;
/*!40000 ALTER TABLE `short_url` DISABLE KEYS */;
INSERT INTO `short_url` (`id`, `url`, `static_click`, `created_datetime`) VALUES
	('123f0385', 'https://stackoverflow.com/questions/400212/how-do-i-copy-to-the-clipboard-in-javascript', 3, '2021-01-10 23:03:35'),
	('50328aa4', 'https://www.google.com', 2, '2021-01-10 18:16:45'),
	('97cac70e', 'https://www.123-hd.com/mr-queen-ep-9', 1, '2021-01-10 22:44:53'),
	('c35133bf', 'https://getbootstrap.com/', 0, '2021-01-10 22:28:49'),
	('c5bd740e', 'https://getbootstrap.com/docs/4.0/content/typography/', 0, '2021-01-10 23:06:46'),
	('c9c6d92d', 'https://www.w3schools.com/howto/howto_js_copy_clipboard.asp', 0, '2021-01-10 22:59:49'),
	('e4f6527a', 'https://stackoverflow.com/questions/44559866/table-cells-right-align-inside-row', 0, '2021-01-10 22:52:25');
/*!40000 ALTER TABLE `short_url` ENABLE KEYS */;

-- Dumping structure for table bluebik_shorturl.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table bluebik_shorturl.user: ~1 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `username`, `password`, `created_datetime`, `created_by`, `modified_datetime`, `modified_by`) VALUES
	(1, 'admin', '$2a$10$4HSsPsO4sxZqZJyUztfGE.xUM4E63CrOw8EzMKxLv7O9Vreh6Hb1G', '2021-01-10 17:06:25', 'admin', NULL, NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
