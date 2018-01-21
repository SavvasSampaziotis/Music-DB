-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.2.12-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping data for table musicdb.album: ~0 rows (approximately)
DELETE FROM `album`;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` (`album_title`, `publisher`, `release_date`) VALUES
	('A Night at the Opera', 'Sarm', '1075-11-21'),
	('Jazz', 'Mountain Studios', '1078-11-10'),
	('News of the World', 'Wessex Studios', '1077-10-28'),
	('Sheer Heart Attack', 'AIR', '1974-11-08'),
	('The Red Hot Chilli Peppers', 'EMI', '1984-08-10');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;

-- Dumping data for table musicdb.artist: ~0 rows (approximately)
DELETE FROM `artist`;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;

-- Dumping data for table musicdb.band: ~0 rows (approximately)
DELETE FROM `band`;
/*!40000 ALTER TABLE `band` DISABLE KEYS */;
/*!40000 ALTER TABLE `band` ENABLE KEYS */;

-- Dumping data for table musicdb.genre: ~0 rows (approximately)
DELETE FROM `genre`;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;

-- Dumping data for table musicdb.has_created: ~0 rows (approximately)
DELETE FROM `has_created`;
/*!40000 ALTER TABLE `has_created` DISABLE KEYS */;
/*!40000 ALTER TABLE `has_created` ENABLE KEYS */;

-- Dumping data for table musicdb.included_in: ~0 rows (approximately)
DELETE FROM `included_in`;
/*!40000 ALTER TABLE `included_in` DISABLE KEYS */;
INSERT INTO `included_in` (`album_title`, `publisher`, `song_title`, `song_order`) VALUES
	('News of the World', 'Wessex Studios', 'We Will Rock You', 1),
	('News of the World', 'Wessex Studios', 'We Are the Champions', 2),
	('The Red Hot Chilli Peppers', 'EMI', 'Baby Appeal', 1),
	('The Red Hot Chilli Peppers', 'EMI', 'Green Heaven', 2),
	('The Red Hot Chilli Peppers', 'EMI', 'Buckle Down', 6);
/*!40000 ALTER TABLE `included_in` ENABLE KEYS */;

-- Dumping data for table musicdb.is_available: ~0 rows (approximately)
DELETE FROM `is_available`;
/*!40000 ALTER TABLE `is_available` DISABLE KEYS */;
INSERT INTO `is_available` (`store_name`, `quantity`, `price`, `album_title`, `publisher`, `street`, `number`) VALUES
	('Stereo disc', 110, 19.99, 'The Red Hot Chilli Peppers', 'EMI', 'Aristotelous', 4),
	('Studio 56', 24, 39.99, 'Sheer Heart Attack', 'AIR', 'Dimitriou Gounari', 46),
	('Lotos', 560, 16, 'Jazz', 'Mountain Studios', 'Skra', 7),
	('PUBLIC', 1000, 149.99, 'A Night at the Opera', 'Sarm', 'Tsimiski', 24),
	('PUBLIC', 90, 149.99, 'News of the World', 'Wessex Studios', 'Thessalonikis-Moudanion', 10);
/*!40000 ALTER TABLE `is_available` ENABLE KEYS */;

-- Dumping data for table musicdb.musician: ~0 rows (approximately)
DELETE FROM `musician`;
/*!40000 ALTER TABLE `musician` DISABLE KEYS */;
/*!40000 ALTER TABLE `musician` ENABLE KEYS */;

-- Dumping data for table musicdb.role: ~0 rows (approximately)
DELETE FROM `role`;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping data for table musicdb.song: ~0 rows (approximately)
DELETE FROM `song`;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` (`song_title`, `duration`, `lyrics`) VALUES
	('Baby Appeal', '00:03:41', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
	('Bohemian Rapsody', '00:55:58', 'Is this the real life? Is this just fantasy?'),
	('Buckle Down', '00:03:24', 'Hah!'),
	('Green Heaven', NULL, 'About this planet, there is something I know'),
	('True Men Dont Kill Coyotes', '00:03:40', 'Well, I\'m gonna ride a saber tooth horse through the Hollywood hills'),
	('We Are the Champions', '00:11:00', 'We Are the ChampionsWe Are the ChampionsWe Are the ChampionsWe Are the ChampionsWe Are the ChampionsWe Are the ChampionsWe Are the ChampionsWe Are the ChampionsWe Are the ChampionsWe Are the Champions'),
	('We Will Rock You', '00:03:33', 'We Will Rock You,We Will Rock You,We Will Rock You,We Will Rock You,We Will Rock You,We Will Rock You,We Will Rock You,We Will Rock You,We Will Rock You, savvas');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;

-- Dumping data for table musicdb.store: ~0 rows (approximately)
DELETE FROM `store`;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` (`store_name`, `phone`, `street`, `number`) VALUES
	('Lotos', 2310260776, 'Skra', 7),
	('PUBLIC', 2310255588, 'Thessalonikis-Moudanion', 10),
	('PUBLIC', 2310266666, 'Tsimiski', 24),
	('Stereo disc', 2310262912, 'Aristotelous', 4),
	('Studio 56', 2310279688, 'Dimitriou Gounari', 46);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;

-- Dumping data for table musicdb.takes_part_in: ~0 rows (approximately)
DELETE FROM `takes_part_in`;
/*!40000 ALTER TABLE `takes_part_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `takes_part_in` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
