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
  `kuota_free` int(11) NOT NULL DEFAULT '0',
  `sha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_m_grup_m_user` (`id_user`),
  CONSTRAINT `FK_m_grup_m_user` FOREIGN KEY (`id_user`) REFERENCES `m_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

-- Dumping data for table trackjamaah.m_grup: ~8 rows (approximately)
/*!40000 ALTER TABLE `m_grup` DISABLE KEYS */;
INSERT INTO `m_grup` (`id`, `nama_grup`, `id_user`, `masa_aktif`, `date_add`, `date_end`, `paid`, `deleted`, `kuota_free`, `sha`) VALUES
	(31, 'Test Rubah Nama Grup', 5, 3, '2017-08-22 15:08:42', '0000-00-00 00:00:00', 0, 'Y', 0, 'cf61dc5c5faae5e6f29325daf6e3336144c55c57'),
	(32, 'Test Grup', 5, 5, '2017-08-22 15:09:21', '0000-00-00 00:00:00', 0, 'Y', 0, '82447d5dd3769523ba2d73191aa4b3d02acd27b5'),
	(33, 'Test Grup', 5, 5, '2017-08-22 15:09:22', '0000-00-00 00:00:00', 0, 'N', 0, 'a70be80fa74f9d214a1da421dbe12a41433eeba0'),
	(34, 'Test Grup', 5, 5, '2017-08-22 15:10:58', '0000-00-00 00:00:00', 0, 'Y', 0, '3c661c63f0fbe935c1d798e34c7567ec27b96765'),
	(42, 'New Jamaah', 9, 5, '2017-08-22 21:42:58', '0000-00-00 00:00:00', 0, 'N', 0, 'a9020b6d60f26b6b26bcf4bc7364b259ad1ce8e8'),
	(49, 'New Jamaah', 5, 3, '2017-08-22 22:44:32', '0000-00-00 00:00:00', 0, 'N', 0, 'a739f269fa8229912712e437d649e28afe344fc9'),
	(51, 'New Jamaah', 2, 16, '2017-08-22 22:47:04', '0000-00-00 00:00:00', 0, 'N', 0, 'e447c8ff7ab2eb30c2887bc012bac4552457220e'),
	(52, 'New Jamaah', 1, 16, '2017-08-22 22:48:17', '0000-00-00 00:00:00', 0, 'N', 0, '95e9d7a1eb53a013085f13ce4c675c47419826c8');
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
	(2, 'create_grup', '0'),
	(3, 'diskon', '0'),
	(4, 'free_kuota', '2');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table trackjamaah.m_user: ~8 rows (approximately)
/*!40000 ALTER TABLE `m_user` DISABLE KEYS */;
INSERT INTO `m_user` (`id`, `nama`, `alamat`, `no_telp`, `email`, `password`, `image`, `date_add`, `date_modified`, `key`, `referral`, `confirm`, `sha`) VALUES
	(1, 'Muhammad Handharbeni', 'Malang', '081556617741', 'mhandharbeni@gmail.com', '123', 'e12e', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', 'Y', 'dc98d75d5e4df991183cfee64a59cfab8360b4b8'),
	(2, 'Vivi Atika Unnisyah', 'Malang', '085712312333', 'email@email.emails', '123', 'http://enadcity.org/enadcity/wp-content/uploads/2017/02/profile-pictures.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', 'Y', '08129386cec0e68b26122cdf66276d68b26cc2b8'),
	(5, 'test', 'test', '123', 'test', 'test', 'http://enadcity.org/enadcity/wp-content/uploads/2017/02/profile-pictures.png', '2017-08-22 14:54:57', '0000-00-00 00:00:00', '60a1142bcc22ee6ce341853adf2160087f7c5651', '', 'Y', 'a9e2c5c4df03792b8cf40fc1146de347cddd2252'),
	(9, 'test21465', 'test', '081556617741123', 'test@sdg', 'test', 'http://enadcity.org/enadcity/wp-content/uploads/2017/02/profile-pictures.png', '2017-08-22 21:00:12', '2017-08-22 21:10:19', 'b542956d4f91a48f6b057b8bd9ba726e086db402', '8a135', 'Y', '5a7c1ec986b0570aaa72c48d4a8aadb0ead5e6b7'),
	(10, 'test21465s', 'test', '081556617741123', 'test@sdg', 'test', 'http://enadcity.org/enadcity/wp-content/uploads/2017/02/profile-pictures.png', '2017-08-22 21:21:44', '2017-08-22 21:25:45', 'a97276da5af7794ad38bc96d9a8a062184abc24d', 'a9c34', 'Y', '3f6e0f147b1f6cb808fcbe4940fa43ebbb264593'),
	(11, 'test21465', 'test', '081556617741123', 'test@sdg', 'test', 'http://enadcity.org/enadcity/wp-content/uploads/2017/02/profile-pictures.png', '2017-08-22 21:26:01', '0000-00-00 00:00:00', '533fd69b81f2518f3a50abfac676158c7d6d0156', 'c2f72', 'N', '62cd058e256e2e344bbe1e10d125d03732ca4113'),
	(12, 'test21465', 'test', '08155661774141', 'test@sdg', 'test', 'http://enadcity.org/enadcity/wp-content/uploads/2017/02/profile-pictures.png', '2017-08-22 21:26:20', '2017-08-22 21:27:36', 'e100c6b20687311cf6e4f19824960f964e15f830', 'e7c68', 'Y', 'cb1a86d715419aaebe1921a46e639f054978be86'),
	(13, 'test21465', 'test', '081556617741411', 'test@sdgs', 'test', 'http://enadcity.org/enadcity/wp-content/uploads/2017/02/profile-pictures.png', '2017-08-22 21:34:37', '0000-00-00 00:00:00', 'fabdcd468a110d84e637639818b4c2f49f62dc78', '8b76b', 'N', '8705a2b4bebeeb4b9ca3313738fdb1fe6369fe6a');
/*!40000 ALTER TABLE `m_user` ENABLE KEYS */;

-- Dumping structure for table trackjamaah.t_grup
CREATE TABLE IF NOT EXISTS `t_grup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_grup` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `type_user` enum('Leader','Member') NOT NULL DEFAULT 'Member',
  `deleted` enum('Y','N') NOT NULL DEFAULT 'N',
  `paid` enum('0','1') NOT NULL DEFAULT '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- Dumping data for table trackjamaah.t_grup: ~11 rows (approximately)
/*!40000 ALTER TABLE `t_grup` DISABLE KEYS */;
INSERT INTO `t_grup` (`id`, `id_grup`, `id_user`, `type_user`, `deleted`, `paid`, `masa_aktif`, `date_add`, `date_end`, `confirmation`, `sha`) VALUES
	(29, 31, 5, 'Leader', 'N', '0', 5, '2017-08-22 15:08:42', '0000-00-00 00:00:00', 'Y', '693a658ecaae549204c0a9489ac261e5cd2db095'),
	(30, 32, 5, 'Leader', 'N', '0', 5, '2017-08-22 15:09:21', '0000-00-00 00:00:00', 'Y', '537e8aab3ffe80321f44eeecd1cdc8725f584bf8'),
	(31, 33, 5, 'Leader', 'N', '0', 5, '2017-08-22 15:09:22', '0000-00-00 00:00:00', 'Y', '606dece46e22547ae2d6bfd7c7292917c34e3be6'),
	(32, 34, 5, 'Leader', 'N', '0', 5, '2017-08-22 15:10:58', '0000-00-00 00:00:00', 'Y', '8d66c6a1fc8fafdae0a001cdd3cca53004fef5d7'),
	(33, 34, 2, 'Member', 'N', '0', 0, '2017-08-22 20:14:24', '0000-00-00 00:00:00', 'N', '234557193ba95657028957cf41751c8911ac3b7f'),
	(34, 33, 1, 'Member', 'N', '0', 0, '2017-08-22 20:59:57', '0000-00-00 00:00:00', 'N', '71bb76143c3979d349bfb447882a0927446c9a7a'),
	(35, 33, 9, 'Member', 'N', '0', 0, '2017-08-22 21:00:26', '0000-00-00 00:00:00', 'N', '23ef20d5eaf62b382315f54d276718d8af0c7e3a'),
	(38, 42, 9, 'Leader', 'N', '', 5, '2017-08-22 21:42:58', '0000-00-00 00:00:00', 'Y', '9a6947e2827d4460cc9ed282b3b88582ba0f7c57'),
	(39, 49, 5, 'Leader', 'N', '', 0, '2017-08-22 22:44:32', '0000-00-00 00:00:00', 'N', '5886539d79d1f03b00e80cebd05ac2521d01580f'),
	(40, 51, 2, 'Leader', 'N', '', 16, '2017-08-22 22:47:04', '0000-00-00 00:00:00', 'N', 'b0bb33cace44c8150b18d66f3f11a28d6f1da259'),
	(41, 52, 1, 'Leader', 'N', '', 16, '2017-08-22 22:48:17', '0000-00-00 00:00:00', 'Y', '692c98fdba1a251587286cb71ef511dd6ebf8769');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table trackjamaah.t_tracking: ~6 rows (approximately)
/*!40000 ALTER TABLE `t_tracking` DISABLE KEYS */;
INSERT INTO `t_tracking` (`id`, `id_user`, `latitude`, `longitude`, `date_add`, `date_modified`, `sha`) VALUES
	(3, 5, '456', '456qw', '2017-08-22 14:54:57', '2017-08-22 15:46:06', '421d03c45e3947b91331e5eefb0e14237f3fa626'),
	(7, 9, '123', '123', '2017-08-22 21:00:12', '0000-00-00 00:00:00', 'b85a0ad5f36ceddce804b8614fbc2adacfa0d962'),
	(8, 10, '123', '123', '2017-08-22 21:21:44', '0000-00-00 00:00:00', 'e91ded7aa637125ed65140625e42d2b57f34355b'),
	(9, 11, '123', '123', '2017-08-22 21:26:01', '0000-00-00 00:00:00', 'ab84e3fc8322e0a21f8640478f5140d46f24e928'),
	(10, 12, '123', '123', '2017-08-22 21:26:20', '0000-00-00 00:00:00', '83822da63daa116c03029224124547dc78b709a0'),
	(11, 13, '123', '123', '2017-08-22 21:34:37', '0000-00-00 00:00:00', '83b71cd496eeb1f8bd46cf5b30abcaa92b7d9fad');
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
	SET @id = NEW.id;
	SET @namagrup = NEW.nama_grup;
	SET @iduser = NEW.id_user;
	SET @masaaktif = NEW.masa_aktif;
	SET @date_add = NEW.date_add;
	SET @date_end = NEW.date_end;
	SET @paid = NEW.paid;
	SET @deleted = NEW.deleted;
	SET @newString = CONCAT("-", @id, @namagrup, @iduser, @masaaktif, @date_add, @date_end, @paid, @deleted);
	SET @kuotafree = 5;
	SET NEW.date_add = NOW();
	SET NEW.sha = SHA1(@newString);
	SET NEW.kuota_free = 5;
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

-- Dumping structure for trigger trackjamaah.t_grup_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `t_grup_insert` BEFORE INSERT ON `t_grup` FOR EACH ROW BEGIN
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

	SET @kuota = (SELECT kuota_free FROM m_grup WHERE id = @idgrup);
	IF(@kuota <> 0)THEN
		SET NEW.paid = 1;
		SET @tempKuota = @kuota - 1;
		UPDATE m_grup SET kuota_free = @tempKuota WHERE id = @idgrup;
	ELSE
		SET NEW.paid = 0;
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
