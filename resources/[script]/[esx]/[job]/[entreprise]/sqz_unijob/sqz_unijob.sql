

CREATE TABLE IF NOT EXISTS `sqz_unijob_inventory` (
  `vault` longtext,
  `item` varchar(50) DEFAULT NULL,
  `count` longtext,
  `label` longtext,
  `type` longtext,
  `item_id` longtext
) COMMENT='sqz_unijob_inventory';

CREATE TABLE `sqz_unijob_log` (
  `Steam` longtext,
  `OOCname` longtext,
  `Target` longtext,
  `Time` longtext,
  `Type` longtext
) COMMENT='sqz_unijob_log';

INSERT INTO `items` (`name`, `label`, `weight`) VALUES
	('cuffs', 'Menottes', 1)
;
