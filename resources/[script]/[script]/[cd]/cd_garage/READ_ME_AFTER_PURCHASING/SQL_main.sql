CREATE TABLE IF NOT EXISTS `owned_vehicles` (
	`owner` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_bin',
	`plate` VARCHAR(12) NOT NULL COLLATE 'utf8mb4_bin',
	`vehicle` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_bin',
	`impound` INT(1) NOT NULL DEFAULT '0',
	`property` MEDIUMINT(9) NOT NULL DEFAULT '0',
	`garage_type` VARCHAR(50) NULL DEFAULT 'car' COLLATE 'utf8mb4_bin',
	`garage_id` VARCHAR(50) NULL DEFAULT 'A' COLLATE 'utf8mb4_bin', -- IF YOU PLAN TO CHANGE THE NAMES OF THE garage_id's IN THE CONFIG.LUA, THEN MAKE SURE YOU CHANGE THE DEFAULT garage_id NAME ALSO.
	`adv_stats` LONGTEXT NULL DEFAULT '{"plate":"nil","mileage":0.0,"maxhealth":1000.0}' COLLATE 'utf8mb4_bin',
	`in_garage` TINYINT(1) NULL DEFAULT '0',
	`job_personalowned` TINYINT(1) NULL DEFAULT '0',
	PRIMARY KEY (`plate`) USING BTREE,
	INDEX `vehsowned` (`owner`) USING BTREE
)
COLLATE='utf8mb4_bin'
ENGINE=InnoDB
;


ALTER TABLE `owned_vehicles` ADD COLUMN IF NOT EXISTS `garage_type` VARCHAR(50) NULL DEFAULT 'car' COLLATE 'utf8mb4_bin';
ALTER TABLE `owned_vehicles` ADD COLUMN IF NOT EXISTS `garage_id` VARCHAR(50) NULL DEFAULT 'A' COLLATE 'utf8mb4_bin'; -- IF YOU PLAN TO CHANGE THE NAMES OF THE garage_id's IN THE CONFIG.LUA, THEN MAKE SURE YOU CHANGE THE DEFAULT garage_id NAME ALSO.
ALTER TABLE `owned_vehicles` ADD COLUMN IF NOT EXISTS `in_garage` TINYINT(1) NULL DEFAULT '0';
ALTER TABLE `owned_vehicles` ADD COLUMN IF NOT EXISTS `impound` INT(10) NULL DEFAULT '0';
ALTER TABLE `owned_vehicles` ADD COLUMN IF NOT EXISTS `adv_stats` LONGTEXT NULL DEFAULT '{"plate":"nil","mileage":0.0,"maxhealth":1000.0}' COLLATE 'utf8mb4_bin';
ALTER TABLE `owned_vehicles` ADD COLUMN IF NOT EXISTS `property` INT(10) NULL DEFAULT '0';
ALTER TABLE `owned_vehicles` ADD COLUMN IF NOT EXISTS `job_personalowned` TINYINT(1) NULL DEFAULT '0';
ALTER TABLE `users` ADD COLUMN IF NOT EXISTS `garage_tax` INT(10) NULL DEFAULT '1';
ALTER TABLE `users` ADD COLUMN IF NOT EXISTS `garage_limit` INT(10) NULL DEFAULT '0';
ALTER TABLE `users` ADD COLUMN IF NOT EXISTS `phone_number` VARCHAR(10) NULL DEFAULT NULL COLLATE 'utf8mb4_bin';
ALTER TABLE `vehicles` ADD COLUMN IF NOT EXISTS `garage_tax` INT(10) NULL DEFAULT '0';


CREATE TABLE IF NOT EXISTS `vehicles` (
	`name` VARCHAR(60) NOT NULL COLLATE 'utf8mb4_bin',
	`model` VARCHAR(60) NOT NULL COLLATE 'utf8mb4_bin',
	`price` INT(11) NOT NULL,
	`category` VARCHAR(60) NULL DEFAULT NULL COLLATE 'utf8mb4_bin',
	`garage_tax` INT(10) NULL DEFAULT '0',
	PRIMARY KEY (`model`) USING BTREE
)
COLLATE='utf8mb4_bin'
ENGINE=InnoDB
;