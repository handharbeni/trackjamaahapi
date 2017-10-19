-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.57-0ubuntu0.14.04.1 - (Ubuntu)
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for trackjamaah
CREATE DATABASE IF NOT EXISTS `trackjamaah` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `trackjamaah`;

-- Dumping structure for table trackjamaah.m_grup
CREATE TABLE IF NOT EXISTS `m_grup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_grup` varchar(100) NOT NULL DEFAULT 'New Jamaah',
  `id_user` int(11) NOT NULL,
  `masa_aktif` int(11) NOT NULL,
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paid` int(11) NOT NULL DEFAULT '0',
  `deleted` enum('Y','N') NOT NULL DEFAULT 'N',
  `kuota_free` varchar(100) NOT NULL DEFAULT 'KUOTA#0',
  `sha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_m_grup_m_user` (`id_user`),
  CONSTRAINT `FK_m_grup_m_user` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=latin1;

-- Dumping data for table trackjamaah.m_grup: ~105 rows (approximately)
/*!40000 ALTER TABLE `m_grup` DISABLE KEYS */;
INSERT INTO `m_grup` (`id`, `nama_grup`, `id_user`, `masa_aktif`, `date_add`, `date_end`, `paid`, `deleted`, `kuota_free`, `sha`) VALUES
	(31, 'Test Rubah Nama Grup', 5, 3, '2017-08-22 15:08:42', '0000-00-00 00:00:00', 0, 'Y', '0', 'cf61dc5c5faae5e6f29325daf6e3336144c55c57'),
	(32, 'Test Grup', 5, 5, '2017-08-22 15:09:21', '0000-00-00 00:00:00', 0, 'Y', '0', '82447d5dd3769523ba2d73191aa4b3d02acd27b5'),
	(33, 'Test Grup', 5, 5, '2017-08-22 15:09:22', '0000-00-00 00:00:00', 0, 'N', '0', 'a70be80fa74f9d214a1da421dbe12a41433eeba0'),
	(160, 'Test Grup 1', 5, 5, '2017-08-23 22:07:58', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', 'd3cf07b44f77da6a96d54e95af02777092e557f7'),
	(161, 'Test Grup 1', 5, 5, '2017-08-23 22:11:04', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#2', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(264, 'Test Grup 1', 5, 5, '2017-08-24 06:21:36', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(265, 'Test Grup 1', 5, 5, '2017-08-24 06:21:38', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(266, 'Test Grup 1', 5, 5, '2017-08-24 06:21:39', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(267, 'Test Grup 1', 5, 5, '2017-08-24 06:21:40', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(268, 'Test Grup 1', 5, 5, '2017-08-24 06:21:42', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(269, 'Test Grup 1', 5, 5, '2017-08-24 06:21:43', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(270, 'Test Grup 1', 5, 5, '2017-08-24 06:21:44', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(271, 'Test Grup 1', 5, 5, '2017-08-24 06:21:45', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(272, 'Test Grup 1', 5, 5, '2017-08-24 06:21:46', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(273, 'Test Grup 1', 5, 5, '2017-08-24 06:21:47', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(274, 'Test Grup 1', 5, 5, '2017-08-24 06:21:49', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(275, 'Test Grup 1', 5, 5, '2017-08-24 06:21:50', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(276, 'Test Grup 1', 5, 5, '2017-08-24 06:21:51', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(277, 'Test Grup 1', 5, 5, '2017-08-24 06:21:52', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(278, 'Test Grup 1', 5, 5, '2017-08-24 06:21:53', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(279, 'Test Grup 1', 5, 5, '2017-08-24 06:21:54', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(280, 'Test Grup 1', 5, 5, '2017-08-24 06:21:55', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(281, 'Test Grup 1', 5, 5, '2017-08-24 06:21:56', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(282, 'Test Grup 1', 5, 5, '2017-08-24 06:21:57', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(283, 'Test Grup 1', 5, 5, '2017-08-24 06:21:58', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(284, 'Test Grup 1', 5, 5, '2017-08-24 06:21:59', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(285, 'Test Grup 1', 5, 5, '2017-08-24 06:22:00', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(286, 'Test Grup 1', 5, 5, '2017-08-24 06:22:01', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(287, 'Test Grup 1', 5, 5, '2017-08-24 06:22:02', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(288, 'Test Grup 1', 5, 5, '2017-08-24 06:22:03', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(289, 'Test Grup 1', 5, 5, '2017-08-24 06:22:05', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(290, 'Test Grup 1', 5, 5, '2017-08-24 06:22:06', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(291, 'Test Grup 1', 5, 5, '2017-08-24 06:22:07', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(292, 'Test Grup 1', 5, 5, '2017-08-24 06:22:08', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(293, 'Test Grup 1', 5, 5, '2017-08-24 06:22:09', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(294, 'Test Grup 1', 5, 5, '2017-08-24 06:22:10', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(295, 'Test Grup 1', 5, 5, '2017-08-24 06:22:11', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(296, 'Test Grup 1', 5, 5, '2017-08-24 06:22:12', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(297, 'Test Grup 1', 5, 5, '2017-08-24 06:22:14', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(298, 'Test Grup 1', 5, 5, '2017-08-24 06:22:16', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(299, 'Test Grup 1', 5, 5, '2017-08-24 06:22:17', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(300, 'Test Grup 1', 5, 5, '2017-08-24 06:22:19', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(301, 'Test Grup 1', 5, 5, '2017-08-24 06:22:21', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(302, 'Test Grup 1', 5, 5, '2017-08-24 06:22:22', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(303, 'Test Grup 1', 5, 5, '2017-08-24 06:22:24', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(304, 'Test Grup 1', 5, 5, '2017-08-24 06:22:25', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(305, 'Test Grup 1', 5, 5, '2017-08-24 06:22:27', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(306, 'Test Grup 1', 5, 5, '2017-08-24 06:22:28', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(307, 'Test Grup 1', 5, 5, '2017-08-24 06:22:30', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(308, 'Test Grup 1', 5, 5, '2017-08-24 06:22:31', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(309, 'Test Grup 1', 5, 5, '2017-08-24 06:22:32', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(310, 'Test Grup 1', 5, 5, '2017-08-24 06:22:34', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(311, 'Test Grup 1', 5, 5, '2017-08-24 06:22:35', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(312, 'Test Grup 1', 5, 5, '2017-08-24 06:22:36', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(313, 'Test Grup 1', 5, 5, '2017-08-24 06:22:38', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(314, 'Test Grup 1', 5, 5, '2017-08-24 06:22:40', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(315, 'Test Grup 1', 5, 5, '2017-08-24 06:22:41', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(316, 'Test Grup 1', 5, 5, '2017-08-24 06:22:42', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(317, 'Test Grup 1', 5, 5, '2017-08-24 06:22:44', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(318, 'Test Grup 1', 5, 5, '2017-08-24 06:22:45', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(319, 'Test Grup 1', 5, 5, '2017-08-24 06:22:48', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(320, 'Test Grup 1', 5, 5, '2017-08-24 06:22:49', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(321, 'Test Grup 1', 5, 5, '2017-08-24 06:22:51', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(322, 'Test Grup 1', 5, 5, '2017-08-24 06:22:52', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(323, 'Test Grup 1', 5, 5, '2017-08-24 06:22:53', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(324, 'Test Grup 1', 5, 5, '2017-08-24 06:22:55', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(325, 'Test Grup 1', 5, 5, '2017-08-24 06:22:56', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(326, 'Test Grup 1', 5, 5, '2017-08-24 06:22:57', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(327, 'Test Grup 1', 5, 5, '2017-08-24 06:22:58', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(328, 'Test Grup 1', 5, 5, '2017-08-24 06:22:59', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(329, 'Test Grup 1', 5, 5, '2017-08-24 06:23:01', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(330, 'Test Grup 1', 5, 5, '2017-08-24 06:23:02', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(331, 'Test Grup 1', 5, 5, '2017-08-24 06:23:04', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(332, 'Test Grup 1', 5, 5, '2017-08-24 06:23:05', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(333, 'Test Grup 1', 5, 5, '2017-08-24 06:23:06', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(334, 'Test Grup 1', 5, 5, '2017-08-24 06:23:07', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(335, 'Test Grup 1', 5, 5, '2017-08-24 06:23:08', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(336, 'Test Grup 1', 5, 5, '2017-08-24 06:23:09', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(337, 'Test Grup 1', 5, 5, '2017-08-24 06:23:10', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(338, 'Test Grup 1', 5, 5, '2017-08-24 06:23:11', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(339, 'Test Grup 1', 5, 5, '2017-08-24 06:23:12', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(340, 'Test Grup 1', 5, 5, '2017-08-24 06:23:13', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(341, 'Test Grup 1', 5, 5, '2017-08-24 06:23:14', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(342, 'Test Grup 1', 5, 5, '2017-08-24 06:23:16', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(343, 'Test Grup 1', 5, 5, '2017-08-24 06:23:17', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(344, 'Test Grup 1', 5, 5, '2017-08-24 06:23:18', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(345, 'Test Grup 1', 5, 5, '2017-08-24 06:23:19', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(346, 'Test Grup 1', 5, 5, '2017-08-24 06:23:22', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(347, 'Test Grup 1', 5, 5, '2017-08-24 06:23:23', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(348, 'Test Grup 1', 5, 5, '2017-08-24 06:23:24', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(349, 'Test Grup 1', 5, 5, '2017-08-24 06:23:25', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(350, 'Test Grup 1', 5, 5, '2017-08-24 06:23:26', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(351, 'Test Grup 1', 5, 5, '2017-08-24 06:23:27', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(352, 'Test Grup 1', 5, 5, '2017-08-24 06:23:28', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(353, 'Test Grup 1', 5, 5, '2017-08-24 06:23:29', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(354, 'Test Grup 1', 5, 5, '2017-08-24 06:23:30', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(355, 'Test Grup 1', 5, 5, '2017-08-24 06:23:31', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(356, 'Test Grup 1', 5, 5, '2017-08-24 06:23:33', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(357, 'Test Grup 1', 5, 5, '2017-08-24 06:23:34', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(358, 'Test Grup 1', 5, 5, '2017-08-24 06:23:35', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(359, 'Test Grup 1', 5, 5, '2017-08-24 06:23:36', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(360, 'Test Grup 1', 5, 5, '2017-08-24 06:23:37', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(361, 'Test Grup 1', 5, 5, '2017-08-24 06:23:38', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(362, 'Test Grup 1', 5, 5, '2017-08-24 06:23:40', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b'),
	(363, 'Test Grup 1', 5, 5, '2017-08-24 06:23:41', '0000-00-00 00:00:00', 0, 'N', 'KUOTA#0', '5a38c1c5cd2f50bc202bb0d6e49f5a8241ea4a6b');
/*!40000 ALTER TABLE `m_grup` ENABLE KEYS */;

-- Dumping structure for table trackjamaah.m_tools
CREATE TABLE IF NOT EXISTS `m_tools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table trackjamaah.m_tools: ~4 rows (approximately)
/*!40000 ALTER TABLE `m_tools` DISABLE KEYS */;
INSERT INTO `m_tools` (`id`, `key`, `value`) VALUES
	(1, 'paid', '0'),
	(2, 'create_grup', 'Paid'),
	(3, 'diskon', '0'),
	(4, 'free_kuota', '9999');
