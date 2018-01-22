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

-- Dumping data for table musicdb.album: ~5 rows (approximately)
DELETE FROM `album`;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` (`album_title`, `publisher`, `release_date`) VALUES
	('A Night at the Opera', 'Sarm', '1075-11-21'),
	('Jazz', 'Mountain Studios', '1078-11-10'),
	('News of the World', 'Wessex Studios', '1077-10-28'),
	('Sheer Heart Attack', 'AIR', '1974-11-08'),
	('The Red Hot Chilli Peppers', 'EMI', '1984-08-10');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;

-- Dumping data for table musicdb.artist: ~14 rows (approximately)
DELETE FROM `artist`;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` (`artist_name`, `debut`) VALUES
	('Blues Brothers', '1976-00-00'),
	('Desperados', '2010-00-00'),
	('Freddie Mercury', '1969-00-00'),
	('Georgopoulos Anastasis', '2010-00-00'),
	('John Lennon', '1957-00-00'),
	('Los Mosquitos', '2012-00-00'),
	('Mpokalidis Anastasis', '2010-00-00'),
	('Queen', '1970-00-00'),
	('Red Hot Chili Peppers', '1983-00-00'),
	('Skerlidis Sotiris', '2010-00-00'),
	('Skerlidou Sofia', '2010-00-00'),
	('Soski', '2014-00-00'),
	('Tsiolakoglou Nikos', '2010-00-00'),
	('Walk off the Earth', '2006-00-00');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;

-- Dumping data for table musicdb.band: ~7 rows (approximately)
DELETE FROM `band`;
/*!40000 ALTER TABLE `band` DISABLE KEYS */;
INSERT INTO `band` (`artist_name`, `logo`, `founding_date`, `split_date`) VALUES
	('Blues Brothers', NULL, '1976-00-00', NULL),
	('Red Hot Chili Peppers', _binary 0x43006F006E006E00650063007400650064003A002000300031003A0032003300200068000000, '1983-00-00', NULL),
	('Walk off the Earth', _binary 0x350036002000620079007400650073002E00000048006500690064006900530051004C005C00000000000000000000000000000000000000, '2006-00-00', NULL),
	('Queen', _binary 0x436F6E6E65637465640065003A002000300031003A00320035000000, '1970-00-00', NULL),
	('Desperados', NULL, '2010-00-00', '2012-00-00'),
	('Los Mosquitos', NULL, '2012-00-00', '2014-00-00'),
	('Soski', NULL, '2014-00-00', NULL);
/*!40000 ALTER TABLE `band` ENABLE KEYS */;

