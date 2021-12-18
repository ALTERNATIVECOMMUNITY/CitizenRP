-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 11 nov. 2021 à 05:00
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `essentialmode`
--

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) ,
  `label` varchar(100) ,
  `shared` int(11) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('bag_black_money', 'Bag Black Money ', 0),
('bag_money', 'Bag Money ', 0),
('caution', 'caution', 0),
('locker', 'Locker', 0),
('society_ambulance', 'EMS', 1),
('society_brinks', 'Brinks', 1),
('society_cardealer', 'Cardealer', 1),
('society_cyber', 'cyber', 1),
('society_mechanic', 'Mechanic', 1),
('society_police', 'Police', 1),
('society_police_black_money', 'Police black money ', 1),
('society_police_money', 'Police money ', 1),
('society_redline', 'RedLine Performance', 1),
('society_sheriff', 'sheriff', 1),
('society_taxi', 'Taxi', 1),
('society_vigne', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) ,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) ,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_ambulance', 0, NULL),
(2, 'society_cardealer', 3080020, NULL),
(3, 'society_mechanic', 0, NULL),
(4, 'society_police', 0, NULL),
(5, 'society_police_black_money', 0, NULL),
(6, 'society_police_money', 0, NULL),
(7, 'society_taxi', 0, NULL),
(8, 'bag_black_money', 0, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb'),
(9, 'bag_money', 0, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb'),
(10, 'caution', 0, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb'),
(11, 'locker', 0, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb'),
(16, 'bag_black_money', 0, '884c4af8bd5eb34ed23131a068aee6536e5d04e2'),
(17, 'bag_money', 0, '884c4af8bd5eb34ed23131a068aee6536e5d04e2'),
(18, 'locker', 0, '884c4af8bd5eb34ed23131a068aee6536e5d04e2'),
(19, 'caution', 0, '884c4af8bd5eb34ed23131a068aee6536e5d04e2'),
(20, 'bag_black_money', 0, '9830bdb9130267f285d559c27ddd0a0b857cbc5d'),
(21, 'bag_money', 0, '9830bdb9130267f285d559c27ddd0a0b857cbc5d'),
(22, 'locker', 0, '9830bdb9130267f285d559c27ddd0a0b857cbc5d'),
(23, 'caution', 0, '9830bdb9130267f285d559c27ddd0a0b857cbc5d'),
(24, 'society_vigne', 1223, NULL),
(25, 'bag_black_money', 0, '32aaa2b60991920d25a84a04da9d816149a5bdf3'),
(26, 'caution', 0, '32aaa2b60991920d25a84a04da9d816149a5bdf3'),
(27, 'locker', 0, '32aaa2b60991920d25a84a04da9d816149a5bdf3'),
(28, 'bag_money', 0, '32aaa2b60991920d25a84a04da9d816149a5bdf3'),
(29, 'bag_black_money', 0, 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c'),
(30, 'bag_money', 0, 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c'),
(31, 'caution', 0, 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c'),
(32, 'locker', 0, 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c'),
(33, 'society_redline', 0, NULL),
(34, 'caution', 0, '40f9e375addccb930ff50c533f25c26aad1a5853'),
(35, 'bag_money', 0, '40f9e375addccb930ff50c533f25c26aad1a5853'),
(36, 'bag_black_money', 0, '40f9e375addccb930ff50c533f25c26aad1a5853'),
(37, 'locker', 0, '40f9e375addccb930ff50c533f25c26aad1a5853'),
(38, 'locker', 0, '5729f4e918f229acc586fe883b428095737e10f3'),
(39, 'caution', 0, '5729f4e918f229acc586fe883b428095737e10f3'),
(40, 'bag_money', 0, '5729f4e918f229acc586fe883b428095737e10f3'),
(41, 'bag_black_money', 0, '5729f4e918f229acc586fe883b428095737e10f3'),
(42, 'caution', 0, '9abff61c6a0c182237ed0d38dd42c082534d6048'),
(43, 'bag_money', 0, '9abff61c6a0c182237ed0d38dd42c082534d6048'),
(44, 'bag_black_money', 0, '9abff61c6a0c182237ed0d38dd42c082534d6048'),
(45, 'locker', 0, '9abff61c6a0c182237ed0d38dd42c082534d6048'),
(46, 'society_redline', 0, NULL),
(47, 'bag_black_money', 0, '9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67'),
(48, 'locker', 0, '9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67'),
(49, 'caution', 0, '9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67'),
(50, 'bag_money', 0, '9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67'),
(51, 'bag_black_money', 0, 'bb41a782fc32129bf8e702a7b0dfce2d93ea20a4'),
(52, 'locker', 0, 'bb41a782fc32129bf8e702a7b0dfce2d93ea20a4'),
(53, 'caution', 0, 'bb41a782fc32129bf8e702a7b0dfce2d93ea20a4'),
(54, 'bag_money', 0, 'bb41a782fc32129bf8e702a7b0dfce2d93ea20a4'),
(55, 'bag_money', 0, '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1'),
(56, 'bag_black_money', 0, '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1'),
(57, 'caution', 0, '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1'),
(58, 'locker', 0, '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1'),
(59, 'locker', 0, '2965f0ccf41ae67c01f80f3e612689e6adf8e1af'),
(60, 'caution', 0, '2965f0ccf41ae67c01f80f3e612689e6adf8e1af'),
(61, 'bag_money', 0, '2965f0ccf41ae67c01f80f3e612689e6adf8e1af'),
(62, 'bag_black_money', 0, '2965f0ccf41ae67c01f80f3e612689e6adf8e1af'),
(63, 'bag_money', 0, 'e31e742d2080ad11ef667af59ead70943bc22474'),
(64, 'bag_black_money', 0, 'e31e742d2080ad11ef667af59ead70943bc22474'),
(65, 'caution', 0, 'e31e742d2080ad11ef667af59ead70943bc22474'),
(66, 'locker', 0, 'e31e742d2080ad11ef667af59ead70943bc22474'),
(67, 'locker', 0, '2d3a563260069bbbc922cf77b6f7f1dd4ef95ca2'),
(68, 'caution', 0, '2d3a563260069bbbc922cf77b6f7f1dd4ef95ca2'),
(69, 'bag_money', 0, '2d3a563260069bbbc922cf77b6f7f1dd4ef95ca2'),
(70, 'bag_black_money', 0, '2d3a563260069bbbc922cf77b6f7f1dd4ef95ca2'),
(71, 'bag_money', 0, 'fcd8ed0d319f823b748f6f0856f1b3e0189add96'),
(72, 'bag_black_money', 0, 'fcd8ed0d319f823b748f6f0856f1b3e0189add96'),
(73, 'caution', 0, 'fcd8ed0d319f823b748f6f0856f1b3e0189add96'),
(74, 'locker', 0, 'fcd8ed0d319f823b748f6f0856f1b3e0189add96'),
(75, 'bag_black_money', 0, 'a4318d034cbbd61326d051adb5dfae7102ff12ec'),
(76, 'caution', 0, 'a4318d034cbbd61326d051adb5dfae7102ff12ec'),
(77, 'locker', 0, 'a4318d034cbbd61326d051adb5dfae7102ff12ec'),
(78, 'bag_money', 0, 'a4318d034cbbd61326d051adb5dfae7102ff12ec'),
(79, 'locker', 0, '50e51cf3495e578ed7a08a0a0ad4899820659e6d'),
(80, 'caution', 0, '50e51cf3495e578ed7a08a0a0ad4899820659e6d'),
(81, 'bag_money', 0, '50e51cf3495e578ed7a08a0a0ad4899820659e6d'),
(82, 'bag_black_money', 0, '50e51cf3495e578ed7a08a0a0ad4899820659e6d'),
(83, 'society_sheriff', 0, NULL),
(84, 'bag_black_money', 0, '3811e039cae8ed059f5349c863186988b3c1a14c'),
(85, 'bag_money', 0, '3811e039cae8ed059f5349c863186988b3c1a14c'),
(86, 'locker', 0, '3811e039cae8ed059f5349c863186988b3c1a14c'),
(87, 'caution', 0, '3811e039cae8ed059f5349c863186988b3c1a14c'),
(88, 'bag_black_money', 0, 'b875cf1e3861a7a5a19d4d65bbb59172d62f9eb1'),
(89, 'bag_money', 0, 'b875cf1e3861a7a5a19d4d65bbb59172d62f9eb1'),
(90, 'caution', 0, 'b875cf1e3861a7a5a19d4d65bbb59172d62f9eb1'),
(91, 'locker', 0, 'b875cf1e3861a7a5a19d4d65bbb59172d62f9eb1'),
(92, 'bag_money', 0, 'a7828ea51a05d65c379587b33eeaf27188f9d6fd'),
(93, 'bag_black_money', 0, 'a7828ea51a05d65c379587b33eeaf27188f9d6fd'),
(94, 'caution', 0, 'a7828ea51a05d65c379587b33eeaf27188f9d6fd'),
(95, 'locker', 0, 'a7828ea51a05d65c379587b33eeaf27188f9d6fd'),
(96, 'society_brinks', 44554, NULL),
(97, 'society_cyber', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) ,
  `label` varchar(100) ,
  `shared` int(11) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('bag', 'Bag Inventory', 0),
('locker', 'Locker', 0),
('property', 'Property', 0),
('society_ambulance', 'EMS', 1),
('society_brinks', 'Brinks', 1),
('society_cardealer', 'Cardealer', 1),
('society_cyber', 'cyber', 1),
('society_cyber_fridge', 'cyber (fridge)', 1),
('society_mechanic', 'Mechanic', 1),
('society_police', 'Police', 1),
('society_redline', 'RedLine Performance', 1),
('society_sheriff', 'sheriff', 1),
('society_taxi', 'Taxi', 1),
('society_vigne', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) ,
  `inventory_name` varchar(100) ,
  `name` varchar(100) ,
  `count` int(11) ,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ammunition`
--

CREATE TABLE `ammunition` (
  `id` bigint(20) UNSIGNED ,
  `owner` text DEFAULT NULL,
  `original_owner` text ,
  `hash` text ,
  `weapon_id` char(60) ,
  `count` int(11)  DEFAULT 0,
  `attach` text  DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) ,
  `identifier` varchar(40) ,
  `sender` varchar(40) ,
  `target_type` varchar(50) ,
  `target` varchar(40) ,
  `label` varchar(255) ,
  `amount` int(11) ,
  `create_date` timestamp  DEFAULT current_timestamp(),
  `paid_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `billing`
--

INSERT INTO `billing` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`, `create_date`, `paid_date`) VALUES
(16, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'player', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'Translation [fr][mechanic] does not exist', 12, '2021-10-07 23:18:07', '2021-10-07 23:18:17'),
(17, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'player', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Translation [fr][mechanic] does not exist', 100, '2021-10-07 23:18:51', '2021-10-07 23:19:03'),
(18, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'society', 'society_police', 'Dépassement de la vitesse 4KMH', 200, '2021-10-08 01:13:18', NULL),
(19, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 2KMH', 150, '2021-10-08 01:13:25', NULL),
(20, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 6KMH', 350, '2021-10-08 01:13:48', NULL),
(21, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 3KMH', 150, '2021-10-08 01:14:03', NULL),
(22, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'society', 'society_police', 'Dépassement de la vitesse 3KMH', 200, '2021-10-08 01:15:01', NULL),
(23, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'society', 'society_police', 'Dépassement de la vitesse 4KMH', 150, '2021-10-08 01:15:04', NULL),
(24, '40f9e375addccb930ff50c533f25c26aad1a5853', '40f9e375addccb930ff50c533f25c26aad1a5853', 'society', 'society_police', 'Dépassement de la vitesse 43KMH', 500, '2021-10-09 17:28:45', NULL),
(25, '40f9e375addccb930ff50c533f25c26aad1a5853', '40f9e375addccb930ff50c533f25c26aad1a5853', 'society', 'society_police', 'Dépassement de la vitesse 7KMH', 200, '2021-10-09 17:29:05', NULL),
(26, '40f9e375addccb930ff50c533f25c26aad1a5853', '40f9e375addccb930ff50c533f25c26aad1a5853', 'society', 'society_police', 'Dépassement de la vitesse 1KMH', 150, '2021-10-09 17:29:31', NULL),
(27, '40f9e375addccb930ff50c533f25c26aad1a5853', '40f9e375addccb930ff50c533f25c26aad1a5853', 'society', 'society_police', 'Dépassement de la vitesse 3KMH', 150, '2021-10-09 17:29:41', NULL),
(28, '40f9e375addccb930ff50c533f25c26aad1a5853', '40f9e375addccb930ff50c533f25c26aad1a5853', 'society', 'society_police', 'Dépassement de la vitesse 10KMH', 500, '2021-10-09 17:30:26', NULL),
(29, '40f9e375addccb930ff50c533f25c26aad1a5853', '40f9e375addccb930ff50c533f25c26aad1a5853', 'society', 'society_police', 'Dépassement de la vitesse 40KMH', 500, '2021-10-09 17:32:18', NULL),
(30, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 4KMH', 350, '2021-10-09 17:36:58', NULL),
(31, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 7KMH', 200, '2021-10-09 17:38:21', NULL),
(32, '40f9e375addccb930ff50c533f25c26aad1a5853', '40f9e375addccb930ff50c533f25c26aad1a5853', 'society', 'society_police', 'Dépassement de la vitesse 1KMH', 350, '2021-10-09 17:38:50', NULL),
(33, '40f9e375addccb930ff50c533f25c26aad1a5853', '40f9e375addccb930ff50c533f25c26aad1a5853', 'society', 'society_police', 'Dépassement de la vitesse 53KMH', 500, '2021-10-09 17:39:58', NULL),
(34, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 27KMH', 500, '2021-10-09 17:42:15', NULL),
(35, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 45KMH', 500, '2021-10-09 17:43:34', NULL),
(36, '40f9e375addccb930ff50c533f25c26aad1a5853', '40f9e375addccb930ff50c533f25c26aad1a5853', 'society', 'society_police', 'Dépassement de la vitesse 10KMH', 200, '2021-10-09 17:43:43', NULL),
(37, '40f9e375addccb930ff50c533f25c26aad1a5853', '40f9e375addccb930ff50c533f25c26aad1a5853', 'society', 'society_police', 'Dépassement de la vitesse 9KMH', 150, '2021-10-09 17:43:53', NULL),
(38, '40f9e375addccb930ff50c533f25c26aad1a5853', '40f9e375addccb930ff50c533f25c26aad1a5853', 'society', 'society_police', 'Dépassement de la vitesse 25KMH', 500, '2021-10-09 17:44:18', NULL),
(39, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 4KMH', 150, '2021-10-09 17:44:21', NULL),
(40, '40f9e375addccb930ff50c533f25c26aad1a5853', '40f9e375addccb930ff50c533f25c26aad1a5853', 'society', 'society_police', 'Dépassement de la vitesse 37KMH', 500, '2021-10-09 17:44:24', NULL),
(41, '40f9e375addccb930ff50c533f25c26aad1a5853', '40f9e375addccb930ff50c533f25c26aad1a5853', 'society', 'society_police', 'Dépassement de la vitesse 24KMH', 500, '2021-10-09 17:45:32', NULL),
(42, '40f9e375addccb930ff50c533f25c26aad1a5853', '40f9e375addccb930ff50c533f25c26aad1a5853', 'society', 'society_police', 'Dépassement de la vitesse 92KMH', 500, '2021-10-09 17:46:52', NULL),
(43, '40f9e375addccb930ff50c533f25c26aad1a5853', '40f9e375addccb930ff50c533f25c26aad1a5853', 'society', 'society_police', 'Dépassement de la vitesse 8KMH', 500, '2021-10-09 17:47:40', NULL),
(44, '40f9e375addccb930ff50c533f25c26aad1a5853', '40f9e375addccb930ff50c533f25c26aad1a5853', 'society', 'society_police', 'Dépassement de la vitesse 7KMH', 350, '2021-10-09 17:47:59', NULL),
(45, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 42KMH', 500, '2021-10-09 17:48:54', NULL),
(46, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'society', 'society_police', 'Dépassement de la vitesse 1KMH', 150, '2021-10-09 17:49:03', NULL),
(47, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 33KMH', 500, '2021-10-09 17:49:09', NULL),
(48, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'society', 'society_police', 'Dépassement de la vitesse 1KMH', 150, '2021-10-10 15:33:43', NULL),
(49, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'society', 'society_police', 'Dépassement de la vitesse 1KMH', 150, '2021-10-10 15:44:30', NULL),
(50, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'society', 'society_police', 'Dépassement de la vitesse 7KMH', 150, '2021-10-10 17:44:54', NULL),
(51, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'society', 'society_police', 'Dépassement de la vitesse 8KMH', 200, '2021-10-10 17:48:18', NULL),
(52, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'society', 'society_police', 'Dépassement de la vitesse 17KMH', 500, '2021-10-10 17:54:29', NULL),
(53, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 22KMH', 500, '2021-10-10 18:00:46', NULL),
(54, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 9KMH', 350, '2021-10-10 18:00:59', NULL),
(55, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 44KMH', 500, '2021-10-10 18:03:27', NULL),
(56, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 25KMH', 500, '2021-10-10 18:03:43', NULL),
(57, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 35KMH', 500, '2021-10-10 18:11:14', NULL),
(58, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 33KMH', 500, '2021-10-10 18:11:30', NULL),
(59, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 33KMH', 500, '2021-10-10 18:12:13', NULL),
(60, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 4KMH', 200, '2021-10-10 18:12:30', NULL),
(61, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 1KMH', 200, '2021-10-10 18:13:19', NULL),
(62, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 2KMH', 500, '2021-10-10 18:44:18', NULL),
(63, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 1KMH', 150, '2021-10-10 18:44:30', NULL),
(64, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 4KMH', 200, '2021-10-10 21:00:14', NULL),
(65, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 30KMH', 500, '2021-10-10 21:00:37', NULL),
(66, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 6KMH', 500, '2021-10-10 21:14:22', NULL),
(67, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 51KMH', 500, '2021-10-10 21:14:27', NULL),
(68, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 38KMH', 500, '2021-10-12 12:06:13', NULL),
(69, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 25KMH', 500, '2021-10-12 12:08:48', NULL),
(70, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 36KMH', 500, '2021-10-12 12:08:52', NULL),
(71, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 2KMH', 350, '2021-10-12 12:09:05', NULL),
(72, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 10KMH', 500, '2021-10-12 12:11:08', NULL),
(73, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 9KMH', 350, '2021-10-12 12:11:33', NULL),
(74, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_police', 'Dépassement de la vitesse 2KMH', 200, '2021-10-12 16:38:34', NULL),
(75, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'society', 'society_police', 'Dépassement de la vitesse 7KMH', 150, '2021-10-13 13:36:39', NULL),
(76, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'society', 'society_police', 'Dépassement de la vitesse 13KMH', 500, '2021-10-13 14:08:15', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cardealer`
--

CREATE TABLE `cardealer` (
  `id` tinyint(4)  DEFAULT 0,
  `label` varchar(50) DEFAULT NULL,
  `model` char(50) DEFAULT NULL,
  `manufacturer` varchar(50) DEFAULT NULL,
  `price` int(11)  DEFAULT 0,
  `storage` smallint(6) DEFAULT 0,
  `bigstorage` smallint(6) DEFAULT 0,
  `ps` smallint(6) DEFAULT 0,
  `maxSpeed` smallint(6) DEFAULT 0,
  `speedUp` float DEFAULT 0,
  `modification` smallint(6) DEFAULT 0,
  `tankcapacity` smallint(6) DEFAULT 0,
  `orderd` smallint(6) DEFAULT 0,
  `ordertotal` smallint(6) DEFAULT 0,
  `lastorder` bigint(20) DEFAULT NULL,
  `producetotal` smallint(6) DEFAULT 0,
  `produced` smallint(6) DEFAULT 0,
  `time` smallint(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cardealer`
--

INSERT INTO `cardealer` (`id`, `label`, `model`, `manufacturer`, `price`, `storage`, `bigstorage`, `ps`, `maxSpeed`, `speedUp`, `modification`, `tankcapacity`, `orderd`, `ordertotal`, `lastorder`, `producetotal`, `produced`, `time`) VALUES
(14, 'M3e36', 'rmodm3e36', 'BMW', 350000, 1, 2, 360, 320, 2.9, 6, 60, 0, 0, 1615219775, 0, 0, 140),
(15, 'Ford  Shelby', 'foxshelby', 'Ford', 478200, 1, 2, 360, 300, 2.8, 6, 60, 0, 0, 1615219805, 0, 0, 140),
(16, 'Toyota supra', 'foxsupra', 'Toyota', 432400, 1, 2, 350, 122, 2.5, 6, 60, 0, 0, 1604260527, 0, 0, 140),
(17, 'Bacalar', 'rmodbacalar', 'Bentley', 2000000, 1, 2, 410, 310, 2.6, 9, 65, 0, 0, 1615219808, 0, 0, 140),
(18, 'Charger 69', 'rmodcharger69', 'Dodge', 400000, 1, 2, 356, 298, 2.8, 12, 60, 0, 0, 1615219810, 0, 0, 140),
(19, 'E36S Brabus', 'rmode63s', 'Brabus / Mercedes', 650000, 1, 2, 343, 278, 2.4, 12, 60, 0, 0, 1604260527, 0, 0, 140),
(20, 'GT 63', 'rmodgt63', 'Mercedes', 623700, 1, 2, 387, 256, 2.2, 12, 60, 0, 0, 1604260527, 0, 0, 140),
(21, 'Gold MK7', 'rmodmk7', 'Volkswagen', 400000, 1, 2, 398, 287, 2.9, 12, 60, 0, 0, 1615219814, 0, 0, 140),
(22, 'Camaro ZL1', 'rmodzl1', 'Chevrolet', 900000, 1, 2, 412, 301, 2.7, 10, 60, 0, 0, 1604260527, 0, 0, 140),
(23, 'Audi RS5', 'rs5', 'Audi', 800000, 1, 2, 434, 300, 2.6, 10, 60, 0, 0, 1604260527, 0, 0, 140);

-- --------------------------------------------------------

--
-- Structure de la table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) ,
  `vehicle` varchar(255) ,
  `price` int(11) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `car_keys`
--

CREATE TABLE `car_keys` (
  `id` int(11) ,
  `name` varchar(60) ,
  `owner` varchar(60) ,
  `identifier` varchar(60) ,
  `plate` varchar(60) ,
  `model` varchar(60) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) ,
  `label` varchar(100) ,
  `shared` int(11) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('bag', 'Bag Datastore', 0),
('locker', 'Locker', 0),
('outfit', 'Outfits', 0),
('property', 'Property', 0),
('society_ambulance', 'EMS', 1),
('society_brinks', 'Brinks', 1),
('society_cyber', 'cyber', 1),
('society_mechanic', 'Mechanic', 1),
('society_police', 'Police', 1),
('society_police_outfits', 'Police outfits', 0),
('society_sheriff', 'sheriff', 1),
('society_taxi', 'Taxi', 1),
('society_vigne', 'Vigneron', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Structure de la table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) ,
  `name` varchar(60) ,
  `owner` varchar(40) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_ambulance', NULL, '{}'),
(2, 'society_mechanic', NULL, '{}'),
(3, 'society_police', NULL, '{\"weapons\":[{\"name\":\"WEAPON_PISTOL\",\"count\":0},{\"name\":\"WEAPON_RPG\",\"count\":1},{\"name\":\"WEAPON_SMG\",\"count\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"count\":0},{\"name\":\"WEAPON_STUNGUN\",\"count\":0},{\"name\":\"WEAPON_FLASHLIGHT\",\"count\":0},{\"name\":\"WEAPON_NIGHTSTICK\",\"count\":0},{\"name\":\"WEAPON_FLARE\",\"count\":0},{\"name\":\"WEAPON_M700\",\"count\":0}]}'),
(4, 'society_taxi', NULL, '{}'),
(5, 'bag', '1:a798b0db0ab26d12e0a3abfc84592a56e12d3d', '{}'),
(6, 'user_helmet', '1:a798b0db0ab26d12e0a3abfc84592a56e12d3d', '{\"skin\":{\"helmet_2\":4,\"helmet_1\":83},\"hasHelmet\":true}'),
(7, 'locker', '1:a798b0db0ab26d12e0a3abfc84592a56e12d3d', '{}'),
(8, 'outfit', '1:a798b0db0ab26d12e0a3abfc84592a56e12d3d', '{}'),
(9, 'user_ears', '1:a798b0db0ab26d12e0a3abfc84592a56e12d3d', '{}'),
(10, 'user_mask', '1:a798b0db0ab26d12e0a3abfc84592a56e12d3d', '{}'),
(11, 'user_glasses', '1:a798b0db0ab26d12e0a3abfc84592a56e12d3d', '{\"hasGlasses\":true,\"skin\":{\"glasses_2\":1,\"glasses_1\":15}}'),
(19, 'bag', '884c4af8bd5eb34ed23131a068aee6536e5d04e2', '{}'),
(20, 'user_helmet', '884c4af8bd5eb34ed23131a068aee6536e5d04e2', '{}'),
(21, 'locker', '884c4af8bd5eb34ed23131a068aee6536e5d04e2', '{}'),
(22, 'outfit', '884c4af8bd5eb34ed23131a068aee6536e5d04e2', '{}'),
(23, 'user_ears', '884c4af8bd5eb34ed23131a068aee6536e5d04e2', '{}'),
(24, 'user_glasses', '884c4af8bd5eb34ed23131a068aee6536e5d04e2', '{}'),
(25, 'user_mask', '884c4af8bd5eb34ed23131a068aee6536e5d04e2', '{}'),
(26, 'society_police_outfits', '1:a798b0db0ab26d12e0a3abfc84592a56e12d3d', '{\"dressing\":[{\"label\":\"TEST\",\"skin\":{\"tshirt_2\":0,\"blush_1\":0,\"watches_2\":0,\"eye_squint\":0,\"hair_color_1\":0,\"cheeks_2\":0,\"ears_2\":0,\"sun_2\":0,\"makeup_1\":0,\"nose_1\":1,\"nose_2\":7,\"shoes_1\":25,\"beard_2\":7,\"beard_4\":0,\"makeup_3\":0,\"chest_3\":0,\"dad\":2,\"blush_2\":0,\"eyebrows_1\":1,\"age_2\":0,\"lip_thickness\":0,\"jaw_2\":0,\"glasses_1\":15,\"moles_2\":0,\"neck_thickness\":0,\"beard_3\":0,\"chain_1\":9,\"cheeks_3\":0,\"bracelets_1\":-1,\"nose_5\":9,\"chest_1\":0,\"pants_2\":0,\"mom\":7,\"beard_1\":10,\"eyebrows_6\":0,\"chin_3\":0,\"hair_color_2\":0,\"lipstick_3\":0,\"torso_1\":101,\"blemishes_1\":0,\"complexion_1\":0,\"eyebrows_2\":9,\"sun_1\":0,\"eyebrows_3\":0,\"hair_2\":0,\"decals_1\":15,\"chin_2\":0,\"moles_1\":0,\"helmet_1\":83,\"eyebrows_4\":0,\"eye_color\":2,\"bodyb_2\":0,\"mask_2\":0,\"sex\":0,\"helmet_2\":1,\"blemishes_2\":0,\"lipstick_1\":0,\"hair_1\":54,\"nose_4\":9,\"torso_2\":3,\"blush_3\":0,\"tshirt_1\":40,\"glasses_2\":1,\"eyebrows_5\":0,\"arms\":37,\"skin_md_weight\":50,\"bproof_1\":7,\"pants_1\":52,\"nose_3\":7,\"makeup_2\":0,\"bproof_2\":0,\"chin_4\":0,\"bodyb_1\":-1,\"decals_2\":7,\"bags_1\":35,\"nose_6\":0,\"jaw_1\":0,\"watches_1\":-1,\"lipstick_2\":0,\"chin_1\":0,\"shoes_2\":0,\"bags_2\":0,\"cheeks_1\":0,\"bracelets_2\":0,\"age_1\":1,\"bodyb_3\":-1,\"ears_1\":0,\"arms_2\":0,\"chain_2\":0,\"bodyb_4\":0,\"chest_2\":0,\"face_md_weight\":0.59,\"makeup_4\":0,\"lipstick_4\":0,\"mask_1\":0,\"complexion_2\":0}}]}'),
(28, 'locker', '9830bdb9130267f285d559c27ddd0a0b857cbc5d', '{}'),
(29, 'outfit', '9830bdb9130267f285d559c27ddd0a0b857cbc5d', '{}'),
(30, 'bag', '9830bdb9130267f285d559c27ddd0a0b857cbc5d', '{}'),
(31, 'society_police_outfits', '9830bdb9130267f285d559c27ddd0a0b857cbc5d', '{}'),
(32, 'user_ears', '9830bdb9130267f285d559c27ddd0a0b857cbc5d', '{}'),
(33, 'user_glasses', '9830bdb9130267f285d559c27ddd0a0b857cbc5d', '{}'),
(34, 'user_helmet', '9830bdb9130267f285d559c27ddd0a0b857cbc5d', '{}'),
(35, 'user_mask', '9830bdb9130267f285d559c27ddd0a0b857cbc5d', '{}'),
(36, 'society_vigne', NULL, '{}'),
(37, 'bag', '32aaa2b60991920d25a84a04da9d816149a5bdf3', '{}'),
(38, 'user_mask', '32aaa2b60991920d25a84a04da9d816149a5bdf3', '{}'),
(39, 'locker', '32aaa2b60991920d25a84a04da9d816149a5bdf3', '{}'),
(40, 'outfit', '32aaa2b60991920d25a84a04da9d816149a5bdf3', '{}'),
(41, 'user_glasses', '32aaa2b60991920d25a84a04da9d816149a5bdf3', '{}'),
(42, 'user_ears', '32aaa2b60991920d25a84a04da9d816149a5bdf3', '{}'),
(43, 'society_police_outfits', '32aaa2b60991920d25a84a04da9d816149a5bdf3', '{}'),
(44, 'user_helmet', '32aaa2b60991920d25a84a04da9d816149a5bdf3', '{}'),
(45, 'property', '1:a798b0db0ab26d12e0a3abfc84592a56e12d3d', '{\"dressing\":[{\"label\":\"CROSS\",\"skin\":{\"age_2\":5,\"bodyb_3\":-1,\"eyebrows_3\":6,\"torso_2\":3,\"makeup_1\":0,\"helmet_2\":4,\"moles_1\":0,\"chin_2\":9,\"face_md_weight\":0.58,\"complexion_1\":0,\"ears_1\":-1,\"torso_1\":61,\"hair_2\":0,\"jaw_1\":0,\"makeup_3\":0,\"chin_3\":0,\"complexion_2\":0,\"shoes_1\":9,\"nose_5\":1,\"pants_1\":47,\"decals_1\":0,\"age_1\":2,\"eye_squint\":0,\"bags_2\":2,\"tshirt_1\":15,\"bproof_1\":0,\"blemishes_1\":0,\"eyebrows_1\":18,\"lipstick_4\":0,\"sun_2\":0,\"hair_color_2\":0,\"lipstick_3\":0,\"beard_3\":10,\"ears_2\":0,\"nose_4\":9,\"eyebrows_4\":0,\"bracelets_1\":-1,\"decals_2\":0,\"cheeks_1\":9,\"nose_2\":9,\"chain_1\":5,\"cheeks_3\":9,\"watches_2\":0,\"nose_6\":9,\"bodyb_4\":0,\"arms\":11,\"beard_4\":0,\"bags_1\":50,\"glasses_2\":0,\"chin_1\":9,\"blemishes_2\":0,\"hair_1\":13,\"mask_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"pants_2\":0,\"dad\":12,\"lipstick_2\":0,\"tshirt_2\":0,\"shoes_2\":2,\"eyebrows_2\":6,\"mask_1\":0,\"chain_2\":0,\"lipstick_1\":0,\"beard_1\":7,\"bracelets_2\":0,\"eye_color\":4,\"blush_2\":0,\"makeup_2\":0,\"arms_2\":0,\"nose_1\":1,\"watches_1\":-1,\"skin_md_weight\":0.70999999999999,\"beard_2\":10,\"blush_1\":0,\"chest_1\":0,\"bproof_2\":0,\"eyebrows_6\":3,\"cheeks_2\":0,\"eyebrows_5\":9,\"moles_2\":0,\"chin_4\":0,\"lip_thickness\":0,\"makeup_4\":0,\"bodyb_2\":0,\"glasses_1\":11,\"nose_3\":6,\"blush_3\":0,\"helmet_1\":83,\"sun_1\":0,\"jaw_2\":0,\"chest_2\":0,\"neck_thickness\":9,\"sex\":0,\"hair_color_1\":4,\"mom\":17}},{\"label\":\"Sweat\",\"skin\":{\"age_2\":5,\"bodyb_3\":-1,\"eyebrows_3\":6,\"torso_2\":7,\"moles_2\":0,\"helmet_2\":4,\"moles_1\":0,\"chin_2\":9,\"bags_1\":59,\"complexion_1\":0,\"ears_1\":-1,\"torso_1\":219,\"chin_1\":9,\"jaw_1\":0,\"makeup_3\":0,\"lipstick_1\":0,\"complexion_2\":0,\"bodyb_4\":0,\"nose_5\":1,\"pants_1\":52,\"decals_1\":0,\"age_1\":2,\"eye_squint\":0,\"bags_2\":1,\"tshirt_1\":15,\"bproof_1\":0,\"blemishes_1\":0,\"eyebrows_1\":18,\"lipstick_4\":0,\"sun_2\":0,\"hair_color_2\":0,\"lipstick_3\":0,\"beard_3\":10,\"ears_2\":0,\"nose_4\":9,\"eyebrows_4\":0,\"makeup_4\":0,\"decals_2\":0,\"cheeks_1\":9,\"eyebrows_5\":9,\"chain_1\":8,\"cheeks_3\":9,\"watches_2\":0,\"nose_6\":9,\"glasses_2\":0,\"bracelets_1\":-1,\"beard_4\":0,\"chin_3\":0,\"mask_1\":0,\"nose_2\":9,\"blemishes_2\":0,\"hair_1\":13,\"mask_2\":0,\"bodyb_1\":-1,\"chest_3\":0,\"pants_2\":1,\"dad\":12,\"lipstick_2\":0,\"tshirt_2\":0,\"makeup_2\":0,\"eyebrows_2\":6,\"shoes_2\":5,\"chain_2\":0,\"hair_2\":0,\"beard_1\":7,\"bracelets_2\":0,\"eye_color\":4,\"bproof_2\":0,\"blush_2\":0,\"arms_2\":0,\"nose_1\":1,\"watches_1\":-1,\"skin_md_weight\":0.70999999999999,\"beard_2\":10,\"blush_1\":0,\"chest_1\":0,\"chest_2\":0,\"eyebrows_6\":3,\"cheeks_2\":0,\"blush_3\":0,\"lip_thickness\":0,\"chin_4\":0,\"sun_1\":0,\"face_md_weight\":0.58,\"bodyb_2\":0,\"glasses_1\":11,\"helmet_1\":6,\"shoes_1\":61,\"nose_3\":6,\"arms\":11,\"jaw_2\":0,\"hair_color_1\":4,\"neck_thickness\":9,\"sex\":0,\"makeup_1\":0,\"mom\":17}}]}'),
(46, 'bag', 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c', '{}'),
(47, 'locker', 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c', '{}'),
(48, 'society_police_outfits', 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c', '{}'),
(49, 'user_ears', 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c', '{}'),
(50, 'property', 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c', '{}'),
(51, 'outfit', 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c', '{}'),
(52, 'user_glasses', 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c', '{}'),
(53, 'user_mask', 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c', '{}'),
(54, 'user_helmet', 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c', '{}'),
(56, 'locker', '40f9e375addccb930ff50c533f25c26aad1a5853', '{}'),
(57, 'bag', '40f9e375addccb930ff50c533f25c26aad1a5853', '{}'),
(58, 'property', '40f9e375addccb930ff50c533f25c26aad1a5853', '{}'),
(59, 'outfit', '40f9e375addccb930ff50c533f25c26aad1a5853', '{}'),
(60, 'society_police_outfits', '40f9e375addccb930ff50c533f25c26aad1a5853', '{}'),
(61, 'user_helmet', '40f9e375addccb930ff50c533f25c26aad1a5853', '{}'),
(62, 'user_glasses', '40f9e375addccb930ff50c533f25c26aad1a5853', '{}'),
(63, 'user_ears', '40f9e375addccb930ff50c533f25c26aad1a5853', '{}'),
(64, 'user_mask', '40f9e375addccb930ff50c533f25c26aad1a5853', '{}'),
(65, 'property', '5729f4e918f229acc586fe883b428095737e10f3', '{}'),
(66, 'outfit', '5729f4e918f229acc586fe883b428095737e10f3', '{}'),
(67, 'locker', '5729f4e918f229acc586fe883b428095737e10f3', '{}'),
(68, 'bag', '5729f4e918f229acc586fe883b428095737e10f3', '{}'),
(69, 'user_helmet', '5729f4e918f229acc586fe883b428095737e10f3', '{}'),
(70, 'society_police_outfits', '5729f4e918f229acc586fe883b428095737e10f3', '{}'),
(71, 'user_ears', '5729f4e918f229acc586fe883b428095737e10f3', '{}'),
(72, 'user_glasses', '5729f4e918f229acc586fe883b428095737e10f3', '{}'),
(73, 'user_mask', '5729f4e918f229acc586fe883b428095737e10f3', '{}'),
(74, 'property', '9abff61c6a0c182237ed0d38dd42c082534d6048', '{}'),
(75, 'outfit', '9abff61c6a0c182237ed0d38dd42c082534d6048', '{}'),
(76, 'bag', '9abff61c6a0c182237ed0d38dd42c082534d6048', '{}'),
(77, 'locker', '9abff61c6a0c182237ed0d38dd42c082534d6048', '{}'),
(78, 'society_police_outfits', '9abff61c6a0c182237ed0d38dd42c082534d6048', '{}'),
(79, 'user_helmet', '9abff61c6a0c182237ed0d38dd42c082534d6048', '{}'),
(80, 'user_ears', '9abff61c6a0c182237ed0d38dd42c082534d6048', '{}'),
(81, 'user_glasses', '9abff61c6a0c182237ed0d38dd42c082534d6048', '{}'),
(82, 'user_mask', '9abff61c6a0c182237ed0d38dd42c082534d6048', '{}'),
(83, 'property', '9830bdb9130267f285d559c27ddd0a0b857cbc5d', '{}'),
(84, 'property', '32aaa2b60991920d25a84a04da9d816149a5bdf3', '{}'),
(85, 'property', '9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67', '{}'),
(86, 'society_police_outfits', '9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67', '{}'),
(87, 'user_ears', '9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67', '{}'),
(88, 'bag', '9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67', '{}'),
(89, 'locker', '9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67', '{}'),
(90, 'outfit', '9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67', '{}'),
(91, 'user_helmet', '9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67', '{}'),
(92, 'user_glasses', '9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67', '{}'),
(93, 'user_mask', '9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67', '{}'),
(94, 'outfit', 'bb41a782fc32129bf8e702a7b0dfce2d93ea20a4', '{}'),
(95, 'locker', 'bb41a782fc32129bf8e702a7b0dfce2d93ea20a4', '{}'),
(96, 'bag', 'bb41a782fc32129bf8e702a7b0dfce2d93ea20a4', '{}'),
(97, 'property', 'bb41a782fc32129bf8e702a7b0dfce2d93ea20a4', '{}'),
(98, 'user_ears', 'bb41a782fc32129bf8e702a7b0dfce2d93ea20a4', '{}'),
(99, 'society_police_outfits', 'bb41a782fc32129bf8e702a7b0dfce2d93ea20a4', '{}'),
(100, 'user_glasses', 'bb41a782fc32129bf8e702a7b0dfce2d93ea20a4', '{}'),
(101, 'user_helmet', 'bb41a782fc32129bf8e702a7b0dfce2d93ea20a4', '{}'),
(102, 'user_mask', 'bb41a782fc32129bf8e702a7b0dfce2d93ea20a4', '{}'),
(103, 'outfit', '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1', '{}'),
(104, 'locker', '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1', '{}'),
(105, 'bag', '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1', '{}'),
(106, 'property', '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1', '{}'),
(107, 'society_police_outfits', '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1', '{}'),
(108, 'user_ears', '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1', '{}'),
(109, 'user_glasses', '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1', '{}'),
(110, 'user_mask', '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1', '{}'),
(111, 'user_helmet', '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1', '{}'),
(112, 'locker', '2965f0ccf41ae67c01f80f3e612689e6adf8e1af', '{}'),
(113, 'outfit', '2965f0ccf41ae67c01f80f3e612689e6adf8e1af', '{}'),
(114, 'bag', '2965f0ccf41ae67c01f80f3e612689e6adf8e1af', '{}'),
(115, 'property', '2965f0ccf41ae67c01f80f3e612689e6adf8e1af', '{}'),
(116, 'user_ears', '2965f0ccf41ae67c01f80f3e612689e6adf8e1af', '{}'),
(117, 'society_police_outfits', '2965f0ccf41ae67c01f80f3e612689e6adf8e1af', '{}'),
(118, 'user_glasses', '2965f0ccf41ae67c01f80f3e612689e6adf8e1af', '{}'),
(119, 'user_mask', '2965f0ccf41ae67c01f80f3e612689e6adf8e1af', '{}'),
(120, 'user_helmet', '2965f0ccf41ae67c01f80f3e612689e6adf8e1af', '{}'),
(121, 'locker', 'e31e742d2080ad11ef667af59ead70943bc22474', '{}'),
(122, 'bag', 'e31e742d2080ad11ef667af59ead70943bc22474', '{}'),
(123, 'property', 'e31e742d2080ad11ef667af59ead70943bc22474', '{}'),
(124, 'outfit', 'e31e742d2080ad11ef667af59ead70943bc22474', '{}'),
(125, 'society_police_outfits', 'e31e742d2080ad11ef667af59ead70943bc22474', '{}'),
(126, 'user_glasses', 'e31e742d2080ad11ef667af59ead70943bc22474', '{}'),
(127, 'user_ears', 'e31e742d2080ad11ef667af59ead70943bc22474', '{}'),
(128, 'user_helmet', 'e31e742d2080ad11ef667af59ead70943bc22474', '{}'),
(129, 'user_mask', 'e31e742d2080ad11ef667af59ead70943bc22474', '{}'),
(130, 'outfit', '2d3a563260069bbbc922cf77b6f7f1dd4ef95ca2', '{}'),
(131, 'locker', '2d3a563260069bbbc922cf77b6f7f1dd4ef95ca2', '{}'),
(132, 'bag', '2d3a563260069bbbc922cf77b6f7f1dd4ef95ca2', '{}'),
(133, 'property', '2d3a563260069bbbc922cf77b6f7f1dd4ef95ca2', '{}'),
(134, 'user_ears', '2d3a563260069bbbc922cf77b6f7f1dd4ef95ca2', '{}'),
(135, 'user_glasses', '2d3a563260069bbbc922cf77b6f7f1dd4ef95ca2', '{}'),
(136, 'user_mask', '2d3a563260069bbbc922cf77b6f7f1dd4ef95ca2', '{}'),
(137, 'society_police_outfits', '2d3a563260069bbbc922cf77b6f7f1dd4ef95ca2', '{}'),
(138, 'user_helmet', '2d3a563260069bbbc922cf77b6f7f1dd4ef95ca2', '{}'),
(139, 'property', '884c4af8bd5eb34ed23131a068aee6536e5d04e2', '{}'),
(140, 'society_police_outfits', '884c4af8bd5eb34ed23131a068aee6536e5d04e2', '{}'),
(141, 'bag', 'fcd8ed0d319f823b748f6f0856f1b3e0189add96', '{}'),
(142, 'locker', 'fcd8ed0d319f823b748f6f0856f1b3e0189add96', '{}'),
(143, 'property', 'fcd8ed0d319f823b748f6f0856f1b3e0189add96', '{}'),
(144, 'outfit', 'fcd8ed0d319f823b748f6f0856f1b3e0189add96', '{}'),
(145, 'society_police_outfits', 'fcd8ed0d319f823b748f6f0856f1b3e0189add96', '{}'),
(146, 'user_ears', 'fcd8ed0d319f823b748f6f0856f1b3e0189add96', '{}'),
(147, 'user_glasses', 'fcd8ed0d319f823b748f6f0856f1b3e0189add96', '{}'),
(148, 'user_helmet', 'fcd8ed0d319f823b748f6f0856f1b3e0189add96', '{}'),
(149, 'user_mask', 'fcd8ed0d319f823b748f6f0856f1b3e0189add96', '{}'),
(150, 'outfit', 'a4318d034cbbd61326d051adb5dfae7102ff12ec', '{}'),
(151, 'locker', 'a4318d034cbbd61326d051adb5dfae7102ff12ec', '{}'),
(152, 'bag', 'a4318d034cbbd61326d051adb5dfae7102ff12ec', '{}'),
(153, 'user_glasses', 'a4318d034cbbd61326d051adb5dfae7102ff12ec', '{}'),
(154, 'society_police_outfits', 'a4318d034cbbd61326d051adb5dfae7102ff12ec', '{}'),
(155, 'user_helmet', 'a4318d034cbbd61326d051adb5dfae7102ff12ec', '{}'),
(156, 'user_mask', 'a4318d034cbbd61326d051adb5dfae7102ff12ec', '{}'),
(157, 'property', 'a4318d034cbbd61326d051adb5dfae7102ff12ec', '{}'),
(158, 'user_ears', 'a4318d034cbbd61326d051adb5dfae7102ff12ec', '{}'),
(159, 'outfit', '1:50e51cf3495e578ed7a08a0a0ad4899820659e', '{}'),
(160, 'locker', '1:50e51cf3495e578ed7a08a0a0ad4899820659e', '{}'),
(161, 'bag', '1:50e51cf3495e578ed7a08a0a0ad4899820659e', '{}'),
(162, 'property', '1:50e51cf3495e578ed7a08a0a0ad4899820659e', '{\"dressing\":[{\"skin\":{\"cheeks_2\":0,\"eyebrows_3\":29,\"makeup_4\":0,\"eyebrows_1\":19,\"jaw_1\":0,\"complexion_1\":2,\"lipstick_1\":0,\"shoes_2\":3,\"jaw_2\":0,\"watches_2\":0,\"lipstick_4\":0,\"face_md_weight\":0.46,\"eye_squint\":0,\"chain_1\":0,\"skin_md_weight\":0.12,\"chest_2\":0,\"bodyb_4\":0,\"bproof_2\":0,\"sex\":0,\"bproof_1\":0,\"helmet_2\":5,\"nose_2\":0,\"beard_2\":10,\"blush_3\":0,\"hair_1\":22,\"arms\":0,\"shoes_1\":8,\"blemishes_2\":0,\"chin_4\":0,\"lipstick_3\":0,\"moles_2\":0,\"mom\":1,\"cheeks_3\":0,\"eye_color\":8,\"ears_1\":-1,\"bracelets_2\":0,\"chest_1\":0,\"blush_2\":0,\"blush_1\":0,\"mask_2\":0,\"pants_2\":4,\"beard_4\":1,\"tshirt_1\":15,\"age_2\":5,\"torso_1\":0,\"hair_2\":0,\"moles_1\":0,\"nose_5\":0,\"mask_1\":0,\"tshirt_2\":0,\"chin_2\":0,\"sun_2\":0,\"sun_1\":0,\"glasses_1\":7,\"torso_2\":15,\"chain_2\":0,\"bodyb_1\":-1,\"eyebrows_4\":0,\"bodyb_3\":-1,\"dad\":9,\"nose_1\":0,\"neck_thickness\":0,\"lip_thickness\":0,\"bags_1\":0,\"makeup_1\":0,\"beard_3\":29,\"nose_3\":0,\"chin_1\":0,\"blemishes_1\":0,\"complexion_2\":9,\"watches_1\":-1,\"bodyb_2\":0,\"makeup_2\":0,\"pants_1\":90,\"decals_1\":0,\"arms_2\":0,\"beard_1\":3,\"eyebrows_2\":10,\"hair_color_2\":29,\"age_1\":3,\"glasses_2\":4,\"nose_4\":2,\"bags_2\":0,\"chin_3\":0,\"lipstick_2\":0,\"makeup_3\":0,\"eyebrows_5\":9,\"helmet_1\":4,\"cheeks_1\":0,\"ears_2\":0,\"hair_color_1\":29,\"eyebrows_6\":0,\"chest_3\":0,\"decals_2\":0,\"nose_6\":0,\"bracelets_1\":-1},\"label\":\"MERLIN ORIGINAL\"},{\"label\":\"Réverend\",\"skin\":{\"chain_2\":0,\"eyebrows_3\":0,\"makeup_4\":0,\"eyebrows_1\":21,\"jaw_1\":0,\"complexion_1\":0,\"lipstick_1\":0,\"shoes_2\":0,\"jaw_2\":1,\"watches_2\":-1,\"lipstick_4\":0,\"face_md_weight\":90,\"eye_squint\":0,\"chain_1\":22,\"skin_md_weight\":34,\"chest_2\":0,\"bodyb_4\":0,\"bproof_2\":0,\"sex\":0,\"mom\":26,\"helmet_2\":-1,\"nose_2\":2,\"lip_thickness\":0,\"blush_3\":\"2\",\"hair_1\":30,\"arms\":4,\"shoes_1\":10,\"lipstick_2\":0,\"chin_4\":1,\"bags_1\":0,\"moles_2\":0,\"beard_2\":10,\"cheeks_3\":0,\"ears_1\":-1,\"blush_1\":0,\"bracelets_2\":0,\"arms_2\":0,\"blush_2\":0,\"pants_2\":0,\"mask_2\":0,\"beard_4\":0,\"lipstick_3\":32,\"mask_1\":0,\"age_2\":0,\"torso_1\":295,\"hair_2\":0,\"moles_1\":0,\"nose_5\":0,\"bags_2\":0,\"eye_color\":0,\"chin_2\":0,\"helmet_1\":-1,\"sun_1\":0,\"glasses_1\":7,\"tshirt_1\":31,\"tshirt_2\":2,\"bodyb_1\":-1,\"eyebrows_4\":0,\"bodyb_3\":-1,\"dad\":14,\"nose_1\":-3,\"neck_thickness\":0,\"nose_3\":5,\"makeup_3\":0,\"makeup_1\":0,\"beard_3\":61,\"blemishes_1\":0,\"complexion_2\":0,\"cheeks_2\":0,\"chest_1\":0,\"bodyb_2\":0,\"decals_1\":0,\"makeup_2\":0,\"age_1\":0,\"sun_2\":0,\"watches_1\":-1,\"beard_1\":26,\"eyebrows_2\":10,\"hair_color_2\":2,\"decals_2\":0,\"glasses_2\":4,\"nose_4\":0,\"chin_3\":-1,\"blemishes_2\":0,\"torso_2\":0,\"bproof_1\":0,\"eyebrows_5\":-8,\"pants_1\":10,\"cheeks_1\":0,\"ears_2\":-1,\"hair_color_1\":0,\"eyebrows_6\":-4,\"chest_3\":0,\"chin_1\":0,\"nose_6\":0,\"bracelets_1\":-1}}]}'),
(163, 'society_police_outfits', '1:50e51cf3495e578ed7a08a0a0ad4899820659e', '{}'),
(164, 'user_glasses', '1:50e51cf3495e578ed7a08a0a0ad4899820659e', '{}'),
(165, 'user_ears', '1:50e51cf3495e578ed7a08a0a0ad4899820659e', '{}'),
(166, 'user_helmet', '1:50e51cf3495e578ed7a08a0a0ad4899820659e', '{}'),
(167, 'user_mask', '1:50e51cf3495e578ed7a08a0a0ad4899820659e', '{}'),
(168, 'society_sheriff', NULL, '{}'),
(169, 'society_police_outfits', '3811e039cae8ed059f5349c863186988b3c1a14c', '{}'),
(170, 'property', '3811e039cae8ed059f5349c863186988b3c1a14c', '{}'),
(171, 'outfit', '3811e039cae8ed059f5349c863186988b3c1a14c', '{}'),
(172, 'user_ears', '3811e039cae8ed059f5349c863186988b3c1a14c', '{}'),
(173, 'user_helmet', '3811e039cae8ed059f5349c863186988b3c1a14c', '{}'),
(174, 'bag', '3811e039cae8ed059f5349c863186988b3c1a14c', '{}'),
(175, 'user_glasses', '3811e039cae8ed059f5349c863186988b3c1a14c', '{}'),
(176, 'locker', '3811e039cae8ed059f5349c863186988b3c1a14c', '{}'),
(177, 'user_mask', '3811e039cae8ed059f5349c863186988b3c1a14c', '{}'),
(178, 'user_helmet', 'b875cf1e3861a7a5a19d4d65bbb59172d62f9eb1', '{}'),
(179, 'user_glasses', 'b875cf1e3861a7a5a19d4d65bbb59172d62f9eb1', '{}'),
(180, 'user_ears', 'b875cf1e3861a7a5a19d4d65bbb59172d62f9eb1', '{}'),
(181, 'society_police_outfits', 'b875cf1e3861a7a5a19d4d65bbb59172d62f9eb1', '{}'),
(182, 'property', 'b875cf1e3861a7a5a19d4d65bbb59172d62f9eb1', '{}'),
(183, 'outfit', 'b875cf1e3861a7a5a19d4d65bbb59172d62f9eb1', '{}'),
(184, 'locker', 'b875cf1e3861a7a5a19d4d65bbb59172d62f9eb1', '{}'),
(185, 'bag', 'b875cf1e3861a7a5a19d4d65bbb59172d62f9eb1', '{}'),
(186, 'user_mask', 'b875cf1e3861a7a5a19d4d65bbb59172d62f9eb1', '{}'),
(187, 'society_police_outfits', 'a7828ea51a05d65c379587b33eeaf27188f9d6fd', '{}'),
(188, 'property', 'a7828ea51a05d65c379587b33eeaf27188f9d6fd', '{}'),
(189, 'outfit', 'a7828ea51a05d65c379587b33eeaf27188f9d6fd', '{}'),
(190, 'locker', 'a7828ea51a05d65c379587b33eeaf27188f9d6fd', '{}'),
(191, 'user_ears', 'a7828ea51a05d65c379587b33eeaf27188f9d6fd', '{}'),
(192, 'user_glasses', 'a7828ea51a05d65c379587b33eeaf27188f9d6fd', '{}'),
(193, 'user_helmet', 'a7828ea51a05d65c379587b33eeaf27188f9d6fd', '{}'),
(194, 'bag', 'a7828ea51a05d65c379587b33eeaf27188f9d6fd', '{}'),
(195, 'user_mask', 'a7828ea51a05d65c379587b33eeaf27188f9d6fd', '{}'),
(196, 'user_glasses', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', '{}'),
(197, 'user_ears', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', '{}'),
(198, 'society_police_outfits', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', '{}'),
(199, 'property', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', '{\"dressing\":[{\"skin\":{\"face_md_weight\":56,\"sun_1\":9,\"sex\":0,\"nose_5\":5,\"mom\":21,\"arms_2\":0,\"shoes_1\":61,\"torso_1\":208,\"mask_1\":0,\"chain_2\":0,\"eyebrows_5\":3,\"cheeks_1\":-1,\"watches_2\":0,\"blemishes_2\":0,\"blush_1\":0,\"bodyb_2\":0,\"makeup_1\":0,\"eye_squint\":-6,\"bags_2\":0,\"mask_2\":0,\"decals_1\":0,\"blush_3\":\"2\",\"jaw_2\":1,\"nose_2\":6,\"cheeks_3\":0,\"nose_6\":-6,\"torso_2\":18,\"nose_1\":3,\"lipstick_2\":0,\"glasses_2\":1,\"chest_1\":0,\"glasses_1\":11,\"pants_1\":102,\"chin_2\":10,\"pants_2\":4,\"sun_2\":5,\"bodyb_3\":-1,\"chest_2\":0,\"hair_1\":12,\"ears_1\":-1,\"eye_color\":3,\"lipstick_1\":0,\"age_1\":0,\"beard_3\":61,\"helmet_1\":-1,\"bproof_2\":0,\"arms\":0,\"chin_1\":10,\"eyebrows_1\":0,\"makeup_2\":0,\"beard_4\":0,\"eyebrows_2\":10,\"lipstick_4\":0,\"beard_1\":11,\"watches_1\":20,\"shoes_2\":2,\"bproof_1\":0,\"cheeks_2\":-10,\"neck_thickness\":10,\"decals_2\":0,\"chin_4\":6,\"eyebrows_4\":9,\"blemishes_1\":0,\"helmet_2\":4,\"makeup_4\":0,\"chin_3\":6,\"bags_1\":0,\"bracelets_1\":-1,\"eyebrows_6\":1,\"eyebrows_3\":9,\"dad\":0,\"lipstick_3\":32,\"skin_md_weight\":65,\"hair_color_1\":2,\"makeup_3\":0,\"lip_thickness\":-1,\"complexion_1\":0,\"moles_2\":3,\"beard_2\":10,\"complexion_2\":0,\"hair_color_2\":0,\"tshirt_2\":0,\"bodyb_1\":-1,\"nose_4\":3,\"bracelets_2\":0,\"chain_1\":8,\"ears_2\":-1,\"moles_1\":0,\"bodyb_4\":0,\"blush_2\":0,\"tshirt_1\":15,\"jaw_1\":10,\"hair_2\":0,\"age_2\":0,\"chest_3\":0,\"nose_3\":1},\"label\":\"Sans C\"},{\"skin\":{\"face_md_weight\":56,\"beard_2\":10,\"eye_color\":3,\"nose_5\":5,\"mom\":21,\"arms_2\":0,\"skin_md_weight\":65,\"torso_1\":208,\"mask_1\":0,\"chain_2\":0,\"eyebrows_5\":3,\"cheeks_1\":-1,\"watches_2\":0,\"blemishes_2\":0,\"blush_1\":0,\"bodyb_2\":0,\"makeup_1\":0,\"eye_squint\":-6,\"bags_2\":0,\"bracelets_2\":0,\"decals_1\":0,\"blush_3\":\"2\",\"jaw_2\":1,\"nose_2\":6,\"cheeks_3\":0,\"nose_6\":-6,\"hair_1\":12,\"nose_1\":3,\"lipstick_2\":0,\"eyebrows_4\":9,\"chest_1\":0,\"glasses_1\":11,\"pants_1\":102,\"chin_2\":10,\"pants_2\":4,\"sun_2\":5,\"bodyb_3\":-1,\"age_1\":0,\"sex\":0,\"chain_1\":8,\"ears_1\":-1,\"lipstick_1\":0,\"neck_thickness\":10,\"mask_2\":0,\"moles_2\":3,\"bracelets_1\":-1,\"arms\":0,\"chin_1\":10,\"chest_2\":0,\"beard_3\":61,\"beard_4\":0,\"eyebrows_2\":10,\"lipstick_4\":0,\"beard_1\":11,\"watches_1\":20,\"shoes_1\":61,\"bproof_1\":27,\"cheeks_2\":-10,\"makeup_2\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":109,\"blemishes_1\":0,\"helmet_2\":2,\"lipstick_3\":32,\"chin_3\":6,\"bags_1\":59,\"eyebrows_1\":0,\"nose_3\":1,\"eyebrows_3\":9,\"dad\":0,\"eyebrows_6\":1,\"sun_1\":9,\"chin_4\":6,\"makeup_3\":0,\"lip_thickness\":-1,\"hair_color_1\":2,\"glasses_2\":1,\"complexion_1\":0,\"complexion_2\":0,\"hair_color_2\":0,\"tshirt_2\":0,\"bodyb_1\":-1,\"makeup_4\":0,\"nose_4\":3,\"hair_2\":0,\"ears_2\":-1,\"moles_1\":0,\"bodyb_4\":0,\"blush_2\":0,\"shoes_2\":2,\"jaw_1\":10,\"age_2\":0,\"bproof_2\":0,\"chest_3\":0,\"torso_2\":18},\"label\":\"Avec C\"},{\"skin\":{\"makeup_2\":0,\"sun_1\":9,\"eye_color\":3,\"nose_5\":5,\"bracelets_1\":-1,\"age_1\":0,\"skin_md_weight\":65,\"torso_1\":208,\"mask_1\":0,\"chain_2\":0,\"ears_1\":-1,\"cheeks_1\":-1,\"watches_2\":0,\"blemishes_2\":0,\"blush_1\":0,\"complexion_1\":0,\"makeup_1\":0,\"eye_squint\":-6,\"bags_2\":0,\"bracelets_2\":0,\"decals_1\":0,\"blush_3\":\"2\",\"tshirt_1\":15,\"nose_2\":6,\"cheeks_3\":0,\"nose_6\":-6,\"torso_2\":18,\"nose_1\":3,\"lipstick_2\":0,\"glasses_2\":1,\"chest_1\":0,\"glasses_1\":11,\"pants_1\":102,\"chin_2\":10,\"pants_2\":4,\"sun_2\":5,\"bodyb_3\":-1,\"jaw_2\":1,\"eyebrows_5\":3,\"moles_2\":3,\"beard_3\":61,\"lipstick_1\":0,\"eyebrows_1\":0,\"sex\":0,\"helmet_1\":109,\"chain_1\":8,\"nose_4\":3,\"chin_1\":10,\"bodyb_2\":0,\"chest_2\":0,\"beard_4\":0,\"eyebrows_2\":10,\"lipstick_4\":0,\"beard_1\":11,\"mask_2\":0,\"watches_1\":20,\"bproof_1\":27,\"neck_thickness\":10,\"arms\":0,\"decals_2\":0,\"cheeks_2\":-10,\"shoes_1\":61,\"blemishes_1\":0,\"helmet_2\":2,\"lipstick_3\":32,\"chin_3\":6,\"bags_1\":59,\"arms_2\":0,\"nose_3\":1,\"eyebrows_3\":9,\"dad\":0,\"chin_4\":6,\"eyebrows_6\":1,\"face_md_weight\":56,\"makeup_3\":0,\"lip_thickness\":-1,\"beard_2\":10,\"eyebrows_4\":9,\"hair_color_1\":2,\"complexion_2\":0,\"makeup_4\":0,\"tshirt_2\":0,\"bodyb_1\":-1,\"shoes_2\":2,\"mom\":21,\"hair_color_2\":0,\"ears_2\":-1,\"moles_1\":0,\"bodyb_4\":0,\"blush_2\":0,\"age_2\":0,\"jaw_1\":10,\"hair_1\":12,\"bproof_2\":0,\"chest_3\":0,\"hair_2\":0},\"label\":\"TheWEAPON\"}]}'),
(200, 'outfit', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', '{}'),
(201, 'locker', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', '{}'),
(202, 'bag', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', '{}'),
(203, 'user_helmet', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', '{}'),
(204, 'user_mask', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', '{}'),
(205, 'user_helmet', '3:50e51cf3495e578ed7a08a0a0ad4899820659e', '{}'),
(206, 'user_glasses', '3:50e51cf3495e578ed7a08a0a0ad4899820659e', '{}'),
(207, 'user_ears', '3:50e51cf3495e578ed7a08a0a0ad4899820659e', '{}'),
(208, 'society_police_outfits', '3:50e51cf3495e578ed7a08a0a0ad4899820659e', '{}'),
(209, 'property', '3:50e51cf3495e578ed7a08a0a0ad4899820659e', '{}'),
(210, 'outfit', '3:50e51cf3495e578ed7a08a0a0ad4899820659e', '{}'),
(211, 'locker', '3:50e51cf3495e578ed7a08a0a0ad4899820659e', '{}'),
(212, 'bag', '3:50e51cf3495e578ed7a08a0a0ad4899820659e', '{}'),
(213, 'user_mask', '3:50e51cf3495e578ed7a08a0a0ad4899820659e', '{}'),
(214, 'society_police_outfits', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', '{}'),
(215, 'property', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', '{}'),
(216, 'user_glasses', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', '{}'),
(217, 'user_helmet', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', '{}'),
(218, 'user_ears', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', '{}'),
(219, 'bag', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', '{}'),
(220, 'outfit', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', '{}'),
(221, 'locker', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', '{}'),
(222, 'user_mask', '50e51cf3495e578ed7a08a0a0ad4899820659e6d', '{}'),
(223, 'society_brinks', NULL, '{}'),
(224, 'society_cyber', NULL, '{}');

-- --------------------------------------------------------

--
-- Structure de la table `doors`
--

CREATE TABLE `doors` (
  `index` int(11) ,
  `door` longtext 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `dpkeybinds`
--

CREATE TABLE `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dpkeybinds`
--

INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
('license:a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:40f9e375addccb930ff50c533f25c26aad1a5853', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000010521d778', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000010f903f24', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000108d32fd4', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000010065e344', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000010a322284', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000011747768c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000010fbef894', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:9abff61c6a0c182237ed0d38dd42c082534d6048', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000013207a923', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000010e1173a1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:1100001351fe0cc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000010ab70540', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:e31e742d2080ad11ef667af59ead70943bc22474', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000013f97faa7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:5729f4e918f229acc586fe883b428095737e10f3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:fcd8ed0d319f823b748f6f0856f1b3e0189add96', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000105834c4c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:1100001021bc950', 'num4', 'adjust', 'num5', 'salute', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000010a77fc0b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:b875cf1e3861a7a5a19d4d65bbb59172d62f9eb1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000011c4176bc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');

-- --------------------------------------------------------

--
-- Structure de la table `garage_police`
--

CREATE TABLE `garage_police` (
  `owner` varchar(40) ,
  `state` tinyint(1)  DEFAULT 0,
  `insurance` varchar(100)  DEFAULT 'none',
  `cooldown` int(11)  DEFAULT 0,
  `plate` varchar(12) ,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20)  DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(4)  DEFAULT 0,
  `garage_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT 'car',
  `garage_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT 'A',
  `in_garage` tinyint(1) DEFAULT 0,
  `impound` int(10) DEFAULT 0,
  `adv_stats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '{"plate":"nil","mileage":0.0,"maxhealth":1000.0}',
  `property` int(10) DEFAULT 0,
  `job_personalowned` tinyint(1) DEFAULT 0,
  `storedhouse` int(11) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `garage_police`
--

INSERT INTO `garage_police` (`owner`, `state`, `insurance`, `cooldown`, `plate`, `vehicle`, `type`, `job`, `stored`, `garage_type`, `garage_id`, `in_garage`, `impound`, `adv_stats`, `property`, `job_personalowned`, `storedhouse`) VALUES
('police', 0, 'none', 0, 'CHG SLK1', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSideSkirt\":-1,\"color2Custom\":[183,183,183],\"modBrakes\":-1,\"modArchCover\":-1,\"modXenon\":0,\"color1Custom\":[183,183,183],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":-1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":50,\"modPlateHolder\":-1,\"wheels\":0,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":false,\"2\":1,\"1\":false,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-2093896434,\"color1Type\":0,\"modHorns\":-1,\"color2Type\":0,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"color1\":0,\"dashboardColor\":54,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modSpoilers\":-1,\"plate\":\"CHG SLK1\",\"modTank\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":134,\"modAPlate\":-1,\"fuelLevel\":64.4,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":-1,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":2.0,\"color2\":0}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"CHG SLK1\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'CHGR PD1', '{\"engineHealth\":997.6,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSideSkirt\":-1,\"color2Custom\":[183,183,183],\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[183,183,183],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":999.5,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":2,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":-1,\"modFrontWheels\":50,\"modPlateHolder\":-1,\"wheels\":0,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-2093896434,\"color1Type\":0,\"modHorns\":-1,\"color2Type\":0,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"color1\":0,\"dashboardColor\":54,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modSpoilers\":-1,\"plate\":\"CHGR PD1\",\"modTank\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":134,\"modAPlate\":-1,\"fuelLevel\":64.6,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":0.0,\"color2\":0}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"CHGR PD1\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'CHGR PD2', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSpoilers\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[255,255,255],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":2,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":50,\"dirtLevel\":0.0,\"wheels\":0,\"modFrontBumper\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"10\":1,\"11\":1,\"12\":1,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-2093896434,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":134,\"windowTint\":-1,\"plate\":\"CHGR PD2\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[255,255,255],\"color1\":134,\"fuelLevel\":64.5,\"modTransmission\":-1,\"dashboardColor\":54,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"modExhaust\":-1,\"modTank\":-1,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"CHGR PD2\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'CVPI PD1', '{\"dirtLevel\":2.0,\"plateIndex\":4,\"modSuspension\":-1,\"modRoof\":-1,\"color2Type\":6,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"color1Custom\":[8,8,8],\"modDoorSpeaker\":-1,\"wheels\":0,\"modHood\":2,\"modArchCover\":0,\"color2Custom\":[8,8,8],\"modSmokeEnabled\":false,\"wheelColor\":29,\"dashboardColor\":54,\"modRearBumper\":-1,\"modXenon\":0,\"plate\":\"CVPI PD1\",\"fuelLevel\":64.5,\"modTrimB\":-1,\"modHydrolic\":-1,\"modTransmission\":-1,\"modSeats\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"neonColor\":[255,255,255],\"color1Type\":6,\"modBrakes\":-1,\"modFrontWheels\":50,\"interiorColor\":53,\"modOrnaments\":-1,\"modEngine\":-1,\"modSteeringWheel\":-1,\"modTank\":-1,\"modGrille\":-1,\"modDial\":-1,\"modTrunk\":-1,\"modBackWheels\":-1,\"windowTint\":-1,\"modLivery\":-1,\"model\":-1190343367,\"modAerials\":-1,\"engineHealth\":940.2,\"modFrame\":0,\"modHorns\":-1,\"bodyHealth\":997.0,\"modSpoilers\":-1,\"color1\":0,\"modAPlate\":-1,\"modStruts\":-1,\"extras\":{\"9\":1,\"12\":false,\"7\":1,\"8\":1,\"5\":1,\"6\":1,\"3\":1,\"4\":false,\"1\":1,\"2\":false,\"11\":1,\"10\":1},\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modFrontBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"livery\":0,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modWindows\":-1,\"modAirFilter\":-1,\"modTurbo\":1,\"modArmor\":-1,\"doors\":[false,false,false,false,false,false],\"color2\":0,\"pearlescentColor\":134,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modRightFender\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.02,\"plate\":\"CVPI PD1\"}', 0, 0, 0),
('police', 0, 'none', 0, 'CVPI PD2', '{\"dirtLevel\":0.0,\"plateIndex\":4,\"modSuspension\":-1,\"modRoof\":-1,\"color2Type\":0,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"color1Custom\":[183,183,183],\"modDoorSpeaker\":-1,\"wheels\":0,\"modHood\":2,\"modArchCover\":0,\"color2Custom\":[183,183,183],\"modSmokeEnabled\":false,\"wheelColor\":29,\"dashboardColor\":54,\"modRearBumper\":-1,\"modXenon\":0,\"plate\":\"CVPI PD2\",\"fuelLevel\":64.7,\"modTrimB\":-1,\"modHydrolic\":-1,\"modTransmission\":-1,\"modSeats\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"neonColor\":[255,0,255],\"color1Type\":0,\"modBrakes\":-1,\"modFrontWheels\":50,\"interiorColor\":53,\"modOrnaments\":-1,\"modEngine\":-1,\"modSteeringWheel\":-1,\"modTank\":-1,\"modGrille\":-1,\"modDial\":-1,\"modTrunk\":-1,\"modBackWheels\":-1,\"windowTint\":-1,\"modLivery\":-1,\"model\":-1190343367,\"modAerials\":-1,\"engineHealth\":1000.0,\"modFrame\":0,\"modHorns\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"color1\":0,\"modAPlate\":-1,\"modStruts\":-1,\"extras\":{\"9\":1,\"12\":false,\"7\":1,\"8\":1,\"5\":1,\"6\":1,\"3\":1,\"4\":false,\"1\":1,\"2\":false,\"11\":1,\"10\":1},\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modFrontBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"livery\":0,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modWindows\":-1,\"modAirFilter\":-1,\"modTurbo\":1,\"modArmor\":-1,\"doors\":[false,false,false,false,false,false],\"color2\":0,\"pearlescentColor\":134,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modRightFender\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.02,\"plate\":\"CVPI PD2\"}', 0, 0, 0),
('police', 0, 'none', 0, 'CVPI PD3', '{\"dirtLevel\":0.0,\"plateIndex\":4,\"modSuspension\":-1,\"modRoof\":-1,\"color2Type\":0,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"color1Custom\":[183,183,183],\"modDoorSpeaker\":-1,\"wheels\":0,\"modHood\":2,\"modArchCover\":0,\"color2Custom\":[183,183,183],\"modSmokeEnabled\":false,\"wheelColor\":29,\"dashboardColor\":54,\"modRearBumper\":-1,\"modXenon\":0,\"plate\":\"CVPI PD3\",\"fuelLevel\":64.7,\"modTrimB\":-1,\"modHydrolic\":-1,\"modTransmission\":-1,\"modSeats\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"neonColor\":[255,0,255],\"color1Type\":0,\"modBrakes\":-1,\"modFrontWheels\":50,\"interiorColor\":53,\"modOrnaments\":-1,\"modEngine\":-1,\"modSteeringWheel\":-1,\"modTank\":-1,\"modGrille\":-1,\"modDial\":-1,\"modTrunk\":2,\"modBackWheels\":-1,\"windowTint\":-1,\"modLivery\":-1,\"model\":-1190343367,\"modAerials\":-1,\"engineHealth\":1000.0,\"modFrame\":0,\"modHorns\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"color1\":0,\"modAPlate\":-1,\"modStruts\":-1,\"extras\":{\"9\":1,\"12\":false,\"7\":1,\"8\":1,\"5\":1,\"6\":1,\"3\":1,\"4\":false,\"1\":1,\"2\":false,\"11\":1,\"10\":1},\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modFrontBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"livery\":0,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modWindows\":-1,\"modAirFilter\":-1,\"modTurbo\":1,\"modArmor\":-1,\"doors\":[false,false,false,false,false,false],\"color2\":0,\"pearlescentColor\":134,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modRightFender\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"CVPI PD3\"}', 0, 0, 0),
('police', 0, 'none', 0, 'CVPI PD4', '{\"dirtLevel\":2.0,\"plateIndex\":4,\"modSuspension\":-1,\"modRoof\":-1,\"color2Type\":6,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"color1Custom\":[183,183,183],\"modDoorSpeaker\":-1,\"wheels\":0,\"modHood\":2,\"modArchCover\":0,\"color2Custom\":[183,183,183],\"modSmokeEnabled\":false,\"wheelColor\":29,\"dashboardColor\":54,\"modRearBumper\":-1,\"modXenon\":0,\"plate\":\"CVPI PD4\",\"fuelLevel\":64.8,\"modTrimB\":-1,\"modHydrolic\":-1,\"modTransmission\":-1,\"modSeats\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"neonColor\":[255,0,255],\"color1Type\":6,\"modBrakes\":-1,\"modFrontWheels\":50,\"interiorColor\":53,\"modOrnaments\":-1,\"modEngine\":-1,\"modSteeringWheel\":-1,\"modTank\":-1,\"modGrille\":-1,\"modDial\":-1,\"modTrunk\":-1,\"modBackWheels\":-1,\"windowTint\":-1,\"modLivery\":-1,\"model\":-1190343367,\"modAerials\":-1,\"engineHealth\":1000.0,\"modFrame\":0,\"modHorns\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"color1\":134,\"modAPlate\":-1,\"modStruts\":-1,\"extras\":{\"9\":1,\"12\":false,\"7\":1,\"8\":1,\"5\":1,\"6\":1,\"3\":1,\"4\":false,\"1\":1,\"2\":false,\"11\":1,\"10\":1},\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modFrontBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"livery\":0,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modWindows\":-1,\"modAirFilter\":-1,\"modTurbo\":1,\"modArmor\":-1,\"doors\":[false,false,false,false,false,false],\"color2\":134,\"pearlescentColor\":134,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modRightFender\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"CVPI PD4\"}', 0, 0, 0),
('police', 0, 'none', 0, 'F150 PD1', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":0,\"modSideSkirt\":-1,\"color2Custom\":[0,85,196],\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[8,8,8],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":0,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":32,\"modPlateHolder\":-1,\"wheels\":4,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":false,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":198306947,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":0,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"color1\":0,\"dashboardColor\":0,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":0,\"modHydrolic\":-1,\"modSpoilers\":0,\"plate\":\"F150 PD1\",\"modTank\":0,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":0,\"modAPlate\":-1,\"fuelLevel\":69.6,\"modFrontBumper\":1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":0.0,\"color2\":70}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"F150 PD1\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'F150 PD2', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":0,\"modSpoilers\":0,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[8,8,8],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":0,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":32,\"dirtLevel\":1.0,\"wheels\":4,\"modFrontBumper\":1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":false,\"5\":1,\"4\":1,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"10\":1,\"11\":1,\"12\":false,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":198306947,\"color1Type\":0,\"modHorns\":-1,\"color2Type\":0,\"modRearBumper\":0,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":0,\"windowTint\":-1,\"plate\":\"F150 PD2\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":0,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[0,85,196],\"color1\":0,\"fuelLevel\":69.8,\"modTransmission\":-1,\"dashboardColor\":0,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"modExhaust\":-1,\"modTank\":0,\"color2\":0}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"F150 PD2\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'F150 PD3', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":0,\"modSideSkirt\":-1,\"color2Custom\":[0,85,196],\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[8,8,8],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":0,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":32,\"modPlateHolder\":-1,\"wheels\":4,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":false,\"5\":1,\"4\":1,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":198306947,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":0,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"color1\":0,\"dashboardColor\":0,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":0,\"modHydrolic\":-1,\"modSpoilers\":0,\"plate\":\"F150 PD3\",\"modTank\":0,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":0,\"modAPlate\":-1,\"fuelLevel\":69.4,\"modFrontBumper\":1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":0.0,\"color2\":70}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"F150 PD3\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'F150 SL1', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":0,\"modSpoilers\":0,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":1,\"modXenon\":0,\"color1Custom\":[8,8,8],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":0,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":32,\"dirtLevel\":0.0,\"wheels\":4,\"modFrontBumper\":1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":false,\"5\":1,\"4\":1,\"3\":false,\"2\":1,\"1\":false,\"9\":1,\"10\":1,\"11\":1,\"12\":false,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":198306947,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":0,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":0,\"windowTint\":-1,\"plate\":\"F150 SL1\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":0,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[0,85,196],\"color1\":0,\"fuelLevel\":69.5,\"modTransmission\":-1,\"dashboardColor\":0,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"modExhaust\":-1,\"modTank\":0,\"color2\":70}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"F150 SL1\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'FPIS PD1', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSpoilers\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":-1,\"modXenon\":0,\"color1Custom\":[255,255,255],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":-1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":-1,\"modFrontWheels\":-1,\"dirtLevel\":0.0,\"wheels\":0,\"modFrontBumper\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":1,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"10\":1,\"11\":1,\"12\":1,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-1808457429,\"color1Type\":0,\"modHorns\":-1,\"color2Type\":0,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":134,\"windowTint\":-1,\"plate\":\"FPIS PD1\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[255,255,255],\"color1\":0,\"fuelLevel\":64.4,\"modTransmission\":-1,\"dashboardColor\":54,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":-1,\"modExhaust\":-1,\"modTank\":-1,\"color2\":0}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"FPIS PD1\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'FPIS PD2', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSideSkirt\":-1,\"color2Custom\":[183,183,183],\"modBrakes\":-1,\"modArchCover\":-1,\"modXenon\":255,\"color1Custom\":[183,183,183],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":-1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modPlateHolder\":-1,\"wheels\":1,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-1808457429,\"color1Type\":0,\"modHorns\":-1,\"color2Type\":0,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"color1\":0,\"dashboardColor\":54,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modSpoilers\":-1,\"plate\":\"FPIS PD2\",\"modTank\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":134,\"modAPlate\":-1,\"fuelLevel\":64.8,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":-1,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":0.0,\"color2\":0}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"FPIS PD2\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'FPIS PD3', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSpoilers\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":-1,\"modXenon\":0,\"color1Custom\":[255,255,255],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":-1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":-1,\"modFrontWheels\":-1,\"dirtLevel\":0.0,\"wheels\":0,\"modFrontBumper\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":1,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"10\":1,\"11\":1,\"12\":false,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-1808457429,\"color1Type\":0,\"modHorns\":-1,\"color2Type\":0,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":134,\"windowTint\":-1,\"plate\":\"FPIS PD3\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[255,255,255],\"color1\":0,\"fuelLevel\":64.8,\"modTransmission\":-1,\"dashboardColor\":54,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":-1,\"modExhaust\":-1,\"modTank\":-1,\"color2\":0}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"FPIS PD3\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'FPIU PD1', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSideSkirt\":-1,\"color2Custom\":[183,183,183],\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[183,183,183],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":2,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":49,\"modPlateHolder\":-1,\"wheels\":3,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-757309284,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":0,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"color1\":134,\"dashboardColor\":54,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modSpoilers\":-1,\"plate\":\"FPIU PD1\",\"modTank\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":134,\"modAPlate\":-1,\"fuelLevel\":79.7,\"modFrontBumper\":1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":0.0,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"FPIU PD1\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'FPIU PD2', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSpoilers\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[255,255,255],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":2,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":49,\"dirtLevel\":0.0,\"wheels\":3,\"modFrontBumper\":1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":1,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"10\":1,\"11\":1,\"12\":false,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-757309284,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":0,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":134,\"windowTint\":-1,\"plate\":\"FPIU PD2\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[255,255,255],\"color1\":134,\"fuelLevel\":79.8,\"modTransmission\":-1,\"dashboardColor\":54,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"modExhaust\":-1,\"modTank\":-1,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"FPIU PD2\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'FPIU PD3', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSideSkirt\":-1,\"color2Custom\":[183,183,183],\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[183,183,183],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":49,\"modPlateHolder\":-1,\"wheels\":3,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-757309284,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":0,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"color1\":134,\"dashboardColor\":54,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modSpoilers\":-1,\"plate\":\"FPIU PD3\",\"modTank\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":134,\"modAPlate\":-1,\"fuelLevel\":79.5,\"modFrontBumper\":1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":0.0,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"FPIU PD3\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'FPIU PD4', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSpoilers\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[255,255,255],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":49,\"dirtLevel\":2.0,\"wheels\":3,\"modFrontBumper\":1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":1,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"10\":1,\"11\":1,\"12\":false,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-757309284,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":0,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":134,\"windowTint\":-1,\"plate\":\"FPIU PD4\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[255,255,255],\"color1\":134,\"fuelLevel\":79.6,\"modTransmission\":-1,\"dashboardColor\":54,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"modExhaust\":-1,\"modTank\":-1,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"FPIU PD4\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'FPSL PD1', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSideSkirt\":-1,\"color2Custom\":[183,183,183],\"modBrakes\":-1,\"modArchCover\":1,\"modXenon\":0,\"color1Custom\":[183,183,183],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":49,\"modPlateHolder\":-1,\"wheels\":3,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":false,\"2\":1,\"1\":false,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-757309284,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":0,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"color1\":134,\"dashboardColor\":54,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modSpoilers\":-1,\"plate\":\"FPSL PD1\",\"modTank\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":134,\"modAPlate\":-1,\"fuelLevel\":79.5,\"modFrontBumper\":1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":0.0,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"FPSL PD1\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'FPSL PD2', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSpoilers\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":1,\"modXenon\":0,\"color1Custom\":[255,255,255],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":49,\"dirtLevel\":0.0,\"wheels\":3,\"modFrontBumper\":1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":1,\"3\":false,\"2\":1,\"1\":false,\"9\":1,\"10\":1,\"11\":1,\"12\":false,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-757309284,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":0,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":134,\"windowTint\":-1,\"plate\":\"FPSL PD2\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[255,255,255],\"color1\":134,\"fuelLevel\":79.4,\"modTransmission\":-1,\"dashboardColor\":54,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"modExhaust\":-1,\"modTank\":-1,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"FPSL PD2\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'IPPV PD1', '{\"dirtLevel\":1.7,\"plateIndex\":4,\"modSuspension\":-1,\"modRoof\":-1,\"color2Type\":0,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"color1Custom\":[183,183,183],\"modDoorSpeaker\":-1,\"wheels\":0,\"modHood\":2,\"modArchCover\":0,\"color2Custom\":[183,183,183],\"modSmokeEnabled\":false,\"wheelColor\":29,\"dashboardColor\":54,\"modRearBumper\":-1,\"modXenon\":0,\"plate\":\"IPPV PD1\",\"fuelLevel\":62.4,\"modTrimB\":-1,\"modHydrolic\":-1,\"modTransmission\":-1,\"modSeats\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"neonColor\":[255,0,255],\"color1Type\":0,\"modBrakes\":-1,\"modFrontWheels\":50,\"interiorColor\":53,\"modOrnaments\":-1,\"modEngine\":-1,\"modSteeringWheel\":-1,\"modTank\":-1,\"modGrille\":-1,\"modDial\":-1,\"modTrunk\":-1,\"modBackWheels\":-1,\"windowTint\":-1,\"modLivery\":-1,\"model\":-267442178,\"modAerials\":-1,\"engineHealth\":1000.0,\"modFrame\":0,\"modHorns\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"color1\":0,\"modAPlate\":-1,\"modStruts\":-1,\"extras\":{\"9\":1,\"12\":false,\"7\":1,\"8\":1,\"5\":1,\"6\":1,\"3\":1,\"4\":false,\"1\":1,\"2\":false,\"11\":1,\"10\":1},\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modFrontBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"livery\":0,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modWindows\":-1,\"modAirFilter\":-1,\"modTurbo\":1,\"modArmor\":-1,\"doors\":[false,false,false,false,false,false],\"color2\":0,\"pearlescentColor\":134,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modRightFender\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"IPPV PD1\"}', 0, 0, 0),
('police', 0, 'none', 0, 'IPPV PD2', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSideSkirt\":-1,\"color2Custom\":[183,183,183],\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[183,183,183],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":2,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":50,\"modPlateHolder\":-1,\"wheels\":0,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-267442178,\"color1Type\":0,\"modHorns\":-1,\"color2Type\":0,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"color1\":0,\"dashboardColor\":54,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modSpoilers\":-1,\"plate\":\"IPPV PD2\",\"modTank\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":134,\"modAPlate\":-1,\"fuelLevel\":64.3,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":0.0,\"color2\":0}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"IPPV PD2\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'IPPV PD3', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSpoilers\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[255,255,255],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":2,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":50,\"dirtLevel\":0.0,\"wheels\":0,\"modFrontBumper\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"10\":1,\"11\":1,\"12\":false,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-267442178,\"color1Type\":0,\"modHorns\":-1,\"color2Type\":0,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":134,\"windowTint\":-1,\"plate\":\"IPPV PD3\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[255,255,255],\"color1\":0,\"fuelLevel\":64.3,\"modTransmission\":-1,\"dashboardColor\":54,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"modExhaust\":-1,\"modTank\":-1,\"color2\":0}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"IPPV PD3\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'TTIP PD1', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSideSkirt\":-1,\"color2Custom\":[183,183,183],\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[183,183,183],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":2,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":48,\"modPlateHolder\":-1,\"wheels\":3,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":1189120983,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"color1\":134,\"dashboardColor\":54,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modSpoilers\":-1,\"plate\":\"TTIP PD1\",\"modTank\":0,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":134,\"modAPlate\":-1,\"fuelLevel\":64.7,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":0.0,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"TTIP PD1\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'TTIP PD2', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSpoilers\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[255,255,255],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":2,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":48,\"dirtLevel\":2.0,\"wheels\":3,\"modFrontBumper\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"10\":1,\"11\":1,\"12\":false,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":1189120983,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":134,\"windowTint\":-1,\"plate\":\"TTIP PD2\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[255,255,255],\"color1\":134,\"fuelLevel\":64.7,\"modTransmission\":-1,\"dashboardColor\":54,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"modExhaust\":-1,\"modTank\":0,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"TTIP PD2\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'TTPV PD1', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSideSkirt\":-1,\"color2Custom\":[183,183,183],\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":255,\"color1Custom\":[183,183,183],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":0,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":48,\"modPlateHolder\":-1,\"wheels\":3,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-614954239,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":4,\"color1\":134,\"dashboardColor\":54,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modSpoilers\":-1,\"plate\":\"TTPV PD1\",\"modTank\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":134,\"modAPlate\":-1,\"fuelLevel\":64.7,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":1.0,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"TTPV PD1\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'TTPV PD2', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSpoilers\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":255,\"color1Custom\":[255,255,255],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":0,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":-1,\"dirtLevel\":0.0,\"wheels\":1,\"modFrontBumper\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":1,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"10\":1,\"11\":1,\"12\":false,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-614954239,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":134,\"windowTint\":-1,\"plate\":\"TTPV PD2\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[255,255,255],\"color1\":134,\"fuelLevel\":64.6,\"modTransmission\":-1,\"dashboardColor\":54,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"modExhaust\":-1,\"modTank\":-1,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"TTPV PD2\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'TTPV PD3', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSideSkirt\":-1,\"color2Custom\":[183,183,183],\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":255,\"color1Custom\":[183,183,183],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":0,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":48,\"modPlateHolder\":-1,\"wheels\":3,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-614954239,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"color1\":134,\"dashboardColor\":54,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modSpoilers\":-1,\"plate\":\"TTPV PD3\",\"modTank\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":134,\"modAPlate\":-1,\"fuelLevel\":64.7,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":0.0,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"TTPV PD3\",\"maxhealth\":1000.0}', 0, 0, 0),
('police', 0, 'none', 0, 'TTPV PD4', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSpoilers\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":255,\"color1Custom\":[255,255,255],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":0,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":48,\"dirtLevel\":2.0,\"wheels\":3,\"modFrontBumper\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":1,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"10\":1,\"11\":1,\"12\":false,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-614954239,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":134,\"windowTint\":-1,\"plate\":\"TTPV PD4\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[255,255,255],\"color1\":134,\"fuelLevel\":64.8,\"modTransmission\":-1,\"dashboardColor\":54,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"modExhaust\":-1,\"modTank\":-1,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"TTPV PD4\",\"maxhealth\":1000.0}', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `gl_pets`
--

CREATE TABLE `gl_pets` (
  `id` int(11) ,
  `owner` varchar(60) DEFAULT NULL,
  `modelname` varchar(250) DEFAULT NULL,
  `health` tinyint(4)  DEFAULT 100,
  `illnesses` varchar(60)  DEFAULT 'none',
  `name` varchar(255) DEFAULT 'Pet'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `gl_pets`
--

INSERT INTO `gl_pets` (`id`, `owner`, `modelname`, `health`, `illnesses`, `name`) VALUES
(219, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'a_c_husky', 100, 'none', 'Pet');

-- --------------------------------------------------------

--
-- Structure de la table `hsn_phone_ambulancepatients`
--

CREATE TABLE `hsn_phone_ambulancepatients` (
  `name` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `message` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `photo` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `date` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `id` int(11) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Déchargement des données de la table `hsn_phone_ambulancepatients`
--

INSERT INTO `hsn_phone_ambulancepatients` (`name`, `message`, `photo`, `date`, `id`) VALUES
('Lucas Test', 'O+', '', '2021-09-21T21:12:51.568Z', 960),
('tom Kaplan', 'O-', '', '2021-09-21T21:14:40.061Z', 1338);

-- --------------------------------------------------------

--
-- Structure de la table `hsn_phone_cryptotransactions`
--

CREATE TABLE `hsn_phone_cryptotransactions` (
  `owner` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `app` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `amount` longtext COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `hsn_phone_mails`
--

CREATE TABLE `hsn_phone_mails` (
  `id` int(11) ,
  `owner` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `message` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `date` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `app` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Déchargement des données de la table `hsn_phone_mails`
--

INSERT INTO `hsn_phone_mails` (`id`, `owner`, `message`, `date`, `app`) VALUES
(26, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-09-14T14:37:08.064Z', 'Hasan'),
(27, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-09-14T14:37:52.657Z', 'Hasan'),
(28, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-09-14T14:38:09.155Z', 'Hasan');

-- --------------------------------------------------------

--
-- Structure de la table `hsn_phone_messages`
--

CREATE TABLE `hsn_phone_messages` (
  `owner` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `number` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `data` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Déchargement des données de la table `hsn_phone_messages`
--

INSERT INTO `hsn_phone_messages` (`owner`, `number`, `data`, `date`) VALUES
('40f9e375addccb930ff50c533f25c26aad1a5853', '776-8282', '{\"lastmessagetime\":\"2021-09-10T13:00:55.648Z\",\"playerphoto\":\"default\",\"localmessages\":[{\"messagetime\":\"13:56\",\"sender\":\"target\",\"message\":\"Coucou bg ! \"},{\"messagetime\":\"13:56\",\"sender\":\"target\",\"message\":\"fff\"},{\"messagetime\":\"13:57\",\"sender\":\"target\",\"photo\":\"https://media.discordapp.net/attachments/800735373965525076/885856486188806174/screenshot.jpg\",\"message\":\"\"},{\"messagetime\":\"14:43\",\"sender\":\"target\",\"message\":\"pd\"},{\"messagetime\":\"14:43\",\"sender\":\"target\",\"message\":\"ferme le ! \"},{\"messagetime\":\"14:43\",\"sender\":\"me\",\"message\":\"yoyoyo\"},{\"messagetime\":\"14:44\",\"sender\":\"me\",\"message\":\"oui \"},{\"messagetime\":\"14:44\",\"sender\":\"me\",\"photo\":\"https://media.discordapp.net/attachments/800735373965525076/885868443839123486/screenshot.jpg\",\"message\":\"\"},{\"messagetime\":\"14:45\",\"sender\":\"me\",\"message\":\"yo\"},{\"messagetime\":\"14:46\",\"sender\":\"me\",\"message\":\"seF<FF<F\"},{\"messagetime\":\"14:46\",\"sender\":\"me\",\"message\":\"F<SGF<GV<S\"},{\"messagetime\":\"14:46\",\"sender\":\"me\",\"message\":\"SDS\"},{\"messagetime\":\"14:47\",\"sender\":\"me\",\"message\":\"SDFSGFS\"},{\"messagetime\":\"14:47\",\"sender\":\"target\",\"message\":\"yoyo c moi qui envois\"},{\"messagetime\":\"14:47\",\"sender\":\"me\",\"message\":\"SGSGSG\"},{\"messagetime\":\"14:48\",\"sender\":\"me\",\"message\":\"Cc\'est moi\"},{\"messagetime\":\"15:0\",\"sender\":\"me\",\"message\":\"yooyo\"}],\"lastmessage\":\"yooyo\",\"name\":\"SGVSGVB\"}', '2021-09-10 13:00:56'),
('40f9e375addccb930ff50c533f25c26aad1a5853', '502-8632', '{\"localmessages\":[{\"message\":\"yoyoyo\",\"messagetime\":\"14:43\",\"sender\":\"target\"},{\"message\":\"oui \",\"messagetime\":\"14:44\",\"sender\":\"target\"},{\"message\":\"\",\"messagetime\":\"14:44\",\"sender\":\"target\",\"photo\":\"https://media.discordapp.net/attachments/800735373965525076/885868443839123486/screenshot.jpg\"},{\"message\":\"yo\",\"messagetime\":\"14:45\",\"sender\":\"target\"},{\"message\":\"yoyoyo\",\"messagetime\":\"14:46\",\"sender\":\"me\"},{\"message\":\"yoyoyo\",\"messagetime\":\"14:46\",\"sender\":\"target\"},{\"message\":\"ggsg<\",\"messagetime\":\"14:46\",\"sender\":\"me\"},{\"message\":\"ggsg<\",\"messagetime\":\"14:46\",\"sender\":\"target\"},{\"message\":\"seF<FF<F\",\"messagetime\":\"14:46\",\"sender\":\"target\"},{\"message\":\"F<SGF<GV<S\",\"messagetime\":\"14:46\",\"sender\":\"target\"},{\"message\":\"SDS\",\"messagetime\":\"14:46\",\"sender\":\"target\"},{\"message\":\"SDFSGFS\",\"messagetime\":\"14:47\",\"sender\":\"target\"},{\"message\":\"SGSGSG\",\"messagetime\":\"14:47\",\"sender\":\"target\"},{\"message\":\"Cc\'est moi\",\"messagetime\":\"14:48\",\"sender\":\"target\"}],\"lastmessage\":\"Cc\'est moi\",\"lastmessagetime\":\"2021-09-10T12:48:06.449Z\",\"name\":\"SGVSGVB\",\"playerphoto\":\"default\"}', '2021-09-10 12:48:07'),
('a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', '502-8632', '{\"lastmessagetime\":\"2021-09-10T13:00:35.665Z\",\"playerphoto\":\"default\",\"localmessages\":[{\"messagetime\":\"14:43\",\"sender\":\"me\",\"message\":\"pd\"},{\"messagetime\":\"14:43\",\"sender\":\"me\",\"message\":\"ferme le ! \"},{\"messagetime\":\"14:47\",\"sender\":\"me\",\"message\":\"yoyo c moi qui envois\"},{\"messagetime\":\"14:50\",\"sender\":\"me\",\"message\":\"test\"},{\"messagetime\":\"14:51\",\"sender\":\"me\",\"message\":\"test\"},{\"messagetime\":\"14:58\",\"sender\":\"me\",\"message\":\"test\"},{\"messagetime\":\"14:58\",\"sender\":\"me\",\"message\":\"rzqr\"},{\"messagetime\":\"15:0\",\"sender\":\"me\",\"message\":\"cc\"}],\"lastmessage\":\"cc\",\"name\":\"Rap\"}', '2021-09-10 13:00:35'),
('a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', '776-8282', '{\"lastmessagetime\":\"2021-09-10T13:00:31.834Z\",\"playerphoto\":\"default\",\"localmessages\":[{\"messagetime\":\"14:50\",\"sender\":\"target\",\"message\":\"test\"},{\"messagetime\":\"14:51\",\"sender\":\"target\",\"message\":\"test\"},{\"messagetime\":\"14:58\",\"sender\":\"target\",\"message\":\"test\"},{\"messagetime\":\"14:58\",\"sender\":\"me\",\"message\":\"test\"},{\"messagetime\":\"14:58\",\"sender\":\"target\",\"message\":\"test\"},{\"messagetime\":\"14:58\",\"sender\":\"me\",\"message\":\"test\"},{\"messagetime\":\"14:58\",\"sender\":\"target\",\"message\":\"test\"},{\"messagetime\":\"14:58\",\"sender\":\"target\",\"message\":\"rzqr\"},{\"messagetime\":\"15:0\",\"sender\":\"me\",\"message\":\"cc\"}],\"lastmessage\":\"cc\",\"name\":\"Rap\"}', '2021-09-10 13:00:31'),
('a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', '5028632', '{\"name\":\"5028632\",\"lastmessage\":\"\",\"lastmessagetime\":\"2021-09-10T14:50:52.641Z\",\"localmessages\":[{\"messagetime\":\"15:3\",\"sender\":\"me\",\"message\":\"Yo ! \"},{\"messagetime\":\"15:4\",\"sender\":\"target\",\"message\":\"yo\"},{\"messagetime\":\"15:4\",\"sender\":\"me\",\"message\":\"Je renvois\"},{\"photo\":\"https://media.discordapp.net/attachments/800735373965525076/885873344778493952/screenshot.jpg\",\"messagetime\":\"15:4\",\"sender\":\"me\",\"message\":\"\"},{\"messagetime\":\"15:4\",\"sender\":\"target\",\"message\":\"nickel\"},{\"photo\":\"https://media.discordapp.net/attachments/800735373965525076/885874004840284170/screenshot.jpg\",\"messagetime\":\"15:7\",\"sender\":\"me\",\"message\":\"\"},{\"sender\":\"me\",\"messagetime\":\"15:7\",\"gps\":{\"z\":47.38253021240234,\"y\":-31.69147491455078,\"x\":-335.37518310546877},\"message\":\"\"},{\"messagetime\":\"16:50\",\"gps\":{\"z\":13.68075370788574,\"y\":-1560.2408447265626,\"x\":-727.5510864257813},\"sender\":\"me\",\"message\":\"\"}],\"playerphoto\":\"default\"}', '2021-09-10 14:50:52'),
('40f9e375addccb930ff50c533f25c26aad1a5853', '7768282', '{\"name\":\"7768282\",\"lastmessage\":\"\",\"lastmessagetime\":\"2021-09-10T14:50:52.641Z\",\"localmessages\":[{\"messagetime\":\"15:3\",\"sender\":\"target\",\"message\":\"Yo ! \"},{\"messagetime\":\"15:4\",\"sender\":\"me\",\"message\":\"yo\"},{\"messagetime\":\"15:4\",\"sender\":\"target\",\"message\":\"Je renvois\"},{\"photo\":\"https://media.discordapp.net/attachments/800735373965525076/885873344778493952/screenshot.jpg\",\"messagetime\":\"15:4\",\"sender\":\"target\",\"message\":\"\"},{\"messagetime\":\"15:4\",\"sender\":\"me\",\"message\":\"nickel\"},{\"photo\":\"https://media.discordapp.net/attachments/800735373965525076/885874004840284170/screenshot.jpg\",\"messagetime\":\"15:7\",\"sender\":\"target\",\"message\":\"\"},{\"sender\":\"target\",\"messagetime\":\"15:7\",\"gps\":{\"z\":47.38253021240234,\"y\":-31.69147491455078,\"x\":-335.37518310546877},\"message\":\"\"},{\"messagetime\":\"16:50\",\"gps\":{\"z\":13.68075370788574,\"y\":-1560.2408447265626,\"x\":-727.5510864257813},\"sender\":\"target\",\"message\":\"\"}],\"playerphoto\":\"default\"}', '2021-09-10 14:50:52'),
('a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'police', '{\"name\":\"police\",\"lastmessage\":\"wesh ici\",\"lastmessagetime\":\"2021-09-10T14:50:41.718Z\",\"localmessages\":[{\"messagetime\":\"16:50\",\"sender\":\"me\",\"message\":\"wesh ici\"}],\"playerphoto\":\"default\"}', '2021-09-10 14:50:41'),
('884c4af8bd5eb34ed23131a068aee6536e5d04e2', '291231', '{\"name\":\"Martinez\",\"lastmessagetime\":\"2021-09-21T20:15:32.783Z\",\"localmessages\":[{\"messagetime\":\"22:15\",\"sender\":\"me\",\"message\":\"Kaplan\"}],\"lastmessage\":\"Kaplan\",\"playerphoto\":\"default\"}', '2021-09-21 20:15:33'),
('9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67', '215196', '{\"name\":215196,\"lastmessagetime\":\"2021-09-21T20:15:32.783Z\",\"localmessages\":[{\"messagetime\":\"22:15\",\"sender\":\"target\",\"message\":\"Kaplan\"}],\"lastmessage\":\"Kaplan\",\"playerphoto\":\"default\"}', '2021-09-21 20:15:33'),
('a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', '782137', '{\"name\":\"M3ry\",\"localmessages\":[{\"message\":\"T\'es chiants .... \",\"messagetime\":\"19:40\",\"sender\":\"me\"}],\"playerphoto\":\"default\",\"lastmessage\":\"T\'es chiants .... \",\"lastmessagetime\":\"2021-10-05T17:40:07.476Z\"}', '2021-10-05 17:40:03'),
('50e51cf3495e578ed7a08a0a0ad4899820659e6d', '544283', '{\"name\":\"544283\",\"localmessages\":[{\"message\":\"T\'es chiants .... \",\"messagetime\":\"19:40\",\"sender\":\"target\"}],\"playerphoto\":\"default\",\"lastmessage\":\"T\'es chiants .... \",\"lastmessagetime\":\"2021-10-05T17:40:07.476Z\"}', '2021-10-05 17:40:03'),
('a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', '617754', '{\"name\":\"Test\",\"lastmessagetime\":\"2021-10-06T12:22:16.897Z\",\"playerphoto\":\"default\",\"localmessages\":[{\"messagetime\":\"14:11\",\"message\":\"TTest\",\"sender\":\"me\"},{\"messagetime\":\"14:11\",\"message\":\"Test\",\"sender\":\"me\"},{\"messagetime\":\"14:12\",\"message\":\"test\",\"sender\":\"me\"},{\"messagetime\":\"14:22\",\"sender\":\"me\",\"message\":\"test\"}],\"lastmessage\":\"test\"}', '2021-10-06 12:22:13'),
('b875cf1e3861a7a5a19d4d65bbb59172d62f9eb1', '741968', '{\"name\":\"741968\",\"lastmessagetime\":\"2021-10-06T12:22:16.897Z\",\"playerphoto\":\"default\",\"localmessages\":[{\"messagetime\":\"14:12\",\"message\":\"test\",\"sender\":\"target\"},{\"messagetime\":\"14:22\",\"sender\":\"target\",\"message\":\"test\"}],\"lastmessage\":\"test\"}', '2021-10-06 12:22:13');

-- --------------------------------------------------------

--
-- Structure de la table `hsn_phone_notes`
--

CREATE TABLE `hsn_phone_notes` (
  `id` int(11) ,
  `owner` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `noteData` longtext COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `hsn_phone_tweets`
--

CREATE TABLE `hsn_phone_tweets` (
  `id` int(11) ,
  `username` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `message` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `photo` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `likes` int(11) DEFAULT 0,
  `togglelikes` longtext COLLATE utf8_turkish_ci DEFAULT '',
  `flastname` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `date` longtext COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Déchargement des données de la table `hsn_phone_tweets`
--

INSERT INTO `hsn_phone_tweets` (`id`, `username`, `message`, `photo`, `likes`, `togglelikes`, `flastname`, `date`) VALUES
(191, 'John', 'test', '', 1, '{\"a798b0db0ab26d12e0a3abfc84592a56e12d3ddb\":true}', 'Martin Riggs', '2021-09-14T14:30:34.211Z'),
(192, 'Riggs', 'test', '', 1, '{\"a798b0db0ab26d12e0a3abfc84592a56e12d3ddb\":true}', 'Martin Riggs', '2021-09-14T14:32:03.387Z'),
(193, 'Riggs', 'test', '', 0, '', 'Martin Riggs', '2021-09-14T14:32:27.954Z'),
(194, 'Riggs', 'test', '', 0, '', 'Martin Riggs', '2021-09-14T14:33:19.793Z'),
(195, 'John', 'Pas mal le RedLine performance, j\'ai pu y faire amélioré ma bentley. Le patron est simplai mais les prix sont bon.', '', 0, '', 'Frank Garcia', '2021-09-19T16:57:09.120Z'),
(196, 'Riggs', 'Mes chers concitoyens aider moi. Votre maire est détenu par un commandant du LSPD complétement fou et avide de pouvoir ! \n\nLibérez moi !:', '', 0, '', 'Martin Riggs', '2021-09-19T19:23:34.678Z'),
(197, 'redline', 'Bonsoir le Red line est ouvert \nVous pouvez me contacter au 328 859', '', 0, '', 'Francis  Glaze', '2021-09-19T22:32:50.865Z'),
(198, 'ASplazi', 'Quelqu\'un sait si y\'a un dépanneur en ville ? J\'suis en pannne sèche ;(', 'https://media.discordapp.net/attachments/800735373965525076/889965153817354270/screenshot.jpg', 0, '', 'Arthur Splazinov', '2021-09-21T20:04:05.419Z');

-- --------------------------------------------------------

--
-- Structure de la table `hsn_phone_twitter_accounts`
--

CREATE TABLE `hsn_phone_twitter_accounts` (
  `username` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `password` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `photo` longtext COLLATE utf8_turkish_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Déchargement des données de la table `hsn_phone_twitter_accounts`
--

INSERT INTO `hsn_phone_twitter_accounts` (`username`, `password`, `owner`, `photo`) VALUES
('John', '147852369', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'default'),
('rapace', 'Aucundoute0', '40f9e375addccb930ff50c533f25c26aad1a5853', 'default'),
('Riggs', '147852', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'default'),
('redline', '33gazon', '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'default'),
('ASplazi', '1234', '5729f4e918f229acc586fe883b428095737e10f3', '');

-- --------------------------------------------------------

--
-- Structure de la table `inside_jobs`
--

CREATE TABLE `inside_jobs` (
  `id` int(11) ,
  `identifier` varchar(255) CHARACTER SET latin1 ,
  `experience` int(11) ,
  `job` varchar(255) CHARACTER SET latin1 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `inside_jobs`
--

INSERT INTO `inside_jobs` (`id`, `identifier`, `experience`, `job`) VALUES
(8, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 0, 'tastyeats'),
(9, '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1', 0, 'tastyeats'),
(10, '9abff61c6a0c182237ed0d38dd42c082534d6048', 2, 'tastyeats'),
(11, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 0, 'builder'),
(12, 'a4318d034cbbd61326d051adb5dfae7102ff12ec', 0, 'builder'),
(13, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 1, 'tastyeats');

-- --------------------------------------------------------

--
-- Structure de la table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) ,
  `identifier` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `inventories`
--

INSERT INTO `inventories` (`id`, `identifier`, `type`, `data`) VALUES
(17, 'police', 'police', '[{\"label\":\"Bandage Elastique\",\"count\":1,\"name\":\"elastic_bandage\",\"type\":\"item_standard\"},{\"label\":\"Bandage Compressif\",\"count\":2,\"name\":\"quickclot\",\"type\":\"item_standard\"},{\"label\":\"Garrot\",\"count\":14,\"name\":\"tourniquet\",\"type\":\"item_standard\"},{\"label\":\"Cash\",\"count\":8000,\"name\":\"cash\",\"type\":\"item_account\"},{\"label\":\"Doliprane 500\",\"count\":7,\"name\":\"painkillers\",\"type\":\"item_standard\"},{\"label\":\"Bandage\",\"count\":10,\"name\":\"bandage\",\"type\":\"item_standard\"},{\"label\":\"Defibrilateur\",\"count\":1,\"name\":\"defibrilator\",\"type\":\"item_standard\"},{\"label\":\"Epinephrine\",\"count\":1,\"name\":\"epinephrine\",\"type\":\"item_standard\"},{\"label\":\"Boite à outils\",\"count\":2,\"name\":\"toolbox\",\"type\":\"item_standard\"}]'),
(18, 'gav', 'gav', '[]'),
(19, 'CHGR PD1', 'trunk', '[{\"count\":3,\"name\":\"chaser\",\"type\":\"item_standard\"},{\"label\":\"MP5\",\"count\":100,\"name\":\"WEAPON_SMG\",\"type\":\"item_weapon\"},{\"label\":\"Bandage\",\"count\":4,\"name\":\"bandage\",\"type\":\"item_standard\"},{\"label\":\"Bandage Elastique\",\"count\":6,\"name\":\"elastic_bandage\",\"type\":\"item_standard\"},{\"label\":\"Bandage Compressif\",\"count\":5,\"name\":\"quickclot\",\"type\":\"item_standard\"},{\"label\":\"Garrot\",\"count\":4,\"name\":\"tourniquet\",\"type\":\"item_standard\"},{\"label\":\"Atropine\",\"count\":2,\"name\":\"atropine\",\"type\":\"item_standard\"},{\"label\":\"Alcometre\",\"count\":1,\"name\":\"breathalyser\",\"type\":\"item_standard\"},{\"label\":\"Bodybag\",\"count\":1,\"name\":\"bodybag\",\"type\":\"item_standard\"},{\"label\":\"Defibrilateur\",\"count\":1,\"name\":\"defibrilator\",\"type\":\"item_standard\"},{\"label\":\"Epinephrine\",\"count\":2,\"name\":\"epinephrine\",\"type\":\"item_standard\"}]'),
(20, 'redline', 'redline', '[]'),
(21, 'redboss', 'redboss', '[{\"type\":\"item_standard\",\"count\":1,\"name\":\"radio\"}]'),
(22, 'LSPD 07', 'glovebox', '[]'),
(23, 'ZLDM2610', 'glovebox', '[]'),
(24, 'QGNU6853', 'glovebox', '[]'),
(25, 'FPIU PD1', 'trunk', '[]'),
(26, 'bosslspd', 'bosslspd', '[]'),
(27, 'ZQIA2780', 'trunk', '[{\"name\":\"marijuana\",\"count\":100,\"type\":\"item_standard\"}]'),
(28, 'ZQIA2780', 'glovebox', '[{\"name\":\"water\",\"count\":4,\"type\":\"item_standard\"},{\"name\":\"marijuana\",\"count\":12,\"type\":\"item_standard\"},{\"name\":\"phone\",\"count\":1,\"type\":\"item_standard\"}]'),
(29, 'ODNC8085', 'glovebox', '[]'),
(30, 'MAIRE 2', 'glovebox', '[]'),
(31, 'MAIRE 2', 'trunk', '[]'),
(32, 'LSPD 07', 'trunk', '[]'),
(33, 'PD K9 01', 'trunk', '[{\"count\":3,\"name\":\"atropine\",\"type\":\"item_standard\"},{\"count\":1,\"name\":\"breathalyser\",\"type\":\"item_standard\"},{\"count\":2,\"name\":\"elastic_bandage\",\"type\":\"item_standard\"},{\"count\":4,\"name\":\"quickclot\",\"type\":\"item_standard\"},{\"count\":2,\"name\":\"bandage\",\"type\":\"item_standard\"},{\"count\":3,\"name\":\"tourniquet\",\"type\":\"item_standard\"},{\"count\":3,\"name\":\"epinephrine\",\"type\":\"item_standard\"},{\"count\":12,\"name\":\"WEAPON_LBD\",\"type\":\"item_weapon\"},{\"count\":1,\"name\":\"defibrilator\",\"type\":\"item_standard\"},{\"count\":3,\"name\":\"painkillers\",\"type\":\"item_standard\"},{\"count\":1,\"name\":\"packing_bandage\",\"type\":\"item_standard\"}]'),
(34, 'preuve', 'preuve', '[]'),
(35, 'FPIU PD2', 'glovebox', '[]'),
(36, 'TTSI 01', 'glovebox', '[]'),
(37, 'FSIU 02', 'glovebox', '[]'),
(38, 'CHGR PD1', 'glovebox', '[]'),
(39, 'CHR S 01', 'glovebox', '[]');

-- --------------------------------------------------------

--
-- Structure de la table `inventory_glovebox`
--

CREATE TABLE `inventory_glovebox` (
  `id` int(11) ,
  `plate` varchar(8) ,
  `data` text ,
  `owned` int(11) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `inventory_hotbar`
--

CREATE TABLE `inventory_hotbar` (
  `owner` text ,
  `item` text ,
  `slot` int(11)  DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `inventory_hotbar`
--

INSERT INTO `inventory_hotbar` (`owner`, `item`, `slot`) VALUES
('a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'WEAPON_PISTOL', 1);

-- --------------------------------------------------------

--
-- Structure de la table `inventory_lockers`
--

CREATE TABLE `inventory_lockers` (
  `owner` varchar(50) ,
  `lockerName` varchar(50) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `inventory_trunk`
--

CREATE TABLE `inventory_trunk` (
  `id` int(11) ,
  `plate` varchar(8) ,
  `data` text ,
  `owned` int(11) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) ,
  `label` varchar(50) ,
  `weight` int(11)  DEFAULT 1,
  `rare` tinyint(4)  DEFAULT 0,
  `can_remove` tinyint(4)  DEFAULT 1,
  `desc` text DEFAULT NULL,
  `id` int(11) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`, `desc`, `id`) VALUES
('diam', 'Fire Extinguisher Fuel', 2, 0, 1, NULL, 1),
('ammunition_pistol', 'Munitions Pistolet', 1, 0, 1, NULL, 2),
('ammunition_pistol_large', 'Boite de munitions pistolet', 2, 0, 1, NULL, 3),
('ammunition_rifle', 'Munitions Fusils', 2, 0, 1, NULL, 4),
('ammunition_rifle_large', 'Boite Mun Fusils', 2, 0, 1, NULL, 5),
('ammunition_shotgun', 'Cartouche Cal.12', 1, 0, 1, NULL, 6),
('ammunition_shotgun_large', 'Boite Cal.12', 2, 0, 1, NULL, 7),
('ammunition_smg', 'Mun Pistolet Mitrailleur', 1, 0, 1, NULL, 8),
('ammunition_smg_large', 'Boite Mun PM', 2, 0, 1, NULL, 9),
('animal_bait', 'Animal bait', 1, 0, 1, NULL, 10),
('ankletracker', 'Ankle Bracelet Tracker', 1, 0, 1, NULL, 11),
('atropine', 'Atropine', 2, 0, 1, NULL, 12),
('bag', 'Sac', 1, 0, 1, NULL, 13),
('bait', 'Appat de pêche', 2, 0, 1, NULL, 14),
('banana_kush_bag', 'Sac de Banana Kush', 1, 0, 1, NULL, 15),
('banana_kush_joint', 'Joint Banana Kush', 1, 0, 1, NULL, 16),
('bandage', 'Bandage', 1, 0, 1, NULL, 17),
('beer', 'Biere', 1, 0, 1, NULL, 18),
('blood_100', 'Blood 100ml', 3, 0, 1, NULL, 19),
('blood_1000', 'Blood 1000ml', 8, 0, 1, NULL, 20),
('blood_250', 'Blood 250ml', 5, 0, 1, NULL, 21),
('blood_500', 'Blood 500ml', 6, 0, 1, NULL, 22),
('blowpipe', 'Chalumau ', 2, 0, 1, NULL, 23),
('blue_dream_bag', 'Sac de Blue Dream', 1, 0, 1, NULL, 24),
('blue_dream_joint', 'Joint Blue Dream', 1, 0, 1, NULL, 25),
('bodybag', 'Bodybag', 3, 0, 1, NULL, 26),
('boltcutter', 'Coupe boullons', 2, 1, 1, NULL, 27),
('boot', 'Bôtes ', 1, 0, 1, NULL, 28),
('bread', 'Pain', 1, 0, 1, NULL, 29),
('breathalyser', 'Alcometre', 1, 0, 1, NULL, 30),
('cannabis', 'Cannabis', 3, 0, 1, NULL, 31),
('carokit', 'Kit carrosserie ', 3, 0, 1, NULL, 32),
('carotool', 'Outils', 2, 0, 1, NULL, 33),
('cookedMeat', 'Cooked Meat', 1, 0, 1, NULL, 34),
('cubancigar', 'Cigar Cubain', 1, 0, 1, NULL, 35),
('davidoffcigar', 'Cigar DavidOff', 1, 0, 1, NULL, 36),
('deer_horn', 'Deer Horn', 1, 0, 1, NULL, 37),
('defibrilator', 'Defibrilateur', 5, 0, 1, NULL, 38),
('dia_box', 'Boîte de diamants', 2, 0, 1, NULL, 39),
('drummag', 'Chargeur étandue ', 2, 0, 1, NULL, 40),
('elastic_bandage', 'Bandage Elastique', 2, 0, 1, NULL, 41),
('emergency_revive_kit', 'Emergency Revive Kit', 1, 0, 1, NULL, 42),
('epinephrine', 'Epinephrine', 2, 0, 1, NULL, 43),
('fish', 'Colin', 1, 0, 1, NULL, 44),
('fish2', 'Dorade', 2, 0, 1, NULL, 45),
('fish3', 'Saumon', 3, 0, 1, NULL, 46),
('fishingrod', 'Câne à peche', 1, 0, 1, NULL, 47),
('fixkit', 'Kit de réparation', 3, 0, 1, NULL, 48),
('fixtool', 'Outils de réparations', 2, 0, 1, NULL, 49),
('flashlight', 'Lampe Torche', 2, 0, 1, NULL, 50),
('gazbottle', 'Bouteille de gaz', 2, 0, 1, NULL, 51),
('gold_bar', 'Lingo d\'or', 2, 0, 1, NULL, 52),
('grip', 'Poignee', 2, 0, 1, NULL, 53),
('id_card', 'Carte d\'identité', 1, 0, 1, NULL, 54),
('id_card_f', 'Malicious Access Card', 1, 0, 1, NULL, 55),
('joint', 'Joint', 1, 0, 1, NULL, 56),
('laptop_h', 'Ordinateur de pirate', 1, 0, 1, NULL, 57),
('leather_boar_bad', 'Bad boar leather', 1, 0, 1, NULL, 58),
('leather_boar_good', 'Good boar leather', 1, 0, 1, NULL, 59),
('leather_boar_perfect', 'Perfect boar leather', 1, 0, 1, NULL, 60),
('leather_chickenhawk_bad', 'Bad chickenhawl leather', 1, 0, 1, NULL, 61),
('leather_chickenhawk_good', 'Good chickenhawk leather', 1, 0, 1, NULL, 62),
('leather_chickenhawk_perfect', 'Perfect chickenhawk leather', 1, 0, 1, NULL, 63),
('leather_cormorant_bad', 'Bad cormorant leather', 1, 0, 1, NULL, 64),
('leather_cormorant_good', 'Good cormorant leather', 1, 0, 1, NULL, 65),
('leather_cormorant_perfect', 'Perfect cormorant leather', 1, 0, 1, NULL, 66),
('leather_coyote_bad', 'Bad coyote leather', 1, 0, 1, NULL, 67),
('leather_coyote_good', 'Good coyote leather', 1, 0, 1, NULL, 68),
('leather_coyote_perfect', 'Perfect coyote leather', 1, 0, 1, NULL, 69),
('leather_deer_bad', 'Bad deer leather', 1, 0, 1, NULL, 70),
('leather_deer_good', 'Good deer leather', 1, 0, 1, NULL, 71),
('leather_deer_perfect', 'Perfect deer leather', 1, 0, 1, NULL, 72),
('leather_mlion_bad', 'Bad mountain lion leather', 1, 0, 1, NULL, 73),
('leather_mlion_good', 'Good mountain lion leather', 1, 0, 1, NULL, 74),
('leather_mlion_perfect', 'Perfect mountain lion leather', 1, 0, 1, NULL, 75),
('leather_rabbit_bad', 'Bad rabbit leather', 1, 0, 1, NULL, 76),
('leather_rabbit_good', 'Good rabbit leather', 1, 0, 1, NULL, 77),
('leather_rabbit_perfect', 'Perfect rabbit leather', 1, 0, 1, NULL, 78),
('lighter', 'Briquet', 1, 0, 1, NULL, 79),
('lockpick', 'Crochets', 1, 0, 1, NULL, 80),
('mag', 'Magasin', 2, 0, 1, NULL, 81),
('marijuana', 'Marijuana', 2, 0, 1, NULL, 82),
('marlboro', 'Paquet de Marlboro ', 1, 0, 1, NULL, 83),
('marlborocig', 'Cigarette Marlboro', 0, 0, 1, NULL, 84),
('meat', 'Fresh meat', 1, 0, 1, NULL, 85),
('morphin', 'Morphin', 10, 0, 1, NULL, 87),
('og_kush_bag', 'og_kush_bag', 1, 0, 1, NULL, 88),
('og_kush_joint', 'og_kush_joint', 1, 0, 1, NULL, 89),
('packing_bandage', 'Bandage Gaze', 1, 0, 1, NULL, 90),
('painkillers', 'Doliprane 500', 1, 0, 1, NULL, 91),
('pdbadge', 'Badge De Police', 1, 0, 1, NULL, 92),
('phone', 'Téléphone', 1, 0, 1, NULL, 93),
('purple_haze_bag', 'purple_haze_bag', 1, 0, 1, NULL, 94),
('purple_haze_joint', 'purple_haze_joint', 1, 0, 1, NULL, 95),
('quickclot', 'Bandage Compressif', 1, 0, 1, NULL, 96),
('radio', 'Radio', 1, 0, 1, NULL, 97),
('redw', 'Paquet de RedW', 1, 0, 1, NULL, 98),
('redwcig', 'Cigarette RedW', 1, 0, 1, NULL, 99),
('sandwich', 'Sandwich', 1, 0, 1, NULL, 100),
('scope', 'Lunette', 2, 0, 1, NULL, 101),
('secure_card', 'Secure ID Card', 1, 0, 1, NULL, 102),
('skin', 'Stock weapon spray', 2, 0, 1, NULL, 103),
('skin1', 'Dark green weapon spray', 2, 0, 1, NULL, 104),
('skin2', 'Gold weapon spray', 2, 0, 1, NULL, 105),
('skin3', 'Pink and white weapon spray', 2, 0, 1, NULL, 106),
('skin4', 'Beige weapon spray', 2, 0, 1, NULL, 107),
('skin5', 'Dark blue weapon spray', 2, 0, 1, NULL, 108),
('skin6', 'Orange and black weapon spray', 2, 0, 1, NULL, 109),
('skin7', 'Light grey weapon spray', 2, 0, 1, NULL, 110),
('spray', 'Bombe de peinture', 1, 1, 1, NULL, 111),
('spray_remover', 'Nettoyant Peinture', 1, 0, 1, NULL, 112),
('suppressor', 'Supresseur', 2, 0, 1, NULL, 113),
('surgical_kit', 'Surgical Kit', 3, 0, 1, NULL, 114),
('thermal_charge', 'Charge thermique', 1, 0, 1, NULL, 115),
('tourniquet', 'Garrot', 2, 0, 1, NULL, 116),
('water', 'Eau', 1, 0, 1, NULL, 117),
('WEAPON_ADVANCEDRIFLE', 'Advanced Rifle', 3, 0, 1, NULL, 118),
('WEAPON_APPISTOL', 'AP Pistol', 3, 0, 1, NULL, 119),
('WEAPON_ASSAULTRIFLE', 'Assault Rifle', 3, 0, 1, NULL, 120),
('WEAPON_ASSAULTSHOTGUN', 'Assault Shotgun', 3, 0, 1, NULL, 121),
('WEAPON_ASSAULTSMG', 'Assault SMG', 3, 0, 1, NULL, 122),
('WEAPON_AUTOSHOTGUN', 'Auto Shotgun', 3, 0, 1, NULL, 123),
('WEAPON_BAT', 'Batte de baseball', 3, 0, 1, NULL, 124),
('WEAPON_CARBINERIFLE', 'Carbine Rifle', 3, 0, 1, NULL, 125),
('WEAPON_COMBATPISTOL', 'Combat Pistol', 3, 0, 1, NULL, 126),
('WEAPON_FLASHLIGHT', 'Flashlight', 3, 0, 1, NULL, 127),
('WEAPON_KNIFE', 'Knife', 1, 0, 1, NULL, 128),
('WEAPON_NIGHTSTICK', 'Nightstick', 2, 0, 1, NULL, 129),
('WEAPON_PISTOL', 'Pistol', 3, 0, 1, NULL, 130),
('WEAPON_PUMPSHOTGUN', 'Pump Shotgun', 3, 0, 1, NULL, 131),
('WEAPON_SMG', 'SMG', 3, 0, 1, NULL, 132),
('WEAPON_STUNGUN', 'Taser', 3, 0, 1, NULL, 133),
('whiskey', 'Whiskey', 1, 0, 1, NULL, 134),
('white_phone', 'Téléphone', 1, 0, 1, NULL, 135),
('wine', 'Vin', 1, 0, 1, NULL, 136),
('pearl_bouillabaisse', 'Bouillabaisse', 5, 0, 1, 'Plat du pearls', 137),
('pearl_poissonpane', 'Poisson Pané', 2, 0, 1, 'Plat du pearls', 138),
('pearl_filedepoisson', 'Filé de poisson', 1, 0, 1, 'Plat du pearls', 139),
('pearl_saumonfume', 'Saumon Fumé', 1, 0, 1, 'Plat du pearls', 140),
('diner_burger', 'Hamburger', 1, 0, 1, 'Plat du diner', 141),
('diner_drinte', 'Frites', 1, 0, 1, 'Plat du diner', 142),
('diner_potatoes', 'Potatoes', 1, 0, 1, 'Plat du diner', 143),
('diner_bacons', 'Bacons', 1, 0, 1, 'Plat du diner', 144),
('diner_veggie', 'Wrap Veggie', 1, 0, 1, 'Plat du diner', 145),
('poulet_frit', 'Poulet Frit', 1, 0, 1, NULL, 146),
('soda', 'Soda', 1, 0, 1, NULL, 147),
('caffe', 'Caffé ', 1, 0, 1, NULL, 148),
('steak', 'Steak', 1, 0, 1, NULL, 150),
('salade', 'Salade', 1, 0, 1, NULL, 1456),
('tomates', 'Tomates', 1, 0, 1, NULL, 1457),
('cornichons', 'Cornichons', 1, 0, 1, NULL, 1458),
('oignons', 'Oignons', 1, 0, 1, NULL, 1459),
('burger', 'Hamburger', 1, 0, 1, NULL, 1460),
('chaser', 'Chaser Choco Bar', 1, 0, 1, NULL, 1461),
('meteorite', 'Meteorite Choco Bar', 1, 0, 1, NULL, 1462),
('hotdog', 'Hotdog', 1, 0, 1, NULL, 1463),
('taco', 'Taco', 1, 0, 1, NULL, 1464),
('piswasser', 'Pißwasser', 1, 0, 1, NULL, 1465),
('mount_whisky', 'The Mount Whisky', 1, 0, 1, NULL, 1466),
('tequila', 'Tequilya', 1, 0, 1, NULL, 1467),
('nogo_vodka', 'Nogo Vodka', 1, 0, 1, NULL, 1468),
('raine', 'Eau Raine', 1, 0, 1, NULL, 1469),
('bean_machine_coffe', 'Caffé Expresso', 1, 0, 1, NULL, 1470),
('sprunk', 'Sprunk', 1, 0, 1, NULL, 1471),
('cola', 'Cola', 1, 0, 1, NULL, 1472),
('shot_mount_whisky', 'Shot Mount Whisky', 1, 0, 1, NULL, 1473),
('shot_nogo_vodka', 'Shot Nogo Vodka', 1, 0, 1, NULL, 1474),
('shot_tequila', 'Shot Tequilya', 1, 0, 1, NULL, 1475),
('costa_del_perro', 'Costa Del Perro', 1, 0, 1, NULL, 1476),
('rockford_hill', 'Champagne', 1, 0, 1, NULL, 1477),
('vinewood_red', 'Vin Rouge', 1, 0, 1, NULL, 1478),
('vinewood_blanc', 'Vin blanc', 1, 0, 1, NULL, 1479),
('glass_costa_del_perro', 'Glass Costa Del Perro', 1, 0, 1, NULL, 1480),
('glass_rockford_hill', 'Glass Rockford Hill Reserve', 1, 0, 1, NULL, 1481),
('glass_vinewood_red', 'Glass  Vinewood Red Zinfadel', 1, 0, 1, NULL, 1482),
('glass_vinewood_blanc', 'Glass Vinewood Sauvignon Blanc', 1, 0, 1, NULL, 1483),
('oil_bouffe', 'Huile', 1, 0, 1, NULL, 1484),
('patate', 'Pomme de terres', 1, 0, 1, NULL, 1485),
('raisin', 'Raisin', 1, 0, 1, NULL, 1486),
('gand_cru', 'Grand cru', 1, 0, 1, NULL, 1488),
('wine', 'Vin', 1, 0, 1, NULL, 1489),
('handcuff', 'Menottes', 1, 0, 1, NULL, 1490),
('inside-coke', 'Coke emballé pour vente', 1, 0, 1, NULL, 1491),
('inside-opium', 'Opium emballé pour vente', 1, 0, 1, NULL, 1492),
('iside-meth', 'Meth emballé pour la vente', 1, 0, 1, NULL, 1493),
('inside-weed', 'Weed conditionné vente', 1, 0, 1, NULL, 1494),
('mechanic_tools', 'Outils de Mécano', 1, 0, 1, NULL, 1495),
('toolbox', 'Boite à outils', 1, 0, 1, NULL, 1496),
('turbo_lvl_1', 'GARET Turbo', 1, 0, 1, NULL, 1497),
('race_transmition', 'Race Transmition', 1, 0, 1, NULL, 1498),
('race_suspension', 'Race Suspension', 1, 0, 1, NULL, 1499),
('v8engine', 'V8 Engine', 1, 0, 1, NULL, 1500),
('diam(\'2jzengine\', \'2JZ Engine\', 1, 0, 1),\r\n', '2JZ Engine', 1, 0, 1, NULL, 1501),
('michelin_tires', 'Michelin Tires', 1, 0, 1, NULL, 1502),
('race_brakes', 'Race Breaks', 1, 0, 1, NULL, 1503),
('spray', 'Bombe de peinture', 1, 1, 1, NULL, 1504),
('spray_remover', 'Nettoyant Peinture', 1, 0, 1, NULL, 1505),
('copper', 'Cuivre', 1, 0, 1, NULL, 1512),
('iron', 'Fer', 1, 0, 1, NULL, 1513),
('diamond', 'Diamant', 1, 0, 1, NULL, 1515),
('nos', 'Nitro', 3, 0, 1, NULL, 1525),
('stock_transmition', 'Transmition Basique', 2, 0, 1, NULL, 1526),
('stock_suspension', 'Suspenssion Basique', 2, 0, 1, NULL, 1527),
('stock_oil', 'Huile Moteur Basique', 1, 0, 1, NULL, 1528),
('shell_oil', 'Huile Moteur Luxe', 2, 0, 1, NULL, 1529),
('stock_engine', 'Moteur Basique', 5, 0, 1, NULL, 1530),
('stock_tires', 'Pneu Basique', 1, 0, 1, NULL, 1531),
('stock_brakes', 'Freins de Base', 1, 0, 1, NULL, 1532),
('rubber', 'Caoutchouc', 1, 0, 1, NULL, 1534),
('piston', 'Piston', 1, 0, 1, NULL, 1535),
('clip', 'Munitions', 2, 0, 1, NULL, 1536),
('LaundryCard', 'Carte de Laverie ', 1, 0, 1, NULL, 1537),
('WorkPermit', 'Permis de travail \"Auto Repairs Mirror Park\"', 1, 0, 1, NULL, 1538),
('card1', 'Carte a collectionner ', 0, 0, 1, NULL, 1539),
('card2', 'Carte a collectionner ', 0, 0, 1, NULL, 1540),
('card3', 'Carte a collectionner ', 0, 0, 1, NULL, 1541),
('card4', 'Carte a collectionner ', 0, 0, 1, NULL, 1542),
('card5', 'Carte a collectionner ', 0, 0, 1, NULL, 1543),
('card6', 'Carte a collectionner ', 0, 0, 1, NULL, 1544),
('card7', 'Carte a collectionner ', 0, 0, 1, NULL, 1545),
('card8', 'Carte a collectionner ', 0, 0, 1, NULL, 1546),
('card9', 'Carte a collectionner ', 0, 0, 1, NULL, 1547),
('boosterpack', 'Paque de carte', 1, 0, 1, NULL, 1548),
('gym_membership', 'Carte de Gym', 1, 0, 1, NULL, 1549),
('zipties', 'Menottes Plastique', 1, 0, 1, NULL, 1550),
('scissors', 'Ciseaux', 1, 0, 1, NULL, 1551),
('ziptieremover', 'Coupe Menotte', 1, 0, 1, NULL, 1552),
('weapon_m700', 'M700', 1, 0, 1, NULL, 1553),
('weapon_g19', 'Glock 19', 1, 0, 1, NULL, 1554),
('weapon_fbiarb', 'AR15 ', 1, 0, 1, NULL, 1555),
('weapon_hk416b', 'HK 416', 1, 0, 1, NULL, 1556),
('drill', 'Perceuse', 5, 0, 1, NULL, 1557),
('cutter', 'Coupe vitre', 1, 0, 1, NULL, 1559),
('c4_bomb', 'Pain de C4', 1, 0, 1, NULL, 1560),
('thermite_bomb', 'Thermite', 1, 0, 1, NULL, 1561),
('laptop', 'Ordinateur', 3, 0, 1, NULL, 1562),
('hack_usb', 'Panneau de hacking', 1, 0, 1, NULL, 1563),
('gold', 'Or', 1, 0, 1, NULL, 1564),
('coke_pooch', 'Pochon de coke', 1, 0, 1, NULL, 1565),
('key1', 'Clé 1 ', 1, 0, 1, NULL, 1566),
('key2', 'Clé 2', 1, 0, 1, NULL, 1567),
('sling', 'Sangle', 1, 0, 1, NULL, 1568),
('armor', 'Armor', 1, 0, 1, NULL, 1569),
('lightsmg_clip', 'Magasin LMG', 1, 0, 1, NULL, 1570),
('pistol_clip', 'Magasin Pistolet', 1, 0, 1, NULL, 1571),
('rifle_clip', 'Magasin AR', 1, 0, 1, NULL, 1572),
('shotgun_clip', 'Cartouche 12.', 1, 0, 1, NULL, 1573),
('smg_clip', 'Magasin PM', 1, 0, 1, NULL, 1574),
('sniper_clip', 'Balles de fusil', 1, 0, 1, NULL, 1575),
('weapon_clip_extended', 'Chargeur étandu', 1, 0, 1, NULL, 1576),
('weapon_flashlight', 'Lampe pour arme', 1, 0, 1, NULL, 1577),
('weapon_suppressor', 'Silencieux', 1, 0, 1, NULL, 1578),
('towing_rope', 'Cable de remorquage', 1, 0, 1, NULL, 1579),
('black_wallet', 'PorteFeuille Noir', 1, 0, 1, NULL, 1580),
('green_wallet', 'PorteFeuille Vert', 1, 0, 1, NULL, 1581),
('standart_wallet', 'PorteFeuille', 1, 0, 1, NULL, 1582),
('gray_wallet', 'PorteFeuille Gris', 1, 0, 1, NULL, 1583),
('cannabis', 'Cannabis', 3, 0, 1, NULL, 1584),
('marijuana', 'Marijuana', 2, 0, 1, NULL, 1585),
('chemicals', 'Chemicals', 1, 0, 1, NULL, 1586),
('chemicalslisence', 'Chemicals license', 0, 0, 1, NULL, 1587),
('moneywash', 'MoneyWash License', 0, 0, 1, NULL, 1588),
('coca_leaf', 'Coca Leaf', 3, 0, 1, NULL, 1589),
('coke', 'Coke', 3, 0, 1, NULL, 1590),
('poppyresin', 'Poppy Resin', 1, 0, 1, NULL, 1591),
('heroin', 'Heroin', 2, 0, 1, NULL, 1592),
('lsa', 'LSA', 1, 0, 1, NULL, 1593),
('lsd', 'LSD', 1, 0, 1, NULL, 1594),
('meth', 'Meth', 3, 0, 1, NULL, 1595),
('hydrochloric_acid', 'HydroChloric Acid', 2, 0, 1, NULL, 1596),
('sodium_hydroxide', 'Sodium Hydroxide', 2, 0, 1, NULL, 1597),
('sulfuric_acid', 'Sulfuric Acid', 2, 0, 1, NULL, 1598),
('thionyl_chloride', 'Thionyl Chloride', 1, 0, 1, NULL, 1599),
('cartridge', 'Mun Taser', 5, 0, 1, NULL, 1600),
('sacbillets', 'Sac de Billets', 100, 0, 1, NULL, 1601),
('patochebeer', 'Patoche Beer', 5, 0, 1, NULL, 1602),
('dvrcocktail', 'DVR cocktail', 5, 0, 1, NULL, 1603),
('milkdragon', 'Milk dragon', 5, 0, 1, NULL, 1604),
('duffbeer', 'Duff beer', 5, 0, 1, NULL, 1605),
('jamesbondcocktail', 'Jamesbond Cocktail', 5, 0, 1, NULL, 1606),
('scarfacecolada', 'Scarface Colada', 5, 0, 1, NULL, 1607),
('onepunchman', 'One Punch Man Cocktail', 5, 0, 1, NULL, 1608),
('dragonballcocktail', 'Dragon ball Cocktail', 5, 0, 1, NULL, 1609),
('hulkcockail', 'Hulk Cockail', 5, 0, 1, NULL, 1610),
('vitodaiquiri', 'Vito Daiquiri', 5, 0, 1, NULL, 1611),
('marvelcocktail', 'Marvel Cocktail', 5, 0, 1, NULL, 1612),
('yoshishooter', 'Yoshi shooter', 5, 0, 1, NULL, 1613);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) ,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1)  DEFAULT 0,
  `handyservice` varchar(2)  DEFAULT '0',
  `hasapp` int(2)  DEFAULT 0,
  `onlyboss` int(2)  DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`, `handyservice`, `hasapp`, `onlyboss`) VALUES
('ambulance', 'EMS', 1, '0', 0, 0),
('brinks', 'Brinks', 0, '0', 0, 0),
('builder', 'Entreprise BTP', 0, '0', 0, 0),
('busdriver', 'Chauffeur de bus', 0, '0', 0, 0),
('cardealer', 'Cardealer', 0, '0', 0, 0),
('courier', 'Postier', 0, '0', 0, 0),
('cyber', 'cyber', 1, '0', 0, 0),
('diner', 'Diner', 1, '0', 0, 0),
('farmer', 'Fermier', 0, '0', 0, 0),
('fisherman', 'Pêcheur', 0, '0', 0, 0),
('fruitpicker', 'Saisonnier', 0, '0', 0, 0),
('fueler', 'Raffineur', 0, '0', 0, 0),
('gardener', 'Jardinier', 0, '0', 0, 0),
('gym', 'LA FITNESS', 0, '0', 0, 0),
('lumberjack', 'Bûcheron', 0, '0', 0, 0),
('maire', 'Mairie', 1, '0', 0, 0),
('mechanic', 'Mechano', 1, '0', 0, 0),
('miner', 'Mineur', 0, '0', 0, 0),
('offduty', 'Hors service', 1, '0', 0, 0),
('pearl', 'Pearls', 1, '0', 0, 0),
('pilot', 'Pilot', 0, '0', 0, 0),
('police', 'LSPD', 1, '0', 0, 0),
('redline', 'RedLine Performance', 1, '0', 0, 0),
('reporter', 'Journaliste', 0, '0', 0, 0),
('sheriff', 'sheriff', 0, '0', 0, 0),
('slaughterer', 'Abatteur', 0, '0', 0, 0),
('tailor', 'Couturier', 0, '0', 0, 0),
('tastyeats', 'Tasty Eats', 0, '0', 0, 0),
('taxi', 'Park Auto LS', 1, '0', 0, 0),
('unemployed', 'Chommeur', 0, '0', 0, 0),
('vigne', 'Vigneron', 1, '0', 0, 0),
('yellowjack', 'Yellow Jack', 1, '0', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) ,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) ,
  `name` varchar(50) ,
  `label` varchar(50) ,
  `salary` int(11) ,
  `skin_male` longtext ,
  `skin_female` longtext 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 10, '{}', '{}'),
(22, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(23, 'ambulance', 1, 'doctor', 'Docteur', 40, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(24, 'ambulance', 2, 'chief_doctor', 'Docteur Chef', 60, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(25, 'ambulance', 3, 'boss', 'Chef EMS', 80, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(26, 'mechanic', 0, 'recrue', 'Recruit', 12, '{}', '{}'),
(27, 'mechanic', 1, 'novice', 'Novice', 24, '{}', '{}'),
(28, 'mechanic', 2, 'experimente', 'Experienced', 36, '{}', '{}'),
(29, 'mechanic', 3, 'chief', 'Leader', 48, '{}', '{}'),
(30, 'mechanic', 4, 'boss', 'Boss', 0, '{}', '{}'),
(31, 'taxi', 0, 'recrue', 'Recruit', 12, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(32, 'taxi', 1, 'novice', 'Cabby', 24, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(33, 'taxi', 2, 'experimente', 'Experienced', 36, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(34, 'taxi', 3, 'uber', 'Uber Cabby', 48, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(35, 'taxi', 4, 'boss', 'Lead Cabby', 0, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(36, 'offduty', 0, 'offduty', 'Offduty', 0, '{}', '{}'),
(37, 'gardener', 0, 'gardener', 'Worker', 250, '{}', '{}'),
(38, 'farmer', 0, 'farmer', 'Farmer', 250, '{}', '{}'),
(39, 'fruitpicker', 0, 'fruitpicker', 'Arbeiter', 250, '{}', '{}'),
(40, 'police', 0, 'recruit', 'PI', 500, '', ''),
(41, 'police', 1, 'p2', 'PII', 900, '', ''),
(42, 'police', 2, 'p3', 'PIII', 1200, '', ''),
(43, 'police', 3, 'p3plus1', 'PIII+1', 1500, '', ''),
(44, 'police', 4, 'sgt', 'Sergent I', 1600, '', ''),
(45, 'police', 5, 'sgt2', 'Sergent II', 2000, '', ''),
(46, 'police', 6, 'sgt3', 'Sergent III', 2500, '', ''),
(47, 'police', 7, 'det1', 'Detective I', 1700, '', ''),
(48, 'police', 8, 'det2', 'Detective II', 1900, '', ''),
(49, 'police', 9, 'det3', 'Detective III', 2100, '', ''),
(50, 'police', 10, 'lieutenant', 'Lieutenant', 2600, '', ''),
(51, 'police', 11, 'capitaine', 'Capitaine', 3200, '', ''),
(52, 'police', 12, 'boss', 'Commandant', 3500, '', ''),
(573, 'tastyeats', 0, 'worker', 'Food Provider', 150, '{}', '{}'),
(1012, 'pearl', 0, 'stagiaire', 'Stagiaire', 500, '', ''),
(1013, 'pearl', 1, 'serveur', 'Serveur', 700, '', ''),
(1014, 'pearl', 2, 'salle', 'Maitre de salle', 1000, '', ''),
(1015, 'pearl', 3, 'cuisto', 'Cuisinier', 1500, '', ''),
(1016, 'pearl', 4, 'chef', 'Chef-Cuisinier', 2000, '', ''),
(1017, 'pearl', 5, 'boss', 'Patron', 2200, '', ''),
(1018, 'diner', 0, 'stagiaire', 'Stagiaire', 500, '', ''),
(1019, 'diner', 1, 'serveur', 'Serveur', 600, '', ''),
(1020, 'diner', 2, 'cuisto', 'Cuisto', 700, '', ''),
(1021, 'diner', 3, 'boss', 'Patron', 800, '', ''),
(1022, 'vigne', 0, 'recrue', 'Intérimaire', 500, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(1023, 'vigne', 1, 'novice', 'Vigneron', 750, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(1024, 'vigne', 2, 'cdisenior', 'Chef de chai', 1200, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(1025, 'vigne', 3, 'boss', 'Patron', 1600, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(1026, 'pilot', 0, 'hobbypilot', 'Hobbypilot', 60, '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":0,\"torso_2\":0,\"arms\":0,\"pants_1\":0,\"pants_2\":0,\"glasses\":0,\"glasses_1\":0,\"glasses_2\":0,\"decals_1\":0,\"decals_2\":0,\"hair_color_1\":0,\"hair_color_2\":0,\"helmet_1\":0,\"helmet_2\":0,\"hair_1\":0,\"hair_2\":0,\"face\":0,\"shoes\":0,\"skin\":0,\"sex\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":0,\"torso_2\":0,\"arms\":0,\"pants_1\":0,\"pants_2\":0,\"decals_1\":0,\"decals_2\":0,\"hair_color_1\":0,\"hair_color_2\":0,\"shoes\":0,\"helmet_1\":0,\"helmet_2\":0,\"hair_1\":0,\"hair_2\":0,\"face\":0,\"skin\":0,\"sex\":1,\"glasses_1\":0,\"glasses_2\":0,\"glasses\":0}'),
(1027, 'pilot', 1, 'freightpilot', 'Freightpilot', 80, '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":0,\"torso_2\":0,\"arms\":0,\"pants_1\":0,\"pants_2\":0,\"glasses\":0,\"glasses_1\":0,\"glasses_2\":0,\"decals_1\":0,\"decals_2\":0,\"hair_color_1\":0,\"hair_color_2\":0,\"helmet_1\":0,\"helmet_2\":0,\"hair_1\":0,\"hair_2\":0,\"face\":0,\"shoes\":0,\"skin\":0,\"sex\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":0,\"torso_2\":0,\"arms\":0,\"pants_1\":0,\"pants_2\":0,\"decals_1\":0,\"decals_2\":0,\"hair_color_1\":0,\"hair_color_2\":0,\"shoes\":0,\"helmet_1\":0,\"helmet_2\":0,\"hair_1\":0,\"hair_2\":0,\"face\":0,\"skin\":0,\"sex\":1,\"glasses_1\":0,\"glasses_2\":0,\"glasses\":0}'),
(1028, 'pilot', 2, 'airlinepilot', 'Airlinepilot', 150, '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":0,\"torso_2\":0,\"arms\":0,\"pants_1\":0,\"pants_2\":0,\"glasses\":0,\"glasses_1\":0,\"glasses_2\":0,\"decals_1\":0,\"decals_2\":0,\"hair_color_1\":0,\"hair_color_2\":0,\"helmet_1\":0,\"helmet_2\":0,\"hair_1\":0,\"hair_2\":0,\"face\":0,\"shoes\":0,\"skin\":0,\"sex\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":0,\"torso_2\":0,\"arms\":0,\"pants_1\":0,\"pants_2\":0,\"decals_1\":0,\"decals_2\":0,\"hair_color_1\":0,\"hair_color_2\":0,\"shoes\":0,\"helmet_1\":0,\"helmet_2\":0,\"hair_1\":0,\"hair_2\":0,\"face\":0,\"skin\":0,\"sex\":1,\"glasses_1\":0,\"glasses_2\":0,\"glasses\":0}'),
(1029, 'lumberjack', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(1030, 'fisherman', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(1031, 'fueler', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(1032, 'reporter', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(1033, 'tailor', 0, 'employee', 'Intérimaire', 0, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(1034, 'miner', 0, 'employee', 'Intérimaire', 0, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(1035, 'slaughterer', 0, 'employee', 'Intérimaire', 0, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(1036, 'redline', 0, 'stagiaire', 'Stagiaire ', 100, '', ''),
(1037, 'redline', 1, 'salarier', 'Salarié', 200, '', ''),
(1038, 'redline', 2, 'cadre', 'Cadre', 300, '', ''),
(1039, 'redline', 3, 'vpee', 'Co Patron', 400, '', ''),
(1040, 'redline', 4, 'boss', 'Patron', 500, '', ''),
(1041, 'maire', 0, 'boss', 'Maire', 0, '', ''),
(1042, 'gym', 0, 'stagiaire', 'Stagiaire', 500, '', ''),
(1043, 'gym', 1, 'maitren', 'Maitre Nageur', 600, '', ''),
(1044, 'gym', 2, 'coach', 'Coach', 700, '', ''),
(1045, 'gym', 3, 'boss', 'Patron', 800, '', ''),
(1051, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(1052, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(1053, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(1054, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(1055, 'builder', 0, 'btp', 'BTP', 0, '', ''),
(1056, 'busdriver', 0, 'BusDriver', 'BusDriver', 0, '', ''),
(1057, 'courier', 0, 'courier', 'Postier', 0, '', ''),
(1058, 'yellowjack', 0, 'stagiaire', 'Stagiaire', 500, '', ''),
(1059, 'yellowjack', 1, 'barman', 'Barman', 600, '', ''),
(1060, 'yellowjack', 2, 'cuisto', 'Cuisto', 700, '', ''),
(1061, 'yellowjack', 3, 'manager', 'Manager', 900, '', ''),
(1062, 'yellowjack', 4, 'boss', 'Patron', 1200, '', ''),
(1063, 'sheriff', 0, 'recruit', 'Recrue', 0, '', ''),
(1064, 'sheriff', 1, 'patrouilleur', 'Patrouilleur', 50, '', ''),
(1065, 'sheriff', 2, 'caporal', 'Caporal', 100, '', ''),
(1066, 'sheriff', 3, 'sergeant', 'Sergeant ', 150, '', ''),
(1067, 'sheriff', 4, 'detective', 'Detective', 200, '', ''),
(1068, 'sheriff', 5, 'lieutenant', 'Lieutenant', 250, '', ''),
(1069, 'sheriff', 6, 'boss', 'Commandant', 300, '', ''),
(1071, 'brinks', 0, 'chauffeur', 'Chauffeur', 400, '{\"pants_1\":9,\"tshirt_2\":0,\"torso_2\":15,\"torso_1\":0,\"shoes_1\":8,\"pants_2\":1}\r\n', '{\"pants_1\":9,\"tshirt_2\":0,\"torso_2\":15,\"torso_1\":0,\"shoes_1\":8,\"pants_2\":1}\r\n'),
(1072, 'brinks', 1, 'secu', 'Sécurité', 600, '{\"pants_1\":9,\"tshirt_2\":0,\"torso_2\":15,\"torso_1\":0,\"shoes_1\":8,\"pants_2\":1}\r\n', '{\"pants_1\":9,\"tshirt_2\":0,\"torso_2\":15,\"torso_1\":0,\"shoes_1\":8,\"pants_2\":1}\r\n'),
(1073, 'brinks', 2, 'convoyeur', 'Convoyeur', 600, '{\"pants_1\":9,\"tshirt_2\":0,\"torso_2\":15,\"torso_1\":0,\"shoes_1\":8,\"pants_2\":1}\r\n', '{\"pants_1\":9,\"tshirt_2\":0,\"torso_2\":15,\"torso_1\":0,\"shoes_1\":8,\"pants_2\":1}\r\n'),
(1074, 'brinks', 3, 'boss', 'Patron', 600, '{\"pants_1\":9,\"tshirt_2\":0,\"torso_2\":15,\"torso_1\":0,\"shoes_1\":8,\"pants_2\":1}\r\n', '{\"pants_1\":9,\"tshirt_2\":0,\"torso_2\":15,\"torso_1\":0,\"shoes_1\":8,\"pants_2\":1}\r\n'),
(1075, 'cyber', 0, 'barman', 'cybertender', 300, '{}', '{}'),
(1076, 'cyber', 1, 'dancer', 'Dancer', 300, '{}', '{}'),
(1077, 'cyber', 2, 'viceboss', 'Co-Manager', 500, '{}', '{}'),
(1078, 'cyber', 3, 'boss', 'Manager', 600, '{}', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) ,
  `label` varchar(60) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('hunt', 'Hunting License'),
('weapon', 'Weapon License'),
('weed_processing', 'Weed Processing License');

-- --------------------------------------------------------

--
-- Structure de la table `loaf_keys`
--

CREATE TABLE `loaf_keys` (
  `unique_id` varchar(15) ,
  `key_id` varchar(255) ,
  `identifier` varchar(255) ,
  `key_data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `mapbuilder`
--

CREATE TABLE `mapbuilder` (
  `id` int(11) ,
  `objectHash` varchar(255) DEFAULT NULL,
  `locX` float DEFAULT NULL,
  `locY` float DEFAULT NULL,
  `locZ` float DEFAULT NULL,
  `heading` float DEFAULT NULL,
  `freeze` tinytext DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `okokbanking_societies`
--

CREATE TABLE `okokbanking_societies` (
  `society` varchar(255) DEFAULT NULL,
  `society_name` varchar(255) DEFAULT NULL,
  `value` int(50) DEFAULT NULL,
  `iban` varchar(255) ,
  `is_withdrawing` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `okokbanking_societies`
--

INSERT INTO `okokbanking_societies` (`society`, `society_name`, `value`, `iban`, `is_withdrawing`) VALUES
('society_police', 'LSPD', 30000000, 'ASLSPD', 0),
('society_redline', 'RedLine', NULL, 'ASREDLINE', 0);

-- --------------------------------------------------------

--
-- Structure de la table `okokbanking_transactions`
--

CREATE TABLE `okokbanking_transactions` (
  `id` int(11) ,
  `receiver_identifier` varchar(255) ,
  `receiver_name` varchar(255) ,
  `sender_identifier` varchar(255) ,
  `sender_name` varchar(255) ,
  `date` varchar(255) ,
  `value` int(50) ,
  `type` varchar(255) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `okokbanking_transactions`
--

INSERT INTO `okokbanking_transactions` (`id`, `receiver_identifier`, `receiver_name`, `sender_identifier`, `sender_name`, `date`, `value`, `type`) VALUES
(1, 'bank', 'Bank (IBAN)', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'John Sheppard', '2021-09-06 16:36:52', 5000, 'transfer'),
(2, 'bank', 'Bank (PIN)', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'John Sheppard', '2021-09-06 16:36:55', 1000, 'transfer'),
(3, 'society_police', 'LSPD', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'John Sheppard', '2021-09-06 16:38:25', 200000, 'transfer'),
(4, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'John Sheppard', 'bank', 'Bank Account', '2021-09-06 17:04:39', 3000, 'withdraw'),
(5, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'John Sheppard', 'salary', 'Salary', '2021-09-06 17:10:33', 3500, 'transfer'),
(6, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-07 18:48:04', 2500, 'transfer'),
(8, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-07 19:28:04', 2500, 'transfer'),
(10, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-08 20:45:03', 250, 'transfer'),
(11, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-09 16:31:49', 250, 'transfer'),
(12, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-09 17:11:49', 250, 'transfer'),
(13, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-09 17:51:49', 250, 'transfer'),
(14, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-09 18:31:49', 250, 'transfer'),
(15, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-09 19:11:49', 250, 'transfer'),
(16, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-09 19:51:49', 250, 'transfer'),
(17, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-09 20:31:49', 250, 'transfer'),
(18, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-10 11:43:11', 250, 'transfer'),
(19, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-10 12:55:52', 250, 'transfer'),
(21, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-10 14:23:42', 2500, 'transfer'),
(23, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-10 16:28:56', 2500, 'transfer'),
(24, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-10 17:08:56', 2500, 'transfer'),
(26, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-11 17:15:41', 2500, 'transfer'),
(27, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-11 20:11:33', 2200, 'transfer'),
(28, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-11 21:20:25', 3200, 'transfer'),
(30, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-12 00:40:22', 2200, 'transfer'),
(31, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-12 01:20:22', 2200, 'transfer'),
(32, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-12 02:00:22', 2200, 'transfer'),
(33, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-12 02:40:22', 2200, 'transfer'),
(34, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-12 14:20:01', 2200, 'transfer'),
(35, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'salary', 'Salary', '2021-09-12 17:58:32', 1600, 'transfer'),
(37, 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c', 'Dimitry Sokove', 'salary', 'Salary', '2021-09-13 19:25:54', 10, 'transfer'),
(38, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-13 19:25:54', 3500, 'transfer'),
(39, 'bank', 'Bank (PIN)', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', '2021-09-13 19:56:43', 1000, 'transfer'),
(40, 'bank', 'Bank (PIN)', 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c', 'Dimitry Sokove', '2021-09-13 19:56:55', 1000, 'transfer'),
(41, 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c', 'Dimitry Sokove', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', '2021-09-13 19:57:22', 1000, 'transfer'),
(42, 'society_police', 'LSPD', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', '2021-09-13 19:57:57', 2000000000, 'transfer'),
(43, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'bank', 'Bank Account', '2021-09-13 19:58:45', 100, 'withdraw'),
(44, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'society_police', 'LSPD', '2021-09-13 20:00:28', 500200000, 'withdraw'),
(45, 'society_police', 'LSPD', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', '2021-09-13 20:00:38', 15000000, 'deposit'),
(46, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'bank', 'Bank Account', '2021-09-13 20:01:03', 15000000, 'withdraw'),
(47, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'bank', 'Bank Account', '2021-09-13 20:01:10', 1485027000, 'withdraw'),
(48, 'bank', 'Bank Account', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', '2021-09-13 20:01:16', 30000, 'deposit'),
(49, 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c', 'Dimitry Sokove', 'salary', 'Salary', '2021-09-13 20:25:15', 10, 'transfer'),
(50, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-13 21:05:15', 3500, 'transfer'),
(51, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-13 21:45:15', 3500, 'transfer'),
(52, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-13 23:59:15', 150, 'transfer'),
(53, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-14 16:54:25', 150, 'transfer'),
(54, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'bank', 'Bank Account', '2021-09-14 17:01:14', 200, 'withdraw'),
(55, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'bank', 'Bank Account', '2021-09-14 17:01:52', 2000, 'withdraw'),
(56, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-14 17:34:25', 150, 'transfer'),
(57, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-14 18:14:25', 1200, 'transfer'),
(58, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-14 18:54:25', 1200, 'transfer'),
(59, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-14 19:34:25', 1200, 'transfer'),
(60, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-14 20:14:25', 1200, 'transfer'),
(61, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-15 01:46:32', 1200, 'transfer'),
(62, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'bank', 'Bank Account', '2021-09-15 18:17:56', 200, 'withdraw'),
(63, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'bank', 'Bank Account', '2021-09-17 17:58:20', 200, 'withdraw'),
(64, '40f9e375addccb930ff50c533f25c26aad1a5853', 'Willy Willsons', 'salary', 'Salary', '2021-09-17 23:55:32', 10, 'transfer'),
(65, '40f9e375addccb930ff50c533f25c26aad1a5853', 'Willy Willsons', 'salary', 'Salary', '2021-09-18 00:35:32', 10, 'transfer'),
(66, '40f9e375addccb930ff50c533f25c26aad1a5853', 'Willy Willsons', 'salary', 'Salary', '2021-09-18 01:15:32', 10, 'transfer'),
(67, '40f9e375addccb930ff50c533f25c26aad1a5853', 'Willy Willsons', 'salary', 'Salary', '2021-09-18 01:55:32', 10, 'transfer'),
(68, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'bank', 'Bank Account', '2021-09-18 02:00:22', 2000, 'withdraw'),
(69, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'bank', 'Bank Account', '2021-09-18 16:21:44', 5000, 'withdraw'),
(70, '9abff61c6a0c182237ed0d38dd42c082534d6048', 'Leon', 'salary', 'Salary', '2021-09-18 17:43:13', 10, 'transfer'),
(71, '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'Francis  Glaze', 'bank', 'Bank Account', '2021-09-18 18:35:10', 800, 'withdraw'),
(72, '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'Francis  Glaze', 'bank', 'Bank Account', '2021-09-18 18:54:36', 1500, 'withdraw'),
(73, 'bank', 'Bank (PIN)', '40f9e375addccb930ff50c533f25c26aad1a5853', 'Willy Willsons', '2021-09-18 19:06:50', 1000, 'transfer'),
(74, 'society_police', 'LSPD', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', '2021-09-18 19:07:32', 15000000, 'transfer'),
(75, '40f9e375addccb930ff50c533f25c26aad1a5853', 'Willy Willsons', 'bank', 'Bank Account', '2021-09-18 19:08:31', 2000, 'withdraw'),
(76, 'society_redline', 'RedLine', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', '2021-09-18 19:31:48', 250000, 'transfer'),
(77, 'bank', 'Bank Account', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', '2021-09-18 19:37:45', 250000, 'deposit'),
(78, '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'Francis  Glaze', 'salary', 'Salary', '2021-09-18 19:43:13', 500, 'transfer'),
(79, '32aaa2b60991920d25a84a04da9d816149a5bdf3', '[FRA] John Falcon', 'salary', 'Salary', '2021-09-19 01:43:13', 10, 'transfer'),
(80, 'bb41a782fc32129bf8e702a7b0dfce2d93ea20a4', 'Mike Curtis', 'salary', 'Salary', '2021-09-19 15:03:14', 10, 'transfer'),
(81, '9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67', 'Frédérico Martinez | Turonium', 'salary', 'Salary', '2021-09-19 15:03:14', 10, 'transfer'),
(82, '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'Francis  Glaze', 'salary', 'Salary', '2021-09-19 15:43:14', 500, 'transfer'),
(83, 'bank', 'Bank (PIN)', '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'Francis  Glaze', '2021-09-19 16:09:24', 1000, 'transfer'),
(84, '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'Francis  Glaze', 'bank', 'Bank Account', '2021-09-19 16:11:58', 2000, 'withdraw'),
(85, 'bb41a782fc32129bf8e702a7b0dfce2d93ea20a4', 'John Curtis', 'bank', 'Bank Account', '2021-09-19 16:20:51', 6000, 'withdraw'),
(86, 'bb41a782fc32129bf8e702a7b0dfce2d93ea20a4', 'John Curtis', 'salary', 'Salary', '2021-09-19 16:23:14', 10, 'transfer'),
(87, '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1', 'Reyel O\'Connel', 'salary', 'Salary', '2021-09-19 16:23:14', 10, 'transfer'),
(88, '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'Francis  Glaze', 'salary', 'Salary', '2021-09-19 16:23:14', 500, 'transfer'),
(89, 'bb41a782fc32129bf8e702a7b0dfce2d93ea20a4', 'John Curtis', 'bank', 'Bank Account', '2021-09-19 16:37:55', 500, 'withdraw'),
(90, 'bb41a782fc32129bf8e702a7b0dfce2d93ea20a4', 'John Curtis', 'bank', 'Bank Account', '2021-09-19 16:38:00', 1000, 'withdraw'),
(91, 'bank', 'Bank (PIN)', '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1', 'Reyel O\'Connel', '2021-09-19 16:42:39', 1000, 'transfer'),
(92, '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1', 'Reyel O\'Connel', 'bank', 'Bank Account', '2021-09-19 16:43:15', 2500, 'withdraw'),
(93, '9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67', 'Frédérico  Martinez', 'bank', 'Bank Account', '2021-09-19 17:03:10', 1500, 'withdraw'),
(94, 'bb41a782fc32129bf8e702a7b0dfce2d93ea20a4', 'John Curtis', 'salary', 'Salary', '2021-09-19 17:03:14', 10, 'transfer'),
(95, '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1', 'Reyel O\'Connel', 'salary', 'Salary', '2021-09-19 17:03:14', 150, 'transfer'),
(96, '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'Francis  Glaze', 'salary', 'Salary', '2021-09-19 17:03:14', 500, 'transfer'),
(97, 'bank', 'Bank (PIN)', '9abff61c6a0c182237ed0d38dd42c082534d6048', 'Leon Leon', '2021-09-19 18:19:23', 1000, 'transfer'),
(98, '9abff61c6a0c182237ed0d38dd42c082534d6048', 'Leon Leon', 'bank', 'Bank Account', '2021-09-19 18:19:50', 1000, 'withdraw'),
(99, 'bank', 'Bank Account', '9abff61c6a0c182237ed0d38dd42c082534d6048', 'Leon Leon', '2021-09-19 18:23:27', 2000, 'deposit'),
(100, '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'Francis  Glaze', 'salary', 'Salary', '2021-09-19 18:49:48', 500, 'transfer'),
(101, '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1', 'Reyel O\'Connel', 'salary', 'Salary', '2021-09-19 18:49:48', 250, 'transfer'),
(102, '9abff61c6a0c182237ed0d38dd42c082534d6048', 'Leon Leon', 'salary', 'Salary', '2021-09-19 18:49:48', 10, 'transfer'),
(103, '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1', 'Reyel O\'Connel', 'bank', 'Bank Account', '2021-09-19 19:02:12', 2500, 'withdraw'),
(104, '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'Francis  Glaze', 'bank', 'Bank Account', '2021-09-19 19:15:33', 3000, 'withdraw'),
(105, '9abff61c6a0c182237ed0d38dd42c082534d6048', 'Leon Leon', 'salary', 'Salary', '2021-09-19 19:29:48', 10, 'transfer'),
(106, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Frank Garcia', 'salary', 'Salary', '2021-09-19 21:09:31', 150, 'transfer'),
(107, '2965f0ccf41ae67c01f80f3e612689e6adf8e1af', '[319] Lewis Anderson', 'salary', 'Salary', '2021-09-19 23:09:31', 10, 'transfer'),
(108, 'bank', 'Bank Account', 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c', 'Dimitry Sokove', '2021-09-19 23:32:07', 5000, 'deposit'),
(109, 'bank', 'Bank Account', '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'Francis  Glaze', '2021-09-19 23:32:18', 220000, 'deposit'),
(110, 'bank', 'Bank Account', 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c', 'Dimitry Sokove', '2021-09-19 23:32:37', 662, 'deposit'),
(111, '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'Francis  Glaze', 'salary', 'Salary', '2021-09-19 23:49:31', 500, 'transfer'),
(112, '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'Francis  Glaze', 'salary', 'Salary', '2021-09-20 00:29:31', 500, 'transfer'),
(113, '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'Francis  Glaze', 'salary', 'Salary', '2021-09-20 01:09:31', 500, 'transfer'),
(114, 'bank', 'Bank Account', '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'Francis  Glaze', '2021-09-20 01:15:36', 20000, 'deposit'),
(115, '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'Francis  Glaze', 'bank', 'Bank Account', '2021-09-20 01:45:43', 1500, 'withdraw'),
(116, '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'Francis  Glaze', 'salary', 'Salary', '2021-09-20 01:49:31', 500, 'transfer'),
(117, '2d3a563260069bbbc922cf77b6f7f1dd4ef95ca2', '[A] Babou COHMEN', 'salary', 'Salary', '2021-09-20 14:29:31', 10, 'transfer'),
(118, 'e31e742d2080ad11ef667af59ead70943bc22474', 'Samy', 'salary', 'Salary', '2021-09-20 14:29:31', 400, 'transfer'),
(119, '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'Francis  Glaze', 'salary', 'Salary', '2021-09-20 14:29:31', 500, 'transfer'),
(120, 'bank', 'Bank (PIN)', 'e31e742d2080ad11ef667af59ead70943bc22474', 'Samy', '2021-09-20 14:35:31', 1000, 'transfer'),
(121, 'e31e742d2080ad11ef667af59ead70943bc22474', 'Samy', 'bank', 'Bank Account', '2021-09-20 14:37:58', 2750, 'withdraw'),
(122, 'e31e742d2080ad11ef667af59ead70943bc22474', 'Francis Juste', 'salary', 'Salary', '2021-09-20 15:09:31', 10, 'transfer'),
(123, '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'Francis  Glaze', 'salary', 'Salary', '2021-09-20 15:09:31', 500, 'transfer'),
(124, 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c', 'Dimitry Sokove', 'bank', 'Bank Account', '2021-09-20 20:29:29', 100, 'withdraw'),
(125, 'bank', 'Bank (PIN)', '5729f4e918f229acc586fe883b428095737e10f3', 'Arthur Splazinov', '2021-09-21 21:09:00', 1000, 'transfer'),
(126, '5729f4e918f229acc586fe883b428095737e10f3', 'Arthur Splazinov', 'bank', 'Bank Account', '2021-09-21 21:09:27', 3000, 'withdraw'),
(127, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Frank Garcia', 'salary', 'Salary', '2021-09-21 21:31:14', 300, 'transfer'),
(128, '884c4af8bd5eb34ed23131a068aee6536e5d04e2', 'Tom Kaplan', 'salary', 'Salary', '2021-09-21 21:31:14', 10, 'transfer'),
(129, '884c4af8bd5eb34ed23131a068aee6536e5d04e2', 'Tom Kaplan', 'salary', 'Salary', '2021-09-21 22:11:14', 80, 'transfer'),
(130, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'bank', 'Bank Account', '2021-09-21 22:38:41', 6000, 'withdraw'),
(131, '9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67', 'Frédérico  Martinez', 'bank', 'Bank Account', '2021-09-21 22:44:07', 5000, 'withdraw'),
(132, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-21 22:51:14', 2500, 'transfer'),
(133, 'e31e742d2080ad11ef667af59ead70943bc22474', 'Francis Juste', 'salary', 'Salary', '2021-09-21 22:51:14', 400, 'transfer'),
(134, '9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'Francis  Glaze', 'salary', 'Salary', '2021-09-21 22:51:14', 500, 'transfer'),
(135, '40f9e375addccb930ff50c533f25c26aad1a5853', 'Willy Willsons', 'salary', 'Salary', '2021-09-21 22:51:14', 3500, 'transfer'),
(136, '884c4af8bd5eb34ed23131a068aee6536e5d04e2', 'Tom Kaplan', 'salary', 'Salary', '2021-09-21 22:51:14', 80, 'transfer'),
(137, 'e31e742d2080ad11ef667af59ead70943bc22474', 'Francis Juste', 'bank', 'Bank Account', '2021-09-21 23:04:37', 500, 'withdraw'),
(138, 'fcd8ed0d319f823b748f6f0856f1b3e0189add96', 'Edward Pilon', 'salary', 'Salary', '2021-09-23 12:42:02', 10, 'transfer'),
(139, 'bank', 'Bank Account', 'fcd8ed0d319f823b748f6f0856f1b3e0189add96', 'Edward Pilon', '2021-09-23 13:17:42', 100, 'deposit'),
(140, 'fcd8ed0d319f823b748f6f0856f1b3e0189add96', 'Edward Pilon', 'bank', 'Bank Account', '2021-09-23 13:18:13', 1600, 'withdraw'),
(141, 'fcd8ed0d319f823b748f6f0856f1b3e0189add96', 'Edward Pilon', 'salary', 'Salary', '2021-09-23 13:22:02', 10, 'transfer'),
(142, 'fcd8ed0d319f823b748f6f0856f1b3e0189add96', 'Edward Pilon', 'salary', 'Salary', '2021-09-23 14:02:02', 10, 'transfer'),
(143, 'bank', 'Bank (PIN)', 'fcd8ed0d319f823b748f6f0856f1b3e0189add96', 'Edward Pilon', '2021-09-23 14:04:05', 1000, 'transfer'),
(144, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-27 20:36:38', 2500, 'transfer'),
(145, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-27 21:16:38', 2500, 'transfer'),
(146, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-27 21:56:38', 2500, 'transfer'),
(147, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-27 22:36:38', 2500, 'transfer'),
(148, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-27 23:16:38', 2500, 'transfer'),
(149, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-27 23:56:38', 2500, 'transfer'),
(150, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-28 00:36:38', 2500, 'transfer'),
(151, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-28 14:19:34', 2500, 'transfer'),
(152, 'a4318d034cbbd61326d051adb5dfae7102ff12ec', 'Damien Clair', 'salary', 'Salary', '2021-09-28 14:19:34', 10, 'transfer'),
(153, 'a4318d034cbbd61326d051adb5dfae7102ff12ec', 'Damien Clair', 'salary', 'Salary', '2021-09-28 14:59:34', 10, 'transfer'),
(154, '40f9e375addccb930ff50c533f25c26aad1a5853', 'Willy Willsons', 'salary', 'Salary', '2021-09-28 14:59:34', 3500, 'transfer'),
(155, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-28 14:59:34', 2500, 'transfer'),
(156, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'MERY M3', 'salary', 'Salary', '2021-09-28 14:59:34', 10, 'transfer'),
(157, 'a4318d034cbbd61326d051adb5dfae7102ff12ec', 'Damien Clair', 'salary', 'Salary', '2021-09-28 15:39:34', 10, 'transfer'),
(158, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-28 15:39:34', 2500, 'transfer'),
(159, '40f9e375addccb930ff50c533f25c26aad1a5853', 'Willy Willsons', 'salary', 'Salary', '2021-09-28 15:39:34', 3500, 'transfer'),
(160, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-28 16:19:34', 2500, 'transfer'),
(161, '40f9e375addccb930ff50c533f25c26aad1a5853', 'Willy Willsons', 'salary', 'Salary', '2021-09-28 16:19:34', 3500, 'transfer'),
(162, 'a4318d034cbbd61326d051adb5dfae7102ff12ec', 'Damien Clair', 'salary', 'Salary', '2021-09-28 16:19:34', 10, 'transfer'),
(163, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-09-29 11:35:52', 2500, 'transfer'),
(164, 'a4318d034cbbd61326d051adb5dfae7102ff12ec', 'Damien Clair', 'salary', 'Salary', '2021-09-29 16:47:52', 10, 'transfer'),
(165, 'a4318d034cbbd61326d051adb5dfae7102ff12ec', 'Damien Clair', 'salary', 'Salary', '2021-09-29 17:27:52', 10, 'transfer'),
(166, 'a4318d034cbbd61326d051adb5dfae7102ff12ec', 'Damien Clair', 'salary', 'Salary', '2021-09-30 14:07:06', 10, 'transfer'),
(167, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Perso Feminin', 'salary', 'Salary', '2021-10-02 17:35:59', 85, 'transfer'),
(168, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'MERY M3', 'salary', 'Salary', '2021-10-02 17:35:59', 10, 'transfer'),
(169, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Perso Feminin', 'salary', 'Salary', '2021-10-02 18:15:59', 85, 'transfer'),
(170, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'MERY M3', 'salary', 'Salary', '2021-10-02 18:15:59', 10, 'transfer'),
(171, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'MERY M3', 'salary', 'Salary', '2021-10-03 17:18:24', 10, 'transfer'),
(172, '3811e039cae8ed059f5349c863186988b3c1a14c', 'Caroline Fegerg', 'salary', 'Salary', '2021-10-05 02:48:46', 10, 'transfer'),
(173, '3811e039cae8ed059f5349c863186988b3c1a14c', 'Caroline Fegerg', 'salary', 'Salary', '2021-10-05 04:48:46', 1500, 'transfer'),
(174, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'MERY M3', 'salary', 'Salary', '2021-10-05 04:48:46', 800, 'transfer'),
(175, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-10-05 04:48:46', 1500, 'transfer'),
(176, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-10-05 17:12:56', 1500, 'transfer'),
(177, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'Merlin Woodhouse', 'salary', 'Salary', '2021-10-05 20:11:37', 10, 'transfer'),
(178, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-10-07 17:53:56', 2500, 'transfer'),
(179, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-10-07 19:00:18', 2500, 'transfer'),
(180, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'Atticus Woodhouse', 'salary', 'Salary', '2021-10-08 21:34:21', 10, 'transfer'),
(181, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'Atticus Woodhouse', 'salary', 'Salary', '2021-10-09 18:05:31', 10, 'transfer'),
(182, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'Atticus Woodhouse', 'salary', 'Salary', '2021-10-09 18:45:31', 10, 'transfer'),
(183, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-10-09 23:26:54', 400, 'transfer'),
(184, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'Merlin Woodhouse', 'salary', 'Salary', '2021-10-09 23:26:54', 400, 'transfer'),
(185, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-10-10 00:06:54', 400, 'transfer'),
(186, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'Merlin Woodhouse', 'salary', 'Salary', '2021-10-10 00:06:54', 400, 'transfer'),
(187, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'Merlin Woodhouse', 'salary', 'Salary', '2021-10-10 14:01:11', 400, 'transfer'),
(188, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-10-10 16:15:01', 400, 'transfer'),
(189, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'Merlin Woodhouse', 'salary', 'Salary', '2021-10-10 16:15:01', 400, 'transfer'),
(190, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-10-10 17:18:44', 400, 'transfer'),
(191, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'salary', 'Salary', '2021-10-10 18:32:50', 600, 'transfer'),
(192, '50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'Merlin Woodhouse', 'salary', 'Salary', '2021-10-10 18:32:50', 400, 'transfer');

-- --------------------------------------------------------

--
-- Structure de la table `okokbilling`
--

CREATE TABLE `okokbilling` (
  `id` int(50) ,
  `receiver_identifier` varchar(255) ,
  `receiver_name` varchar(255) ,
  `author_identifier` varchar(255) ,
  `author_name` varchar(255) DEFAULT NULL,
  `society` varchar(255) ,
  `society_name` varchar(255) ,
  `item` varchar(255) ,
  `invoice_value` int(50) ,
  `status` varchar(50) ,
  `notes` varchar(255) DEFAULT ' ',
  `sent_date` varchar(255) ,
  `limit_pay_date` varchar(255) DEFAULT NULL,
  `fees_amount` int(50) DEFAULT 0,
  `paid_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(40) ,
  `state` tinyint(1)  DEFAULT 0,
  `insurance` varchar(100)  DEFAULT 'none',
  `cooldown` int(11)  DEFAULT 0,
  `plate` varchar(12) ,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20)  DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(4)  DEFAULT 0,
  `garage_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT 'car',
  `garage_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT 'A',
  `in_garage` tinyint(1) DEFAULT 0,
  `impound` int(10) DEFAULT 0,
  `adv_stats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '{"plate":"nil","mileage":0.0,"maxhealth":1000.0}',
  `property` int(10) DEFAULT 0,
  `job_personalowned` tinyint(1) DEFAULT 0,
  `storedhouse` int(11) ,
  `t1ger_keys` tinyint(1)  DEFAULT 0,
  `t1ger_alarm` tinyint(1)  DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `state`, `insurance`, `cooldown`, `plate`, `vehicle`, `type`, `job`, `stored`, `garage_type`, `garage_id`, `in_garage`, `impound`, `adv_stats`, `property`, `job_personalowned`, `storedhouse`, `t1ger_keys`, `t1ger_alarm`) VALUES
('sheriff', 0, 'none', 0, ' SUB 01 ', '{\"modDial\":-1,\"modEngine\":-1,\"modFender\":-1,\"modAPlate\":-1,\"modLivery\":-1,\"modRearBumper\":0,\"modGrille\":-1,\"pearlescentColor\":134,\"modTrimB\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modArchCover\":0,\"doors\":[false,false,false,false,false,false],\"modTransmission\":-1,\"modVanityPlate\":-1,\"wheels\":1,\"model\":1223962818,\"modSuspension\":-1,\"tyreSmokeColor\":[255,255,255],\"modBackWheels\":-1,\"xenonColor\":255,\"extras\":{\"2\":false,\"1\":true,\"4\":false,\"3\":true,\"7\":true,\"9\":true,\"12\":false,\"11\":true,\"6\":true,\"5\":true,\"8\":true,\"10\":true},\"modHydrolic\":-1,\"plateIndex\":4,\"modDashboard\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modArmor\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"bodyHealth\":1000.0,\"fuelLevel\":62.8,\"modLivery2\":1,\"color1\":134,\"modStruts\":-1,\"modFrontBumper\":-1,\"modSpeakers\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"wheelColor\":29,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"plate\":\" SUB 01 \",\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"neonColor\":[255,0,255],\"modTurbo\":1,\"modFrame\":0,\"modXenon\":1,\"modAerials\":-1,\"modTrimA\":-1,\"color2\":134,\"modSeats\":-1,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modPlateHolder\":-1,\"modFrontWheels\":-1,\"modHorns\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modTrunk\":-1,\"modRightFender\":-1,\"modSideSkirt\":-1,\"engineHealth\":1000.0,\"tankHealth\":1000.0,\"modHood\":2,\"dirtLevel\":4.0,\"modOrnaments\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\" SUB 01 \"}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, ' SUB 02 ', '{\"wheelColor\":29,\"modLivery\":-1,\"modEngineBlock\":-1,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":6.0,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modAPlate\":-1,\"modOrnaments\":-1,\"modLivery2\":1,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"plate\":\" SUB 02 \",\"xenonColor\":255,\"wheels\":1,\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modTurbo\":1,\"pearlescentColor\":134,\"modRoof\":-1,\"model\":1223962818,\"modExhaust\":-1,\"modTank\":-1,\"modTrunk\":-1,\"fuelLevel\":62.8,\"modFrame\":0,\"modStruts\":-1,\"color1\":134,\"modArchCover\":0,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":2,\"color2\":134,\"tyres\":[false,false,false,false,false,false,false],\"modTransmission\":-1,\"modRearBumper\":0,\"modHorns\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"4\":false,\"3\":true,\"12\":false,\"11\":true,\"2\":false,\"1\":true,\"5\":true,\"6\":true,\"10\":true},\"modSideSkirt\":-1,\"modArmor\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\" SUB 02 \"}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'AIR PD01', '{\"dirtLevel\":0.0,\"modExhaust\":-1,\"modEngineBlock\":-1,\"modLivery\":-1,\"neonEnabled\":[false,false,false,false],\"modSpoilers\":-1,\"modPlateHolder\":-1,\"color1Custom\":[183,183,183],\"modTank\":-1,\"modGrille\":-1,\"modBrakes\":-1,\"modArmor\":-1,\"modBackWheels\":-1,\"doors\":[false,false,false,false,false,false],\"modOrnaments\":-1,\"modTrunk\":-1,\"modTransmission\":-1,\"modFrontBumper\":-1,\"modDoorSpeaker\":-1,\"modFender\":-1,\"modTrimB\":-1,\"pearlescentColor\":111,\"tyreSmokeColor\":[255,255,255],\"modArchCover\":-1,\"livery\":1,\"modSmokeEnabled\":false,\"color1Type\":0,\"modSpeakers\":-1,\"modEngine\":-1,\"tyres\":[false,false,false,false,false,false,false],\"neonColor\":[255,0,255],\"wheels\":0,\"color2\":134,\"color1\":134,\"modWindows\":-1,\"modDial\":-1,\"interiorColor\":0,\"color2Custom\":[183,183,183],\"modSteeringWheel\":-1,\"modTurbo\":false,\"model\":1152456573,\"modSideSkirt\":-1,\"modAirFilter\":-1,\"plateIndex\":4,\"modDashboard\":-1,\"modVanityPlate\":-1,\"modAPlate\":-1,\"modXenon\":255,\"windowTint\":-1,\"modSuspension\":-1,\"engineHealth\":1000.0,\"color2Type\":0,\"modFrame\":-1,\"modRightFender\":-1,\"modFrontWheels\":-1,\"modAerials\":-1,\"dashboardColor\":0,\"modSeats\":-1,\"modHood\":-1,\"modTrimA\":-1,\"wheelColor\":156,\"plate\":\"AIR PD01\",\"bodyHealth\":1000.0,\"modStruts\":-1,\"extras\":{\"2\":1,\"11\":1,\"10\":1,\"7\":1,\"1\":1},\"fuelLevel\":100.0,\"modRoof\":-1,\"modRearBumper\":-1,\"modShifterLeavers\":-1,\"modHorns\":-1,\"modHydrolic\":-1}', 'car', NULL, 0, 'air', 'A', 1, 0, '{\"mileage\":0.0,\"maxhealth\":1000.0,\"plate\":\"AIR PD01\"}', 0, 0, 0, 0, 0),
('ambulance', 0, 'none', 0, 'AMBU 01 ', '{\"modFrame\":-1,\"modPlateHolder\":-1,\"modTrimB\":-1,\"modAerials\":-1,\"engineHealth\":999.7,\"modSeats\":-1,\"modFrontWheels\":-1,\"modRearBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"plateIndex\":4,\"color2\":134,\"modSpoilers\":-1,\"modArchCover\":-1,\"modWindows\":-1,\"dirtLevel\":4.0,\"modHorns\":-1,\"pearlescentColor\":156,\"modHydrolic\":-1,\"wheelColor\":156,\"modEngineBlock\":-1,\"modXenon\":255,\"modSuspension\":-1,\"neonEnabled\":[false,false,false,false],\"modSpeakers\":-1,\"color2Type\":6,\"modDial\":-1,\"modHood\":-1,\"modBrakes\":0,\"modBackWheels\":-1,\"color2Custom\":[255,255,255],\"doors\":[false,false,false,false,false,false],\"modAPlate\":-1,\"modLivery\":-1,\"interiorColor\":0,\"extras\":{\"9\":false,\"6\":false,\"5\":1,\"8\":1,\"7\":false,\"2\":1,\"1\":1,\"4\":1,\"3\":1,\"12\":1,\"11\":1,\"10\":1},\"modDoorSpeaker\":-1,\"model\":1239379790,\"modRightFender\":-1,\"bodyHealth\":1000.0,\"modTurbo\":1,\"tyres\":[false,false,false,false,false,false,false],\"modSmokeEnabled\":false,\"modStruts\":-1,\"modShifterLeavers\":-1,\"color1Type\":6,\"modRoof\":-1,\"modFender\":-1,\"modSteeringWheel\":-1,\"modTrimA\":-1,\"livery\":0,\"modVanityPlate\":-1,\"modSideSkirt\":-1,\"dashboardColor\":0,\"color1\":134,\"modDashboard\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modTrunk\":-1,\"modTransmission\":2,\"windowTint\":-1,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"plate\":\"AMBU 01 \",\"modArmor\":4,\"color1Custom\":[255,255,255],\"modGrille\":-1,\"wheels\":1,\"modEngine\":3,\"fuelLevel\":69.7}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"AMBU 01 \",\"mileage\":0.0,\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('ambulance', 0, 'none', 0, 'AMBU 02 ', '{\"modFrame\":-1,\"modPlateHolder\":-1,\"modTrimB\":-1,\"modAerials\":-1,\"engineHealth\":989.9,\"modSeats\":-1,\"modFrontWheels\":-1,\"modRearBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"plateIndex\":4,\"color2\":134,\"modSpoilers\":-1,\"modArchCover\":-1,\"modWindows\":-1,\"dirtLevel\":0.0,\"modHorns\":-1,\"pearlescentColor\":156,\"modHydrolic\":-1,\"wheelColor\":156,\"modEngineBlock\":-1,\"modXenon\":255,\"modSuspension\":-1,\"neonEnabled\":[false,false,false,false],\"modSpeakers\":-1,\"color2Type\":6,\"modDial\":-1,\"modHood\":-1,\"modBrakes\":0,\"modBackWheels\":-1,\"color2Custom\":[255,255,255],\"doors\":[false,false,false,false,false,false],\"modAPlate\":-1,\"modLivery\":-1,\"interiorColor\":0,\"extras\":{\"9\":false,\"6\":false,\"5\":1,\"8\":1,\"7\":false,\"2\":1,\"1\":1,\"4\":1,\"3\":1,\"12\":1,\"11\":1,\"10\":1},\"modDoorSpeaker\":-1,\"model\":1239379790,\"modRightFender\":-1,\"bodyHealth\":993.0,\"modTurbo\":1,\"tyres\":[false,false,false,false,false,false,false],\"modSmokeEnabled\":false,\"modStruts\":-1,\"modShifterLeavers\":-1,\"color1Type\":6,\"modRoof\":-1,\"modFender\":-1,\"modSteeringWheel\":-1,\"modTrimA\":-1,\"livery\":0,\"modVanityPlate\":-1,\"modSideSkirt\":-1,\"dashboardColor\":0,\"color1\":134,\"modDashboard\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modTrunk\":-1,\"modTransmission\":2,\"windowTint\":-1,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"plate\":\"AMBU 02 \",\"modArmor\":4,\"color1Custom\":[255,255,255],\"modGrille\":-1,\"wheels\":1,\"modEngine\":3,\"fuelLevel\":69.9}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"AMBU 02 \",\"mileage\":0.0,\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('ambulance', 0, 'none', 0, 'AMBU 03 ', '{\"modFrame\":-1,\"modPlateHolder\":-1,\"modTrimB\":-1,\"modAerials\":-1,\"engineHealth\":999.9,\"modSeats\":-1,\"modFrontWheels\":-1,\"modRearBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"plateIndex\":4,\"color2\":134,\"modSpoilers\":-1,\"modArchCover\":-1,\"modWindows\":-1,\"dirtLevel\":0.0,\"modHorns\":-1,\"pearlescentColor\":156,\"modHydrolic\":-1,\"wheelColor\":156,\"modEngineBlock\":-1,\"modXenon\":0,\"modSuspension\":-1,\"neonEnabled\":[false,false,false,false],\"modSpeakers\":-1,\"color2Type\":6,\"modDial\":-1,\"modHood\":-1,\"modBrakes\":0,\"modBackWheels\":-1,\"color2Custom\":[183,183,183],\"doors\":[false,false,false,false,false,false],\"modAPlate\":-1,\"modLivery\":-1,\"interiorColor\":0,\"extras\":{\"9\":false,\"6\":false,\"5\":1,\"8\":1,\"7\":false,\"2\":1,\"1\":1,\"4\":1,\"3\":1,\"12\":false,\"11\":1,\"10\":1},\"modDoorSpeaker\":-1,\"model\":1239379790,\"modRightFender\":-1,\"bodyHealth\":1000.0,\"modTurbo\":1,\"tyres\":[false,false,false,false,false,false,false],\"modSmokeEnabled\":false,\"modStruts\":-1,\"modShifterLeavers\":-1,\"color1Type\":6,\"modRoof\":-1,\"modFender\":-1,\"modSteeringWheel\":-1,\"modTrimA\":-1,\"livery\":0,\"modVanityPlate\":-1,\"modSideSkirt\":-1,\"dashboardColor\":0,\"color1\":134,\"modDashboard\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modTrunk\":-1,\"modTransmission\":2,\"windowTint\":-1,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"plate\":\"AMBU 03 \",\"modArmor\":4,\"color1Custom\":[183,183,183],\"modGrille\":-1,\"wheels\":1,\"modEngine\":3,\"fuelLevel\":69.8}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"AMBU 03 \",\"mileage\":0.0,\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('brinks', 0, 'none', 0, 'BRINKS01', '{\"model\":1747439474,\"modHydrolic\":-1,\"modXenon\":false,\"modAerials\":-1,\"modFrontWheels\":-1,\"plateIndex\":0,\"modPlateHolder\":-1,\"modRoof\":-1,\"dirtLevel\":5.1,\"modExhaust\":-1,\"modSuspension\":-1,\"plate\":\"BRINKS01\",\"modLivery2\":-1,\"modTrimB\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"fuelLevel\":34.1,\"modSmokeEnabled\":false,\"modVanityPlate\":-1,\"modSpoilers\":-1,\"modFender\":-1,\"tyres\":[false,false,false,false,false,false,false],\"windowTint\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"xenonColor\":255,\"modRearBumper\":-1,\"modLivery\":-1,\"modWindows\":-1,\"wheels\":0,\"doors\":[false,false,false,false,false,false],\"modBackWheels\":-1,\"modHorns\":-1,\"modArchCover\":-1,\"modTransmission\":-1,\"extras\":{\"1\":true},\"modSteeringWheel\":-1,\"bodyHealth\":1000.0,\"modEngineBlock\":-1,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modStruts\":-1,\"modArmor\":-1,\"modSeats\":-1,\"engineHealth\":998.3,\"modAirFilter\":-1,\"pearlescentColor\":111,\"modAPlate\":-1,\"modRightFender\":-1,\"modTurbo\":false,\"modGrille\":-1,\"modFrontBumper\":-1,\"modDial\":-1,\"tyreSmokeColor\":[255,255,255],\"modTrimA\":-1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"modOrnaments\":-1,\"tankHealth\":1000.0,\"color1\":111,\"modDashboard\":-1,\"modEngine\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"color2\":125,\"modFrame\":-1,\"wheelColor\":156}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"BRINKS01\",\"maxhealth\":1000.0,\"mileage\":1.87}', 0, 0, 0, 0, 0),
('brinks', 0, 'none', 0, 'BRINKS02', '{\"model\":1747439474,\"modHydrolic\":-1,\"modXenon\":false,\"modAerials\":-1,\"modFrontWheels\":-1,\"plateIndex\":0,\"modPlateHolder\":-1,\"modRoof\":-1,\"dirtLevel\":5.0,\"modExhaust\":-1,\"modSuspension\":-1,\"plate\":\"BRINKS02\",\"modLivery2\":-1,\"modTrimB\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"fuelLevel\":26.5,\"modSmokeEnabled\":false,\"modVanityPlate\":-1,\"modSpoilers\":-1,\"modFender\":-1,\"tyres\":[false,false,false,false,false,false,false],\"windowTint\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"xenonColor\":255,\"modRearBumper\":-1,\"modLivery\":-1,\"modWindows\":-1,\"wheels\":0,\"doors\":[false,false,false,false,false,false],\"modBackWheels\":-1,\"modHorns\":-1,\"modArchCover\":-1,\"modTransmission\":-1,\"extras\":{\"1\":true},\"modSteeringWheel\":-1,\"bodyHealth\":1000.0,\"modEngineBlock\":-1,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modStruts\":-1,\"modArmor\":-1,\"modSeats\":-1,\"engineHealth\":1000.0,\"modAirFilter\":-1,\"pearlescentColor\":111,\"modAPlate\":-1,\"modRightFender\":-1,\"modTurbo\":false,\"modGrille\":-1,\"modFrontBumper\":-1,\"modDial\":-1,\"tyreSmokeColor\":[255,255,255],\"modTrimA\":-1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"modOrnaments\":-1,\"tankHealth\":1000.0,\"color1\":111,\"modDashboard\":-1,\"modEngine\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"color2\":125,\"modFrame\":-1,\"wheelColor\":156}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"BRINKS02\",\"maxhealth\":1000.0,\"mileage\":0.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'CHG SLK1', '{\"modTrimB\":-1,\"modHorns\":-1,\"dirtLevel\":2.0,\"modSteeringWheel\":-1,\"modXenon\":false,\"modSpeakers\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modAirFilter\":-1,\"bodyHealth\":998.1,\"modTrimA\":-1,\"modBrakes\":-1,\"neonColor\":[255,0,255],\"xenonColor\":255,\"modSmokeEnabled\":false,\"modOrnaments\":-1,\"modAerials\":-1,\"pearlescentColor\":134,\"modArchCover\":-1,\"modStruts\":-1,\"modWindows\":-1,\"model\":-2093896434,\"modSuspension\":-1,\"modDashboard\":-1,\"modFender\":-1,\"extras\":{\"11\":true,\"12\":false,\"9\":true,\"2\":true,\"6\":true,\"5\":true,\"8\":true,\"7\":true,\"10\":true,\"1\":false,\"4\":false,\"3\":false},\"modLivery2\":0,\"modShifterLeavers\":-1,\"plate\":\"CHG SLK1\",\"modTank\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":-1,\"doors\":[false,false,false,false,false,false],\"modArmor\":-1,\"tankHealth\":999.8,\"modAPlate\":-1,\"modLivery\":-1,\"neonEnabled\":[false,false,false,false],\"modDial\":-1,\"modTurbo\":1,\"wheelColor\":29,\"wheels\":0,\"fuelLevel\":63.1,\"modBackWheels\":-1,\"modRoof\":-1,\"color1\":0,\"modTransmission\":-1,\"modVanityPlate\":-1,\"plateIndex\":4,\"color2\":0,\"modRearBumper\":-1,\"modHood\":-1,\"modHydrolic\":-1,\"modEngineBlock\":-1,\"windowTint\":-1,\"modDoorSpeaker\":-1,\"modSeats\":-1,\"modEngine\":-1,\"modSideSkirt\":-1,\"engineHealth\":990.7,\"modTrunk\":2,\"modPlateHolder\":-1,\"modFrontWheels\":50,\"modSpoilers\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modGrille\":-1,\"modRightFender\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"CHG SLK1\",\"maxhealth\":1000.0,\"mileage\":0.1}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'CHGR B01', '{\"color1\":134,\"plate\":\"CHGR B01\",\"livery\":3,\"color1Type\":6,\"modSideSkirt\":-1,\"modRearBumper\":-1,\"color2Custom\":[255,255,255],\"modPlateHolder\":-1,\"modDial\":-1,\"modFrame\":0,\"fuelLevel\":64.3,\"bodyHealth\":1000.0,\"doors\":[false,false,false,false,false,false],\"modFrontBumper\":0,\"modWindows\":-1,\"plateIndex\":4,\"modFrontWheels\":50,\"modHorns\":-1,\"neonEnabled\":[false,false,false,false],\"modBackWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"modSteeringWheel\":-1,\"color1Custom\":[49,49,49],\"wheelColor\":29,\"modTrunk\":2,\"modRoof\":-1,\"modStruts\":-1,\"dirtLevel\":0.0,\"modArmor\":-1,\"modLivery\":-1,\"modSeats\":-1,\"modFender\":-1,\"modHood\":-1,\"interiorColor\":53,\"modVanityPlate\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSpeakers\":-1,\"modRightFender\":-1,\"modGrille\":-1,\"modSmokeEnabled\":false,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"modExhaust\":-1,\"modHydrolic\":-1,\"pearlescentColor\":134,\"modSpoilers\":-1,\"modArchCover\":1,\"tyres\":[false,false,false,false,false,false,false],\"color2\":134,\"modAPlate\":-1,\"modBrakes\":-1,\"extras\":{\"1\":false,\"8\":1,\"10\":1,\"6\":1,\"5\":1,\"4\":1,\"3\":false,\"2\":1,\"9\":1,\"11\":1,\"7\":1,\"12\":false},\"modTurbo\":1,\"engineHealth\":1000.0,\"modDashboard\":-1,\"modTransmission\":-1,\"modEngineBlock\":-1,\"modEngine\":-1,\"modSuspension\":-1,\"modTrimA\":-1,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"dashboardColor\":54,\"modTrimB\":-1,\"modTank\":-1,\"model\":-2093896434,\"modXenon\":0,\"color2Type\":6,\"modDoorSpeaker\":-1,\"wheels\":0}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"CHGR B01\"}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'CHGR PD1', '{\"extras\":{\"12\":false,\"1\":true,\"4\":false,\"5\":true,\"11\":true,\"10\":true,\"2\":false,\"3\":true,\"8\":true,\"9\":true,\"6\":true,\"7\":true},\"wheels\":0,\"modLivery\":-1,\"modFrontBumper\":-1,\"modTank\":-1,\"modFrontWheels\":50,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"modTransmission\":-1,\"fuelLevel\":64.9,\"modFender\":-1,\"modHorns\":-1,\"modRoof\":-1,\"modSmokeEnabled\":false,\"modSuspension\":-1,\"tyreSmokeColor\":[255,255,255],\"modEngine\":-1,\"model\":-2093896434,\"modRearBumper\":-1,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"color2\":0,\"modDashboard\":-1,\"modTrunk\":-1,\"neonColor\":[255,0,255],\"doors\":[false,false,false,false,false,false],\"modGrille\":-1,\"tankHealth\":1000.0,\"modHydrolic\":-1,\"dirtLevel\":0.0,\"color1\":0,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modArchCover\":0,\"modVanityPlate\":-1,\"modArmor\":-1,\"plateIndex\":4,\"modFrame\":0,\"neonEnabled\":[false,false,false,false],\"modBrakes\":-1,\"modStruts\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modEngineBlock\":-1,\"modBackWheels\":-1,\"wheelColor\":29,\"modExhaust\":-1,\"modDial\":-1,\"pearlescentColor\":134,\"modLivery2\":0,\"modXenon\":false,\"windowTint\":-1,\"modHood\":2,\"engineHealth\":999.9,\"bodyHealth\":1000.0,\"modTurbo\":1,\"modTrimB\":-1,\"xenonColor\":255,\"modTrimA\":-1,\"plate\":\"CHGR PD1\",\"modWindows\":-1,\"modAerials\":-1,\"modAPlate\":-1,\"modRightFender\":-1,\"modDoorSpeaker\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"CHGR PD1\",\"maxhealth\":1000.0,\"mileage\":254.74}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'CHGR PD2', '{\"color1\":134,\"plate\":\"CHGR PD2\",\"livery\":0,\"color1Type\":6,\"modSideSkirt\":-1,\"modRearBumper\":-1,\"color2Custom\":[255,255,255],\"modPlateHolder\":-1,\"modDial\":-1,\"modFrame\":0,\"fuelLevel\":64.5,\"bodyHealth\":1000.0,\"doors\":[false,false,false,false,false,false],\"modFrontBumper\":-1,\"modWindows\":-1,\"plateIndex\":4,\"modFrontWheels\":50,\"modHorns\":-1,\"neonEnabled\":[false,false,false,false],\"modBackWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"modSteeringWheel\":-1,\"color1Custom\":[255,255,255],\"wheelColor\":29,\"modTrunk\":2,\"modRoof\":-1,\"modStruts\":-1,\"dirtLevel\":0.0,\"modArmor\":-1,\"modLivery\":-1,\"modSeats\":-1,\"modFender\":-1,\"modHood\":2,\"interiorColor\":53,\"modVanityPlate\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSpeakers\":-1,\"modRightFender\":-1,\"modGrille\":-1,\"modSmokeEnabled\":false,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"modExhaust\":-1,\"modHydrolic\":-1,\"pearlescentColor\":134,\"modSpoilers\":-1,\"modArchCover\":0,\"tyres\":[false,false,false,false,false,false,false],\"color2\":134,\"modAPlate\":-1,\"modBrakes\":-1,\"extras\":{\"1\":1,\"8\":1,\"10\":1,\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"9\":1,\"11\":1,\"7\":1,\"12\":1},\"modTurbo\":1,\"engineHealth\":1000.0,\"modDashboard\":-1,\"modTransmission\":-1,\"modEngineBlock\":-1,\"modEngine\":-1,\"modSuspension\":-1,\"modTrimA\":-1,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"dashboardColor\":54,\"modTrimB\":-1,\"modTank\":-1,\"model\":-2093896434,\"modXenon\":0,\"color2Type\":6,\"modDoorSpeaker\":-1,\"wheels\":0}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"CHGR PD2\"}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'CHR S 01', '{\"modDial\":-1,\"modEngine\":-1,\"modFender\":-1,\"modAPlate\":-1,\"modLivery\":-1,\"modRearBumper\":0,\"modGrille\":-1,\"pearlescentColor\":134,\"modTrimB\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modArchCover\":0,\"doors\":[false,false,false,false,false,false],\"modTransmission\":-1,\"modVanityPlate\":-1,\"wheels\":1,\"model\":-1540844959,\"modSuspension\":-1,\"tyreSmokeColor\":[255,255,255],\"modBackWheels\":-1,\"xenonColor\":0,\"extras\":{\"2\":false,\"1\":true,\"4\":false,\"3\":true,\"7\":true,\"9\":true,\"12\":false,\"11\":true,\"6\":true,\"5\":true,\"8\":true,\"10\":true},\"modHydrolic\":-1,\"plateIndex\":4,\"modDashboard\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modArmor\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"bodyHealth\":1000.0,\"fuelLevel\":64.9,\"modLivery2\":1,\"color1\":134,\"modStruts\":-1,\"modFrontBumper\":1,\"modSpeakers\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"wheelColor\":29,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"plate\":\"CHR S 01\",\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"neonColor\":[255,0,255],\"modTurbo\":1,\"modFrame\":0,\"modXenon\":1,\"modAerials\":-1,\"modTrimA\":-1,\"color2\":134,\"modSeats\":-1,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modPlateHolder\":-1,\"modFrontWheels\":-1,\"modHorns\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modTrunk\":-1,\"modRightFender\":-1,\"modSideSkirt\":-1,\"engineHealth\":1000.0,\"tankHealth\":1000.0,\"modHood\":2,\"dirtLevel\":0.0,\"modOrnaments\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":111.09,\"plate\":\"CHR S 01\"}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'CHR S 02', '{\"wheelColor\":29,\"modLivery\":-1,\"modEngineBlock\":-1,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":4.0,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modAPlate\":-1,\"modOrnaments\":-1,\"modLivery2\":1,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"plate\":\"CHR S 02\",\"xenonColor\":0,\"wheels\":1,\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modTurbo\":1,\"pearlescentColor\":134,\"modRoof\":-1,\"model\":-1540844959,\"modExhaust\":-1,\"modTank\":-1,\"modTrunk\":2,\"fuelLevel\":58.9,\"modFrame\":0,\"modStruts\":-1,\"color1\":134,\"modArchCover\":0,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":2,\"color2\":134,\"tyres\":[false,false,false,false,false,false,false],\"modTransmission\":-1,\"modRearBumper\":-1,\"modHorns\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"4\":false,\"3\":true,\"12\":false,\"11\":true,\"2\":false,\"1\":true,\"5\":true,\"6\":true,\"10\":true},\"modSideSkirt\":-1,\"modArmor\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"CHR S 02\"}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'CHR S 03', '{\"wheelColor\":29,\"modLivery\":-1,\"model\":-1540844959,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modStruts\":-1,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":0.4,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"modLivery2\":1,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modTrunk\":-1,\"plate\":\"CHR S 03\",\"color1\":134,\"tyres\":[false,false,false,false,false,false,false],\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"pearlescentColor\":134,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modAPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"xenonColor\":0,\"wheels\":1,\"modHorns\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"modTank\":-1,\"modSmokeEnabled\":false,\"fuelLevel\":60.3,\"modFrame\":0,\"color2\":134,\"modRoof\":-1,\"modTurbo\":1,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":2,\"modArmor\":-1,\"modRearBumper\":0,\"modTransmission\":-1,\"modDoorSpeaker\":-1,\"modArchCover\":0,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"10\":true,\"3\":true,\"6\":true,\"11\":true,\"2\":false,\"1\":true,\"4\":false,\"5\":true,\"12\":false},\"modSideSkirt\":-1,\"modSteeringWheel\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"CHR S 03\",\"mileage\":0.0,\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'CHR S 04', '{\"wheelColor\":29,\"modLivery\":-1,\"modEngineBlock\":-1,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":0.6,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modAPlate\":-1,\"modOrnaments\":-1,\"modLivery2\":1,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"plate\":\"CHR S 04\",\"xenonColor\":0,\"wheels\":1,\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modTurbo\":1,\"pearlescentColor\":134,\"modRoof\":-1,\"model\":-1540844959,\"modExhaust\":-1,\"modTank\":-1,\"modTrunk\":-1,\"fuelLevel\":58.8,\"modFrame\":0,\"modStruts\":-1,\"color1\":134,\"modArchCover\":0,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":2,\"color2\":134,\"tyres\":[false,false,false,false,false,false,false],\"modTransmission\":-1,\"modRearBumper\":-1,\"modHorns\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"4\":false,\"3\":true,\"12\":false,\"11\":true,\"2\":false,\"1\":true,\"5\":true,\"6\":true,\"10\":true},\"modSideSkirt\":-1,\"modArmor\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":120.56,\"plate\":\"CHR S 04\"}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'CVPI B01', '{\"extras\":{\"12\":false,\"1\":false,\"4\":true,\"5\":true,\"11\":true,\"10\":true,\"2\":true,\"3\":false,\"8\":true,\"9\":true,\"6\":false,\"7\":true},\"wheels\":0,\"modLivery\":-1,\"modFrontBumper\":0,\"modTank\":-1,\"modFrontWheels\":50,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"modTransmission\":-1,\"fuelLevel\":64.6,\"modFender\":-1,\"modHorns\":-1,\"modRoof\":-1,\"modSmokeEnabled\":false,\"modSuspension\":-1,\"tyreSmokeColor\":[255,255,255],\"modEngine\":-1,\"model\":-1190343367,\"modRearBumper\":-1,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"color2\":0,\"modDashboard\":-1,\"modTrunk\":2,\"neonColor\":[255,0,255],\"doors\":[false,false,false,false,false,false],\"modGrille\":-1,\"tankHealth\":1000.0,\"modHydrolic\":-1,\"dirtLevel\":0.0,\"color1\":0,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modArchCover\":1,\"modVanityPlate\":-1,\"modArmor\":-1,\"plateIndex\":4,\"modFrame\":0,\"neonEnabled\":[false,false,false,false],\"modBrakes\":-1,\"modStruts\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modEngineBlock\":-1,\"modBackWheels\":-1,\"wheelColor\":29,\"modExhaust\":-1,\"modDial\":-1,\"pearlescentColor\":0,\"modLivery2\":0,\"modXenon\":false,\"windowTint\":-1,\"modHood\":-1,\"engineHealth\":1000.0,\"bodyHealth\":1000.0,\"modTurbo\":1,\"modTrimB\":-1,\"xenonColor\":255,\"modTrimA\":-1,\"plate\":\"CVPI B01\",\"modWindows\":-1,\"modAerials\":-1,\"modAPlate\":-1,\"modRightFender\":-1,\"modDoorSpeaker\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"CVPI B01\",\"maxhealth\":1000.0,\"mileage\":0.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'CVPI PD1', '{\"dirtLevel\":2.0,\"plateIndex\":4,\"modSuspension\":-1,\"modRoof\":-1,\"color2Type\":6,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"color1Custom\":[8,8,8],\"modDoorSpeaker\":-1,\"wheels\":0,\"modHood\":2,\"modArchCover\":0,\"color2Custom\":[8,8,8],\"modSmokeEnabled\":false,\"wheelColor\":29,\"dashboardColor\":54,\"modRearBumper\":-1,\"modXenon\":0,\"plate\":\"CVPI PD1\",\"fuelLevel\":64.5,\"modTrimB\":-1,\"modHydrolic\":-1,\"modTransmission\":-1,\"modSeats\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"neonColor\":[255,255,255],\"color1Type\":6,\"modBrakes\":-1,\"modFrontWheels\":50,\"interiorColor\":53,\"modOrnaments\":-1,\"modEngine\":-1,\"modSteeringWheel\":-1,\"modTank\":-1,\"modGrille\":-1,\"modDial\":-1,\"modTrunk\":-1,\"modBackWheels\":-1,\"windowTint\":-1,\"modLivery\":-1,\"model\":-1190343367,\"modAerials\":-1,\"engineHealth\":940.2,\"modFrame\":0,\"modHorns\":-1,\"bodyHealth\":997.0,\"modSpoilers\":-1,\"color1\":0,\"modAPlate\":-1,\"modStruts\":-1,\"extras\":{\"9\":1,\"12\":false,\"7\":1,\"8\":1,\"5\":1,\"6\":1,\"3\":1,\"4\":false,\"1\":1,\"2\":false,\"11\":1,\"10\":1},\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modFrontBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"livery\":0,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modWindows\":-1,\"modAirFilter\":-1,\"modTurbo\":1,\"modArmor\":-1,\"doors\":[false,false,false,false,false,false],\"color2\":0,\"pearlescentColor\":134,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modRightFender\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.02,\"plate\":\"CVPI PD1\"}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'CVPI PD2', '{\"extras\":{\"12\":false,\"1\":true,\"4\":false,\"5\":true,\"11\":true,\"10\":true,\"2\":false,\"3\":true,\"8\":true,\"9\":true,\"6\":true,\"7\":true},\"wheels\":0,\"modLivery\":-1,\"modFrontBumper\":-1,\"modTank\":-1,\"modFrontWheels\":50,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"modTransmission\":-1,\"fuelLevel\":64.3,\"modFender\":-1,\"modHorns\":-1,\"modRoof\":-1,\"modSmokeEnabled\":false,\"modSuspension\":-1,\"tyreSmokeColor\":[255,255,255],\"modEngine\":-1,\"model\":-1190343367,\"modRearBumper\":-1,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"color2\":0,\"modDashboard\":-1,\"modTrunk\":-1,\"neonColor\":[255,0,255],\"doors\":[false,false,false,false,false,false],\"modGrille\":-1,\"tankHealth\":1000.0,\"modHydrolic\":-1,\"dirtLevel\":0.0,\"color1\":0,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modArchCover\":0,\"modVanityPlate\":-1,\"modArmor\":-1,\"plateIndex\":4,\"modFrame\":0,\"neonEnabled\":[false,false,false,false],\"modBrakes\":-1,\"modStruts\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modEngineBlock\":-1,\"modBackWheels\":-1,\"wheelColor\":29,\"modExhaust\":-1,\"modDial\":-1,\"pearlescentColor\":134,\"modLivery2\":0,\"modXenon\":false,\"windowTint\":-1,\"modHood\":2,\"engineHealth\":999.7,\"bodyHealth\":1000.0,\"modTurbo\":1,\"modTrimB\":-1,\"xenonColor\":255,\"modTrimA\":-1,\"plate\":\"CVPI PD2\",\"modWindows\":-1,\"modAerials\":-1,\"modAPlate\":-1,\"modRightFender\":-1,\"modDoorSpeaker\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"CVPI PD2\",\"maxhealth\":1000.0,\"mileage\":1.1}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'CVPI PD3', '{\"dirtLevel\":0.0,\"plateIndex\":4,\"modSuspension\":-1,\"modRoof\":-1,\"color2Type\":0,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"color1Custom\":[183,183,183],\"modDoorSpeaker\":-1,\"wheels\":0,\"modHood\":2,\"modArchCover\":0,\"color2Custom\":[183,183,183],\"modSmokeEnabled\":false,\"wheelColor\":29,\"dashboardColor\":54,\"modRearBumper\":-1,\"modXenon\":0,\"plate\":\"CVPI PD3\",\"fuelLevel\":64.7,\"modTrimB\":-1,\"modHydrolic\":-1,\"modTransmission\":-1,\"modSeats\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"neonColor\":[255,0,255],\"color1Type\":0,\"modBrakes\":-1,\"modFrontWheels\":50,\"interiorColor\":53,\"modOrnaments\":-1,\"modEngine\":-1,\"modSteeringWheel\":-1,\"modTank\":-1,\"modGrille\":-1,\"modDial\":-1,\"modTrunk\":2,\"modBackWheels\":-1,\"windowTint\":-1,\"modLivery\":-1,\"model\":-1190343367,\"modAerials\":-1,\"engineHealth\":1000.0,\"modFrame\":0,\"modHorns\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"color1\":0,\"modAPlate\":-1,\"modStruts\":-1,\"extras\":{\"9\":1,\"12\":false,\"7\":1,\"8\":1,\"5\":1,\"6\":1,\"3\":1,\"4\":false,\"1\":1,\"2\":false,\"11\":1,\"10\":1},\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modFrontBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"livery\":0,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modWindows\":-1,\"modAirFilter\":-1,\"modTurbo\":1,\"modArmor\":-1,\"doors\":[false,false,false,false,false,false],\"color2\":0,\"pearlescentColor\":134,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modRightFender\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"CVPI PD3\"}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'CVPI PD4', '{\"modFrontBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"modStruts\":-1,\"color1Custom\":[183,183,183],\"modWindows\":-1,\"modTurbo\":1,\"modFrontWheels\":50,\"modShifterLeavers\":-1,\"modEngine\":-1,\"dashboardColor\":54,\"modTransmission\":-1,\"modSmokeEnabled\":false,\"modExhaust\":-1,\"modTrimB\":-1,\"modSpoilers\":-1,\"modDashboard\":-1,\"interiorColor\":53,\"wheels\":0,\"modVanityPlate\":-1,\"modDoorSpeaker\":-1,\"doors\":[false,false,false,false,false,false],\"bodyHealth\":1000.0,\"model\":-1190343367,\"tyres\":[false,false,false,false,false,false,false],\"modRoof\":-1,\"modTrimA\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"wheelColor\":29,\"modDial\":-1,\"modSeats\":-1,\"engineHealth\":1000.0,\"modRearBumper\":-1,\"color1\":134,\"color2Custom\":[183,183,183],\"neonEnabled\":[false,false,false,false],\"extras\":{\"7\":1,\"8\":1,\"5\":1,\"6\":1,\"3\":1,\"4\":false,\"1\":1,\"11\":1,\"10\":1,\"12\":false,\"9\":1,\"2\":false},\"modHorns\":-1,\"modArchCover\":0,\"modHydrolic\":-1,\"modXenon\":0,\"modPlateHolder\":-1,\"modArmor\":-1,\"pearlescentColor\":134,\"color2\":134,\"modBrakes\":-1,\"modAPlate\":-1,\"modGrille\":-1,\"dirtLevel\":2.0,\"color1Type\":6,\"livery\":0,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modLivery\":-1,\"modAirFilter\":-1,\"modBackWheels\":-1,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"windowTint\":-1,\"color2Type\":6,\"plate\":\"CVPI PD4\",\"modSpeakers\":-1,\"plateIndex\":4,\"modTank\":-1,\"modAerials\":-1,\"modHood\":2,\"modRightFender\":-1,\"fuelLevel\":64.8,\"modSideSkirt\":-1,\"modFender\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"CVPI PD4\",\"maxhealth\":1000.0,\"mileage\":0.0}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'CVSI 01 ', '{\"xenonColor\":0,\"modAirFilter\":-1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modFrame\":0,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"plateIndex\":4,\"fuelLevel\":62.4,\"bodyHealth\":1000.0,\"modLivery2\":1,\"modSeats\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"modHood\":2,\"extras\":{\"2\":false,\"3\":true,\"11\":true,\"1\":true,\"6\":true,\"7\":true,\"4\":false,\"5\":true,\"12\":false,\"10\":true,\"8\":true,\"9\":true},\"modSideSkirt\":-1,\"model\":-1190343367,\"modArmor\":-1,\"modSmokeEnabled\":false,\"tyreSmokeColor\":[255,255,255],\"modTank\":-1,\"modTrimA\":-1,\"neonColor\":[255,0,255],\"modRearBumper\":-1,\"modFender\":-1,\"pearlescentColor\":134,\"modSuspension\":-1,\"modTrunk\":-1,\"modXenon\":1,\"modEngineBlock\":-1,\"tankHealth\":1000.0,\"neonEnabled\":[false,false,false,false],\"modAPlate\":-1,\"modBrakes\":-1,\"modAerials\":-1,\"modExhaust\":-1,\"color1\":134,\"tyres\":[false,false,false,false,false,false,false],\"modPlateHolder\":-1,\"modWindows\":-1,\"modFrontBumper\":-1,\"modFrontWheels\":-1,\"doors\":[false,false,false,false,false,false],\"modHydrolic\":-1,\"modDial\":-1,\"engineHealth\":1000.0,\"modTransmission\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"modLivery\":-1,\"modSteeringWheel\":-1,\"color2\":134,\"modHorns\":-1,\"modArchCover\":0,\"modDashboard\":-1,\"modGrille\":-1,\"modSpoilers\":-1,\"dirtLevel\":8.0,\"wheels\":1,\"plate\":\"CVSI 01 \",\"modVanityPlate\":-1,\"modStruts\":-1,\"modTurbo\":1,\"windowTint\":-1,\"wheelColor\":29,\"modSpeakers\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"plate\":\"CVSI 01 \",\"mileage\":0.0}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'CVSI 02 ', '{\"wheelColor\":29,\"modLivery\":-1,\"modEngineBlock\":-1,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":5.0,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modAPlate\":-1,\"modOrnaments\":-1,\"modLivery2\":1,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"plate\":\"CVSI 02 \",\"xenonColor\":0,\"wheels\":1,\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modTurbo\":1,\"pearlescentColor\":134,\"modRoof\":-1,\"model\":-1190343367,\"modExhaust\":-1,\"modTank\":-1,\"modTrunk\":1,\"fuelLevel\":63.5,\"modFrame\":0,\"modStruts\":-1,\"color1\":134,\"modArchCover\":0,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":2,\"color2\":134,\"tyres\":[false,false,false,false,false,false,false],\"modTransmission\":-1,\"modRearBumper\":-1,\"modHorns\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"4\":false,\"3\":true,\"12\":false,\"11\":true,\"2\":false,\"1\":true,\"5\":true,\"6\":true,\"10\":true},\"modSideSkirt\":-1,\"modArmor\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"CVSI 02 \"}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'CVSI 03 ', '{\"wheelColor\":29,\"modLivery\":-1,\"model\":-1190343367,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modStruts\":-1,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":4.0,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"modLivery2\":1,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modTrunk\":-1,\"plate\":\"CVSI 03 \",\"color1\":134,\"tyres\":[false,false,false,false,false,false,false],\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"pearlescentColor\":134,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modAPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"xenonColor\":0,\"wheels\":1,\"modHorns\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"modTank\":-1,\"modSmokeEnabled\":false,\"fuelLevel\":64.1,\"modFrame\":0,\"color2\":134,\"modRoof\":-1,\"modTurbo\":1,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":2,\"modArmor\":-1,\"modRearBumper\":-1,\"modTransmission\":-1,\"modDoorSpeaker\":-1,\"modArchCover\":0,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"10\":true,\"3\":true,\"6\":true,\"11\":true,\"2\":false,\"1\":true,\"4\":false,\"5\":true,\"12\":false},\"modSideSkirt\":-1,\"modSteeringWheel\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"CVSI 03 \",\"mileage\":0.0,\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'CVSI 04 ', '{\"xenonColor\":0,\"modAirFilter\":-1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modFrame\":0,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"plateIndex\":4,\"fuelLevel\":45.4,\"bodyHealth\":1000.0,\"modLivery2\":1,\"modSeats\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"modHood\":2,\"extras\":{\"2\":false,\"3\":true,\"11\":true,\"1\":true,\"6\":true,\"7\":true,\"4\":false,\"5\":true,\"12\":false,\"10\":true,\"8\":true,\"9\":true},\"modSideSkirt\":-1,\"model\":-1190343367,\"modArmor\":-1,\"modSmokeEnabled\":false,\"tyreSmokeColor\":[255,255,255],\"modTank\":-1,\"modTrimA\":-1,\"neonColor\":[255,0,255],\"modRearBumper\":-1,\"modFender\":-1,\"pearlescentColor\":134,\"modSuspension\":-1,\"modTrunk\":-1,\"modXenon\":1,\"modEngineBlock\":-1,\"tankHealth\":1000.0,\"neonEnabled\":[false,false,false,false],\"modAPlate\":-1,\"modBrakes\":-1,\"modAerials\":-1,\"modExhaust\":-1,\"color1\":134,\"tyres\":[false,false,false,false,false,false,false],\"modPlateHolder\":-1,\"modWindows\":-1,\"modFrontBumper\":-1,\"modFrontWheels\":-1,\"doors\":[false,false,false,false,false,false],\"modHydrolic\":-1,\"modDial\":-1,\"engineHealth\":999.6,\"modTransmission\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"modLivery\":-1,\"modSteeringWheel\":-1,\"color2\":134,\"modHorns\":-1,\"modArchCover\":0,\"modDashboard\":-1,\"modGrille\":-1,\"modSpoilers\":-1,\"dirtLevel\":0.0,\"wheels\":1,\"plate\":\"CVSI 04 \",\"modVanityPlate\":-1,\"modStruts\":-1,\"modTurbo\":false,\"windowTint\":-1,\"wheelColor\":29,\"modSpeakers\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"plate\":\"CVSI 04 \",\"mileage\":263.61}', 0, 0, 0, 0, 0),
('ambulance', 0, 'none', 0, 'EXPEMS02', '{\"modFrame\":-1,\"modPlateHolder\":-1,\"modTrimB\":-1,\"modAerials\":-1,\"engineHealth\":999.9,\"modSeats\":-1,\"modFrontWheels\":-1,\"modRearBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"plateIndex\":4,\"color2\":134,\"modSpoilers\":-1,\"modArchCover\":-1,\"modWindows\":-1,\"dirtLevel\":0.0,\"modHorns\":-1,\"pearlescentColor\":0,\"modHydrolic\":-1,\"wheelColor\":64,\"modEngineBlock\":-1,\"modXenon\":255,\"modSuspension\":3,\"neonEnabled\":[false,false,false,false],\"modSpeakers\":-1,\"color2Type\":6,\"modDial\":-1,\"modHood\":-1,\"modBrakes\":0,\"modBackWheels\":-1,\"color2Custom\":[255,255,255],\"doors\":[false,false,false,false,false,false],\"modAPlate\":-1,\"modLivery\":-1,\"interiorColor\":64,\"extras\":{\"9\":1,\"6\":1,\"5\":1,\"8\":1,\"7\":1,\"2\":1,\"1\":1,\"4\":1,\"3\":1,\"12\":1,\"11\":1,\"10\":1},\"modDoorSpeaker\":-1,\"model\":-1275039440,\"modRightFender\":-1,\"bodyHealth\":1000.0,\"modTurbo\":1,\"tyres\":[false,false,false,false,false,false,false],\"modSmokeEnabled\":false,\"modStruts\":-1,\"modShifterLeavers\":-1,\"color1Type\":6,\"modRoof\":-1,\"modFender\":-1,\"modSteeringWheel\":-1,\"modTrimA\":-1,\"livery\":0,\"modVanityPlate\":-1,\"modSideSkirt\":-1,\"dashboardColor\":64,\"color1\":0,\"modDashboard\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modTrunk\":-1,\"modTransmission\":2,\"windowTint\":-1,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"plate\":\"EXPEMS02\",\"modArmor\":-1,\"color1Custom\":[8,8,8],\"modGrille\":-1,\"wheels\":0,\"modEngine\":3,\"fuelLevel\":64.7}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"EXPEMS02\",\"mileage\":0.0,\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('ambulance', 0, 'none', 0, 'EXPMS01 ', '{\"modFrame\":-1,\"modPlateHolder\":-1,\"modTrimB\":-1,\"modAerials\":-1,\"engineHealth\":999.7,\"modSeats\":-1,\"modFrontWheels\":-1,\"modRearBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"plateIndex\":4,\"color2\":134,\"modSpoilers\":-1,\"modArchCover\":-1,\"modWindows\":-1,\"dirtLevel\":7.0,\"modHorns\":-1,\"pearlescentColor\":0,\"modHydrolic\":-1,\"wheelColor\":64,\"modEngineBlock\":-1,\"modXenon\":255,\"modSuspension\":3,\"neonEnabled\":[false,false,false,false],\"modSpeakers\":-1,\"color2Type\":6,\"modDial\":-1,\"modHood\":-1,\"modBrakes\":0,\"modBackWheels\":-1,\"color2Custom\":[183,183,183],\"doors\":[false,false,false,false,false,false],\"modAPlate\":-1,\"modLivery\":-1,\"interiorColor\":64,\"extras\":{\"9\":1,\"6\":1,\"5\":1,\"8\":1,\"7\":false,\"2\":1,\"1\":1,\"4\":1,\"3\":1,\"12\":1,\"11\":1,\"10\":1},\"modDoorSpeaker\":-1,\"model\":-1275039440,\"modRightFender\":-1,\"bodyHealth\":1000.0,\"modTurbo\":1,\"tyres\":[false,false,false,false,false,false,false],\"modSmokeEnabled\":false,\"modStruts\":-1,\"modShifterLeavers\":-1,\"color1Type\":6,\"modRoof\":-1,\"modFender\":-1,\"modSteeringWheel\":-1,\"modTrimA\":-1,\"livery\":0,\"modVanityPlate\":-1,\"modSideSkirt\":-1,\"dashboardColor\":64,\"color1\":0,\"modDashboard\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modTrunk\":-1,\"modTransmission\":2,\"windowTint\":-1,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"plate\":\"EXPMS01 \",\"modArmor\":-1,\"color1Custom\":[8,8,8],\"modGrille\":-1,\"wheels\":0,\"modEngine\":3,\"fuelLevel\":64.2}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"EXPMS01 \",\"mileage\":0.0,\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'F150 01 ', '{\"extras\":{\"12\":false,\"1\":true,\"10\":true,\"11\":true,\"4\":true,\"5\":true,\"2\":false,\"3\":true,\"8\":true,\"9\":true,\"6\":false,\"7\":true},\"wheels\":3,\"modLivery\":-1,\"modFrontBumper\":2,\"modTank\":0,\"modFrontWheels\":-1,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"windowTint\":-1,\"fuelLevel\":69.0,\"modFender\":-1,\"modHorns\":-1,\"modRoof\":-1,\"modSmokeEnabled\":false,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"modEngine\":-1,\"model\":198306947,\"modRearBumper\":-1,\"modShifterLeavers\":-1,\"modSpoilers\":0,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"color2\":70,\"modDashboard\":-1,\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"doors\":[false,false,false,false,false,false],\"modGrille\":-1,\"tankHealth\":1000.0,\"modHydrolic\":-1,\"dirtLevel\":0.0,\"color1\":0,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modArchCover\":0,\"modVanityPlate\":-1,\"modArmor\":-1,\"plateIndex\":4,\"modFrame\":0,\"modTurbo\":1,\"modBrakes\":-1,\"modStruts\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modEngineBlock\":-1,\"engineHealth\":404.9,\"modTransmission\":-1,\"modLivery2\":1,\"modDial\":-1,\"modHood\":0,\"modXenon\":1,\"neonEnabled\":[false,false,false,false],\"modAPlate\":-1,\"modBackWheels\":-1,\"modExhaust\":-1,\"bodyHealth\":1000.0,\"wheelColor\":0,\"modTrimB\":-1,\"xenonColor\":255,\"modTrimA\":-1,\"modTrunk\":-1,\"modSuspension\":-1,\"modAerials\":-1,\"plate\":\"F150 01 \",\"modRightFender\":-1,\"pearlescentColor\":0}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"F150 01 \",\"maxhealth\":1000.0,\"mileage\":110.32}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'F150 02 ', '{\"wheelColor\":0,\"modLivery\":-1,\"modEngineBlock\":-1,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":10.0,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modAPlate\":-1,\"modOrnaments\":-1,\"modLivery2\":1,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"plate\":\"F150 02 \",\"xenonColor\":255,\"wheels\":3,\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":2,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modTurbo\":1,\"pearlescentColor\":0,\"modRoof\":-1,\"model\":198306947,\"modExhaust\":-1,\"modTank\":0,\"modTrunk\":-1,\"fuelLevel\":67.0,\"modFrame\":0,\"modStruts\":-1,\"color1\":0,\"modArchCover\":0,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":0,\"color2\":70,\"tyres\":[false,false,false,false,false,false,false],\"modTransmission\":-1,\"modRearBumper\":-1,\"modHorns\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":0,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"4\":true,\"3\":true,\"12\":false,\"11\":true,\"2\":false,\"1\":true,\"5\":true,\"6\":false,\"10\":true},\"modSideSkirt\":-1,\"modArmor\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"F150 02 \"}', 0, 0, 0, 0, 0);
INSERT INTO `owned_vehicles` (`owner`, `state`, `insurance`, `cooldown`, `plate`, `vehicle`, `type`, `job`, `stored`, `garage_type`, `garage_id`, `in_garage`, `impound`, `adv_stats`, `property`, `job_personalowned`, `storedhouse`, `t1ger_keys`, `t1ger_alarm`) VALUES
('sheriff', 0, 'none', 0, 'F150 03 ', '{\"wheelColor\":0,\"modLivery\":-1,\"model\":198306947,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modStruts\":-1,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":5.0,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"modLivery2\":1,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modTrunk\":-1,\"plate\":\"F150 03 \",\"color1\":0,\"tyres\":[false,false,false,false,false,false,false],\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"pearlescentColor\":0,\"modFrontBumper\":2,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modAPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"xenonColor\":255,\"wheels\":3,\"modHorns\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"modTank\":0,\"modSmokeEnabled\":false,\"fuelLevel\":69.3,\"modFrame\":0,\"color2\":70,\"modRoof\":-1,\"modTurbo\":1,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":0,\"modArmor\":-1,\"modRearBumper\":-1,\"modTransmission\":-1,\"modDoorSpeaker\":-1,\"modArchCover\":0,\"bodyHealth\":1000.0,\"modSpoilers\":0,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"10\":true,\"3\":true,\"6\":false,\"11\":true,\"2\":false,\"1\":true,\"4\":true,\"5\":true,\"12\":false},\"modSideSkirt\":-1,\"modSteeringWheel\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"F150 03 \",\"mileage\":0.0,\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'F150 04 ', '{\"wheelColor\":0,\"modLivery\":-1,\"modEngineBlock\":-1,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":4.0,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modAPlate\":-1,\"modOrnaments\":-1,\"modLivery2\":1,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":false,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"plate\":\"F150 04 \",\"xenonColor\":255,\"wheels\":3,\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":2,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modTurbo\":false,\"pearlescentColor\":0,\"modRoof\":-1,\"model\":198306947,\"modExhaust\":-1,\"modTank\":0,\"modTrunk\":-1,\"fuelLevel\":69.2,\"modFrame\":0,\"modStruts\":-1,\"color1\":0,\"modArchCover\":0,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":-1,\"color2\":70,\"tyres\":[false,false,false,false,false,false,false],\"modTransmission\":-1,\"modRearBumper\":-1,\"modHorns\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":0,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"4\":true,\"3\":true,\"12\":false,\"11\":true,\"2\":false,\"1\":true,\"5\":true,\"6\":false,\"10\":false},\"modSideSkirt\":-1,\"modArmor\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"F150 04 \"}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'F150 PD1', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":0,\"modSideSkirt\":-1,\"color2Custom\":[0,85,196],\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[8,8,8],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":0,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":32,\"modPlateHolder\":-1,\"wheels\":4,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":false,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":198306947,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":0,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"color1\":0,\"dashboardColor\":0,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":0,\"modHydrolic\":-1,\"modSpoilers\":0,\"plate\":\"F150 PD1\",\"modTank\":0,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":0,\"modAPlate\":-1,\"fuelLevel\":69.6,\"modFrontBumper\":1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":0.0,\"color2\":70}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"F150 PD1\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'F150 PD2', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":0,\"modSpoilers\":0,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[8,8,8],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":0,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":32,\"dirtLevel\":1.0,\"wheels\":4,\"modFrontBumper\":1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":false,\"5\":1,\"4\":1,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"10\":1,\"11\":1,\"12\":false,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":198306947,\"color1Type\":0,\"modHorns\":-1,\"color2Type\":0,\"modRearBumper\":0,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":0,\"windowTint\":-1,\"plate\":\"F150 PD2\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":0,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[0,85,196],\"color1\":0,\"fuelLevel\":69.8,\"modTransmission\":-1,\"dashboardColor\":0,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"modExhaust\":-1,\"modTank\":0,\"color2\":0}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"F150 PD2\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'F150 PD3', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":0,\"modSideSkirt\":-1,\"color2Custom\":[0,85,196],\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[8,8,8],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":0,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":32,\"modPlateHolder\":-1,\"wheels\":4,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":false,\"5\":1,\"4\":1,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":198306947,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":0,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"color1\":0,\"dashboardColor\":0,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":0,\"modHydrolic\":-1,\"modSpoilers\":0,\"plate\":\"F150 PD3\",\"modTank\":0,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":0,\"modAPlate\":-1,\"fuelLevel\":69.4,\"modFrontBumper\":1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":0.0,\"color2\":70}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"F150 PD3\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'F150 SL1', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":0,\"modSpoilers\":0,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":1,\"modXenon\":0,\"color1Custom\":[8,8,8],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":0,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":32,\"dirtLevel\":0.0,\"wheels\":4,\"modFrontBumper\":1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":false,\"5\":1,\"4\":1,\"3\":false,\"2\":1,\"1\":false,\"9\":1,\"10\":1,\"11\":1,\"12\":false,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":198306947,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":0,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":0,\"windowTint\":-1,\"plate\":\"F150 SL1\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":0,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[0,85,196],\"color1\":0,\"fuelLevel\":69.5,\"modTransmission\":-1,\"dashboardColor\":0,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"modExhaust\":-1,\"modTank\":0,\"color2\":70}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"F150 SL1\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('ambulance', 0, 'none', 0, 'F150EMS1', '{\"modFrame\":-1,\"modPlateHolder\":-1,\"modTrimB\":-1,\"modAerials\":-1,\"engineHealth\":999.8,\"modSeats\":-1,\"modFrontWheels\":-1,\"modRearBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"plateIndex\":4,\"color2\":134,\"modSpoilers\":-1,\"modArchCover\":-1,\"modWindows\":-1,\"dirtLevel\":0.0,\"modHorns\":-1,\"pearlescentColor\":0,\"modHydrolic\":-1,\"wheelColor\":64,\"modEngineBlock\":-1,\"modXenon\":255,\"modSuspension\":3,\"neonEnabled\":[false,false,false,false],\"modSpeakers\":-1,\"color2Type\":6,\"modDial\":-1,\"modHood\":-1,\"modBrakes\":0,\"modBackWheels\":-1,\"color2Custom\":[255,255,255],\"doors\":[false,false,false,false,false,false],\"modAPlate\":-1,\"modLivery\":-1,\"interiorColor\":64,\"extras\":{\"9\":1,\"6\":1,\"5\":1,\"8\":1,\"7\":false,\"2\":1,\"1\":1,\"4\":1,\"3\":1,\"12\":1,\"11\":1,\"10\":1},\"modDoorSpeaker\":-1,\"model\":2123826577,\"modRightFender\":-1,\"bodyHealth\":1000.0,\"modTurbo\":1,\"tyres\":[false,false,false,false,false,false,false],\"modSmokeEnabled\":false,\"modStruts\":-1,\"modShifterLeavers\":-1,\"color1Type\":6,\"modRoof\":-1,\"modFender\":-1,\"modSteeringWheel\":-1,\"modTrimA\":-1,\"livery\":0,\"modVanityPlate\":-1,\"modSideSkirt\":-1,\"dashboardColor\":64,\"color1\":0,\"modDashboard\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modTrunk\":-1,\"modTransmission\":2,\"windowTint\":-1,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"plate\":\"F150EMS1\",\"modArmor\":-1,\"color1Custom\":[8,8,8],\"modGrille\":-1,\"wheels\":3,\"modEngine\":3,\"fuelLevel\":69.1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"F150EMS1\",\"mileage\":0.0,\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('ambulance', 0, 'none', 0, 'F150EMS2', '{\"modFrame\":-1,\"modPlateHolder\":-1,\"modTrimB\":-1,\"modAerials\":-1,\"engineHealth\":999.8,\"modSeats\":-1,\"modFrontWheels\":-1,\"modRearBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"plateIndex\":4,\"color2\":134,\"modSpoilers\":-1,\"modArchCover\":-1,\"modWindows\":-1,\"dirtLevel\":7.0,\"modHorns\":-1,\"pearlescentColor\":0,\"modHydrolic\":-1,\"wheelColor\":64,\"modEngineBlock\":-1,\"modXenon\":255,\"modSuspension\":3,\"neonEnabled\":[false,false,false,false],\"modSpeakers\":-1,\"color2Type\":6,\"modDial\":-1,\"modHood\":-1,\"modBrakes\":0,\"modBackWheels\":-1,\"color2Custom\":[183,183,183],\"doors\":[false,false,false,false,false,false],\"modAPlate\":-1,\"modLivery\":-1,\"interiorColor\":64,\"extras\":{\"9\":1,\"6\":1,\"5\":1,\"8\":1,\"7\":false,\"2\":1,\"1\":1,\"4\":1,\"3\":1,\"12\":1,\"11\":1,\"10\":1},\"modDoorSpeaker\":-1,\"model\":2123826577,\"modRightFender\":-1,\"bodyHealth\":1000.0,\"modTurbo\":1,\"tyres\":[false,false,false,false,false,false,false],\"modSmokeEnabled\":false,\"modStruts\":-1,\"modShifterLeavers\":-1,\"color1Type\":6,\"modRoof\":-1,\"modFender\":-1,\"modSteeringWheel\":-1,\"modTrimA\":-1,\"livery\":0,\"modVanityPlate\":-1,\"modSideSkirt\":-1,\"dashboardColor\":64,\"color1\":0,\"modDashboard\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modTrunk\":-1,\"modTransmission\":2,\"windowTint\":-1,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"plate\":\"F150EMS2\",\"modArmor\":-1,\"color1Custom\":[8,8,8],\"modGrille\":-1,\"wheels\":3,\"modEngine\":3,\"fuelLevel\":69.7}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"F150EMS2\",\"mileage\":0.0,\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'FPIS B01', '{\"modTrimB\":-1,\"modBrakes\":-1,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"tankHealth\":1000.0,\"wheelColor\":29,\"modDashboard\":-1,\"modWindows\":-1,\"modVanityPlate\":-1,\"modHood\":-1,\"pearlescentColor\":134,\"modSideSkirt\":-1,\"modStruts\":-1,\"modPlateHolder\":-1,\"modArchCover\":-1,\"modAerials\":-1,\"modSuspension\":-1,\"modArmor\":-1,\"model\":-1808457429,\"modTank\":-1,\"modFender\":-1,\"extras\":{\"12\":false,\"11\":true,\"9\":true,\"2\":true,\"7\":true,\"8\":true,\"5\":true,\"6\":true,\"3\":false,\"4\":true,\"1\":false,\"10\":true},\"modGrille\":-1,\"modHorns\":-1,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"modTurbo\":1,\"modHydrolic\":-1,\"modXenon\":false,\"color1\":0,\"modEngineBlock\":-1,\"windowTint\":-1,\"modFrame\":-1,\"modLivery2\":0,\"modRightFender\":-1,\"modTrimA\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modSmokeEnabled\":false,\"wheels\":0,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"modSteeringWheel\":-1,\"modExhaust\":-1,\"modFrontBumper\":-1,\"modFrontWheels\":-1,\"plate\":\"FPIS B01\",\"modAPlate\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"fuelLevel\":64.5,\"doors\":[false,false,false,false,false,false],\"plateIndex\":4,\"modTransmission\":-1,\"modEngine\":-1,\"modLivery\":-1,\"modRearBumper\":-1,\"neonEnabled\":[false,false,false,false],\"tyreSmokeColor\":[255,255,255],\"xenonColor\":255,\"modOrnaments\":-1,\"modSeats\":-1,\"modDial\":-1,\"dirtLevel\":2.0,\"modTrunk\":-1,\"modBackWheels\":-1,\"modSpoilers\":-1,\"color2\":0}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"FPIS B01\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'FPIS PD1', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSpoilers\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":-1,\"modXenon\":0,\"color1Custom\":[255,255,255],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":-1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":-1,\"modFrontWheels\":-1,\"dirtLevel\":0.0,\"wheels\":0,\"modFrontBumper\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":1,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"10\":1,\"11\":1,\"12\":1,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-1808457429,\"color1Type\":0,\"modHorns\":-1,\"color2Type\":0,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":134,\"windowTint\":-1,\"plate\":\"FPIS PD1\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[255,255,255],\"color1\":0,\"fuelLevel\":64.4,\"modTransmission\":-1,\"dashboardColor\":54,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":-1,\"modExhaust\":-1,\"modTank\":-1,\"color2\":0}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"FPIS PD1\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'FPIS PD2', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSideSkirt\":-1,\"color2Custom\":[183,183,183],\"modBrakes\":-1,\"modArchCover\":-1,\"modXenon\":255,\"color1Custom\":[183,183,183],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":-1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modPlateHolder\":-1,\"wheels\":1,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-1808457429,\"color1Type\":0,\"modHorns\":-1,\"color2Type\":0,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"color1\":0,\"dashboardColor\":54,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modSpoilers\":-1,\"plate\":\"FPIS PD2\",\"modTank\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":134,\"modAPlate\":-1,\"fuelLevel\":64.8,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":-1,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":0.0,\"color2\":0}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"FPIS PD2\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'FPIS PD3', '{\"modRightFender\":-1,\"modShifterLeavers\":-1,\"modHydrolic\":-1,\"dirtLevel\":0.0,\"modRearBumper\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modTrimB\":-1,\"windowTint\":-1,\"modSideSkirt\":-1,\"modSmokeEnabled\":false,\"modDashboard\":-1,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"modFrontBumper\":-1,\"modEngine\":-1,\"modArchCover\":-1,\"wheelColor\":29,\"modSpoilers\":-1,\"modDial\":-1,\"modStruts\":-1,\"modSpeakers\":-1,\"modVanityPlate\":-1,\"modAirFilter\":-1,\"modGrille\":-1,\"plateIndex\":4,\"modRoof\":-1,\"modBackWheels\":-1,\"engineHealth\":1000.0,\"modSeats\":-1,\"extras\":{\"2\":false,\"3\":true,\"1\":true,\"10\":true,\"7\":true,\"12\":false,\"5\":true,\"8\":true,\"9\":true,\"4\":true,\"11\":true,\"6\":true},\"modSuspension\":-1,\"modEngineBlock\":-1,\"modPlateHolder\":-1,\"fuelLevel\":64.7,\"modXenon\":false,\"modBrakes\":-1,\"neonEnabled\":[false,false,false,false],\"modAerials\":-1,\"color1\":0,\"bodyHealth\":1000.0,\"modExhaust\":-1,\"plate\":\"FPIS PD3\",\"pearlescentColor\":134,\"modFrame\":-1,\"modTrimA\":-1,\"modArmor\":-1,\"modTrunk\":-1,\"color2\":0,\"modDoorSpeaker\":-1,\"modTurbo\":1,\"modTransmission\":-1,\"modTank\":-1,\"modFender\":-1,\"tankHealth\":1000.0,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"modLivery\":-1,\"wheels\":0,\"doors\":[false,false,false,false,false,false],\"modWindows\":-1,\"xenonColor\":255,\"modLivery2\":2,\"modHood\":-1,\"modSteeringWheel\":-1,\"model\":-1808457429,\"modAPlate\":-1,\"modHorns\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"plate\":\"FPIS PD3\",\"mileage\":0.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'FPIU B01', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSideSkirt\":-1,\"color2Custom\":[183,183,183],\"modBrakes\":-1,\"modArchCover\":1,\"modXenon\":0,\"color1Custom\":[49,49,49],\"modTrimB\":0,\"livery\":3,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":-1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":48,\"modPlateHolder\":-1,\"wheels\":3,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":1,\"3\":false,\"2\":1,\"1\":false,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-757309284,\"color1Type\":1,\"modHorns\":-1,\"color2Type\":0,\"modRearBumper\":0,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"color1\":0,\"dashboardColor\":54,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modSpoilers\":-1,\"plate\":\"FPIU B01\",\"modTank\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":0,\"modAPlate\":-1,\"fuelLevel\":79.6,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":2.0,\"color2\":0}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"FPIU B01\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'FPIU PD1', '{\"modEngine\":-1,\"modSpoilers\":-1,\"modArchCover\":0,\"color2\":134,\"modVanityPlate\":-1,\"modLivery\":-1,\"plate\":\"FPIU PD1\",\"windowTint\":-1,\"modFender\":-1,\"livery\":0,\"modWindows\":-1,\"plateIndex\":4,\"extras\":{\"9\":1,\"8\":1,\"7\":1,\"6\":1,\"12\":false,\"1\":1,\"5\":1,\"4\":false,\"11\":1,\"10\":1,\"3\":1,\"2\":false},\"color2Type\":6,\"modFrontBumper\":1,\"doors\":[false,false,false,false,false,false],\"neonColor\":[255,0,255],\"modSideSkirt\":-1,\"color2Custom\":[183,183,183],\"modPlateHolder\":-1,\"color1Custom\":[183,183,183],\"modStruts\":-1,\"modSmokeEnabled\":false,\"dirtLevel\":12.3,\"modAirFilter\":-1,\"modRightFender\":-1,\"modTrunk\":2,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modShifterLeavers\":-1,\"modSteeringWheel\":-1,\"neonEnabled\":[false,false,false,false],\"modDial\":-1,\"modGrille\":-1,\"modTransmission\":-1,\"wheels\":3,\"modEngineBlock\":-1,\"color1Type\":6,\"modHood\":2,\"wheelColor\":29,\"modAPlate\":-1,\"pearlescentColor\":134,\"bodyHealth\":1000.0,\"modRoof\":-1,\"fuelLevel\":92.4,\"model\":-757309284,\"modBrakes\":-1,\"color1\":134,\"modBackWheels\":-1,\"dashboardColor\":54,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"modFrontWheels\":49,\"modTrimB\":-1,\"engineHealth\":748.1,\"modArmor\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modExhaust\":-1,\"modAerials\":-1,\"modHydrolic\":-1,\"modXenon\":0,\"modRearBumper\":0,\"modTrimA\":-1,\"modTurbo\":1,\"modSuspension\":-1,\"modTank\":-1,\"modDashboard\":-1,\"modSpeakers\":-1,\"modFrame\":0,\"modOrnaments\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"FPIU PD1\"}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'FPIU PD2', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSpoilers\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[255,255,255],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":2,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":49,\"dirtLevel\":0.0,\"wheels\":3,\"modFrontBumper\":1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":1,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"10\":1,\"11\":1,\"12\":false,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-757309284,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":0,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":134,\"windowTint\":-1,\"plate\":\"FPIU PD2\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[255,255,255],\"color1\":134,\"fuelLevel\":79.8,\"modTransmission\":-1,\"dashboardColor\":54,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"modExhaust\":-1,\"modTank\":-1,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"FPIU PD2\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'FPIU PD3', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSideSkirt\":-1,\"color2Custom\":[183,183,183],\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[183,183,183],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":49,\"modPlateHolder\":-1,\"wheels\":3,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-757309284,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":0,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"color1\":134,\"dashboardColor\":54,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modSpoilers\":-1,\"plate\":\"FPIU PD3\",\"modTank\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":134,\"modAPlate\":-1,\"fuelLevel\":79.5,\"modFrontBumper\":1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":0.0,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"FPIU PD3\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'FPIU PD4', '{\"extras\":{\"12\":false,\"1\":true,\"4\":true,\"5\":true,\"11\":true,\"10\":true,\"2\":false,\"3\":true,\"8\":true,\"9\":true,\"6\":true,\"7\":true},\"wheels\":3,\"modLivery\":-1,\"modFrontBumper\":1,\"modTank\":-1,\"modFrontWheels\":49,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"modTransmission\":-1,\"fuelLevel\":79.8,\"modFender\":-1,\"modHorns\":-1,\"modRoof\":-1,\"modSmokeEnabled\":false,\"modSuspension\":-1,\"tyreSmokeColor\":[255,255,255],\"modEngine\":-1,\"model\":-757309284,\"modRearBumper\":0,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"color2\":134,\"modDashboard\":-1,\"modTrunk\":2,\"neonColor\":[255,0,255],\"doors\":[false,false,false,false,false,false],\"modGrille\":-1,\"tankHealth\":1000.0,\"modHydrolic\":-1,\"dirtLevel\":0.0,\"color1\":134,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modArchCover\":0,\"modVanityPlate\":-1,\"modArmor\":-1,\"plateIndex\":4,\"modFrame\":0,\"neonEnabled\":[false,false,false,false],\"modBrakes\":-1,\"modStruts\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modEngineBlock\":-1,\"modBackWheels\":-1,\"wheelColor\":29,\"modExhaust\":-1,\"modDial\":-1,\"pearlescentColor\":134,\"modLivery2\":0,\"modXenon\":false,\"windowTint\":-1,\"modHood\":1,\"engineHealth\":1000.0,\"bodyHealth\":1000.0,\"modTurbo\":1,\"modTrimB\":-1,\"xenonColor\":255,\"modTrimA\":-1,\"plate\":\"FPIU PD4\",\"modWindows\":-1,\"modAerials\":-1,\"modAPlate\":-1,\"modRightFender\":-1,\"modDoorSpeaker\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"FPIU PD4\",\"maxhealth\":1000.0,\"mileage\":51.12}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'FPSL PD1', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSideSkirt\":-1,\"color2Custom\":[183,183,183],\"modBrakes\":-1,\"modArchCover\":1,\"modXenon\":0,\"color1Custom\":[183,183,183],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":49,\"modPlateHolder\":-1,\"wheels\":3,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":false,\"2\":1,\"1\":false,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-757309284,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":0,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"color1\":134,\"dashboardColor\":54,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modSpoilers\":-1,\"plate\":\"FPSL PD1\",\"modTank\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":134,\"modAPlate\":-1,\"fuelLevel\":79.5,\"modFrontBumper\":1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":0.0,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"FPSL PD1\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'FPSL PD2', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSpoilers\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":1,\"modXenon\":0,\"color1Custom\":[255,255,255],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":49,\"dirtLevel\":0.0,\"wheels\":3,\"modFrontBumper\":1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":1,\"3\":false,\"2\":1,\"1\":false,\"9\":1,\"10\":1,\"11\":1,\"12\":false,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-757309284,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":0,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":134,\"windowTint\":-1,\"plate\":\"FPSL PD2\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[255,255,255],\"color1\":134,\"fuelLevel\":79.4,\"modTransmission\":-1,\"dashboardColor\":54,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"modExhaust\":-1,\"modTank\":-1,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"FPSL PD2\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'FSIS 01 ', '{\"wheelColor\":29,\"modLivery\":-1,\"model\":-1808457429,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modStruts\":-1,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":6.0,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"modLivery2\":2,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modTrunk\":-1,\"plate\":\"FSIS 01 \",\"color1\":134,\"tyres\":[false,false,false,false,false,false,false],\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"pearlescentColor\":134,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modAPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"xenonColor\":255,\"wheels\":1,\"modHorns\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"modTank\":-1,\"modSmokeEnabled\":false,\"fuelLevel\":63.9,\"modFrame\":-1,\"color2\":134,\"modRoof\":-1,\"modTurbo\":1,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":-1,\"modArmor\":-1,\"modRearBumper\":-1,\"modTransmission\":-1,\"modDoorSpeaker\":-1,\"modArchCover\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"10\":true,\"3\":true,\"6\":true,\"11\":true,\"2\":false,\"1\":true,\"4\":false,\"5\":true,\"12\":false},\"modSideSkirt\":-1,\"modSteeringWheel\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"FSIS 01 \",\"mileage\":0.0,\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'FSIS 02 ', '{\"wheelColor\":29,\"modLivery\":-1,\"modEngineBlock\":-1,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":5.0,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modAPlate\":-1,\"modOrnaments\":-1,\"modLivery2\":2,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"plate\":\"FSIS 02 \",\"xenonColor\":255,\"wheels\":1,\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modTurbo\":1,\"pearlescentColor\":134,\"modRoof\":-1,\"model\":-1808457429,\"modExhaust\":-1,\"modTank\":-1,\"modTrunk\":-1,\"fuelLevel\":62.9,\"modFrame\":-1,\"modStruts\":-1,\"color1\":134,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":-1,\"color2\":134,\"tyres\":[false,false,false,false,false,false,false],\"modTransmission\":-1,\"modRearBumper\":-1,\"modHorns\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"4\":false,\"3\":true,\"12\":false,\"11\":true,\"2\":false,\"1\":true,\"5\":true,\"6\":true,\"10\":true},\"modSideSkirt\":-1,\"modArmor\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"FSIS 02 \"}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'FSIS 03 ', '{\"wheelColor\":29,\"modLivery\":-1,\"model\":-1808457429,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modStruts\":-1,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":3.0,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"modLivery2\":2,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modTrunk\":-1,\"plate\":\"FSIS 03 \",\"color1\":134,\"tyres\":[false,false,false,false,false,false,false],\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"pearlescentColor\":134,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modAPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"xenonColor\":255,\"wheels\":1,\"modHorns\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"modTank\":-1,\"modSmokeEnabled\":false,\"fuelLevel\":64.0,\"modFrame\":-1,\"color2\":134,\"modRoof\":-1,\"modTurbo\":1,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":-1,\"modArmor\":-1,\"modRearBumper\":-1,\"modTransmission\":-1,\"modDoorSpeaker\":-1,\"modArchCover\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"10\":true,\"3\":true,\"6\":true,\"11\":true,\"2\":false,\"1\":true,\"4\":false,\"5\":true,\"12\":false},\"modSideSkirt\":-1,\"modSteeringWheel\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"FSIS 03 \",\"mileage\":0.0,\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'FSIS 04 ', '{\"wheelColor\":29,\"modLivery\":-1,\"modEngineBlock\":-1,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":4.0,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modAPlate\":-1,\"modOrnaments\":-1,\"modLivery2\":2,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"plate\":\"FSIS 04 \",\"xenonColor\":255,\"wheels\":1,\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modTurbo\":1,\"pearlescentColor\":134,\"modRoof\":-1,\"model\":-1808457429,\"modExhaust\":-1,\"modTank\":-1,\"modTrunk\":-1,\"fuelLevel\":64.2,\"modFrame\":-1,\"modStruts\":-1,\"color1\":134,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":-1,\"color2\":134,\"tyres\":[false,false,false,false,false,false,false],\"modTransmission\":-1,\"modRearBumper\":-1,\"modHorns\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"4\":false,\"3\":true,\"12\":false,\"11\":true,\"2\":false,\"1\":true,\"5\":true,\"6\":true,\"10\":true},\"modSideSkirt\":-1,\"modArmor\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"FSIS 04 \"}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'FSIU 01 ', '{\"wheelColor\":29,\"modLivery\":-1,\"modEngineBlock\":-1,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":8.0,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modAPlate\":-1,\"modOrnaments\":-1,\"modLivery2\":2,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"plate\":\"FSIU 01 \",\"xenonColor\":0,\"wheels\":1,\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modTurbo\":1,\"pearlescentColor\":134,\"modRoof\":-1,\"model\":-757309284,\"modExhaust\":-1,\"modTank\":-1,\"modTrunk\":-1,\"fuelLevel\":78.8,\"modFrame\":0,\"modStruts\":-1,\"color1\":134,\"modArchCover\":0,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":1,\"color2\":134,\"tyres\":[false,false,false,false,false,false,false],\"modTransmission\":-1,\"modRearBumper\":0,\"modHorns\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"4\":false,\"3\":true,\"12\":false,\"11\":true,\"2\":false,\"1\":true,\"5\":true,\"6\":true,\"10\":true},\"modSideSkirt\":-1,\"modArmor\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"FSIU 01 \"}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'FSIU 02 ', '{\"wheelColor\":29,\"modLivery\":-1,\"model\":-757309284,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":8.0,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"modLivery2\":2,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modTrunk\":-1,\"plate\":\"FSIU 02 \",\"color1\":134,\"tyres\":[false,false,false,false,false,false,false],\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"xenonColor\":0,\"tyreSmokeColor\":[255,255,255],\"modSteeringWheel\":-1,\"modArmor\":-1,\"modRoof\":-1,\"modVanityPlate\":-1,\"modStruts\":-1,\"modTank\":-1,\"modRearBumper\":0,\"fuelLevel\":78.6,\"modFrame\":0,\"wheels\":1,\"modSideSkirt\":-1,\"modEngineBlock\":-1,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":2,\"color2\":134,\"pearlescentColor\":134,\"modTransmission\":-1,\"modAPlate\":-1,\"modArchCover\":0,\"bodyHealth\":1000.0,\"modHorns\":-1,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"4\":false,\"3\":true,\"12\":false,\"11\":true,\"2\":false,\"1\":true,\"6\":true,\"5\":true,\"10\":true},\"modTurbo\":1,\"modSpoilers\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"FSIU 02 \",\"mileage\":0.0,\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'IIPV B01', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSideSkirt\":-1,\"color2Custom\":[49,49,49],\"modBrakes\":-1,\"modArchCover\":1,\"modXenon\":0,\"color1Custom\":[49,49,49],\"modTrimB\":-1,\"livery\":3,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":-1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":50,\"modPlateHolder\":-1,\"wheels\":0,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":1,\"3\":false,\"2\":1,\"1\":false,\"9\":1,\"7\":1,\"11\":false,\"12\":1,\"8\":1,\"10\":false},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-267442178,\"color1Type\":1,\"modHorns\":-1,\"color2Type\":1,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":0,\"color1\":0,\"dashboardColor\":54,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modSpoilers\":-1,\"plate\":\"IIPV B01\",\"modTank\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":0,\"modAPlate\":-1,\"fuelLevel\":64.8,\"modFrontBumper\":0,\"modRightFender\":-1,\"modTurbo\":false,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":0.0,\"color2\":0}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"IIPV B01\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'IPPV PD1', '{\"dirtLevel\":1.7,\"plateIndex\":4,\"modSuspension\":-1,\"modRoof\":-1,\"color2Type\":0,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"color1Custom\":[183,183,183],\"modDoorSpeaker\":-1,\"wheels\":0,\"modHood\":2,\"modArchCover\":0,\"color2Custom\":[183,183,183],\"modSmokeEnabled\":false,\"wheelColor\":29,\"dashboardColor\":54,\"modRearBumper\":-1,\"modXenon\":0,\"plate\":\"IPPV PD1\",\"fuelLevel\":62.4,\"modTrimB\":-1,\"modHydrolic\":-1,\"modTransmission\":-1,\"modSeats\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"neonColor\":[255,0,255],\"color1Type\":0,\"modBrakes\":-1,\"modFrontWheels\":50,\"interiorColor\":53,\"modOrnaments\":-1,\"modEngine\":-1,\"modSteeringWheel\":-1,\"modTank\":-1,\"modGrille\":-1,\"modDial\":-1,\"modTrunk\":-1,\"modBackWheels\":-1,\"windowTint\":-1,\"modLivery\":-1,\"model\":-267442178,\"modAerials\":-1,\"engineHealth\":1000.0,\"modFrame\":0,\"modHorns\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"color1\":0,\"modAPlate\":-1,\"modStruts\":-1,\"extras\":{\"9\":1,\"12\":false,\"7\":1,\"8\":1,\"5\":1,\"6\":1,\"3\":1,\"4\":false,\"1\":1,\"2\":false,\"11\":1,\"10\":1},\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modFrontBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"livery\":0,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modWindows\":-1,\"modAirFilter\":-1,\"modTurbo\":1,\"modArmor\":-1,\"doors\":[false,false,false,false,false,false],\"color2\":0,\"pearlescentColor\":134,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modRightFender\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"IPPV PD1\"}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'IPPV PD2', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSideSkirt\":-1,\"color2Custom\":[183,183,183],\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[183,183,183],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":2,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":50,\"modPlateHolder\":-1,\"wheels\":0,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-267442178,\"color1Type\":0,\"modHorns\":-1,\"color2Type\":0,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"color1\":0,\"dashboardColor\":54,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modSpoilers\":-1,\"plate\":\"IPPV PD2\",\"modTank\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":134,\"modAPlate\":-1,\"fuelLevel\":64.3,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":0.0,\"color2\":0}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"IPPV PD2\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'IPPV PD3', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSpoilers\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[255,255,255],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":2,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":50,\"dirtLevel\":0.0,\"wheels\":0,\"modFrontBumper\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"10\":1,\"11\":1,\"12\":false,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-267442178,\"color1Type\":0,\"modHorns\":-1,\"color2Type\":0,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":134,\"windowTint\":-1,\"plate\":\"IPPV PD3\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[255,255,255],\"color1\":0,\"fuelLevel\":64.3,\"modTransmission\":-1,\"dashboardColor\":54,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"modExhaust\":-1,\"modTank\":-1,\"color2\":0}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"IPPV PD3\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0);
INSERT INTO `owned_vehicles` (`owner`, `state`, `insurance`, `cooldown`, `plate`, `vehicle`, `type`, `job`, `stored`, `garage_type`, `garage_id`, `in_garage`, `impound`, `adv_stats`, `property`, `job_personalowned`, `storedhouse`, `t1ger_keys`, `t1ger_alarm`) VALUES
('sheriff', 0, 'none', 0, 'ISPV 01 ', '{\"wheelColor\":29,\"modLivery\":-1,\"model\":-267442178,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":4.0,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"modLivery2\":1,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modTrunk\":-1,\"plate\":\"ISPV 01 \",\"color1\":134,\"tyres\":[false,false,false,false,false,false,false],\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"xenonColor\":255,\"tyreSmokeColor\":[255,255,255],\"modSteeringWheel\":-1,\"modArmor\":-1,\"modRoof\":-1,\"modVanityPlate\":-1,\"modStruts\":-1,\"modTank\":-1,\"modRearBumper\":-1,\"fuelLevel\":60.4,\"modFrame\":0,\"wheels\":1,\"modSideSkirt\":-1,\"modEngineBlock\":-1,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":2,\"color2\":134,\"pearlescentColor\":134,\"modTransmission\":-1,\"modAPlate\":-1,\"modArchCover\":0,\"bodyHealth\":1000.0,\"modHorns\":-1,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"4\":false,\"3\":true,\"12\":false,\"11\":true,\"2\":false,\"1\":true,\"6\":true,\"5\":true,\"10\":true},\"modTurbo\":1,\"modSpoilers\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"ISPV 01 \",\"mileage\":0.0,\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'ISPV 02 ', '{\"wheelColor\":29,\"modLivery\":-1,\"model\":-267442178,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modStruts\":-1,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":3.0,\"engineHealth\":999.9,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"modLivery2\":1,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modTrunk\":-1,\"plate\":\"ISPV 02 \",\"color1\":134,\"tyres\":[false,false,false,false,false,false,false],\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"pearlescentColor\":134,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modAPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"xenonColor\":255,\"wheels\":1,\"modHorns\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"modTank\":-1,\"modSmokeEnabled\":false,\"fuelLevel\":60.7,\"modFrame\":0,\"color2\":134,\"modRoof\":-1,\"modTurbo\":1,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":2,\"modArmor\":-1,\"modRearBumper\":-1,\"modTransmission\":-1,\"modDoorSpeaker\":-1,\"modArchCover\":0,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"10\":true,\"3\":true,\"6\":true,\"11\":true,\"2\":false,\"1\":true,\"4\":false,\"5\":true,\"12\":false},\"modSideSkirt\":-1,\"modSteeringWheel\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"ISPV 02 \",\"mileage\":0.0,\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'ISPV 03 ', '{\"wheelColor\":29,\"modLivery\":-1,\"model\":-267442178,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modStruts\":-1,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":4.0,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"modLivery2\":1,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modTrunk\":-1,\"plate\":\"ISPV 03 \",\"color1\":134,\"tyres\":[false,false,false,false,false,false,false],\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"pearlescentColor\":134,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modAPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"xenonColor\":255,\"wheels\":1,\"modHorns\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"modTank\":-1,\"modSmokeEnabled\":false,\"fuelLevel\":63.4,\"modFrame\":0,\"color2\":134,\"modRoof\":-1,\"modTurbo\":false,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":2,\"modArmor\":-1,\"modRearBumper\":-1,\"modTransmission\":-1,\"modDoorSpeaker\":-1,\"modArchCover\":0,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"10\":true,\"3\":true,\"6\":true,\"11\":true,\"2\":false,\"1\":true,\"4\":false,\"5\":true,\"12\":false},\"modSideSkirt\":-1,\"modSteeringWheel\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"ISPV 03 \",\"mileage\":0.0,\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'ISPV 04 ', '{\"extras\":{\"12\":false,\"1\":true,\"10\":true,\"11\":true,\"4\":false,\"5\":true,\"2\":false,\"3\":true,\"8\":true,\"9\":true,\"6\":true,\"7\":true},\"wheels\":1,\"modLivery\":-1,\"modFrontBumper\":-1,\"modTank\":-1,\"modFrontWheels\":-1,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"windowTint\":-1,\"fuelLevel\":59.8,\"modFender\":-1,\"modHorns\":-1,\"modRoof\":-1,\"modSmokeEnabled\":false,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"modEngine\":-1,\"model\":-267442178,\"modRearBumper\":-1,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"color2\":134,\"modDashboard\":-1,\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"doors\":[false,false,false,false,false,false],\"modGrille\":-1,\"tankHealth\":1000.0,\"modHydrolic\":-1,\"dirtLevel\":7.0,\"color1\":134,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modArchCover\":0,\"modVanityPlate\":-1,\"modArmor\":-1,\"plateIndex\":4,\"modFrame\":0,\"modTurbo\":1,\"modBrakes\":-1,\"modStruts\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modEngineBlock\":-1,\"engineHealth\":1000.0,\"modTransmission\":-1,\"modLivery2\":1,\"modDial\":-1,\"modHood\":2,\"modXenon\":1,\"neonEnabled\":[false,false,false,false],\"modAPlate\":-1,\"modBackWheels\":-1,\"modExhaust\":-1,\"bodyHealth\":1000.0,\"wheelColor\":29,\"modTrimB\":-1,\"xenonColor\":255,\"modTrimA\":-1,\"modTrunk\":-1,\"modSuspension\":-1,\"modAerials\":-1,\"plate\":\"ISPV 04 \",\"modRightFender\":-1,\"pearlescentColor\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"ISPV 04 \",\"maxhealth\":1000.0,\"mileage\":0.0}', 0, 0, 0, 0, 0),
('a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 0, 'none', 0, 'LSPD 07 ', '{\"modDial\":-1,\"modEngine\":-1,\"modFender\":-1,\"modAPlate\":-1,\"modWindows\":-1,\"modRearBumper\":0,\"modGrille\":-1,\"pearlescentColor\":6,\"modTrimB\":0,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modArchCover\":-1,\"doors\":[false,false,false,false,false,false],\"modTransmission\":-1,\"neonColor\":[255,0,255],\"wheels\":0,\"model\":-757309284,\"modSuspension\":-1,\"tyreSmokeColor\":[255,255,255],\"modBackWheels\":-1,\"xenonColor\":0,\"extras\":{\"2\":false,\"1\":false,\"4\":true,\"3\":true,\"10\":false,\"9\":false,\"12\":false,\"11\":false,\"6\":false,\"5\":true,\"8\":true,\"7\":false},\"modBrakes\":-1,\"engineHealth\":929.8,\"modDashboard\":-1,\"modTank\":-1,\"modHorns\":-1,\"modTurbo\":1,\"modLivery\":-1,\"modAirFilter\":-1,\"bodyHealth\":998.5,\"modStruts\":-1,\"modSeats\":-1,\"color1\":6,\"modSmokeEnabled\":false,\"modFrontBumper\":-1,\"modOrnaments\":-1,\"tankHealth\":998.9,\"tyres\":[false,false,false,false,false,false,false],\"wheelColor\":29,\"modDoorSpeaker\":-1,\"modShifterLeavers\":-1,\"plate\":\"LSPD 07 \",\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"modFrame\":-1,\"modXenon\":1,\"modAerials\":-1,\"modTrimA\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"fuelLevel\":53.9,\"modSpoilers\":-1,\"plateIndex\":4,\"color2\":134,\"modFrontWheels\":52,\"windowTint\":-1,\"modTrunk\":-1,\"modLivery2\":3,\"modSideSkirt\":-1,\"modArmor\":-1,\"modVanityPlate\":-1,\"modHood\":-1,\"dirtLevel\":5.3,\"modSpeakers\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":248.54,\"plate\":\"LSPD 07 \"}', 0, 0, 0, 1, 1),
('police', 0, 'none', 0, 'PD K9 01', '{\"color1\":4,\"plate\":\"PD K9 01\",\"livery\":0,\"color1Type\":6,\"modSideSkirt\":-1,\"modRearBumper\":-1,\"color2Custom\":[90,94,102],\"modPlateHolder\":-1,\"modDial\":-1,\"modFrame\":-1,\"fuelLevel\":64.9,\"bodyHealth\":1000.0,\"doors\":[false,false,false,false,false,false],\"modFrontBumper\":-1,\"modWindows\":-1,\"plateIndex\":4,\"modFrontWheels\":-1,\"modHorns\":-1,\"neonEnabled\":[false,false,false,false],\"modBackWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"modSteeringWheel\":-1,\"color1Custom\":[90,94,102],\"wheelColor\":0,\"modTrunk\":-1,\"modRoof\":-1,\"modStruts\":-1,\"dirtLevel\":0.3,\"modArmor\":4,\"modLivery\":-1,\"modSeats\":-1,\"modFender\":-1,\"modHood\":-1,\"interiorColor\":0,\"modVanityPlate\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSpeakers\":-1,\"modRightFender\":-1,\"modGrille\":-1,\"modSmokeEnabled\":false,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"modExhaust\":-1,\"modHydrolic\":-1,\"pearlescentColor\":0,\"modSpoilers\":-1,\"modArchCover\":-1,\"tyres\":[false,false,false,false,false,false,false],\"color2\":4,\"modAPlate\":-1,\"modBrakes\":0,\"extras\":{\"1\":1,\"8\":1,\"10\":1,\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"9\":false,\"11\":1,\"7\":1,\"12\":1},\"modTurbo\":1,\"engineHealth\":999.7,\"modDashboard\":-1,\"modTransmission\":2,\"modEngineBlock\":-1,\"modEngine\":3,\"modSuspension\":-1,\"modTrimA\":-1,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"dashboardColor\":0,\"modTrimB\":-1,\"modTank\":-1,\"model\":-1004153400,\"modXenon\":0,\"color2Type\":6,\"modDoorSpeaker\":-1,\"wheels\":1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"PD K9 01\"}', 0, 0, 0, 0, 0),
('ambulance', 0, 'none', 0, 'PPEMS01 ', '{\"modFrame\":-1,\"modPlateHolder\":-1,\"modTrimB\":-1,\"modAerials\":-1,\"engineHealth\":999.8,\"modSeats\":-1,\"modFrontWheels\":-1,\"modRearBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"plateIndex\":4,\"color2\":134,\"modSpoilers\":-1,\"modArchCover\":-1,\"modWindows\":-1,\"dirtLevel\":10.0,\"modHorns\":-1,\"pearlescentColor\":0,\"modHydrolic\":-1,\"wheelColor\":64,\"modEngineBlock\":-1,\"modXenon\":0,\"modSuspension\":3,\"neonEnabled\":[false,false,false,false],\"modSpeakers\":-1,\"color2Type\":6,\"modDial\":-1,\"modHood\":-1,\"modBrakes\":0,\"modBackWheels\":-1,\"color2Custom\":[183,183,183],\"doors\":[false,false,false,false,false,false],\"modAPlate\":-1,\"modLivery\":-1,\"interiorColor\":64,\"extras\":{\"9\":1,\"6\":1,\"5\":1,\"8\":1,\"7\":1,\"2\":1,\"1\":1,\"4\":1,\"3\":1,\"12\":1,\"11\":1,\"10\":1},\"modDoorSpeaker\":-1,\"model\":-2107636464,\"modRightFender\":-1,\"bodyHealth\":1000.0,\"modTurbo\":1,\"tyres\":[false,false,false,false,false,false,false],\"modSmokeEnabled\":false,\"modStruts\":-1,\"modShifterLeavers\":-1,\"color1Type\":6,\"modRoof\":-1,\"modFender\":-1,\"modSteeringWheel\":-1,\"modTrimA\":-1,\"livery\":0,\"modVanityPlate\":-1,\"modSideSkirt\":-1,\"dashboardColor\":64,\"color1\":0,\"modDashboard\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modTrunk\":-1,\"modTransmission\":2,\"windowTint\":-1,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"plate\":\"PPEMS01 \",\"modArmor\":-1,\"color1Custom\":[8,8,8],\"modGrille\":-1,\"wheels\":3,\"modEngine\":3,\"fuelLevel\":64.7}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"PPEMS01 \",\"mileage\":0.0,\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'TTIP PD1', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSideSkirt\":-1,\"color2Custom\":[183,183,183],\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[183,183,183],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":2,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":48,\"modPlateHolder\":-1,\"wheels\":3,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":1189120983,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"color1\":134,\"dashboardColor\":54,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modSpoilers\":-1,\"plate\":\"TTIP PD1\",\"modTank\":0,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":134,\"modAPlate\":-1,\"fuelLevel\":64.7,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":0.0,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"TTIP PD1\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'TTIP PD2', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSpoilers\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":0,\"color1Custom\":[255,255,255],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":2,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":48,\"dirtLevel\":2.0,\"wheels\":3,\"modFrontBumper\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"10\":1,\"11\":1,\"12\":false,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":1189120983,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":134,\"windowTint\":-1,\"plate\":\"TTIP PD2\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[255,255,255],\"color1\":134,\"fuelLevel\":64.7,\"modTransmission\":-1,\"dashboardColor\":54,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"modExhaust\":-1,\"modTank\":0,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"TTIP PD2\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'TTKK B01', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSpoilers\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":1,\"modXenon\":255,\"color1Custom\":[46,25,0],\"modTrimB\":0,\"livery\":3,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":-1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":49,\"dirtLevel\":2.0,\"wheels\":3,\"modFrontBumper\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":1,\"3\":false,\"2\":1,\"1\":false,\"9\":1,\"10\":1,\"11\":1,\"12\":false,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-614954239,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":134,\"windowTint\":-1,\"plate\":\"TTKK B01\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[255,255,255],\"color1\":134,\"fuelLevel\":64.2,\"modTransmission\":-1,\"dashboardColor\":54,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"modExhaust\":-1,\"modTank\":-1,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"TTKK B01\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'TTPV PD1', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSideSkirt\":-1,\"color2Custom\":[183,183,183],\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":255,\"color1Custom\":[183,183,183],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":0,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":48,\"modPlateHolder\":-1,\"wheels\":3,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-614954239,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":4,\"color1\":134,\"dashboardColor\":54,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modSpoilers\":-1,\"plate\":\"TTPV PD1\",\"modTank\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":134,\"modAPlate\":-1,\"fuelLevel\":64.7,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":1.0,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"TTPV PD1\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'TTPV PD2', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSpoilers\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":255,\"color1Custom\":[255,255,255],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":0,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":-1,\"dirtLevel\":0.0,\"wheels\":1,\"modFrontBumper\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":1,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"10\":1,\"11\":1,\"12\":false,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-614954239,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":134,\"windowTint\":-1,\"plate\":\"TTPV PD2\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[255,255,255],\"color1\":134,\"fuelLevel\":64.6,\"modTransmission\":-1,\"dashboardColor\":54,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"modExhaust\":-1,\"modTank\":-1,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"TTPV PD2\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'TTPV PD3', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSideSkirt\":-1,\"color2Custom\":[183,183,183],\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":255,\"color1Custom\":[183,183,183],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"bodyHealth\":1000.0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":0,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":48,\"modPlateHolder\":-1,\"wheels\":3,\"modDashboard\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":false,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"7\":1,\"11\":1,\"12\":false,\"8\":1,\"10\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-614954239,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"color1\":134,\"dashboardColor\":54,\"modTrimA\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modSpoilers\":-1,\"plate\":\"TTPV PD3\",\"modTank\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"pearlescentColor\":134,\"modAPlate\":-1,\"fuelLevel\":64.7,\"modFrontBumper\":-1,\"modRightFender\":-1,\"modTurbo\":1,\"plateIndex\":4,\"modArmor\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"doors\":[false,false,false,false,false,false],\"dirtLevel\":0.0,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"TTPV PD3\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('police', 0, 'none', 0, 'TTPV PD4', '{\"engineHealth\":1000.0,\"tyres\":[false,false,false,false,false,false,false],\"interiorColor\":53,\"modSpoilers\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modArchCover\":0,\"modXenon\":255,\"color1Custom\":[255,255,255],\"modTrimB\":-1,\"livery\":0,\"modAerials\":-1,\"modGrille\":-1,\"modRoof\":-1,\"plateIndex\":4,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modHood\":0,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modTrunk\":2,\"modFrontWheels\":48,\"dirtLevel\":2.0,\"wheels\":3,\"modFrontBumper\":-1,\"modFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":1,\"5\":1,\"4\":1,\"3\":1,\"2\":false,\"1\":1,\"9\":1,\"10\":1,\"11\":1,\"12\":false,\"8\":1,\"7\":1},\"modEngineBlock\":-1,\"modBackWheels\":-1,\"model\":-614954239,\"color1Type\":6,\"modHorns\":-1,\"color2Type\":6,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modAPlate\":-1,\"pearlescentColor\":134,\"windowTint\":-1,\"plate\":\"TTPV PD4\",\"modArmor\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"doors\":[false,false,false,false,false,false],\"modSpeakers\":-1,\"wheelColor\":29,\"modHydrolic\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"color2Custom\":[255,255,255],\"color1\":134,\"fuelLevel\":64.8,\"modTransmission\":-1,\"dashboardColor\":54,\"bodyHealth\":1000.0,\"modLivery\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":0,\"modExhaust\":-1,\"modTank\":-1,\"color2\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"mileage\":0.0,\"plate\":\"TTPV PD4\",\"maxhealth\":1000.0}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'TTSI 01 ', '{\"wheelColor\":29,\"modLivery\":-1,\"modEngineBlock\":-1,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":0.0,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modAPlate\":-1,\"modOrnaments\":-1,\"modLivery2\":1,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"plate\":\"TTSI 01 \",\"xenonColor\":0,\"wheels\":1,\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modTurbo\":false,\"pearlescentColor\":134,\"modRoof\":-1,\"model\":1189120983,\"modExhaust\":-1,\"modTank\":-1,\"modTrunk\":-1,\"fuelLevel\":64.7,\"modFrame\":0,\"modStruts\":-1,\"color1\":134,\"modArchCover\":0,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":1,\"color2\":134,\"tyres\":[false,false,false,false,false,false,false],\"modTransmission\":-1,\"modRearBumper\":0,\"modHorns\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"4\":false,\"3\":true,\"12\":false,\"11\":true,\"2\":false,\"1\":true,\"5\":true,\"6\":true,\"10\":true},\"modSideSkirt\":-1,\"modArmor\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"TTSI 01 \"}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'TTSI 02 ', '{\"wheelColor\":29,\"modLivery\":-1,\"modEngineBlock\":-1,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":6.5,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modAPlate\":-1,\"modOrnaments\":-1,\"modLivery2\":1,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"plate\":\"TTSI 02 \",\"xenonColor\":0,\"wheels\":1,\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modTurbo\":1,\"pearlescentColor\":134,\"modRoof\":-1,\"model\":1189120983,\"modExhaust\":-1,\"modTank\":0,\"modTrunk\":-1,\"fuelLevel\":53.8,\"modFrame\":0,\"modStruts\":-1,\"color1\":134,\"modArchCover\":0,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":1,\"color2\":134,\"tyres\":[false,false,false,false,false,false,false],\"modTransmission\":-1,\"modRearBumper\":0,\"modHorns\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"4\":false,\"3\":true,\"12\":false,\"11\":true,\"2\":false,\"1\":true,\"5\":true,\"6\":true,\"10\":true},\"modSideSkirt\":-1,\"modArmor\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"TTSI 02 \"}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'TTSP 01 ', '{\"wheelColor\":29,\"modLivery\":-1,\"modEngineBlock\":-1,\"tankHealth\":1000.0,\"modWindows\":-1,\"modAirFilter\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"dirtLevel\":0.0,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modEngine\":-1,\"doors\":[false,false,false,false,false,false],\"modRightFender\":-1,\"modAPlate\":-1,\"modOrnaments\":-1,\"modLivery2\":1,\"modGrille\":-1,\"modDial\":-1,\"modSuspension\":-1,\"modXenon\":1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"plate\":\"TTSP 01 \",\"xenonColor\":0,\"wheels\":1,\"modFender\":-1,\"neonColor\":[255,0,255],\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modTurbo\":1,\"pearlescentColor\":134,\"modRoof\":-1,\"model\":-614954239,\"modExhaust\":-1,\"modTank\":-1,\"modTrunk\":-1,\"fuelLevel\":63.4,\"modFrame\":0,\"modStruts\":-1,\"color1\":134,\"modArchCover\":0,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modHood\":0,\"color2\":134,\"tyres\":[false,false,false,false,false,false,false],\"modTransmission\":-1,\"modRearBumper\":-1,\"modHorns\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"extras\":{\"8\":true,\"7\":true,\"9\":true,\"4\":false,\"3\":true,\"12\":false,\"11\":true,\"2\":false,\"1\":true,\"5\":true,\"6\":true,\"10\":true},\"modSideSkirt\":-1,\"modArmor\":-1}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"maxhealth\":1000.0,\"mileage\":0.0,\"plate\":\"TTSP 01 \"}', 0, 0, 0, 0, 0),
('sheriff', 0, 'none', 0, 'TTSP 02 ', '{\"extras\":{\"12\":false,\"1\":true,\"10\":true,\"11\":true,\"4\":true,\"5\":true,\"2\":false,\"3\":true,\"8\":true,\"9\":true,\"6\":true,\"7\":true},\"wheels\":1,\"modLivery\":-1,\"modFrontBumper\":-1,\"modTank\":-1,\"modFrontWheels\":-1,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"windowTint\":-1,\"fuelLevel\":64.2,\"modFender\":-1,\"modHorns\":-1,\"modRoof\":-1,\"modSmokeEnabled\":false,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"modEngine\":-1,\"model\":-614954239,\"modRearBumper\":-1,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"color2\":134,\"modDashboard\":-1,\"modDoorSpeaker\":-1,\"neonColor\":[255,0,255],\"doors\":[false,false,false,false,false,false],\"modGrille\":-1,\"tankHealth\":1000.0,\"modHydrolic\":-1,\"dirtLevel\":5.0,\"color1\":134,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modArchCover\":0,\"modVanityPlate\":-1,\"modArmor\":-1,\"plateIndex\":4,\"modFrame\":0,\"modTurbo\":1,\"modBrakes\":-1,\"modStruts\":-1,\"tyres\":[false,false,false,false,false,false,false],\"modEngineBlock\":-1,\"engineHealth\":1000.0,\"modTransmission\":-1,\"modLivery2\":1,\"modDial\":-1,\"modHood\":0,\"modXenon\":1,\"neonEnabled\":[false,false,false,false],\"modAPlate\":-1,\"modBackWheels\":-1,\"modExhaust\":-1,\"bodyHealth\":1000.0,\"wheelColor\":29,\"modTrimB\":-1,\"xenonColor\":0,\"modTrimA\":-1,\"modTrunk\":-1,\"modSuspension\":-1,\"modAerials\":-1,\"plate\":\"TTSP 02 \",\"modRightFender\":-1,\"pearlescentColor\":134}', 'car', NULL, 0, 'car', 'A', 1, 0, '{\"plate\":\"TTSP 02 \",\"maxhealth\":1000.0,\"mileage\":0.0}', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) ,
  `channel` varchar(20) ,
  `message` varchar(255) ,
  `time` timestamp  DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) ,
  `owner` varchar(10)  COMMENT 'Num tel proprio',
  `num` varchar(10)  COMMENT 'Num reférence du contact',
  `incoming` int(11)  COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp  DEFAULT current_timestamp(),
  `accepts` int(11)  COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `phone_calls`
--

INSERT INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
(122, '776-8282', '502-8632', 1, '2021-09-07 16:42:24', 0),
(123, '502-8632', '776-8282', 0, '2021-09-07 16:42:24', 0),
(124, '776-8282', '505-8632', 1, '2021-09-07 16:43:11', 0),
(125, '776-8282', '502-8632', 1, '2021-09-07 16:43:54', 0),
(126, '502-8632', '776-8282', 0, '2021-09-07 16:43:54', 0),
(127, '776-8282', '502-8632', 1, '2021-09-07 16:45:25', 0),
(128, '502-8632', '776-8282', 0, '2021-09-07 16:45:25', 0),
(129, '776-8282', '502-8632', 1, '2021-09-07 16:47:53', 0),
(130, '502-8632', '776-8282', 0, '2021-09-07 16:47:53', 0),
(131, '776-8282', '502-8632', 1, '2021-09-07 16:48:07', 0),
(132, '502-8632', '776-8282', 0, '2021-09-07 16:48:07', 0),
(133, '###-####', '911', 1, '2021-09-07 16:49:28', 1),
(134, '776-8282', '502-8632', 1, '2021-09-07 16:49:49', 0),
(135, '502-8632', '776-8282', 0, '2021-09-07 16:49:49', 0),
(136, '###-####', '911', 1, '2021-09-07 16:50:19', 1),
(137, '502-8632', '911', 0, '2021-09-07 16:51:02', 0),
(138, '776-8282', '502-8632', 1, '2021-09-07 16:51:12', 0),
(139, '502-8632', '776-8282', 0, '2021-09-07 16:51:12', 0),
(140, '776-8282', '502-8632', 1, '2021-09-07 16:56:14', 0),
(141, '502-8632', '776-8282', 0, '2021-09-07 16:56:14', 0),
(142, '776-8282', '502-8632', 1, '2021-09-07 16:56:24', 1),
(143, '502-8632', '776-8282', 0, '2021-09-07 16:56:24', 1),
(144, '776-8282', '502-8632', 1, '2021-09-07 16:57:28', 1),
(145, '502-8632', '776-8282', 0, '2021-09-07 16:57:28', 1);

-- --------------------------------------------------------

--
-- Structure de la table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) ,
  `transmitter` varchar(10) ,
  `receiver` varchar(10) ,
  `message` varchar(255)  DEFAULT '0',
  `time` timestamp  DEFAULT current_timestamp(),
  `isRead` int(11)  DEFAULT 0,
  `owner` int(11)  DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) ,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4  DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `phone_users_contacts`
--

INSERT INTO `phone_users_contacts` (`id`, `identifier`, `number`, `display`) VALUES
(7, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', '505-8632', 'Rapace'),
(8, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', '502-8632', 'Rap');

-- --------------------------------------------------------

--
-- Structure de la table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) ,
  `label` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `playlists`
--

INSERT INTO `playlists` (`id`, `label`) VALUES
(56, 'Eglise');

-- --------------------------------------------------------

--
-- Structure de la table `playlist_songs`
--

CREATE TABLE `playlist_songs` (
  `id` int(11) ,
  `playlist` int(11) DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `playlist_songs`
--

INSERT INTO `playlist_songs` (`id`, `playlist`, `link`) VALUES
(26, 0, 'https://www.youtube.com/watch?v=EYAjqqWuBxg'),
(28, 0, 'https://www.youtube.com/watch?v=yXeJ8ZRActM'),
(30, 54, 'https://www.youtube.com/watch?v=CYgDUBH2Zro'),
(33, 54, 'https://www.youtube.com/watch?v=L3wKzyIN1yk'),
(35, 55, 'https://www.youtube.com/watch?v=ho9rZjlsyYY'),
(36, 56, 'https://www.youtube.com/watch?v=ho9rZjlsyYY');

-- --------------------------------------------------------

--
-- Structure de la table `prop`
--

CREATE TABLE `prop` (
  `id` int(11) ,
  `name` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT NULL,
  `is_single` tinyint(1) DEFAULT NULL,
  `type` varchar(60) DEFAULT NULL,
  `is_buyable` tinyint(1) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `depends` varchar(60) DEFAULT NULL,
  `is_unique` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `prop`
--

INSERT INTO `prop` (`id`, `name`, `label`, `entering`, `inside`, `room_menu`, `ipls`, `is_single`, `type`, `is_buyable`, `price`, `depends`, `is_unique`) VALUES
(20, '2677WhispymoundDrive', '2677 Whispymound Drive', '{\"x\":119.2,\"y\":564.62,\"z\":183.96}', '{\"x\":117.21,\"y\":559.67,\"z\":184.3}', '{\"x\":122.17,\"y\":548.84,\"z\":180.5}', '[]', 1, 'House', 1, 1000000, '0', 1),
(21, '2874HillcrestAvenue', '2874 Hillcrest Avenue', '{\"x\":-853.15,\"y\":695.91,\"z\":148.79}', '{\"x\":-859.97,\"y\":691.07,\"z\":152.86}', '{\"x\":-855.23,\"y\":680.13,\"z\":149.05}', '[]', 1, 'House', 1, 1000000, '0', 1),
(22, '3655WildOatsDrive', '3655 Wild Oats Drive', '{\"x\":-175.29,\"y\":502.37,\"z\":137.42}', '{\"x\":-174.23,\"y\":497.29,\"z\":137.67}', '{\"x\":-167.38,\"y\":487.78,\"z\":133.84}', '[]', 1, 'House', 1, 1000000, '0', 1),
(23, '2862HillcrestAvenue', '2862 Hillcrest Avenue', '{\"x\":-686.07,\"y\":596.35,\"z\":143.64}', '{\"x\":-682.39,\"y\":592.65,\"z\":145.38}', '{\"x\":-671.59,\"y\":587.37,\"z\":141.57}', '[]', 1, 'House', 1, 1000000, '0', 1),
(24, '2133MadWayneThunder', '2133 Mad Wayne Thunder', '{\"x\":-1294.4,\"y\":454.66,\"z\":97.52}', '{\"x\":-1289.97,\"y\":449.55,\"z\":97.9}', '{\"x\":-1286.31,\"y\":438.16,\"z\":94.09}', '[]', 1, 'House', 1, 1000000, '0', 1),
(25, '2868 Hillcrest Avenue', '2868 Hillcrest Avenue', '{\"x\":-752.81,\"y\":620.51,\"z\":142.59}', '{\"x\":-758.55,\"y\":618.94,\"z\":144.15}', '{\"x\":-767.49,\"y\":610.98,\"z\":140.33}', '[]', 1, 'House', 1, 1000000, '0', 1),
(26, '2045NorthConkerAvenue', '2045 North Conker Avenue', '{\"x\":373.06,\"y\":428.48,\"z\":145.69}', '{\"x\":373.43,\"y\":423.41,\"z\":145.91}', '{\"x\":374.58,\"y\":411.65,\"z\":142.1}', '[]', 1, 'House', 1, 1000000, '0', 1),
(27, '2044NorthConkerAvenue', '2044 North Conker Avenue', '{\"x\":347.21,\"y\":440.86,\"z\":147.7}', '{\"x\":341.76,\"y\":437.84,\"z\":149.39}', '{\"x\":334.36,\"y\":428.34,\"z\":145.57}', '[]', 1, 'House', 1, 1000000, '0', 1),
(28, 'EclipseTower', 'Eclipse Tower', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '0', '0', '[]', 1, '0', 1, 0, 'Collector', 0),
(29, 'EclipseTowerApartment', 'Eclipse Tower, Apt', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-784.81,\"y\":323.59,\"z\":212.0}', '{\"x\":-793.33,\"y\":326.62,\"z\":210.8}', '[]', 0, 'Apartment', 1, 525000, 'EclipseTower', 0),
(30, 'EclipseTowerPenthouse', 'Eclipse Tower, Pnt', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-781.84,\"y\":323.68,\"z\":176.8}', '{\"x\":-761.08,\"y\":325.41,\"z\":170.61}', '[]', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(31, 'ModernPenthouse', 'Modern Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_01_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(32, 'StimmungsvollPenthouse', 'Moody Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_02_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(33, 'DynastischPenthouse', 'Vibrant Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_03_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(34, 'PraegnantPenthouse', 'Sharp Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_04_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(35, 'MonochromePenthouse', 'Monochrome Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_05_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(36, 'VerfuehrerischPenthouse', 'Seductive Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_06_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(37, 'MajestetischPenthouse', 'Regal Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_07_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(38, 'MaritimPenthouse', 'Aqua Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_08_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(39, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1446.4,\"y\":-539.1,\"z\":34.74}', '0', '0', '[]', 1, '0', 1, 0, 'Collector', 0),
(40, 'DellPerroHeightsApt ', 'Dell Perro Heights, Apt', '{\"x\":-1446.4,\"y\":-539.1,\"z\":34.74}', '{\"x\":-1452.42,\"y\":-540.32,\"z\":74.04}', '{\"x\":-1449.84,\"y\":-548.88,\"z\":72.84}', '[]', 0, 'Apartment', 1, 525000, 'DellPerroHeights', 0),
(41, 'DellPerroHeightsPnt', 'Dell Perro Heights, Pnt', '{\"x\":-1446.4,\"y\":-539.1,\"z\":34.74}', '{\"x\":-1451.33,\"y\":-524.05,\"z\":69.65}', '{\"x\":-1467.42,\"y\":-537.1,\"z\":63.36}', '[]', 0, 'Penthouse', 1, 575000, 'DellPerroHeights', 0),
(42, 'BondsLowApartment', 'Bonds, Apt', '{\"x\":329.1,\"y\":-800.87,\"z\":29.27}', '{\"x\":266.12,\"y\":-1007.05,\"z\":-100.95}', '{\"x\":259.76,\"y\":-1003.94,\"z\":-99.01}', '[]', 1, 'Wohnung', 1, 156000, '0', 0),
(43, 'WeazelPlazaPnt', 'Weazel Plaze, Pnt', '{\"x\":-916.7,\"y\":-450.77,\"z\":39.6}', '{\"x\":-888.86,\"y\":-451.74,\"z\":95.46}', '{\"x\":-899.47,\"y\":-434.26,\"z\":89.26}', '[]', 1, 'Penthouse', 1, 575000, '0', 0),
(44, 'TinselTower', 'Tinsel Tower, Apt', '{\"x\":-618.36,\"y\":36.37,\"z\":43.57}', '{\"x\":-603.21,\"y\":58.93,\"z\":98.2}', '{\"x\":-594.77,\"y\":56.14,\"z\":97.0}', '[]', 1, 'Apartment', 1, 525000, '0', 0),
(45, 'ThePinkCage', 'Pink Cage Hotel', '{\"x\":314.88,\"y\":-227.43,\"z\":54.02}', '{\"x\":151.4,\"y\":-1007.46,\"z\":-99.0}', '{\"x\":152.29,\"y\":-1001.29,\"z\":-99.0}', '[]', 1, 'Hotel', 1, 40000, '0', 0),
(48, 'RichardMajesticApartment', 'Richard Majestic, Apt', '{\"x\":-937.02,\"y\":-379.41,\"z\":38.96}', '{\"x\":-912.82,\"y\":-365.27,\"z\":114.27}', '{\"x\":-903.92,\"y\":-363.59,\"z\":113.07}', '[]', 1, 'Apartment', 1, 525000, '0', 0),
(50, 'MiRd6085', '6085 Milton Road', '{\"x\":-658.87,\"y\":888.0,\"z\":229.24}', '{\"x\":-682.39,\"y\":592.65,\"z\":145.38}', '{\"x\":-671.59,\"y\":587.37,\"z\":141.57}', '[]', 1, 'House', 1, 200000, '0', 1),
(51, 'LakeVWEst', 'Lake Vinewood Est', '{\"x\":-152.43,\"y\":911.2,\"z\":234.65}', '{\"x\":-174.23,\"y\":497.29,\"z\":137.67}', '{\"x\":-167.38,\"y\":487.78,\"z\":133.84}', '[]', 1, 'House', 1, 200000, '0', 1),
(56, 'VWPowerSt', 'PowerSt 0702', '{\"x\":284.71,\"y\":47.19,\"z\":91.66}', '{\"x\":151.4,\"y\":-1007.46,\"z\":-99.0}', '{\"x\":152.29,\"y\":-1001.29,\"z\":-99.0}', '[]', 1, 'Hotel', 1, 320000, '0', 0),
(57, 'LaPuGomaSt', 'La Puerta GomaSt', '{\"x\":-970.14,\"y\":-1431.4,\"z\":6.67}', '{\"x\":151.4,\"y\":-1007.46,\"z\":-99.0}', '{\"x\":152.29,\"y\":-1001.29,\"z\":-99.0}', '[]', 1, 'Hotel', 1, 320000, '0', 0),
(58, 'Tahitian', 'The Tahitian', '{\"x\":-25.50,\"y\":-1556.38,\"z\":29.68}', '{\"x\":151.4,\"y\":-1007.46,\"z\":-99.0}', '{\"x\":152.29,\"y\":-1001.29,\"z\":-99.0}', '[]', 1, 'Hotel', 1, 320000, '0', 0),
(67, 'WhDr3673', '3673 Whispymound Drive', '{\"x\":45.69,\"y\":556.71,\"z\":179.18}', '{\"x\":117.21,\"y\":559.67,\"z\":184.3}', '{\"x\":122.17,\"y\":548.84,\"z\":180.5}', '[]', 1, 'House', 1, 200000, '0', 1),
(68, 'MeSt', 'Melanoma St', '{\"x\":-1114.6,\"y\":-1579.04,\"z\":7.68}', '{\"x\":151.4,\"y\":-1007.46,\"z\":-99.0}', '{\"x\":152.29,\"y\":-1001.29,\"z\":-99.0}', '[]', 1, 'Hotel', 1, 320000, '0', 0),
(69, '1018NRF', '1018 North Rockford', '{\"x\":-1973.91,\"y\":630.68,\"z\":121.54}', '{\"x\":-174.23,\"y\":497.29,\"z\":137.67}', '{\"x\":-167.38,\"y\":487.78,\"z\":133.84}', '[]', 1, 'House', 1, 320000, '0', 1),
(78, 'MazeBank', 'Maze Bank', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '0', '0', '[]', 1, '0', 0, 0, 'Collector', 0),
(79, 'MBO1', 'MB Executive Rich', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_02b', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(80, 'MBO2', 'MB Executive Cool', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_02c', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(81, 'MBO3', 'MB Executive Contrast', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_02a', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(82, 'MBO4', 'MB Old Spice Warm', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_01a', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(83, 'MBO5', 'MB Old Spice Classical', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_01b', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(84, 'MBO6', 'MB Old Spice Vintage', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_01c', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(85, 'MBO7', 'MB Power Broker Ice', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_03a', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(86, 'MBO8', 'MB Power Broker Conservative', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_03b', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(87, 'MBO9', 'MB Power Broker Polished', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_03c', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(88, 'VespucciClubhouse', 'Vespucci Clubhouse', '{\"x\":-1134.61,\"y\":-1568.99,\"z\":4.41}', '{\"x\":997.64,\"y\":-3158.04,\"z\":-38.91}', '{\"x\":1009.89,\"y\":-3168.35,\"z\":-38.89}', '[]', 1, 'ClubHouse', 1, 200000, '0', 1);

-- --------------------------------------------------------

--
-- Structure de la table `prop_owner`
--

CREATE TABLE `prop_owner` (
  `id` int(11) ,
  `owner` varchar(60) DEFAULT NULL,
  `charactername` varchar(255) DEFAULT NULL,
  `property` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `rented` int(11) DEFAULT NULL,
  `trusted` varchar(1000) DEFAULT NULL,
  `locked` int(11) DEFAULT 1,
  `deposit` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `prop_owner`
--

INSERT INTO `prop_owner` (`id`, `owner`, `charactername`, `property`, `price`, `rented`, `trusted`, `locked`, `deposit`) VALUES
(1, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Forley', 'VWPowerSt', 2133.3333333333335, 1, '[]', 1, 0),
(2, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'TinselTower', 3500, 1, '[]', 1, 0),
(3, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Martin Riggs', 'DellPerroHeightsApt ', 525000, 0, '[]', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `racing_leaderboard`
--

CREATE TABLE `racing_leaderboard` (
  `id` int(11) ,
  `track` int(11) ,
  `player` varchar(255) ,
  `time` timestamp  DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `racing_tracks`
--

CREATE TABLE `racing_tracks` (
  `id` int(11) ,
  `name` varchar(255) ,
  `description` varchar(255) ,
  `type` varchar(255) ,
  `km` varchar(255) ,
  `author` varchar(255) ,
  `checkpoints` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin  CHECK (json_valid(`checkpoints`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) ,
  `plate` varchar(12) ,
  `player_name` varchar(255) ,
  `base_price` int(11) ,
  `rent_price` int(11) ,
  `owner` varchar(22) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `renzu_jobs`
--

CREATE TABLE `renzu_jobs` (
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin ,
  `accounts` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `inventory` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `garage` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `renzu_jobs`
--

INSERT INTO `renzu_jobs` (`name`, `accounts`, `inventory`, `garage`) VALUES
('ambulance', '{\"money\":0,\"black_money\":0}', '[]', '[]'),
('brinks', '{\"money\":0,\"black_money\":0}', '[]', '[]'),
('diner', '{\"money\":160,\"black_money\":0}', '[]', '[]'),
('gym', '{\"money\":3000,\"black_money\":0}', '[]', '[]'),
('lostmc', '{\"black_money\":0,\"money\":0}', '[]', '[]'),
('mechanic', '{\"black_money\":0,\"money\":0}', '[]', '[]'),
('pearl', '{\"money\":0,\"black_money\":0}', '{\"Stash\":{\"3\":{\"salade\":10},\"2\":{\"tomates\":10},\"1\":{\"patates\":9},\"7\":{\"fish\":2},\"6\":{\"oignons\":10},\"5\":{\"fish2\":5},\"4\":{\"bread\":9},\"10\":{\"cornichons\":10},\"9\":{\"oil_bouffe\":10},\"8\":{\"steak\":10}},\"Personal\":{\"a798b0db0ab26d12e0a3abfc84592a56e12d3ddb\":{\"1\":{\"water\":2}}}}', '[]'),
('police', '{\"black_money\":0,\"money\":0}', '[]', '[]'),
('redline', '{\"money\":100,\"black_money\":0}', '[]', '[]');

-- --------------------------------------------------------

--
-- Structure de la table `saveclothes`
--

CREATE TABLE `saveclothes` (
  `identifier` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin ,
  `wardrobe` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) ,
  `store` varchar(100) ,
  `item` varchar(100) ,
  `price` int(11) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(63, 'TwentyFourSeven', 'bread', 5),
(64, 'RobsLiquor', 'bread', 5),
(65, 'LTDgasoline', 'bread', 5);

-- --------------------------------------------------------

--
-- Structure de la table `sm_owned_properties`
--

CREATE TABLE `sm_owned_properties` (
  `id` int(11) ,
  `name` varchar(255) ,
  `price` double ,
  `owner` varchar(60) DEFAULT NULL,
  `locked` int(11)  DEFAULT 1,
  `key1` varchar(60) ,
  `key2` varchar(60) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sm_owned_properties`
--

INSERT INTO `sm_owned_properties` (`id`, `name`, `price`, `owner`, `locked`, `key1`, `key2`) VALUES
(53, '123BrougeAvenue', 150000, 'NULL', 1, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) ,
  `identifier` varchar(60) ,
  `society` varchar(60) ,
  `amount` int(11) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sprays`
--

CREATE TABLE `sprays` (
  `id` int(11) ,
  `x` float(8,4) ,
  `y` float(8,4) ,
  `z` float(8,4) ,
  `rx` float(8,4) ,
  `ry` float(8,4) ,
  `rz` float(8,4) ,
  `scale` float(8,4) ,
  `text` varchar(32) ,
  `font` varchar(32) ,
  `color` int(3) ,
  `interior` int(3) ,
  `created_at` timestamp  DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `sqz_unijob_inventory`
--

CREATE TABLE `sqz_unijob_inventory` (
  `vault` longtext DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `count` longtext DEFAULT NULL,
  `label` longtext DEFAULT NULL,
  `type` longtext DEFAULT NULL,
  `item_id` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='sqz_unijob_inventory';

-- --------------------------------------------------------

--
-- Structure de la table `sqz_unijob_log`
--

CREATE TABLE `sqz_unijob_log` (
  `Steam` longtext DEFAULT NULL,
  `OOCname` longtext DEFAULT NULL,
  `Target` longtext DEFAULT NULL,
  `Time` longtext DEFAULT NULL,
  `Type` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='sqz_unijob_log';

-- --------------------------------------------------------

--
-- Structure de la table `stadus_skills`
--

CREATE TABLE `stadus_skills` (
  `id` int(11) ,
  `identifier` varchar(255) ,
  `stamina` varchar(255) ,
  `strength` varchar(255) ,
  `driving` varchar(255) DEFAULT NULL,
  `shooting` varchar(255) DEFAULT NULL,
  `fishing` varchar(255) DEFAULT NULL,
  `drugs` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `stadus_skills`
--

INSERT INTO `stadus_skills` (`id`, `identifier`, `stamina`, `strength`, `driving`, `shooting`, `fishing`, `drugs`) VALUES
(45, 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Structure de la table `taxbills`
--

CREATE TABLE `taxbills` (
  `id` int(11) ,
  `identifier` varchar(255) COLLATE utf8mb4_bin ,
  `sender` varchar(255) COLLATE utf8mb4_bin ,
  `target_type` varchar(50) COLLATE utf8mb4_bin ,
  `target` varchar(255) COLLATE utf8mb4_bin ,
  `label` varchar(255) COLLATE utf8mb4_bin ,
  `amount` int(11) ,
  `duration` int(11) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT;

--
-- Déchargement des données de la table `taxbills`
--

INSERT INTO `taxbills` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`, `duration`) VALUES
(3444, 'a4318d034cbbd61326d051adb5dfae7102ff12ec', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_cardealer', 'Achat d\'un Toyota Toyota supra', 500000, 0),
(3445, 'a4318d034cbbd61326d051adb5dfae7102ff12ec', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_cardealer', 'Achat d\'un Toyota Toyota supra', 500000, 0),
(3446, 'a4318d034cbbd61326d051adb5dfae7102ff12ec', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_cardealer', 'Achat d\'un Toyota Toyota supra', 500000, 0),
(3447, 'a4318d034cbbd61326d051adb5dfae7102ff12ec', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_cardealer', 'Achat d\'un Toyota Toyota supra', 600000, 0),
(3448, 'a4318d034cbbd61326d051adb5dfae7102ff12ec', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_cardealer', 'Achat d\'un Toyota Toyota supra', 10, 0),
(3449, 'a4318d034cbbd61326d051adb5dfae7102ff12ec', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_cardealer', 'Achat d\'un Toyota Toyota supra', 10, 0),
(3450, 'a4318d034cbbd61326d051adb5dfae7102ff12ec', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_cardealer', 'Achat d\'un Toyota Toyota supra', 500000, 0),
(3451, 'a4318d034cbbd61326d051adb5dfae7102ff12ec', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'society', 'society_cardealer', 'Achat d\'un Toyota Toyota supra', 600000, 0);

-- --------------------------------------------------------

--
-- Structure de la table `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) ,
  `username` varchar(50) CHARACTER SET utf8  DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin  DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_bin 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(80) ,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `crafting_level` int(11) ,
  `position` varchar(255) DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}',
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `phone_number` varchar(10) DEFAULT NULL,
  `arrested_time` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '{"pjail":0,"prison":0}',
  `hotbar` longtext DEFAULT NULL,
  `pedModeAllowed` tinyint(4) DEFAULT NULL,
  `pedModel` varchar(255) DEFAULT NULL,
  `crypto` varchar(255) DEFAULT NULL,
  `healthData` text  DEFAULT '{"bodyPulse":80,"bodyBloodLevel":6.0,"victimBleeding":false,"recievingBloodInfusion":0,"bodyPain":0,"bodyInPain":false,"bloodPressureL":80.0,"needSewed":[],"isUnconscious":false,"bloodPressureH":120.0,"logs":[],"bodyPartDamage":{"torso":0,"right_arm":0,"left_leg":0,"right_leg":0,"head":0,"left_arm":0},"bloodParts":{"torso":0,"right_arm":0,"left_leg":0,"right_leg":0,"head":0,"left_arm":0}}',
  `garage_tax` int(10) DEFAULT 1,
  `garage_limit` int(10) DEFAULT 0,
  `skills` longtext DEFAULT NULL,
  `tasks` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin ,
  `tasks_completed` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin ,
  `winnings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin ,
  `profilepicture` longtext DEFAULT NULL,
  `background` longtext DEFAULT NULL,
  `iban` longtext DEFAULT NULL,
  `phonedata` longtext DEFAULT NULL,
  `contacts` longtext DEFAULT NULL,
  `cryptocurrency` longtext DEFAULT '{"devcoin":0.0,"ggcoin":0.0,"ethereum":0.0,"bitcoin":0.0}',
  `cryptocurrencytransfers` longtext DEFAULT NULL,
  `cryptoid` longtext DEFAULT NULL,
  `bolos` longtext DEFAULT NULL,
  `downloadedapps` longtext DEFAULT NULL,
  `last_property` varchar(255) DEFAULT NULL,
  `pincode` varchar(4) DEFAULT NULL,
  `tattoos` longtext DEFAULT NULL,
  `callsign` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`identifier`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `loadout`, `crafting_level`, `position`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `skin`, `status`, `is_dead`, `phone_number`, `arrested_time`, `hotbar`, `pedModeAllowed`, `pedModel`, `crypto`, `healthData`, `garage_tax`, `garage_limit`, `skills`, `tasks`, `tasks_completed`, `winnings`, `profilepicture`, `background`, `iban`, `phonedata`, `contacts`, `cryptocurrency`, `cryptocurrencytransfers`, `cryptoid`, `bolos`, `downloadedapps`, `last_property`, `pincode`, `tattoos`, `callsign`) VALUES
('1:a4318d034cbbd61326d051adb5dfae7102ff12ec', '{\"money\":161500.0,\"black_money\":0,\"bank\":60625070}', 'admin', '{\"phone\":1,\"clip\":29}', 'police', 12, '{\"WEAPON_FBIARB\":{\"ammo\":29},\"WEAPON_NIGHTSTICK\":{\"ammo\":100},\"WEAPON_STUNGUN\":{\"ammo\":100},\"WEAPON_COMBATPISTOL\":{\"ammo\":95},\"WEAPON_FLASHLIGHT\":{\"ammo\":100}}', 0, '{\"z\":30.7,\"y\":-992.8,\"x\":440.9,\"heading\":0.0}', 'Damien', 'Clair', '17/09/1999', 'm', 185, '{\"makeup_2\":0,\"torso_1\":0,\"tshirt_1\":0,\"face_md_weight\":1.0,\"sun_2\":0,\"complexion_1\":0,\"blemishes_1\":0,\"chest_1\":0,\"makeup_3\":0,\"chest_2\":0,\"cheeks_2\":0,\"neck_thickness\":0,\"hair_1\":0,\"eyebrows_2\":9,\"eyebrows_6\":0,\"beard_1\":0,\"hair_color_2\":0,\"age_1\":0,\"nose_6\":0,\"lipstick_3\":0,\"bodyb_2\":0,\"lip_thickness\":0,\"watches_1\":-1,\"glasses_2\":0,\"eye_color\":2,\"chin_1\":0,\"hair_color_1\":0,\"bags_2\":0,\"nose_2\":0,\"bracelets_2\":0,\"eyebrows_5\":0,\"dad\":3,\"chain_1\":0,\"jaw_2\":0,\"beard_2\":0,\"mom\":20,\"sun_1\":0,\"makeup_4\":0,\"cheeks_3\":0,\"mask_1\":0,\"shoes_1\":0,\"skin_md_weight\":1.0,\"tshirt_2\":0,\"cheeks_1\":0,\"eyebrows_1\":26,\"chest_3\":0,\"glasses_1\":0,\"blush_2\":0,\"ears_2\":0,\"pants_2\":0,\"eyebrows_3\":0,\"eye_squint\":0,\"arms_2\":0,\"bproof_1\":0,\"hair_2\":0,\"sex\":0,\"blemishes_2\":0,\"jaw_1\":0,\"helmet_2\":0,\"nose_3\":0,\"helmet_1\":-1,\"lipstick_4\":0,\"blush_1\":0,\"shoes_2\":0,\"chin_4\":0,\"age_2\":0,\"bracelets_1\":-1,\"arms\":0,\"bags_1\":0,\"lipstick_1\":0,\"ears_1\":-1,\"pants_1\":0,\"moles_1\":0,\"eyebrows_4\":0,\"beard_4\":0,\"complexion_2\":0,\"watches_2\":0,\"decals_2\":0,\"beard_3\":0,\"moles_2\":0,\"bodyb_4\":0,\"mask_2\":0,\"blush_3\":0,\"nose_5\":0,\"bodyb_3\":-1,\"torso_2\":0,\"makeup_1\":0,\"bproof_2\":0,\"chin_3\":0,\"chain_2\":0,\"nose_4\":0,\"nose_1\":0,\"chin_2\":0,\"bodyb_1\":-1,\"decals_1\":0,\"lipstick_2\":0}', '[{\"name\":\"hunger\",\"val\":499600,\"percent\":49.96},{\"name\":\"thirst\",\"val\":499700,\"percent\":49.97},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, '820063', '{\"pjail\":0,\"prison\":0}', NULL, NULL, NULL, NULL, '{\"bodyPulse\":80,\"bodyBloodLevel\":6.0,\"victimBleeding\":false,\"recievingBloodInfusion\":0,\"bodyPain\":0,\"bodyInPain\":false,\"bloodPressureL\":80.0,\"needSewed\":[],\"isUnconscious\":false,\"bloodPressureH\":120.0,\"logs\":[],\"bodyPartDamage\":{\"torso\":0,\"right_arm\":0,\"left_leg\":0,\"right_leg\":0,\"head\":0,\"left_arm\":0},\"bloodParts\":{\"torso\":0,\"right_arm\":0,\"left_leg\":0,\"right_leg\":0,\"head\":0,\"left_arm\":0}}', 1, 0, '{\"Stamina\":{\"Stat\":\"MP0_STAMINA\",\"Current\":20.5},\"Shooting\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0.3},\"Wheelie\":{\"Stat\":\"MP0_WHEELIE_ABILITY\",\"Current\":0},\"Lung Capacity\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0.3},\"Driving\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":40.2},\"Strength\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":2.1}}', '{\"run\":0.43799999999998,\"drive\":3.14399999999998}', '', '', NULL, NULL, '5263', NULL, NULL, '{\"devcoin\":0.0,\"ggcoin\":0.0,\"ethereum\":0.0,\"bitcoin\":0.0}', NULL, 'cpt-zJ206', NULL, '[\"Advertisement\",\"Twitter\",\"Finance\"]', NULL, NULL, NULL, NULL),
('2:50e51cf3495e578ed7a08a0a0ad4899820659e6d', '{\"money\":3500,\"bank\":25000,\"black_money\":0}', 'user', '[]', 'unemployed', 0, '[]', 0, '{\"heading\":360.0,\"z\":13.8,\"y\":-2727.1,\"x\":-1038.8}', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"percent\":99.69,\"name\":\"hunger\",\"val\":996900},{\"percent\":99.7675,\"name\":\"thirst\",\"val\":997675},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, '374979', '{\"pjail\":0,\"prison\":0}', NULL, NULL, NULL, NULL, '{\"bodyPulse\":80,\"bodyBloodLevel\":6.0,\"victimBleeding\":false,\"recievingBloodInfusion\":0,\"bodyPain\":0,\"bodyInPain\":false,\"bloodPressureL\":80.0,\"needSewed\":[],\"isUnconscious\":false,\"bloodPressureH\":120.0,\"logs\":[],\"bodyPartDamage\":{\"torso\":0,\"right_arm\":0,\"left_leg\":0,\"right_leg\":0,\"head\":0,\"left_arm\":0},\"bloodParts\":{\"torso\":0,\"right_arm\":0,\"left_leg\":0,\"right_leg\":0,\"head\":0,\"left_arm\":0}}', 1, 0, NULL, '', '', '', NULL, NULL, '9743', NULL, NULL, '{\"devcoin\":0.0,\"ggcoin\":0.0,\"ethereum\":0.0,\"bitcoin\":0.0}', NULL, 'cpt-ZF067', NULL, NULL, NULL, NULL, NULL, NULL),
('2:a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', '{\"bank\":25000,\"black_money\":0,\"money\":3500}', 'user', '[]', 'unemployed', 0, '[]', 0, '{\"heading\":346.9,\"z\":20.2,\"y\":-2734.3,\"x\":-1036.5}', 'Test', 'Test', '01/01/01', 'm', 120, '{\"tshirt_1\":0,\"eyebrows_4\":0,\"lip_thickness\":10,\"chin_1\":10,\"moles_1\":17,\"lipstick_1\":0,\"chain_1\":0,\"nose_5\":9,\"age_1\":13,\"skin_md_weight\":100,\"eye_squint\":10,\"beard_3\":61,\"watches_1\":-1,\"pants_2\":0,\"lipstick_2\":0,\"torso_1\":0,\"helmet_1\":-1,\"jaw_1\":10,\"chin_2\":9,\"age_2\":10,\"chin_4\":10,\"ears_1\":-1,\"shoes_2\":0,\"mom\":36,\"nose_4\":9,\"lipstick_3\":32,\"nose_2\":10,\"eyebrows_3\":0,\"blush_3\":\"2\",\"complexion_1\":11,\"sun_2\":10,\"jaw_2\":10,\"chin_3\":9,\"eyebrows_6\":10,\"beard_2\":0,\"arms\":0,\"glasses_1\":-1,\"nose_1\":10,\"hair_color_2\":0,\"glasses_2\":-1,\"hair_2\":0,\"face_md_weight\":100,\"ears_2\":-1,\"torso_2\":0,\"nose_3\":9,\"hair_color_1\":0,\"cheeks_2\":9,\"eyebrows_5\":10,\"nose_6\":10,\"beard_1\":0,\"makeup_1\":0,\"eye_color\":0,\"makeup_3\":0,\"moles_2\":10,\"arms_2\":0,\"eyebrows_1\":0,\"hair_1\":0,\"sun_1\":17,\"eyebrows_2\":10,\"complexion_2\":10,\"sex\":0,\"tshirt_2\":0,\"cheeks_1\":10,\"helmet_2\":-1,\"blush_2\":0,\"dad\":15,\"neck_thickness\":10,\"makeup_2\":0,\"pants_1\":0,\"shoes_1\":0,\"cheeks_3\":10,\"watches_2\":-1,\"chain_2\":0,\"makeup_4\":0,\"blush_1\":0}', '[{\"percent\":98.99,\"val\":989900,\"name\":\"hunger\"},{\"percent\":99.2425,\"val\":992425,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 0, '236207', '{\"pjail\":0,\"prison\":0}', NULL, NULL, NULL, NULL, '{\"bodyPulse\":80,\"bodyBloodLevel\":6.0,\"victimBleeding\":false,\"recievingBloodInfusion\":0,\"bodyPain\":0,\"bodyInPain\":false,\"bloodPressureL\":80.0,\"needSewed\":[],\"isUnconscious\":false,\"bloodPressureH\":120.0,\"logs\":[],\"bodyPartDamage\":{\"torso\":0,\"right_arm\":0,\"left_leg\":0,\"right_leg\":0,\"head\":0,\"left_arm\":0},\"bloodParts\":{\"torso\":0,\"right_arm\":0,\"left_leg\":0,\"right_leg\":0,\"head\":0,\"left_arm\":0}}', 1, 0, NULL, '', '', '', NULL, NULL, '4521', NULL, NULL, '{\"devcoin\":0.0,\"ggcoin\":0.0,\"ethereum\":0.0,\"bitcoin\":0.0}', NULL, 'cpt-wK426', NULL, NULL, NULL, NULL, NULL, NULL),
('3:50e51cf3495e578ed7a08a0a0ad4899820659e6d', '{\"bank\":25020,\"black_money\":0,\"money\":3450}', 'admin', '[]', 'unemployed', 0, '[]', 0, '{\"y\":-55.3,\"z\":37.8,\"heading\":232.7,\"x\":-748.1}', 'Atticus', 'Woodhouse', '01/11/1984', 'm', 186, '{\"tshirt_1\":31,\"eyebrows_4\":0,\"lip_thickness\":0,\"chin_1\":0,\"moles_1\":0,\"lipstick_1\":0,\"chain_1\":22,\"bodyb_1\":-1,\"age_1\":0,\"skin_md_weight\":34,\"eye_squint\":0,\"bags_2\":0,\"watches_1\":-1,\"pants_2\":0,\"decals_2\":0,\"lipstick_2\":0,\"torso_1\":295,\"bproof_2\":0,\"helmet_1\":-1,\"jaw_1\":0,\"chin_2\":0,\"makeup_2\":0,\"bracelets_2\":0,\"bodyb_4\":0,\"chin_4\":1,\"bproof_1\":0,\"shoes_2\":0,\"blush_1\":0,\"nose_4\":0,\"makeup_3\":0,\"nose_2\":2,\"eyebrows_3\":0,\"blush_3\":\"2\",\"complexion_1\":0,\"sun_2\":0,\"jaw_2\":1,\"chin_3\":-1,\"eyebrows_6\":-4,\"eyebrows_2\":10,\"arms\":4,\"tshirt_2\":2,\"glasses_1\":7,\"hair_color_2\":2,\"ears_1\":-1,\"chest_2\":0,\"complexion_2\":0,\"blemishes_2\":0,\"helmet_2\":-1,\"shoes_1\":10,\"eyebrows_1\":21,\"hair_2\":0,\"blemishes_1\":0,\"face_md_weight\":90,\"ears_2\":-1,\"beard_3\":61,\"makeup_1\":0,\"bracelets_1\":-1,\"torso_2\":0,\"beard_4\":0,\"age_2\":0,\"nose_3\":5,\"nose_6\":0,\"hair_color_1\":0,\"cheeks_2\":0,\"bodyb_2\":0,\"bodyb_3\":-1,\"cheeks_3\":0,\"moles_2\":0,\"arms_2\":0,\"mask_1\":0,\"chest_1\":0,\"eye_color\":0,\"makeup_4\":0,\"dad\":14,\"neck_thickness\":0,\"beard_2\":10,\"mom\":26,\"hair_1\":30,\"mask_2\":0,\"decals_1\":0,\"bags_1\":0,\"chest_3\":0,\"sex\":0,\"nose_1\":-3,\"nose_5\":0,\"blush_2\":0,\"glasses_2\":4,\"sun_1\":0,\"cheeks_1\":0,\"pants_1\":10,\"eyebrows_5\":-8,\"lipstick_4\":0,\"watches_2\":-1,\"chain_2\":0,\"beard_1\":26,\"lipstick_3\":32}', '[{\"val\":331300,\"percent\":33.12999999999999,\"name\":\"hunger\"},{\"val\":373475,\"percent\":37.3475,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', 0, '779161', '{\"pjail\":0,\"prison\":0}', NULL, NULL, NULL, NULL, '{\"bodyPulse\":80,\"bodyBloodLevel\":6.0,\"victimBleeding\":false,\"recievingBloodInfusion\":0,\"bodyPain\":0,\"bodyInPain\":false,\"bloodPressureL\":80.0,\"needSewed\":[],\"isUnconscious\":false,\"bloodPressureH\":120.0,\"logs\":[],\"bodyPartDamage\":{\"torso\":0,\"right_arm\":0,\"left_leg\":0,\"right_leg\":0,\"head\":0,\"left_arm\":0},\"bloodParts\":{\"torso\":0,\"right_arm\":0,\"left_leg\":0,\"right_leg\":0,\"head\":0,\"left_arm\":0}}', 1, 0, '{\"Strength\":{\"Current\":1.1,\"Stat\":\"MP0_STRENGTH\"},\"Wheelie\":{\"Current\":0,\"Stat\":\"MP0_WHEELIE_ABILITY\"},\"Driving\":{\"Current\":0.6,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Stamina\":{\"Current\":8,\"Stat\":\"MP0_STAMINA\"},\"Lung Capacity\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Shooting\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\"}}', '', '', '', NULL, NULL, '7114', NULL, NULL, '{\"devcoin\":0.0,\"ggcoin\":0.0,\"ethereum\":0.0,\"bitcoin\":0.0}', NULL, 'cpt-mz430', NULL, NULL, NULL, NULL, NULL, NULL),
('40f9e375addccb930ff50c533f25c26aad1a5853', '{\"bank\":50040,\"black_money\":0,\"money\":0}', 'admin', '[]', 'sheriff', 4, '{\"WEAPON_MK18B\":{\"ammo\":192}}', 0, '{\"heading\":45.5,\"z\":37.5,\"y\":-129.0,\"x\":-736.6}', 'Willy', 'Willsons', '16/02/1974', 'm', 187, '{\"glasses_2\":1,\"eyebrows_2\":0,\"nose_5\":0,\"chest_3\":0,\"torso_1\":355,\"dad\":10,\"eyebrows_3\":0,\"cheeks_1\":0,\"blush_1\":0,\"arms_2\":0,\"cheeks_3\":0,\"tshirt_2\":2,\"beard_2\":10,\"sun_1\":0,\"pants_2\":1,\"bodyb_4\":0,\"tshirt_1\":23,\"lipstick_2\":0,\"bracelets_1\":-1,\"ears_1\":-1,\"eyebrows_5\":0,\"nose_2\":0,\"bproof_2\":0,\"eyebrows_1\":0,\"age_2\":2,\"bodyb_3\":-1,\"lipstick_4\":0,\"pants_1\":117,\"bproof_1\":0,\"chin_4\":0,\"watches_1\":-1,\"complexion_2\":0,\"makeup_2\":0,\"eyebrows_6\":0,\"sun_2\":0,\"blush_3\":0,\"nose_3\":0,\"nose_6\":0,\"chin_1\":0,\"beard_4\":0,\"nose_1\":0,\"hair_1\":9,\"lip_thickness\":0,\"bags_1\":0,\"moles_2\":0,\"eye_color\":2,\"nose_4\":0,\"makeup_3\":0,\"hair_color_2\":0,\"lipstick_3\":0,\"chin_2\":0,\"torso_2\":13,\"shoes_2\":10,\"eye_squint\":0,\"neck_thickness\":0,\"face_md_weight\":0.33,\"moles_1\":0,\"blemishes_2\":0,\"makeup_4\":0,\"chest_1\":0,\"arms\":2,\"bags_2\":0,\"watches_2\":0,\"chain_1\":0,\"blemishes_1\":0,\"beard_1\":18,\"blush_2\":0,\"bodyb_2\":0,\"glasses_1\":3,\"chin_3\":0,\"decals_1\":0,\"bracelets_2\":0,\"bodyb_1\":-1,\"chest_2\":0,\"beard_3\":0,\"hair_color_1\":56,\"mom\":4,\"helmet_2\":0,\"mask_2\":0,\"hair_2\":0,\"jaw_1\":0,\"shoes_1\":5,\"eyebrows_4\":0,\"lipstick_1\":0,\"decals_2\":0,\"complexion_1\":0,\"makeup_1\":0,\"cheeks_2\":0,\"chain_2\":0,\"helmet_1\":-1,\"skin_md_weight\":0.37,\"sex\":0,\"mask_1\":0,\"ears_2\":0,\"age_1\":11,\"jaw_2\":0}', '[{\"percent\":29.78,\"val\":297800,\"name\":\"hunger\"},{\"percent\":34.835,\"val\":348350,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 0, '664926', '{\"pjail\":0,\"prison\":0}', NULL, NULL, NULL, NULL, '{\"bodyPulse\":80,\"bodyBloodLevel\":6.0,\"victimBleeding\":false,\"recievingBloodInfusion\":0,\"bodyPain\":0,\"bodyInPain\":false,\"bloodPressureL\":80.0,\"needSewed\":[],\"isUnconscious\":false,\"bloodPressureH\":120.0,\"logs\":[],\"bodyPartDamage\":{\"torso\":0,\"right_arm\":0,\"left_leg\":0,\"right_leg\":0,\"head\":0,\"left_arm\":0},\"bloodParts\":{\"torso\":0,\"right_arm\":0,\"left_leg\":0,\"right_leg\":0,\"head\":0,\"left_arm\":0}}', 1, 0, '{\"Shooting\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Lung Capacity\":{\"Current\":0.6,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Wheelie\":{\"Current\":0,\"Stat\":\"MP0_WHEELIE_ABILITY\"},\"Strength\":{\"Current\":1.4,\"Stat\":\"MP0_STRENGTH\"},\"Stamina\":{\"Current\":16.69999999999988,\"Stat\":\"MP0_STAMINA\"},\"Driving\":{\"Current\":65.40000000000032,\"Stat\":\"MP0_DRIVING_ABILITY\"}}', '', '', '', NULL, NULL, '4128', NULL, NULL, '{\"devcoin\":0.0,\"ggcoin\":0.0,\"ethereum\":0.0,\"bitcoin\":0.0}', NULL, 'cpt-Gp201', NULL, '[\"Advertisement\",\"Twitter\",\"Finance\"]', NULL, '2903', NULL, NULL),
('50e51cf3495e578ed7a08a0a0ad4899820659e6d', '{\"black_money\":90,\"money\":5224003,\"bank\":28422}', 'admin', '{\"gym_membership\":1,\"phone\":1}', 'sheriff', 4, '[]', 0, '{\"y\":-1600.5,\"z\":29.3,\"heading\":237.2,\"x\":361.0}', 'Merlin', 'Woodhouse', '01/11/1961', 'm', 2, '{\"nose_1\":0,\"watches_2\":0,\"mom\":1,\"nose_4\":2,\"decals_2\":0,\"eyebrows_6\":0,\"eye_squint\":0,\"face_md_weight\":0.46,\"torso_1\":0,\"makeup_2\":0,\"bracelets_2\":0,\"eyebrows_3\":29,\"complexion_1\":2,\"hair_2\":0,\"eyebrows_5\":9,\"blush_2\":0,\"makeup_3\":0,\"eyebrows_1\":19,\"lipstick_3\":0,\"blemishes_1\":0,\"hair_color_1\":29,\"shoes_2\":3,\"bodyb_2\":0,\"helmet_2\":5,\"chin_4\":0,\"chest_3\":0,\"blemishes_2\":0,\"decals_1\":0,\"bproof_1\":0,\"bracelets_1\":-1,\"jaw_2\":0,\"neck_thickness\":0,\"chest_1\":0,\"makeup_1\":0,\"lipstick_4\":0,\"moles_1\":0,\"tshirt_2\":0,\"bags_2\":0,\"moles_2\":0,\"eyebrows_4\":0,\"dad\":9,\"glasses_1\":7,\"chin_1\":0,\"nose_2\":0,\"helmet_1\":4,\"cheeks_2\":0,\"pants_1\":9,\"sex\":0,\"nose_3\":0,\"watches_1\":-1,\"blush_1\":0,\"ears_1\":-1,\"nose_5\":0,\"chest_2\":0,\"age_1\":3,\"jaw_1\":0,\"chain_2\":0,\"chin_2\":0,\"arms\":0,\"bproof_2\":0,\"arms_2\":0,\"ears_2\":0,\"beard_2\":10,\"lip_thickness\":0,\"sun_1\":0,\"hair_1\":22,\"age_2\":5,\"complexion_2\":9,\"torso_2\":15,\"chin_3\":0,\"bodyb_4\":0,\"eye_color\":8,\"hair_color_2\":29,\"blush_3\":0,\"beard_3\":29,\"cheeks_3\":0,\"glasses_2\":4,\"lipstick_2\":0,\"eyebrows_2\":10,\"chain_1\":0,\"beard_4\":1,\"makeup_4\":0,\"bags_1\":0,\"beard_1\":3,\"bodyb_1\":-1,\"pants_2\":1,\"shoes_1\":8,\"mask_2\":0,\"mask_1\":0,\"nose_6\":0,\"tshirt_1\":15,\"bodyb_3\":-1,\"sun_2\":0,\"cheeks_1\":0,\"lipstick_1\":0,\"skin_md_weight\":0.12}', '[{\"val\":425000,\"name\":\"hunger\",\"percent\":42.5},{\"val\":443750,\"name\":\"thirst\",\"percent\":44.375},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, '782137', '{\"pjail\":0,\"prison\":0}', NULL, NULL, NULL, NULL, '{\"bodyPulse\":80,\"bodyBloodLevel\":6.0,\"victimBleeding\":false,\"recievingBloodInfusion\":0,\"bodyPain\":0,\"bodyInPain\":false,\"bloodPressureL\":80.0,\"needSewed\":[],\"isUnconscious\":false,\"bloodPressureH\":120.0,\"logs\":[],\"bodyPartDamage\":{\"torso\":0,\"right_arm\":0,\"left_leg\":0,\"right_leg\":0,\"head\":0,\"left_arm\":0},\"bloodParts\":{\"torso\":0,\"right_arm\":0,\"left_leg\":0,\"right_leg\":0,\"head\":0,\"left_arm\":0}}', 1, 0, '{\"Strength\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":1.4},\"Stamina\":{\"Stat\":\"MP0_STAMINA\",\"Current\":16.89999999999989},\"Wheelie\":{\"Stat\":\"MP0_WHEELIE_ABILITY\",\"Current\":0},\"Driving\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":16.59999999999996},\"Lung Capacity\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0.2},\"Shooting\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0.1}}', '', '', '', NULL, NULL, '4668', NULL, '[{\"phonenumber\":\"5555654578\",\"name\":\"kfdjglsdfjgmls\",\"id\":27914,\"photo\":\"default\"}]', '{\"devcoin\":0.0,\"ggcoin\":0.0,\"ethereum\":0.0,\"bitcoin\":0.0}', NULL, 'cpt-ER267', NULL, '[\"Twitter\"]', '0', NULL, NULL, NULL),
('a7828ea51a05d65c379587b33eeaf27188f9d6fd', '{\"black_money\":0,\"money\":3500,\"bank\":25000}', 'user', '[]', 'unemployed', 0, '{\"WEAPON_STUNGUN\":{\"ammo\":100}}', 0, '{\"x\":-1037.2,\"heading\":306.0,\"z\":20.2,\"y\":-2734.9}', 'Asdsd', 'Gasdasd', '01/01/1993', 'm', 183, '{\"jaw_2\":0,\"tshirt_2\":0,\"eyebrows_6\":0,\"neck_thickness\":0,\"jaw_1\":0,\"chain_2\":0,\"sun_2\":0,\"helmet_1\":-1,\"hair_1\":0,\"nose_5\":0,\"eye_squint\":0,\"lipstick_1\":0,\"eyebrows_2\":10,\"makeup_2\":0,\"arms\":0,\"eyebrows_5\":0,\"beard_3\":61,\"ears_1\":-1,\"beard_2\":0,\"watches_1\":-1,\"glasses_2\":-1,\"mom\":23,\"shoes_1\":0,\"moles_2\":0,\"tshirt_1\":0,\"age_1\":0,\"pants_2\":0,\"chin_3\":0,\"makeup_3\":0,\"chin_2\":0,\"torso_1\":0,\"moles_1\":0,\"blush_1\":0,\"face_md_weight\":50,\"chin_1\":0,\"complexion_2\":0,\"eye_color\":0,\"nose_1\":0,\"sex\":0,\"nose_6\":0,\"sun_1\":0,\"makeup_4\":0,\"hair_2\":0,\"ears_2\":-1,\"pants_1\":0,\"blush_2\":0,\"chain_1\":0,\"cheeks_2\":0,\"age_2\":0,\"lip_thickness\":0,\"shoes_2\":0,\"cheeks_1\":0,\"nose_2\":0,\"makeup_1\":0,\"beard_1\":0,\"lipstick_3\":32,\"cheeks_3\":0,\"nose_3\":0,\"eyebrows_4\":0,\"nose_4\":0,\"torso_2\":0,\"arms_2\":0,\"eyebrows_1\":0,\"skin_md_weight\":50,\"watches_2\":-1,\"blush_3\":\"2\",\"eyebrows_3\":0,\"glasses_1\":-1,\"complexion_1\":0,\"helmet_2\":-1,\"chin_4\":0,\"hair_color_1\":0,\"hair_color_2\":0,\"lipstick_2\":0}', '[{\"name\":\"hunger\",\"percent\":84.33,\"val\":843300},{\"name\":\"thirst\",\"percent\":88.2475,\"val\":882475},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, '683397', '{\"pjail\":0,\"prison\":0}', NULL, NULL, NULL, NULL, '{\"bodyPulse\":80,\"bodyBloodLevel\":6.0,\"victimBleeding\":false,\"recievingBloodInfusion\":0,\"bodyPain\":0,\"bodyInPain\":false,\"bloodPressureL\":80.0,\"needSewed\":[],\"isUnconscious\":false,\"bloodPressureH\":120.0,\"logs\":[],\"bodyPartDamage\":{\"torso\":0,\"right_arm\":0,\"left_leg\":0,\"right_leg\":0,\"head\":0,\"left_arm\":0},\"bloodParts\":{\"torso\":0,\"right_arm\":0,\"left_leg\":0,\"right_leg\":0,\"head\":0,\"left_arm\":0}}', 1, 0, '{\"Strength\":{\"Current\":1.1,\"Stat\":\"MP0_STRENGTH\"},\"Stamina\":{\"Current\":8,\"Stat\":\"MP0_STAMINA\"},\"Wheelie\":{\"Current\":0,\"Stat\":\"MP0_WHEELIE_ABILITY\"},\"Shooting\":{\"Current\":0,\"Stat\":\"MP0_SHOOTING_ABILITY\"},\"Driving\":{\"Current\":0,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Lung Capacity\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\"}}', '', '', '', NULL, NULL, '6633', NULL, NULL, '{\"devcoin\":0.0,\"ggcoin\":0.0,\"ethereum\":0.0,\"bitcoin\":0.0}', NULL, 'cpt-nO023', NULL, NULL, NULL, NULL, NULL, NULL),
('a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', '{\"black_money\":0,\"money\":435,\"bank\":9999999929867348}', 'admin', '[]', 'cyber', 3, '{\"WEAPON_PISTOL\":{\"ammo\":115}}', 0, '{\"y\":-44.2,\"z\":77.2,\"heading\":110.5,\"x\":620.5}', 'Martin', 'Riggs', '02/06/1982', 'm', 186, '{\"nose_1\":3,\"watches_2\":0,\"lip_thickness\":-1,\"nose_4\":3,\"decals_2\":0,\"eyebrows_6\":1,\"blush_1\":0,\"face_md_weight\":56,\"torso_1\":208,\"makeup_2\":0,\"bracelets_2\":0,\"eyebrows_3\":9,\"sun_1\":9,\"hair_2\":0,\"eyebrows_5\":3,\"blush_2\":0,\"makeup_3\":0,\"makeup_4\":0,\"lipstick_3\":32,\"hair_1\":12,\"hair_color_1\":2,\"shoes_2\":2,\"bodyb_2\":0,\"helmet_2\":2,\"chin_4\":6,\"chest_3\":0,\"blemishes_2\":0,\"decals_1\":0,\"bproof_1\":27,\"bracelets_1\":-1,\"jaw_2\":1,\"neck_thickness\":10,\"chest_1\":0,\"lipstick_1\":0,\"chin_1\":10,\"cheeks_1\":-1,\"tshirt_2\":0,\"bags_2\":0,\"jaw_1\":10,\"eyebrows_4\":9,\"moles_1\":0,\"eye_squint\":-6,\"eyebrows_1\":0,\"nose_2\":6,\"beard_3\":61,\"cheeks_2\":-10,\"pants_1\":102,\"torso_2\":18,\"nose_3\":1,\"watches_1\":20,\"beard_2\":10,\"moles_2\":3,\"sun_2\":5,\"eyebrows_2\":10,\"lipstick_4\":0,\"age_2\":0,\"chain_2\":0,\"chin_2\":10,\"arms\":0,\"bodyb_3\":-1,\"arms_2\":0,\"bodyb_1\":-1,\"age_1\":0,\"bags_1\":59,\"shoes_1\":61,\"makeup_1\":0,\"skin_md_weight\":65,\"complexion_2\":0,\"mom\":21,\"chin_3\":6,\"nose_5\":5,\"eye_color\":3,\"hair_color_2\":0,\"beard_1\":11,\"helmet_1\":109,\"cheeks_3\":0,\"glasses_2\":1,\"lipstick_2\":0,\"sex\":0,\"chain_1\":8,\"bodyb_4\":0,\"complexion_1\":0,\"tshirt_1\":15,\"glasses_1\":11,\"ears_2\":-1,\"pants_2\":4,\"blemishes_1\":0,\"chest_2\":0,\"blush_3\":\"2\",\"nose_6\":-6,\"mask_2\":0,\"dad\":0,\"beard_4\":0,\"bproof_2\":0,\"mask_1\":0,\"ears_1\":-1}', '[{\"val\":453500,\"name\":\"hunger\",\"percent\":45.35},{\"val\":465125,\"name\":\"thirst\",\"percent\":46.5125},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, '483629', '{\"pjail\":0,\"prison\":0}', NULL, NULL, NULL, NULL, '{\"bodyPulse\":80,\"bodyBloodLevel\":6.0,\"victimBleeding\":false,\"recievingBloodInfusion\":0,\"bodyPain\":0,\"bodyInPain\":false,\"bloodPressureL\":80.0,\"needSewed\":[],\"isUnconscious\":false,\"bloodPressureH\":120.0,\"logs\":[],\"bodyPartDamage\":{\"torso\":0,\"right_arm\":0,\"left_leg\":0,\"right_leg\":0,\"head\":0,\"left_arm\":0},\"bloodParts\":{\"torso\":0,\"right_arm\":0,\"left_leg\":0,\"right_leg\":0,\"head\":0,\"left_arm\":0}}', 1, 0, '{\"Strength\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":2.6},\"Stamina\":{\"Stat\":\"MP0_STAMINA\",\"Current\":59.60000000000037},\"Wheelie\":{\"Stat\":\"MP0_WHEELIE_ABILITY\",\"Current\":0},\"Driving\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":77.20000000000049},\"Lung Capacity\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0},\"Shooting\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0.3}}', '{\"run\":2.1549999999999,\"drive\":3.46599999999999}', '', '', NULL, NULL, '4780', '{\"iban\":4780,\"firstname\":\"Martin\",\"photo\":\"https://i.imgur.com/VB3g0At.png\",\"cryptoid\":\"cpt-gi277\",\"lastname\":\"Riggs\"}', '[{\"id\":14168,\"name\":\"M3ry\",\"phonenumber\":\"782137\"},{\"id\":46504,\"photo\":\"default\",\"name\":\"Anakel\",\"phonenumber\":\"617754\"},{\"id\":88500,\"photo\":\"default\",\"name\":\"Test\",\"phonenumber\":\"617754\"}]', '{\"devcoin\":0.0,\"ggcoin\":0.0,\"ethereum\":0.0,\"bitcoin\":0.0}', NULL, 'cpt-gi277', NULL, '[\"Twitter\",\"Advertisement\",\"Cars\",\"Finance\"]', '0', '0802', '[{\"collection\":\"mphipster_overlays\",\"texture\":40}]', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_clothes`
--

CREATE TABLE `user_clothes` (
  `id` int(11) ,
  `identifier` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `clothesData` longtext COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `user_clothes`
--

INSERT INTO `user_clothes` (`id`, `identifier`, `name`, `clothesData`) VALUES
(6, 'license:a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Casuel', '{\"eye_color\":2,\"eyebrows_5\":0,\"lipstick_2\":0,\"pants_1\":9,\"shoes_2\":2,\"makeup_1\":0,\"chin_3\":0,\"chest_2\":0,\"nose_6\":0,\"chest_3\":0,\"bags_2\":2,\"ears_1\":-1,\"nose_2\":7,\"eyebrows_3\":0,\"makeup_2\":0,\"cheeks_1\":0,\"tshirt_2\":0,\"glasses_2\":1,\"nose_5\":9,\"sun_1\":0,\"bracelets_1\":-1,\"hair_2\":0,\"shoes_1\":9,\"chin_1\":0,\"bodyb_4\":0,\"beard_1\":10,\"eye_squint\":0,\"bodyb_3\":-1,\"arms_2\":0,\"helmet_2\":4,\"helmet_1\":83,\"sun_2\":0,\"neck_thickness\":0,\"arms\":11,\"torso_1\":61,\"decals_2\":0,\"nose_1\":1,\"pants_2\":1,\"beard_2\":7,\"chin_2\":0,\"blemishes_1\":0,\"hair_1\":54,\"complexion_1\":0,\"moles_2\":0,\"mom\":7,\"age_2\":0,\"nose_3\":7,\"decals_1\":0,\"ears_2\":0,\"chin_4\":0,\"blush_2\":0,\"beard_4\":0,\"complexion_2\":0,\"torso_2\":3,\"eyebrows_2\":9,\"eyebrows_4\":0,\"sex\":0,\"jaw_1\":0,\"mask_1\":0,\"chest_1\":0,\"cheeks_2\":0,\"hair_color_1\":0,\"makeup_4\":0,\"eyebrows_1\":1,\"blemishes_2\":0,\"chain_2\":0,\"lipstick_3\":0,\"mask_2\":0,\"lip_thickness\":0,\"bags_1\":50,\"glasses_1\":15,\"chain_1\":5,\"bproof_2\":0,\"blush_3\":0,\"lipstick_1\":0,\"watches_2\":0,\"tshirt_1\":15,\"bodyb_1\":-1,\"moles_1\":0,\"watches_1\":-1,\"face_md_weight\":0.59,\"blush_1\":0,\"beard_3\":0,\"bracelets_2\":0,\"skin_md_weight\":50,\"eyebrows_6\":0,\"jaw_2\":0,\"hair_color_2\":0,\"bproof_1\":0,\"nose_4\":9,\"age_1\":1,\"dad\":2,\"makeup_3\":0,\"cheeks_3\":0,\"lipstick_4\":0,\"bodyb_2\":0}'),
(7, 'license:a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Casual', '{\"eye_color\":2,\"eyebrows_5\":0,\"lipstick_2\":0,\"pants_1\":9,\"shoes_2\":2,\"makeup_1\":0,\"chin_3\":0,\"chest_2\":0,\"nose_6\":0,\"chest_3\":0,\"bags_2\":2,\"ears_1\":-1,\"nose_2\":7,\"eyebrows_3\":0,\"makeup_2\":0,\"cheeks_1\":0,\"tshirt_2\":0,\"glasses_2\":1,\"nose_5\":9,\"sun_1\":0,\"bracelets_1\":-1,\"hair_2\":0,\"shoes_1\":9,\"chin_1\":0,\"bodyb_4\":0,\"beard_1\":10,\"eye_squint\":0,\"bodyb_3\":-1,\"arms_2\":0,\"helmet_2\":4,\"helmet_1\":83,\"sun_2\":0,\"neck_thickness\":0,\"arms\":11,\"torso_1\":61,\"decals_2\":0,\"nose_1\":1,\"pants_2\":1,\"beard_2\":7,\"chin_2\":0,\"blemishes_1\":0,\"hair_1\":54,\"complexion_1\":0,\"moles_2\":0,\"mom\":7,\"age_2\":0,\"nose_3\":7,\"decals_1\":0,\"ears_2\":0,\"chin_4\":0,\"blush_2\":0,\"beard_4\":0,\"complexion_2\":0,\"torso_2\":3,\"eyebrows_2\":9,\"eyebrows_4\":0,\"sex\":0,\"jaw_1\":0,\"mask_1\":0,\"chest_1\":0,\"cheeks_2\":0,\"hair_color_1\":0,\"makeup_4\":0,\"eyebrows_1\":1,\"blemishes_2\":0,\"chain_2\":0,\"lipstick_3\":0,\"mask_2\":0,\"lip_thickness\":0,\"bags_1\":50,\"glasses_1\":15,\"chain_1\":5,\"bproof_2\":0,\"blush_3\":0,\"lipstick_1\":0,\"watches_2\":0,\"tshirt_1\":15,\"bodyb_1\":-1,\"moles_1\":0,\"watches_1\":-1,\"face_md_weight\":0.59,\"blush_1\":0,\"beard_3\":0,\"bracelets_2\":0,\"skin_md_weight\":50,\"eyebrows_6\":0,\"jaw_2\":0,\"hair_color_2\":0,\"bproof_1\":0,\"nose_4\":9,\"age_1\":1,\"dad\":2,\"makeup_3\":0,\"cheeks_3\":0,\"lipstick_4\":0,\"bodyb_2\":0}'),
(8, 'license:a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Casual', '{\"eye_color\":2,\"eyebrows_5\":0,\"lipstick_2\":0,\"pants_1\":47,\"shoes_2\":2,\"makeup_1\":0,\"chin_3\":0,\"chest_2\":0,\"nose_6\":0,\"chest_3\":0,\"bags_2\":2,\"ears_1\":-1,\"nose_2\":7,\"eyebrows_3\":0,\"makeup_2\":0,\"cheeks_1\":0,\"tshirt_2\":0,\"glasses_2\":1,\"nose_5\":9,\"sun_1\":0,\"bracelets_1\":-1,\"hair_2\":0,\"shoes_1\":9,\"chin_1\":0,\"bodyb_4\":0,\"beard_1\":10,\"eye_squint\":0,\"bodyb_3\":-1,\"arms_2\":0,\"helmet_2\":4,\"helmet_1\":83,\"sun_2\":0,\"neck_thickness\":0,\"arms\":11,\"torso_1\":61,\"decals_2\":0,\"nose_1\":1,\"pants_2\":0,\"beard_2\":7,\"chin_2\":0,\"blemishes_1\":0,\"hair_1\":54,\"complexion_1\":0,\"moles_2\":0,\"mom\":7,\"age_2\":0,\"nose_3\":7,\"decals_1\":0,\"ears_2\":0,\"chin_4\":0,\"blush_2\":0,\"beard_4\":0,\"complexion_2\":0,\"torso_2\":3,\"eyebrows_2\":9,\"eyebrows_4\":0,\"sex\":0,\"jaw_1\":0,\"mask_1\":0,\"chest_1\":0,\"cheeks_2\":0,\"hair_color_1\":0,\"makeup_4\":0,\"eyebrows_1\":1,\"blemishes_2\":0,\"chain_2\":0,\"lipstick_3\":0,\"mask_2\":0,\"lip_thickness\":0,\"bags_1\":50,\"glasses_1\":15,\"chain_1\":5,\"bproof_2\":0,\"blush_3\":0,\"lipstick_1\":0,\"watches_2\":0,\"tshirt_1\":15,\"bodyb_1\":-1,\"moles_1\":0,\"watches_1\":-1,\"face_md_weight\":0.59,\"blush_1\":0,\"beard_3\":0,\"bracelets_2\":0,\"skin_md_weight\":50,\"eyebrows_6\":0,\"jaw_2\":0,\"hair_color_2\":0,\"bproof_1\":0,\"nose_4\":9,\"age_1\":1,\"dad\":2,\"makeup_3\":0,\"cheeks_3\":0,\"lipstick_4\":0,\"bodyb_2\":0}'),
(9, 'steam:11000010a322284', 'gangster', '{\"arms\":0,\"eye_squint\":0,\"eyebrows_4\":2,\"makeup_4\":1,\"bracelets_1\":-1,\"complexion_1\":0,\"nose_4\":0,\"mask_2\":0,\"neck_thickness\":0,\"nose_6\":9,\"makeup_2\":0,\"sun_1\":0,\"chest_3\":0,\"ears_2\":2,\"lip_thickness\":0,\"hair_color_1\":6,\"beard_1\":5,\"blush_1\":0,\"blemishes_1\":0,\"mom\":10,\"torso_2\":4,\"mask_1\":0,\"beard_3\":0,\"chain_2\":2,\"eyebrows_3\":2,\"eyebrows_5\":1,\"nose_3\":5,\"nose_2\":9,\"bodyb_2\":0,\"glasses_1\":0,\"bags_1\":23,\"cheeks_3\":0,\"glasses_2\":0,\"bracelets_2\":0,\"tshirt_1\":15,\"age_2\":2,\"hair_color_2\":3,\"bodyb_1\":-1,\"shoes_1\":31,\"blemishes_2\":0,\"sun_2\":0,\"bproof_1\":0,\"hair_1\":0,\"chin_1\":0,\"chin_4\":0,\"eyebrows_6\":0,\"face_md_weight\":0.56,\"bags_2\":1,\"jaw_2\":0,\"makeup_1\":1,\"chin_2\":0,\"helmet_2\":1,\"dad\":12,\"eye_color\":3,\"cheeks_1\":0,\"nose_1\":4,\"moles_1\":0,\"skin_md_weight\":0.55,\"beard_2\":3,\"bodyb_4\":0,\"bodyb_3\":-1,\"eyebrows_1\":2,\"chest_2\":0,\"chin_3\":0,\"arms_2\":0,\"hair_2\":0,\"watches_1\":-1,\"helmet_1\":3,\"shoes_2\":1,\"blush_3\":0,\"chain_1\":112,\"eyebrows_2\":0,\"cheeks_2\":9,\"torso_1\":86,\"chest_1\":0,\"pants_2\":0,\"watches_2\":0,\"sex\":0,\"pants_1\":19,\"moles_2\":0,\"beard_4\":3,\"lipstick_1\":1,\"age_1\":2,\"blush_2\":0,\"decals_2\":0,\"makeup_3\":1,\"complexion_2\":0,\"jaw_1\":0,\"bproof_2\":0,\"decals_1\":0,\"nose_5\":0,\"lipstick_2\":1,\"lipstick_3\":1,\"tshirt_2\":0,\"ears_1\":4,\"lipstick_4\":1}'),
(10, 'steam:11000010a322284', 'gangstaV2', '{\"arms\":0,\"eye_squint\":0,\"eyebrows_4\":2,\"makeup_4\":1,\"bracelets_1\":-1,\"complexion_1\":0,\"nose_4\":0,\"mask_2\":0,\"neck_thickness\":0,\"nose_6\":9,\"makeup_2\":0,\"sun_1\":0,\"chest_3\":0,\"ears_2\":2,\"lip_thickness\":0,\"hair_color_1\":6,\"beard_1\":5,\"blush_1\":0,\"blemishes_1\":0,\"mom\":10,\"torso_2\":4,\"mask_1\":0,\"beard_3\":0,\"chain_2\":2,\"eyebrows_3\":2,\"eyebrows_5\":1,\"nose_3\":5,\"nose_2\":9,\"bodyb_2\":0,\"glasses_1\":0,\"bags_1\":23,\"cheeks_3\":0,\"glasses_2\":0,\"bracelets_2\":0,\"tshirt_1\":100,\"age_2\":2,\"hair_color_2\":3,\"bodyb_1\":-1,\"shoes_1\":31,\"blemishes_2\":0,\"sun_2\":0,\"bproof_1\":0,\"hair_1\":0,\"chin_1\":0,\"chin_4\":0,\"eyebrows_6\":0,\"face_md_weight\":0.56,\"bags_2\":1,\"jaw_2\":0,\"makeup_1\":1,\"chin_2\":0,\"helmet_2\":1,\"dad\":12,\"eye_color\":3,\"cheeks_1\":0,\"nose_1\":4,\"moles_1\":0,\"skin_md_weight\":0.55,\"beard_2\":3,\"bodyb_4\":0,\"bodyb_3\":-1,\"eyebrows_1\":2,\"chest_2\":0,\"chin_3\":0,\"arms_2\":0,\"hair_2\":0,\"watches_1\":-1,\"helmet_1\":3,\"shoes_2\":1,\"blush_3\":0,\"chain_1\":112,\"eyebrows_2\":0,\"cheeks_2\":9,\"torso_1\":86,\"chest_1\":0,\"pants_2\":0,\"watches_2\":0,\"sex\":0,\"pants_1\":19,\"moles_2\":0,\"beard_4\":3,\"lipstick_1\":1,\"age_1\":2,\"blush_2\":0,\"decals_2\":0,\"makeup_3\":1,\"complexion_2\":0,\"jaw_1\":0,\"bproof_2\":0,\"decals_1\":0,\"nose_5\":0,\"lipstick_2\":1,\"lipstick_3\":1,\"tshirt_2\":0,\"ears_1\":4,\"lipstick_4\":1}'),
(11, 'steam:11000010521d778', 'Casual Sans Armes', '{\"chin_3\":0,\"tshirt_1\":178,\"chest_2\":0,\"pants_1\":47,\"cheeks_2\":0,\"hair_1\":13,\"nose_6\":9,\"age_1\":2,\"bodyb_3\":-1,\"beard_2\":10,\"eyebrows_2\":6,\"shoes_2\":0,\"lipstick_3\":0,\"eyebrows_5\":9,\"tshirt_2\":4,\"nose_2\":9,\"moles_2\":0,\"mask_2\":0,\"eyebrows_3\":6,\"sun_2\":0,\"nose_1\":1,\"decals_2\":0,\"sun_1\":0,\"makeup_3\":0,\"bracelets_2\":0,\"cheeks_1\":9,\"nose_3\":6,\"torso_2\":0,\"ears_1\":0,\"lip_thickness\":0,\"blemishes_2\":0,\"torso_1\":62,\"dad\":12,\"cheeks_3\":9,\"blush_3\":0,\"helmet_1\":-1,\"eye_squint\":0,\"hair_2\":0,\"glasses_1\":5,\"makeup_1\":0,\"chain_1\":0,\"blush_2\":0,\"watches_2\":0,\"complexion_1\":0,\"jaw_2\":0,\"beard_1\":7,\"chin_2\":9,\"mask_1\":0,\"bags_2\":1,\"jaw_1\":0,\"glasses_2\":5,\"watches_1\":-1,\"hair_color_2\":0,\"moles_1\":0,\"bodyb_2\":0,\"pants_2\":0,\"chest_1\":0,\"beard_4\":0,\"hair_color_1\":4,\"bproof_1\":0,\"eyebrows_6\":3,\"nose_5\":1,\"bracelets_1\":-1,\"complexion_2\":0,\"skin_md_weight\":0.70999999999999,\"makeup_4\":0,\"beard_3\":10,\"bproof_2\":0,\"ears_2\":0,\"age_2\":5,\"blemishes_1\":0,\"blush_1\":0,\"mom\":17,\"lipstick_2\":0,\"decals_1\":0,\"lipstick_1\":0,\"neck_thickness\":9,\"bodyb_1\":-1,\"bodyb_4\":0,\"chest_3\":0,\"shoes_1\":20,\"eye_color\":4,\"arms_2\":0,\"nose_4\":9,\"makeup_2\":0,\"eyebrows_1\":18,\"eyebrows_4\":0,\"chin_4\":0,\"arms\":1,\"chain_2\":0,\"chin_1\":9,\"sex\":0,\"face_md_weight\":0.58,\"helmet_2\":0,\"bags_1\":33,\"lipstick_4\":0}'),
(13, 'license:9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'RedPerf', '{\"cheeks_3\":0,\"eyebrows_5\":0,\"moles_2\":0,\"bodyb_4\":0,\"makeup_2\":0,\"bodyb_2\":0,\"beard_1\":0,\"bags_2\":0,\"moles_1\":0,\"eye_squint\":0,\"eye_color\":4,\"watches_2\":0,\"eyebrows_1\":0,\"chain_2\":0,\"dad\":9,\"makeup_4\":0,\"glasses_2\":0,\"tshirt_2\":0,\"complexion_2\":0,\"eyebrows_6\":0,\"pants_2\":6,\"lipstick_2\":0,\"blemishes_2\":0,\"nose_4\":0,\"decals_1\":0,\"beard_2\":0,\"nose_5\":0,\"complexion_1\":0,\"tshirt_1\":15,\"chain_1\":0,\"chest_1\":0,\"eyebrows_4\":0,\"nose_3\":0,\"lipstick_4\":0,\"blush_2\":0,\"bodyb_1\":-1,\"chin_3\":0,\"hair_color_1\":2,\"chest_2\":0,\"beard_4\":0,\"nose_2\":0,\"mom\":19,\"arms_2\":0,\"eyebrows_3\":0,\"blemishes_1\":0,\"bodyb_3\":-1,\"neck_thickness\":0,\"eyebrows_2\":0,\"bproof_1\":0,\"lipstick_3\":0,\"jaw_1\":0,\"watches_1\":-1,\"chest_3\":0,\"cheeks_2\":0,\"skin_md_weight\":50,\"torso_1\":79,\"bags_1\":0,\"hair_1\":5,\"ears_1\":-1,\"helmet_2\":0,\"hair_2\":0,\"age_1\":10,\"bproof_2\":0,\"ears_2\":0,\"lip_thickness\":0,\"lipstick_1\":0,\"sun_1\":0,\"age_2\":0,\"jaw_2\":0,\"chin_1\":0,\"mask_2\":0,\"chin_2\":0,\"hair_color_2\":2,\"nose_6\":0,\"helmet_1\":-1,\"glasses_1\":0,\"makeup_1\":0,\"sex\":0,\"torso_2\":0,\"makeup_3\":0,\"face_md_weight\":0.32,\"nose_1\":0,\"shoes_1\":31,\"pants_1\":128,\"decals_2\":0,\"shoes_2\":0,\"bracelets_2\":0,\"cheeks_1\":0,\"blush_1\":0,\"bracelets_1\":-1,\"mask_1\":0,\"arms\":1,\"blush_3\":0,\"beard_3\":0,\"sun_2\":0,\"chin_4\":0}'),
(14, 'steam:11000010e1173a1', 'SemiClasse', '{\"cheeks_3\":0,\"sun_1\":0,\"moles_2\":0,\"bracelets_2\":0,\"makeup_2\":0,\"arms_2\":0,\"beard_1\":18,\"glasses_1\":5,\"jaw_2\":0,\"eye_squint\":0,\"eye_color\":5,\"watches_2\":0,\"eyebrows_1\":20,\"chain_2\":0,\"ears_1\":-1,\"makeup_4\":0,\"glasses_2\":3,\"tshirt_2\":0,\"complexion_2\":7,\"eyebrows_6\":0,\"pants_2\":0,\"lipstick_2\":0,\"blemishes_2\":0,\"nose_4\":4,\"blush_3\":0,\"beard_2\":10,\"cheeks_1\":9,\"pants_1\":10,\"tshirt_1\":1,\"chain_1\":0,\"chest_1\":0,\"eyebrows_4\":1,\"nose_3\":2,\"lipstick_4\":0,\"blush_2\":0,\"bodyb_1\":-1,\"chin_3\":1,\"hair_color_1\":21,\"chest_2\":0,\"nose_5\":0,\"nose_2\":0,\"mom\":4,\"mask_2\":0,\"cheeks_2\":0,\"chin_2\":1,\"decals_1\":0,\"neck_thickness\":0,\"bproof_2\":0,\"blush_1\":0,\"lipstick_3\":0,\"jaw_1\":0,\"watches_1\":-1,\"chest_3\":0,\"lipstick_1\":0,\"skin_md_weight\":0.70999999999999,\"helmet_1\":-1,\"bags_1\":0,\"hair_1\":21,\"nose_1\":0,\"helmet_2\":0,\"hair_2\":0,\"torso_1\":307,\"eyebrows_3\":1,\"ears_2\":0,\"eyebrows_2\":7,\"lip_thickness\":1,\"complexion_1\":10,\"age_2\":2,\"decals_2\":0,\"chin_1\":0,\"age_1\":0,\"beard_4\":8,\"hair_color_2\":0,\"nose_6\":0,\"makeup_3\":0,\"eyebrows_5\":3,\"arms\":0,\"bproof_1\":0,\"torso_2\":0,\"sex\":0,\"face_md_weight\":0.75999999999999,\"bodyb_3\":-1,\"shoes_1\":10,\"bodyb_4\":0,\"blemishes_1\":0,\"shoes_2\":0,\"bodyb_2\":0,\"moles_1\":0,\"bags_2\":0,\"bracelets_1\":-1,\"mask_1\":0,\"dad\":22,\"makeup_1\":0,\"beard_3\":6,\"sun_2\":0,\"chin_4\":0}'),
(15, 'license:a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'Maire', '{\"makeup_2\":0,\"sex\":0,\"nose_1\":0,\"lipstick_2\":0,\"hair_color_1\":28,\"skin_md_weight\":50,\"nose_2\":0,\"shoes_1\":21,\"beard_2\":10,\"arms_2\":0,\"sun_1\":0,\"watches_1\":-1,\"blemishes_1\":0,\"chain_1\":0,\"cheeks_1\":0,\"bodyb_3\":-1,\"blush_2\":0,\"dad\":22,\"pants_1\":45,\"chest_2\":0,\"mask_1\":0,\"bodyb_1\":-1,\"watches_2\":0,\"jaw_1\":0,\"ears_2\":0,\"age_2\":7,\"beard_3\":62,\"glasses_1\":3,\"decals_1\":0,\"eyebrows_5\":0,\"bags_1\":0,\"cheeks_2\":0,\"chin_3\":0,\"torso_1\":10,\"chest_1\":0,\"moles_1\":0,\"jaw_2\":0,\"chain_2\":0,\"bodyb_4\":0,\"helmet_2\":0,\"mask_2\":0,\"eyebrows_6\":0,\"bracelets_2\":0,\"nose_3\":0,\"chin_2\":0,\"nose_4\":0,\"eyebrows_3\":0,\"arms\":4,\"age_1\":14,\"lipstick_4\":0,\"hair_1\":56,\"face_md_weight\":0.41,\"helmet_1\":-1,\"lipstick_3\":0,\"tshirt_1\":3,\"blush_3\":0,\"eye_color\":1,\"bodyb_2\":0,\"chin_1\":0,\"blush_1\":0,\"sun_2\":0,\"bproof_1\":0,\"mom\":17,\"chin_4\":0,\"beard_1\":22,\"eyebrows_2\":9,\"makeup_4\":0,\"blemishes_2\":0,\"cheeks_3\":0,\"pants_2\":0,\"makeup_1\":0,\"beard_4\":0,\"eye_squint\":0,\"makeup_3\":0,\"torso_2\":0,\"eyebrows_1\":3,\"shoes_2\":0,\"complexion_2\":0,\"eyebrows_4\":0,\"neck_thickness\":0,\"hair_color_2\":0,\"complexion_1\":0,\"moles_2\":0,\"lipstick_1\":0,\"nose_5\":0,\"decals_2\":0,\"chest_3\":0,\"hair_2\":0,\"lip_thickness\":0,\"nose_6\":0,\"bracelets_1\":-1,\"tshirt_2\":10,\"glasses_2\":0,\"ears_1\":0,\"bags_2\":0,\"bproof_2\":0}'),
(16, 'steam:1100001351fe0cc', '.rasta', '{\"makeup_2\":0,\"sex\":0,\"nose_1\":1,\"lipstick_2\":0,\"hair_color_1\":4,\"skin_md_weight\":50,\"nose_2\":0,\"shoes_1\":6,\"beard_2\":8,\"nose_5\":0,\"sun_1\":0,\"watches_1\":-1,\"blemishes_1\":0,\"chain_1\":0,\"eyebrows_1\":30,\"bodyb_3\":-1,\"blush_2\":0,\"dad\":9,\"pants_1\":88,\"chest_2\":0,\"mask_1\":0,\"bodyb_1\":-1,\"watches_2\":0,\"jaw_1\":0,\"ears_2\":0,\"age_2\":0,\"beard_3\":4,\"tshirt_1\":14,\"decals_1\":0,\"eyebrows_5\":0,\"bags_1\":0,\"cheeks_2\":0,\"chin_3\":0,\"torso_1\":121,\"chest_1\":0,\"moles_1\":0,\"jaw_2\":0,\"chain_2\":0,\"bodyb_4\":0,\"eyebrows_4\":62,\"mask_2\":0,\"eyebrows_6\":0,\"complexion_1\":0,\"beard_4\":4,\"makeup_4\":0,\"nose_4\":0,\"eyebrows_3\":1,\"makeup_1\":1,\"age_1\":0,\"blemishes_2\":0,\"neck_thickness\":0,\"chin_1\":0,\"face_md_weight\":50,\"lipstick_3\":0,\"bracelets_2\":0,\"blush_3\":0,\"lipstick_4\":0,\"bodyb_2\":0,\"bproof_2\":0,\"torso_2\":3,\"sun_2\":0,\"bproof_1\":0,\"mom\":12,\"pants_2\":18,\"beard_1\":3,\"glasses_2\":0,\"glasses_1\":0,\"arms_2\":0,\"lipstick_1\":0,\"cheeks_3\":0,\"arms\":11,\"helmet_1\":-1,\"eye_squint\":0,\"makeup_3\":2,\"cheeks_1\":0,\"nose_3\":0,\"shoes_2\":12,\"chin_2\":0,\"decals_2\":0,\"eyebrows_2\":9,\"hair_color_2\":4,\"hair_2\":0,\"moles_2\":0,\"hair_1\":14,\"helmet_2\":0,\"chin_4\":0,\"chest_3\":0,\"blush_1\":0,\"lip_thickness\":0,\"nose_6\":0,\"bracelets_1\":-1,\"tshirt_2\":0,\"eye_color\":2,\"ears_1\":0,\"bags_2\":0,\"complexion_2\":0}'),
(17, 'license:e31e742d2080ad11ef667af59ead70943bc22474', 'Class I', '{\"torso_2\":4,\"makeup_2\":0,\"mask_1\":0,\"blemishes_1\":0,\"bags_1\":0,\"decals_1\":0,\"hair_color_2\":0,\"dad\":8,\"moles_2\":0,\"chin_2\":0,\"makeup_4\":0,\"bproof_2\":0,\"shoes_1\":21,\"eye_color\":1,\"bodyb_2\":0,\"chain_2\":0,\"glasses_2\":0,\"nose_6\":0,\"arms\":11,\"nose_5\":0,\"lipstick_1\":0,\"bodyb_3\":-1,\"eyebrows_5\":0,\"face_md_weight\":0.61999999999999,\"makeup_3\":0,\"lipstick_4\":0,\"mom\":10,\"ears_1\":-1,\"bags_2\":0,\"hair_color_1\":0,\"sex\":0,\"helmet_1\":53,\"tshirt_1\":7,\"eyebrows_4\":0,\"nose_3\":0,\"eyebrows_3\":26,\"cheeks_2\":0,\"sun_2\":0,\"watches_2\":0,\"glasses_1\":5,\"pants_2\":0,\"blush_1\":0,\"eye_squint\":0,\"chest_2\":0,\"beard_1\":10,\"neck_thickness\":0,\"hair_2\":0,\"cheeks_1\":9,\"nose_2\":0,\"lipstick_3\":0,\"beard_3\":0,\"blush_2\":0,\"nose_4\":0,\"mask_2\":0,\"lipstick_2\":0,\"torso_1\":25,\"beard_4\":0,\"helmet_2\":0,\"bodyb_1\":-1,\"chin_1\":0,\"age_1\":0,\"eyebrows_2\":10,\"sun_1\":0,\"cheeks_3\":0,\"chest_1\":0,\"pants_1\":20,\"jaw_1\":0,\"shoes_2\":11,\"complexion_2\":0,\"blemishes_2\":0,\"eyebrows_6\":0,\"complexion_1\":0,\"ears_2\":0,\"bracelets_1\":-1,\"moles_1\":0,\"hair_1\":9,\"decals_2\":0,\"chest_3\":0,\"chin_4\":0,\"bodyb_4\":0,\"bracelets_2\":0,\"eyebrows_1\":1,\"chin_3\":0,\"chain_1\":0,\"makeup_1\":0,\"jaw_2\":0,\"blush_3\":0,\"bproof_1\":0,\"age_2\":0,\"tshirt_2\":0,\"nose_1\":4,\"lip_thickness\":0,\"arms_2\":0,\"beard_2\":10,\"watches_1\":-1}'),
(18, 'steam:110000108d32fd4', 'f', '{\"chin_1\":0,\"chain_1\":0,\"bodyb_1\":-1,\"face_md_weight\":1.0,\"mask_1\":0,\"lipstick_1\":0,\"complexion_1\":0,\"nose_6\":0,\"blemishes_2\":0,\"ears_1\":-1,\"chain_2\":0,\"bags_1\":0,\"makeup_2\":0,\"glasses_1\":5,\"makeup_3\":0,\"lipstick_2\":0,\"bodyb_4\":0,\"blemishes_1\":0,\"age_1\":0,\"dad\":4,\"watches_2\":0,\"chest_2\":0,\"shoes_2\":0,\"cheeks_3\":0,\"eyebrows_2\":0,\"helmet_2\":0,\"eyebrows_4\":0,\"glasses_2\":0,\"lip_thickness\":0,\"bodyb_3\":-1,\"sun_2\":0,\"neck_thickness\":0,\"eye_squint\":0,\"chest_1\":0,\"cheeks_1\":0,\"makeup_4\":0,\"moles_1\":0,\"blush_3\":0,\"mom\":5,\"tshirt_1\":150,\"decals_2\":0,\"jaw_1\":0,\"bproof_1\":0,\"nose_4\":0,\"nose_3\":0,\"eyebrows_5\":0,\"eyebrows_3\":0,\"beard_2\":0,\"moles_2\":0,\"arms_2\":0,\"ears_2\":0,\"makeup_1\":0,\"tshirt_2\":0,\"chin_2\":0,\"bproof_2\":0,\"lipstick_4\":0,\"torso_2\":0,\"bracelets_1\":-1,\"arms\":6,\"helmet_1\":-1,\"complexion_2\":0,\"chin_4\":0,\"sun_1\":0,\"sex\":0,\"eye_color\":0,\"bracelets_2\":0,\"age_2\":0,\"hair_2\":1,\"hair_1\":10,\"mask_2\":0,\"torso_1\":294,\"bodyb_2\":0,\"hair_color_2\":0,\"watches_1\":-1,\"eyebrows_6\":0,\"nose_2\":0,\"pants_2\":0,\"nose_1\":0,\"blush_1\":0,\"bags_2\":0,\"hair_color_1\":0,\"decals_1\":0,\"chin_3\":0,\"beard_3\":0,\"chest_3\":0,\"shoes_1\":10,\"lipstick_3\":0,\"jaw_2\":0,\"skin_md_weight\":1.0,\"nose_5\":0,\"beard_1\":0,\"pants_1\":28,\"blush_2\":0,\"cheeks_2\":0,\"beard_4\":0,\"eyebrows_1\":0}'),
(19, 'steam:11000010a77fc0b', 'efzefzef', '{\"beard_2\":0,\"ears_1\":-1,\"hair_2\":0,\"cheeks_1\":0,\"lipstick_3\":0,\"tshirt_1\":14,\"eye_color\":0,\"bracelets_2\":0,\"makeup_3\":0,\"nose_2\":0,\"blush_2\":0,\"eyebrows_3\":0,\"watches_1\":-1,\"watches_2\":0,\"bracelets_1\":-1,\"decals_1\":0,\"mask_2\":0,\"bproof_1\":0,\"mom\":21,\"beard_1\":0,\"blemishes_2\":0,\"torso_1\":284,\"bodyb_3\":-1,\"jaw_2\":0,\"shoes_1\":26,\"dad\":5,\"bproof_2\":0,\"moles_1\":0,\"decals_2\":0,\"bodyb_1\":-1,\"sun_1\":0,\"chain_2\":0,\"hair_color_2\":0,\"age_2\":0,\"eyebrows_2\":0,\"sun_2\":0,\"eyebrows_1\":0,\"makeup_2\":0,\"chin_3\":0,\"bags_2\":0,\"eyebrows_4\":0,\"tshirt_2\":0,\"complexion_2\":0,\"torso_2\":0,\"jaw_1\":0,\"glasses_2\":0,\"bags_1\":0,\"neck_thickness\":0,\"sex\":1,\"pants_1\":78,\"nose_1\":0,\"shoes_2\":0,\"beard_4\":0,\"eyebrows_6\":0,\"ears_2\":0,\"chin_4\":0,\"moles_2\":0,\"helmet_2\":0,\"mask_1\":0,\"helmet_1\":-1,\"eye_squint\":0,\"blush_1\":0,\"arms\":4,\"nose_4\":0,\"beard_3\":0,\"chest_1\":0,\"chin_2\":0,\"bodyb_2\":0,\"makeup_1\":0,\"nose_5\":0,\"makeup_4\":0,\"pants_2\":0,\"chain_1\":0,\"lipstick_2\":0,\"blemishes_1\":0,\"hair_1\":53,\"lipstick_4\":0,\"glasses_1\":5,\"eyebrows_5\":0,\"nose_6\":0,\"chest_3\":0,\"arms_2\":0,\"hair_color_1\":0,\"chest_2\":0,\"bodyb_4\":0,\"lipstick_1\":0,\"lip_thickness\":0,\"complexion_1\":0,\"age_1\":0,\"nose_3\":0,\"blush_3\":0,\"cheeks_3\":0,\"cheeks_2\":0,\"chin_1\":0}'),
(20, 'steam:11000010a77fc0b', 'gftrbhrt', '{\"beard_2\":0,\"ears_1\":-1,\"hair_2\":0,\"cheeks_1\":0,\"lipstick_3\":0,\"tshirt_1\":14,\"eye_color\":0,\"bracelets_2\":0,\"makeup_3\":56,\"nose_2\":0,\"blush_2\":0,\"eyebrows_3\":0,\"watches_1\":-1,\"watches_2\":0,\"bracelets_1\":-1,\"decals_1\":0,\"mask_2\":0,\"bproof_1\":0,\"mom\":21,\"beard_1\":0,\"blemishes_2\":0,\"torso_1\":390,\"bodyb_3\":-1,\"jaw_2\":0,\"shoes_1\":26,\"dad\":5,\"bproof_2\":0,\"moles_1\":0,\"decals_2\":0,\"bodyb_1\":-1,\"sun_1\":0,\"chain_2\":0,\"hair_color_2\":0,\"age_2\":0,\"eyebrows_2\":8,\"sun_2\":0,\"eyebrows_1\":3,\"makeup_2\":8,\"chin_3\":0,\"bags_2\":0,\"eyebrows_4\":0,\"tshirt_2\":0,\"complexion_2\":0,\"torso_2\":4,\"jaw_1\":0,\"glasses_2\":0,\"bags_1\":0,\"neck_thickness\":0,\"sex\":1,\"pants_1\":78,\"nose_1\":0,\"shoes_2\":0,\"beard_4\":0,\"eyebrows_6\":0,\"ears_2\":0,\"chin_4\":0,\"moles_2\":0,\"helmet_2\":0,\"mask_1\":0,\"helmet_1\":-1,\"eye_squint\":0,\"blush_1\":0,\"arms\":11,\"nose_4\":0,\"beard_3\":0,\"chest_1\":0,\"chin_2\":0,\"bodyb_2\":0,\"makeup_1\":2,\"nose_5\":0,\"makeup_4\":0,\"pants_2\":0,\"chain_1\":0,\"lipstick_2\":8,\"blemishes_1\":0,\"hair_1\":53,\"lipstick_4\":0,\"glasses_1\":5,\"eyebrows_5\":0,\"nose_6\":0,\"chest_3\":0,\"arms_2\":0,\"hair_color_1\":19,\"chest_2\":0,\"bodyb_4\":0,\"lipstick_1\":3,\"lip_thickness\":0,\"complexion_1\":0,\"age_1\":0,\"nose_3\":0,\"blush_3\":0,\"cheeks_3\":0,\"cheeks_2\":0,\"chin_1\":0}'),
(21, 'steam:11000010a77fc0b', 'ezfzef', '{\"beard_2\":0,\"ears_1\":-1,\"hair_2\":0,\"cheeks_1\":0,\"lipstick_3\":0,\"tshirt_1\":14,\"eye_color\":0,\"bracelets_2\":0,\"makeup_3\":56,\"nose_2\":0,\"blush_2\":0,\"eyebrows_3\":0,\"watches_1\":-1,\"watches_2\":0,\"bracelets_1\":-1,\"decals_1\":0,\"mask_2\":0,\"bproof_1\":0,\"mom\":21,\"beard_1\":0,\"blemishes_2\":0,\"torso_1\":390,\"bodyb_3\":-1,\"jaw_2\":0,\"shoes_1\":26,\"dad\":5,\"bproof_2\":0,\"moles_1\":0,\"decals_2\":0,\"bodyb_1\":-1,\"sun_1\":0,\"chain_2\":0,\"hair_color_2\":0,\"age_2\":0,\"eyebrows_2\":8,\"sun_2\":0,\"eyebrows_1\":3,\"makeup_2\":8,\"chin_3\":0,\"bags_2\":6,\"eyebrows_4\":0,\"tshirt_2\":0,\"complexion_2\":0,\"torso_2\":4,\"jaw_1\":0,\"glasses_2\":0,\"bags_1\":56,\"neck_thickness\":0,\"sex\":1,\"pants_1\":78,\"nose_1\":0,\"shoes_2\":0,\"beard_4\":0,\"eyebrows_6\":0,\"ears_2\":0,\"chin_4\":0,\"moles_2\":0,\"helmet_2\":20,\"mask_1\":0,\"helmet_1\":103,\"eye_squint\":0,\"blush_1\":0,\"arms\":11,\"nose_4\":0,\"beard_3\":0,\"chest_1\":0,\"chin_2\":0,\"bodyb_2\":0,\"makeup_1\":2,\"nose_5\":0,\"makeup_4\":0,\"pants_2\":0,\"chain_1\":0,\"lipstick_2\":8,\"blemishes_1\":0,\"hair_1\":53,\"lipstick_4\":0,\"glasses_1\":2,\"eyebrows_5\":0,\"nose_6\":0,\"chest_3\":0,\"arms_2\":0,\"hair_color_1\":19,\"chest_2\":0,\"bodyb_4\":0,\"lipstick_1\":3,\"lip_thickness\":0,\"complexion_1\":0,\"age_1\":0,\"nose_3\":0,\"blush_3\":0,\"cheeks_3\":0,\"cheeks_2\":0,\"chin_1\":0}');

-- --------------------------------------------------------

--
-- Structure de la table `user_jobs`
--

CREATE TABLE `user_jobs` (
  `identifier` varchar(100) ,
  `job` varchar(100) ,
  `grade` int(11) ,
  `removeable` tinyint(1) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user_jobs`
--

INSERT INTO `user_jobs` (`identifier`, `job`, `grade`, `removeable`) VALUES
('884c4af8bd5eb34ed23131a068aee6536e5d04e2', 'ambulance', 3, 1),
('32aaa2b60991920d25a84a04da9d816149a5bdf3', 'police', 3, 1),
('40f9e375addccb930ff50c533f25c26aad1a5853', 'police', 12, 1),
('9830bdb9130267f285d559c27ddd0a0b857cbc5d', 'redline', 4, 1),
('9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67', 'mechanic', 4, 1),
('2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1', 'gardener', 0, 1),
('9abff61c6a0c182237ed0d38dd42c082534d6048', 'tastyeats', 0, 1),
('cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c', 'miner', 0, 1),
('2965f0ccf41ae67c01f80f3e612689e6adf8e1af', 'ambulance', 3, 1),
('e31e742d2080ad11ef667af59ead70943bc22474', 'unemployed', 0, 1),
('e31e742d2080ad11ef667af59ead70943bc22474', 'redline', 3, 1),
('2:a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'maire', 0, 1),
('2:a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'redline', 2, 1),
('5729f4e918f229acc586fe883b428095737e10f3', 'miner', 0, 1),
('2:a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'police', 12, 1),
('fcd8ed0d319f823b748f6f0856f1b3e0189add96', 'tastyeats', 0, 1),
('fcd8ed0d319f823b748f6f0856f1b3e0189add96', 'garbage', 0, 1),
('3:a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'police', 4, 1),
('1:a4318d034cbbd61326d051adb5dfae7102ff12ec', 'police', 12, 1),
('a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'police', 6, 1),
('3811e039cae8ed059f5349c863186988b3c1a14c', 'pearl', 3, 1),
('40f9e375addccb930ff50c533f25c26aad1a5853', 'sheriff', 4, 1),
('50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'sheriff', 4, 1),
('1:a4318d034cbbd61326d051adb5dfae7102ff12ec', 'sheriff', 1, 1),
('a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'sheriff', 4, 1),
('3:a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'sheriff', 2, 1),
('50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'brinks', 0, 1),
('50e51cf3495e578ed7a08a0a0ad4899820659e6d', 'police', 12, 1),
('a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 'cyber', 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_lastcharacter`
--

CREATE TABLE `user_lastcharacter` (
  `steamid` varchar(255) ,
  `charid` int(11) ,
  `maxChars` int(11)  DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user_lastcharacter`
--

INSERT INTO `user_lastcharacter` (`steamid`, `charid`, `maxChars`) VALUES
('a798b0db0ab26d12e0a3abfc84592a56e12d3ddb', 1, 5),
('40f9e375addccb930ff50c533f25c26aad1a5853', 1, 3),
('884c4af8bd5eb34ed23131a068aee6536e5d04e2', 1, 1),
('9830bdb9130267f285d559c27ddd0a0b857cbc5d', 1, 1),
('cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c', 1, 1),
('5729f4e918f229acc586fe883b428095737e10f3', 1, 1),
('9abff61c6a0c182237ed0d38dd42c082534d6048', 1, 1),
('32aaa2b60991920d25a84a04da9d816149a5bdf3', 1, 1),
('9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67', 1, 1),
('bb41a782fc32129bf8e702a7b0dfce2d93ea20a4', 1, 1),
('2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1', 1, 1),
('2965f0ccf41ae67c01f80f3e612689e6adf8e1af', 1, 1),
('e31e742d2080ad11ef667af59ead70943bc22474', 1, 1),
('2d3a563260069bbbc922cf77b6f7f1dd4ef95ca2', 1, 1),
('fcd8ed0d319f823b748f6f0856f1b3e0189add96', 1, 1),
('a4318d034cbbd61326d051adb5dfae7102ff12ec', 1, 1),
('50e51cf3495e578ed7a08a0a0ad4899820659e6d', 1, 5),
('3811e039cae8ed059f5349c863186988b3c1a14c', 1, 1),
('b875cf1e3861a7a5a19d4d65bbb59172d62f9eb1', 1, 1),
('a7828ea51a05d65c379587b33eeaf27188f9d6fd', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) ,
  `type` varchar(60) ,
  `owner` varchar(40) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user_licenses`
--

INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
(4, 'drive', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb'),
(5, 'dmv', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb'),
(6, 'weapon', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb'),
(7, 'drive', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb'),
(8, 'drive', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb'),
(9, 'drive', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb'),
(10, 'drive', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb'),
(11, 'dmv', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb'),
(12, 'dmv', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb'),
(13, 'drive_bike', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb'),
(14, 'drive_bike', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb'),
(15, 'dmv', '9830bdb9130267f285d559c27ddd0a0b857cbc5d'),
(16, 'drive', '9830bdb9130267f285d559c27ddd0a0b857cbc5d'),
(17, 'dmv', '32aaa2b60991920d25a84a04da9d816149a5bdf3'),
(18, 'dmv', '9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67'),
(19, 'dmv', 'bb41a782fc32129bf8e702a7b0dfce2d93ea20a4'),
(20, 'dmv', '2db6ae3bb25a8433e9e5020dcc529f0b174ed9e1'),
(21, 'dmv', '9830bdb9130267f285d559c27ddd0a0b857cbc5d'),
(22, 'dmv', '9830bdb9130267f285d559c27ddd0a0b857cbc5d'),
(23, 'drive_bike', '9830bdb9130267f285d559c27ddd0a0b857cbc5d'),
(24, 'drive', '9830bdb9130267f285d559c27ddd0a0b857cbc5d'),
(25, 'dmv', '9abff61c6a0c182237ed0d38dd42c082534d6048'),
(26, 'dmv', 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c'),
(27, 'dmv', 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c'),
(28, 'drive', 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c'),
(29, 'drive_bike', 'cdd7aeefa4be17045e1d3cf5e1aa82046f26d49c'),
(30, 'dmv', '884c4af8bd5eb34ed23131a068aee6536e5d04e2'),
(31, 'dmv', '884c4af8bd5eb34ed23131a068aee6536e5d04e2'),
(32, 'drive', '884c4af8bd5eb34ed23131a068aee6536e5d04e2'),
(33, 'dmv', '9b4fc0cb9566ae08ba6f15ea5b148f5806b6ee67'),
(34, 'dmv', 'fcd8ed0d319f823b748f6f0856f1b3e0189add96'),
(35, 'drive_truck', 'a798b0db0ab26d12e0a3abfc84592a56e12d3ddb');

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) ,
  `model` varchar(60) ,
  `price` int(11) ,
  `category` varchar(60) DEFAULT NULL,
  `garage_tax` int(10) DEFAULT 0,
  `stock` int(11)  DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `garage_tax`, `stock`) VALUES
('Raptor 2019', '19raptor', 390099, 'import', 0, 100),
('Hyundai Honodi', '21ody', 60000, 'import', 0, 100),
('Peugeot 308 cc', '308cc', 150000, 'import', 0, 99),
('Adder', 'adder', 900000, 'super', 0, 99),
('Akuma', 'AKUMA', 7500, 'motorcycles', 0, 100),
('Alpha', 'alpha', 60000, 'sports', 0, 100),
('Volkswagen Amarok', 'amarok', 120000, 'import', 0, 100),
('Ardent', 'ardent', 1150000, 'sportsclassics', 0, 100),
('Asea', 'asea', 5500, 'sedans', 0, 98),
('Autarch', 'autarch', 1955000, 'super', 0, 100),
('Avarus', 'avarus', 18000, 'motorcycles', 0, 100),
('coagger', 'bagger', 13500, 'motorcycles', 0, 100),
('Baller', 'baller2', 40000, 'suvs', 0, 100),
('Baller Sport', 'baller3', 60000, 'suvs', 0, 100),
('Banshee', 'banshee', 70000, 'sports', 0, 100),
('Banshee 900R', 'banshee2', 255000, 'super', 0, 100),
('Bati 801', 'bati', 12000, 'motorcycles', 0, 100),
('Bati 801RR', 'bati2', 19000, 'motorcycles', 0, 100),
('Bestia GTS', 'bestiagts', 55000, 'sports', 0, 100),
('BF400', 'bf400', 6500, 'motorcycles', 0, 99),
('Bf Injection', 'bfinjection', 16000, 'offroad', 0, 100),
('Bifta', 'bifta', 12000, 'offroad', 0, 100),
('Bison', 'bison', 45000, 'vans', 0, 100),
('Blade', 'blade', 15000, 'muscle', 0, 100),
('Blazer', 'blazer', 6500, 'offroad', 0, 100),
('Blazer Sport', 'blazer4', 8500, 'offroad', 0, 100),
('blazer5', 'blazer5', 1755600, 'offroad', 0, 100),
('Blista', 'blista', 8000, 'compacts', 0, 100),
('BMX (velo)', 'bmx', 160, 'motorcycles', 0, 100),
('Bobcat XL', 'bobcatxl', 32000, 'vans', 0, 100),
('Brawler', 'brawler', 45000, 'offroad', 0, 100),
('Brioso R/A', 'brioso', 18000, 'compacts', 0, 100),
('Btype', 'btype', 62000, 'sportsclassics', 0, 100),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics', 0, 100),
('Btype Luxe', 'btype3', 85000, 'sportsclassics', 0, 100),
('Buccaneer', 'buccaneer', 18000, 'muscle', 0, 100),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle', 0, 100),
('Buffalo', 'buffalo', 12000, 'sports', 0, 100),
('Buffalo S', 'buffalo2', 20000, 'sports', 0, 99),
('Bullet', 'bullet', 90000, 'super', 0, 100),
('Burrito', 'burrito3', 19000, 'vans', 0, 100),
('Camper', 'camper', 42000, 'vans', 0, 100),
('Caracara 2', 'caracara2', 55000, 'dlcv', 0, 100),
('Carbonizzare', 'carbonizzare', 75000, 'sports', 0, 100),
('Carbon RS', 'carbonrs', 18000, 'motorcycles', 0, 100),
('Casco', 'casco', 30000, 'sportsclassics', 0, 99),
('Cavalcade', 'cavalcade2', 55000, 'suvs', 0, 99),
('Porshe Cayenne', 'cayenne', 251259, 'import', 0, 100),
('Cheetah', 'cheetah', 375000, 'super', 0, 100),
('Chimera', 'chimera', 38000, 'motorcycles', 0, 100),
('Chino', 'chino', 15000, 'muscle', 0, 99),
('Chino Luxe', 'chino2', 19000, 'muscle', 0, 100),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles', 0, 100),
('Club', 'club', 45000, 'dlcv', 0, 100),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes', 0, 100),
('Cognoscenti', 'cognoscenti', 55000, 'sedans', 0, 100),
('Comet', 'comet2', 65000, 'sports', 0, 100),
('Comet 5', 'comet5', 1145000, 'sports', 0, 100),
('Contender', 'contender', 70000, 'suvs', 0, 100),
('Coquette', 'coquette', 65000, 'sports', 0, 100),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics', 0, 100),
('Coquette BlackFin', 'coquette3', 55000, 'muscle', 0, 100),
('Coquette IV', 'coquette4', 47000, 'dlcv', 0, 100),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles', 0, 100),
('Cyclone', 'cyclone', 1890000, 'super', 0, 100),
('Daemon', 'daemon', 11500, 'motorcycles', 0, 100),
('Daemon High', 'daemon2', 13500, 'motorcycles', 0, 100),
('Defiler', 'defiler', 9800, 'motorcycles', 0, 100),
('Deluxo', 'deluxo', 4721500, 'sportsclassics', 0, 100),
('Dominator', 'dominator', 35000, 'muscle', 0, 100),
('Double T', 'double', 28000, 'motorcycles', 0, 100),
('Drafter', 'drafter', 48000, 'dlcv', 0, 100),
('Dubsta', 'dubsta', 45000, 'suvs', 0, 100),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs', 0, 100),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad', 0, 100),
('Dukes', 'dukes', 28000, 'muscle', 0, 100),
('Dukes III', 'dukes3', 35000, 'dlcv', 0, 100),
('Dune Buggy', 'dune', 8000, 'offroad', 0, 100),
('Dynasty', 'dynasty', 5000, 'dlcv', 0, 100),
('Elegy', 'elegy2', 38500, 'sports', 0, 100),
('Emerus', 'emerus', 72000, 'dlcv', 0, 100),
('Emperor', 'emperor', 8500, 'sedans', 0, 100),
('Enduro', 'enduro', 5500, 'motorcycles', 0, 100),
('Entity XF', 'entityxf', 425000, 'super', 0, 100),
('Esskey', 'esskey', 4200, 'motorcycles', 0, 100),
('Everon', 'everon', 115000, 'dlcv', 0, 100),
('Exemplar', 'exemplar', 32000, 'coupes', 0, 100),
('F620', 'f620', 40000, 'coupes', 0, 99),
('Faction', 'faction', 20000, 'muscle', 0, 100),
('Faction Rider', 'faction2', 30000, 'muscle', 0, 100),
('Faction XL', 'faction3', 40000, 'muscle', 0, 100),
('Faggio', 'faggio', 1900, 'motorcycles', 0, 100),
('Vespa', 'faggio2', 2800, 'motorcycles', 0, 100),
('Felon', 'felon', 42000, 'coupes', 0, 100),
('Felon GT', 'felon2', 55000, 'coupes', 0, 100),
('Feltzer', 'feltzer2', 55000, 'sports', 0, 100),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics', 0, 100),
('Fixter (velo)', 'fixter', 225, 'motorcycles', 0, 100),
('FMJ', 'fmj', 185000, 'super', 0, 100),
('Formula', 'formula', 3500000, 'dlcv', 0, 100),
('Formula 2', 'formula2', 5000000, 'dlcv', 0, 100),
('Fhantom', 'fq2', 17000, 'suvs', 0, 100),
('Fugitive', 'fugitive', 12000, 'sedans', 0, 99),
('Furia', 'furia', 160000, 'dlcv', 0, 100),
('Furore GT', 'furoregt', 45000, 'sports', 0, 100),
('Fusilade', 'fusilade', 40000, 'sports', 0, 100),
('Gargoyle', 'gargoyle', 16500, 'motorcycles', 0, 100),
('Gauntlet', 'gauntlet', 30000, 'muscle', 0, 100),
('Gauntlet 3', 'gauntlet3', 47000, 'dlcv', 0, 100),
('Gauntlet 4', 'gauntlet4', 50000, 'dlcv', 0, 99),
('Gauntlet V', 'gauntlet5', 65000, 'dlcv', 0, 100),
('Gang Burrito', 'gburrito', 45000, 'vans', 0, 100),
('Burrito', 'gburrito2', 29000, 'vans', 0, 100),
('Glendale', 'glendale', 6500, 'sedans', 0, 99),
('Glendale II', 'glendale2', 32000, 'dlcv', 0, 100),
('Golf R75R', 'golf75r', 170000, 'import', 0, 100),
('Grabger', 'granger', 50000, 'suvs', 0, 100),
('Gresley', 'gresley', 47500, 'suvs', 0, 100),
('GT 500', 'gt500', 785000, 'sportsclassics', 0, 100),
('Guardian', 'guardian', 45000, 'offroad', 0, 100),
('Hakuchou', 'hakuchou', 31000, 'motorcycles', 0, 100),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles', 0, 100),
('Hellion', 'hellion', 32000, 'dlcv', 0, 100),
('Hermes', 'hermes', 535000, 'muscle', 0, 100),
('Hexer', 'hexer', 12000, 'motorcycles', 0, 100),
('Hotknife', 'hotknife', 125000, 'muscle', 0, 100),
('Huntley S', 'huntley', 40000, 'suvs', 0, 100),
('Hustler', 'hustler', 625000, 'muscle', 0, 100),
('Imorgon', 'imorgon', 85000, 'dlcv', 0, 100),
('Infernus', 'infernus', 180000, 'super', 0, 100),
('Innovation', 'innovation', 23500, 'motorcycles', 0, 100),
('Intruder', 'intruder', 7500, 'sedans', 0, 100),
('Issi', 'issi2', 10000, 'compacts', 0, 100),
('Issi 7', 'issi7', 36000, 'dlcv', 0, 100),
('Jackal', 'jackal', 38000, 'coupes', 0, 100),
('JB-700 2', 'jb7002', 155000, 'dlcv', 0, 100),
('Jeep Gladiator', 'jeepg', 310999, 'import', 0, 100),
('Jester', 'jester', 65000, 'sports', 0, 100),
('Jester(Racecar)', 'jester2', 135000, 'sports', 0, 100),
('Journey', 'journey', 6500, 'vans', 0, 100),
('Jugular', 'jugular', 42500, 'dlcv', 0, 100),
('Kamacho', 'kamacho', 345000, 'offroad', 0, 100),
('Kanjo', 'kanjo', 26000, 'dlcv', 0, 100),
('Khamelion', 'khamelion', 38000, 'sports', 0, 100),
('Komoda', 'komoda', 135000, 'dlcv', 0, 100),
('Krieger', 'krieger', 75000, 'dlcv', 0, 100),
('Kuruma', 'kuruma', 30000, 'sports', 0, 100),
('Landstalker', 'landstalker', 35000, 'suvs', 0, 100),
('Landstalker II', 'landstalker2', 110000, 'dlcv', 0, 100),
('RE-7B', 'le7b', 325000, 'super', 0, 100),
('Locust', 'locust', 11500, 'dlcv', 0, 99),
('Lexus 570', 'lx570', 180000, 'import', 0, 100),
('Lynx', 'lynx', 40000, 'sports', 0, 100),
('Mamba', 'mamba', 70000, 'sports', 0, 99),
('Manana', 'manana', 12800, 'sportsclassics', 0, 100),
('Manana II', 'manana2', 175000, 'dlcv', 0, 100),
('Manchez', 'manchez', 5300, 'motorcycles', 0, 100),
('Massacro', 'massacro', 65000, 'sports', 0, 100),
('Massacro(Racecar)', 'massacro2', 130000, 'sports', 0, 100),
('Mesa', 'mesa', 16000, 'suvs', 0, 99),
('Mesa Trail', 'mesa3', 40000, 'suvs', 0, 100),
('Minivan', 'minivan', 13000, 'vans', 0, 100),
('Monroe', 'monroe', 55000, 'sportsclassics', 0, 100),
('The Liberator', 'monster', 210000, 'offroad', 0, 100),
('Moonbeam', 'moonbeam', 18000, 'vans', 0, 100),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans', 0, 100),
('Nebula', 'nebula', 8000, 'dlcv', 0, 100),
('Nemesis', 'nemesis', 5800, 'motorcycles', 0, 100),
('Neo', 'neo', 950000, 'dlcv', 0, 100),
('Neon', 'neon', 1500000, 'sports', 0, 100),
('Nightblade', 'nightblade', 35000, 'motorcycles', 0, 100),
('Nightshade', 'nightshade', 65000, 'muscle', 0, 100),
('9F', 'ninef', 65000, 'sports', 0, 100),
('9F Cabrio', 'ninef2', 80000, 'sports', 0, 100),
('Novak', 'novak', 125000, 'dlcv', 0, 99),
('Omnis', 'omnis', 35000, 'sports', 0, 100),
('Openwheel I', 'openwheel1', 1250000, 'dlcv', 0, 100),
('Openwheel II', 'openwheel2', 1350000, 'dlcv', 0, 100),
('Oppressor', 'oppressor', 3524500, 'super', 0, 100),
('Oracle XS', 'oracle2', 35000, 'coupes', 0, 100),
('Osiris', 'osiris', 160000, 'super', 0, 100),
('Outlaw', 'outlaw', 95000, 'dlcv', 0, 100),
('Panto', 'panto', 10000, 'compacts', 0, 100),
('Paradise', 'paradise', 19000, 'vans', 0, 100),
('Paragon', 'paragon', 167500, 'dlcv', 0, 100),
('Pariah', 'pariah', 1420000, 'sports', 0, 100),
('Patriot', 'patriot', 55000, 'suvs', 0, 100),
('PCJ-600', 'pcj', 6200, 'motorcycles', 0, 100),
('Penumbra', 'penumbra', 28000, 'sports', 0, 100),
('Penumbra II', 'penumbra2', 28000, 'dlcv', 0, 100),
('Peyote 2', 'peyote2', 29000, 'dlcv', 0, 100),
('Peyote III', 'peyote3', 48000, 'dlcv', 0, 100),
('Pfister', 'pfister811', 85000, 'super', 0, 100),
('Phoenix', 'phoenix', 12500, 'muscle', 0, 100),
('Picador', 'picador', 18000, 'muscle', 0, 100),
('Pigalle', 'pigalle', 20000, 'sportsclassics', 0, 100),
('Prairie', 'prairie', 12000, 'compacts', 0, 100),
('Premier', 'premier', 8000, 'sedans', 0, 100),
('Primo Custom', 'primo2', 14000, 'sedans', 0, 100),
('X80 Proto', 'prototipo', 2500000, 'super', 0, 100),
('Audi Q820', 'q820', 200000, 'import', 0, 100),
('Radius', 'radi', 29000, 'suvs', 0, 100),
('raiden', 'raiden', 1375000, 'sports', 0, 100),
('Rapid GT', 'rapidgt', 35000, 'sports', 0, 100),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports', 0, 100),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics', 0, 100),
('Reaper', 'reaper', 150000, 'super', 0, 100),
('Rebel', 'rebel2', 35000, 'offroad', 0, 100),
('Rebela', 'rebela', 98000, 'dlcv', 0, 100),
('Regina', 'regina', 5000, 'sedans', 0, 100),
('Retinue', 'retinue', 615000, 'sportsclassics', 0, 100),
('Retinue 2', 'retinue2', 65000, 'dlcv', 0, 100),
('Revolter', 'revolter', 1610000, 'sports', 0, 100),
('riata', 'riata', 380000, 'offroad', 0, 100),
('Rocoto', 'rocoto', 45000, 'suvs', 0, 100),
('R-Rocket', 'rrocket', 85000, 'dlcv', 0, 100),
('Ruffian', 'ruffian', 6800, 'motorcycles', 0, 99),
('Ruiner 2', 'ruiner2', 5745600, 'muscle', 0, 100),
('Rumpo', 'rumpo', 15000, 'vans', 0, 100),
('Rumpo Trail', 'rumpo3', 19500, 'vans', 0, 99),
('S80', 's80', 190000, 'dlcv', 0, 100),
('Sabre Turbo', 'sabregt', 20000, 'muscle', 0, 100),
('Sabre GT', 'sabregt2', 25000, 'muscle', 0, 100),
('Sanchez', 'sanchez', 5300, 'motorcycles', 0, 100),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles', 0, 100),
('Sanctus', 'sanctus', 25000, 'motorcycles', 0, 100),
('Sandking', 'sandking', 55000, 'offroad', 0, 100),
('Savestra', 'savestra', 990000, 'sportsclassics', 0, 100),
('SC 1', 'sc1', 1603000, 'super', 0, 100),
('Schafter', 'schafter2', 25000, 'sedans', 0, 100),
('Schafter V12', 'schafter3', 50000, 'sports', 0, 100),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles', 0, 100),
('Seminole', 'seminole', 25000, 'suvs', 0, 100),
('Seminole II', 'seminole2', 45000, 'dlcv', 0, 100),
('Sentinel', 'sentinel', 32000, 'coupes', 0, 100),
('Sentinel XS', 'sentinel2', 40000, 'coupes', 0, 100),
('Sentinel3', 'sentinel3', 650000, 'sports', 0, 100),
('Seven 70', 'seven70', 39500, 'sports', 0, 100),
('ETR1', 'sheava', 220000, 'super', 0, 100),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles', 0, 100),
('Slam Van', 'slamvan3', 11500, 'muscle', 0, 100),
('Sovereign', 'sovereign', 22000, 'motorcycles', 0, 100),
('Stinger', 'stinger', 80000, 'sportsclassics', 0, 100),
('Stinger GT', 'stingergt', 75000, 'sportsclassics', 0, 100),
('Streiter', 'streiter', 500000, 'sports', 0, 100),
('Stretch', 'stretch', 90000, 'sedans', 0, 100),
('Stromberg', 'stromberg', 3185350, 'sports', 0, 100),
('Stryder', 'stryder', 55000, 'dlcv', 0, 100),
('Sugoi', 'sugoi', 130000, 'dlcv', 0, 99),
('Sultan', 'sultan', 5000, 'sports', 0, 100),
('Sultan 2', 'sultan2', 135000, 'dlcv', 0, 100),
('Sultan RS', 'sultanrs', 65000, 'super', 0, 100),
('Super Diamond', 'superd', 130000, 'sedans', 0, 100),
('Surano', 'surano', 50000, 'sports', 0, 100),
('Surfer', 'surfer', 12000, 'vans', 0, 100),
('T20', 't20', 300000, 'super', 0, 100),
('Tailgater', 'tailgater', 30000, 'sedans', 0, 100),
('Tampa', 'tampa', 16000, 'muscle', 0, 100),
('Drift Tampa', 'tampa2', 80000, 'sports', 0, 100),
('Thrax', 'thrax', 65000, 'dlcv', 0, 100),
('Thrust', 'thrust', 24000, 'motorcycles', 0, 100),
('Tigon', 'tigon', 72000, 'dlcv', 0, 100),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles', 0, 100),
('Trophy Truck', 'trophytruck', 60000, 'offroad', 0, 100),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad', 0, 100),
('Tropos', 'tropos', 40000, 'sports', 0, 100),
('Turismo R', 'turismor', 350000, 'super', 0, 100),
('Tyrus', 'tyrus', 600000, 'super', 0, 100),
('Lada Niva', 'urban', 80000, 'import', 0, 100),
('Vacca', 'vacca', 120000, 'super', 0, 100),
('Vader', 'vader', 7200, 'motorcycles', 0, 100),
('Vagrant', 'vagrant', 142500, 'dlcv', 0, 100),
('Verlierer', 'verlierer2', 70000, 'sports', 0, 100),
('Vigero', 'vigero', 12500, 'muscle', 0, 100),
('Virgo', 'virgo', 14000, 'muscle', 0, 100),
('Viseris', 'viseris', 875000, 'sportsclassics', 0, 100),
('Visione', 'visione', 2250000, 'super', 0, 100),
('Voltic', 'voltic', 90000, 'super', 0, 100),
('Voltic 2', 'voltic2', 3830400, 'super', 0, 99),
('Voodoo', 'voodoo', 7200, 'muscle', 0, 100),
('Vortex', 'vortex', 9800, 'motorcycles', 0, 100),
('VSTR', 'vstr', 160000, 'dlcv', 0, 100),
('Warrener', 'warrener', 4000, 'sedans', 0, 100),
('Washington', 'washington', 9000, 'sedans', 0, 100),
('Ford Bronco', 'wildtrak', 550000, 'import', 0, 100),
('Windsor', 'windsor', 95000, 'coupes', 0, 100),
('Windsor Drop', 'windsor2', 125000, 'coupes', 0, 100),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles', 0, 100),
('XLS', 'xls', 32000, 'suvs', 0, 100),
('Yosemite', 'yosemite', 485000, 'muscle', 0, 100),
('Yosemite 2', 'yosemite2', 325000, 'dlcv', 0, 100),
('Yosemite III', 'yosemite3', 200000, 'dlcv', 0, 100),
('Youga', 'youga', 10800, 'vans', 0, 100),
('Youga Luxuary', 'youga2', 14500, 'vans', 0, 100),
('Youga III', 'youga3', 47000, 'dlcv', 0, 100),
('Z190', 'z190', 900000, 'sportsclassics', 0, 100),
('Zentorno', 'zentorno', 1500000, 'super', 0, 100),
('Zhaba', 'zhaba', 1250000, 'dlcv', 0, 100),
('Zion', 'zion', 36000, 'coupes', 0, 100),
('Zion Cabrio', 'zion2', 45000, 'coupes', 0, 100),
('Zion 3', 'zion3', 11000, 'dlcv', 0, 100),
('Zombie', 'zombiea', 9500, 'motorcycles', 0, 100),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles', 0, 100),
('Zorrusso', 'zorrusso', 62000, 'dlcv', 0, 100),
('Z-Type', 'ztype', 220000, 'sportsclassics', 0, 100);

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) ,
  `label` varchar(60) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupes'),
('dlcv', 'DLC Vehicles'),
('import', 'Imports'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_parts`
--

CREATE TABLE `vehicle_parts` (
  `id` int(11) ,
  `plate` varchar(100) ,
  `parts` longtext ,
  `mileage` float 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vehicle_parts`
--

INSERT INTO `vehicle_parts` (`id`, `plate`, `parts`, `mileage`) VALUES
(0, '00AFM128', '{\"suspension\":{\"health\":99.98808112000504,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.97228587010756,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.89677053266557,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.96787676931187,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.98579710826827,\"type\":\"stock_transmition\"},\"engine\":{\"health\":10.0,\"type\":\"stock_engine\"}}', 326.3),
(0, '25SQP869', '{\"suspension\":{\"health\":99.95140255336452,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.89338207831135,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.5726433202754,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.86969164557977,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9419304798396,\"type\":\"stock_transmition\"},\"engine\":{\"health\":19.31344451904296,\"type\":\"stock_engine\"}}', 1350.32),
(0, '87MIS171', '{\"suspension\":{\"health\":99.95877927294169,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.91899609844065,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.62797659045579,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.89046039287179,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.95050952589978,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.79312133789063,\"type\":\"stock_engine\"}}', 1180.59),
(0, '82DHX664', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.73617635151165,\"label\":\"STOCK SUSPENSION\"},\"tires\":{\"type\":\"stock_tires\",\"health\":99.53158205178339,\"label\":\"STOCK TIRES\"},\"oil\":{\"type\":\"stock_oil\",\"health\":97.56836019613914,\"label\":\"STOCK OIL\"},\"brakes\":{\"type\":\"race_brakes\",\"health\":99.31255751333143,\"label\":\"CERAMIC BRAKES\"},\"turbo\":{\"health\":96.85621689937648,\"type\":\"turbo_lvl_1\"},\"transmition\":{\"type\":\"race_transmition\",\"health\":99.21181834356368,\"label\":\"RACE TRANSMITION\"},\"engine\":{\"type\":\"v8engine\",\"health\":10.0,\"label\":\"V8 ENGINE\"}}', 7630.12),
(0, '88JWK628', '{\"suspension\":{\"health\":99.97781388508888,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.96277057355802,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.79332626017335,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.94171072603112,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.97320385456044,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.542138671875,\"type\":\"stock_engine\"}}', 649.12),
(0, '28DBK225', '{\"engine\":{\"health\":99.64443359375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.91599536135122,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.773991841201,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.2686036592395,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.80845919986612,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.89980296219119,\"type\":\"stock_transmition\"}}', 2256.22),
(0, '60TJM310', '{\"engine\":{\"health\":98.91972045898437,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.94788032732049,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.86332855548443,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.5119565566278,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.91503750296602,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.936988086877,\"type\":\"stock_transmition\"}}', 1538.17),
(0, '69WBB573', '{\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99858798847302,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99598812307525,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.98975975664958,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99474965733995,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99836652099209,\"type\":\"stock_transmition\"}}', 462.619),
(0, '80AIM617', '{\"engine\":{\"health\":99.9999755859375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99997803951415,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99992341812981,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99997753719892,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.9997830635234,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99997797288789,\"type\":\"stock_transmition\"}}', 0.00740089),
(0, '28WGU180', '{\"engine\":{\"health\":70.55418090820312,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.71274937337006,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.24528458188571,\"type\":\"stock_brakes\"},\"oil\":{\"health\":97.32437874767503,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.51773280330224,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.65306799834882,\"type\":\"stock_transmition\"}}', 8479.65),
(0, '09BIT092', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99993896484375},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99960321641233},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99987448685083},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99995013079577},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99984113600896},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9999521669287}}', 0.105002),
(0, '26GFE463', '{\"engine\":{\"type\":\"stock_engine\",\"health\":69.24946899414063},\"tires\":{\"type\":\"stock_tires\",\"health\":99.93457893299399},\"oil\":{\"type\":\"stock_oil\",\"health\":99.7557450151523},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96640788072631},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.92404298650075},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97181247864296}}', 1879.59),
(0, '46SHH363', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.975439453125},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99544754990477},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98881076756332},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99832149076117},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99600716263234},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99856589919857}}', 34.5492),
(0, '22RSK609', '{\"engine\":{\"type\":\"stock_engine\",\"health\":10.0},\"oil\":{\"type\":\"stock_oil\",\"health\":99.92494346383389},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96851803408872},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97290470147712},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98865588435362},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99029343061844}}', 233.77),
(0, '87NAG582', '{\"engine\":{\"type\":\"stock_engine\",\"health\":14.66341705322265},\"oil\":{\"type\":\"stock_oil\",\"health\":98.59509196345026},\"tires\":{\"type\":\"stock_tires\",\"health\":99.5959298604945},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.55394308088667},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.80429020904067},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.83531973491628}}', 4398.18),
(0, '02HCK437', '{\"engine\":{\"type\":\"stock_engine\",\"health\":97.44097290039062},\"oil\":{\"type\":\"stock_oil\",\"health\":99.27341021895355},\"tires\":{\"type\":\"stock_tires\",\"health\":99.85526461519543},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.79050597488991},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.90455091933998},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9207298488464}}', 2312.25),
(0, '00TOT610', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.05424194335937},\"oil\":{\"type\":\"stock_oil\",\"health\":99.89256408631009},\"tires\":{\"type\":\"stock_tires\",\"health\":99.95535056262043},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.96135234851674},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98379919237159},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98614402032179}}', 331.566),
(0, '82KTF802', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.49593505859375},\"oil\":{\"type\":\"stock_oil\",\"health\":99.68136486811399},\"tires\":{\"type\":\"stock_tires\",\"health\":99.87842002416683},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.88895568943024},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9529248593811},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95990131153615}}', 990.301),
(0, 'MECA3563', '{\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99997643549257},\"tires\":{\"type\":\"stock_tires\",\"health\":99.999743708112},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99991018693335},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99997431427096},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9999743255677}}', 0.00166635),
(0, '86IEK276', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98457917390398},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98312474484355},\"oil\":{\"type\":\"stock_oil\",\"health\":99.95573799477786},\"engine\":{\"type\":\"stock_engine\",\"health\":83.95407104492188},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99443108720647},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99346195180633}}', 136.282),
(0, '45OMK622', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.07789878993705},\"oil\":{\"type\":\"stock_oil\",\"health\":95.48162441870727},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.68996380914892},\"engine\":{\"type\":\"stock_engine\",\"health\":99.66602172851563},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.50502547123648},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.40446007604159}}', 14249.2),
(0, '89BUY456', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.9918059601573},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97397345557333},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99150282937704},\"engine\":{\"type\":\"stock_engine\",\"health\":99.94264526367188},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9968841689217},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99631077888579}}', 81.8691),
(0, '87LVM014', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.87733890916238},\"oil\":{\"type\":\"stock_oil\",\"health\":99.34126414947107},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.81289378481722},\"engine\":{\"type\":\"stock_engine\",\"health\":86.75457153320312},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92891848905978},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9142329954628}}', 2078.65),
(0, '67AWB271', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.90102399449062},\"tires\":{\"type\":\"stock_tires\",\"health\":99.92588032265535},\"oil\":{\"type\":\"stock_oil\",\"health\":99.66522805494312},\"engine\":{\"type\":\"stock_engine\",\"health\":10.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96279412909803},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9553549522771}}', 1051.83),
(0, '46IPJ696', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.88925460918301},\"oil\":{\"type\":\"stock_oil\",\"health\":99.45433872157637},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.84199554980832},\"engine\":{\"type\":\"stock_engine\",\"health\":88.29244995117188},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94028064590018},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.92813462467221}}', 1727.5),
(0, '21BKG546', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.6075205682696},\"tires\":{\"type\":\"stock_tires\",\"health\":99.7253713304683},\"oil\":{\"type\":\"stock_oil\",\"health\":98.64390750505719},\"engine\":{\"type\":\"stock_engine\",\"health\":20.75135650634765},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.85163879980806},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.82145195006062}}', 4234.77),
(0, '88DAB187', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.76073075120968},\"oil\":{\"type\":\"stock_oil\",\"health\":99.17527033711781},\"engine\":{\"type\":\"stock_engine\",\"health\":99.73784790039062},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.90961128866808},\"tires\":{\"type\":\"stock_tires\",\"health\":99.83123293355756},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8912562313178}}', 2608.92),
(0, '02TTD198', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.50771083898816},\"tires\":{\"type\":\"stock_tires\",\"health\":99.09383514221284},\"oil\":{\"type\":\"stock_oil\",\"health\":95.49508124150423},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.40741803618333},\"engine\":{\"type\":\"stock_engine\",\"health\":99.87423706054688},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.69821770824277}}', 14144.7),
(0, '08KHQ613', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.45896375135323},\"tires\":{\"type\":\"stock_tires\",\"health\":99.6417616222542},\"oil\":{\"type\":\"stock_oil\",\"health\":98.10046446477101},\"engine\":{\"type\":\"stock_engine\",\"health\":56.08336791992187},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.79461267561205},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.75227472639517}}', 5932.51),
(0, '03TSZ623', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.34101246185294},\"oil\":{\"type\":\"stock_oil\",\"health\":97.52030898129344},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.2305861710633},\"engine\":{\"type\":\"stock_engine\",\"health\":93.55123901367188},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.714313458726},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.65943510979862}}', 7795.12),
(0, 'CHGRPD1', '{\"engine\":{\"health\":99.99472045898438,\"type\":\"stock_engine\"},\"oil\":{\"health\":70.0154710934843,\"type\":\"stock_oil\"},\"brakes\":{\"health\":91.14004682104704,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":96.66898148038543,\"type\":\"stock_suspension\"},\"tires\":{\"health\":93.37657579582701,\"type\":\"stock_tires\"},\"transmition\":{\"health\":96.00264537572268,\"type\":\"stock_transmition\"}}', 113223),
(0, '21FXQ906', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.8814276048912},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9124052435416},\"oil\":{\"type\":\"stock_oil\",\"health\":99.59716733289094},\"engine\":{\"type\":\"stock_engine\",\"health\":97.3512939453125},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95537635399039},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94642150496077}}', 1256.12),
(0, '09RMJ931', '{\"oil\":{\"health\":99.99990501922238,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99968108580198,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99986572265625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99990850721994,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99909756906043,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.9999081951884,\"type\":\"stock_transmition\"}}', 0.0102993),
(0, '87DFH772', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9992156487306},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99610559844672},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9991369206957},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99623413085938},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99758542830372},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99530954510209}}', 5975.44),
(0, 'FPIUPD1', '{\"tires\":{\"type\":\"stock_tires\",\"health\":96.28593041603867},\"suspension\":{\"type\":\"stock_suspension\",\"health\":98.1084111717639},\"brakes\":{\"type\":\"stock_brakes\",\"health\":94.97363731676882},\"oil\":{\"type\":\"stock_oil\",\"health\":82.92494440459254},\"engine\":{\"type\":\"stock_engine\",\"health\":74.81007080078125},\"transmition\":{\"type\":\"stock_transmition\",\"health\":97.72884016806066}}', 53931.6),
(0, 'FPIUPD3', '{\"oil\":{\"health\":99.9414657829799,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.9802185656777,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.90313110351562,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99280566342631,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.97953751154488,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99152024826326,\"type\":\"stock_transmition\"}}', 182.398),
(0, '29QYB359', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9956639328357},\"oil\":{\"type\":\"stock_oil\",\"health\":99.96308577100344},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99484882743941},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9186279296875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98824720758917},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98928429947702}}', 114.604),
(0, '66LGF076', '{\"oil\":{\"health\":99.6077018403528,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.9408766473985,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.1472900390625,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.82823285843418,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.74408598138348,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.93250412536628,\"type\":\"stock_transmition\"}}', 1143.51),
(0, '86UIY251', '{\"oil\":{\"health\":98.54267615966698,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.51379627449178,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.44154052734375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.8226344326749,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.50962032506128,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.7905925850263,\"type\":\"stock_transmition\"}}', 4590.48),
(0, '02WBV049', '{\"oil\":{\"health\":99.9725550499224,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99102701171067,\"type\":\"stock_brakes\"},\"engine\":{\"health\":17.96080169677734,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99671081690346,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99132080226613,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99610625677278,\"type\":\"stock_transmition\"}}', 86.2507),
(0, '47DZR627', '{\"oil\":{\"health\":99.96446109214763,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.9880963622355,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.98042602539063,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99566164541713,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.9878993496912,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99488054939919,\"type\":\"stock_transmition\"}}', 110.071),
(0, '02HJB579', '{\"oil\":{\"health\":98.73070057553892,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.59375004881419,\"type\":\"stock_brakes\"},\"engine\":{\"health\":40.49910278320313,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.8503114092863,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.62508734468625,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.8222970958836,\"type\":\"stock_transmition\"}}', 4000.89),
(0, 'CVPIB01', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.9998779296875},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9998866132036},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99958497763149},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99988122977753},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99881871922074},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99988106944181}}', 0.0223781),
(0, 'CVPIPD3', '{\"oil\":{\"type\":\"stock_oil\",\"health\":97.76118380203519},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.75199077519909},\"engine\":{\"type\":\"stock_engine\",\"health\":99.89931030273438},\"tires\":{\"type\":\"stock_tires\",\"health\":99.51312000435384},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.34099371719168},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.70222267901008}}', 7045.49),
(0, 'FPISPD1', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.57598121368963},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.73193007506717},\"engine\":{\"type\":\"stock_engine\",\"health\":99.96273193359375},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.77701859580646},\"oil\":{\"type\":\"stock_oil\",\"health\":97.97323164627791},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.40893687243383}}', 6419.66),
(0, '01MPD205', '{\"oil\":{\"health\":98.73057600980923,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.62369104760961,\"type\":\"stock_brakes\"},\"engine\":{\"health\":83.9344482421875,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.85864018875326,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.7159109347166,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.83043771566487,\"type\":\"stock_transmition\"}}', 4041.89),
(0, '40RRE269', '{\"oil\":{\"health\":99.6881144875213,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.96442680778788,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.49016723632812,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.9045173454275,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.92102805470671,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.95751644631909,\"type\":\"stock_transmition\"}}', 970.762),
(0, '24KNM927', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.99073158548294},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99776610192963},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98494873046875},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99802725210329},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9876479448644},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99419221309025}}', 37.38),
(0, '83KZL309', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.995198054443},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99831081127003},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98184204101563},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99855236854762},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98891406195119},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99594783048248}}', 34.5027),
(0, '07GWK061', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.99177699319476},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99778158301041},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98668823242187},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99806052732798},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98695722973696},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99438341178127}}', 39.9933),
(0, '40VEM710', '{\"tires\":{\"health\":99.99573275531393,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99824730655007,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.98793139274625,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.993359375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9985122354175,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99590552520422,\"type\":\"stock_brakes\"}}', 37.0658),
(0, '27HZB661', '{\"engine\":{\"type\":\"stock_engine\",\"health\":19.96084442138671},\"oil\":{\"type\":\"stock_oil\",\"health\":99.94938072234754},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99313142531877},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9874783920765},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99425358593594},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98460062536778}}', 157.329),
(0, '28MCK257', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.9290771484375},\"oil\":{\"type\":\"stock_oil\",\"health\":99.96212868816491},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99428700312244},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98423662751242},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99511350854282},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98636860266525}}', 115.916),
(0, '81ILQ766', '{\"tires\":{\"health\":99.70767100244376,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.76807861328125,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.8216229320743,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.53208613150733,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.7843834393979,\"type\":\"stock_transmition\"},\"oil\":{\"health\":98.33126118547377,\"type\":\"stock_oil\"}}', 2481.75),
(0, '06FTI681', '{\"tires\":{\"health\":99.93512817118472,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.67765379770394,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.2872314453125,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.90684139791192,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.9647716798309,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.95759536590144,\"type\":\"stock_transmition\"}}', 1011.29),
(0, '87BJM832', '{\"tires\":{\"health\":99.90759306975107,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.51605409682725,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99933471679688,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.86178424060386,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.94756881021836,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.93678466620917,\"type\":\"stock_transmition\"}}', 1522.58),
(0, '43MFQ465', '{\"tires\":{\"health\":99.13506686097694,\"type\":\"stock_tires\"},\"engine\":{\"health\":90.7898681640625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.54967410743289,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":98.80540664953203,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.45882951850369,\"type\":\"stock_transmition\"},\"oil\":{\"health\":95.91550084504849,\"type\":\"stock_oil\"}}', 15788.3),
(0, '62DOS556', '{\"tires\":{\"health\":99.99506766314816,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.98618778694055,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.97874755859375,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99529794692342,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99829283003882,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99798972485128,\"type\":\"stock_transmition\"}}', 42.6929),
(0, '02BJZ681', '{\"tires\":{\"health\":99.99333939579644,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.97216390916062,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.9385009765625,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99160601311002,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99686066068462,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99624311289553,\"type\":\"stock_transmition\"}}', 87.3231),
(0, '49GSD291', '{\"tires\":{\"health\":99.995816071627,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.98402642736679,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.96472778320313,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99506378580557,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99816528770747,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99781164989087,\"type\":\"stock_transmition\"}}', 49.8936),
(0, '06OFB696', '{\"tires\":{\"health\":99.97214206247915,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.8739293973402,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.72120361328125,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.96274496465554,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.98599377817205,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.98319217315933,\"type\":\"stock_transmition\"}}', 397.109),
(0, '85VCF264', '{\"tires\":{\"health\":99.99756421468158,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99203973423555,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.98246459960937,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99742434688339,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99905347991869,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99887796392633,\"type\":\"stock_transmition\"}}', 24.5303),
(0, '85BAK304', '{\"brakes\":{\"health\":99.99922165724709,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99865112304687,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99915741825194,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.9997590756213,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99820955324441,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99974362500878,\"type\":\"stock_transmition\"}}', 2.14903),
(0, '28TSY115', '{\"brakes\":{\"health\":99.99887318025837,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99935913085938,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99957347248618,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99967410420465,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99687278310812,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99967081478992,\"type\":\"stock_transmition\"}}', 0.422983),
(0, '86USB787', '{\"brakes\":{\"health\":99.94812164482855,\"type\":\"stock_brakes\"},\"engine\":{\"health\":10.0,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.82472970201708,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.98050430401995,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.96101472100512,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.97660988002999,\"type\":\"stock_transmition\"}}', 515.293),
(0, '02SJB308', '{\"brakes\":{\"health\":99.80911255299289,\"type\":\"stock_brakes\"},\"engine\":{\"health\":98.71030883789062,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.4158416983956,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.93001850841066,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.81556921042218,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.91714999090019,\"type\":\"stock_transmition\"}}', 1827.99),
(0, '82DYT128', '{\"oil\":{\"type\":\"stock_oil\",\"health\":100},\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100}}', 0),
(0, '20TQM213', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.93746995776179},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.83523179756692},\"tires\":{\"type\":\"stock_tires\",\"health\":99.89045723554611},\"engine\":{\"type\":\"stock_engine\",\"health\":98.08333129882813},\"oil\":{\"type\":\"stock_oil\",\"health\":99.42217027419312},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.92459211361882}}', 1869.72),
(0, '02BFI965', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95168813488424},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.87267237741574},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9151300174382},\"engine\":{\"type\":\"stock_engine\",\"health\":99.75294799804688},\"oil\":{\"type\":\"stock_oil\",\"health\":99.55379594865808},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94174434790303}}', 1449.41),
(0, '68BPH321', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99993589796344},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99977573810537},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99935988775133},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99989013671875},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99994138984686},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99993587528887}}', 0.0193149),
(0, '61SDO428', '{\"suspension\":{\"health\":99.9277064190171,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.8524348184194,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.80731095940952,\"type\":\"stock_brakes\"},\"engine\":{\"health\":81.95448608398438,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.91334011119555,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.35310031034601,\"type\":\"stock_oil\"}}', 2047.95),
(0, '66YXT865', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97906332499852},\"engine\":{\"type\":\"stock_engine\",\"health\":83.70289916992188},\"oil\":{\"type\":\"stock_oil\",\"health\":99.95088918758347},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99275612760444},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96967936633658},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9917044898945}}', 150.908),
(0, '00ZNT586', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.98912299933136},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9632643066289},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99485460513165},\"engine\":{\"type\":\"stock_engine\",\"health\":99.91923828125},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99566533336373},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98823372534774}}', 118.637),
(0, '60BIR412', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.37629011157566},\"oil\":{\"type\":\"stock_oil\",\"health\":97.79196956388252},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.71345601635602},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.76270199743776},\"tires\":{\"type\":\"stock_tires\",\"health\":99.59932151670214},\"engine\":{\"type\":\"stock_engine\",\"health\":98.77684936523437}}', 6974.58),
(0, '44WJC711', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99092652890488},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98556213334445},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99676711998461},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99705823803108},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98224165807477},\"engine\":{\"type\":\"stock_engine\",\"health\":98.19667358398438}}', 196.989),
(0, '87DSK134', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97833290307169},\"oil\":{\"type\":\"stock_oil\",\"health\":99.931864706522},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99049914932894},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9920038091237},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98029971601969},\"engine\":{\"type\":\"stock_engine\",\"health\":99.96361694335937}}', 213.208),
(0, '29FEV733', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.9339996914177},\"oil\":{\"type\":\"stock_oil\",\"health\":96.31140699357117},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.51476823768661},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.59688653113038},\"tires\":{\"type\":\"stock_tires\",\"health\":99.25770296369949},\"engine\":{\"type\":\"stock_engine\",\"health\":47.59140014648437}}', 11620),
(0, '05UHQ135', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.81077065924524},\"oil\":{\"type\":\"stock_oil\",\"health\":99.31431539653085},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.91222941427469},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9275498959998},\"tires\":{\"type\":\"stock_tires\",\"health\":99.88908425309113},\"engine\":{\"type\":\"stock_engine\",\"health\":99.6198486328125}}', 2164.22),
(0, '41XZZ357', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9990113127021},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99724652232408},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99958528279325},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9996453896667},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99886117694993},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9984375}}', 8.6544),
(0, '02DHG978', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99924360089105},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99980406061968},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99978380995013},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99978384450405},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99783982892592},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0}}', 0.0366512),
(0, '40VEP286', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99948116431165},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99977652633193},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99984699621723},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99984916213296},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99857836625549},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99988403320313}}', 0.359348),
(0, '85QDB893', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99978942312149},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99994125841417},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99993959214868},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99993970261633},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99940145039366},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99995727539063}}', 0.0595847),
(0, '02BAR704', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97209907339773},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.92677442561102},\"engine\":{\"type\":\"stock_engine\",\"health\":99.8555908203125},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96628296179788},\"tires\":{\"type\":\"stock_tires\",\"health\":99.95392600354757},\"oil\":{\"type\":\"stock_oil\",\"health\":99.73933664626758}}', 825.01),
(0, '23LLF886', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9997381950901},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99920657580337},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99921264648438},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99970893485492},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99855382332109},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99857933605552}}', 4.246),
(0, '03AJZ706', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97076689105882},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.92340287513255},\"engine\":{\"type\":\"stock_engine\",\"health\":99.84789428710937},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96464337762417},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9529156236533},\"oil\":{\"type\":\"stock_oil\",\"health\":99.72568790784337}}', 856.747),
(0, '29EOK272', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99997897608421},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9999273719492},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99997874854742},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99979887369},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99997186323637}}', 0.109268),
(0, '07EUU963', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99843449110091},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99574005794139},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9796875},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99814417227037},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99597218017232},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98683312935374}}', 41.7688),
(0, '44JSU193', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99996240657637},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99987000211464},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99993286132812},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99996203060083},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99963912358442},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9999509389092}}', 0.0777196),
(0, '64UMP909', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92315964018936},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.7962688103501},\"engine\":{\"type\":\"stock_engine\",\"health\":95.85745849609376},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.90763343312102},\"tires\":{\"type\":\"stock_tires\",\"health\":99.85342099498448},\"oil\":{\"type\":\"stock_oil\",\"health\":99.30203228989835}}', 2218.53),
(0, '41OVX744', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98142884171534},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9508001684522},\"engine\":{\"type\":\"stock_engine\",\"health\":99.73825073242188},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97766712208467},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96494528836056},\"oil\":{\"type\":\"stock_oil\",\"health\":99.83093631250203}}', 545.574),
(0, '44GCI694', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.51328399113865},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.71487576862093},\"engine\":{\"type\":\"stock_engine\",\"health\":96.41892700195312},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.4136692769424},\"tires\":{\"type\":\"stock_tires\",\"health\":99.12240921496229},\"oil\":{\"type\":\"stock_oil\",\"health\":95.52755966708279}}', 14451.9),
(0, '21FGI576', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.95992431640625},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.990171519484},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9905638303131},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9686211115779},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97561885870505},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9213503518347}}', 55.4396),
(0, '03BJH340', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.97112426757812},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99584913358582},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99620242789656},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98819233374262},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98227376552417},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97617371610774}}', 50.2311),
(0, '24ZJW639', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99734497070313},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99973940956905},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99977630477274},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99937202656},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99830441854677},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99924070063432}}', 5.16585),
(0, '49FZM497', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99773559570312},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99935485575129},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99937524908147},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99789902377205},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99861179429993},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99456924368961}}', 2.88058),
(0, '66OXE085', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.98987426757813},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99463388783193},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9946673007598},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98147588695609},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99384734710444},\"tires\":{\"type\":\"stock_tires\",\"health\":99.94801119535863}}', 4.40558),
(0, '81FEN823', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.9997802734375},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99995292663017},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99995484910422},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9998500462558},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99988150399457},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99962548612807}}', 0.267925),
(0, '25MJR205', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99966430664063},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99988744179542},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99989043591173},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99962910097962},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99978013060921},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99902427347613}}', 0.413924),
(0, '68LKL332', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99256591796875},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99511195294932},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99511433117378},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98291014765043},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99550657996959},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9512385596235}}', 0.00838147),
(0, '48ASG656', '{\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"}}', 0),
(0, '25UAW398', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98291027709863},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99717407226562},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98530268335083},\"tires\":{\"type\":\"stock_tires\",\"health\":99.94884270391526},\"oil\":{\"type\":\"stock_oil\",\"health\":99.88987996180018},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.95860749798995}}', 342.14),
(0, '41NTL007', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.28068355266629},\"engine\":{\"type\":\"stock_engine\",\"health\":99.77881469726563},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.4039355530298},\"tires\":{\"type\":\"stock_tires\",\"health\":98.97559814482692},\"oil\":{\"type\":\"stock_oil\",\"health\":94.4718359830304},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.43143283712674}}', 17703.1),
(0, '05DYH175', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99323819903671},\"engine\":{\"type\":\"stock_engine\",\"health\":99.96848754882812},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98927691940006},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99770029854763},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9855184254005},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99739383328114}}', 43.3924),
(0, 'TE19605', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9945192487263},\"engine\":{\"type\":\"stock_engine\",\"health\":99.97791748046875},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99030981292758},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9981787084},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98974234763483},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9979659061797}}', 30.2443),
(0, 'TE16892', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.8111936006477},\"engine\":{\"type\":\"stock_engine\",\"health\":98.61160278320313},\"tires\":{\"type\":\"stock_tires\",\"health\":99.85155105381081},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92932813119312},\"oil\":{\"type\":\"stock_oil\",\"health\":99.37185288246792},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.91538881179554}}', 2015.83),
(0, '28JGX766', '{\"oil\":{\"health\":99.86445912645229,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.96082296538097,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.77612915039063,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.97270590274862,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.9821681076257,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.98518558667652,\"type\":\"stock_suspension\"}}', 433.245),
(0, '42NQM643', '{\"oil\":{\"health\":99.99819087211223,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99840066013613,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99630737304688,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99637346444112,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99946908442694,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99950270321158,\"type\":\"stock_suspension\"}}', 4.77667),
(0, '07IVK560', '{\"oil\":{\"health\":99.99996407093038,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99986301678939,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99994506835938,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99960909486896,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99996082464799,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.9999608415988,\"type\":\"stock_suspension\"}}', 0.00622173),
(0, '89LQP984', '{\"oil\":{\"health\":99.99789039586124,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99890837809297,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.9954833984375,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99811486293086,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99959134075869,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99963532588045,\"type\":\"stock_suspension\"}}', 6.30191),
(0, '47XHF263', '{\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100},\"oil\":{\"type\":\"stock_oil\",\"health\":100},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100}}', 0),
(0, '04KYY852', '{\"tires\":{\"health\":99.99281530574332,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99194642232516,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.97447006253685,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99645775995062,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99702194988537,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.94368286132813,\"type\":\"stock_engine\"}}', 80.1918),
(0, '48QPK858', '{\"transmition\":{\"health\":99.99986834669537,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99959407034304,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99959939077833,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99904003686376,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99987547096929,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99918212890626,\"type\":\"stock_engine\"}}', 1.04763);
INSERT INTO `vehicle_parts` (`id`, `plate`, `parts`, `mileage`) VALUES
(0, '48TSA344', '{\"transmition\":{\"health\":99.99998870155582,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.9999762732671,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99990848260171,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99998983140023,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99999075581826,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99998168945312,\"type\":\"stock_engine\"}}', 0.0436881),
(0, 'TVBU0433', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.64517707581384},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.87212323021977},\"engine\":{\"type\":\"stock_engine\",\"health\":10.0},\"oil\":{\"type\":\"stock_oil\",\"health\":98.99057669625643},\"tires\":{\"type\":\"stock_tires\",\"health\":99.60562946639016},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.85004090402389}}', 3166.1),
(0, '21GOY961', '{\"brakes\":{\"health\":99.99519599007386,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99860996892501,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99659423828125,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99815980470277,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.9866823102801,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99859542158358,\"type\":\"stock_transmition\"}}', 2.12672),
(0, '81OWG864', '{\"brakes\":{\"health\":99.93366269352832,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.97503005458647,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.50504150390626,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.7744725609686,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.95109887304423,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.97001636352089,\"type\":\"stock_transmition\"}}', 728.223),
(0, 'POVY5396', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.85251633237357},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94556852118258},\"engine\":{\"type\":\"stock_engine\",\"health\":94.72053833007813},\"oil\":{\"type\":\"stock_oil\",\"health\":99.53611319685739},\"tires\":{\"type\":\"stock_tires\",\"health\":99.86597370101853},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9353241144615}}', 1482.01),
(0, '04WVQ320', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.94264353566433},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97919028833248},\"engine\":{\"type\":\"stock_engine\",\"health\":99.63028564453126},\"oil\":{\"type\":\"stock_oil\",\"health\":99.83202368255313},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9394921538653},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97550516297592}}', 525.853),
(0, '28CKZ228', '{\"brakes\":{\"health\":99.99945932780548,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99982952875834,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99889526367187,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99930679620786,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99882906970578,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99981620086511,\"type\":\"stock_transmition\"}}', 1.88333),
(0, 'LSPD07', '{\"engine\":{\"type\":\"stock_engine\",\"health\":92.98141479492188},\"tires\":{\"type\":\"stock_tires\",\"health\":96.43349073211613},\"oil\":{\"type\":\"stock_oil\",\"health\":82.17320118468266},\"suspension\":{\"type\":\"stock_suspension\",\"health\":98.05369765465307},\"transmition\":{\"type\":\"stock_transmition\",\"health\":97.65678094590168},\"brakes\":{\"type\":\"stock_brakes\",\"health\":94.854991968058}}', 61174.5),
(0, '80IAK354', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.70528898584854},\"engine\":{\"type\":\"stock_engine\",\"health\":99.25455932617187},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96104743509203},\"tires\":{\"type\":\"stock_tires\",\"health\":99.93864778455719},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96760434685301},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.91415424338172}}', 935.273),
(0, '67KIB932', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.69371474364114},\"engine\":{\"type\":\"stock_engine\",\"health\":99.3248291015625},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95983220591875},\"tires\":{\"type\":\"stock_tires\",\"health\":99.93974172576255},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96665377767843},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.91193882326562}}', 973.446),
(0, '87LDW497', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.68295238702686},\"engine\":{\"type\":\"stock_engine\",\"health\":95.97548217773438},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95457047486383},\"tires\":{\"type\":\"stock_tires\",\"health\":99.89474161909024},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96154423850894},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.89469464209675}}', 1001.42),
(0, 'LOCATION', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":98.45334130964382},\"oil\":{\"type\":\"stock_oil\",\"health\":86.22746914314206},\"tires\":{\"type\":\"stock_tires\",\"health\":96.77638959825674},\"engine\":{\"type\":\"stock_engine\",\"health\":86.57221069335938},\"brakes\":{\"type\":\"stock_brakes\",\"health\":95.87060223188938},\"transmition\":{\"type\":\"stock_transmition\",\"health\":98.14764901246982}}', 43646.1),
(0, '45MZC261', '{\"engine\":{\"health\":99.94485473632813,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99493814290273,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.96644569301248,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.98603248235551,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99567043168055,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.98792212374852,\"type\":\"stock_brakes\"}}', 103.498),
(0, '80CRD394', '{\"engine\":{\"health\":65.99932861328125,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.89234682206376,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.22717582229403,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.77777662200306,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.90941592099229,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.75464593897192,\"type\":\"stock_brakes\"}}', 2423.58),
(0, '09YVN136', '{\"engine\":{\"health\":80.77949829101563,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.89247191229519,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.17834019754257,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.84089261796004,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.91077707703059,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.76460146149603,\"type\":\"stock_brakes\"}}', 2610.75),
(0, '42SRT055', '{\"suspension\":{\"health\":99.90875639585242,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.89093824592526,\"type\":\"stock_transmition\"},\"engine\":{\"health\":16.57067260742187,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.80118086310707,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.19624568421708,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.75548361517756,\"type\":\"stock_brakes\"}}', 2533.56),
(0, '29HDU208', '{\"engine\":{\"health\":65.63202514648438,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.93828492414819,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.94875888460543,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.90707096235377,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.52968759763798,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.86464673003764,\"type\":\"stock_brakes\"}}', 1464.72),
(0, '62HSC964', '{\"engine\":{\"health\":70.384521484375,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.91457685118199,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.35942737677553,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.8582123010582,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.92881149232555,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.81062571594284,\"type\":\"stock_brakes\"}}', 2063.55),
(0, '81YSB856', '{\"engine\":{\"health\":10.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.93341564189277,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.50111143432339,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.88895642653164,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.94450055712963,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.8523085939482,\"type\":\"stock_brakes\"}}', 1599.31),
(0, '28VUG386', '{\"brakes\":{\"health\":99.90930474091499,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9604563636551,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.9146621793385,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.71905803409733,\"type\":\"stock_oil\"},\"engine\":{\"health\":40.492333984375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.96665213873564,\"type\":\"stock_suspension\"}}', 879.464),
(0, '49IQQ476', '{\"brakes\":{\"health\":99.86424147315026,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.93783251852041,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.91020496434106,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.52322130954923,\"type\":\"stock_oil\"},\"engine\":{\"health\":77.31727294921875,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.94845948713446,\"type\":\"stock_suspension\"}}', 1510.66),
(0, '29LJA103', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.98018046832469},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99022464206186},\"engine\":{\"type\":\"stock_engine\",\"health\":99.95736694335938},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98374499952175},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99670759273332},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99629138618666}}', 56.9752),
(0, '46WED963', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99315084205004},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99402769339214},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97539483017526},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9591124446977},\"engine\":{\"type\":\"stock_engine\",\"health\":98.15084838867188},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98277970251063}}', 124.696),
(0, '88YER624', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999808527095},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9999984334035},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999827674385},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99998449069475},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99993896484375},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999597906903}}', 0.0432772),
(0, '02CDK122', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9925312386978},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98044542091388},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99778971573123},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99543384838683},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99091796875},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99772608867518}}', 9.04667),
(0, '87KBO059', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99674206735046},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99383666870878},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99893461460454},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9945001751701},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98826293945312},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99882249169159}}', 15.793),
(0, '25AKR637', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99416269415126},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9911914932739},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99799553480011},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98683358722457},\"engine\":{\"type\":\"stock_engine\",\"health\":99.97140502929688},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99771498185946}}', 40.1598),
(0, '63ESU898', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97744273540613},\"tires\":{\"type\":\"stock_tires\",\"health\":99.95468729405889},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99273638826414},\"oil\":{\"type\":\"stock_oil\",\"health\":99.96583233340547},\"engine\":{\"type\":\"stock_engine\",\"health\":99.95264282226563},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99205415576951}}', 97.6793),
(0, '02ZLN386', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99982576887368},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99951886979402},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99994950639423},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99993048242178},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99990844726563},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99994891199096}}', 0.0530884),
(0, '87EXY608', '{\"suspension\":{\"health\":99.99894212463066,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.98945570039338,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99840087890625,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.9963010493703,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99894126435402,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99901307095786,\"type\":\"stock_oil\"}}', 0.00297606),
(0, '28JGG695', '{\"oil\":{\"health\":99.999425930365,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99979874273251,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.9983759994407,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99933634869955,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.998876953125,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99978904055736,\"type\":\"stock_transmition\"}}', 1.32411),
(0, '46GHI291', '{\"oil\":{\"health\":99.99435084411117,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99907027202032,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99546164979104,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99724501584805,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.98777465820312,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99895144731144,\"type\":\"stock_transmition\"}}', 16.6416),
(0, '21QWG269', '{\"engine\":{\"health\":92.34598999023437,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.76584492654439,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.91245714274874,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.89525596967177,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.22456391885561,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.81347840922182,\"type\":\"stock_tires\"}}', 2465.19),
(0, '44EPB333', '{\"transmition\":{\"health\":99.87853396197144,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.89890207627809,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.73170334706181,\"type\":\"stock_brakes\"},\"engine\":{\"health\":88.57411499023438,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.08410323922655,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.80476374076688,\"type\":\"stock_tires\"}}', 2869.94),
(0, '03EIY873', '{\"tires\":{\"health\":99.97152993763193,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.96054246998917,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.8649422139326,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.98211734253327,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.92600708007812,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.98512146865308,\"type\":\"stock_suspension\"}}', 424.694),
(0, '27MHC528', '{\"tires\":{\"health\":99.9271815878787,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.92252086236324,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.75987244468158,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.96621207980172,\"type\":\"stock_transmition\"},\"engine\":{\"health\":92.05052490234375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.97150799967898,\"type\":\"stock_suspension\"}}', 706.418),
(0, '62JUP049', '{\"transmition\":{\"health\":99.86255715668367,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.88461228273902,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.68877451901746,\"type\":\"stock_brakes\"},\"engine\":{\"health\":79.54144287109375,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.00291844923496,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.72943062589387,\"type\":\"stock_tires\"}}', 3106.74),
(0, '03TLD642', '{\"tires\":{\"health\":99.83102871414434,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.79656454246529,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.33655411115025,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.90954045583367,\"type\":\"stock_transmition\"},\"engine\":{\"health\":88.51604614257812,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.92423824116465,\"type\":\"stock_suspension\"}}', 2098.3),
(0, '07VRN263', '{\"tires\":{\"health\":99.93839130574414,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.9236686977814,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.74841226471146,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.965918057242,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.58311157226562,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.97149669327246,\"type\":\"stock_suspension\"}}', 800.775),
(0, '09MUY284', '{\"transmition\":{\"health\":99.99502255070925,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99576815600173,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.98832008823487,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.9439453125,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.96599432605362,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.98754305198392,\"type\":\"stock_tires\"}}', 105.877),
(0, '22MCG486', '{\"transmition\":{\"health\":99.85586565539914,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.88070452254412,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.68678907091454,\"type\":\"stock_brakes\"},\"engine\":{\"health\":51.85995483398437,\"type\":\"stock_engine\"},\"oil\":{\"health\":98.88665995091356,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.80184185460338,\"type\":\"stock_tires\"}}', 3499.81),
(0, '22ERN275', '{\"tires\":{\"health\":99.505711361716,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.26831526977606,\"type\":\"stock_brakes\"},\"oil\":{\"health\":97.4456626808039,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.66575199151582,\"type\":\"stock_transmition\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.7226589135249,\"type\":\"stock_suspension\"}}', 16403.6),
(0, '62TJN587', '{\"oil\":{\"type\":\"stock_oil\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100},\"tires\":{\"type\":\"stock_tires\",\"health\":100}}', 0),
(0, '23FBE396', '{\"suspension\":{\"health\":99.73230233551465,\"type\":\"stock_suspension\"},\"oil\":{\"health\":97.57527780366203,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.48255327236125,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.28952573116544,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.67838148864297,\"type\":\"stock_transmition\"},\"engine\":{\"health\":94.20734252929688,\"type\":\"stock_engine\"}}', 7731.48),
(0, '08TTJ529', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.37847900390625},\"oil\":{\"type\":\"stock_oil\",\"health\":99.71878026096666},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96218078092106},\"tires\":{\"type\":\"stock_tires\",\"health\":99.93421895100977},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.91569598580849},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96842276177623}}', 879.606),
(0, '28GLU354', '{\"transmition\":{\"health\":99.85215501689862,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.8644596098736,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.57728792505111,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.1373950473658,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.37967763342522,\"type\":\"stock_oil\"},\"engine\":{\"health\":77.2889404296875,\"type\":\"stock_engine\"}}', 1761.82),
(0, '42IFC489', '{\"oil\":{\"health\":99.99986250489401,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99978637695313,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99948623596076,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99853573504676,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99985292538809,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99985305488197,\"type\":\"stock_suspension\"}}', 0.000677411),
(0, '06AXK284', '{\"oil\":{\"health\":99.34488276960671,\"type\":\"stock_oil\"},\"engine\":{\"health\":98.87276611328125,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.81163628386496,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.87108677874699,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.91408227971576,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.92867296865845,\"type\":\"stock_suspension\"}}', 2059.51),
(0, '69JMP078', '{\"oil\":{\"health\":99.99874015769176,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.9980712890625,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99918454299999,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99837855965112,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99971144861554,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99973670482928,\"type\":\"stock_suspension\"}}', 3.58941),
(0, '41EGN080', '{\"oil\":{\"health\":99.47439822134756,\"type\":\"stock_oil\"},\"engine\":{\"health\":70.53410034179687,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.84935178669338,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.89801630853668,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.93119767097804,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.94290675387039,\"type\":\"stock_suspension\"}}', 1659.91),
(0, '86MYW032', '{\"oil\":{\"health\":98.09013085109658,\"type\":\"stock_oil\"},\"engine\":{\"health\":91.99241333007812,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.46311014380491,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.66129881857909,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.75285624440348,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.7954683597792,\"type\":\"stock_suspension\"}}', 6055.23),
(0, '85OFY656', '{\"oil\":{\"health\":100,\"type\":\"stock_oil\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"}}', 0),
(0, '02MZC287', '{\"oil\":{\"health\":99.30132390730945,\"type\":\"stock_oil\"},\"engine\":{\"health\":98.91629028320313,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.8037295093216,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.87650935778633,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.90962607472975,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.92521545755675,\"type\":\"stock_suspension\"}}', 2220.89),
(0, '64MBW655', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98903537451551},\"oil\":{\"type\":\"stock_oil\",\"health\":99.92130983099188},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97733711394214},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9750058675413},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99077330396182},\"engine\":{\"type\":\"stock_engine\",\"health\":81.17711181640625}}', 247.833),
(0, '61MEB479', '{\"oil\":{\"health\":99.60776287766527,\"type\":\"stock_oil\"},\"engine\":{\"health\":85.86326293945312,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.8859849817369,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.91906909747351,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.94822221833845,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.9569504284101,\"type\":\"stock_suspension\"}}', 1237.67),
(0, '81ONW987', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.90175062684928},\"oil\":{\"type\":\"stock_oil\",\"health\":99.24448739940435},\"tires\":{\"type\":\"stock_tires\",\"health\":99.86063158784192},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.78583878156464},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.91859628757556},\"engine\":{\"type\":\"stock_engine\",\"health\":88.84302368164063}}', 2394.52),
(0, '49QPL676', '{\"oil\":{\"health\":99.30215439919465,\"type\":\"stock_oil\"},\"engine\":{\"health\":98.45396118164062,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.80361078516853,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.87558929845179,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.90963771020742,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.92520638545968,\"type\":\"stock_suspension\"}}', 2215.92),
(0, '65KOH222', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.93882800352158},\"oil\":{\"type\":\"stock_oil\",\"health\":99.53445511392285},\"tires\":{\"type\":\"stock_tires\",\"health\":99.90709389801514},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9491939148663},\"engine\":{\"type\":\"stock_engine\",\"health\":99.87557373046875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.86571552967964}}', 1477.97),
(0, '63RGD987', '{\"oil\":{\"health\":99.39761839698875,\"type\":\"stock_oil\"},\"engine\":{\"health\":98.66531372070313,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.83085764829953,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.89376365951959,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.92210282779827,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.93554409416261,\"type\":\"stock_suspension\"}}', 1917.41),
(0, '47SKK708', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95671532715528},\"oil\":{\"type\":\"stock_oil\",\"health\":99.67300124917385},\"tires\":{\"type\":\"stock_tires\",\"health\":99.93120704404183},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9045119177341},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96398912880358},\"engine\":{\"type\":\"stock_engine\",\"health\":78.3508056640625}}', 1040.17),
(0, '03PPN889', '{\"oil\":{\"health\":99.53108016932898,\"type\":\"stock_oil\"},\"engine\":{\"health\":92.193310546875,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.86453406139074,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.90579007408894,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.93832794705495,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.94876771935332,\"type\":\"stock_suspension\"}}', 1487.3),
(0, '60MTS362', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.91782320170455},\"oil\":{\"type\":\"stock_oil\",\"health\":99.37351621208612},\"tires\":{\"type\":\"stock_tires\",\"health\":99.8765618075976},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.81981655835856},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9317758448725},\"engine\":{\"type\":\"stock_engine\",\"health\":70.24066162109375}}', 1997.9),
(0, '61GQR910', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99160351671984},\"oil\":{\"type\":\"stock_oil\",\"health\":99.93659336151508},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98662311332952},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98147199253954},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99301386529383},\"engine\":{\"type\":\"stock_engine\",\"health\":99.89796142578125}}', 199.618),
(0, '85JOF787', '{\"oil\":{\"health\":99.86127375573428,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.769677734375,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.9600086645185,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.97238693378225,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.98177799102638,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.98486704244545,\"type\":\"stock_suspension\"}}', 440.189),
(0, '24COQ002', '{\"oil\":{\"health\":99.17541854055094,\"type\":\"stock_oil\"},\"engine\":{\"health\":61.94284057617187,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.76651586570311,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.8486653938736,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.89283825358386,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.91122552347481,\"type\":\"stock_suspension\"}}', 2628.14),
(0, '85YTM554', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.909957408447},\"oil\":{\"type\":\"stock_oil\",\"health\":99.31401609539066},\"tires\":{\"type\":\"stock_tires\",\"health\":99.86415807157133},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.80247923527259},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92523381178592},\"engine\":{\"type\":\"stock_engine\",\"health\":99.7357421875}}', 2190.64),
(0, '01RAL062', '{\"oil\":{\"health\":99.54718168963898,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.22380981445312,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.85843002599543,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.87642897295129,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.93751891733221,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.9475336985433,\"type\":\"stock_suspension\"}}', 1428.5),
(0, '67PSZ448', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.85108110087742},\"oil\":{\"type\":\"stock_oil\",\"health\":98.8487274685066},\"tires\":{\"type\":\"stock_tires\",\"health\":99.79649632166043},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.67658159351507},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.87676911911703},\"engine\":{\"type\":\"stock_engine\",\"health\":67.80258178710938}}', 3666.68),
(0, '82GDK955', '{\"oil\":{\"health\":99.96235433066326,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.91686401367187,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.9884235212075,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99031206966329,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.9948581033871,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.995691890316,\"type\":\"stock_suspension\"}}', 119.295),
(0, '65UNW087', '{\"oil\":{\"health\":99.17614894779169,\"type\":\"stock_oil\"},\"engine\":{\"health\":91.266162109375,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.77324961513996,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.86858004232792,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.89470921224187,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.91312055929304,\"type\":\"stock_suspension\"}}', 2626.7),
(0, '09FBO567', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.85298543630634},\"oil\":{\"type\":\"stock_oil\",\"health\":98.87316668358908},\"tires\":{\"type\":\"stock_tires\",\"health\":99.78681740510956},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.67882795662017},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.87809958300039},\"engine\":{\"type\":\"stock_engine\",\"health\":97.50374755859375}}', 3614.78),
(0, '20MYS849', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.57205853658077},\"oil\":{\"type\":\"stock_oil\",\"health\":96.67741952073712},\"tires\":{\"type\":\"stock_tires\",\"health\":99.43317450134993},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.0733724373476},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.6462361416865},\"engine\":{\"type\":\"stock_engine\",\"health\":14.23170318603515}}', 10535.5),
(0, '43YBU904', '{\"oil\":{\"health\":98.26667216420214,\"type\":\"stock_oil\"},\"engine\":{\"health\":96.15687866210938,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.52087931316687,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.7172794403555,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.77791655648812,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.81664011044373,\"type\":\"stock_suspension\"}}', 5495.01),
(0, '29RJE594', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9785350257782},\"oil\":{\"type\":\"stock_oil\",\"health\":99.83849629889004},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96505658295253},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.95251971717299},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98212556174564},\"engine\":{\"type\":\"stock_engine\",\"health\":92.45022583007813}}', 515.685),
(0, '46GZF179', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.54998635748685},\"oil\":{\"type\":\"stock_oil\",\"health\":96.49115441365614},\"tires\":{\"type\":\"stock_tires\",\"health\":99.4227640059231},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.02847539444535},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.62836598647897},\"engine\":{\"type\":\"stock_engine\",\"health\":55.46728515625}}', 11220.8),
(0, '86EEV553', '{\"oil\":{\"health\":97.66493699612208,\"type\":\"stock_oil\"},\"engine\":{\"health\":87.96298217773438,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.34959997717992,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.60413064207339,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.75160815267947,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.69947209487005,\"type\":\"stock_transmition\"}}', 7456.3),
(0, '23DFA359', '{\"oil\":{\"health\":99.71059552543784,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.993701171875,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.91675634130998,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.94295392594731,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.96203625824033,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.96848163972966,\"type\":\"stock_suspension\"}}', 919.007),
(0, '45IDL412', '{\"oil\":{\"health\":93.88009792057632,\"type\":\"stock_oil\"},\"engine\":{\"health\":27.92326049804687,\"type\":\"stock_engine\"},\"brakes\":{\"health\":98.29696300309425,\"type\":\"stock_brakes\"},\"tires\":{\"health\":98.96726059469958,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.34943594373469,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.21278422944359,\"type\":\"stock_transmition\"}}', 19582.3),
(0, '62DEV437', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.31522814034808},\"oil\":{\"type\":\"stock_oil\",\"health\":94.68253583402869},\"tires\":{\"type\":\"stock_tires\",\"health\":99.09403728957182},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.51741478138992},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.43394454166847},\"engine\":{\"type\":\"stock_engine\",\"health\":92.0709716796875}}', 16932.3),
(0, '49URG265', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.7381510060928},\"oil\":{\"type\":\"stock_oil\",\"health\":97.97206287083839},\"tires\":{\"type\":\"stock_tires\",\"health\":99.64674403528042},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.4320260558438},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.78341042615962},\"engine\":{\"type\":\"stock_engine\",\"health\":81.77769775390625}}', 6446.65),
(0, '86SHA257', '{\"oil\":{\"health\":99.9825146637733,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.9622802734375,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99133485449515,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.98553496725632,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99671698721252,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99708392218025,\"type\":\"stock_suspension\"}}', 51.8995),
(0, '84NZS077', '{\"oil\":{\"health\":99.99792325264397,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.9957763671875,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99740873518748,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99354786148767,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.9991850131159,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99921893380169,\"type\":\"stock_suspension\"}}', 4.73234),
(0, '00DTT884', '{\"oil\":{\"health\":99.99773307985164,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99519653320313,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99828215769591,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99632315760666,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99941261705219,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99945651289802,\"type\":\"stock_suspension\"}}', 6.159),
(0, '43CNM794', '{\"oil\":{\"health\":99.99647526564732,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99257202148438,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99682802037363,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99276475668659,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99895038241081,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99901553590884,\"type\":\"stock_suspension\"}}', 9.23221),
(0, '00CNF200', '{\"oil\":{\"health\":98.15423047511908,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.98970947265625,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.47981794863917,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.66869188663859,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.76079410035365,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.80196794417148,\"type\":\"stock_suspension\"}}', 5839.22),
(0, '66LEJ965', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.92621354220708},\"oil\":{\"type\":\"stock_oil\",\"health\":99.42614246669393},\"tires\":{\"type\":\"stock_tires\",\"health\":99.90349548648465},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.84041817686625},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.93902792910846},\"engine\":{\"type\":\"stock_engine\",\"health\":98.7291748046875}}', 1837.94),
(0, '07UMT674', '{\"oil\":{\"health\":99.7166946899246,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.56131591796876,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.91181468114459,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.92386315441238,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.96101429592277,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.9672824316906,\"type\":\"stock_suspension\"}}', 894.321),
(0, '40WPL705', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.92970311067934},\"oil\":{\"type\":\"stock_oil\",\"health\":99.45580180981462},\"tires\":{\"type\":\"stock_tires\",\"health\":99.90487444112064},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.84747524650509},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94184783264383},\"engine\":{\"type\":\"stock_engine\",\"health\":90.10787353515625}}', 1743.19),
(0, '69RBF382', '{\"oil\":{\"health\":99.99986108070458,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99976806640625,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.999576544053,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99881038461935,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99987742366466,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99987814590188,\"type\":\"stock_suspension\"}}', 0.121538),
(0, '67OOO439', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95882665316252},\"oil\":{\"type\":\"stock_oil\",\"health\":99.71063313403471},\"tires\":{\"type\":\"stock_tires\",\"health\":99.90715941631001},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96519813937},\"engine\":{\"type\":\"stock_engine\",\"health\":99.36246337890626},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.90495372986847}}', 909.706),
(0, '06MPN168', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99910865143926},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99583728908881},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99533380947335},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99753371004999},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99919351247982},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99111938476563}}', 12.1059),
(0, '49WIT017', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999944984237},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999932758513},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999858792876},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999455343949},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99999389648437},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999939482662}}', 0.00624037),
(0, '24IIL837', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99984347856895},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99843522735546},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99985878126243},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99976806640625},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99945224294013},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99984348739344}}', 0.00187708),
(0, '29HEC310', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.17436637506948},\"tires\":{\"type\":\"stock_tires\",\"health\":98.51981804801304},\"oil\":{\"type\":\"stock_oil\",\"health\":93.89557688695041},\"engine\":{\"type\":\"stock_engine\",\"health\":98.68428955078125},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.15276758926001},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.3097540733172}}', 19140.2),
(0, '65WQR950', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99444740169324},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99390631665385},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98283846309333},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97308871741766},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96614447277233}}', 7115.71),
(0, '88DCV250', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.72920426787042},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.67484986573268},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.28050342652468},\"oil\":{\"type\":\"stock_oil\",\"health\":97.55493055450437},\"engine\":{\"type\":\"stock_engine\",\"health\":99.39859008789063},\"tires\":{\"type\":\"stock_tires\",\"health\":99.46893648431913}}', 7734.25),
(0, '01PLH335', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9793537450697},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97506534920778},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.94574937036394},\"oil\":{\"type\":\"stock_oil\",\"health\":99.8077383381555},\"engine\":{\"type\":\"stock_engine\",\"health\":99.68410034179688},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96528770496637}}', 606.471),
(0, '02OTF957', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":98.59914272614475},\"transmition\":{\"type\":\"stock_transmition\",\"health\":98.3094255631577},\"brakes\":{\"type\":\"stock_brakes\",\"health\":96.31381162606327},\"oil\":{\"type\":\"stock_oil\",\"health\":87.00568335253212},\"engine\":{\"type\":\"stock_engine\",\"health\":13.36302642822265},\"tires\":{\"type\":\"stock_tires\",\"health\":97.59459963912043}}', 41135.9),
(0, '87YIG029', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.01533206037661},\"tires\":{\"type\":\"stock_tires\",\"health\":98.56656433371214},\"oil\":{\"type\":\"stock_oil\",\"health\":92.45716645263362},\"engine\":{\"type\":\"stock_engine\",\"health\":10.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":97.84800740054526},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.18342883819727}}', 23871),
(0, '64RCF569', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.55668298475855},\"tires\":{\"type\":\"stock_tires\",\"health\":99.39933486672118},\"oil\":{\"type\":\"stock_oil\",\"health\":96.5687030227939},\"engine\":{\"type\":\"stock_engine\",\"health\":79.1807373046875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.03800660344592},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.6332565116144}}', 10876.2),
(0, '86LVM752', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.54184324778413},\"tires\":{\"type\":\"stock_tires\",\"health\":99.15141837339012},\"oil\":{\"type\":\"stock_oil\",\"health\":96.63408766500781},\"engine\":{\"type\":\"stock_engine\",\"health\":82.00811157226562},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.97075688964633},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.61642838056199}}', 10654.9),
(0, '27AKK709', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.86997762168481},\"tires\":{\"type\":\"stock_tires\",\"health\":99.77111188236786},\"oil\":{\"type\":\"stock_oil\",\"health\":99.03532966262805},\"engine\":{\"type\":\"stock_engine\",\"health\":89.78773803710938},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.70974254751839},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.89138292968716}}', 3080.29),
(0, '46OQE340', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99880860529629},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99409953686083},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9941698234409},\"engine\":{\"type\":\"stock_engine\",\"health\":98.852099609375},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99675526990592},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99892875482472}}', 17.2745),
(0, '23YYN871', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99875913696282},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99472867422607},\"oil\":{\"type\":\"stock_oil\",\"health\":99.993236125123},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98543701171875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99675502623102},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99890174045129}}', 20.414),
(0, '00QCA844', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.89832835281179},\"tires\":{\"type\":\"stock_tires\",\"health\":99.81119247883855},\"oil\":{\"type\":\"stock_oil\",\"health\":99.25344667740794},\"engine\":{\"type\":\"stock_engine\",\"health\":98.350048828125},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.77151984264826},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.91486999018864}}', 2368.08),
(0, '43BCN707', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.70683057670527},\"tires\":{\"type\":\"stock_tires\",\"health\":99.54741787330355},\"oil\":{\"type\":\"stock_oil\",\"health\":97.77465222618233},\"engine\":{\"type\":\"stock_engine\",\"health\":99.06729736328126},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.35530888097135},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.75636328612059}}', 7117.59),
(0, '87UDF744', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98740602229684},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98541074120566},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.96430125862539},\"oil\":{\"type\":\"stock_oil\",\"health\":99.90785653587168},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99720458984375},\"tires\":{\"type\":\"stock_tires\",\"health\":99.95397123067866}}', 287.236),
(0, '88IDH210', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99762863918727},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99234967747145},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98515636248759},\"engine\":{\"type\":\"stock_engine\",\"health\":99.21295166015625},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99417151186302},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9979495839546}}', 7.26816),
(0, '23JGR873', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99096747549628},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98329231710656},\"oil\":{\"type\":\"stock_oil\",\"health\":99.933623865591},\"engine\":{\"type\":\"stock_engine\",\"health\":79.97642822265625},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97971194302818},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99243835585874}}', 0.659832),
(0, '86MHZ586', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99608046264669},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98839309382783},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97464417847026},\"engine\":{\"type\":\"stock_engine\",\"health\":99.944482421875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99052599885745},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99663168077584}}', 78.598),
(0, '84HPF946', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92141510322168},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.90615817877864},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.78903194394361},\"oil\":{\"type\":\"stock_oil\",\"health\":99.31136815295135},\"engine\":{\"type\":\"stock_engine\",\"health\":98.52139892578126},\"tires\":{\"type\":\"stock_tires\",\"health\":99.82519085617752}}', 2222.42),
(0, '40HJR450', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.89364211139217},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.87226041311145},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.7175505226539},\"oil\":{\"type\":\"stock_oil\",\"health\":99.0383191198908},\"engine\":{\"type\":\"stock_engine\",\"health\":99.89608764648438},\"tires\":{\"type\":\"stock_tires\",\"health\":99.79275813006282}}', 3095.91);
INSERT INTO `vehicle_parts` (`id`, `plate`, `parts`, `mileage`) VALUES
(0, '05CFD722', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.85192192909871},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8220093945245},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.6073593970557},\"oil\":{\"type\":\"stock_oil\",\"health\":98.65527208594075},\"engine\":{\"type\":\"stock_engine\",\"health\":98.80487670898438},\"tires\":{\"type\":\"stock_tires\",\"health\":99.71721630067448}}', 4332.52),
(0, '65JST335', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96561129407839},\"tires\":{\"type\":\"stock_tires\",\"health\":99.93999922224656},\"oil\":{\"type\":\"stock_oil\",\"health\":99.74443684307383},\"engine\":{\"type\":\"stock_engine\",\"health\":89.14464721679687},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.92331434180716},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97128334765417}}', 816.177),
(0, '65QTT158', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9340906583297},\"tires\":{\"type\":\"stock_tires\",\"health\":99.87931026729854},\"oil\":{\"type\":\"stock_oil\",\"health\":99.51469186450196},\"engine\":{\"type\":\"stock_engine\",\"health\":99.97058715820313},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.85214864015716},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94484797469313}}', 1547.35),
(0, '68CAD902', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9923802975862},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96807256076565},\"oil\":{\"type\":\"stock_oil\",\"health\":99.95811578306996},\"engine\":{\"type\":\"stock_engine\",\"health\":99.93193969726562},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98014174692175},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9932648047771}}', 126.753),
(0, '65YVK116', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94712521842809},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.93628325605703},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.86047450645718},\"oil\":{\"type\":\"stock_oil\",\"health\":99.5133132205572},\"engine\":{\"type\":\"stock_engine\",\"health\":80.98023071289063},\"tires\":{\"type\":\"stock_tires\",\"health\":99.905472777243}}', 1571.13),
(0, '89GHN217', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.75471827597397},\"tires\":{\"type\":\"stock_tires\",\"health\":99.61909144168826},\"oil\":{\"type\":\"stock_oil\",\"health\":98.1399340846423},\"engine\":{\"type\":\"stock_engine\",\"health\":98.38804321289062},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.46026914775014},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.79611505283563}}', 5938.9),
(0, '64LZD498', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.80669397637506},\"tires\":{\"type\":\"stock_tires\",\"health\":99.69638449046832},\"oil\":{\"type\":\"stock_oil\",\"health\":98.53679358617367},\"engine\":{\"type\":\"stock_engine\",\"health\":95.03987426757813},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.57411272142493},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.8392503145714}}', 4705.95),
(0, '65IRE259', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.83709279251335},\"tires\":{\"type\":\"stock_tires\",\"health\":99.78075237774542},\"oil\":{\"type\":\"stock_oil\",\"health\":98.73791801229675},\"engine\":{\"type\":\"stock_engine\",\"health\":99.95203857421875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.64672084343046},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.86526111324483}}', 4079.1),
(0, '64GYV751', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.84175078398468},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.80956601216704},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.58130378558255},\"oil\":{\"type\":\"stock_oil\",\"health\":98.55409244696034},\"engine\":{\"type\":\"stock_engine\",\"health\":96.18331298828125},\"tires\":{\"type\":\"stock_tires\",\"health\":99.70650795115626}}', 4666.84),
(0, '27POM298', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.89323337585022},\"tires\":{\"type\":\"stock_tires\",\"health\":99.83079259223463},\"oil\":{\"type\":\"stock_oil\",\"health\":99.19304151047706},\"engine\":{\"type\":\"stock_engine\",\"health\":93.64600219726563},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.76454125143464},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.91118460129944}}', 2603.1),
(0, '64JBI698', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.74077119237842},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.68731363007436},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.31722093500348},\"oil\":{\"type\":\"stock_oil\",\"health\":97.60166279981803},\"engine\":{\"type\":\"stock_engine\",\"health\":80.29207153320313},\"tires\":{\"type\":\"stock_tires\",\"health\":99.54868729407244}}', 7820.87),
(0, '68JGP119', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99806314526646},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99136978502722},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98976056777166},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99351806640625},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99487305956547},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99827769736157}}', 31.0966),
(0, '21BCS509', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99969213541401},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99965327180336},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9990857011137},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99814894564203},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99697265625},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99847784174588}}', 5.64188),
(0, '23ZLL529', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.93456245189913},\"tires\":{\"type\":\"stock_tires\",\"health\":99.8668658066312},\"oil\":{\"type\":\"stock_oil\",\"health\":99.52869551759527},\"engine\":{\"type\":\"stock_engine\",\"health\":92.54401245117188},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.8511595489802},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94497686324039}}', 1498.28),
(0, '03DMV263', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.91600314150014},\"tires\":{\"type\":\"stock_tires\",\"health\":99.8431457619558},\"oil\":{\"type\":\"stock_oil\",\"health\":99.38391675064122},\"engine\":{\"type\":\"stock_engine\",\"health\":98.43668823242187},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.81110551016829},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92965177980057}}', 1985.03),
(0, '08RIK346', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94492839873135},\"tires\":{\"type\":\"stock_tires\",\"health\":99.90339587994782},\"oil\":{\"type\":\"stock_oil\",\"health\":99.59113823721262},\"engine\":{\"type\":\"stock_engine\",\"health\":93.93589477539062},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.87711276365698},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95400156341928}}', 1318.23),
(0, '47CAI544', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96817515987903},\"tires\":{\"type\":\"stock_tires\",\"health\":99.94307122625162},\"oil\":{\"type\":\"stock_oil\",\"health\":99.76459925732869},\"engine\":{\"type\":\"stock_engine\",\"health\":99.47996826171875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.92881607918615},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97339633125687}}', 754.566),
(0, '03PFX172', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98320634741622},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97998088278963},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.95476916738869},\"oil\":{\"type\":\"stock_oil\",\"health\":99.85425439529542},\"engine\":{\"type\":\"stock_engine\",\"health\":99.77657470703125},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96124333245932}}', 466.207),
(0, '24PKX577', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99877558044882},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99584934328378},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99249434335708},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98360595703125},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9969596913857},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99893728951567}}', 23.6539),
(0, '65HXG967', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99978442993916},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99976174731526},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99934077180763},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99888734067689},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9976318359375},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99875273847937}}', 3.16335),
(0, '01PIU930', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98668558420833},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97667589221357},\"oil\":{\"type\":\"stock_oil\",\"health\":99.90112643667396},\"engine\":{\"type\":\"stock_engine\",\"health\":99.78147583007812},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.970294937057},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98887979100422}}', 317.27),
(0, '85BUI687', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9251599070157},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.93766575879576},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.83435473326144},\"oil\":{\"type\":\"stock_oil\",\"health\":99.43741218582535},\"engine\":{\"type\":\"stock_engine\",\"health\":98.91636352539062},\"tires\":{\"type\":\"stock_tires\",\"health\":99.87751695174815}}', 1836.05),
(0, '66BQH982', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9971868608048},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99025798561979},\"oil\":{\"type\":\"stock_oil\",\"health\":99.982918337525},\"engine\":{\"type\":\"stock_engine\",\"health\":99.96272583007813},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99298314782806},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99755428093613}}', 53.1686),
(0, '02RNM419', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97628634257146},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96596192204946},\"oil\":{\"type\":\"stock_oil\",\"health\":99.81796439253302},\"engine\":{\"type\":\"stock_engine\",\"health\":99.596826171875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9482481215132},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98034425458616}}', 583.002),
(0, '23UCS189', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99743216657174},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99119763653798},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98433653344114},\"engine\":{\"type\":\"stock_engine\",\"health\":99.976025390625},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9936088862043},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99776934880592}}', 52.6374),
(0, '22UMI685', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95513738827843},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94612357146613},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.88083888958723},\"oil\":{\"type\":\"stock_oil\",\"health\":99.5945640685467},\"engine\":{\"type\":\"stock_engine\",\"health\":99.147900390625},\"tires\":{\"type\":\"stock_tires\",\"health\":99.91237724612343}}', 1305.24),
(0, '83BHR303', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9646346758971},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95806508194043},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.90381366026014},\"oil\":{\"type\":\"stock_oil\",\"health\":99.7021026530603},\"engine\":{\"type\":\"stock_engine\",\"health\":99.7668701171875},\"tires\":{\"type\":\"stock_tires\",\"health\":99.90945899694128}}', 957.826),
(0, '28ISJ952', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9854561318647},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9682452715019},\"oil\":{\"type\":\"stock_oil\",\"health\":99.89696277575934},\"engine\":{\"type\":\"stock_engine\",\"health\":99.78294067382812},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.96658630042708},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9877275395142}}', 328.327),
(0, '22HAI060', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.994686433298},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98716553756116},\"oil\":{\"type\":\"stock_oil\",\"health\":99.96333112260726},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98299560546875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9876027018632},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99549165217079}}', 116.092),
(0, '60JGE209', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.93635878895806},\"tires\":{\"type\":\"stock_tires\",\"health\":99.88763505573515},\"oil\":{\"type\":\"stock_oil\",\"health\":99.5280921851947},\"engine\":{\"type\":\"stock_engine\",\"health\":96.18214721679688},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.85787840230069},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94682926180858}}', 1531.99),
(0, '60CEX738', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95673933532632},\"tires\":{\"type\":\"stock_tires\",\"health\":99.92736483157705},\"oil\":{\"type\":\"stock_oil\",\"health\":99.67625280356907},\"engine\":{\"type\":\"stock_engine\",\"health\":95.88094482421875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.90396790107573},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96393157265529}}', 1042.6),
(0, '69EYA332', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.882631156739},\"tires\":{\"type\":\"stock_tires\",\"health\":99.80650239458969},\"oil\":{\"type\":\"stock_oil\",\"health\":99.11883244152223},\"engine\":{\"type\":\"stock_engine\",\"health\":80.39815063476563},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.74000763738659},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.90221538905068}}', 2884.49),
(0, '28WJB129', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99988385290645},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99906004785578},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99972020000125},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9994384765625},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99962756498677},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99988827885635}}', 0.643674),
(0, '28HFG500', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99913732038795},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99770720163078},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99421207364506},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98768310546875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9979550825504},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99926387378956}}', 18.0438),
(0, '29SOT859', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99877132455939},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99716732476949},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99141404154718},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98107299804687},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99715410967728},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99896021725022}}', 27.5072),
(0, '09NBY773', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99626184892765},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99163370475691},\"oil\":{\"type\":\"stock_oil\",\"health\":99.973678570468},\"engine\":{\"type\":\"stock_engine\",\"health\":99.94202880859375},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9913803505516},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9968415735127}}', 84.842),
(0, '23YBM794', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98365274126292},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96577596332166},\"oil\":{\"type\":\"stock_oil\",\"health\":99.8830248775779},\"engine\":{\"type\":\"stock_engine\",\"health\":99.75289306640625},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.96266898683456},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98623512988816}}', 374.53),
(0, '05BQU349', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97244811842633},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96672648615756},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.92759927002118},\"oil\":{\"type\":\"stock_oil\",\"health\":99.74347719969745},\"engine\":{\"type\":\"stock_engine\",\"health\":91.137841796875},\"tires\":{\"type\":\"stock_tires\",\"health\":99.95363255662875}}', 842.005),
(0, '47QHD928', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99795791526046},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99300443561266},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9875399217937},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9826904296875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99491813156662},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9982261526831}}', 38.7457),
(0, '84UBK165', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99882074326706},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99861331520542},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99674379929339},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99053783244517},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98543701171875},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9965149265378}}', 31.2517),
(0, '65YSH488', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99874315939583},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99647683536787},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99171216893426},\"engine\":{\"type\":\"stock_engine\",\"health\":65.79791870117188},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99699263348687},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99892388349991}}', 25.7994),
(0, '40OYD878', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99879281296815},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99861090646064},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99653885272018},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99154631811843},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98155517578125},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99521348530652}}', 27.216),
(0, '88NQO777', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999981417635},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999977288222},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999952305265},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999816034594},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99999389648437},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999979559401}}', 0.00677321),
(0, '23GMG571', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99935455946775},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99924470669736},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99820233977296},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99497006631874},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98892211914063},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9979451981333}}', 16.4041),
(0, '46KUO394', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999962318283},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999953944567},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999903283595},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999626951005},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99999389648437},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999958550112}}', 0.0150402),
(0, '01BSJ709', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99970939253605},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99966513113165},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99916877177484},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99794586640343},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99554443359375},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99886659460782}}', 6.63386),
(0, '82ZRI478', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99988205160243},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99895010151706},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99979131726117},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99960327148438},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99960711683822},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99988464072315}}', 0.405967),
(0, '05URK258', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.984011371802},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97035348057092},\"oil\":{\"type\":\"stock_oil\",\"health\":99.88256338952655},\"engine\":{\"type\":\"stock_engine\",\"health\":99.74070434570312},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.96407668785325},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98661356486}}', 378.912),
(0, '08QGU994', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94881965025903},\"tires\":{\"type\":\"stock_tires\",\"health\":99.90957652131459},\"oil\":{\"type\":\"stock_oil\",\"health\":99.62053810997998},\"engine\":{\"type\":\"stock_engine\",\"health\":99.18822631835937},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.88569647109529},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9572388314525}}', 1227.27),
(0, '83JVJ978', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98091770674299},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97698682318806},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.94972168453073},\"oil\":{\"type\":\"stock_oil\",\"health\":99.82362515209637},\"engine\":{\"type\":\"stock_engine\",\"health\":99.61182250976563},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96660895380187}}', 579.974),
(0, '27HPB711', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8672552685919},\"tires\":{\"type\":\"stock_tires\",\"health\":99.78117888514416},\"oil\":{\"type\":\"stock_oil\",\"health\":99.00337494674291},\"engine\":{\"type\":\"stock_engine\",\"health\":98.3648193359375},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.70595131687588},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.88940564220278}}', 3262.25),
(0, '22ZWH405', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.86909878342408},\"tires\":{\"type\":\"stock_tires\",\"health\":99.81295919738382},\"oil\":{\"type\":\"stock_oil\",\"health\":98.99447529907902},\"engine\":{\"type\":\"stock_engine\",\"health\":98.94118041992188},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.7144567209295},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.89151579367653}}', 3300.75),
(0, '07KQZ014', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.82824293932829},\"tires\":{\"type\":\"stock_tires\",\"health\":99.7394405842347},\"oil\":{\"type\":\"stock_oil\",\"health\":98.6926185822255},\"engine\":{\"type\":\"stock_engine\",\"health\":98.199072265625},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.6230058554882},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.85735405203458}}', 4322.64),
(0, '81CEB485', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99994704326963},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99947310285059},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99995022629291},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99992065429687},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99981506223662},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99994709661935}}', 0.0074126),
(0, '49ARL568', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99629967555119},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99602482627332},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9882032313996},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9855383122435},\"engine\":{\"type\":\"stock_engine\",\"health\":99.96922607421875},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9740044690957}}', 41.351),
(0, '24DAE928', '{\"tires\":{\"health\":99.8149715397564,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.90830125518915,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.92292581039097,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.3383387436707,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.79166346822042,\"type\":\"stock_brakes\"},\"engine\":{\"health\":96.40958862304687,\"type\":\"stock_engine\"}}', 2069.4),
(0, '08WQV315', '{\"oil\":{\"health\":99.99976199827016,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99952392578125,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99990567046373,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.9992502125321,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.9996996170685,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99990953675534,\"type\":\"stock_suspension\"}}', 0.522215),
(0, '47UYK455', '{\"oil\":{\"health\":99.99997859234967,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99996948242188,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99997631618204,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99976327836889,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99991712456769,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99997631851068,\"type\":\"stock_suspension\"}}', 0.00077456),
(0, '83DIC444', '{\"oil\":{\"health\":99.9999504792963,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99984130859375,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99998342628514,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99987799891808,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99994872062368,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99998430013264,\"type\":\"stock_suspension\"}}', 0.377873),
(0, '05BWA047', '{\"oil\":{\"health\":99.99893669205952,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.67470703125,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99983317185867,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99948585466739,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.9995936609024,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99985623152064,\"type\":\"stock_suspension\"}}', 0),
(0, '42XWV188', '{\"oil\":{\"health\":99.9999889375087,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99998168945312,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99998815539125,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99988206242992,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99995862210284,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99998816555144,\"type\":\"stock_suspension\"}}', 0.00360268),
(0, '60RZM096', '{\"oil\":{\"health\":99.9999865988743,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.9999755859375,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99998741367499,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99987675733913,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99995635103005,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99998746603441,\"type\":\"stock_suspension\"}}', 0.00866962),
(0, '48DOV888', '{\"oil\":{\"health\":99.99998440093488,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.9999755859375,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99998299193335,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99983028814288,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99994052850666,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99998299930216,\"type\":\"stock_suspension\"}}', 0.00338817),
(0, '01YBO167', '{\"oil\":{\"health\":99.99999103677769,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99999389648437,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99999076400694,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99990846264444,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99996780057431,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.999990780442,\"type\":\"stock_suspension\"}}', 0.00363254),
(0, '82OSX564', '{\"oil\":{\"health\":99.99999385440596,\"type\":\"stock_oil\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99999358217176,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99993628878596,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99997760945783,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.9999935915038,\"type\":\"stock_suspension\"}}', 0.00249491),
(0, '41CLI176', '{\"oil\":{\"health\":99.99996188225993,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99994506835938,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.9999577664843,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99957780080718,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99985220361266,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99995776920088,\"type\":\"stock_suspension\"}}', 0.000371071),
(0, '05QNT736', '{\"oil\":{\"health\":99.99996897638136,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.999951171875,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99997706122352,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99978372978402,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99992173236682,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99997732331241,\"type\":\"stock_suspension\"}}', 0.0557786),
(0, '61BKR950', '{\"engine\":{\"health\":99.99996337890625,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99969621062337,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99997244358285,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99996960150492,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99996959662167,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.9998936257769,\"type\":\"stock_brakes\"}}', 0.000285899),
(0, '81GAO176', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99518146807955},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99480130712496},\"engine\":{\"type\":\"stock_engine\",\"health\":99.994189453125},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99480483511312},\"tires\":{\"type\":\"stock_tires\",\"health\":99.94818964706018},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98183174044734}}', 0.304228),
(0, '02QLW300', '{\"engine\":{\"health\":98.49603881835938,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.90945549929103,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.92456934280478,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.32000174621683,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.85100286077628,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.7994708425756,\"type\":\"stock_brakes\"}}', 2139.44),
(0, '88NTG794', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.66506391295667},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.87463840239926},\"oil\":{\"type\":\"stock_oil\",\"health\":98.88596148248743},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.84991709179005},\"tires\":{\"type\":\"stock_tires\",\"health\":99.73647251389211},\"engine\":{\"type\":\"stock_engine\",\"health\":87.58469848632812}}', 3497.24),
(0, '07AYW923', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9835541299272},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.994752723316},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97676703862635},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9942956760971},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96583197427381},\"engine\":{\"type\":\"stock_engine\",\"health\":99.96243896484376}}', 63.4457),
(0, '68MGS656', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.90148365760413},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.87228942506468},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94261942002456},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95211571287892},\"oil\":{\"type\":\"stock_oil\",\"health\":99.5723042809923},\"engine\":{\"type\":\"stock_engine\",\"health\":94.22825927734375}}', 1346.45),
(0, '46UOO338', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.91777317875132},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.88897127435759},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9498462827115},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95822411191507},\"oil\":{\"type\":\"stock_oil\",\"health\":99.62309961798192},\"engine\":{\"type\":\"stock_engine\",\"health\":33.41319580078125}}', 1196.97),
(0, '01FGC466', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.81869755203398},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.89563010880997},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96101162001779},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96517907959563},\"oil\":{\"type\":\"stock_oil\",\"health\":99.79987905874748},\"engine\":{\"type\":\"stock_engine\",\"health\":-0.23003628253936}}', 567.676),
(0, '09AVY847', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.97027858739202},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.96275342906438},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98334264325695},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98607695204461},\"oil\":{\"type\":\"stock_oil\",\"health\":99.87672975094007},\"engine\":{\"type\":\"stock_engine\",\"health\":null}}', 390.297),
(0, '63AHE781', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.62518162803684},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.54861565362852},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.79928000945361},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.8318950251076},\"oil\":{\"type\":\"stock_oil\",\"health\":98.52779738859927},\"engine\":{\"type\":\"stock_engine\",\"health\":83.8239501953125}}', 4658.15),
(0, 'LQAG8376', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.37330835819889},\"oil\":{\"type\":\"stock_oil\",\"health\":95.30602143747947},\"engine\":{\"type\":\"stock_engine\",\"health\":97.46408081054688},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.60962627020946},\"tires\":{\"type\":\"stock_tires\",\"health\":98.95288918930047},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.47760017852476}}', 14899.1),
(0, '84OBE820', '{\"tires\":{\"health\":99.76823125158677,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.88744453795015,\"type\":\"stock_suspension\"},\"oil\":{\"health\":98.99487167418698,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.86512778708665,\"type\":\"stock_transmition\"},\"engine\":{\"health\":97.79702758789063,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.69978623645483,\"type\":\"stock_brakes\"}}', 3193.88),
(0, '61NMT921', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.79726576008665},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.90902747058887},\"oil\":{\"type\":\"stock_oil\",\"health\":99.32325242797102},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92404949825446},\"tires\":{\"type\":\"stock_tires\",\"health\":99.84212719055482},\"engine\":{\"type\":\"stock_engine\",\"health\":60.64151611328125}}', 2119.41),
(0, '27NSC515', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9368505874515},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.83260329589533},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.92408243511491},\"tires\":{\"type\":\"stock_tires\",\"health\":99.879870375604},\"engine\":{\"type\":\"stock_engine\",\"health\":98.730224609375},\"oil\":{\"type\":\"stock_oil\",\"health\":99.42605535906775}}', 1793.38),
(0, '69PZH386', '{\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"}}', 0),
(0, 'PDK901', '{\"oil\":{\"health\":95.57880889641308,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.06621704614186,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.51277780423803,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":98.70774213545163,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.4144397517096,\"type\":\"stock_transmition\"},\"engine\":{\"health\":97.76126708984376,\"type\":\"stock_engine\"}}', 14186.3),
(0, '07PRP106', '{\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"}}', 0),
(0, '28OIB532', '{\"engine\":{\"type\":\"stock_engine\",\"health\":98.3320556640625},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.89754652369465},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.91428442316297},\"oil\":{\"type\":\"stock_oil\",\"health\":99.2449710523715},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.77029465884003},\"tires\":{\"type\":\"stock_tires\",\"health\":99.8131971053477}}', 2345.99),
(0, '62UFC180', '{\"engine\":{\"health\":99.30368041992188,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.6846434650342,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.91998538105459,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.90340066134886,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.96401586846543,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.95702893472246,\"type\":\"stock_transmition\"}}', 1044.59),
(0, '65RGZ395', '{\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"}}', 0),
(0, '44VFR503', '{\"oil\":{\"health\":99.999934433247,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.9993195147952,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.9997608678756,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99989624023438,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99993146089379,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.9999315589129,\"type\":\"stock_suspension\"}}', 0.0127391),
(0, 'RENTAL', '{\"transmition\":{\"health\":99.95270048853394,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.8417461293043,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.70840440051373,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.8828734397159,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.95898902487657,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.95610961914062,\"type\":\"stock_engine\"}}', 884.515),
(0, '03XKF314', '{\"oil\":{\"health\":99.68307356445324,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.90533797788339,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.92691569618153,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.96450970298202,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.30379638671875,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.95747303216155,\"type\":\"stock_transmition\"}}', 980.998),
(0, '80CWU475', '{\"oil\":{\"health\":99.6318730874022,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.8912497609221,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.91875977770985,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.95911140166587,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.18929443359375,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.95093048378684,\"type\":\"stock_transmition\"}}', 1144.19),
(0, '25NER831', '{\"oil\":{\"health\":99.7552216400248,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.92545872240831,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.9392225500937,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.97219136360626,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.45932006835938,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.96676542318125,\"type\":\"stock_transmition\"}}', 888.284),
(0, 'QGNU6853', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":96.94455815002141},\"tires\":{\"type\":\"stock_tires\",\"health\":97.26731262360834},\"suspension\":{\"type\":\"stock_suspension\",\"health\":98.87045419798399},\"oil\":{\"type\":\"stock_oil\",\"health\":90.32442722843088},\"engine\":{\"type\":\"stock_engine\",\"health\":98.5798095703125},\"transmition\":{\"type\":\"stock_transmition\",\"health\":98.65665218441062}}', 29928.2),
(0, '42TTF336', '{\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"}}', 0),
(0, '24XTP812', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.8830178906124},\"oil\":{\"type\":\"stock_oil\",\"health\":99.51061025445667},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94481779696112},\"engine\":{\"type\":\"stock_engine\",\"health\":95.695703125},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.93396037071905},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.85246347958209}}', 1518.13),
(0, '06OWS304', '{\"suspension\":{\"health\":99.91480419336384,\"type\":\"stock_suspension\"},\"engine\":{\"health\":58.38978271484375,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.89765675816146,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.77383390462372,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.22885264833119,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.83479671349406,\"type\":\"stock_tires\"}}', 2428.7),
(0, '03UDZ754', '{\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"}}', 0),
(0, '45USY830', '{\"brakes\":{\"health\":99.60499802109828,\"type\":\"stock_brakes\"},\"engine\":{\"health\":81.39964599609375,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.72763874257825,\"type\":\"stock_tires\"},\"oil\":{\"health\":98.62921401586796,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.81998810937729,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.85051273772497,\"type\":\"stock_suspension\"}}', 4384.52),
(0, '23NOS999', '{\"brakes\":{\"health\":99.77667017030167,\"type\":\"stock_brakes\"},\"engine\":{\"health\":97.99002685546876,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.79214408300432,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.30482064538625,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.91778594521945,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.90244800187829,\"type\":\"stock_transmition\"}}', 2205.09),
(0, '42BAM900', '{\"brakes\":{\"health\":99.99830793405804,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99090576171875,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.9976682740707,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99585494118777,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99940948314674,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99932025861225,\"type\":\"stock_transmition\"}}', 13.014),
(0, '01THC237', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999195108566},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999194021584},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999231574911},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99997187445308},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99999389648437},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99991994619316}}', 0.0000371933),
(0, '66HRY948', '{\"engine\":{\"health\":96.88727416992188,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.91166995446504,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.95981275594673,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.93824206570274,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.69472989300027,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.9666082505767,\"type\":\"stock_suspension\"}}', 953.818),
(0, '20WME668', '{\"engine\":{\"health\":99.32237548828125,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99323704498481,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99718633217396,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99191505718334,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.9816025895944,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99758696624879,\"type\":\"stock_suspension\"}}', 55.8779),
(0, '84QMH610', '{\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"}}', 0),
(0, '63LJB315', '{\"tires\":{\"health\":99.86336488413548,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.93527892815769,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.82701975743578,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.922530473662,\"type\":\"stock_transmition\"},\"engine\":{\"health\":10.19712448120117,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.42543862826324,\"type\":\"stock_oil\"}}', 1830.09),
(0, '02BCG481', '{\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"}}', 0),
(0, '82CSN579', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.41861848559289},\"engine\":{\"type\":\"stock_engine\",\"health\":77.18445434570313},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.41065363934352},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.29605108032489},\"oil\":{\"type\":\"stock_oil\",\"health\":94.82818463514875},\"tires\":{\"type\":\"stock_tires\",\"health\":98.69636888215864}}', 16454),
(0, 'CHGRB01', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99995113613136},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99981535674037},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99994717154627},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9999267578125},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99947338159731},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99994720483567}}', 0.0058961),
(0, 'CHGRPD2', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.9988027835975},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99939595483079},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99977228918435},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99808349609376},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99897701929956},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99979734667596}}', 3.64049),
(0, '85CLJ390', '{\"brakes\":{\"health\":99.78789156841565,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.90435959725416,\"type\":\"stock_transmition\"},\"engine\":{\"health\":97.44906616210938,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.28323975054485,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.92028595803673,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.84071032970498,\"type\":\"stock_tires\"}}', 2462.25),
(0, '22TYH971', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.87218469167634},\"engine\":{\"type\":\"stock_engine\",\"health\":79.22880859375},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.7153058691441},\"tires\":{\"type\":\"stock_tires\",\"health\":99.77913333056088},\"oil\":{\"type\":\"stock_oil\",\"health\":99.04843191708712},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.89330929534852}}', 3017),
(0, '66ESE811', '{\"brakes\":{\"health\":98.84394447820412,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.05622014226705,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.48466031106013,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.56876854346088,\"type\":\"stock_suspension\"},\"oil\":{\"health\":96.2055082768912,\"type\":\"stock_oil\"},\"engine\":{\"health\":10.0,\"type\":\"stock_engine\"}}', 12041.4),
(0, '47HGT215', '{\"engine\":{\"health\":99.93561401367188,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99073876574542,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99593384649812,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99164543449403,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.9707789035522,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99657934039442,\"type\":\"stock_suspension\"}}', 90.4767);
INSERT INTO `vehicle_parts` (`id`, `plate`, `parts`, `mileage`) VALUES
(0, '82JAF410', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.71138696064279},\"engine\":{\"type\":\"stock_engine\",\"health\":85.2396728515625},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.86344343473503},\"oil\":{\"type\":\"stock_oil\",\"health\":98.78804588681},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.83655323215595},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.63499087240536}}', 4029.44),
(0, '62ISB697', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99716632705067},\"engine\":{\"type\":\"stock_engine\",\"health\":99.95626831054688},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99344972793668},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99355256169203},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98013069472644},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99760367552591}}', 62.2104),
(0, '60FXK668', '{\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"}}', 0),
(0, '40DBQ133', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.65492280123856},\"engine\":{\"type\":\"stock_engine\",\"health\":97.43377075195312},\"oil\":{\"type\":\"stock_oil\",\"health\":98.83928432517208},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8446879147448},\"tires\":{\"type\":\"stock_tires\",\"health\":99.73722729504705},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.87046909651495}}', 3702.2),
(0, '88DGU166', '{\"brakes\":{\"health\":99.3768645562911,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.53353250678977,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.71890879286852,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.76575084238071,\"type\":\"stock_suspension\"},\"oil\":{\"health\":97.89207275289205,\"type\":\"stock_oil\"},\"engine\":{\"health\":93.9654541015625,\"type\":\"stock_engine\"}}', 6705.27),
(0, 'TE15171', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.98939951442788},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98934936523438},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99856765880959},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99494613596646},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99847470184759},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99537722507552}}', 13.7172),
(0, 'TE19777', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.99520747519616},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98741455078125},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99903126780373},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99417834614424},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99890905064625},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99712274937498}}', 17.8936),
(0, '06XEV262', '{\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"}}', 0),
(0, 'GRD1251', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.97029203766245},\"engine\":{\"type\":\"stock_engine\",\"health\":87.31090087890625},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99187288344764},\"oil\":{\"type\":\"stock_oil\",\"health\":99.94054303008413},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99058541270647},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97696246918024}}', 190.786),
(0, 'ZLDM2610', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.60246758342396},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.08768393049583},\"tires\":{\"type\":\"stock_tires\",\"health\":99.13848385938425},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.66468152997843},\"engine\":{\"type\":\"stock_engine\",\"health\":74.84517211914063},\"oil\":{\"type\":\"stock_oil\",\"health\":97.17854854150657}}', 9431.57),
(0, '21VRB761', '{\"engine\":{\"health\":99.93008422851563,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.9683171397879,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99170451574452,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99021028098037,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99636122013891,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99565978906885,\"type\":\"stock_transmition\"}}', 99.0001),
(0, '47VGC255', '{\"engine\":{\"health\":98.79556274414063,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.45450203236348,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.89469727308088,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.84382779802245,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.94079526115458,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.92864183639722,\"type\":\"stock_transmition\"}}', 1706),
(0, '67UJF093', '{\"engine\":{\"health\":67.7328125,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.84485371788169,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.96770915088345,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.9548101134377,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.98294643859906,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.97949463423234,\"type\":\"stock_transmition\"}}', 490.016),
(0, '82YCA848', '{\"engine\":{\"health\":99.37033081054688,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.71492620792547,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.94546732930455,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.91854967383547,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.96910569548288,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.96275337651974,\"type\":\"stock_transmition\"}}', 908.213),
(0, '64UPT494', '{\"engine\":{\"health\":99.96047973632813,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.98104832072872,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99572978698213,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99437239915896,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99788693130624,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99746594569025,\"type\":\"stock_transmition\"}}', 58.4307),
(0, '22FMI415', '{\"engine\":{\"health\":99.99751586914063,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99880447373141,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99945281864743,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99955332881302,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99984119155227,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99981520146176,\"type\":\"stock_transmition\"}}', 3.61971),
(0, '25MDR270', '{\"engine\":{\"health\":99.9994140625,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.9997150799214,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99948989555775,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.9997682605444,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99992728569862,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.9999218665083,\"type\":\"stock_transmition\"}}', 0.770109),
(0, '80RFA365', '{\"engine\":{\"health\":99.33409423828125,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.69797048964704,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.90168864997335,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.90032990296327,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.96354591579999,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.95689848778577,\"type\":\"stock_transmition\"}}', 941.094),
(0, '66UCM443', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99974975585937},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99983150118936},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99831813086527},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99941073400474},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99984588331296},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99983156350646}}', 0.00390955),
(0, 'MAIRE', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.15805558093176},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.65622661101993},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.06901076098616},\"oil\":{\"type\":\"stock_oil\",\"health\":97.06564830539759},\"engine\":{\"type\":\"stock_engine\",\"health\":92.099755859375},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.5914128914022}}', 10124.3),
(0, '81FKP957', '{\"oil\":{\"health\":98.47181478021493,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.8247524459662,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.17338256835937,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.60275952059219,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.79091386766639,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.52875558974827,\"type\":\"stock_brakes\"}}', 4812.66),
(0, '43YPH542', '{\"oil\":{\"health\":99.99594580683119,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99111328125,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.9993735434815,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99814689022448,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99848608763287,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.9994616844487,\"type\":\"stock_suspension\"}}', 12.2998),
(0, '40NXM773', '{\"oil\":{\"health\":99.99082937480061,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.97999877929688,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99853795451894,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99530711974899,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99641015997946,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99873630765704,\"type\":\"stock_suspension\"}}', 27.8693),
(0, 'REDLINE', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.4776819730757},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.56065920235263},\"tires\":{\"type\":\"stock_tires\",\"health\":98.92983005614542},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.81081157122962},\"engine\":{\"type\":\"stock_engine\",\"health\":99.97598876953126},\"oil\":{\"type\":\"stock_oil\",\"health\":96.24401549638081}}', 11608.5),
(0, '67DAO117', '{\"tires\":{\"health\":99.99404348713004,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.9989481302408,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99544367655773,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99903928278265,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99702033041565,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.98927612304688,\"type\":\"stock_engine\"}}', 12.9135),
(0, '09OYY112', '{\"engine\":{\"health\":86.84081420898437,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.76519775111153,\"type\":\"stock_tires\"},\"oil\":{\"health\":98.92225228156372,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.88057162601679,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.856614535107,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.68262047288107,\"type\":\"stock_brakes\"}}', 3404.76),
(0, '24SCC261', '{\"transmition\":{\"health\":99.6030046351197,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.3556895480355,\"type\":\"stock_tires\"},\"oil\":{\"health\":97.011426037855,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.12215363782257,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.66945105263821,\"type\":\"stock_suspension\"},\"engine\":{\"health\":76.90241088867188,\"type\":\"stock_engine\"}}', 9503.02),
(0, '08NOQ672', '{\"brakes\":{\"health\":99.99150926562345,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.97291583122822,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99685543701584,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.58505249023438,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99625657128523,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.99253894266528,\"type\":\"stock_tires\"}}', 83.5968),
(0, '45WGQ377', '{\"brakes\":{\"health\":99.93543379346369,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.78685737207724,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.97588036554643,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.5289794921875,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.97115357648682,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.9481115573037,\"type\":\"stock_tires\"}}', 661.605),
(0, '04PNC913', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.87820285045756},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94519281823856},\"tires\":{\"type\":\"stock_tires\",\"health\":99.90711009543198},\"engine\":{\"type\":\"stock_engine\",\"health\":99.09468994140625},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95428736195567},\"oil\":{\"type\":\"stock_oil\",\"health\":99.59052960521308}}', 1291.47),
(0, '46MWS660', '{\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"tires\":{\"health\":100,\"type\":\"stock_tires\"}}', 0),
(0, '44VCL270', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.07760428583424},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.87567766984384},\"tires\":{\"type\":\"stock_tires\",\"health\":99.78116574218598},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.89614498340501},\"engine\":{\"type\":\"stock_engine\",\"health\":93.96370239257813},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.72247015887936}}', 2941.61),
(0, '81HIO047', '{\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"tires\":{\"health\":100,\"type\":\"stock_tires\"}}', 0),
(0, '47EDZ609', '{\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":100},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100},\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100}}', 0),
(0, 'TE13291', '{\"transmition\":{\"health\":99.99493888746038,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.96824858858786,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99531570492259,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.98052302721539,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.98518760057287,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.95868530273438,\"type\":\"stock_engine\"}}', 53.2875),
(0, '25CXA960', '{\"oil\":{\"health\":98.80460693500543,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.83361865293588,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.62098608996569,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.65777175979425,\"type\":\"stock_tires\"},\"engine\":{\"health\":27.55639038085937,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.86002395224496,\"type\":\"stock_suspension\"}}', 3737.26),
(0, 'TE11908', '{\"oil\":{\"type\":\"stock_oil\",\"health\":97.95991717890507},\"tires\":{\"type\":\"stock_tires\",\"health\":99.51699285132276},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.7703928023066},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.72512276914218},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.38650894736982},\"engine\":{\"type\":\"stock_engine\",\"health\":91.92105102539063}}', 6439.09),
(0, 'ZQIA2780', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":98.57363051827342},\"suspension\":{\"type\":\"stock_suspension\",\"health\":98.80803038881392},\"oil\":{\"type\":\"stock_oil\",\"health\":89.4340325930348},\"brakes\":{\"type\":\"stock_brakes\",\"health\":96.8125858171713},\"tires\":{\"type\":\"stock_tires\",\"health\":97.46801870338683},\"engine\":{\"type\":\"stock_engine\",\"health\":10.0}}', 34070),
(0, 'DNYG1440', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.18911522454941},\"engine\":{\"type\":\"stock_engine\",\"health\":92.08648071289062},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.69207539767646},\"oil\":{\"type\":\"stock_oil\",\"health\":97.14965857852696},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.62853936608673},\"tires\":{\"type\":\"stock_tires\",\"health\":99.46537204194091}}', 10103.7),
(0, 'MAIRE2', '{\"suspension\":{\"health\":98.37836430681505,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":98.04053318797179,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":95.74316577300445,\"type\":\"stock_brakes\"},\"oil\":{\"health\":84.85836756300046,\"type\":\"stock_oil\"},\"tires\":{\"health\":97.31377937782543,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.12338256835938,\"type\":\"stock_engine\"}}', 48353.6),
(0, 'JMOI1755', '{\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"}}', 0),
(0, '25JLD714', '{\"tires\":{\"health\":99.77913932592336,\"type\":\"stock_tires\"},\"oil\":{\"health\":98.68500172962212,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.63440962012335,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99970703125,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.86030781886483,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.83094299646102,\"type\":\"stock_transmition\"}}', 4194.42),
(0, '20CSY756', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.87565109900338},\"oil\":{\"type\":\"stock_oil\",\"health\":99.59030409450139},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94448653231764},\"tires\":{\"type\":\"stock_tires\",\"health\":99.89952885647067},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95357071879704},\"engine\":{\"type\":\"stock_engine\",\"health\":99.09500732421876}}', 1269.41),
(0, '61TWU311', '{\"tires\":{\"health\":99.97829882568159,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99782988256747,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99804689430997,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99240458898965,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99678344726563,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99782988256747,\"type\":\"stock_transmition\"}}', 0),
(0, '47OKQ571', '{\"tires\":{\"health\":99.99515135653526,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99955011761769,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99829996874199,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99931640625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99951390935215,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99951360315959,\"type\":\"stock_transmition\"}}', 0.0499697),
(0, '23HVJ234', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99026729456232},\"engine\":{\"type\":\"stock_engine\",\"health\":99.97166137695312},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9364106130482},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99094137383115},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97112594134629},\"oil\":{\"type\":\"stock_oil\",\"health\":99.96454702605492}}', 95.7847),
(0, '89TRW385', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99998630990994},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99972534179688},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99998767891894},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99998879901723},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99997125081087},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99988911027052}}', 0.298071),
(0, '62GXH292', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98858604735239},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98906860351562},\"tires\":{\"type\":\"stock_tires\",\"health\":99.916288761345},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98919400515067},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.96473244079026},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9656523138069}}', 87.7994),
(0, '26IZZ861', '{\"tires\":{\"health\":99.99464488877112,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99503123406166,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99712696452049,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99223022460937,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99905705521967,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99895532396943,\"type\":\"stock_transmition\"}}', 14.7484),
(0, '80UYM668', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99009164722799},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98283081054687},\"tires\":{\"type\":\"stock_tires\",\"health\":99.92184421279009},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99050978390115},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.96854041769152},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97452427024847}}', 59.6729),
(0, '00EID275', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99995883806206},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99985961914062},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99962519606672},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9999595736354},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99986159713196},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99993382555114}}', 0.120842),
(0, '84IUB620', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.92825297087275},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9837646484375},\"tires\":{\"type\":\"stock_tires\",\"health\":99.80536998662858},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.93869933007096},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.82932236389319},\"oil\":{\"type\":\"stock_oil\",\"health\":99.521751849528}}', 1531.2),
(0, '84JAY250', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99901515857182},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99967497189381},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99963860119294},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99823446132},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9982063655069},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99620971679687}}', 4.97197),
(0, '22QYB168', '{\"tires\":{\"health\":99.97247935329435,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99408821272138,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.91953735351562,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.98262231130502,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.96272714035608,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99329926824989,\"type\":\"stock_transmition\"}}', 16.2402),
(0, '07ABX496', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9148268482173},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92946769765143},\"engine\":{\"type\":\"stock_engine\",\"health\":99.63681030273438},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.81462850940319},\"tires\":{\"type\":\"stock_tires\",\"health\":99.88104299634975},\"oil\":{\"type\":\"stock_oil\",\"health\":99.3435665258057}}', 5161.21),
(0, '42IVL431', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.91438551909936},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9291221546891},\"engine\":{\"type\":\"stock_engine\",\"health\":99.63558959960938},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.81382141088898},\"tires\":{\"type\":\"stock_tires\",\"health\":99.88142380226016},\"oil\":{\"type\":\"stock_oil\",\"health\":99.33937619783616}}', 2052.17),
(0, '29LGY375', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9111500596957},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92641315590876},\"engine\":{\"type\":\"stock_engine\",\"health\":98.48744506835938},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.80655104977555},\"tires\":{\"type\":\"stock_tires\",\"health\":99.87541856242115},\"oil\":{\"type\":\"stock_oil\",\"health\":99.31561644368904}}', 2126.93),
(0, '04QPR102', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.90542652831646},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92173791993646},\"engine\":{\"type\":\"stock_engine\",\"health\":98.3868896484375},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.79459056458174},\"tires\":{\"type\":\"stock_tires\",\"health\":99.87065043374474},\"oil\":{\"type\":\"stock_oil\",\"health\":99.26895276733437}}', 2272.54),
(0, '06JRS572', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.91521915307144},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9297985375228},\"engine\":{\"type\":\"stock_engine\",\"health\":98.55516967773437},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.81552829602518},\"tires\":{\"type\":\"stock_tires\",\"health\":99.88188972250268},\"oil\":{\"type\":\"stock_oil\",\"health\":99.34635361349209}}', 2029.12),
(0, '85JBL545', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99041585839096},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9720947265625},\"tires\":{\"type\":\"stock_tires\",\"health\":99.92870892896717},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99090637477527},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97023248053665},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97194982372629}}', 70.6412),
(0, '82JDH894', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99515059197069},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98298950195313},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97019085651322},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99552391738129},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98590167756206},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98085184651399}}', 53.2878),
(0, '89PRD123', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99125268935343},\"engine\":{\"type\":\"stock_engine\",\"health\":98.99432373046875},\"tires\":{\"type\":\"stock_tires\",\"health\":99.94961774521761},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99199376531088},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97509069761535},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9627808125015}}', 104.785),
(0, '27GZZ133', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99440871826237},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98701782226563},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96572951049375},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9948411324055},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.983760102824},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9778442463687}}', 62.4036),
(0, 'ODNC8085', '{\"brakes\":{\"health\":94.77636901605666,\"type\":\"stock_brakes\"},\"oil\":{\"health\":81.8675233366802,\"type\":\"stock_oil\"},\"tires\":{\"health\":96.40142629770399,\"type\":\"stock_tires\"},\"engine\":{\"health\":95.09962158203125,\"type\":\"stock_engine\"},\"transmition\":{\"health\":97.6192135142415,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":98.02299555530526,\"type\":\"stock_suspension\"}}', 57502.3),
(0, '46JZT155', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.91688908122522},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.93112559138219},\"engine\":{\"type\":\"stock_engine\",\"health\":98.591455078125},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.81873291249609},\"tires\":{\"type\":\"stock_tires\",\"health\":99.8814281456016},\"oil\":{\"type\":\"stock_oil\",\"health\":99.36143437089337}}', 4778.13),
(0, 'CPSS3757', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":98.67901593682491},\"oil\":{\"type\":\"stock_oil\",\"health\":90.19339541821012},\"tires\":{\"type\":\"stock_tires\",\"health\":97.6819985651095},\"engine\":{\"type\":\"stock_engine\",\"health\":14.63487396240234},\"brakes\":{\"type\":\"stock_brakes\",\"health\":97.0522233476627},\"suspension\":{\"type\":\"stock_suspension\",\"health\":98.89663510159495}}', 30446.9),
(0, '45TEP907', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99920141876327},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99931403743611},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98862915039062},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99807212945217},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9976507522072},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99482157744345}}', 15.7278),
(0, 'COK7600', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99992398983493},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9999239916829},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99989013671875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99973397865185},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99923999084116},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99993151767117}}', 0.000114441),
(0, 'COK4765', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8710932812207},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.89242799815392},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.7131038046625},\"tires\":{\"type\":\"stock_tires\",\"health\":99.7787353947261},\"engine\":{\"type\":\"stock_engine\",\"health\":95.198974609375},\"oil\":{\"type\":\"stock_oil\",\"health\":99.03912916253981}}', 6476.04),
(0, '83RBT988', '{\"oil\":{\"health\":99.60761195397832,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.91338008025726,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.95641431601601,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.88407420254529,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.94769429304219,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.1360107421875,\"type\":\"stock_engine\"}}', 3654.29),
(0, '29DRO500', '{\"tires\":{\"health\":99.91201127674224,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.5875077991143,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.94528996339312,\"type\":\"stock_transmition\"},\"engine\":{\"health\":93.39713745117187,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.87914743230806,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.95446302318936,\"type\":\"stock_suspension\"}}', 4397.48),
(0, '86TOQ579', '{\"tires\":{\"health\":99.9282090832281,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.64498364648178,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.95326669886808,\"type\":\"stock_transmition\"},\"engine\":{\"health\":18.34410858154297,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.89728607596853,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.96116963781984,\"type\":\"stock_suspension\"}}', 1101.21),
(0, '00MBZ043', '{\"oil\":{\"health\":99.62837076568225,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.92166510910727,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.95906015505099,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.89142881848619,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.95079389890613,\"type\":\"stock_transmition\"},\"engine\":{\"health\":67.79503173828125,\"type\":\"stock_engine\"}}', 1937.61),
(0, '60OHV723', '{\"oil\":{\"health\":99.41269896972658,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.88923348079621,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.93649752227063,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.83271972205367,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9234074284355,\"type\":\"stock_transmition\"},\"engine\":{\"health\":98.70331420898438,\"type\":\"stock_engine\"}}', 2616.3),
(0, 'NZEG5430', '{\"engine\":{\"type\":\"stock_engine\",\"health\":97.58619995117188},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.76514198505551},\"oil\":{\"type\":\"stock_oil\",\"health\":98.01710604717887},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.72140070754019},\"tires\":{\"type\":\"stock_tires\",\"health\":99.40325801507172},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.36171031327332}}', 6151.28),
(0, '40EMN930', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.29661018914504},\"engine\":{\"type\":\"stock_engine\",\"health\":43.09200439453125},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.73608412274592},\"oil\":{\"type\":\"stock_oil\",\"health\":97.63800231501709},\"tires\":{\"type\":\"stock_tires\",\"health\":99.46170936297303},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.68362798952441}}', 7519.11),
(0, '49XTS609', '{\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"}}', 0),
(0, '48JEW696', '{\"engine\":{\"health\":93.67870483398437,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.69978837713014,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.86475412598539,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.887241000814,\"type\":\"stock_suspension\"},\"oil\":{\"health\":98.98779847018078,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.77300934502209,\"type\":\"stock_tires\"}}', 3168.06),
(0, '20LTZ985', '{\"engine\":{\"health\":66.13391723632813,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.84047751113234,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.92834378479528,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.9401975853601,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.46609890395308,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.87672056621821,\"type\":\"stock_tires\"}}', 1665.56),
(0, '86JYB404', '{\"engine\":{\"type\":\"stock_engine\",\"health\":83.73642578125},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.72782621464086},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.87741159199455},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.89778635078123},\"tires\":{\"type\":\"stock_tires\",\"health\":99.79387259722616},\"oil\":{\"type\":\"stock_oil\",\"health\":99.0828299848392}}', 2868.91),
(0, '48JHV729', '{\"engine\":{\"type\":\"stock_engine\",\"health\":77.6160888671875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.45679437585781},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.75651786566279},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.7966453781345},\"tires\":{\"type\":\"stock_tires\",\"health\":99.573560655856},\"oil\":{\"type\":\"stock_oil\",\"health\":98.19181658520653}}', 5640.16),
(0, '68RXD650', '{\"suspension\":{\"health\":99.99980949388481,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.9998093610532,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99933378648986,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.9981002587545,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99982316481625,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99971923828125,\"type\":\"stock_engine\"}}', 0.00681413),
(0, '87IOL469', '{\"engine\":{\"health\":98.700634765625,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.83183860147808,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.92304126700228,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.93618336660866,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.41030999588172,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.88817475533038,\"type\":\"stock_tires\"}}', 5014.08),
(0, '05RXH046', '{\"oil\":{\"health\":100,\"type\":\"stock_oil\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"tires\":{\"health\":100,\"type\":\"stock_tires\"}}', 0),
(0, 'EYEG9853', '{\"engine\":{\"health\":96.56729736328126,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.42292004204032,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.744083223674,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.78546358200772,\"type\":\"stock_suspension\"},\"oil\":{\"health\":98.13101271128022,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.5119191713739,\"type\":\"stock_tires\"}}', 8864.11),
(0, '01RZF781', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97397769676398},\"engine\":{\"type\":\"stock_engine\",\"health\":99.89085693359375},\"tires\":{\"type\":\"stock_tires\",\"health\":99.95947995062464},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.94272239759488},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97836736675372},\"oil\":{\"type\":\"stock_oil\",\"health\":99.8027489954957}}', 629.554),
(0, 'RJWS1378', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.76202958475818},\"oil\":{\"type\":\"stock_oil\",\"health\":99.06755777073596},\"engine\":{\"type\":\"stock_engine\",\"health\":99.97667236328125},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.89347546599655},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.71391955381528},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.87281941294327}}', 2900.77),
(0, 'SYVP9132', '{\"oil\":{\"type\":\"stock_oil\",\"health\":96.86823400020335},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.06333521995113},\"tires\":{\"type\":\"stock_tires\",\"health\":99.27403153379241},\"engine\":{\"type\":\"stock_engine\",\"health\":90.70045776367188},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.57942332516689},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.64894976436982}}', 9947.33),
(0, '28KQY682', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.20842745960306},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.7666115778043},\"tires\":{\"type\":\"stock_tires\",\"health\":99.82668753855595},\"engine\":{\"type\":\"stock_engine\",\"health\":96.47725219726563},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.89461080134663},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.91220479785192}}', 2516.81),
(0, 'GARCIA', '{\"brakes\":{\"health\":99.35905512643223,\"type\":\"stock_brakes\"},\"oil\":{\"health\":97.82331396839624,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.52594392489502,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.71042465858163,\"type\":\"stock_transmition\"},\"engine\":{\"health\":93.16441040039062,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.7588102198019,\"type\":\"stock_suspension\"}}', 6905.94),
(0, 'MECA5804', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.14799021282924},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.73583426847735},\"tires\":{\"type\":\"stock_tires\",\"health\":99.7741846065831},\"engine\":{\"type\":\"stock_engine\",\"health\":93.88723754882813},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.88303828537404},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.90189546325307}}', 2711.99),
(0, 'MECA7412', '{\"oil\":{\"health\":99.99995722292248,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99983669012195,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99953392863611,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.9999533174343,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99995329860052,\"type\":\"stock_transmition\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"}}', 0.00180242),
(0, 'PPEMS01', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.93848329032726},\"engine\":{\"type\":\"stock_engine\",\"health\":99.58240966796875},\"oil\":{\"type\":\"stock_oil\",\"health\":99.74802749784746},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97147020042633},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.92361340190361},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96588265270938}}', 786.9),
(0, 'EMS83456', '{\"tires\":{\"health\":99.48294439303945,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.29321447781979,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.68023135002207,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.73379040881939,\"type\":\"stock_suspension\"},\"engine\":{\"health\":92.50438842773437,\"type\":\"stock_engine\"},\"oil\":{\"health\":97.59126948663747,\"type\":\"stock_oil\"}}', 7526.51),
(0, '29ZGD343', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99901445091011},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99397438730068},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99663915195147},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98688354492188},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99754975400866},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99914421400408}}', 18.1038),
(0, '47VTC800', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.31102625231941},\"engine\":{\"type\":\"stock_engine\",\"health\":98.47760009765625},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92060656773768},\"tires\":{\"type\":\"stock_tires\",\"health\":99.81672400649481},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.7861620628006},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.90535916875899}}', 2236.54),
(0, '01QKH772', '{\"oil\":{\"type\":\"stock_oil\",\"health\":97.37809004007628},\"engine\":{\"type\":\"stock_engine\",\"health\":67.72642822265625},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.70609189973503},\"tires\":{\"type\":\"stock_tires\",\"health\":99.39211841516513},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.21579200001136},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.64788467332284}}', 8610.38),
(0, '27RPP096', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.96532348479374},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98708892550792},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97113102482027},\"engine\":{\"type\":\"stock_engine\",\"health\":99.75054931640625},\"oil\":{\"type\":\"stock_oil\",\"health\":99.88701195119693},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98458600990901}}', 356.598),
(0, '80ELG043', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.7984251689718},\"engine\":{\"type\":\"stock_engine\",\"health\":94.730517578125},\"tires\":{\"type\":\"stock_tires\",\"health\":99.82811397663707},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.91071761738427},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92512196908817},\"oil\":{\"type\":\"stock_oil\",\"health\":99.34923352816938}}', 2057.21),
(0, '64LJD944', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.77416451044137},\"engine\":{\"type\":\"stock_engine\",\"health\":14.57713165283203},\"tires\":{\"type\":\"stock_tires\",\"health\":99.82004817418972},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.89898205048394},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.91557001590546},\"oil\":{\"type\":\"stock_oil\",\"health\":99.2522004147438}}', 2352.13),
(0, '68WKI766', '{\"tires\":{\"health\":99.98293012358991,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.2042724609375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99197698925615,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.92890939378489,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.97854300722355,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99039995477352,\"type\":\"stock_transmition\"}}', 225.311),
(0, '81ZLE043', '{\"suspension\":{\"health\":99.81649619223822,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.64565197448849,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.7795251547324,\"type\":\"stock_transmition\"},\"engine\":{\"health\":10.0,\"type\":\"stock_engine\"},\"oil\":{\"health\":98.33751955403037,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.51301503035796,\"type\":\"stock_brakes\"}}', 5204.63),
(0, '27FXN389', '{\"suspension\":{\"health\":99.995647490743,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.98474292389449,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99494167260407,\"type\":\"stock_transmition\"},\"engine\":{\"health\":96.27529296875,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.96749710704134,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.98773065378396,\"type\":\"stock_brakes\"}}', 99.9873),
(0, '29GUF429', '{\"oil\":{\"health\":98.56433250234223,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.65156479947588,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.80579489122704,\"type\":\"stock_transmition\"},\"engine\":{\"health\":28.42211608886718,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.83763536849368,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.56545379425215,\"type\":\"stock_brakes\"}}', 4486.02),
(0, '01DGK421', '{\"engine\":{\"health\":99.07118530273438,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.93676007655582,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.43974662290988,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.83085822530697,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.8653455732588,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.9243319914692,\"type\":\"stock_transmition\"}}', 1794.57),
(0, '88SPG626', '{\"tires\":{\"health\":99.83433346904578,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.36576919648596,\"type\":\"stock_oil\"},\"engine\":{\"health\":62.01390991210937,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.80415817119685,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.91315252107649,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.92719464411904,\"type\":\"stock_suspension\"}}', 1978.96),
(0, '60NQU684', '{\"tires\":{\"health\":99.9042547621021,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.51670200530674,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.94732109688943,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.19913940429687,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.86082693353231,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9365584553612,\"type\":\"stock_transmition\"}}', 1542.5),
(0, '20HDM099', '{\"tires\":{\"health\":99.89982619017525,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.95301788581705,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.5839154244211,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.87432711457737,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.94378823957448,\"type\":\"stock_transmition\"},\"engine\":{\"health\":98.98060913085938,\"type\":\"stock_engine\"}}', 1306.42),
(0, '61ZIS721', '{\"tires\":{\"health\":99.66916699605301,\"type\":\"stock_tires\"},\"oil\":{\"health\":98.36423739358935,\"type\":\"stock_oil\"},\"engine\":{\"health\":87.51617431640625,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.52672148885311,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.78466844560724,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.8210816831692,\"type\":\"stock_suspension\"}}', 5137.18),
(0, '07GAR922', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.79737342888393},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.83159485864778},\"oil\":{\"type\":\"stock_oil\",\"health\":98.4624674673534},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.55431201027555},\"tires\":{\"type\":\"stock_tires\",\"health\":99.68651684851527},\"engine\":{\"type\":\"stock_engine\",\"health\":79.64609375}}', 4828.75),
(0, '82BAU247', '{\"engine\":{\"health\":99.39963989257812,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.95856593184621,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.62569366867484,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.88993053464623,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.91893036989511,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.95024455727851,\"type\":\"stock_transmition\"}}', 1187.89),
(0, '02NIF940', '{\"oil\":{\"health\":99.99999993591379,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99999999208812,\"type\":\"stock_transmition\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99999998338505,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99999999352666,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99999999287931,\"type\":\"stock_tires\"}}', 0.0000190735),
(0, '49CME106', '{\"tires\":{\"health\":99.99118970714042,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99849674040643,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99235484977356,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99539111758833,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99834137703387,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.9996337890625,\"type\":\"stock_engine\"}}', 22.1415);
INSERT INTO `vehicle_parts` (`id`, `plate`, `parts`, `mileage`) VALUES
(0, '01UHU465', '{\"engine\":{\"health\":99.98626708984375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99893682232917,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99362713495866,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99684053794438,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.994724050595,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99880309380727,\"type\":\"stock_transmition\"}}', 18.9213),
(0, '68FVE314', '{\"engine\":{\"type\":\"stock_engine\",\"health\":25.96820678710937},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98783935373653},\"oil\":{\"type\":\"stock_oil\",\"health\":99.95521480577409},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99382588950553},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9860183761433},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99481650806058}}', 139.418),
(0, '27HGR056', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99671020507813},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99895498313527},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99799757433617},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99967893509209},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99920944700914},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99972220446702}}', 6.28421),
(0, '83XKZ314', '{\"engine\":{\"type\":\"stock_engine\",\"health\":107.84102783203125},\"tires\":{\"type\":\"stock_tires\",\"health\":99.95575393210676},\"oil\":{\"type\":\"stock_oil\",\"health\":99.91930806599926},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98687032936474},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.96743855869346},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98860960286032}}', 214.022),
(0, '43YUW133', '{\"engine\":{\"type\":\"stock_engine\",\"health\":96.231591796875},\"tires\":{\"type\":\"stock_tires\",\"health\":99.90241040910874},\"oil\":{\"type\":\"stock_oil\",\"health\":99.4417406130281},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.927886201822},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.84353222805388},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94034471113058}}', 1.30356),
(0, '89YZD782', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.86705322265625},\"tires\":{\"type\":\"stock_tires\",\"health\":99.95866655272532},\"oil\":{\"type\":\"stock_oil\",\"health\":99.91874813407553},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98706830277729},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.96827498663618},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98882621536369}}', 244.837),
(0, '47CYL696', '{\"engine\":{\"type\":\"stock_engine\",\"health\":25.09395751953125},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98040026428098},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98496567619363},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99653410096252},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99018616177745},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99683498517148}}', 39.5712),
(0, '88MBN462', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99297485351562},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99737827495449},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99571288882469},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99927810036131},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99818062377874},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99936995393456}}', 12.9411),
(0, '29WXL251', '{\"engine\":{\"type\":\"stock_engine\",\"health\":42.24645385742187},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97708630813769},\"oil\":{\"type\":\"stock_oil\",\"health\":99.93987438543778},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99111957009687},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9790555118267},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99243606574462}}', 172.191),
(0, '69IBT978', '{\"tires\":{\"health\":99.98304340949986,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.94810058709035,\"type\":\"stock_oil\"},\"engine\":{\"health\":85.22906494140625,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.98285227702873,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99258795224987,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99373008785439,\"type\":\"stock_suspension\"}}', 160.247),
(0, '45NXA999', '{\"engine\":{\"type\":\"stock_engine\",\"health\":-0.1},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98378251372226},\"oil\":{\"type\":\"stock_oil\",\"health\":99.96565611423616},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99464652373548},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98700395251535},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99539212366288}}', 136.516),
(0, '20RPF353', '{\"tires\":{\"health\":99.99254768201615,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.98073415570302,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.96974487304688,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99325247967885,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99714458320757,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99756619859098,\"type\":\"stock_suspension\"}}', 58.7322),
(0, '20NEB774', '{\"tires\":{\"health\":99.90058990277649,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.7445780794712,\"type\":\"stock_oil\"},\"engine\":{\"health\":107.75230712890625,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.91034203199938,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.96208888668389,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.96767731897032,\"type\":\"stock_suspension\"}}', 764.069),
(0, '25IEQ243', '{\"engine\":{\"type\":\"stock_engine\",\"health\":null},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999906068472},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999154616245},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999895631636},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999780826434},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999914607703}}', 0.0637294),
(0, '61ECR362', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.95526733398438},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99248559935845},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9725093711895},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99620565648086},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99140118761375},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9968136291991}}', 0.233812),
(0, '67YVY471', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.9283447265625},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99188840629206},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97868132989969},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99685243331324},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99257798939016},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9973192479618}}', 65.4576),
(0, '26HCA235', '{\"engine\":{\"type\":\"stock_engine\",\"health\":17.69198455810546},\"tires\":{\"type\":\"stock_tires\",\"health\":99.61624253573562},\"oil\":{\"type\":\"stock_oil\",\"health\":96.94257277221759},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.61858534087117},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.19280086643794},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.68712458416855}}', 17.0685),
(0, '63PAA695', '{\"tires\":{\"health\":99.99551746291238,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99591477383754,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99331665039063,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99761155732226,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99913393409263,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99921741305342,\"type\":\"stock_suspension\"}}', 11.674),
(0, '25WPL469', '{\"engine\":{\"health\":99.91657104492188,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99553677318564,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.96132454836232,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.98797292589107,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.98964118438902,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99468100658059,\"type\":\"stock_transmition\"}}', 123.295),
(0, '88LQQ771', '{\"tires\":{\"health\":99.76681550688953,\"type\":\"stock_tires\"},\"oil\":{\"health\":98.21923116282358,\"type\":\"stock_oil\"},\"engine\":{\"health\":96.05368041992188,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.52666435426743,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.77698061143922,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.81688089900146,\"type\":\"stock_suspension\"}}', 10.9707),
(0, '41NDP533', '{\"engine\":{\"health\":99.9992919921875,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99981876374703,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99881722011398,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.9994714163859,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99919597509255,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99979358677769,\"type\":\"stock_transmition\"}}', 3.85043),
(0, '80XOQ648', '{\"engine\":{\"health\":99.88668823242188,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.97749783650069,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.79201810408499,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.94071071873535,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.96062242545236,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.9728625291237,\"type\":\"stock_transmition\"}}', 3.09524),
(0, '87VHF320', '{\"engine\":{\"type\":\"stock_engine\",\"health\":10.72875289916992},\"tires\":{\"type\":\"stock_tires\",\"health\":99.70367063908995},\"oil\":{\"type\":\"stock_oil\",\"health\":97.69285700928134},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.71157784494213},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.38865971724666},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.76328398259786}}', 946.112),
(0, '40BKJ354', '{\"tires\":{\"health\":99.41479179498249,\"type\":\"stock_tires\"},\"oil\":{\"health\":95.58372039302133,\"type\":\"stock_oil\"},\"engine\":{\"health\":95.48303833007813,\"type\":\"stock_engine\"},\"brakes\":{\"health\":98.8238533471845,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.44629450680069,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.5452325033434,\"type\":\"stock_suspension\"}}', 2426.91),
(0, '23UCN075', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.82702638248529},\"oil\":{\"type\":\"stock_oil\",\"health\":98.38088211423778},\"tires\":{\"type\":\"stock_tires\",\"health\":99.71744499229668},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.79089202125077},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.54635665588369},\"engine\":{\"type\":\"stock_engine\",\"health\":10.86676254272461}}', 3859.46),
(0, '49SHH871', '{\"engine\":{\"type\":\"stock_engine\",\"health\":80.8732666015625},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96276721869659},\"oil\":{\"type\":\"stock_oil\",\"health\":99.74508424973426},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96772902665164},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.93097112438544},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97343286186009}}', 33.8392),
(0, '20AEY108', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99762995155619},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98047790013846},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99349536008777},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99720059214228},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.993508139985},\"engine\":{\"type\":\"stock_engine\",\"health\":99.95703735351563}}', 54.0693),
(0, '66MAF031', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99096661341665},\"oil\":{\"type\":\"stock_oil\",\"health\":99.92087854655775},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97986874628823},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98921373920625},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97574521864117},\"engine\":{\"type\":\"stock_engine\",\"health\":99.83237915039062}}', 0.0516682),
(0, '23PJS797', '{\"tires\":{\"health\":99.34334132438817,\"type\":\"stock_tires\"},\"oil\":{\"health\":94.87477022548713,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.05985107421876,\"type\":\"stock_engine\"},\"brakes\":{\"health\":98.64246738955254,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.35942719276128,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.4742937141753,\"type\":\"stock_suspension\"}}', 500.283),
(0, '66ZCJ536', '{\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"oil\":{\"type\":\"stock_oil\",\"health\":100}}', 0),
(0, '84SKX113', '{\"engine\":{\"type\":\"stock_engine\",\"health\":-1.03011493682861},\"tires\":{\"type\":\"stock_tires\",\"health\":99.72348605740958},\"oil\":{\"type\":\"stock_oil\",\"health\":97.91797443233256},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.73890344117192},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.4453084511312},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.78554583169547}}', 0.0535696),
(0, '27TJS056', '{\"tires\":{\"health\":99.95014644338623,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.64763707756272,\"type\":\"stock_oil\"},\"engine\":{\"health\":24.22497100830078,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.90511531021933,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9555374959247,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.9634250380654,\"type\":\"stock_suspension\"}}', 29.6223),
(0, '63PWC562', '{\"engine\":{\"health\":-1.42135972976684,\"type\":\"stock_engine\"},\"oil\":{\"health\":98.55847754111898,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.851257619318,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.80570101704362,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.81896985842249,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.61501026337396,\"type\":\"stock_brakes\"}}', 0.0178544),
(0, '29IKL245', '{\"tires\":{\"health\":99.85555496491311,\"type\":\"stock_tires\"},\"oil\":{\"health\":98.94368329415072,\"type\":\"stock_oil\"},\"engine\":{\"health\":97.66371459960938,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.71720577593453,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.86715941793418,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.89081497808545,\"type\":\"stock_suspension\"}}', 17.9409),
(0, '26RVL087', '{\"tires\":{\"health\":99.38344773744895,\"type\":\"stock_tires\"},\"oil\":{\"health\":94.89264275733828,\"type\":\"stock_oil\"},\"engine\":{\"health\":96.66812133789063,\"type\":\"stock_engine\"},\"brakes\":{\"health\":98.65967951554267,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.36505640106513,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.47959953246932,\"type\":\"stock_suspension\"}}', 1583.15),
(0, '06LYE803', '{\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.9999805202242,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99999803234587,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99999783558046,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.9999975950894,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99999494968775,\"type\":\"stock_brakes\"}}', 0),
(0, '00EBN892', '{\"engine\":{\"health\":24.87667236328125,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.96538684975534,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99593596198221,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.98997118567269,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99517162825326,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.98898606859996,\"type\":\"stock_brakes\"}}', 6.58937),
(0, '08IGP014', '{\"engine\":{\"type\":\"stock_engine\",\"health\":null},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999901399893},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999112599022},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999890444322},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999769933084},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999910363542}}', 0.0178911),
(0, '89SIC745', '{\"engine\":{\"health\":44.99720764160156,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99950364326168,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99987202126552,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99909715324518,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99986260951548,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99959160377964,\"type\":\"stock_brakes\"}}', 0.0705899),
(0, '03KGJ001', '{\"engine\":{\"type\":\"stock_engine\",\"health\":-0.79257974624633},\"tires\":{\"type\":\"stock_tires\",\"health\":99.89424070839672},\"oil\":{\"type\":\"stock_oil\",\"health\":99.85084759287861},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97357832891353},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.93190221570339},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97674431131597}}', 3093.29),
(0, '62QAS779', '{\"engine\":{\"health\":99.5487548828125,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99858531961172,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99975770972597,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.9987604206334,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99972816357439,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99927607787788,\"type\":\"stock_brakes\"}}', 0.104012),
(0, '61SCV905', '{\"engine\":{\"health\":37.20025634765625,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.87393963871436,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.98667696060459,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.9795717915887,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.98386042663349,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.96519880479491,\"type\":\"stock_brakes\"}}', 0.105009),
(0, '80MAN691', '{\"engine\":{\"health\":40.30838623046875,\"type\":\"stock_engine\"},\"oil\":{\"health\":98.87471159428097,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.88401073927254,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.84966215188727,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.85880337949303,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.69990849852657,\"type\":\"stock_brakes\"}}', 0.0662487),
(0, '09JXU608', '{\"tires\":{\"health\":99.99237656411376,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.97817433952935,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.9553955078125,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99262621083737,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99683872990814,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99731803590277,\"type\":\"stock_suspension\"}}', 64.3883),
(0, '44CBY980', '{\"tires\":{\"health\":99.99243114257495,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.95235933291346,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.7499755859375,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.98689789406457,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99391413088978,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99497886283138,\"type\":\"stock_suspension\"}}', 0.032664),
(0, '06XPG510', '{\"tires\":{\"health\":99.99999986654905,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99999879894146,\"type\":\"stock_oil\"},\"engine\":{\"health\":84.34213256835938,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99999968861445,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99999985172117,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99999987868095,\"type\":\"stock_suspension\"}}', 0),
(0, '05LXD000', '{\"tires\":{\"health\":99.99903689278362,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99742510282464,\"type\":\"stock_oil\"},\"engine\":{\"health\":24.99553833007812,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99910904437553,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9996213251496,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99967774155893,\"type\":\"stock_suspension\"}}', 0.0523863),
(0, '27QLY647', '{\"tires\":{\"health\":99.99966240317943,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99965140724791,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.999267578125,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99981100894755,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9999301298023,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99993734469055,\"type\":\"stock_suspension\"}}', 0),
(0, '41VQP180', '{\"tires\":{\"health\":99.46654304349672,\"type\":\"stock_tires\"},\"oil\":{\"health\":95.55581331258654,\"type\":\"stock_oil\"},\"engine\":{\"health\":21.97231903076171,\"type\":\"stock_engine\"},\"brakes\":{\"health\":98.83471750293805,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.44777417455703,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.54745052416587,\"type\":\"stock_suspension\"}}', 0.0382451),
(0, '65MLP775', '{\"engine\":{\"health\":99.76611328125,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.89173969477115,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.98813748773928,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.9778746544295,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.98572800516655,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.96860103389283,\"type\":\"stock_brakes\"}}', 127.976),
(0, '47FDY951', '{\"engine\":{\"type\":\"stock_engine\",\"health\":null},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999925102833},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999325925497},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999916780924},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999825239944},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999931911667}}', 0.0331609),
(0, '65GIU743', '{\"engine\":{\"type\":\"stock_engine\",\"health\":34.23500061035156},\"tires\":{\"type\":\"stock_tires\",\"health\":99.90558390937795},\"oil\":{\"type\":\"stock_oil\",\"health\":99.68039137103901},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95525334360865},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.89770216005963},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96230729911889}}', 995.321),
(0, '66HYL726', '{\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99999777811782,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99999977556746,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.9999997531242,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99999972569356,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99999942395647,\"type\":\"stock_brakes\"}}', 0.0022702),
(0, '81QLW868', '{\"engine\":{\"health\":99.7017822265625,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.81847812732188,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.97858752413834,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.94632310084789,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.97458133538756,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.94188232723691,\"type\":\"stock_brakes\"}}', 562.861),
(0, '63SYR311', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.96150512695313},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99159038082932},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97552595855629},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99646760150681},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99177727692953},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9970053510725}}', 73.1561),
(0, '87MJE890', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99998168945312},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99987916668009},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99998170013675},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99998707409083},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9999560555904},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99998724243786}}', 0.00956839),
(0, '40PAQ601', '{\"tires\":{\"health\":99.93209341479704,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.44944588297557,\"type\":\"stock_oil\"},\"engine\":{\"health\":98.54953002929688,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.85504178534288,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.93142574038676,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.94377011622967,\"type\":\"stock_suspension\"}}', 0.043444),
(0, '07XIP643', '{\"engine\":{\"type\":\"stock_engine\",\"health\":7.98499755859375},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9939972593513},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98394303539959},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99763888127534},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99444507624787},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99799069839017}}', 48.2371),
(0, '42UTI031', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.94019775390625},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98683084096592},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9625047094537},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99456260021177},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9873083067179},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99538587371529}}', 115.016),
(0, '26DZO950', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.94995727539063},\"oil\":{\"type\":\"stock_oil\",\"health\":99.96935630105631},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99537766140732},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98724893453331},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99604643903895},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98897140268868}}', 92.1552),
(0, '89RGN556', '{\"engine\":{\"type\":\"stock_engine\",\"health\":108.09775390625},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99847222502184},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99858997456339},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99970281567137},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9991820192048},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99973166818495}}', 3.86221),
(0, '48ESC573', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.98181762695313},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99603413015686},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98792137942836},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99827322970356},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99600273982726},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99853900059509}}', 35.9154),
(0, '69QRC153', '{\"tires\":{\"health\":99.99721581503775,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99765613162963,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99619140625,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.9985595762002,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9994840337461,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99953149583556,\"type\":\"stock_suspension\"}}', 432.03),
(0, '08OCZ876', '{\"engine\":{\"type\":\"stock_engine\",\"health\":108.02230224609375},\"oil\":{\"type\":\"stock_oil\",\"health\":99.95252432919061},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99327182240784},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98506889489565},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99431778985671},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98450532778384}}', 150.327),
(0, '03VOW494', '{\"engine\":{\"type\":\"stock_engine\",\"health\":107.9826416015625},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97848084171422},\"oil\":{\"type\":\"stock_oil\",\"health\":99.92779110306118},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98987356401301},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9768259665969},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99146687473386}}', 221.057),
(0, '60IPH162', '{\"tires\":{\"health\":99.99208147512913,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99696793682493,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.9953857421875,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99671222726338,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99894494133982,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99899752998572,\"type\":\"stock_suspension\"}}', 0),
(0, '00RZB175', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99844360351563},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99925534393658},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9986171275585},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99977621071362},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9994464662362},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99980604561473}}', 7.09764),
(0, '41HED475', '{\"engine\":{\"type\":\"stock_engine\",\"health\":108.02913818359375},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97458543255012},\"oil\":{\"type\":\"stock_oil\",\"health\":99.95662489142974},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99279588011432},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98195890830891},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99372748114134}}', 128.518),
(0, '44MFP578', '{\"tires\":{\"health\":99.99935521992214,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99859462703086,\"type\":\"stock_oil\"},\"engine\":{\"health\":108.097705078125,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99947441341365,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9997826248836,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99981317375648,\"type\":\"stock_suspension\"}}', 0),
(0, '89NUY583', '{\"tires\":{\"health\":99.986720414736,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.96492602184675,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.9436767578125,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.98781084504151,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99482745710066,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99559560582654,\"type\":\"stock_suspension\"}}', 111.948),
(0, '81VSN141', '{\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"}}', 0),
(0, '89EBI924', '{\"tires\":{\"health\":99.99226449837568,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.97491011442098,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.96038208007812,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99186262837555,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99645824204433,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99701133051454,\"type\":\"stock_suspension\"}}', 76.3653),
(0, '60BCD723', '{\"tires\":{\"health\":99.95436814237319,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.84717586607151,\"type\":\"stock_oil\"},\"engine\":{\"health\":107.84932861328125,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.95092493149488,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9785603068505,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.98193223639825,\"type\":\"stock_suspension\"}}', 470.034),
(0, '27CWD004', '{\"engine\":{\"health\":99.98034057617187,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.9869869310209,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99839678657122,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99540948508455,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99811110319119,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99558862319566,\"type\":\"stock_brakes\"}}', 39.0633),
(0, '63OJN598', '{\"tires\":{\"health\":99.95533497833933,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.898472595507,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.89357299804688,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.96266241871393,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.98446829359208,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.98667912361056,\"type\":\"stock_suspension\"}}', 296.808),
(0, '67CRB215', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99536743164063},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99958793927978},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99664785352333},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99958259920035},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99911785832068},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99965776298208}}', 9.91135),
(0, '62HXK007', '{\"engine\":{\"type\":\"stock_engine\",\"health\":108.0369384765625},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98790617438081},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9606040955591},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99444346832685},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98724006085357},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99531202958785}}', 119.252),
(0, '67CHE060', '{\"tires\":{\"health\":99.99999478461342,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99995306152074,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99986572265625,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99998783076464,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99999420512603,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99999525873948,\"type\":\"stock_suspension\"}}', 5.64359),
(0, '04VDD921', '{\"tires\":{\"health\":99.98298067728175,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.94627704305587,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.91126098632813,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.98242566329242,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99237538306815,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99355873664656,\"type\":\"stock_suspension\"}}', 171.465),
(0, '43LRT185', '{\"brakes\":{\"health\":99.5339745273204,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.79238903435213,\"type\":\"stock_transmition\"},\"oil\":{\"health\":98.47285518017833,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.82623486644173,\"type\":\"stock_suspension\"},\"engine\":{\"health\":40.84390563964844,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.61787423959338,\"type\":\"stock_tires\"}}', 4800.74),
(0, '41UPY233', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.8732904941682},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.6662922234202},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.84715347182696},\"tires\":{\"type\":\"stock_tires\",\"health\":99.77969268643618},\"oil\":{\"type\":\"stock_oil\",\"health\":98.82741203994128},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0}}', 3689.68),
(0, '28BKR456', '{\"tires\":{\"type\":\"stock_tires\",\"health\":100},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":100},\"oil\":{\"type\":\"stock_oil\",\"health\":100},\"suspension\":{\"type\":\"stock_suspension\",\"health\":100},\"transmition\":{\"type\":\"stock_transmition\",\"health\":100}}', 0),
(0, '03BIN621', '{\"transmition\":{\"health\":98.84227277069168,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.04239108126456,\"type\":\"stock_suspension\"},\"oil\":{\"health\":91.03336039492037,\"type\":\"stock_oil\"},\"brakes\":{\"health\":97.48886568884157,\"type\":\"stock_brakes\"},\"engine\":{\"health\":95.42844848632812,\"type\":\"stock_engine\"},\"tires\":{\"health\":98.43864915112137,\"type\":\"stock_tires\"}}', 28328.4),
(0, '21DSK908', '{\"transmition\":{\"health\":99.96440855249243,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.97035577284413,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.73245777131595,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.9212235304324,\"type\":\"stock_brakes\"},\"engine\":{\"health\":95.60101928710938,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.94174390352815,\"type\":\"stock_tires\"}}', 848.884),
(0, '21VMV655', '{\"transmition\":{\"health\":99.9980098656995,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99826899396735,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.98794739972496,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99502981761046,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.973681640625,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.9930680267986,\"type\":\"stock_tires\"}}', 36.8428),
(0, '48TZO522', '{\"transmition\":{\"health\":99.97727121657087,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.980711457052,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.84331057185965,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.94693910970274,\"type\":\"stock_brakes\"},\"engine\":{\"health\":62.03128051757812,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.94489620179005,\"type\":\"stock_tires\"}}', 492.851),
(0, '88IDQ786', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.83658341316837},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.63090199207879},\"oil\":{\"type\":\"stock_oil\",\"health\":98.80964483534683},\"engine\":{\"type\":\"stock_engine\",\"health\":97.3725341796875},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.86292887368633},\"tires\":{\"type\":\"stock_tires\",\"health\":99.68442443060316}}', 3733.33),
(0, '48YHB000', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.90579898968284},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.7926110168989},\"oil\":{\"type\":\"stock_oil\",\"health\":99.2861728180981},\"engine\":{\"type\":\"stock_engine\",\"health\":95.05848999023438},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92168399656724},\"tires\":{\"type\":\"stock_tires\",\"health\":99.85303449138648}}', 2254.37),
(0, '47IFK634', '{\"suspension\":{\"health\":99.83990599752278,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.56450036058222,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.81018471913056,\"type\":\"stock_transmition\"},\"oil\":{\"health\":98.65220362287181,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.58939717485804,\"type\":\"stock_tires\"},\"engine\":{\"health\":97.03143310546875,\"type\":\"stock_engine\"}}', 4250.33),
(0, '23JIV072', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.96893962048384},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.95704039877352},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98380363193121},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9805351350231},\"engine\":{\"type\":\"stock_engine\",\"health\":97.59337158203125},\"oil\":{\"type\":\"stock_oil\",\"health\":99.85304914395803}}', 468.842),
(0, '49UBH846', '{\"oil\":{\"health\":99.88984395421345,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.97002189217374,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.98480780155866,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.98724424264934,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.96558790185353,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.81915893554688,\"type\":\"stock_engine\"}}', 354.935),
(0, '69CJF137', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99933841863981},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99813166473634},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99764855302974},\"engine\":{\"type\":\"stock_engine\",\"health\":99.989306640625},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99923194256917},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99509229591257}}', 15.3915),
(0, '09VYX530', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999992345122},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9999998035248},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999991579634},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999990644038},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9999992421671}}', 0.000616701),
(0, '69MXL865', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96581863871222},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.91059506516139},\"tires\":{\"type\":\"stock_tires\",\"health\":99.94644940574753},\"engine\":{\"type\":\"stock_engine\",\"health\":98.99370727539062},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95862106021974},\"oil\":{\"type\":\"stock_oil\",\"health\":99.67773484589405}}', 950.001),
(0, '64VOI811', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96111682572702},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.897598147775},\"tires\":{\"type\":\"stock_tires\",\"health\":99.93241939348502},\"engine\":{\"type\":\"stock_engine\",\"health\":86.985546875},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95309557388646},\"oil\":{\"type\":\"stock_oil\",\"health\":99.64014444361128}}', 1137.71),
(0, '84CXC863', '{\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"},\"tires\":{\"health\":100,\"type\":\"stock_tires\"}}', 0),
(0, '61WWH869', '{\"engine\":{\"type\":\"stock_engine\",\"health\":95.39029541015626},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.45443700225818},\"tires\":{\"type\":\"stock_tires\",\"health\":99.7498656738357},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.78814123870966},\"oil\":{\"type\":\"stock_oil\",\"health\":97.91987997094603},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.74148822281102}}', 0.0121993),
(0, '07JJY122', '{\"engine\":{\"type\":\"stock_engine\",\"health\":59.07532348632812},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.88307523230295},\"tires\":{\"type\":\"stock_tires\",\"health\":99.93994570301779},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9548702938737},\"oil\":{\"type\":\"stock_oil\",\"health\":99.56374451409025},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94510143583914}}', 50.9133),
(0, '62XIJ198', '{\"engine\":{\"health\":-0.98351688385009,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.40335846156367,\"type\":\"stock_tires\"},\"brakes\":{\"health\":98.7696756758431,\"type\":\"stock_brakes\"},\"oil\":{\"health\":95.35727885450349,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.41957124952298,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.52362011997902,\"type\":\"stock_suspension\"}}', 282.924),
(0, '29UWT107', '{\"engine\":{\"type\":\"stock_engine\",\"health\":65.9705810546875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.90848906641856},\"tires\":{\"type\":\"stock_tires\",\"health\":99.43589142346564},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.57885656360017},\"oil\":{\"type\":\"stock_oil\",\"health\":95.93266393115624},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.48778725554839}}', 1549.07),
(0, '68VCN059', '{\"engine\":{\"type\":\"stock_engine\",\"health\":57.78235473632812},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.60354967525622},\"tires\":{\"type\":\"stock_tires\",\"health\":99.80965383253192},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.84641322533605},\"oil\":{\"type\":\"stock_oil\",\"health\":98.50113210364134},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.81281718091215}}', 8.35226),
(0, '40EKB735', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99984741210938},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99978944980612},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99942061995984},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9999388934138},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99991296223041},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99993810225722}}', 0.112893),
(0, '01AIR564', '{\"engine\":{\"type\":\"stock_engine\",\"health\":89.49149780273437},\"brakes\":{\"type\":\"stock_brakes\",\"health\":96.10412299850938},\"tires\":{\"type\":\"stock_tires\",\"health\":97.45998478350878},\"suspension\":{\"type\":\"stock_suspension\",\"health\":98.51936022408388},\"oil\":{\"type\":\"stock_oil\",\"health\":86.26321713606082},\"transmition\":{\"type\":\"stock_transmition\",\"health\":98.21308350641448}}', 43470.1),
(0, '02XFF628', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99833984375},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9958960813373},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98846784246617},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99881918124984},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99865813169633},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99881228911575}}', 0.855518),
(0, '43PEL493', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99859008789062},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99930923704494},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99925292872428},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99977215975342},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99820190752614},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99976016699456}}', 1.66393),
(0, '80AQZ229', '{\"oil\":{\"health\":96.18724841286292,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.57903799333939,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":98.88273965029103,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.18611142808581,\"type\":\"stock_tires\"},\"engine\":{\"health\":15.79160766601562,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.4942506901013,\"type\":\"stock_transmition\"}}', 11997),
(0, '07LFO548', '{\"oil\":{\"health\":99.99996570538385,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99999122235366,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.9999720154695,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99993832499615,\"type\":\"stock_tires\"},\"engine\":{\"health\":88.69992065429688,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99999057063181,\"type\":\"stock_transmition\"}}', 0.0470116),
(0, '88HNJ200', '{\"engine\":{\"type\":\"stock_engine\",\"health\":94.7347412109375},\"oil\":{\"type\":\"stock_oil\",\"health\":99.93451428939336},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97669884300888},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99162552846356},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97356009656807},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99019469670499}}', 203.079),
(0, '60HSH336', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.46920166015625},\"oil\":{\"type\":\"stock_oil\",\"health\":99.75719109410672},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.90973284190102},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96787179751402},\"tires\":{\"type\":\"stock_tires\",\"health\":99.89023490409046},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96259047594222}}', 732.906),
(0, '47RLZ451', '{\"engine\":{\"type\":\"stock_engine\",\"health\":18.28170776367187},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92104853176135},\"oil\":{\"type\":\"stock_oil\",\"health\":99.28299056576468},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.90509907218564},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.7906575913834},\"tires\":{\"type\":\"stock_tires\",\"health\":99.8492611736259}}', 2253.26),
(0, '60QWG154', '{\"engine\":{\"type\":\"stock_engine\",\"health\":10.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.88661737016597},\"oil\":{\"type\":\"stock_oil\",\"health\":98.9603184124187},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.86346583385172},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.70039724810111},\"tires\":{\"type\":\"stock_tires\",\"health\":99.79339273104886}}', 3279.93),
(0, '08DOU945', '{\"engine\":{\"type\":\"stock_engine\",\"health\":24.15731811523437},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.42970340688912},\"oil\":{\"type\":\"stock_oil\",\"health\":94.77808224830315},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.31344042373147},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.49226645337564},\"tires\":{\"type\":\"stock_tires\",\"health\":98.95336654436828}}', 16457.3);
INSERT INTO `vehicle_parts` (`id`, `plate`, `parts`, `mileage`) VALUES
(0, '45OKD581', '{\"engine\":{\"type\":\"stock_engine\",\"health\":90.97877197265625},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.72112810103903},\"oil\":{\"type\":\"stock_oil\",\"health\":97.42813246865272},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.66382235234086},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.2646324981706},\"tires\":{\"type\":\"stock_tires\",\"health\":99.50637624576133}}', 8044.63),
(0, '04URG649', '{\"engine\":{\"type\":\"stock_engine\",\"health\":76.23086547851563},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.85625708220943},\"oil\":{\"type\":\"stock_oil\",\"health\":98.67092526449962},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.82663470913562},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.62131375464303},\"tires\":{\"type\":\"stock_tires\",\"health\":99.74894686369997}}', 4141.44),
(0, '00XGN486', '{\"engine\":{\"type\":\"stock_engine\",\"health\":96.44349975585938},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.8364055789812},\"oil\":{\"type\":\"stock_oil\",\"health\":98.39843801051535},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.80049627007809},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.57823862382624},\"tires\":{\"type\":\"stock_tires\",\"health\":99.80222361137261}}', 0.0491031),
(0, '41CWA526', '{\"engine\":{\"type\":\"stock_engine\",\"health\":98.97009887695313},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97033944425593},\"oil\":{\"type\":\"stock_oil\",\"health\":99.76346077606233},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9651580930518},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.91794972995254},\"tires\":{\"type\":\"stock_tires\",\"health\":99.91090755828384}}', 728.082),
(0, '40HAH816', '{\"engine\":{\"type\":\"stock_engine\",\"health\":97.07689208984375},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.86384928011137},\"oil\":{\"type\":\"stock_oil\",\"health\":98.68292181326564},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.83435440260947},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.64735096589947},\"tires\":{\"type\":\"stock_tires\",\"health\":99.81976264507522}}', 0.0899054),
(0, '20ARE966', '{\"engine\":{\"type\":\"stock_engine\",\"health\":22.50015258789062},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.90773257154463},\"oil\":{\"type\":\"stock_oil\",\"health\":99.16720693065186},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.88922016700775},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.75481609946039},\"tires\":{\"type\":\"stock_tires\",\"health\":99.81874751714205}}', 2648.14),
(0, '21PKE617', '{\"engine\":{\"type\":\"stock_engine\",\"health\":76.12093505859375},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.84349823689185},\"oil\":{\"type\":\"stock_oil\",\"health\":98.59999390098841},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.81240800202215},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.58282281557493},\"tires\":{\"type\":\"stock_tires\",\"health\":99.68014627544379}}', 4422.37),
(0, '26YGO817', '{\"engine\":{\"type\":\"stock_engine\",\"health\":98.50914306640625},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.88136357527758},\"oil\":{\"type\":\"stock_oil\",\"health\":98.91571606824033},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.85722749751203},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.68614404008734},\"tires\":{\"type\":\"stock_tires\",\"health\":99.78028566729098}}', 3389.27),
(0, '80LLT663', '{\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"}}', 0),
(0, '62YQK070', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.7889670736934},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.87188364591684},\"engine\":{\"type\":\"stock_engine\",\"health\":86.2416748046875},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.89326487697615},\"oil\":{\"type\":\"stock_oil\",\"health\":99.03799853137171},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.7162282398667}}', 3080.81),
(0, 'LUXURY', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.43986800545157},\"oil\":{\"type\":\"stock_oil\",\"health\":98.03298863972585},\"engine\":{\"type\":\"stock_engine\",\"health\":99.97868041992187},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.78735110635371},\"tires\":{\"type\":\"stock_tires\",\"health\":99.62940922668342},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.74350845558829}}', 6207.27),
(0, '09EIE765', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99934319463744},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99812341324989},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9998291015625},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99981234132497},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99983110719248},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99981234132497}}', 0),
(0, '81LXM798', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99980607973117},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99944594208897},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99991455078126},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99994459420889},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99995013478797},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99994459420889}}', 0.00300415),
(0, '80YOR058', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9997415496849},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99926195884327},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99989624023438},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99992614044038},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99993296572744},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9999261265967}}', 0.00131533),
(0, '82NTU780', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.84994989653315},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9019854249911},\"engine\":{\"type\":\"stock_engine\",\"health\":98.82876586914063},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94298094801305},\"oil\":{\"type\":\"stock_oil\",\"health\":99.47120156065664},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.93119128646846}}', 1664.89),
(0, '24OEX511', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99958367141011},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99907084683822},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99900512695312},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99986991070289},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99950700297124},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99986062881}}', 1.31169),
(0, '08IUJ490', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.87154480708274},\"tires\":{\"type\":\"stock_tires\",\"health\":99.91603762362927},\"engine\":{\"type\":\"stock_engine\",\"health\":98.99850463867188},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95118932013669},\"oil\":{\"type\":\"stock_oil\",\"health\":99.5473850172963},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94109832332622}}', 1420.07),
(0, '04ZRM289', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.83158726931709},\"tires\":{\"type\":\"stock_tires\",\"health\":99.8891025322011},\"engine\":{\"type\":\"stock_engine\",\"health\":98.68846435546875},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.93604114592213},\"oil\":{\"type\":\"stock_oil\",\"health\":99.40780560921526},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9228403700674}}', 1858.83),
(0, '62KEV867', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99943228943586},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99935917325475},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99771728515626},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99979582036402},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9983995274814},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9997608398493}}', 4.69729),
(0, '22MOP747', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99907049993269},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99895612113194},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99435424804688},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99966547301811},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99737167643981},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99960801007299}}', 7.95876),
(0, '80VMN382', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.70472720520545},\"tires\":{\"type\":\"stock_tires\",\"health\":99.80272074066107},\"engine\":{\"type\":\"stock_engine\",\"health\":97.22969360351563},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.88798469526532},\"oil\":{\"type\":\"stock_oil\",\"health\":98.96594306932873},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.86494165436645}}', 3242.75),
(0, '69IOL118', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99704730084099},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9965863356599},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98280639648438},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99894150026903},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99179544049733},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99876244076914}}', 24.6899),
(0, '40RRY198', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9220001742018},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9390925613474},\"engine\":{\"type\":\"stock_engine\",\"health\":99.42516479492187},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97078602718737},\"oil\":{\"type\":\"stock_oil\",\"health\":99.7398770193831},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96501243693828}}', 818.221),
(0, '27HKN812', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.79137349777089},\"tires\":{\"type\":\"stock_tires\",\"health\":99.87445306151969},\"engine\":{\"type\":\"stock_engine\",\"health\":98.334912109375},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92026285436536},\"oil\":{\"type\":\"stock_oil\",\"health\":99.24886346097598},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.90348820972455}}', 2369.19),
(0, '48EFV289', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.85615266926134},\"tires\":{\"type\":\"stock_tires\",\"health\":99.91789379153123},\"engine\":{\"type\":\"stock_engine\",\"health\":98.83677368164062},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94483076627938},\"oil\":{\"type\":\"stock_oil\",\"health\":99.47548531227707},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.93310576930728}}', 1654.91),
(0, '25VXS493', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.2440407905071},\"tires\":{\"type\":\"stock_tires\",\"health\":99.54656126782712},\"engine\":{\"type\":\"stock_engine\",\"health\":97.70599365234375},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.71100867160611},\"oil\":{\"type\":\"stock_oil\",\"health\":97.27605713412022},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.65017285258551}}', 8591.25),
(0, '43DBK703', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.63450074678495},\"tires\":{\"type\":\"stock_tires\",\"health\":99.77597764401605},\"engine\":{\"type\":\"stock_engine\",\"health\":97.09721069335937},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.86048025264944},\"oil\":{\"type\":\"stock_oil\",\"health\":98.69009783888078},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.831237428242}}', 4127.84),
(0, '45ZWA467', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.82535362455136},\"tires\":{\"type\":\"stock_tires\",\"health\":99.89050414687503},\"engine\":{\"type\":\"stock_engine\",\"health\":33.34896545410156},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.93343819960684},\"oil\":{\"type\":\"stock_oil\",\"health\":99.37772366534768},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.91955250295749}}', 1955.6),
(0, '03LUG764', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.76473628189851},\"tires\":{\"type\":\"stock_tires\",\"health\":99.85506015759546},\"engine\":{\"type\":\"stock_engine\",\"health\":75.31680297851563},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.91022597838684},\"oil\":{\"type\":\"stock_oil\",\"health\":99.15794457565518},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.89142946468573}}', 2646.59),
(0, '87EIE203', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.66845271109236},\"tires\":{\"type\":\"stock_tires\",\"health\":99.80259592635598},\"engine\":{\"type\":\"stock_engine\",\"health\":99.42821655273437},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.87319203655224},\"oil\":{\"type\":\"stock_oil\",\"health\":98.80316720958482},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.84645856437187}}', 3764.9),
(0, '49NPC458', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.73066132907869},\"tires\":{\"type\":\"stock_tires\",\"health\":99.82714766890799},\"engine\":{\"type\":\"stock_engine\",\"health\":97.88683471679687},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.89751938905168},\"oil\":{\"type\":\"stock_oil\",\"health\":99.04624115739348},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.87624713490966}}', 2996.49),
(0, '49SEX732', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9565158290764},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96833514579152},\"engine\":{\"type\":\"stock_engine\",\"health\":99.67614135742187},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98361549622801},\"oil\":{\"type\":\"stock_oil\",\"health\":99.85158859249259},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98031511711419}}', 461.466),
(0, '46KFA059', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97375975433806},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97755168984028},\"engine\":{\"type\":\"stock_engine\",\"health\":99.81328735351562},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99025577859841},\"oil\":{\"type\":\"stock_oil\",\"health\":99.91539366874962},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9883832716358}}', 263.97),
(0, '66BMM931', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97467700298953},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98205897705572},\"engine\":{\"type\":\"stock_engine\",\"health\":99.81170043945312},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9904371404746},\"oil\":{\"type\":\"stock_oil\",\"health\":99.91283296004666},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98849737587259}}', 269.961),
(0, '09LQS389', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.93449059704325},\"tires\":{\"type\":\"stock_tires\",\"health\":99.95865493377002},\"engine\":{\"type\":\"stock_engine\",\"health\":99.48983154296875},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97504453974786},\"oil\":{\"type\":\"stock_oil\",\"health\":99.76699111648976},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96984579976555}}', 729.091),
(0, '07KET382', '{\"tires\":{\"health\":99.99423079463507,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.97241821289063,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9983261222035,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99529179487658,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.98740068375938,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99805222525977,\"type\":\"stock_transmition\"}}', 38.655),
(0, '24KFA912', '{\"tires\":{\"health\":99.9477163687114,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.42275390625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.97151645324849,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.92469504485055,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.73920002971788,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.96570991551504,\"type\":\"stock_transmition\"}}', 822.742),
(0, '48ZYX137', '{\"tires\":{\"health\":99.98481354475418,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99838256835938,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99848026004499,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99468205787692,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99862116677376,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.9984799867791,\"type\":\"stock_transmition\"}}', 0.0289761),
(0, '82FCS243', '{\"tires\":{\"health\":99.93845314311142,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.86045789127772,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.98167690562485,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.97863860133386,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.94863004771405,\"type\":\"stock_brakes\"},\"engine\":{\"health\":95.90283203125,\"type\":\"stock_engine\"}}', 429.63),
(0, 'KFDJ6135', '{\"tires\":{\"health\":99.99999969635876,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99999726722892,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99999972396252,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99999966262087,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99999929150379,\"type\":\"stock_brakes\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"}}', 0.0113314),
(0, 'YCNC0811', '{\"tires\":{\"health\":99.99965544664818,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99996716270405,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99996537871543,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99996533727988,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99987899953334,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99995727539063,\"type\":\"stock_engine\"}}', 0.00514304),
(0, 'QTIR9104', '{\"tires\":{\"health\":99.84607242679928,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.35562345180245,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.9273512964209,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.9130551800015,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.80577322643491,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.5998046875,\"type\":\"stock_engine\"}}', 2902.18),
(0, '46MXM012', '{\"suspension\":{\"health\":99.99851301828956,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99568459753596,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.98931884765625,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99360775255623,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99830134364139,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99008889320854,\"type\":\"stock_oil\"}}', 29.1319),
(0, '88CBY492', '{\"suspension\":{\"health\":99.99926612371438,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.9974314330006,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99925537109375,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99266123714448,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99926612371438,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.999339511343,\"type\":\"stock_oil\"}}', 0),
(0, 'BUS3524', '{\"suspension\":{\"health\":99.99720484671383,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99208111627422,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.97950860313417,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.98982449539223,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.95525512695312,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99676100081484,\"type\":\"stock_transmition\"}}', 62.6044),
(0, '25CQJ588', '{\"suspension\":{\"health\":99.99871807973288,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.9955134030061,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99884507663583,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.9871819791776,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99805297851563,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99871805022366,\"type\":\"stock_transmition\"}}', 0.00559521),
(0, 'POSTE', '{\"suspension\":{\"health\":99.9726436399704,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.92351464895424,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.78963943865567,\"type\":\"stock_oil\"},\"engine\":{\"health\":87.99993286132812,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.91011246105667,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.9680574711478,\"type\":\"stock_transmition\"}}', 4397.41),
(0, 'BUS6954', '{\"suspension\":{\"health\":99.85313126721202,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.60021242201022,\"type\":\"stock_brakes\"},\"oil\":{\"health\":98.7660929109866,\"type\":\"stock_oil\"},\"engine\":{\"health\":95.38873291015625,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.62079651019553,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.82592817512578,\"type\":\"stock_transmition\"}}', 3880.57),
(0, 'FRT2416', '{\"suspension\":{\"health\":99.99750203257092,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99313381595349,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.97965506045998,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99291601935384,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.96868286132812,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99705519877209,\"type\":\"stock_transmition\"}}', 63.1333),
(0, 'FRT2008', '{\"suspension\":{\"health\":99.99918605598983,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99762820942158,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99466767777048,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99640922393445,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.9918212890625,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99907248135722,\"type\":\"stock_transmition\"}}', 16.1115),
(0, 'FRT2276', '{\"suspension\":{\"health\":99.99879755470607,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99666172885681,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.9905257423047,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99627435891466,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.98550415039063,\"type\":\"stock_engine\"},\"transmition\":{\"health\":99.99859034342383,\"type\":\"stock_transmition\"}}', 29.289),
(0, '69LEG523', '{\"oil\":{\"type\":\"stock_oil\",\"health\":93.95624961960069},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.34086259278051},\"tires\":{\"type\":\"stock_tires\",\"health\":98.79859123377074},\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.25825888209845},\"engine\":{\"type\":\"stock_engine\",\"health\":97.1779296875},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.20628168626377}}', 19098.4),
(0, '84SUE045', '{\"tires\":{\"health\":99.92424099538215,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.97158813476563,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99041263351438,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.98991039480737,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.97103070252187,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.96855361987883,\"type\":\"stock_brakes\"}}', 72.3025),
(0, '07NRB540', '{\"tires\":{\"health\":99.96562660903833,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99122314453125,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99585763854209,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99568160299633,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.9891424350838,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.98624108419443,\"type\":\"stock_brakes\"}}', 25.5397),
(0, '07ZCS392', '{\"tires\":{\"health\":99.95902344857234,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99195556640625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9952865166803,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99513275184246,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.98953038907774,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.98414862070638,\"type\":\"stock_brakes\"}}', 22.3941),
(0, '46MZY994', '{\"tires\":{\"health\":99.96782597148945,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.98853149414063,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99597244313532,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99577015748915,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.98818263015308,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.98675315069196,\"type\":\"stock_brakes\"}}', 29.3463),
(0, '87OXB742', '{\"tires\":{\"health\":99.94796564216381,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.98114624023438,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99284300913846,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99235523009313,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.97380365688776,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.97699920398186,\"type\":\"stock_brakes\"}}', 69.1077),
(0, '81ZOO114', '{\"tires\":{\"health\":99.93021824577235,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.98709106445313,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99178808718625,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99148003790055,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.98013328238933,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.9725521121579,\"type\":\"stock_brakes\"}}', 44.4224),
(0, '67ROD417', '{\"tires\":{\"health\":99.82527852944124,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.95691528320313,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.93089430184615,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.91800202941276,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.41566783810456,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.81227760069173,\"type\":\"stock_brakes\"}}', 1920.64),
(0, '06EIR633', '{\"tires\":{\"health\":99.97050641755784,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99249877929688,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99601725714618,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.9957592335234,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.98596557471194,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.98714409923064,\"type\":\"stock_brakes\"}}', 36.9398),
(0, '00YLM874', '{\"tires\":{\"health\":99.9556893164684,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.9723876953125,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99305119497774,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99242254662093,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.96828581703488,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.97831950552362,\"type\":\"stock_brakes\"}}', 90.0475),
(0, '29DHW950', '{\"tires\":{\"health\":99.96945048415746,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99207153320313,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99623099282074,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99605270178611,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.98938710663187,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.98755729722308,\"type\":\"stock_brakes\"}}', 25.7774),
(0, '65MSH159', '{\"tires\":{\"health\":99.96773948473443,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.9930419921875,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9953671881262,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99501593710338,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.98160480288782,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.98526041274158,\"type\":\"stock_brakes\"}}', 50.3528),
(0, '46JMQ702', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.97848072866121},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99295351097797},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9804701623131},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99173139814693},\"oil\":{\"type\":\"stock_oil\",\"health\":99.94416259022474},\"engine\":{\"type\":\"stock_engine\",\"health\":99.87745361328125}}', 177.764),
(0, 'CHRS01', '{\"brakes\":{\"health\":99.36798567681908,\"type\":\"stock_brakes\"},\"oil\":{\"health\":97.92679782723929,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.48319842053582,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.76428207781814,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.71833007676162,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.99990234375,\"type\":\"stock_engine\"}}', 6653.73),
(0, 'CVSI01', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99254121086537},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98654033350214},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9998779296875},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99753582382138},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99725824584765},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98647523606391}}', 39.4976),
(0, '20HVU284', '{\"oil\":{\"health\":99.98619728430636,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.9787353515625,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99500787419389,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99528033266042,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99798543436074,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99828820220464,\"type\":\"stock_suspension\"}}', 43.5284),
(0, '07LMG764', '{\"engine\":{\"health\":99.999951171875,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99996911681515,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.9999919932484,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99999656853501,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99999618726115,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99999688048635,\"type\":\"stock_suspension\"}}', 0.0437825),
(0, '27ZMO065', '{\"engine\":{\"health\":71.74075927734376,\"type\":\"stock_engine\"},\"oil\":{\"health\":98.52146745745233,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.5720902731354,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.7005942890096,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.80533274402903,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.83824516857864,\"type\":\"stock_suspension\"}}', 4738.15),
(0, '23OSX127', '{\"tires\":{\"health\":99.995091102995,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99950736606384,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99953899111846,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99827761038476,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99950693054935,\"type\":\"stock_transmition\"},\"engine\":{\"health\":89.6870849609375,\"type\":\"stock_engine\"}}', 0.0314444),
(0, '41QBI952', '{\"engine\":{\"health\":88.24637451171876,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.98936576623874,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.9944315120274,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.9902979600183,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99792210730678,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99814342372943,\"type\":\"stock_suspension\"}}', 31.7636),
(0, '69RRC590', '{\"tires\":{\"health\":99.71987532537531,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.87149023728219,\"type\":\"stock_suspension\"},\"oil\":{\"health\":98.86807643007022,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.65560625247737,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.84639727966474,\"type\":\"stock_transmition\"},\"engine\":{\"health\":10.0,\"type\":\"stock_engine\"}}', 3550.19),
(0, '63FRA308', '{\"engine\":{\"health\":99.99696044921875,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99851326560762,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99878348387303,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99731616707034,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99959031200817,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99961854471525,\"type\":\"stock_suspension\"}}', 4.11786),
(0, 'CHRS02', '{\"tires\":{\"health\":99.83798542433097,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.75520045734639,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.1404162659264,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.999560546875,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.90706635634841,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.88790725869935,\"type\":\"stock_transmition\"}}', 2758.59),
(0, '89NPH992', '{\"tires\":{\"health\":99.82160754296818,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.91141174623319,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.36049820012609,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.92554741217978,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.79878573961075,\"type\":\"stock_brakes\"},\"engine\":{\"health\":98.95379638671875,\"type\":\"stock_engine\"}}', 2013.89),
(0, '40DAH982', '{\"tires\":{\"health\":99.95531797025758,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99189023782717,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.9638888775337,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99261782208252,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.97721823116484,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.98963623046875,\"type\":\"stock_engine\"}}', 103.459),
(0, '44HUZ162', '{\"tires\":{\"health\":99.89406549347575,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.98845839434644,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.98211066921269,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.9886478359044,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.96106308022631,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99998779296875,\"type\":\"stock_engine\"}}', 26.6755),
(0, '27PJE155', '{\"tires\":{\"health\":99.9615878505737,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.97498422770231,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.8099508456395,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.97921490849252,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.94502103904289,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.58541870117188,\"type\":\"stock_engine\"}}', 595.607),
(0, '09DPU418', '{\"tires\":{\"health\":99.98310232884868,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.98613255585015,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.89116844900174,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.98856565815479,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.97019883322135,\"type\":\"stock_brakes\"},\"engine\":{\"health\":41.83834228515625,\"type\":\"stock_engine\"}}', 342.491),
(0, '20XFH877', '{\"tires\":{\"health\":99.75696473152725,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.83336324092216,\"type\":\"stock_transmition\"},\"oil\":{\"health\":98.72387387061016,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.86180144915983,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.6357455466594,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.29339599609375,\"type\":\"stock_engine\"}}', 4008.5),
(0, '84TMP323', '{\"tires\":{\"health\":99.99729424871315,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99956236999728,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99828438014782,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99959574759449,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99872530248894,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99646606445313,\"type\":\"stock_engine\"}}', 4.55057),
(0, '81KFT436', '{\"tires\":{\"health\":99.76073723877373,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.85654945366218,\"type\":\"stock_transmition\"},\"oil\":{\"health\":98.92520797472612,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.88043042673229,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.68180658045663,\"type\":\"stock_brakes\"},\"engine\":{\"health\":89.56914672851562,\"type\":\"stock_engine\"}}', 3322.86),
(0, '21XIO512', '{\"tires\":{\"health\":99.89731113082391,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.93244233378563,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.48592424223536,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.9438886433354,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.85168475178334,\"type\":\"stock_brakes\"},\"engine\":{\"health\":89.58187866210938,\"type\":\"stock_engine\"}}', 1555.09),
(0, '07AUJ529', '{\"tires\":{\"health\":99.58498824962639,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.69661112452943,\"type\":\"stock_transmition\"},\"oil\":{\"health\":97.65487150315345,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.74893633940104,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.34104309036569,\"type\":\"stock_brakes\"},\"engine\":{\"health\":82.49190673828125,\"type\":\"stock_engine\"}}', 7397.98),
(0, '88QCY824', '{\"tires\":{\"health\":99.80297880794777,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.8678631828637,\"type\":\"stock_transmition\"},\"oil\":{\"health\":98.99148365017763,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.89032765797474,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.71049759837871,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.96104125976562,\"type\":\"stock_engine\"}}', 3183.22),
(0, '49KSM609', '{\"suspension\":{\"health\":99.9999637581034,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99996370434873,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99996520522858,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99963973390898,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.9998733791316,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.15549926757812,\"type\":\"stock_engine\"}}', 0.00582841),
(0, '21VYV008', '{\"engine\":{\"health\":88.641650390625,\"type\":\"stock_engine\"},\"oil\":{\"health\":95.65180163080713,\"type\":\"stock_oil\"},\"brakes\":{\"health\":98.71461837599773,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.51679798719735,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.03781513457865,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.42017288700768,\"type\":\"stock_transmition\"}}', 13783.3),
(0, '48LVB585', '{\"engine\":{\"health\":99.99984741210938,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99989906651128,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99964760404436,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.9999007584754,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.9989989731492,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99989885906969,\"type\":\"stock_transmition\"}}', 0.0121984),
(0, '87LFQ540', '{\"engine\":{\"health\":23.3794937133789,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.86495388559023,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.63785814863926,\"type\":\"stock_brakes\"},\"oil\":{\"health\":98.81273427386398,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.70342169882055,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.83863970724048,\"type\":\"stock_transmition\"}}', 3713.24),
(0, '24VFU279', '{\"engine\":{\"health\":10.0,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.96876193012929,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.91584140958854,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.72913014367656,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.92767761036387,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.96276796485916,\"type\":\"stock_transmition\"}}', 849.074),
(0, '61NEH780', '{\"oil\":{\"type\":\"stock_oil\",\"health\":98.90523244313339},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.84606926744165},\"tires\":{\"type\":\"stock_tires\",\"health\":99.66926101717152},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.87021648707716},\"engine\":{\"type\":\"stock_engine\",\"health\":70.59706420898438},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.64717602723874}}', 3426.75),
(0, '69JTG199', '{\"oil\":{\"type\":\"stock_oil\",\"health\":90.88972607334202},\"engine\":{\"type\":\"stock_engine\",\"health\":10.0},\"transmition\":{\"type\":\"stock_transmition\",\"health\":98.8092732958085},\"tires\":{\"type\":\"stock_tires\",\"health\":98.25265532270181},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.01226874764846},\"brakes\":{\"type\":\"stock_brakes\",\"health\":97.39552151450069}}', 28814.3),
(0, '45HDI507', '{\"oil\":{\"type\":\"stock_oil\",\"health\":92.45431969716594},\"transmition\":{\"type\":\"stock_transmition\",\"health\":98.99412297625895},\"tires\":{\"type\":\"stock_tires\",\"health\":98.3339461420124},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.16180961720538},\"engine\":{\"type\":\"stock_engine\",\"health\":10.0},\"brakes\":{\"type\":\"stock_brakes\",\"health\":97.7706175522298}}', 23775.3),
(0, '42BBE529', '{\"oil\":{\"type\":\"stock_oil\",\"health\":97.92879025851583},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.78837002780276},\"engine\":{\"type\":\"stock_engine\",\"health\":49.33153686523437},\"tires\":{\"type\":\"stock_tires\",\"health\":99.7435459026835},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.74193193480257},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.45433508791007}}', 0.00246724),
(0, '00IGP815', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.98650512695312},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99884741347876},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99698231565755},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99373563422478},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99897940938553},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99508052991934}}', 18.6973),
(0, '67NKY342', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.97240600585937},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99707309295951},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99254347385618},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98302930567489},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99743512523198},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98885064483099}}', 51.3372),
(0, 'CHGSLK1', '{\"oil\":{\"type\":\"stock_oil\",\"health\":98.13035087314226},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.79676955878195},\"engine\":{\"type\":\"stock_engine\",\"health\":82.52755737304688},\"tires\":{\"type\":\"stock_tires\",\"health\":99.63569574280564},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.755121614837},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.46361482030511}}', 5889.08),
(0, '28DBS396', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99704534515135},\"engine\":{\"type\":\"stock_engine\",\"health\":78.03206787109375},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99044070465817},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99273367005238},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99744469086855},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98152672023707}}', 56.6218),
(0, '65QBZ551', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.90623284428696},\"engine\":{\"type\":\"stock_engine\",\"health\":98.42283325195312},\"tires\":{\"type\":\"stock_tires\",\"health\":99.85631685450243},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.79396701833254},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92209674861522},\"oil\":{\"type\":\"stock_oil\",\"health\":99.28739894845626}}', 2255.91),
(0, 'CHRS04', '{\"tires\":{\"health\":99.62854774046036,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.43081381529619,\"type\":\"stock_brakes\"},\"oil\":{\"health\":97.9935902877291,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99959106445313,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.78369434981056,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.73896016148707,\"type\":\"stock_transmition\"}}', 6392.8),
(0, '62DXW186', '{\"engine\":{\"health\":99.99815673828125,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99980457411303,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99978387473974,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99954599646843,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99982315199682,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99825010788652,\"type\":\"stock_oil\"}}', 4.5981),
(0, '00AAU847', '{\"engine\":{\"health\":99.79420166015625,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.96052506881689,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.97534224279358,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.94555979452865,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.97948015769637,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.81394658836693,\"type\":\"stock_oil\"}}', 581.203),
(0, '65WHK568', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99962875468593},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99983520507813},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99989358081547},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99989373949491},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99989793902853},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99894375006048}}', 0.0157495),
(0, '84YQI617', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9334838064255},\"engine\":{\"type\":\"stock_engine\",\"health\":95.48903198242188},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97089068672821},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97548372606284},\"oil\":{\"type\":\"stock_oil\",\"health\":99.79191726040382},\"tires\":{\"type\":\"stock_tires\",\"health\":99.93878848598055}}', 651.243),
(0, '49LJL517', '{\"transmition\":{\"health\":99.92243703103192,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.93560889290126,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.88362199687505,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.8299529450049,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.4085875979068,\"type\":\"stock_oil\"},\"engine\":{\"health\":98.77767333984375,\"type\":\"stock_engine\"}}', 1928.43),
(0, '40KXX703', '{\"tires\":{\"health\":99.97149706732422,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.98417476997033,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.88309845265745,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.98676716492776,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.74178466796875,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.96457313606844,\"type\":\"stock_brakes\"}}', 367.228),
(0, 'FPISPD3', '{\"transmition\":{\"health\":99.99983205040259,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99983208464144,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.999755859375,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99832221768105,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99941244004849,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99984748950368,\"type\":\"stock_oil\"}}', 0.00507686),
(0, 'FPISB01', '{\"transmition\":{\"health\":99.99974282623976,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99974287571983,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99743073887768,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99910027283632,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99976658420334,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99977416992188,\"type\":\"stock_engine\"}}', 0.00821059),
(0, 'FPISPD2', '{\"oil\":{\"type\":\"stock_oil\",\"health\":97.1765500041674},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.630855372024},\"engine\":{\"type\":\"stock_engine\",\"health\":99.94138793945312},\"tires\":{\"type\":\"stock_tires\",\"health\":99.45717878398743},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.69376496370683},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.19239765804673}}', 16224.7),
(0, '87BST900', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99883362482282},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99963832899859},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99733183921744},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9973876953125},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.999614644873},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99871528901096}}', 3.30081),
(0, '03ZXO447', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.93806093885604},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97688716164208},\"tires\":{\"type\":\"stock_tires\",\"health\":99.94962940642148},\"engine\":{\"type\":\"stock_engine\",\"health\":99.55035400390625},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97237385852077},\"oil\":{\"type\":\"stock_oil\",\"health\":99.79640966907246}}', 633.729),
(0, '43CRZ998', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.8835750204269},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95643256144955},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9081935351809},\"engine\":{\"type\":\"stock_engine\",\"health\":53.87971801757813},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94784659588939},\"oil\":{\"type\":\"stock_oil\",\"health\":99.61305770011873}}', 1204.5);
INSERT INTO `vehicle_parts` (`id`, `plate`, `parts`, `mileage`) VALUES
(0, '87FDH534', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.8014687582796},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92681941382647},\"tires\":{\"type\":\"stock_tires\",\"health\":99.817459003945},\"engine\":{\"type\":\"stock_engine\",\"health\":94.97086791992187},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.91310493528269},\"oil\":{\"type\":\"stock_oil\",\"health\":99.37870109142543}}', 1920.49),
(0, '22AZO038', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.85252578658226},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.93400857048997},\"engine\":{\"type\":\"stock_engine\",\"health\":98.9201416015625},\"tires\":{\"type\":\"stock_tires\",\"health\":99.88280833903791},\"oil\":{\"type\":\"stock_oil\",\"health\":99.5112007941229},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94485217956374}}', 1563.52),
(0, 'COK2692', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99391520601367},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99797922400737},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98921278188219},\"engine\":{\"type\":\"stock_engine\",\"health\":81.0843994140625},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99774400448657},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98865491101505}}', 31.8616),
(0, '20ZZN634', '{\"tires\":{\"health\":99.955889167365,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.98017476705681,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.86019918299572,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.98325451724266,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.66194458007813,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.95432576112931,\"type\":\"stock_brakes\"}}', 432.935),
(0, '42DPH542', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99848057046535},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9994491512058},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9998046875},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99714703015086},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99740316682481},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99950220851035}}', 7.64376),
(0, '45DOD317', '{\"tires\":{\"health\":99.66764186224884,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.54191802719555,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.99973754882812,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.82734628131083,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.79253531878527,\"type\":\"stock_transmition\"},\"oil\":{\"health\":98.43476767090148,\"type\":\"stock_oil\"}}', 4896.46),
(0, '02UHX074', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99971668440561},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99988696287197},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99901733398437},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99959967201912},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99932064990816},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99990154915169}}', 2.05389),
(0, '60LUI628', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.75805365202844},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8898521356594},\"engine\":{\"type\":\"stock_engine\",\"health\":98.70753784179688},\"tires\":{\"type\":\"stock_tires\",\"health\":99.8317340085263},\"oil\":{\"type\":\"stock_oil\",\"health\":99.16250086781749},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.90849774309057}}', 2684.26),
(0, '63SIU674', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.86883349260408},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94061725441692},\"tires\":{\"type\":\"stock_tires\",\"health\":99.90454770811029},\"oil\":{\"type\":\"stock_oil\",\"health\":99.5522367179449},\"engine\":{\"type\":\"stock_engine\",\"health\":99.30653686523438},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95057480014994}}', 1429.53),
(0, '47XBV002', '{\"tires\":{\"health\":99.53504478840769,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.25364511153325,\"type\":\"stock_brakes\"},\"engine\":{\"health\":95.853857421875,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.71541938992162,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.65597242639662,\"type\":\"stock_transmition\"},\"oil\":{\"health\":97.336275428155,\"type\":\"stock_oil\"}}', 8314.51),
(0, '85EUV169', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99775873711124},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99911314817973},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99146728515625},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99673915193124},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99476499545365},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99922518954104}}', 15.8455),
(0, '63ACT479', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.79076939471617},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.90451057062639},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99938354492187},\"tires\":{\"type\":\"stock_tires\",\"health\":99.85749129016544},\"oil\":{\"type\":\"stock_oil\",\"health\":99.27129289773062},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9207420508243}}', 2402.89),
(0, '29ITV912', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.85511897760816},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94552504443672},\"tires\":{\"type\":\"stock_tires\",\"health\":99.89180805133894},\"engine\":{\"type\":\"stock_engine\",\"health\":96.85990600585937},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.93462472965598},\"oil\":{\"type\":\"stock_oil\",\"health\":99.50950979137112}}', 1522.3),
(0, '40VJF245', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.78386040156345},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.90259035829763},\"engine\":{\"type\":\"stock_engine\",\"health\":98.3869384765625},\"tires\":{\"type\":\"stock_tires\",\"health\":99.83706554186496},\"oil\":{\"type\":\"stock_oil\",\"health\":99.27053284950159},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.91879739044313}}', 2352.73),
(0, '46KCU716', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99080127998052},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99671107565597},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98916224063835},\"engine\":{\"type\":\"stock_engine\",\"health\":86.94451293945312},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99616047680259},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97474071452847}}', 77.2327),
(0, '24LRJ450', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.95149762291088},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98199105810514},\"tires\":{\"type\":\"stock_tires\",\"health\":99.95845420669066},\"engine\":{\"type\":\"stock_engine\",\"health\":95.1264892578125},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.97853179154744},\"oil\":{\"type\":\"stock_oil\",\"health\":99.84369165670482}}', 486.902),
(0, '23CQN618', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.82416202368472},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.92288898610896},\"tires\":{\"type\":\"stock_tires\",\"health\":99.84021858103766},\"engine\":{\"type\":\"stock_engine\",\"health\":10.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.93510334614756},\"oil\":{\"type\":\"stock_oil\",\"health\":99.44691142996446}}', 1651.47),
(0, '09MMG636', '{\"tires\":{\"health\":99.9888979325754,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.99734536922942,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.98539121361763,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99765394545891,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.97134399414063,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99308482926807,\"type\":\"stock_brakes\"}}', 42.4488),
(0, '69EOF166', '{\"transmition\":{\"health\":99.96725564556336,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.42930297851562,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.97300904037614,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.74269564641627,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.92969589953079,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.96051386601804,\"type\":\"stock_tires\"}}', 471.933),
(0, '49FYX136', '{\"transmition\":{\"health\":99.99993370150098,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.99987182617187,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99993403878826,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99992697477443,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.99977055236562,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99935389623853,\"type\":\"stock_tires\"}}', 0.0404109),
(0, '24BRV862', '{\"tires\":{\"health\":99.97898085564779,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.98859904329753,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.91616429905077,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99045699380032,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.81495361328125,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.974402870414,\"type\":\"stock_brakes\"}}', 26.2703),
(0, '45OQA731', '{\"oil\":{\"health\":99.30395236858358,\"type\":\"stock_oil\"},\"engine\":{\"health\":95.90333862304688,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.92418693967173,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.90868531307625,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.79976112055214,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.86270954186985,\"type\":\"stock_tires\"}}', 2212.29),
(0, '46OOU511', '{\"oil\":{\"health\":99.73261181962995,\"type\":\"stock_oil\"},\"engine\":{\"health\":91.21177978515625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.97049551594674,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.96454899385478,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.92170969859935,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.94311336924773,\"type\":\"stock_tires\"}}', 850.629),
(0, '48QCS868', '{\"oil\":{\"health\":99.98885989255679,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.98224487304688,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99858095349853,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.9983374234839,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99605616330612,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99556291207041,\"type\":\"stock_tires\"}}', 33.9963),
(0, '29LJF608', '{\"oil\":{\"health\":97.33572217694142,\"type\":\"stock_oil\"},\"engine\":{\"health\":95.57161865234375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.7158221935568,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.65635261831575,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.25514989346039,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.53997842396709,\"type\":\"stock_tires\"}}', 8466.68),
(0, '88UCN559', '{\"oil\":{\"health\":99.99574295671796,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.9930419921875,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99922901827516,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99914103902262,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99767107682389,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.9958137518175,\"type\":\"stock_tires\"}}', 12.6147),
(0, '86ICX388', '{\"oil\":{\"health\":99.85153353416368,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.95810071441047,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.75421752929688,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.95312655553211,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.97938995267039,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.98267069568149,\"type\":\"stock_suspension\"}}', 475.643),
(0, 'FPIUPD2', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.67883705287756},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.73258153414949},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.28976219086842},\"oil\":{\"type\":\"stock_oil\",\"health\":97.58267188921944},\"engine\":{\"type\":\"stock_engine\",\"health\":93.639794921875},\"tires\":{\"type\":\"stock_tires\",\"health\":99.47828181644286}}', 7666.67),
(0, '20IEH985', '{\"oil\":{\"health\":99.99339391051312,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.9963287546963,\"type\":\"stock_tires\"},\"engine\":{\"health\":87.42393798828125,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.99731812136078,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99892070856069,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99906299965139,\"type\":\"stock_suspension\"}}', 19.1429),
(0, '67BWL915', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.9868581905241},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99648451642455},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99842110077583},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99847399154032},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99488111160373},\"engine\":{\"type\":\"stock_engine\",\"health\":74.29864501953125}}', 8.29201),
(0, '87WAQ926', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99553678736027},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9893397067863},\"engine\":{\"type\":\"stock_engine\",\"health\":99.97682495117188},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99845026219056},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99366520076663},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99822148369219}}', 32.644),
(0, '04UVK270', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.96876423399347},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99687011007737},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99684026046131},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99684748582331},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9889965469074},\"engine\":{\"type\":\"stock_engine\",\"health\":89.28258666992187}}', 0.785903),
(0, '21DJU402', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.95672716458441},\"oil\":{\"type\":\"stock_oil\",\"health\":99.92951968037926},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98811653169234},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98962625891822},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97003276056614},\"engine\":{\"type\":\"stock_engine\",\"health\":99.84575805664062}}', 213.757),
(0, '09WAN992', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.91802146453476},\"oil\":{\"type\":\"stock_oil\",\"health\":99.71692246603095},\"engine\":{\"type\":\"stock_engine\",\"health\":99.37353515625},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96901631052691},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9425198496742},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96271526821976}}', 898.969),
(0, '49HII370', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99726018710942},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99285957787731},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98435668945312},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99903145609162},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99651364093683},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99887667257045}}', 22.2643),
(0, '85IWW529', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99710938672233},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99469765355555},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98860473632813},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99904253629612},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99481665174936},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99893289113294}}', 15.544),
(0, 'TE12232', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.77724321095224},\"oil\":{\"type\":\"stock_oil\",\"health\":99.16904640710146},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.88570237465295},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.904088377938},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.74153053658296},\"engine\":{\"type\":\"stock_engine\",\"health\":95.99918823242187}}', 2598.7),
(0, '21SOM470', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.999695886752},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99976920250924},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99963989257813},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99990870654844},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99923404738682},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99990503658836}}', 0.502867),
(0, '24MMH966', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99925815325746},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99912623996873},\"engine\":{\"type\":\"stock_engine\",\"health\":76.52817993164062},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99976833240427},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99834119146907},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99975190625134}}', 0),
(0, '89SBI795', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.92641740075708},\"oil\":{\"type\":\"stock_oil\",\"health\":99.76962110532335},\"engine\":{\"type\":\"stock_engine\",\"health\":99.61897583007813},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.97287372619413},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9324140074335},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96778816450875}}', 735.786),
(0, '65SBT288', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999997661698},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99999990980833},\"engine\":{\"type\":\"stock_engine\",\"health\":100.0},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999999088974},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9999999899787},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999998886523}}', 0.000547409),
(0, '88YXT327', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9989045484},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99810491409417},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99698486328126},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99964045110557},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99795854193555},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99960164883646}}', 5.79986),
(0, '84MFM463', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99989756373503},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99997343335584},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99996337890625},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99997072597653},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99970747734352},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99997072054384}}', 0.0025492),
(0, '80HLM444', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99648326083327},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99065015555351},\"engine\":{\"type\":\"stock_engine\",\"health\":99.97957763671875},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99875147885025},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99564956196505},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99854836340796}}', 29.3503),
(0, '06MST292', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.86627988106109},\"oil\":{\"type\":\"stock_oil\",\"health\":99.53662313745058},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9354094736804},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94564294309602},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.85273087238312},\"engine\":{\"type\":\"stock_engine\",\"health\":26.5574462890625}}', 1437.75),
(0, '23GWZ781', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.79216316020455},\"oil\":{\"type\":\"stock_oil\",\"health\":99.43185660249155},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.91686581663494},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.92932345886904},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.80495420343677},\"engine\":{\"type\":\"stock_engine\",\"health\":99.46771240234375}}', 1760.74),
(0, '06LFT495', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99945274181359},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99973982728872},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99951782226563},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9998401932114},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99851698597591},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99983732045581}}', 0.373548),
(0, '28MNH339', '{\"tires\":{\"health\":99.46885963546557,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.28236599176005,\"type\":\"stock_brakes\"},\"oil\":{\"health\":97.56341192855945,\"type\":\"stock_oil\"},\"engine\":{\"health\":51.746923828125,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.72996737968954,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.67580543615465,\"type\":\"stock_transmition\"}}', 7670.85),
(0, '46DXW045', '{\"tires\":{\"health\":99.96256187401152,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.72586059570313,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.98154700789633,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.95083988442119,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.97787430390011,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.83464779525979,\"type\":\"stock_oil\"}}', 523.377),
(0, '88JLG171', '{\"tires\":{\"health\":99.97988763428643,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.84622192382813,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.98973353368261,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.97272453766036,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.98767230278475,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.90728032895038,\"type\":\"stock_oil\"}}', 295.868),
(0, '68DCS845', '{\"tires\":{\"health\":99.95951719682405,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.98461724874102,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.9909037618208,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99830932617188,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99545656822349,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99533293490028,\"type\":\"stock_transmition\"}}', 17.0574),
(0, '43FPK159', '{\"tires\":{\"health\":99.95888370409003,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99849853515625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9944861950501,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.9821721287462,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99413608884307,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.98085827416634,\"type\":\"stock_oil\"}}', 49.7288),
(0, 'CHRS03', '{\"tires\":{\"health\":99.99823374900528,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.9997314453125,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99982320513142,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.9993813959952,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99982316274213,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99983916785253,\"type\":\"stock_oil\"}}', 0.00766082),
(0, 'CVSI02', '{\"tires\":{\"health\":99.99791482387899,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99926850793905,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99980478497383,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99967041015626,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99979079686945,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.9997906257038,\"type\":\"stock_transmition\"}}', 0.0239728),
(0, 'CVSI03', '{\"tires\":{\"health\":99.99868774006022,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.9997802734375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99986815076474,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99953918126316,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99986799514895,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99987503324887,\"type\":\"stock_oil\"}}', 0.031702),
(0, 'CVSI04', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":98.46676376866492},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.43109608193059},\"engine\":{\"type\":\"stock_engine\",\"health\":99.96358642578125},\"oil\":{\"type\":\"stock_oil\",\"health\":95.07225718434653},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.32206572910649},\"tires\":{\"type\":\"stock_tires\",\"health\":98.67762645000758}}', 18917.8),
(0, 'FSIU01', '{\"tires\":{\"health\":99.99394764846598,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99638399736199,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.9927270571446,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.999755859375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99878379394727,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.9986312419125,\"type\":\"stock_transmition\"}}', 21.9142),
(0, 'FSIU02', '{\"engine\":{\"health\":95.6689697265625,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.41015581332008,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.14724047191064,\"type\":\"stock_brakes\"},\"oil\":{\"health\":97.04338883036411,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.61152213757609,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.6773549934709,\"type\":\"stock_suspension\"}}', 10527.3),
(0, 'TTSI01', '{\"tires\":{\"health\":99.86252928446152,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.84516367907547,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.50818770633805,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99680786132812,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9427163977811,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.93184585329567,\"type\":\"stock_transmition\"}}', 1559.8),
(0, 'TTSI02', '{\"tires\":{\"health\":99.99772985556986,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99920362066695,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99978747131044,\"type\":\"stock_oil\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99977223951417,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99977205323636,\"type\":\"stock_transmition\"}}', 0.0534661),
(0, 'TTSP01', '{\"tires\":{\"health\":99.99832466674403,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.9994104606404,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99983496676181,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99990844726563,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99983117237906,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99983084920919,\"type\":\"stock_transmition\"}}', 0.0973711),
(0, 'TTSP02', '{\"transmition\":{\"health\":99.9992826883131,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99800277236085,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99934935886691,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99501342773438,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99616374435206,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99671426554902,\"type\":\"stock_oil\"}}', 9.40312),
(0, '87LWG803', '{\"tires\":{\"health\":99.98213603113304,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.98919574394245,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.97794326739117,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.96400146484375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99635669176576,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99589304348932,\"type\":\"stock_transmition\"}}', 65.2871),
(0, '63WQV090', '{\"tires\":{\"health\":99.92616932077466,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.9927978515625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99214983617468,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.97301426501754,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99203320798464,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.98821141085871,\"type\":\"stock_oil\"}}', 19.5201),
(0, '01LMZ238', '{\"tires\":{\"health\":99.93422913132568,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.97567587562368,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.98822104488186,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99148559570313,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99289082217376,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99275796550535,\"type\":\"stock_transmition\"}}', 18.9227),
(0, '00SLP989', '{\"tires\":{\"health\":99.9588094453011,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.98729858398437,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99494509931898,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.98328925832881,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99471143010301,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.98598698613765,\"type\":\"stock_oil\"}}', 33.3981),
(0, '00GLY025', '{\"tires\":{\"health\":99.95581482038118,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.98369401172927,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99224440633683,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99005126953125,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99523832873932,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99515264751637,\"type\":\"stock_transmition\"}}', 12.1093),
(0, 'ISPV03', '{\"tires\":{\"health\":99.99947449594504,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.999853515625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99994299631993,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99980515722047,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9999418843912,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.9999036635743,\"type\":\"stock_oil\"}}', 0.127207),
(0, '23BOS851', '{\"tires\":{\"health\":99.96833572262257,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.9889083600731,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99710914137603,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99688110351562,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9968298424833,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99682891120298,\"type\":\"stock_transmition\"}}', 0.00808858),
(0, '03CBX476', '{\"tires\":{\"health\":99.98456292260743,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99837036132813,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99845542254447,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99459489096931,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.998455205387,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99860108541044,\"type\":\"stock_oil\"}}', 0.00422389),
(0, '05YMN052', '{\"tires\":{\"health\":99.98872877699184,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.998486328125,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9988721084264,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99605318622177,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99887191634832,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99897711842375,\"type\":\"stock_oil\"}}', 0.00604735),
(0, '26DXX052', '{\"tires\":{\"health\":99.98877899543399,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99606791725582,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99896885521105,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99879150390625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99887596949557,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99887548758609,\"type\":\"stock_transmition\"}}', 0.00469787),
(0, '66BBX791', '{\"tires\":{\"health\":99.9592001956127,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.98570914379127,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99627893919224,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99662475585937,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99591556289426,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99591445011858,\"type\":\"stock_transmition\"}}', 0.0243081),
(0, '41RPO172', '{\"tires\":{\"health\":99.96890913200305,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99668579101562,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99688890157796,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.98911326509226,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99688839930029,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99717966917798,\"type\":\"stock_oil\"}}', 0.0254451),
(0, '07EKB190', '{\"tires\":{\"health\":99.95491149241214,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.9955810546875,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9954873204624,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.98420963682298,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99548636446309,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99589987044168,\"type\":\"stock_oil\"}}', 0.0764243),
(0, '88SMX150', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9949363005813},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98301580214828},\"tires\":{\"type\":\"stock_tires\",\"health\":99.95416488152017},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99503224215361},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99164338425915},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99979858398437}}', 13.3557),
(0, '86FXA604', '{\"tires\":{\"health\":99.9788714244165,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99259801652099,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.998067061889,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.9988037109375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99788429415924,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99788358297762,\"type\":\"stock_transmition\"}}', 0.0178617),
(0, '00ZRW114', '{\"tires\":{\"health\":99.97896544261347,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99892578125,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99776367602934,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99231220357544,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99773050044084,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.9966436970936,\"type\":\"stock_oil\"}}', 4.60689),
(0, 'ISPV04', '{\"transmition\":{\"health\":99.99802217573859,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.99345516597112,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.99807120832084,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.99771728515626,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.98267583813356,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99627826790642,\"type\":\"stock_oil\"}}', 6.94472),
(0, 'ISPV01', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.99888332498027},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99989595270901},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99988793003502},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9998880104472},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99960837429652},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9998291015625}}', 0.0158171),
(0, 'F15001', '{\"transmition\":{\"health\":99.74129782561973,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.4235274140546,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.78402315346102,\"type\":\"stock_suspension\"},\"engine\":{\"health\":40.48582763671875,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.55138091466279,\"type\":\"stock_tires\"},\"oil\":{\"health\":98.07524506054894,\"type\":\"stock_oil\"}}', 6047.36),
(0, '20HWR040', '{\"oil\":{\"health\":99.70890422825241,\"type\":\"stock_oil\"},\"engine\":{\"health\":70.779296875,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.96686808661221,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.92705483749207,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.91113370089004,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.96041680143448,\"type\":\"stock_transmition\"}}', 914.8),
(0, '61QSL741', '{\"tires\":{\"health\":99.93358912958502,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.55092163085938,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.96755436365308,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.91350122336827,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.96111128018113,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.7098540466713,\"type\":\"stock_oil\"}}', 915.079),
(0, '46WXG633', '{\"tires\":{\"health\":99.99433483432148,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99132080078125,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9989687972354,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99687810169172,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99885277071943,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99437284361328,\"type\":\"stock_oil\"}}', 16.5484),
(0, '69HFD176', '{\"tires\":{\"health\":99.3281033289072,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.996630859375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.69257579947379,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.17594664406913,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.63259214568734,\"type\":\"stock_transmition\"},\"oil\":{\"health\":97.2939802411664,\"type\":\"stock_oil\"}}', 8514.34),
(0, '40ZVA389', '{\"tires\":{\"health\":99.87842098496148,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.85880126953126,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.97687959635275,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.9305748441637,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9741423923217,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.86833487346903,\"type\":\"stock_oil\"}}', 503.188),
(0, '43ROS132', '{\"oil\":{\"health\":99.99880149119346,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.99874877929688,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99943013549678,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99497936760207,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99807657668741,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99941320634234,\"type\":\"stock_transmition\"}}', 2.27522),
(0, '62MNI000', '{\"tires\":{\"health\":99.99184464400673,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99283975485648,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.97992216591126,\"type\":\"stock_oil\"},\"engine\":{\"health\":97.47398071289062,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9974279060572,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99698931471052,\"type\":\"stock_transmition\"}}', 60.5648),
(0, '60PJJ073', '{\"engine\":{\"health\":99.9822509765625,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99362478192758,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99609056171505,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99188741815817,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99850697013491,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99867790081584,\"type\":\"stock_suspension\"}}', 17.5551),
(0, '66OUZ762', '{\"tires\":{\"health\":99.99996726930404,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99957275390625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99997024482185,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99992362837608,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99996363256006,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99970542373635,\"type\":\"stock_oil\"}}', 0.928806),
(0, '89MLK144', '{\"tires\":{\"health\":99.99996388745103,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99949340820312,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99996717041003,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99991573738575,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99995987494559,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99967498705935,\"type\":\"stock_oil\"}}', 0.886881),
(0, '89DTK065', '{\"engine\":{\"health\":99.9997314453125,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.9983905725674,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99943068405871,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99982812350345,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99983599010311,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99983660292105,\"type\":\"stock_suspension\"}}', 0.0350575),
(0, '84NPW901', '{\"tires\":{\"health\":99.99996871063232,\"type\":\"stock_tires\"},\"engine\":{\"health\":97.59967041015625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9999715551202,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99992699147518,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99996523403579,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99971839568984,\"type\":\"stock_oil\"}}', 1.14769),
(0, '47POD227', '{\"tires\":{\"health\":99.99983102216425,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99960571838327,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99847919947834,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.9981689453125,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99984638378568,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.99981224684918,\"type\":\"stock_transmition\"}}', 4.97512),
(0, '20EQD586', '{\"engine\":{\"health\":92.53822021484375,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.95951335914315,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.97682042127279,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.95588269461803,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99135838267695,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99227605565125,\"type\":\"stock_suspension\"}}', 128.5),
(0, '83OHS707', '{\"tires\":{\"health\":99.99625508919015,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.99548950195313,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9992607536408,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99779515264126,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99916967866492,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.99564614175529,\"type\":\"stock_oil\"}}', 14.9455),
(0, '88HJH265', '{\"tires\":{\"health\":99.88931440085303,\"type\":\"stock_tires\"},\"engine\":{\"health\":-0.1,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9611178949882,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.8930803951073,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9541731895956,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.68374553709156,\"type\":\"stock_oil\"}}', 978.533),
(0, '09ZPN101', '{\"tires\":{\"health\":99.94931847594074,\"type\":\"stock_tires\"},\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9796147705047,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.94471454914482,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.97579028184312,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.82676150266265,\"type\":\"stock_oil\"}}', 537.538),
(0, '20VUR370', '{\"oil\":{\"health\":99.81732726663602,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.80106201171876,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9746215785021,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.90427202621558,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.92775071109996,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.97067510556357,\"type\":\"stock_transmition\"}}', 552.054),
(0, '25QPM393', '{\"tires\":{\"health\":99.90345830419554,\"type\":\"stock_tires\"},\"engine\":{\"health\":98.34029541015625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.92289850260659,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.80087603922698,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.90605772162977,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.24855702277803,\"type\":\"stock_oil\"}}', 0.0590885),
(0, '07VRL964', '{\"tires\":{\"health\":99.993746372663,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.3518310546875,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99839039722564,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.9953985521301,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99814464440651,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.98859836832759,\"type\":\"stock_oil\"}}', 34.0251),
(0, '40QXO227', '{\"tires\":{\"health\":99.49672383080187,\"type\":\"stock_tires\"},\"engine\":{\"health\":29.66484680175781,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.66595932410994,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.12838443779848,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.59511960901081,\"type\":\"stock_transmition\"},\"oil\":{\"health\":96.83035493020071,\"type\":\"stock_oil\"}}', 9962.25),
(0, '46HZF516', '{\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.78073286395987,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.63746138542206,\"type\":\"stock_brakes\"},\"oil\":{\"health\":98.69634940709286,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.83237381500243,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.86148459849749,\"type\":\"stock_suspension\"}}', 4522.59),
(0, '44SPI817', '{\"engine\":{\"health\":99.947802734375,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.98853000589718,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.98552275363777,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.95196446264267,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99351905041164,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99458477472294,\"type\":\"stock_suspension\"}}', 148.088),
(0, '43XGU960', '{\"engine\":{\"health\":95.89360961914062,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.47694890541601,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.00247105999728,\"type\":\"stock_brakes\"},\"oil\":{\"health\":96.29401043495099,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.53247944976974,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.61543957779607,\"type\":\"stock_suspension\"}}', 11635.5),
(0, '27HJT984', '{\"tires\":{\"health\":99.9700855826136,\"type\":\"stock_tires\"},\"engine\":{\"health\":86.39940795898437,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.9870371226696,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.9650868655448,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.98454737595502,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.88749866846369,\"type\":\"stock_oil\"}}', 354.376),
(0, '81RPZ357', '{\"tires\":{\"health\":99.86811340289374,\"type\":\"stock_tires\"},\"engine\":{\"health\":-0.69142580032348,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.90243893302933,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.74701669269152,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.88137216467465,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.05899092136493,\"type\":\"stock_oil\"}}', 235.199),
(0, '28OJT323', '{\"engine\":{\"health\":-0.18788534402847,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.83794337440202,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.67202857220225,\"type\":\"stock_brakes\"},\"oil\":{\"health\":98.76683414667953,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.84550920352265,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.87313860090865,\"type\":\"stock_suspension\"}}', 1927.44),
(0, '21EKR717', '{\"engine\":{\"type\":\"stock_engine\",\"health\":96.513623046875},\"oil\":{\"type\":\"stock_oil\",\"health\":98.4296847327519},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.83842144425161},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.58224189887362},\"tires\":{\"type\":\"stock_tires\",\"health\":99.79327684773503},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.80323886234865}}', 715.036),
(0, '03ARF374', '{\"tires\":{\"health\":99.4528267389459,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.87673950195313,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.59923529426065,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":98.96021965836956,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.51283145415182,\"type\":\"stock_transmition\"},\"oil\":{\"health\":96.13995624044914,\"type\":\"stock_oil\"}}', 8008.8),
(0, '62OBM739', '{\"engine\":{\"health\":null,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99999530194775,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99998903787811,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99995771752978,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99999477994197,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99999572904344,\"type\":\"stock_suspension\"}}', 0.0504043),
(0, '81KFV562', '{\"engine\":{\"health\":57.38792724609375,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.346701826951,\"type\":\"stock_tires\"},\"brakes\":{\"health\":98.73547374389588,\"type\":\"stock_brakes\"},\"oil\":{\"health\":95.28761395976886,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.40657862810743,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.51209142622683,\"type\":\"stock_suspension\"}}', 1014.57);
INSERT INTO `vehicle_parts` (`id`, `plate`, `parts`, `mileage`) VALUES
(0, '28OIF304', '{\"engine\":{\"health\":99.53856811523437,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.93644900803915,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.91708000466284,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.72169214684573,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.96271145272695,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.96889196183331,\"type\":\"stock_suspension\"}}', 891.192),
(0, '25YZT863', '{\"oil\":{\"health\":99.98761312289615,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.98660278320313,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99799048525408,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99036562955216,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.9940637087124,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99772929231993,\"type\":\"stock_transmition\"}}', 316.24),
(0, '22WRC002', '{\"tires\":{\"health\":99.9791593493677,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.91388549804688,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99447961420172,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.98428228193669,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.9936216065271,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.9602823419747,\"type\":\"stock_oil\"}}', 29.3851),
(0, '84MBZ069', '{\"engine\":{\"type\":\"stock_engine\",\"health\":96.59161376953125},\"oil\":{\"type\":\"stock_oil\",\"health\":98.46446584524964},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.8414803743568},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.58962672419993},\"tires\":{\"type\":\"stock_tires\",\"health\":99.79219394088789},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.80708860913055}}', 294.885),
(0, '01YFW702', '{\"engine\":{\"health\":99.99992065429687,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.99950011589189,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99982454087986,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99995276563887,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99994975684916,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99994980774628,\"type\":\"stock_suspension\"}}', 0.0109132),
(0, '43VFU846', '{\"tires\":{\"health\":99.77007484951821,\"type\":\"stock_tires\"},\"engine\":{\"health\":96.08018188476562,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.8185522965416,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.53110327293432,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.77898795486667,\"type\":\"stock_transmition\"},\"oil\":{\"health\":98.23434122903676,\"type\":\"stock_oil\"}}', 173.285),
(0, '87FLI836', '{\"engine\":{\"health\":95.20513305664062,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.35806463865757,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.14390794951248,\"type\":\"stock_brakes\"},\"oil\":{\"health\":97.10563518949692,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.61390878691582,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.67822400708535,\"type\":\"stock_suspension\"}}', 9282.17),
(0, '24YHQ535', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.99987182617187},\"oil\":{\"type\":\"stock_oil\",\"health\":99.56417629057681},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94867042861796},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.8607522729985},\"tires\":{\"type\":\"stock_tires\",\"health\":99.87200219141717},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9390500065151}}', 1362.12),
(0, '68GSG852', '{\"engine\":{\"health\":82.64730834960938,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.92757755694683,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.91618077622006,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.7308030413556,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.96294882262528,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.96890465340829,\"type\":\"stock_suspension\"}}', 851.64),
(0, '87XQT807', '{\"engine\":{\"health\":97.8097412109375,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.84079482929278,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.72757696041005,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.0121549172102,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.87360434614685,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.89567730054903,\"type\":\"stock_suspension\"}}', 3115.35),
(0, '26YJV151', '{\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"tires\":{\"health\":100,\"type\":\"stock_tires\"}}', 0),
(0, '07ZAA540', '{\"tires\":{\"health\":99.45552376142916,\"type\":\"stock_tires\"},\"engine\":{\"health\":51.64503784179688,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.65025087368432,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.08555753612848,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.57651766458122,\"type\":\"stock_transmition\"},\"oil\":{\"health\":96.6990308176325,\"type\":\"stock_oil\"}}', 10310.6),
(0, '86RES977', '{\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"},\"oil\":{\"health\":100,\"type\":\"stock_oil\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"tires\":{\"health\":100,\"type\":\"stock_tires\"}}', 0),
(0, '03AWH465', '{\"transmition\":{\"health\":99.98854413107287,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.99016930662975,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.96678134735171,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.97241831054325,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.92533276591236,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.662451171875,\"type\":\"stock_engine\"}}', 226.536),
(0, '45CIU313', '{\"brakes\":{\"health\":98.83916422267736,\"type\":\"stock_brakes\"},\"oil\":{\"health\":96.1556017164985,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.07540016541793,\"type\":\"stock_tires\"},\"engine\":{\"health\":10.0,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.565997926391,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.48071900250823,\"type\":\"stock_transmition\"}}', 67931.1),
(0, '07CAP167', '{\"suspension\":{\"health\":99.78931764463275,\"type\":\"stock_suspension\"},\"oil\":{\"health\":98.10438734414325,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.58021944306759,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.43953012291535,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.74719422399025,\"type\":\"stock_transmition\"},\"engine\":{\"health\":67.09786376953125,\"type\":\"stock_engine\"}}', 5959.98),
(0, '04IBT214', '{\"brakes\":{\"health\":99.1322623346665,\"type\":\"stock_brakes\"},\"oil\":{\"health\":97.09662936169879,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.32884665572832,\"type\":\"stock_tires\"},\"engine\":{\"health\":10.0,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.67472320396499,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.61026341330197,\"type\":\"stock_transmition\"}}', 9026.08),
(0, '28NYE375', '{\"transmition\":{\"health\":99.47238901879239,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.56007819001245,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.11273320749375,\"type\":\"stock_tires\"},\"brakes\":{\"health\":98.82856818417346,\"type\":\"stock_brakes\"},\"oil\":{\"health\":96.05265893660416,\"type\":\"stock_oil\"},\"engine\":{\"health\":25.60804443359375,\"type\":\"stock_engine\"}}', 18859.6),
(0, '47CUA348', '{\"suspension\":{\"health\":99.93572562372472,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.4239227194897,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.86972846419804,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.82878208885882,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.92292981281433,\"type\":\"stock_transmition\"},\"engine\":{\"health\":98.07967529296875,\"type\":\"stock_engine\"}}', 1818.53),
(0, '85ZXD270', '{\"suspension\":{\"health\":99.94995781380372,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.86622205626412,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.89406785313612,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.94010788333947,\"type\":\"stock_transmition\"},\"oil\":{\"health\":99.55603984861662,\"type\":\"stock_oil\"},\"engine\":{\"health\":99.3129150390625,\"type\":\"stock_engine\"}}', 1390.73),
(0, '62ZIA745', '{\"suspension\":{\"health\":99.84649556487017,\"type\":\"stock_suspension\"},\"oil\":{\"health\":98.60607553311307,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.70677311868858,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.59296252633225,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.81548888646829,\"type\":\"stock_transmition\"},\"engine\":{\"health\":74.01028442382813,\"type\":\"stock_engine\"}}', 4403.22),
(0, '04ZOZ885', '{\"suspension\":{\"health\":99.9989882614441,\"type\":\"stock_suspension\"},\"oil\":{\"health\":99.99236491345426,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.99653241937725,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99715627287542,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99882222386768,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.98330078125,\"type\":\"stock_engine\"}}', 23.6185),
(0, '66YLG328', '{\"suspension\":{\"health\":99.74684325060514,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.3325969313777,\"type\":\"stock_brakes\"},\"engine\":{\"health\":94.63875732421875,\"type\":\"stock_engine\"},\"oil\":{\"health\":97.66379108090091,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.55337404131167,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.69478478530542,\"type\":\"stock_transmition\"}}', 7380.57),
(0, '06SHX014', '{\"suspension\":{\"health\":99.79250672247955,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.4554493010936,\"type\":\"stock_brakes\"},\"engine\":{\"health\":98.9259521484375,\"type\":\"stock_engine\"},\"oil\":{\"health\":98.06138253051457,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.65747548318281,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.74925058619017,\"type\":\"stock_transmition\"}}', 6127.55),
(0, '87QDZ592', '{\"suspension\":{\"health\":99.998408586995,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.99562328549024,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.97864990234375,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.987061572148,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.9954641799176,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.998124484374,\"type\":\"stock_transmition\"}}', 40.2206),
(0, '84EMP652', '{\"suspension\":{\"health\":99.92924818936095,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.7765321310455,\"type\":\"stock_brakes\"},\"engine\":{\"health\":19.37986297607421,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.70331849839218,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.52289782275165,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.92349498264439,\"type\":\"stock_transmition\"}}', 815.315),
(0, '69TPF037', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9961755942244},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98859579956988},\"engine\":{\"type\":\"stock_engine\",\"health\":99.95096435546876},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97745341547177},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98064828802997},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99570387522857}}', 67.1402),
(0, '64EEM931', '{\"suspension\":{\"health\":99.9686411691549,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.91660785213294,\"type\":\"stock_brakes\"},\"engine\":{\"health\":99.37548217773437,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.71755507993326,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.93780897527323,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.9623640834189,\"type\":\"stock_transmition\"}}', 889.02),
(0, '84QFJ192', '{\"suspension\":{\"health\":99.78801876124035,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.4412388956571,\"type\":\"stock_brakes\"},\"engine\":{\"health\":58.29458618164062,\"type\":\"stock_engine\"},\"oil\":{\"health\":98.04290358315267,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.62687521101513,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.74440608711807,\"type\":\"stock_transmition\"}}', 6200.99),
(0, '81CVP958', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.79431892171192},\"oil\":{\"type\":\"stock_oil\",\"health\":98.45435385005936},\"tires\":{\"type\":\"stock_tires\",\"health\":99.66275198564205},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.54466434423049},\"engine\":{\"type\":\"stock_engine\",\"health\":80.50967407226563},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.82867582018365}}', 4887.74),
(0, '41YQH103', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.70206024893013},\"oil\":{\"type\":\"stock_oil\",\"health\":97.77078099427199},\"tires\":{\"type\":\"stock_tires\",\"health\":99.49918115472453},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.33853066594512},\"engine\":{\"type\":\"stock_engine\",\"health\":70.67924194335937},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.75158230018721}}', 7046.16),
(0, 'FPSLPD1', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99633355611562},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97413377775645},\"tires\":{\"type\":\"stock_tires\",\"health\":99.991857012129},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99155536193894},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9572509765625},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99690341527591}}', 81.8882),
(0, 'TTKKB01', '{\"oil\":{\"health\":99.97937620728344,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.9927096426154,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99692502331922,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.96603393554688,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99737594033194,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99181862967927,\"type\":\"stock_tires\"}}', 64.6991),
(0, 'CVPIPD4', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9921662074785},\"engine\":{\"type\":\"stock_engine\",\"health\":99.96196899414062},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99664825444485},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9971543994996},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97694008483295},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99181510443793}}', 73.1081),
(0, '21LLQ511', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.83888425300295},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.80678938105754},\"tires\":{\"type\":\"stock_tires\",\"health\":99.67424215145022},\"engine\":{\"type\":\"stock_engine\",\"health\":45.4424560546875},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.57089334768192},\"oil\":{\"type\":\"stock_oil\",\"health\":98.55515351390629}}', 4528.2),
(0, '40XHX926', '{\"suspension\":{\"health\":99.96147382468863,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.95409853155016,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.91011873708423,\"type\":\"stock_tires\"},\"engine\":{\"health\":15.64078826904296,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.89613461759194,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.66662707010946,\"type\":\"stock_oil\"}}', 1070.45),
(0, '27HJE460', '{\"suspension\":{\"health\":99.9012977366934,\"type\":\"stock_suspension\"},\"transmition\":{\"health\":99.88180889771033,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.79350536820829,\"type\":\"stock_tires\"},\"engine\":{\"health\":10.0,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.73639520215663,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.12186998420887,\"type\":\"stock_oil\"}}', 3080.02),
(0, '83TYI096', '{\"engine\":{\"type\":\"stock_engine\",\"health\":97.72091064453125},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.89486939258278},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.87380116545029},\"oil\":{\"type\":\"stock_oil\",\"health\":99.05211925445956},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.72052942799808},\"tires\":{\"type\":\"stock_tires\",\"health\":99.79247642248738}}', 2970.4),
(0, '86DOO263', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98524944105292},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9671058257625},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97425749403222},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98768226989414},\"engine\":{\"type\":\"stock_engine\",\"health\":99.93942260742188},\"oil\":{\"type\":\"stock_oil\",\"health\":99.89038447483488}}', 345.163),
(0, '00PFV566', '{\"brakes\":{\"health\":98.97284612752726,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.26458991012996,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.61243911163339,\"type\":\"stock_suspension\"},\"engine\":{\"health\":58.03766479492187,\"type\":\"stock_engine\"},\"oil\":{\"health\":96.47571327417717,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.53403215049026,\"type\":\"stock_transmition\"}}', 11131.1),
(0, '42BRZ636', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99974789532776},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99911976682843},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99749281895665},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9997481723643},\"engine\":{\"type\":\"stock_engine\",\"health\":95.09968872070313},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99976213514728}}', 0.0143729),
(0, '24XQG211', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.85517944000623},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.67907504246544},\"tires\":{\"type\":\"stock_tires\",\"health\":99.7604499159477},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.87932840136235},\"engine\":{\"type\":\"stock_engine\",\"health\":18.79774322509765},\"oil\":{\"type\":\"stock_oil\",\"health\":98.91336262629173}}', 3442.12),
(0, '80PFS294', '{\"brakes\":{\"health\":99.99967682842447,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.99907949788454,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99990754354247,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.999853515625,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.99991268108293,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99990744210777,\"type\":\"stock_transmition\"}}', 0.0168179),
(0, '21TML549', '{\"brakes\":{\"health\":99.7547293944827,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.82717590512043,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.90733662793481,\"type\":\"stock_suspension\"},\"engine\":{\"health\":27.35593872070312,\"type\":\"stock_engine\"},\"oil\":{\"health\":99.15432356829455,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.88851491443245,\"type\":\"stock_transmition\"}}', 2663),
(0, '84UHK562', '{\"brakes\":{\"health\":99.37859385861838,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.5983814743218,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.76368201523315,\"type\":\"stock_suspension\"},\"engine\":{\"health\":87.82972412109375,\"type\":\"stock_engine\"},\"oil\":{\"health\":97.80371247686606,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.71470420444715,\"type\":\"stock_transmition\"}}', 6917.19),
(0, '29TMM346', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.73355226587673},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.4214932333865},\"tires\":{\"type\":\"stock_tires\",\"health\":99.63691462708361},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.77953412338558},\"engine\":{\"type\":\"stock_engine\",\"health\":92.573828125},\"oil\":{\"type\":\"stock_oil\",\"health\":97.93931548194002}}', 6536.11),
(0, '23ATF635', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.82438029734648},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.61863890191209},\"tires\":{\"type\":\"stock_tires\",\"health\":99.76030407126275},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.85468001958007},\"engine\":{\"type\":\"stock_engine\",\"health\":94.92171020507813},\"oil\":{\"type\":\"stock_oil\",\"health\":98.64207326715538}}', 4326.77),
(0, '69KPQ631', '{\"brakes\":{\"health\":99.53700999354406,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.68894500502558,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.82443270914523,\"type\":\"stock_suspension\"},\"engine\":{\"health\":94.14375610351563,\"type\":\"stock_engine\"},\"oil\":{\"health\":98.38113986270659,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.78836234925579,\"type\":\"stock_transmition\"}}', 5095.89),
(0, '47PFQ186', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.81413868878593},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.59545651115389},\"tires\":{\"type\":\"stock_tires\",\"health\":99.74019904047543},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.84608298753968},\"engine\":{\"type\":\"stock_engine\",\"health\":95.1108642578125},\"oil\":{\"type\":\"stock_oil\",\"health\":98.56773058926814}}', 4560.28),
(0, '49MUB326', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.64665792357869},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.22920446868833},\"tires\":{\"type\":\"stock_tires\",\"health\":99.49494052084376},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.70716464256104},\"engine\":{\"type\":\"stock_engine\",\"health\":54.57206420898437},\"oil\":{\"type\":\"stock_oil\",\"health\":97.28592605952925}}', 8652.64),
(0, '05HTT163', '{\"brakes\":{\"health\":99.32713921903719,\"type\":\"stock_brakes\"},\"tires\":{\"health\":99.58117511060799,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.74342745360718,\"type\":\"stock_suspension\"},\"engine\":{\"health\":95.06632690429687,\"type\":\"stock_engine\"},\"oil\":{\"health\":97.59806165534397,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.68982194612799,\"type\":\"stock_transmition\"}}', 7602.8),
(0, '00UXV583', '{\"oil\":{\"type\":\"stock_oil\",\"health\":97.78844456904636},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.74198597907403},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.69311331704599},\"tires\":{\"type\":\"stock_tires\",\"health\":99.37720990498976},\"engine\":{\"type\":\"stock_engine\",\"health\":70.27339477539063},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.30221610729848}}', 6897.05),
(0, '85HUC039', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.96289758443185},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.91885563946151},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9456174549945},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96922409013966},\"engine\":{\"type\":\"stock_engine\",\"health\":96.45789794921875},\"oil\":{\"type\":\"stock_oil\",\"health\":99.71607819995885}}', 883.225),
(0, '44KUN258', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99987792661595},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99962280618226},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99910467583122},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99988442830771},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99916381835938},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99963266696136}}', 0),
(0, '81IUC413', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99996303236392},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99987668392406},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99966978286612},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99996382076007},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99979248046876},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99993550864038}}', 0),
(0, '42NAJ762', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9999761667029},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9999313144608},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99985741853304},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99997807981987},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9996826171875},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99990279060092}}', 0),
(0, '60GGS028', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9999802214593},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99993660633197},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99984011755199},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99998097876115},\"engine\":{\"type\":\"stock_engine\",\"health\":99.67943115234375},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99995221015881}}', 0),
(0, '44ZSS750', '{\"oil\":{\"health\":99.86933831441202,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.95529388754695,\"type\":\"stock_brakes\"},\"engine\":{\"health\":92.49995727539063,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.95265789607247,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.98092175474311,\"type\":\"stock_transmition\"},\"suspension\":{\"health\":99.98378769577491,\"type\":\"stock_suspension\"}}', 403.663),
(0, '07XMX188', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.80942622030723},\"engine\":{\"type\":\"stock_engine\",\"health\":97.0873046875},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94275026900407},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.8583834077185},\"oil\":{\"type\":\"stock_oil\",\"health\":99.64629398740499},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.950381108769}}', 1074.51),
(0, 'WAL18648', '{\"oil\":{\"type\":\"stock_oil\",\"health\":98.47674151473335},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.79188246581633},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.53135721178927},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.82561864522285},\"engine\":{\"type\":\"stock_engine\",\"health\":94.42994995117188},\"tires\":{\"type\":\"stock_tires\",\"health\":99.6073204374644}}', 4805.78),
(0, 'WAL25702', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99817642144639},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9737060546875},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9949575195202},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99564721430184},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.998440023945},\"oil\":{\"type\":\"stock_oil\",\"health\":99.98792012035607}}', 36.9632),
(0, 'WAL83523', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98179267454705},\"engine\":{\"type\":\"stock_engine\",\"health\":99.64473266601563},\"tires\":{\"type\":\"stock_tires\",\"health\":99.94453899521517},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.95575316856952},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98432238982655},\"oil\":{\"type\":\"stock_oil\",\"health\":99.88343668202295}}', 3745.35),
(0, 'WAL85684', '{\"oil\":{\"type\":\"stock_oil\",\"health\":99.99986951120039},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99996702290265},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99990418198932},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99996956859488},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99972534179688},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99979764092206}}', 2.50698),
(0, 'BRIN5029', '{\"oil\":{\"health\":98.49540358945656,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.7961056363867,\"type\":\"stock_transmition\"},\"brakes\":{\"health\":99.54324862688468,\"type\":\"stock_brakes\"},\"engine\":{\"health\":96.49926147460937,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.6307692108101,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.82946653242964,\"type\":\"stock_suspension\"}}', 4755.64),
(0, 'BRIN7554', '{\"suspension\":{\"health\":99.97810649138951,\"type\":\"stock_suspension\"},\"brakes\":{\"health\":99.94049647532019,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.81517391464219,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.97402940675731,\"type\":\"stock_transmition\"},\"tires\":{\"health\":99.94435215342179,\"type\":\"stock_tires\"},\"engine\":{\"health\":99.39403686523437,\"type\":\"stock_engine\"}}', 1011.81),
(0, '24GCG565', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.99623556319223},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99940795898438},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99962166922858},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99961996658358},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99961907027009},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99867364755969}}', 0.0912211),
(0, 'GNMW4601', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.99973470298113},\"engine\":{\"type\":\"stock_engine\",\"health\":99.999853515625},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99992279943986},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99996862811801},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99996741908427},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99989527635469}}', 0.18453),
(0, '65EDA750', '{\"transmition\":{\"health\":99.99606797131216,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.9941650390625,\"type\":\"stock_engine\"},\"brakes\":{\"health\":99.98682540754008,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99343970476493,\"type\":\"stock_oil\"},\"tires\":{\"health\":99.96449851475481,\"type\":\"stock_tires\"},\"suspension\":{\"health\":99.99614427104487,\"type\":\"stock_suspension\"}}', 10.7508),
(0, '84UVA905', '{\"engine\":{\"type\":\"stock_engine\",\"health\":-0.48737773895263},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99824584698817},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99970250038264},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99967201740732},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99908677983572},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99849768984402}}', 2.78525),
(0, '63GOY924', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99480997268069},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98559185053891},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99391546169108},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9591012803337},\"engine\":{\"type\":\"stock_engine\",\"health\":99.91023559570313},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98392489194099}}', 126.334),
(0, '82ICH231', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99933135399538},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99796487922564},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99925870155687},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99645579483631},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99244995117188},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99622327011609}}', 10.1717),
(0, '69CIK912', '{\"engine\":{\"health\":99.98192749023437,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99883699582438,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99550663866101,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99667790130941,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99173642840455,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99865880155677,\"type\":\"stock_transmition\"}}', 25.5924),
(0, 'BRIN7308', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.84011772251945},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.56208472329576},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.81114803336217},\"tires\":{\"type\":\"stock_tires\",\"health\":99.56141327597817},\"engine\":{\"type\":\"stock_engine\",\"health\":95.9514892578125},\"oil\":{\"type\":\"stock_oil\",\"health\":98.68283353939524}}', 19011.6),
(0, '01MPB904', '{\"engine\":{\"health\":99.9968505859375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99877713439536,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.98835114693469,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99578077369414,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.99831310333787,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.99876265741718,\"type\":\"stock_transmition\"}}', 2.03013),
(0, '66IWV632', '{\"engine\":{\"health\":99.999365234375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99964119584834,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99645647115762,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.99874885346543,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.9996320634479,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.9996400844208,\"type\":\"stock_transmition\"}}', 0.142587),
(0, 'BRINKS01', '{\"engine\":{\"health\":99.83043212890625,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99046964656468,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.97440424313575,\"type\":\"stock_tires\"},\"brakes\":{\"health\":99.97395394188934,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.92093167096498,\"type\":\"stock_oil\"},\"transmition\":{\"health\":99.98872912777601,\"type\":\"stock_transmition\"}}', 250.81),
(0, '00LBN291', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.93731299289199},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.81841652119413},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9283079819298},\"tires\":{\"type\":\"stock_tires\",\"health\":99.73378061801907},\"oil\":{\"type\":\"stock_oil\",\"health\":99.57887874962576},\"engine\":{\"type\":\"stock_engine\",\"health\":71.41171264648438}}', 1277.67),
(0, '48BJC060', '{\"brakes\":{\"health\":99.87820829019062,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.94614296786834,\"type\":\"stock_transmition\"},\"engine\":{\"health\":79.5915771484375,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.95480633184887,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.8950310459161,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.60845945744672,\"type\":\"stock_oil\"}}', 1239.42),
(0, '87AQG369', '{\"brakes\":{\"health\":99.99223294652613,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99656065027402,\"type\":\"stock_transmition\"},\"engine\":{\"health\":99.98617553710938,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99711528281515,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99336586142643,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.97494113661556,\"type\":\"stock_oil\"}}', 80.5347),
(0, '01UNZ866', '{\"brakes\":{\"health\":99.99915763689775,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":99.99975914369813,\"type\":\"stock_transmition\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"suspension\":{\"health\":99.99975922602981,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.99759555768239,\"type\":\"stock_tires\"},\"oil\":{\"health\":99.99977996899394,\"type\":\"stock_oil\"}}', 0.00651686),
(0, 'CVPIPD2', '{\"engine\":{\"type\":\"stock_engine\",\"health\":99.97252807617187},\"oil\":{\"type\":\"stock_oil\",\"health\":99.92421773340387},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.9728308267236},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99025192718057},\"tires\":{\"type\":\"stock_tires\",\"health\":99.96878372840895},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98859738394454}}', 239.675),
(0, 'FPIUPD4', '{\"engine\":{\"health\":99.99640502929688,\"type\":\"stock_engine\"},\"oil\":{\"health\":98.94817436447137,\"type\":\"stock_oil\"},\"brakes\":{\"health\":99.68341721147918,\"type\":\"stock_brakes\"},\"suspension\":{\"health\":99.88154146495947,\"type\":\"stock_suspension\"},\"tires\":{\"health\":99.75012523743739,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.85820287350279,\"type\":\"stock_transmition\"}}', 3337.45),
(0, 'SUB01', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99961819425391},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99993286132812},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99891312710315},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99989074149255},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99989059886639},\"oil\":{\"type\":\"stock_oil\",\"health\":99.99989589098415}}', 0.0199651),
(0, '02CRZ761', '{\"engine\":{\"type\":\"stock_engine\",\"health\":98.51760864257813},\"oil\":{\"type\":\"stock_oil\",\"health\":97.74080647250735},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.35570812510658},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.75549760359607},\"tires\":{\"type\":\"stock_tires\",\"health\":99.5714602803485},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.70514843394843}}', 7298.37),
(0, '67OMM130', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99626545692644},\"engine\":{\"type\":\"stock_engine\",\"health\":99.99987182617187},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9956868207508},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98582894810048},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97320414611989},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98935937118094}}', 83.7396),
(0, '49QWC718', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98951981841238},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9933349609375},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.9874281896318},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97896791678531},\"oil\":{\"type\":\"stock_oil\",\"health\":99.90585687095863},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97210420532174}}', 301.71),
(0, '29NXJ026', '{\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99338186914753},\"engine\":{\"type\":\"stock_engine\",\"health\":99.98705444335937},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99213870058544},\"tires\":{\"type\":\"stock_tires\",\"health\":99.98360759238735},\"oil\":{\"type\":\"stock_oil\",\"health\":99.94369535546835},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98205784997733}}', 177.317),
(0, '09KDP939', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.84786917051791},\"tires\":{\"type\":\"stock_tires\",\"health\":99.87210172846372},\"engine\":{\"type\":\"stock_engine\",\"health\":99.90860595703126},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.94341057315697},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.93247434352158},\"oil\":{\"type\":\"stock_oil\",\"health\":99.50615221561209}}', 1561.31),
(0, '00OGF040', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.96730194026306},\"tires\":{\"type\":\"stock_tires\",\"health\":99.97534390934195},\"engine\":{\"type\":\"stock_engine\",\"health\":99.81701049804687},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.98771579616298},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.98526421195038},\"oil\":{\"type\":\"stock_oil\",\"health\":99.88965505593866}}', 351.814),
(0, '49AEO719', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.87795342004366},\"tires\":{\"type\":\"stock_tires\",\"health\":99.91241109791075},\"engine\":{\"type\":\"stock_engine\",\"health\":99.31126708984375},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.9539588272119},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94464989273512},\"oil\":{\"type\":\"stock_oil\",\"health\":99.5815510981844}}', 1332.24),
(0, '26CSE649', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.97822611693836},\"engine\":{\"type\":\"stock_engine\",\"health\":99.93969116210937},\"oil\":{\"type\":\"stock_oil\",\"health\":99.97194094922418},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98656950988728},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99545260178121},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99486083900584}}', 83.8265),
(0, '85HXM076', '{\"tires\":{\"type\":\"stock_tires\",\"health\":99.92832150033078},\"engine\":{\"type\":\"stock_engine\",\"health\":99.260498046875},\"oil\":{\"type\":\"stock_oil\",\"health\":99.66567484622719},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.90192895503067},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.96305886781353},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.95562483979364}}', 1062.31),
(0, '62SGM926', '{\"brakes\":{\"health\":99.9334321720132,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.77069809978269,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.97485697097234,\"type\":\"stock_suspension\"},\"engine\":{\"health\":91.9365234375,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.952946515216,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.96975392963688,\"type\":\"stock_transmition\"}}', 720.823),
(0, '21IKE087', '{\"brakes\":{\"health\":99.8630134724,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.51242316006766,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.94780610804969,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.73135986328126,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.91376783615077,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.93692703799606,\"type\":\"stock_transmition\"}}', 1537.71),
(0, '01JFT136', '{\"brakes\":{\"health\":99.84088532118997,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.43044330676523,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.93928205453595,\"type\":\"stock_suspension\"},\"engine\":{\"health\":92.08556518554687,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.90200985942839,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.92656821398487,\"type\":\"stock_transmition\"}}', 1802.03),
(0, '81GBI228', '{\"brakes\":{\"health\":99.97461165231187,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.91209519383945,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.99039766187559,\"type\":\"stock_suspension\"},\"engine\":{\"health\":99.95277099609375,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.98235862391774,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.98844055812632,\"type\":\"stock_transmition\"}}', 275.156),
(0, '80XAK225', '{\"brakes\":{\"health\":99.89629471310397,\"type\":\"stock_brakes\"},\"oil\":{\"health\":99.63352252669864,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.96056298009236,\"type\":\"stock_suspension\"},\"engine\":{\"health\":98.31119384765626,\"type\":\"stock_engine\"},\"tires\":{\"health\":99.93293635458204,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.9523905318114,\"type\":\"stock_transmition\"}}', 1161.58),
(0, '88XKK404', '{\"brakes\":{\"health\":98.08169491520759,\"type\":\"stock_brakes\"},\"oil\":{\"health\":93.18997133985045,\"type\":\"stock_oil\"},\"suspension\":{\"health\":99.2696112395607,\"type\":\"stock_suspension\"},\"engine\":{\"health\":85.51002807617188,\"type\":\"stock_engine\"},\"tires\":{\"health\":98.78042807385306,\"type\":\"stock_tires\"},\"transmition\":{\"health\":99.1176932450979,\"type\":\"stock_transmition\"}}', 21586.8),
(0, '61BXN674', '{\"oil\":{\"health\":100,\"type\":\"stock_oil\"},\"engine\":{\"health\":100.0,\"type\":\"stock_engine\"},\"suspension\":{\"health\":100,\"type\":\"stock_suspension\"},\"tires\":{\"health\":100,\"type\":\"stock_tires\"},\"brakes\":{\"health\":100,\"type\":\"stock_brakes\"},\"transmition\":{\"health\":100,\"type\":\"stock_transmition\"}}', 0),
(0, '60HMH501', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.66130760061361},\"oil\":{\"type\":\"stock_oil\",\"health\":98.81419861247693},\"tires\":{\"type\":\"stock_tires\",\"health\":99.7735000476385},\"engine\":{\"type\":\"stock_engine\",\"health\":97.05890502929688},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.84509798873309},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.87152196795997}}', 3768.83),
(0, '03LBG361', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.32680162215675},\"oil\":{\"type\":\"stock_oil\",\"health\":97.57684037919577},\"tires\":{\"type\":\"stock_tires\",\"health\":99.59446792562815},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.74272105607075},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.68860726418756},\"engine\":{\"type\":\"stock_engine\",\"health\":99.79244995117188}}', 7738.28),
(0, '85JKX244', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.58670459546008},\"oil\":{\"type\":\"stock_oil\",\"health\":98.5425335654014},\"tires\":{\"type\":\"stock_tires\",\"health\":99.73067336989887},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.84292020264405},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.8104240392621},\"engine\":{\"type\":\"stock_engine\",\"health\":75.54818115234375}}', 4645.88),
(0, '24DDF756', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.99999817420225},\"oil\":{\"type\":\"stock_oil\",\"health\":99.9999929576372},\"tires\":{\"type\":\"stock_tires\",\"health\":99.99999921751525},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99999928865023},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99999913057249},\"engine\":{\"type\":\"stock_engine\",\"health\":99.9999755859375}}', 0.0230905),
(0, '09MMJ779', '{\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.86572918552953},\"oil\":{\"type\":\"stock_oil\",\"health\":99.562866499599},\"tires\":{\"type\":\"stock_tires\",\"health\":99.8879688726291},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.95001766860624},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.94033496731865},\"engine\":{\"type\":\"stock_engine\",\"health\":99.0348388671875}}', 1379.41),
(0, '64FYS056', '{\"engine\":{\"type\":\"stock_engine\",\"health\":91.91741333007812},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99256040940282},\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99117418265449},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9811224752975},\"oil\":{\"type\":\"stock_oil\",\"health\":99.93716218515576},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.97978358525252}}', 195.93),
(0, '05AOA347', '{\"transmition\":{\"type\":\"stock_transmition\",\"health\":99.99288431101681},\"tires\":{\"type\":\"stock_tires\",\"health\":99.9863001227723},\"oil\":{\"type\":\"stock_oil\",\"health\":99.94813538642663},\"brakes\":{\"type\":\"stock_brakes\",\"health\":99.98393462895962},\"engine\":{\"type\":\"stock_engine\",\"health\":97.06371459960937},\"suspension\":{\"type\":\"stock_suspension\",\"health\":99.99403230327674}}', 162.571);

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) ,
  `model` varchar(50) ,
  `plate` varchar(50) ,
  `soldby` varchar(50) ,
  `date` varchar(50) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Index pour la table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Index pour la table `ammunition`
--
ALTER TABLE `ammunition`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `weapon_id` (`weapon_id`);

--
-- Index pour la table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cardealer`
--
ALTER TABLE `cardealer`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `car_keys`
--
ALTER TABLE `car_keys`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Index pour la table `doors`
--
ALTER TABLE `doors`
  ADD KEY `index` (`index`);

--
-- Index pour la table `garage_police`
--
ALTER TABLE `garage_police`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `gl_pets`
--
ALTER TABLE `gl_pets`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `hsn_phone_mails`
--
ALTER TABLE `hsn_phone_mails`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `hsn_phone_notes`
--
ALTER TABLE `hsn_phone_notes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `hsn_phone_tweets`
--
ALTER TABLE `hsn_phone_tweets`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `inside_jobs`
--
ALTER TABLE `inside_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inventory_glovebox`
--
ALTER TABLE `inventory_glovebox`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Index pour la table `inventory_trunk`
--
ALTER TABLE `inventory_trunk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Index pour la table `loaf_keys`
--
ALTER TABLE `loaf_keys`
  ADD PRIMARY KEY (`unique_id`);

--
-- Index pour la table `mapbuilder`
--
ALTER TABLE `mapbuilder`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `okokbanking_transactions`
--
ALTER TABLE `okokbanking_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `okokbilling`
--
ALTER TABLE `okokbilling`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `playlist_songs`
--
ALTER TABLE `playlist_songs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prop`
--
ALTER TABLE `prop`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prop_owner`
--
ALTER TABLE `prop_owner`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `racing_leaderboard`
--
ALTER TABLE `racing_leaderboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `track` (`track`);

--
-- Index pour la table `racing_tracks`
--
ALTER TABLE `racing_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `renzu_jobs`
--
ALTER TABLE `renzu_jobs`
  ADD PRIMARY KEY (`name`) USING BTREE;

--
-- Index pour la table `saveclothes`
--
ALTER TABLE `saveclothes`
  ADD PRIMARY KEY (`identifier`) USING BTREE;

--
-- Index pour la table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sm_owned_properties`
--
ALTER TABLE `sm_owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sprays`
--
ALTER TABLE `sprays`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stadus_skills`
--
ALTER TABLE `stadus_skills`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `taxbills`
--
ALTER TABLE `taxbills`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `user_clothes`
--
ALTER TABLE `user_clothes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11)  AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ammunition`
--
ALTER TABLE `ammunition`
  MODIFY `id` bigint(20) UNSIGNED  AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11)  AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `car_keys`
--
ALTER TABLE `car_keys`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT pour la table `doors`
--
ALTER TABLE `doors`
  MODIFY `index` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `gl_pets`
--
ALTER TABLE `gl_pets`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT pour la table `hsn_phone_mails`
--
ALTER TABLE `hsn_phone_mails`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `hsn_phone_notes`
--
ALTER TABLE `hsn_phone_notes`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT pour la table `hsn_phone_tweets`
--
ALTER TABLE `hsn_phone_tweets`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT pour la table `inside_jobs`
--
ALTER TABLE `inside_jobs`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20)  AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `inventory_glovebox`
--
ALTER TABLE `inventory_glovebox`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `inventory_trunk`
--
ALTER TABLE `inventory_trunk`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=1614;

--
-- AUTO_INCREMENT pour la table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=1079;

--
-- AUTO_INCREMENT pour la table `mapbuilder`
--
ALTER TABLE `mapbuilder`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT pour la table `okokbanking_transactions`
--
ALTER TABLE `okokbanking_transactions`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT pour la table `okokbilling`
--
ALTER TABLE `okokbilling`
  MODIFY `id` int(50)  AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT pour la table `playlist_songs`
--
ALTER TABLE `playlist_songs`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `prop`
--
ALTER TABLE `prop`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT pour la table `prop_owner`
--
ALTER TABLE `prop_owner`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=1298;

--
-- AUTO_INCREMENT pour la table `racing_tracks`
--
ALTER TABLE `racing_tracks`
  MODIFY `id` int(11)  AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pour la table `sm_owned_properties`
--
ALTER TABLE `sm_owned_properties`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11)  AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sprays`
--
ALTER TABLE `sprays`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `stadus_skills`
--
ALTER TABLE `stadus_skills`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `taxbills`
--
ALTER TABLE `taxbills`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=3452;

--
-- AUTO_INCREMENT pour la table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=1629;

--
-- AUTO_INCREMENT pour la table `user_clothes`
--
ALTER TABLE `user_clothes`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11)  AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `racing_leaderboard`
--
ALTER TABLE `racing_leaderboard`
  ADD CONSTRAINT `racing_leaderboard_ibfk_1` FOREIGN KEY (`track`) REFERENCES `racing_tracks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