/*!40000 ALTER TABLE `m_tools` ENABLE KEYS */;

-- Dumping structure for table trackjamaah.m_user
CREATE TABLE IF NOT EXISTS `m_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL DEFAULT 'Your Name',
  `alamat` varchar(100) NOT NULL DEFAULT 'malang',
  `no_telp` varchar(15) NOT NULL DEFAULT '123',
  `email` varchar(50) NOT NULL DEFAULT 'email@email.email',
  `password` varchar(100) NOT NULL DEFAULT '123',
  `image` varchar(100) NOT NULL DEFAULT 'http://enadcity.org/enadcity/wp-content/uploads/2017/02/profile-pictures.png',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `key` varchar(255) NOT NULL,
  `referral` varchar(5) DEFAULT NULL,
  `confirm` enum('Y','N') NOT NULL DEFAULT 'N',
  `sha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table trackjamaah.m_user: ~10 rows (approximately)
/*!40000 ALTER TABLE `m_user` DISABLE KEYS */;
INSERT INTO `m_user` (`id`, `nama`, `alamat`, `no_telp`, `email`, `password`, `image`, `date_add`, `date_modified`, `key`, `referral`, `confirm`, `sha`) VALUES
	(1, 'Muhammad Handharbeni', 'Malang', '081556617741', 'mhandharbeni@gmail.com', '123', 'e12e', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', 'Y', 'dc98d75d5e4df991183cfee64a59cfab8360b4b8'),
	(2, 'Vivi Atika Unnisyah', 'Malang', '085712312333', 'email@email.emails', '123', 'http://enadcity.org/enadcity/wp-content/uploads/2017/02/profile-pictures.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', 'Y', '08129386cec0e68b26122cdf66276d68b26cc2b8'),
	(5, 'test', 'test', '123', 'test', 'test', 'http://enadcity.org/enadcity/wp-content/uploads/2017/02/profile-pictures.png', '2017-08-22 14:54:57', '0000-00-00 00:00:00', '60a1142bcc22ee6ce341853adf2160087f7c5651', '', 'Y', 'a9e2c5c4df03792b8cf40fc1146de347cddd2252'),
	(9, 'test21465', 'test', '081556617741123', 'test@sdg', 'test', 'http://enadcity.org/enadcity/wp-content/uploads/2017/02/profile-pictures.png', '2017-08-22 21:00:12', '2017-08-22 21:10:19', 'b542956d4f91a48f6b057b8bd9ba726e086db402', '8a135', 'Y', '5a7c1ec986b0570aaa72c48d4a8aadb0ead5e6b7'),
	(10, 'test21465s', 'test', '081556617741123', 'test@sdg', 'test', 'http://enadcity.org/enadcity/wp-content/uploads/2017/02/profile-pictures.png', '2017-08-22 21:21:44', '2017-08-22 21:25:45', 'a97276da5af7794ad38bc96d9a8a062184abc24d', 'a9c34', 'Y', '3f6e0f147b1f6cb808fcbe4940fa43ebbb264593'),
	(11, 'test21465', 'test', '081556617741123', 'test@sdg', 'test', 'http://enadcity.org/enadcity/wp-content/uploads/2017/02/profile-pictures.png', '2017-08-22 21:26:01', '0000-00-00 00:00:00', '533fd69b81f2518f3a50abfac676158c7d6d0156', 'c2f72', 'N', '62cd058e256e2e344bbe1e10d125d03732ca4113'),
	(12, 'test21465', 'test', '08155661774141', 'test@sdg', 'test', 'http://enadcity.org/enadcity/wp-content/uploads/2017/02/profile-pictures.png', '2017-08-22 21:26:20', '2017-08-22 21:27:36', 'e100c6b20687311cf6e4f19824960f964e15f830', 'e7c68', 'Y', 'cb1a86d715419aaebe1921a46e639f054978be86'),
	(13, 'test21465', 'test', '081556617741411', 'test@sdgs', 'test', 'http://enadcity.org/enadcity/wp-content/uploads/2017/02/profile-pictures.png', '2017-08-22 21:34:37', '0000-00-00 00:00:00', 'fabdcd468a110d84e637639818b4c2f49f62dc78', '8b76b', 'N', '8705a2b4bebeeb4b9ca3313738fdb1fe6369fe6a'),
	(14, 'test214651', 'test', '081556617741411', 'test@sdgsa', 'test', 'http://enadcity.org/enadcity/wp-content/uploads/2017/02/profile-pictures.png', '2017-10-10 22:00:56', '0000-00-00 00:00:00', '1bb6aa08aaf644b0673006c8bfcd9214d32e742d', '8f320', 'N', '4397497757dae9bf0ea3d9b34f4bdbc4c5d7f329'),
	(15, 'asdf', 'asdf', '1234', 'asdf@asdf', '123', 'http://enadcity.org/enadcity/wp-content/uploads/2017/02/profile-pictures.png', '2017-10-10 22:15:07', '2017-10-10 22:15:23', 'eac905de7a1bc2b6fcf422b2b275863b654a044f', 'f2c8f', 'Y', 'a531c3e17d22891bb0b858a27fd1828e5a21ddbc');
/*!40000 ALTER TABLE `m_user` ENABLE KEYS */;

-- Dumping structure for function trackjamaah.SPLIT_STRING
DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `SPLIT_STRING`(delim VARCHAR(12), str VARCHAR(255), pos INT) RETURNS varchar(255) CHARSET latin1
    DETERMINISTIC
RETURN
    REPLACE(
        SUBSTRING(
            SUBSTRING_INDEX(str, delim, pos),
            LENGTH(SUBSTRING_INDEX(str, delim, pos-1)) + 1
        ),
        delim, ''
    )//
DELIMITER ;

-- Dumping structure for table trackjamaah.t_friend
CREATE TABLE IF NOT EXISTS `t_friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user_ori` int(11) DEFAULT NULL,
  `id_user_desti` int(11) DEFAULT NULL,
  `date_add` datetime DEFAULT NULL,
  `sha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t_friend_m_user` (`id_user_ori`),
  KEY `FK_t_friend_m_user_2` (`id_user_desti`),
  CONSTRAINT `FK_t_friend_m_user` FOREIGN KEY (`id_user_ori`) REFERENCES `m_user` (`id`),
  CONSTRAINT `FK_t_friend_m_user_2` FOREIGN KEY (`id_user_desti`) REFERENCES `m_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table trackjamaah.t_friend: ~5 rows (approximately)
/*!40000 ALTER TABLE `t_friend` DISABLE KEYS */;
INSERT INTO `t_friend` (`id`, `id_user_ori`, `id_user_desti`, `date_add`, `sha`) VALUES
	(3, 5, 9, '2017-09-21 22:58:03', '1a50a014020824a051b9a70c62fca0880a9d9cbc'),
	(6, 5, 13, '2017-09-21 22:59:45', '6a84a16acd4038d38e25c4fde034e716b3fb205b'),
	(7, 13, 9, '2017-09-21 23:00:50', 'b4ef7fc10906c5d6a3af2a2db7fe8363ff87ad4d'),
	(8, 12, 13, '2017-09-21 23:00:57', 'a55c78aafae69448a9253cfdb71464c0ecee5dc2'),
	(9, 12, 5, '2017-09-21 23:01:02', '357a30982a29647084ed70565258147552621f64');
/*!40000 ALTER TABLE `t_friend` ENABLE KEYS */;

-- Dumping structure for table trackjamaah.t_grup
CREATE TABLE IF NOT EXISTS `t_grup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_grup` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `type_user` enum('Leader','Member') NOT NULL DEFAULT 'Member',
  `deleted` enum('Y','N') NOT NULL DEFAULT 'N',
  `paid` enum('Y','N') NOT NULL DEFAULT 'N',
  `masa_aktif` int(11) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `confirmation` enum('Y','N') NOT NULL DEFAULT 'N',
  `sha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t_grup_m_grup` (`id_grup`),
  KEY `FK_t_grup_m_user` (`id_user`),
  CONSTRAINT `FK_t_grup_m_grup` FOREIGN KEY (`id_grup`) REFERENCES `m_grup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_t_grup_m_user` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=latin1;

-- Dumping data for table trackjamaah.t_grup: ~292 rows (approximately)
/*!40000 ALTER TABLE `t_grup` DISABLE KEYS */;
INSERT INTO `t_grup` (`id`, `id_grup`, `id_user`, `type_user`, `deleted`, `paid`, `masa_aktif`, `date_add`, `date_end`, `confirmation`, `sha`) VALUES
	(29, 31, 5, 'Leader', 'N', '', 5, '2017-08-22 15:08:42', '0000-00-00 00:00:00', 'Y', '693a658ecaae549204c0a9489ac261e5cd2db095'),
	(30, 32, 5, 'Leader', 'N', '', 5, '2017-08-22 15:09:21', '0000-00-00 00:00:00', 'Y', '537e8aab3ffe80321f44eeecd1cdc8725f584bf8'),
	(31, 33, 5, 'Leader', 'N', '', 5, '2017-08-22 15:09:22', '0000-00-00 00:00:00', 'Y', '606dece46e22547ae2d6bfd7c7292917c34e3be6'),
	(34, 33, 1, 'Member', 'N', '', 0, '2017-08-22 20:59:57', '0000-00-00 00:00:00', 'N', '71bb76143c3979d349bfb447882a0927446c9a7a'),
	(35, 33, 9, 'Member', 'N', '', 0, '2017-08-22 21:00:26', '0000-00-00 00:00:00', 'N', '23ef20d5eaf62b382315f54d276718d8af0c7e3a'),
	(93, 160, 5, 'Leader', 'N', 'Y', 5, '2017-08-23 22:07:58', '0000-00-00 00:00:00', 'Y', '2418a0aae057cb4d67e3ee70c5faff615601e738'),
	(97, 160, 9, 'Member', 'N', 'Y', 0, '2017-08-23 22:09:42', '0000-00-00 00:00:00', 'N', 'd3cf07b44f77da6a96d54e95af02777092e557f7'),
	(98, 160, 2, 'Member', 'N', 'Y', 0, '2017-08-23 22:10:04', '0000-00-00 00:00:00', 'N', 'd3cf07b44f77da6a96d54e95af02777092e557f7'),
	(99, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 22:10:16', '0000-00-00 00:00:00', 'Y', '000cf7ddc7bff517626443e0c95832a60a9ec745'),
	(100, 161, 5, 'Leader', 'N', 'N', 5, '2017-08-23 22:11:04', '0000-00-00 00:00:00', 'Y', '02f6642bafd5d99a9f0e48d016793c64b1bdafad'),
	(102, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:22:03', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(104, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:22:21', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(106, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:22:47', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(108, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:22:48', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(110, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:22:49', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(112, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:22:50', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(114, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:22:51', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(116, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:22:52', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(118, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:22:53', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(120, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:22:55', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(122, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:22:56', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(124, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:22:59', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(126, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:00', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(128, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:01', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(130, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:02', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(132, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:04', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(134, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:05', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(136, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:06', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(138, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:07', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(140, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:08', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(142, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:09', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(144, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:10', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(146, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:11', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(148, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:12', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(150, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:13', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(152, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:15', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(154, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:16', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(156, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:17', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(158, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:18', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(160, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:19', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(162, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:20', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(164, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:21', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(166, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:23', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(168, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:23', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(170, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:25', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(172, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:26', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(174, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:27', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(176, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:29', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(178, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:30', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(180, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:32', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(182, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:33', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(184, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:34', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(186, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:35', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(188, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:36', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(190, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:38', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(192, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:39', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(194, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:40', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(196, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:41', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(198, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:43', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(200, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:44', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(202, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:45', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(204, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:46', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(206, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:47', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(208, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:48', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(210, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:49', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(212, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:50', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(214, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:51', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(216, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:52', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(218, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:53', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(220, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:54', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(222, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:55', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(224, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:56', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(226, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:58', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(228, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:23:59', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(230, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:00', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(232, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:01', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(234, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:03', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(236, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:04', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(238, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:05', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(240, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:06', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(242, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:07', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(244, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:08', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(246, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:10', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(248, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:12', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(250, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:13', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(252, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:14', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(254, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:15', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(256, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:16', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(258, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:17', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(260, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:18', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(262, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:19', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(264, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:20', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(266, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:21', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(268, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:23', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(270, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:24', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(272, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:25', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(274, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:26', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(276, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:28', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(278, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:29', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(280, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:30', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(282, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:31', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(284, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:32', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(286, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:33', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(288, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:34', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(290, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:36', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(292, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:37', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(294, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:38', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(296, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:39', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(298, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:40', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(300, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:41', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(302, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:42', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(304, 160, 12, 'Member', 'N', 'N', 0, '2017-08-23 23:24:44', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(305, 264, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:36', '0000-00-00 00:00:00', 'Y', '68e2a7c36ca785e22adf508f656604eb06edcec0'),
	(306, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:21:38', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(307, 265, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:38', '0000-00-00 00:00:00', 'Y', '068cf70babfb9ba23d60f095a18e2d4e2e7302d6'),
	(308, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:21:39', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(309, 266, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:39', '0000-00-00 00:00:00', 'Y', '368139a144abbc87cd8ab710e4f728d69a255b8b'),
	(310, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:21:40', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(311, 267, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:40', '0000-00-00 00:00:00', 'Y', '1b69b58ba8991dc408884740bda49c54261e620e'),
	(312, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:21:41', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(313, 268, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:42', '0000-00-00 00:00:00', 'Y', 'cdb7c580eacefec077495c8a8a0df59755e18b76'),
	(314, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:21:42', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(315, 269, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:43', '0000-00-00 00:00:00', 'Y', '8c9ab60388792739d9b4dd8822e71eb8deff9b2d'),
	(316, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:21:43', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(317, 270, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:44', '0000-00-00 00:00:00', 'Y', '33cfce05d7500312bb7e7a854e011a84d1c7472f'),
	(318, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:21:45', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(319, 271, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:45', '0000-00-00 00:00:00', 'Y', '9552cb1c0fd63a81e21fab5ecedd9da7bab00ee6'),
	(320, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:21:46', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(321, 272, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:46', '0000-00-00 00:00:00', 'Y', '1fbc6cbc63e2a27dca640b0c51751bae521342b8'),
	(322, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:21:47', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(323, 273, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:47', '0000-00-00 00:00:00', 'Y', 'ceb632c19432e1b2a758eebdace8478516f44ac9'),
	(324, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:21:48', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(325, 274, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:49', '0000-00-00 00:00:00', 'Y', 'b914af11bb4bd84bca0b00efbd90b73dbf9dde19'),
	(326, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:21:49', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(327, 275, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:50', '0000-00-00 00:00:00', 'Y', '7258c0bb5b098150888a44be57db091be2b247c4'),
	(328, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:21:50', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(329, 276, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:51', '0000-00-00 00:00:00', 'Y', '39ad045a81648113aea5e01d876307ac9a027ea3'),
	(330, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:21:52', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(331, 277, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:52', '0000-00-00 00:00:00', 'Y', '31a6045727b0f646ae77d406aba9463a635b42ae'),
	(332, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:21:53', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(333, 278, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:53', '0000-00-00 00:00:00', 'Y', '2560d39f3e97a67dcc18da7712548da205348ec6'),
	(334, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:21:54', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(335, 279, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:54', '0000-00-00 00:00:00', 'Y', '09a30dbe8358471569a78a8c02ab26c445488028'),
	(336, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:21:55', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(337, 280, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:55', '0000-00-00 00:00:00', 'Y', '0a44e7fdca7231de7ebeb77aaa4b75073815848d'),
	(338, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:21:56', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(339, 281, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:56', '0000-00-00 00:00:00', 'Y', '708c40583ecc6c2f0dbc319e4b4b1d8c63d154f2'),
	(340, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:21:57', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(341, 282, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:57', '0000-00-00 00:00:00', 'Y', '18e5ce375c13a6d2a6ceb3e703ca24f3842b1bd6'),
	(342, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:21:58', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(343, 283, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:58', '0000-00-00 00:00:00', 'Y', 'd6b17f9fa68c6dfb61bb3cf0d4bbba3cca8c08a8'),
	(344, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:21:59', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(345, 284, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:21:59', '0000-00-00 00:00:00', 'Y', '88ccc00e60bcbf86f6290b619b8d88c8ac7d6ccb'),
	(346, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:00', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(347, 285, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:00', '0000-00-00 00:00:00', 'Y', '12db9df2590a272395d7d225ef4556e0b5516c51'),
	(348, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:01', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(349, 286, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:01', '0000-00-00 00:00:00', 'Y', 'c11abf776994b3acb3f17f5e9b366d91b458d357'),
	(350, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:02', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(351, 287, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:02', '0000-00-00 00:00:00', 'Y', '586829dc407d54653aa9513cfd088942465425c9'),
	(352, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:03', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(353, 288, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:03', '0000-00-00 00:00:00', 'Y', 'fe096a00d06619d5765e412767a07aebef292c41'),
	(354, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:04', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(355, 289, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:05', '0000-00-00 00:00:00', 'Y', 'b8226877811b7e61dd1d388ed239ec3f13d72951'),
	(356, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:05', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(357, 290, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:06', '0000-00-00 00:00:00', 'Y', '36973651831bc16bb9c700b174ba33ad71f68766'),
	(358, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:06', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(359, 291, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:07', '0000-00-00 00:00:00', 'Y', 'd59fc179e2952913bb7632e795581db570dfeea1'),
	(360, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:07', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(361, 292, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:08', '0000-00-00 00:00:00', 'Y', '0e85f8ef9dea30dec24b5f30fa329c28d0e23bbb'),
	(362, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:08', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(363, 293, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:09', '0000-00-00 00:00:00', 'Y', '0f6b0405709291c9e41a1bbd3403d92c41b12436'),
	(364, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:09', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(365, 294, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:10', '0000-00-00 00:00:00', 'Y', 'db41dfa99f871180d0d28e1cb67cbd52a592b25a'),
	(366, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:10', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(367, 295, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:11', '0000-00-00 00:00:00', 'Y', 'f03cba6c485d689ca7b829f756996fcf4a62de94'),
	(368, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:12', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(369, 296, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:12', '0000-00-00 00:00:00', 'Y', '6aa932b9ca5784857e25cd8cd377cf89474f8e21'),
	(370, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:13', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(371, 297, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:14', '0000-00-00 00:00:00', 'Y', '7444a1f0d3fe2831fbe64bc2de42f301c52fce75'),
	(372, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:15', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(373, 298, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:16', '0000-00-00 00:00:00', 'Y', '9bca70f52108989d506704b5e09b2be5078a3041'),
	(374, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:17', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(375, 299, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:17', '0000-00-00 00:00:00', 'Y', '50169b16030483286130a3f69e8934bc32abea41'),
	(376, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:18', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(377, 300, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:19', '0000-00-00 00:00:00', 'Y', '8ae969fbb31d80084a3cbc3c45207a56ace59fdc'),
	(378, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:20', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(379, 301, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:21', '0000-00-00 00:00:00', 'Y', '3a98db9cbaaf721320a47aa1190b3ecaa4d7cf9b'),
	(380, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:22', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(381, 302, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:22', '0000-00-00 00:00:00', 'Y', 'c2c823c2160e87bc766927d05b3c5f753d954b83'),
	(382, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:23', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(383, 303, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:24', '0000-00-00 00:00:00', 'Y', '33702cc19c4724f170006672f7066a4a1870005b'),
	(384, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:25', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(385, 304, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:25', '0000-00-00 00:00:00', 'Y', '284d2ed93f869e6662dd35ebedad746d32a6e253'),
	(386, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:26', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(387, 305, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:27', '0000-00-00 00:00:00', 'Y', 'f380f4540547c6718ceb8c1e5b3d911afcdfcb33'),
	(388, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:28', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(389, 306, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:28', '0000-00-00 00:00:00', 'Y', '9de84ef9f264915c4b3b84887a4a15c7c525d573'),
	(390, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:29', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(391, 307, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:30', '0000-00-00 00:00:00', 'Y', '1459d77f083e0444c9fffef7c3611c172a070213'),
	(392, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:31', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(393, 308, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:31', '0000-00-00 00:00:00', 'Y', '8842b5dc911f34194c9cf9e6087e08e870e5eb3f'),
	(394, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:32', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(395, 309, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:32', '0000-00-00 00:00:00', 'Y', '92c20c87c6518e2d3e9c65d998681873de3be6fd'),
	(396, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:33', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(397, 310, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:34', '0000-00-00 00:00:00', 'Y', 'bb6ce4880156acb5917bb1ac016efc715600c642'),
	(398, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:35', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(399, 311, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:35', '0000-00-00 00:00:00', 'Y', 'cfc1b180e61ca7c7501287e827f6387de8a8be84'),
	(400, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:36', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(401, 312, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:36', '0000-00-00 00:00:00', 'Y', 'f84fca1626e2ca6d6f187f9e8671c58b0822417f'),
	(402, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:37', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(403, 313, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:38', '0000-00-00 00:00:00', 'Y', '31b4a2cacb6619c7044a94e0d6ce2cecf0d8c495'),
	(404, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:39', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(405, 314, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:40', '0000-00-00 00:00:00', 'Y', '48ea8a857d8287e76ab35471e181b5cc2654375a'),
	(406, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:40', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(407, 315, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:41', '0000-00-00 00:00:00', 'Y', '9096d92cbafa7cd55d0d89bd38d3ddbb8953dcde'),
	(408, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:41', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(409, 316, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:42', '0000-00-00 00:00:00', 'Y', '9f6c48f3279f72667b3136cff2891709484ca426'),
	(410, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:43', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(411, 317, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:44', '0000-00-00 00:00:00', 'Y', '754b935aca13a1e0df5353ac21693f7e2cf3b636'),
	(412, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:45', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(413, 318, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:45', '0000-00-00 00:00:00', 'Y', 'cefa45bcbf940e162b71ab965a8afc67ea1675d4'),
	(414, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:46', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(415, 319, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:48', '0000-00-00 00:00:00', 'Y', '814110f36e13d47295508992890d18efda304b04'),
	(416, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:49', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(417, 320, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:49', '0000-00-00 00:00:00', 'Y', '98e6a8ec23d1955dade9f3fdae1e874c7b5aca23'),
	(418, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:50', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(419, 321, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:51', '0000-00-00 00:00:00', 'Y', 'c7383c0bace8851910206c757b408b18ac903813'),
	(420, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:52', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(421, 322, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:52', '0000-00-00 00:00:00', 'Y', 'd3fcb628c252de5c283756c29cb82c8fcf534af2'),
	(422, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:53', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(423, 323, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:53', '0000-00-00 00:00:00', 'Y', 'b66253b3c19c5a4b9d5ce5723ba3e29a92bcb258'),
	(424, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:54', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(425, 324, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:55', '0000-00-00 00:00:00', 'Y', '2354e9072c9d649355561200af7d9d020ccb21ae'),
	(426, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:55', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(427, 325, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:56', '0000-00-00 00:00:00', 'Y', 'e896f9ee2346795c80781a9aff6fa190747ab0a3'),
	(428, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:56', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(429, 326, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:57', '0000-00-00 00:00:00', 'Y', 'd53f2753109b816460007f3d020fb9d1acd81c26'),
	(430, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:58', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(431, 327, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:58', '0000-00-00 00:00:00', 'Y', 'b64736203ed7d343147e66ffb51ad226e68c2eac'),
	(432, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:22:59', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(433, 328, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:22:59', '0000-00-00 00:00:00', 'Y', '2a8f4e28012242df06c58b13ddc91e68798ab9d1'),
	(434, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:01', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(435, 329, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:01', '0000-00-00 00:00:00', 'Y', 'd2325ec7767b3bb20b1ee54c1f80743080244b96'),
	(436, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:02', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(437, 330, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:02', '0000-00-00 00:00:00', 'Y', '821d0c4de96a6e4c4555467f34a17789d88bb072'),
	(438, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:03', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(439, 331, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:04', '0000-00-00 00:00:00', 'Y', 'aba4c7fa9ee3f24a39c0fa2e8f5f2ace5e9fdbb2'),
	(440, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:04', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(441, 332, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:05', '0000-00-00 00:00:00', 'Y', 'b374ceb2406823442c7152ee996cba9525299fdf'),
	(442, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:05', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(443, 333, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:06', '0000-00-00 00:00:00', 'Y', 'c7ed643abc582b59f51b51520dd68ded738bc556'),
	(444, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:06', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(445, 334, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:07', '0000-00-00 00:00:00', 'Y', '6987e3f2f9b1e0b7cef1ff6e53d025c9430ba516'),
	(446, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:07', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(447, 335, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:08', '0000-00-00 00:00:00', 'Y', '5e11759fe86c9b62ca4d46fa26354a8844ae2b3a'),
	(448, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:08', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(449, 336, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:09', '0000-00-00 00:00:00', 'Y', '18123a2a73c34bd753caf241d4ead900065ea0d6'),
	(450, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:09', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(451, 337, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:10', '0000-00-00 00:00:00', 'Y', '205ea69c0361961b30b5ac924906475ea392961d'),
	(452, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:11', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(453, 338, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:11', '0000-00-00 00:00:00', 'Y', 'cc650d3a4afe1e119158e6ae07b2384bfdb91ab4'),
	(454, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:12', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(455, 339, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:12', '0000-00-00 00:00:00', 'Y', '2f1df7ebe06fbd2ccc36127b841b757325fccf78'),
	(456, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:13', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(457, 340, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:13', '0000-00-00 00:00:00', 'Y', '6be053b4fe0ee498bc13768f9108ad02d757512e'),
	(458, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:14', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(459, 341, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:14', '0000-00-00 00:00:00', 'Y', '7075a3359ea5d897814d761737c087e6e7a31368'),
	(460, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:15', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(461, 342, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:16', '0000-00-00 00:00:00', 'Y', '230067ae578dc8273953c615ac5592fb66e9dc5a'),
	(462, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:16', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(463, 343, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:17', '0000-00-00 00:00:00', 'Y', 'b44f9840f7fcd00d6ae427fb9d79541141402373'),
	(464, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:17', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(465, 344, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:18', '0000-00-00 00:00:00', 'Y', 'a4cb17e59ca8c2b4780c5ec4751463f7d677f1a4'),
	(466, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:19', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(467, 345, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:19', '0000-00-00 00:00:00', 'Y', 'd23be879fbc4d381320369dc2163a76ebe8a23ab'),
	(468, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:21', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(469, 346, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:22', '0000-00-00 00:00:00', 'Y', '3bfdac7c531e06bbf91c51fa10ef083d7e6bec90'),
	(470, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:22', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(471, 347, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:23', '0000-00-00 00:00:00', 'Y', 'e6034486bfdc02d8b56e0b1100c1758d2784aa56'),
	(472, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:23', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(473, 348, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:24', '0000-00-00 00:00:00', 'Y', '8bd0212f75a7111a3e5d86d3fac5412a83d7213e'),
	(474, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:24', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(475, 349, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:25', '0000-00-00 00:00:00', 'Y', '403fb4905ac96db0af7f390013d41edee3939b5d'),
	(476, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:25', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(477, 350, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:26', '0000-00-00 00:00:00', 'Y', '3292ade68baec0f397a8da01fbf520742d3be81d'),
	(478, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:26', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(479, 351, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:27', '0000-00-00 00:00:00', 'Y', '3d4b4945ac23a3dc9c43e20831d619344c1ff117'),
	(480, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:28', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(481, 352, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:28', '0000-00-00 00:00:00', 'Y', '8026fd3a9104d0bd48508a281f725fa0fcb29f4b'),
	(482, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:29', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(483, 353, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:29', '0000-00-00 00:00:00', 'Y', '2008d2e32b141c1ff2185f218e6e0286e74a7361'),
	(484, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:30', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(485, 354, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:30', '0000-00-00 00:00:00', 'Y', 'b89d9b462dbd99df363c7eb7a4383ec99cd35784'),
	(486, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:31', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(487, 355, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:31', '0000-00-00 00:00:00', 'Y', '5a7de7a6eb5ca375c4ba61d3ca84854ac615255e'),
	(488, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:32', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(489, 356, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:33', '0000-00-00 00:00:00', 'Y', '7d17bd49d198016fa9cc819ec19901b2b58bba38'),
	(490, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:33', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(491, 357, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:34', '0000-00-00 00:00:00', 'Y', '007046c414db2aedfe7926bcf41d3748ad94270f'),
	(492, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:34', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(493, 358, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:35', '0000-00-00 00:00:00', 'Y', 'a45c4a8ae17465f3770f22de0a4efe1bf4c5f854'),
	(494, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:36', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(495, 359, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:36', '0000-00-00 00:00:00', 'Y', '73cee31f564f7c792245ca4f917f16a477dbd8e3'),
	(496, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:37', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(497, 360, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:37', '0000-00-00 00:00:00', 'Y', '18cffc40cfa8085e040abee10dfb0e7dd20c19b5'),
	(498, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:38', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(499, 361, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:38', '0000-00-00 00:00:00', 'Y', '01df12a890e1f204407cd4fc00f9ff26ac5b85d9'),
	(500, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:39', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(501, 362, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:40', '0000-00-00 00:00:00', 'Y', '2d5875dbe5a2581c77cd4354193d14339934ed2e'),
	(502, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:40', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d'),
	(503, 363, 5, 'Leader', 'N', 'N', 5, '2017-08-24 06:23:41', '0000-00-00 00:00:00', 'Y', 'e6d78962a0fba54edc5212541e6b819a7a73d481'),
	(504, 160, 12, 'Member', 'N', 'N', 0, '2017-08-24 06:23:41', '0000-00-00 00:00:00', 'N', '198af911cbbe58a10a8812b4f951add559da5b1d');
/*!40000 ALTER TABLE `t_grup` ENABLE KEYS */;

-- Dumping structure for table trackjamaah.t_lokasi
CREATE TABLE IF NOT EXISTS `t_lokasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_grup` int(11) NOT NULL,
  `nama_lokasi` varchar(100) NOT NULL DEFAULT 'nothing',
  `latitude` varchar(100) NOT NULL DEFAULT '123',
  `longitude` varchar(100) NOT NULL DEFAULT '123',
  `prioritas` int(11) NOT NULL DEFAULT '0',
  `type` enum('Base','Destination') NOT NULL DEFAULT 'Destination',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t_lokasi_m_grup` (`id_grup`),
  CONSTRAINT `FK_t_lokasi_m_grup` FOREIGN KEY (`id_grup`) REFERENCES `m_grup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table trackjamaah.t_lokasi: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_lokasi` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_lokasi` ENABLE KEYS */;

-- Dumping structure for table trackjamaah.t_message
CREATE TABLE IF NOT EXISTS `t_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_grup` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `type` enum('PING','TEXT') NOT NULL DEFAULT 'TEXT',
  `text` longtext NOT NULL,
  `deleted` enum('Y','N') NOT NULL DEFAULT 'N',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t_message_m_grup` (`id_grup`),
  KEY `FK_t_message_m_user` (`id_user`),
  CONSTRAINT `FK_t_message_m_grup` FOREIGN KEY (`id_grup`) REFERENCES `m_grup` (`id`),
  CONSTRAINT `FK_t_message_m_user` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table trackjamaah.t_message: ~3 rows (approximately)
/*!40000 ALTER TABLE `t_message` DISABLE KEYS */;
INSERT INTO `t_message` (`id`, `id_grup`, `id_user`, `type`, `text`, `deleted`, `date_add`, `sha`) VALUES
	(1, 33, 5, 'TEXT', 'test message', 'N', '2017-08-22 15:39:52', '728656d23fe1b52b1b0fd77659481c0bad97eb0b'),
	(2, 33, 5, 'TEXT', 'test message', 'N', '2017-08-22 15:40:00', '728656d23fe1b52b1b0fd77659481c0bad97eb0b'),
	(3, 33, 5, 'TEXT', 'test message', 'N', '2017-08-22 15:40:17', '728656d23fe1b52b1b0fd77659481c0bad97eb0b');
/*!40000 ALTER TABLE `t_message` ENABLE KEYS */;

-- Dumping structure for table trackjamaah.t_payment
CREATE TABLE IF NOT EXISTS `t_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_referral` int(11) NOT NULL DEFAULT '0' COMMENT 'bisa kosong bisa dari id_grup',
  `type` enum('Insidentil','Member') NOT NULL DEFAULT 'Insidentil',
  `date_start` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nominal` int(11) NOT NULL DEFAULT '0',
  `no_referral` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_t_payment_m_user` (`id_user`),
  CONSTRAINT `FK_t_payment_m_user` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table trackjamaah.t_payment: ~1 rows (approximately)
/*!40000 ALTER TABLE `t_payment` DISABLE KEYS */;
INSERT INTO `t_payment` (`id`, `id_user`, `id_referral`, `type`, `date_start`, `date_end`, `date_modified`, `nominal`, `no_referral`, `status`) VALUES
	(1, 5, 0, 'Member', '2017-08-23 22:50:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 500000, 15324, 0);
/*!40000 ALTER TABLE `t_payment` ENABLE KEYS */;

-- Dumping structure for table trackjamaah.t_tracking
CREATE TABLE IF NOT EXISTS `t_tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `latitude` varchar(100) NOT NULL DEFAULT '123',
  `longitude` varchar(100) NOT NULL DEFAULT '123',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t_tracking_m_user` (`id_user`),
  CONSTRAINT `FK_t_tracking_m_user` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table trackjamaah.t_tracking: ~8 rows (approximately)
/*!40000 ALTER TABLE `t_tracking` DISABLE KEYS */;
INSERT INTO `t_tracking` (`id`, `id_user`, `latitude`, `longitude`, `date_add`, `date_modified`, `sha`) VALUES
	(3, 5, '456', '456qw', '2017-08-22 14:54:57', '2017-08-24 06:23:41', '421d03c45e3947b91331e5eefb0e14237f3fa626'),
	(7, 9, '123', '123', '2017-08-22 21:00:12', '0000-00-00 00:00:00', 'b85a0ad5f36ceddce804b8614fbc2adacfa0d962'),
	(8, 10, '123', '123', '2017-08-22 21:21:44', '0000-00-00 00:00:00', 'e91ded7aa637125ed65140625e42d2b57f34355b'),
	(9, 11, '123', '123', '2017-08-22 21:26:01', '0000-00-00 00:00:00', 'ab84e3fc8322e0a21f8640478f5140d46f24e928'),
	(10, 12, '123', '123', '2017-08-22 21:26:20', '0000-00-00 00:00:00', '83822da63daa116c03029224124547dc78b709a0'),
	(11, 13, '123', '123', '2017-08-22 21:34:37', '0000-00-00 00:00:00', '83b71cd496eeb1f8bd46cf5b30abcaa92b7d9fad'),
	(12, 14, '123', '123', '2017-10-10 22:00:56', '0000-00-00 00:00:00', 'bdf615acf9b57fd7c6c0c75177fdf5e43ef0a6a6'),
	(13, 15, '123', '123', '2017-10-10 22:15:07', '0000-00-00 00:00:00', '8bd15759d91f779e3eb99348269e0372cbee4aab');
/*!40000 ALTER TABLE `t_tracking` ENABLE KEYS */;

-- Dumping structure for trigger trackjamaah.m_grup_after_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `m_grup_after_insert` AFTER INSERT ON `m_grup` FOR EACH ROW BEGIN
	SET @idgrup = NEW.id;
	SET @iduser = NEW.id_user;
	SET @masa_aktif = NEW.masa_aktif;
	SET @dateadd = NEW.date_add;
	SET @dateend = NEW.date_end;
	SET @type_user = "Leader";
	SET @paid = 0;
	SET @confirmation = "Y";

	INSERT INTO t_grup (id_user, id_grup, type_user, masa_aktif, date_add, date_end, paid, confirmation) 
	VALUES (@iduser, @idgrup, @type_user, @masa_aktif, @dateadd, @dateend, @paid, @confirmation);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger trackjamaah.m_grup_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `m_grup_insert` BEFORE INSERT ON `m_grup` FOR EACH ROW BEGIN
	SET @kuota = (SELECT value FROM m_tools WHERE id=4);
	SET @id = NEW.id;
	SET @namagrup = NEW.nama_grup;
	SET @iduser = NEW.id_user;
	SET @masaaktif = NEW.masa_aktif;
	SET @date_add = NEW.date_add;
	SET @date_end = NEW.date_end;
	SET @paid = NEW.paid;
	SET @deleted = NEW.deleted;
	SET @newString = CONCAT("-", @id, @namagrup, @iduser, @masaaktif, @date_add, @date_end, @paid, @deleted);
	SET NEW.kuota_free = CONCAT("KUOTA#", @kuota);
#	SET NEW.kuota_free = "KUOTA,5";
	SET NEW.date_add = NOW();
	SET NEW.sha = SHA1(@newString);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger trackjamaah.m_grup_update
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `m_grup_update` BEFORE UPDATE ON `m_grup` FOR EACH ROW BEGIN
	SET @id = NEW.id;
	SET @namagrup = NEW.nama_grup;
	SET @iduser = NEW.id_user;
	SET @masaaktif = NEW.masa_aktif;
	SET @date_add = NEW.date_add;
	SET @date_end = NEW.date_end;
	SET @paid = NEW.paid;
	SET @deleted = NEW.deleted;
	SET @newString = CONCAT("-", @id, @namagrup, @iduser, @masaaktif, @date_add, @date_end, @paid, @deleted);
	SET NEW.sha = SHA1(@newString);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger trackjamaah.m_user_after_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `m_user_after_insert` AFTER INSERT ON `m_user` FOR EACH ROW BEGIN
	SET @id = NEW.id;
	INSERT INTO t_tracking (id_user) VALUES (@id);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger trackjamaah.m_user_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `m_user_insert` BEFORE INSERT ON `m_user` FOR EACH ROW BEGIN
	SET @id = NEW.id;
	SET @nama = NEW.nama;
	SET @alamat = NEW.alamat;
	SET @notelp = NEW.no_telp;
	SET @email = NEW.email;
	SET @pass = NEW.password;
	SET @image = NEW.image;
	SET @newString = CONCAT('-' , @id, @nama, @alamat, @notelp, @email, @pass, @image);
	SET @sha = SHA1(@newString);
	SET NEW.sha = @sha;
	SET NEW.date_add = NOW();
	SET @key = CONCAT("--", @newString, @sha);
	SET NEW.key = SHA1(@key);
	SET NEW.referral = SHA1(@sha);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger trackjamaah.m_user_update
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `m_user_update` BEFORE UPDATE ON `m_user` FOR EACH ROW BEGIN
	SET @id = NEW.id;
	SET @nama = NEW.nama;
	SET @alamat = NEW.alamat;
	SET @notelp = NEW.no_telp;
	SET @email = NEW.email;
	SET @pass = NEW.password;
	SET @image = NEW.image;
	SET @newString = CONCAT('-' , @id, @nama, @alamat, @notelp, @email, @pass, @image);
	SET NEW.sha = SHA1(@newString);
	SET NEW.date_modified = NOW();
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger trackjamaah.t_friend_before_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `t_friend_before_insert` BEFORE INSERT ON `t_friend` FOR EACH ROW BEGIN
	SET @id = NEW.id;
	SET @id_user_ori = NEW.id_user_ori;
	SET @id_user_desti = NEW.id_user_desti;
	SET @newString = CONCAT('-' , @id, @id_user_ori, @id_user_desti);
	SET @sha = SHA1(@newString);
	SET NEW.sha = @sha;
	SET NEW.date_add = NOW();
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger trackjamaah.t_friend_before_update
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `t_friend_before_update` BEFORE UPDATE ON `t_friend` FOR EACH ROW BEGIN
	SET @id = NEW.id;
	SET @id_user_ori = NEW.id_user_ori;
	SET @id_user_desti = NEW.id_user_desti;
	SET @newString = CONCAT('-' , @id, @id_user_ori, @id_user_desti);
	SET @sha = SHA1(@newString);
	SET NEW.sha = @sha;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger trackjamaah.t_grup_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `t_grup_insert` BEFORE INSERT ON `t_grup` FOR EACH ROW BEGIN
	SET @creategrup = (SELECT value FROM m_tools WHERE id=2);
	SET @id = NEW.id;
	SET @idgrup = NEW.id_grup;
	SET @iduser = NEW.id_user;
	SET @typeuser = NEW.type_user;
	SET @deleted = NEW.deleted;
	SET @paid = NEW.paid;
	SET @masaaktif = NEW.masa_aktif;
	SET @dateadd = NEW.date_add;
	SET @dateend = NEW.date_end;
	SET @confirmation = NEW.confirmation;
	SET @newString = CONCAT("-", @id, @idgrup, @iduser, @typeuser, @deleted, @paid, @masaaktif, @dateadd, @dateend, @confirmation);
	SET @queryMaster = (SELECT kuota_free FROM m_grup WHERE id = @idgrup);
	SET @kuota = (SELECT SPLIT_STRING('#' , @queryMaster, 2));
	IF(@typeuser != "Leader")THEN
		IF(CAST(@kuota AS signed) > 0)THEN
			SET NEW.paid = "Y";
			SET @tempKuota = @kuota - 1;
			UPDATE m_grup SET kuota_free = CONCAT("KUOTA#",@tempKuota) WHERE id = @idgrup;
		ELSE
			SET NEW.paid = "N";
		END IF;
	ELSE
		IF(@creategrup="Free")THEN
			SET NEW.paid = "Y";
		ELSE
			SET NEW.paid = "N";
		END IF;
	END IF;
	SET NEW.date_add = NOW();
	SET NEW.sha = SHA1(@newString);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger trackjamaah.t_grup_update
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `t_grup_update` BEFORE UPDATE ON `t_grup` FOR EACH ROW BEGIN
	SET @id = NEW.id;
	SET @idgrup = NEW.id_grup;
	SET @iduser = NEW.id_user;
	SET @typeuser = NEW.type_user;
	SET @deleted = NEW.deleted;
	SET @paid = NEW.paid;
	SET @masaaktif = NEW.masa_aktif;
	SET @dateadd = NEW.date_add;
	SET @dateend = NEW.date_end;
	SET @confirmation = NEW.confirmation;
	SET @newString = CONCAT("-", @id, @idgrup, @iduser, @typeuser, @deleted, @paid, @masaaktif, @dateadd, @dateend, @confirmation);
	SET NEW.sha = SHA1(@newString);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger trackjamaah.t_lokasi_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `t_lokasi_insert` BEFORE INSERT ON `t_lokasi` FOR EACH ROW BEGIN
	SET @id = NEW.id;
	SET @idgrup = NEW.id_grup;
	SET @namalokasi = NEW.nama_lokasi;
	SET @latitude = NEW.latitude;
	SET @longitude = NEW.longitude;
	SET @prioritas = NEW.prioritas;
	SET @type = NEW.type;
	SET @newString = CONCAT("-", @id, @idgrup, @namalokasi, @latitude, @longitude, @prioritas, @type);
	SET NEW.date_add = NOW();
	SET NEW.sha = SHA1(@newString);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger trackjamaah.t_lokasi_update
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `t_lokasi_update` BEFORE UPDATE ON `t_lokasi` FOR EACH ROW BEGIN
	SET @id = NEW.id;
	SET @idgrup = NEW.id_grup;
	SET @namalokasi = NEW.nama_lokasi;
	SET @latitude = NEW.latitude;
	SET @longitude = NEW.longitude;
	SET @prioritas = NEW.prioritas;
	SET @type = NEW.type;
	SET @newString = CONCAT("-", @id, @idgrup, @namalokasi, @latitude, @longitude, @prioritas, @type);
	SET NEW.date_modified = NOW();
	SET NEW.sha = SHA1(@newString);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger trackjamaah.t_message_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `t_message_insert` BEFORE INSERT ON `t_message` FOR EACH ROW BEGIN
	SET @id = NEW.id;
	SET @idgrup = NEW.id_grup;
	SET @iduser = NEW.id_user;
	SET @text = NEW.text;
	SET @type = NEW.type;
	SET @deleted = NEW.deleted;
	SET NEW.date_add = NOW();
	SET @newString = CONCAT("-", @id, @idgrup, @iduser, @text, @type, @deleted);
	SET NEW.sha = SHA1(@newString);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger trackjamaah.t_message_update
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `t_message_update` BEFORE UPDATE ON `t_message` FOR EACH ROW BEGIN
	SET @id = NEW.id;
	SET @idgrup = NEW.id_grup;
	SET @iduser = NEW.id_user;
	SET @text = NEW.text;
	SET @type = NEW.type;
	SET @deleted = NEW.deleted;
	SET @newString = CONCAT("-", @id, @idgrup, @iduser, @text, @type, @deleted);
	SET NEW.sha = SHA1(@newString);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger trackjamaah.t_payment_before_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `t_payment_before_insert` BEFORE INSERT ON `t_payment` FOR EACH ROW BEGIN
	IF(NEW.date_start = "0000-00-00 00:00:00")THEN
		SET NEW.date_start = NOW();
	END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger trackjamaah.t_tracking_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `t_tracking_insert` BEFORE INSERT ON `t_tracking` FOR EACH ROW BEGIN
	SET @id = NEW.id;
	SET @iduser = NEW.id_user;
	SET @latitude = NEW.latitude;
	SET @longitude = NEW.longitude;
	SET @newString = CONCAT("-", @id, @iduser, @latitude, @longitude);
	SET NEW.sha = SHA1(@newString);
	SET NEW.date_add = NOW();
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger trackjamaah.t_tracking_update
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `t_tracking_update` BEFORE UPDATE ON `t_tracking` FOR EACH ROW BEGIN
	SET @id = NEW.id;
	SET @iduser = NEW.id_user;
	SET @latitude = NEW.latitude;
	SET @longitude = NEW.longitude;
	SET @newString = CONCAT("-", @id, @iduser, @latitude, @longitude);
	SET NEW.sha = SHA1(@newString);
	SET NEW.date_modified = NOW();
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
