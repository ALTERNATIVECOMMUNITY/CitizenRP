-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.5.5-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para essentialmode
CREATE DATABASE IF NOT EXISTS `essentialmode` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `essentialmode`;

-- Copiando estrutura para tabela essentialmode.vehicles
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `stock` int(11) DEFAULT 0,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela essentialmode.vehicles: ~225 rows (aproximadamente)
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT IGNORE INTO `vehicles` (`name`, `model`, `price`, `category`, `stock`) VALUES
	('Adder', 'adder', 200000, 'super', 2),
	('Akuma', 'akuma', 15000, 'motorcycles', 1),
	('Alpha', 'alpha', 100000, 'sports', 2),
	('Ardent', 'ardent', 50000, 'sportsclassics', 1),
	('Asea', 'asea', 10000, 'sedans', 1),
	('Asterope', 'asterope', 30000, 'sedans', 0),
	('Autarch', 'autarch', 1000000, 'super', 2),
	('Avarus', 'avarus', 19000, 'motorcycles', 0),
	('Baller', 'baller', 300000, 'suvs', 2),
	('Baller Super', 'baller4', 350000, 'suvs', 2),
	('Banshee', 'banshee', 90000, 'sports', 2),
	('Banshee 900R', 'banshee2', 300000, 'super', 0),
	('Bati', 'bati', 50000, 'motorcycles', 0),
	('Bestia GTS', 'bestiagts', 78000, 'sports', 0),
	('Bf Injection', 'bfinjection', 15000, 'offroad', 0),
	('Bifta', 'bifta', 18000, 'offroad', 1),
	('Bison', 'bison', 250000, 'vans', 2),
	('BJXL', 'bjxl', 150000, 'suvs', 2),
	('Blade', 'blade', 50000, 'muscle', 2),
	('Blista', 'blista', 50000, 'compacts', 2),
	('Blista S', 'blista2', 60000, 'sports', 2),
	('Blista GT', 'blista3', 65000, 'sports', 2),
	('Bobcatxl', 'bobcatxl', 300000, 'vans', 2),
	('Brawler', 'brawler', 150000, 'offroad', 1),
	('Brioso', 'brioso', 62000, 'compacts', 2),
	('Btype', 'btype', 90000, 'sportsclassics', 1),
	('Btype SC', 'btype2', 95000, 'sportsclassics', 1),
	('Btype S', 'btype3', 99000, 'sportsclassics', 2),
	('Buccaneer', 'buccaneer', 155000, 'muscle', 0),
	('Buffalo', 'buffalo', 68000, 'sports', 0),
	('Buffalo GT', 'buffalo3', 70000, 'sports', 2),
	('Bullet', 'bullet', 95000, 'super', 1),
	('Camper', 'camper', 60000, 'vans', 2),
	('Carboni', 'carbonizzare', 195000, 'sports', 2),
	('Carbonr S', 'carbonrs', 31200, 'motorcycles', 1),
	('Casco', 'casco', 42000, 'sportsclassics', 0),
	('Cavalcade', 'cavalcade', 92000, 'suvs', 2),
	('Cheetah', 'cheetah', 2500000, 'super', 2),
	('Cheetah SC', 'cheetah2', 2800000, 'sportsclassics', 2),
	('Chino', 'chino', 70000, 'muscle', 0),
	('Chino S', 'chino2', 75000, 'muscle', 2),
	('Cliff hanger', 'cliffhanger', 15800, 'motorcycles', 2),
	('COG55', 'cog55', 210000, 'sedans', 0),
	('Cogcabrio', 'cogcabrio', 70000, 'coupes', 2),
	('Cognoscenti', 'cognoscenti', 200000, 'sedans', 2),
	('Comet SX', 'comet2', 120000, 'sports', 2),
	('Contender', 'contender', 300000, 'suvs', 2),
	('Coquette', 'coquette', 75000, 'sports', 2),
	('Coquette SC', 'coquette2', 74000, 'sportsclassics', 0),
	('Coquette GM', 'coquette3', 80000, 'muscle', 2),
	('Cyclone', 'cyclone', 3000000, 'super', 2),
	('Daemon', 'daemon', 18100, 'motorcycles', 2),
	('Defiler', 'defiler', 25000, 'motorcycles', 2),
	('Diablous', 'diablous', 45000, 'motorcycles', 1),
	('Diablous S', 'Diablous2', 50000, 'motorcycles', 1),
	('Dilettante', 'dilettante', 40000, 'compacts', 1),
	('Dominator', 'dominator', 55000, 'muscle', 2),
	('Double', 'double', 35000, 'motorcycles', 1),
	('Dubsta', 'dubsta', 95000, 'suvs', NULL),
	('Dukes', 'dukes', 67000, 'muscle', NULL),
	('Elegy', 'elegy', 300000, 'sports', 2),
	('Elegy S', 'elegy2', 330000, 'sports', NULL),
	('Emperor', 'emperor', 8000, 'sedans', 2),
	('Entity XF', 'entityxf', 300000, 'super', NULL),
	('Ess key', 'esskey', 14000, 'motorcycles', NULL),
	('Exemplar', 'exemplar', 90000, 'coupes', NULL),
	('F620', 'f620', 300000, 'coupes', NULL),
	('Faction', 'faction', 110000, 'muscle', NULL),
	('Faggio S', 'faggio', 5500, 'motorcycles', NULL),
	('FCR', 'fcr', 13500, 'motorcycles', NULL),
	('FCR S', 'fcr2', 19600, 'motorcycles', NULL),
	('Felon', 'felon', 100000, 'coupes', NULL),
	('Felon S', 'felon2', 150000, 'coupes', NULL),
	('Feltzer S', 'feltzer2', 113100, 'sports', NULL),
	('Feltzer SC', 'feltzer3', 80000, 'sportsclassics', NULL),
	('FMJ', 'fmj', 330000, 'super', NULL),
	('FQ2', 'fq2', 253000, 'suvs', NULL),
	('Fugitive', 'fugitive', 66000, 'sedans', NULL),
	('Furore GT', 'furoregt', 100000, 'sports', NULL),
	('Fusilade', 'fusilade', 66000, 'sports', NULL),
	('Futo', 'futo', 75000, 'sports', NULL),
	('Gargoyle', 'gargoyle', 34000, 'motorcycles', NULL),
	('Gauntlet', 'gauntlet', 80000, 'muscle', NULL),
	('Glendale', 'glendale', 150000, 'sedans', NULL),
	('GPL', 'gp1', 300000, 'super', NULL),
	('Granger', 'granger', 120000, 'suvs', NULL),
	('Gresley', 'gresley', 250000, 'suvs', NULL),
	('GT500', 'gt500', 130000, 'sportsclassics', NULL),
	('Habanero', 'habanero', 62000, 'suvs', NULL),
	('Hakuchou', 'hakuchou', 150000, 'motorcycles', NULL),
	('Hermes', 'hermes', 53000, 'muscle', NULL),
	('Hexer', 'hexer', 19500, 'motorcycles', NULL),
	('Hotknife', 'hotknife', 50000, 'muscle', NULL),
	('Huntley', 'huntley', 250000, 'suvs', NULL),
	('Infernus', 'infernus', 130000, 'super', NULL),
	('Infernus SC', 'infernus2', 70000, 'sportsclassics', NULL),
	('Ingot', 'ingot', 45000, 'sedans', NULL),
	('Innovation', 'innovation', 32000, 'motorcycles', NULL),
	('Intruder', 'intruder', 53000, 'sedans', NULL),
	('Issi S', 'issi2', 38500, 'compacts', NULL),
	('Italigtb', 'italigtb', 500000, 'super', NULL),
	('Jackal', 'jackal', 92000, 'coupes', NULL),
	('Jester', 'jester', 400000, 'sports', NULL),
	('Journey', 'journey', 80000, 'vans', NULL),
	('Khamelion', 'khamelion', 83000, 'sports', NULL),
	('Kuruma', 'kuruma', 98000, 'sports', NULL),
	('Lands Talker', 'landstalker', 85000, 'suvs', NULL),
	('LE7B', 'le7b', 450000, 'super', NULL),
	('Lectro', 'lectro', 40000, 'motorcycles', NULL),
	('Lynx S', 'lynx2', 173000, 'sports', NULL),
	('Mamba', 'mamba', 90000, 'sportsclassics', NULL),
	('Manana', 'manana', 66000, 'sportsclassics', NULL),
	('Massacro', 'massacro', 88000, 'sports', NULL),
	('Mesa S', 'mesa', 98000, 'suvs', NULL),
	('Mesa OR', 'mesa3', 75000, 'offroad', NULL),
	('Minivan', 'minivan', 100000, 'vans', NULL),
	('Minivan2', 'minivan2', 130000, 'vans', NULL),
	('Monroe', 'monroe', 84000, 'sportsclassics', NULL),
	('Moon Beam', 'moonbeam', 150000, 'muscle', NULL),
	('Neon', 'neon', 150000, 'sports', NULL),
	('Nero', 'nero', 2500000, 'super', NULL),
	('Nightblade', 'nightblade', 25000, 'motorcycles', NULL),
	('Night Shade', 'nightshade', 72300, 'muscle', NULL),
	('Ninef', 'ninef', 63000, 'sports', NULL),
	('Omnis', 'omnis', 68000, 'sports', NULL),
	('Oracle S', 'oracle', 82000, 'coupes', NULL),
	('Oracle', 'oracle2', 87000, 'coupes', NULL),
	('Osiris', 'osiris', 300000, 'super', NULL),
	('Panto', 'panto', 22000, 'compacts', NULL),
	('Pariah', 'pariah', 72200, 'sports', NULL),
	('Patriot', 'patriot', 70000, 'suvs', NULL),
	('PCJ', 'pcj', 13500, 'motorcycles', NULL),
	('Penetrator', 'penetrator', 380000, 'super', NULL),
	('Penumbra', 'penumbra', 66500, 'sports', NULL),
	('Peyote', 'peyote', 86500, 'sportsclassics', NULL),
	('Pfister', 'pfister811', 1304000, 'super', NULL),
	('Picador', 'picador', 45000, 'muscle', NULL),
	('Pigalle', 'pigalle', 20000, 'sportsclassics', NULL),
	('Prairie', 'prairie', 430000, 'compacts', NULL),
	('Premier', 'premier', 35000, 'sedans', NULL),
	('Primo', 'primo', 100000, 'sedans', NULL),
	('Prototipo', 'prototipo', 3000000, 'super', NULL),
	('Radi', 'radi', 74000, 'suvs', NULL),
	('Raiden', 'raiden', 68800, 'sports', NULL),
	('Rancher XL', 'rancherxl', 79000, 'offroad', NULL),
	('Rapid GT', 'rapidgt', 35000, 'sports', NULL),
	('Rapidgt Turbo', 'rapidgt2', 82500, 'sports', NULL),
	('Rapid GTSC', 'rapidgt3', 38000, 'sportsclassics', NULL),
	('raptor', 'raptor', 84000, 'sports', NULL),
	('Ratloader MS', 'ratloader2', 18000, 'muscle', NULL),
	('Reaper', 'reaper', 300000, 'super', NULL),
	('Rebel OR', 'rebel2', 20000, 'offroad', NULL),
	('Regina', 'regina', 22500, 'sedans', NULL),
	('Retinue', 'retinue', 78000, 'sportsclassics', NULL),
	('Revolter', 'revolter', 200000, 'sports', NULL),
	('Rhapsody', 'rhapsody', 30000, 'compacts', NULL),
	('Rocoto', 'rocoto', 110000, 'suvs', NULL),
	('Ruffian', 'ruffian', 10000, 'motorcycles', NULL),
	('Ruiner', 'ruiner', 54000, 'muscle', NULL),
	('Rumpo VN', 'rumpo3', 250000, 'vans', NULL),
	('ruston', 'ruston', 93200, 'sports', NULL),
	('Sabre GT', 'sabregt', 87000, 'muscle', NULL),
	('Sadler', 'sadler', 169000, 'suvs', NULL),
	('Sanchez', 'sanchez2', 15000, 'motorcycles', NULL),
	('Savestra', 'savestra', 85000, 'sportsclassics', NULL),
	('SCL', 'sc1', 100000, 'super', NULL),
	('Schafter SD', 'schafter2', 45000, 'sedans', NULL),
	('Schafter ST', 'schafter3', 40000, 'sports', NULL),
	('Schwarzer', 'schwarzer', 65350, 'sports', NULL),
	('Seminole', 'seminole', 97000, 'suvs', NULL),
	('sentinel', 'sentinel', 100000, 'coupes', NULL),
	('Serrano', 'serrano', 78000, 'suvs', NULL),
	('Seven 70', 'seven70', 93000, 'sports', NULL),
	('Sheava', 'sheava', 250000, 'super', NULL),
	('Slam Van', 'slamvan', 80000, 'muscle', NULL),
	('Specter', 'specter', 88750, 'sports', NULL),
	('Speedo', 'speedo', 230000, 'vans', NULL),
	('stalion', 'stalion', 42000, 'muscle', NULL),
	('Stanier', 'stanier', 40000, 'sedans', NULL),
	('Stinger', 'stinger', 76000, 'sportsclassics', NULL),
	('Stratum', 'stratum', 63000, 'sedans', NULL),
	('Streiter', 'streiter', 120000, 'sports', NULL),
	('Stretch', 'stretch', 1300000, 'sedans', NULL),
	('Stromberg', 'stromberg', 77000, 'sportsclassics', NULL),
	('Sultan', 'sultan', 54642, 'sports', NULL),
	('sultanrs', 'sultanrs', 95000, 'super', NULL),
	('Superd', 'superd', 42000, 'sedans', NULL),
	('Surano', 'surano', 71350, 'sports', NULL),
	('Surge', 'surge', 30000, 'sedans', NULL),
	('T20', 't20', 2800000, 'super', NULL),
	('Tailgater', 'tailgater', 86000, 'sedans', NULL),
	('Tampa GT', 'tampa', 90000, 'muscle', NULL),
	('Tampa ST', 'tampa2', 43500, 'sports', NULL),
	('Tempesta', 'tempesta', 900000, 'super', NULL),
	('Torero', 'torero', 79000, 'sportsclassics', NULL),
	('Tornado', 'tornado', 68000, 'sportsclassics', NULL),
	('Tropos', 'tropos', 95000, 'sports', NULL),
	('Turismo SC', 'turismo2', 1200000, 'sportsclassics', NULL),
	('Turismor', 'turismor', 2200000, 'super', NULL),
	('Tyrus', 'tyrus', 2300000, 'super', NULL),
	('Vacca', 'vacca', 800000, 'super', NULL),
	('Vader', 'vader', 11700, 'motorcycles', NULL),
	('Vagner', 'vagner', 3500000, 'super', NULL),
	('Verlierer ST', 'verlierer2', 96000, 'sports', NULL),
	('Vigero', 'vigero', 78000, 'muscle', NULL),
	('Virgo', 'virgo', 75000, 'muscle', NULL),
	('Viseris', 'viseris', 200000, 'sportsclassics', NULL),
	('Visione', 'visione', 2250000, 'super', NULL),
	('Voltic', 'voltic', 100000, 'super', NULL),
	('Voodoo', 'voodoo', 150000, 'muscle', NULL),
	('Vortex', 'vortex', 13356, 'motorcycles', NULL),
	('Warrener', 'warrener', 64000, 'sedans', NULL),
	('Washington', 'washington', 25000, 'sedans', NULL),
	('Windsor', 'windsor', 500000, 'coupes', NULL),
	('windsor S', 'windsor2', 550000, 'coupes', NULL),
	('Wolfsbane', 'wolfsbane', 27000, 'motorcycles', NULL),
	('XA21', 'xa21', 2375000, 'super', NULL),
	('XLS', 'xls', 253000, 'suvs', NULL),
	('Yosemite', 'yosemite', 475000, 'muscle', NULL),
	('Youga', 'Youga', 24000, 'vans', NULL),
	('Youga VN', 'youga2', 300000, 'vans', NULL),
	('Zentorno', 'zentorno', 725000, 'super', NULL),
	('zion', 'zion', 75000, 'coupes', NULL),
	('zion S', 'zion2', 80000, 'coupes', NULL),
	('Ztype', 'ztype', 200000, 'sportsclassics', NULL);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
