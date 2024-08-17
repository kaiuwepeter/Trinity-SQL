CREATE DATABASE IF NOT EXISTS `auth` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `auth`;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `battlenet_account_mounts_auto` AFTER INSERT ON `battlenet_accounts` FOR EACH ROW -- Every new account automatically gets all mounts

BEGIN

  IF NEW.`id`>0 THEN

replace into `battlenet_account_mounts` (`battlenetAccountId`, `mountSpellId`, `flags`) VALUES 

-- -------------------- -- German mount names
(NEW.`id`, '458', '0'), -- Braunes Pferd
(NEW.`id`, '459', '0'), -- Grauer Wolf
(NEW.`id`, '468', '0'), -- Schimmel	
(NEW.`id`, '470', '0'), -- Rappe
(NEW.`id`, '472', '0'), -- Schecke
(NEW.`id`, '578', '0'), -- Schwarzer Wolf
(NEW.`id`, '579', '0'), -- Roter Wolf
(NEW.`id`, '580', '0'), -- Waldwolf
(NEW.`id`, '581', '0'), -- Winterwolf
(NEW.`id`, '5784', '0'), -- Teufelsross (Hexenmeister)
(NEW.`id`, '6648', '0'), -- Kastanienbraune Stute
(NEW.`id`, '6653', '0'), -- Terrorwolf
(NEW.`id`, '6654', '0'), -- Brauner Wolf
(NEW.`id`, '6777', '0'), -- Grauer Widder
(NEW.`id`, '6896', '0'), -- Schwarzer Widder
(NEW.`id`, '6898', '0'), -- Weißer Widder
(NEW.`id`, '6899', '0'), -- Brauner Widder
(NEW.`id`, '8394', '0'), -- Gestreifter Frostsaebler
(NEW.`id`, '8395', '0'), -- Smaragdgruener Raptor
(NEW.`id`, '8980', '0'), -- Skelettpferd
(NEW.`id`, '10789', '0'), -- Gefleckter Frostsaebler
(NEW.`id`, '10790', '0'), -- Tiger
(NEW.`id`, '10793', '0'), -- Gestreifter Nachtsaebler
(NEW.`id`, '10795', '0'), -- Elfenbeinfarbener Raptor
(NEW.`id`, '10796', '0'), -- Türkisfarbener Raptor
-- 1 (25)
(NEW.`id`, '10799', '0'), -- Violetter Raptor
(NEW.`id`, '10873', '0'), -- Roter Roboschreiter
(NEW.`id`, '10969', '0'), -- Blauer Roboschreiter
(NEW.`id`, '13819', '0'), -- Schlachtross (Paladin)
(NEW.`id`, '15779', '0'), -- Weißer Roboschreiter
(NEW.`id`, '15780', '0'), -- Grüner Roboschreiter
(NEW.`id`, '16055', '0'), -- Nachtsäbler
(NEW.`id`, '16056', '0'), -- Frostsäbler
(NEW.`id`, '16080', '0'), -- Roter Wolf
(NEW.`id`, '16081', '0'), -- Arktischer Wolf
(NEW.`id`, '16082', '0'), -- Palomino-Hengst
(NEW.`id`, '16083', '0'), -- Schimmel
(NEW.`id`, '16084', '0'), -- Rotgescheckter Raptor
(NEW.`id`, '17229', '0'), -- Winterspringfrostsäbler
(NEW.`id`, '17450', '0'), -- Elfenbeinfarbener Raptor
(NEW.`id`, '17453', '0'), -- Grüner Roboschreiter
(NEW.`id`, '17454', '0'), -- Unlackierter Roboschreiter
(NEW.`id`, '17459', '0'), -- Eisblauer Roboschreiter
(NEW.`id`, '17460', '0'), -- Frostwidder
(NEW.`id`, '17461', '0'), -- Schwarzer Widder
(NEW.`id`, '17462', '0'), -- Rotes Skelettpferd
(NEW.`id`, '17463', '0'), -- Blaues Skelettpferd
(NEW.`id`, '17464', '0'), -- Braunes Skelettpferd
(NEW.`id`, '17465', '0'), -- Grünes Skelettschlachtross
(NEW.`id`, '17481', '0'), -- Todesstreitross
-- 2 (50)
(NEW.`id`, '18363', '0'), -- Reitkodo
(NEW.`id`, '18989', '0'), -- Grauer Kodo
(NEW.`id`, '18990', '0'), -- Brauner Kodo
(NEW.`id`, '18991', '0'), -- Grüner Kodo
(NEW.`id`, '18992', '0'), -- Graublauer Kodo
(NEW.`id`, '22717', '0'), -- Schwarzes Schlachtross
(NEW.`id`, '22718', '0'), -- Schwarzer Kriegskodo
(NEW.`id`, '22719', '0'), -- Schwarzer Schlachtenschreiter
(NEW.`id`, '22720', '0'), -- Schwarzer Kriegswidder
(NEW.`id`, '22721', '0'), -- Schwarzer Kriegsraptor
(NEW.`id`, '22722', '0'), -- Rotes Skelettschlachtross
(NEW.`id`, '22723', '0'), -- Schwarzer Kriegstiger
(NEW.`id`, '22724', '0'), -- Schwarzer Kriegswolf
(NEW.`id`, '23161', '0'), -- Schreckensross (Hexenmeister)
(NEW.`id`, '23214', '0'), -- Streitross (Paladin 60)
(NEW.`id`, '23219', '0'), -- Schneller Schattensäbler
(NEW.`id`, '23221', '0'), -- Schneller Frostsäbler
(NEW.`id`, '23222', '0'), -- Schneller gelber Roboschreiter
(NEW.`id`, '23223', '0'), -- Schneller weißer Roboschreiter
(NEW.`id`, '23225', '0'), -- Schneller grüner Roboschreiter
(NEW.`id`, '23227', '0'), -- Schneller Palomino
(NEW.`id`, '23228', '0'), -- Schnelles weißes Ross
(NEW.`id`, '23229', '0'), -- Schneller Brauner
(NEW.`id`, '23238', '0'), -- Schneller brauner Widder
(NEW.`id`, '37015', '0'), -- Schneller Netherdrache ???
-- 3 (75)
(NEW.`id`, '23239', '0'), -- Schneller grauer Widder
(NEW.`id`, '23240', '0'), -- Schneller weißer Widder
(NEW.`id`, '23241', '0'), -- Schneller blauer Raptor
(NEW.`id`, '23242', '0'), -- Schneller olivfarbener Raptor
(NEW.`id`, '23243', '0'), -- Schneller orangefarbener Raptor
(NEW.`id`, '23246', '0'), -- Purpurnes Skelettschlachtross
(NEW.`id`, '23247', '0'), -- Großer weißer Kodo
(NEW.`id`, '23248', '0'), -- Großer grauer Kodo
(NEW.`id`, '23249', '0'), -- Großer brauner Kodo
(NEW.`id`, '23250', '0'), -- Schneller brauner Wolf
(NEW.`id`, '23251', '0'), -- Schneller Waldwolf
(NEW.`id`, '23252', '0'), -- Schneller grauer Wolf
(NEW.`id`, '23338', '0'), -- Schneller Sturmsäbler
(NEW.`id`, '23509', '0'), -- Frostwolfheuler
(NEW.`id`, '23510', '0'), -- Streitwidder der Sturmlanzen
(NEW.`id`, '24242', '0'), -- Schneller Razzashiraptor
(NEW.`id`, '24252', '0'), -- Schneller zulianischer Tiger
(NEW.`id`, '25863', '0'), -- Schwarze Qirajipanzerdrohne
(NEW.`id`, '25953', '0'), -- Blaue Qirajipanzerdrohne
(NEW.`id`, '26054', '0'), -- Rote Qirajipanzerdrohne
(NEW.`id`, '26055', '0'), -- Gelbe Qirajipanzerdrohne
(NEW.`id`, '26056', '0'), -- Grüne Qirajipanzerdrohne
(NEW.`id`, '26655', '0'), -- Schwarze Qirajipanzerdrohne
(NEW.`id`, '26656', '0'), -- Schwarze Qirajipanzerdrohne
(NEW.`id`, '28828', '0'); -- Netherdrache
-- 4 (100)
(NEW.`id`, '30174', '0'),
(NEW.`id`, '32235', '0'),
(NEW.`id`, '32239', '0'),
(NEW.`id`, '32240', '0'),
(NEW.`id`, '32242', '0'),
(NEW.`id`, '32243', '0'),
(NEW.`id`, '32244', '0'),
(NEW.`id`, '32245', '0'),
(NEW.`id`, '32246', '0'),
(NEW.`id`, '32289', '0'),
(NEW.`id`, '32290', '0'),
(NEW.`id`, '32292', '0'),
(NEW.`id`, '32295', '0'),
(NEW.`id`, '32296', '0'),
(NEW.`id`, '32297', '0'),
(NEW.`id`, '33630', '0'),
(NEW.`id`, '33660', '0'),
(NEW.`id`, '34406', '0'),
(NEW.`id`, '34767', '0'),
(NEW.`id`, '34769', '0'),
(NEW.`id`, '42776', '0'),
(NEW.`id`, '34790', '0'),
(NEW.`id`, '34795', '0'),
(NEW.`id`, '34896', '0'),
(NEW.`id`, '34897', '0'),
-- 5 (125)
(NEW.`id`, '34898', '0'),
(NEW.`id`, '34899', '0'),
(NEW.`id`, '35018', '0'),
(NEW.`id`, '35020', '0'),
(NEW.`id`, '35022', '0'),
(NEW.`id`, '35025', '0'),
(NEW.`id`, '35027', '0'),
(NEW.`id`, '35028', '0'),
(NEW.`id`, '35710', '0'),
(NEW.`id`, '35711', '0'),
(NEW.`id`, '35712', '0'),
(NEW.`id`, '35713', '0'),
(NEW.`id`, '35714', '0'),
(NEW.`id`, '36702', '0'),
(NEW.`id`, '139595', '0'),
(NEW.`id`, '39315', '0'),
(NEW.`id`, '39316', '0'),
(NEW.`id`, '39317', '0'),
(NEW.`id`, '39318', '0'),
(NEW.`id`, '39319', '0'),
(NEW.`id`, '39798', '0'),
(NEW.`id`, '39800', '0'),
(NEW.`id`, '39801', '0'),
(NEW.`id`, '39802', '0'),
(NEW.`id`, '39803', '0');
-- 6 (150)

  END IF;

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;