-- Dumping data for table musicdb.genre: ~10 rows (approximately)
DELETE FROM `genre`;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` (`artist_name`, `genre`) VALUES
	('Red Hot Chili Peppers', 'funk_rock'),
	('Walk off the Earth', 'alternative_rock'),
	('Red Hot Chili Peppers', 'alternative_rock'),
	('Blues Brothers', 'blues'),
	('Queen', 'rock'),
	('Desperados', 'pop_rock'),
	('Los Mosquitos', 'alternative_rock'),
	('Soski', 'pop'),
	('John Lennon', 'soft_rock'),
	('Freddie Mercury', 'alternative_rock');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;

-- Dumping data for table musicdb.has_created: ~0 rows (approximately)
DELETE FROM `has_created`;
/*!40000 ALTER TABLE `has_created` DISABLE KEYS */;
INSERT INTO `has_created` (`artist_name`, `song_title`) VALUES
	('Queen', 'Bohemian Rapsody'),
	('Queen', 'We Will Rock You'),
	('Red Hot Chili Peppers', 'Buckle Down'),
	('Queen', 'We Are the Champions'),
	('Red Hot Chili Peppers', 'Baby Appeal');
/*!40000 ALTER TABLE `has_created` ENABLE KEYS */;

-- Dumping data for table musicdb.included_in: ~5 rows (approximately)
DELETE FROM `included_in`;
/*!40000 ALTER TABLE `included_in` DISABLE KEYS */;
INSERT INTO `included_in` (`album_title`, `publisher`, `song_title`, `song_order`) VALUES
	('News of the World', 'Wessex Studios', 'We Will Rock You', 1),
	('News of the World', 'Wessex Studios', 'We Are the Champions', 2),
	('The Red Hot Chilli Peppers', 'EMI', 'Baby Appeal', 1),
	('The Red Hot Chilli Peppers', 'EMI', 'Green Heaven', 2),
	('The Red Hot Chilli Peppers', 'EMI', 'Buckle Down', 6);
/*!40000 ALTER TABLE `included_in` ENABLE KEYS */;

-- Dumping data for table musicdb.is_available: ~5 rows (approximately)
DELETE FROM `is_available`;
/*!40000 ALTER TABLE `is_available` DISABLE KEYS */;
INSERT INTO `is_available` (`store_name`, `quantity`, `price`, `album_title`, `publisher`, `street`, `number`) VALUES
	('Stereo disc', 110, 19.99, 'The Red Hot Chilli Peppers', 'EMI', 'Aristotelous', 4),
	('Studio 56', 24, 39.99, 'Sheer Heart Attack', 'AIR', 'Dimitriou Gounari', 46),
	('Lotos', 560, 16, 'Jazz', 'Mountain Studios', 'Skra', 7),
	('PUBLIC', 1000, 149.99, 'A Night at the Opera', 'Sarm', 'Tsimiski', 24),
	('PUBLIC', 90, 149.99, 'News of the World', 'Wessex Studios', 'Thessalonikis-Moudanion', 10);
/*!40000 ALTER TABLE `is_available` ENABLE KEYS */;

-- Dumping data for table musicdb.musician: ~7 rows (approximately)
DELETE FROM `musician`;
/*!40000 ALTER TABLE `musician` DISABLE KEYS */;
INSERT INTO `musician` (`artist_name`, `birthday`, `nationality`) VALUES
	('John Lennon', NULL, 'GB'),
	('Freddie Mercury', NULL, 'GB'),
	('Georgopoulos Anastasis', NULL, 'GR'),
	('Tsiolakoglou Nikos', NULL, 'GR'),
	('Skerlidis Sotiris', NULL, 'GR'),
	('Mpokalidis Anastasis', NULL, 'GR'),
	('Skerlidou Sofia', NULL, 'GR');
/*!40000 ALTER TABLE `musician` ENABLE KEYS */;

-- Dumping data for table musicdb.role: ~12 rows (approximately)
DELETE FROM `role`;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`musician_name`, `band_name`, `role`) VALUES
	('Freddie Mercury', 'Queen', 'lead_vocal'),
	('Georgopoulos Anastasis', 'Desperados', 'lead_vocal'),
	('Georgopoulos Anastasis', 'Desperados', 'piano'),
	('Georgopoulos Anastasis', 'Los Mosquitos', 'lead_vocal'),
	('Tsiolakoglou Nikos', 'Desperados', 'guitar'),
	('Skerlidis Sotiris', 'Desperados', 'lead_guitar'),
	('Skerlidis Sotiris', 'Desperados', 'vocal'),
	('Skerlidis Sotiris', 'Soski', 'vocal'),
	('Skerlidis Sotiris', 'Soski', 'lead_guitar'),
	('Mpokalidis Anastasis', 'Desperados', 'guitar'),
	('Mpokalidis Anastasis', 'Los Mosquitos', 'guitar'),
	('Skerlidou Sofia', 'Soski', 'lead_vocal');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping data for table musicdb.song: ~7 rows (approximately)
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

-- Dumping data for table musicdb.store: ~5 rows (approximately)
DELETE FROM `store`;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` (`store_name`, `phone`, `street`, `number`) VALUES
	('Lotos', 2310260776, 'Skra', 7),
	('PUBLIC', 2310255588, 'Thessalonikis-Moudanion', 10),
	('PUBLIC', 2310266666, 'Tsimiski', 24),
	('Stereo disc', 2310262912, 'Aristotelous', 4),
	('Studio 56', 2310279688, 'Dimitriou Gounari', 46);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;

-- Dumping data for table musicdb.takes_part_in: ~9 rows (approximately)
DELETE FROM `takes_part_in`;
/*!40000 ALTER TABLE `takes_part_in` DISABLE KEYS */;
INSERT INTO `takes_part_in` (`band_name`, `musician_name`, `join_date`, `breakaway_date`) VALUES
	('Queen', 'Freddie Mercury', '1970-00-00', NULL),
	('Desperados', 'Georgopoulos Anastasis', NULL, NULL),
	('Los Mosquitos', 'Georgopoulos Anastasis', NULL, NULL),
	('Desperados', 'Tsiolakoglou Nikos', NULL, NULL),
	('Desperados', 'Skerlidis Sotiris', NULL, NULL),
	('Desperados', 'Mpokalidis Anastasis', NULL, NULL),
	('Los Mosquitos', 'Mpokalidis Anastasis', NULL, NULL),
	('Soski', 'Skerlidis Sotiris', NULL, NULL),
	('Soski', 'Skerlidou Sofia', NULL, NULL);
/*!40000 ALTER TABLE `takes_part_in` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
