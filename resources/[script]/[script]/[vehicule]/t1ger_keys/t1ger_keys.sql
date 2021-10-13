-- if u already have the old t1ger_keys.sql in your database, then use this:

ALTER TABLE owned_vehicles CHANGE COLUMN `gotKey` `t1ger_keys` tinyint(1) NOT NULL DEFAULT 0;

UPDATE owned_vehicles SET alarm = 1 WHERE alarm > 0;

ALTER TABLE owned_vehicles CHANGE COLUMN alarm t1ger_alarm tinyint(1) NOT NULL DEFAULT 0;

-- if u dont have gotKey or alarm column in database then use this:
ALTER TABLE owned_vehicles
ADD t1ger_keys tinyint(1) NOT NULL DEFAULT 0,
ADD t1ger_alarm tinyint(1) NOT NULL DEFAULT 0;
