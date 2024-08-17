
CREATE DATABASE IF NOT EXISTS `auth` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `auth`;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `battlenet_account_heirlooms_auto` AFTER INSERT ON `battlenet_accounts` FOR EACH ROW -- Every new account automatically gets all heirlooms (updated)

BEGIN

  IF NEW.`id`>0 THEN

replace into `battlenet_account_heirlooms` (`accountId`, `itemId`, `flags`) VALUES 
------------------------------ The labeling of the items is in German
(NEW.`id`, '105678', '15'), -- Höllschreis Schicksalsklinge - 1H Schwert
(NEW.`id`, '105693', '15'), -- Höllschreis Schildwall - Schild
(NEW.`id`, '122245', '63'), -- Polierter Helm der Ehre - Platte Kopf
(NEW.`id`, '122246', '63'), -- Stumpfer Helm des tobenden Berserkers - Kette Kopf
(NEW.`id`, '122247', '63'), -- Mystische Helmkappe der Elemente - Kette Kopf
(NEW.`id`, '122248', '63'), -- Befleckte Kappe der Schattenkunst - Leder Kopf
(NEW.`id`, '122249', '63'), -- Geputzte Stammeskriegfedern - Leder Kopf
(NEW.`id`, '122250', '63'), -- Zerlumpte Maske der Furcht - Stoff Kopf
(NEW.`id`, '122251', '63'), -- Polierte Beinplatten der Ehre - Platte Beine
(NEW.`id`, '122252', '63'), -- Stumpfe Beinlinge der Zerstörung - Kette Beine
(NEW.`id`, '122253', '63'), -- Mystischer Kilt der Elemente - Kette Beine
(NEW.`id`, '122254', '63'), -- Befleckte Hose der Schattenkunst - Leder Beine
(NEW.`id`, '122255', '63'), -- Geputzte Wildfedergamaschen - Leder Beine
(NEW.`id`, '122256', '63'), -- Zerlumpte Gamaschen der Furcht - Stoff Beine
(NEW.`id`, '122260', '63'), -- Abgenutztes Steinhautgargoylecape - Rücken
(NEW.`id`, '122261', '63'), -- Geerbtes Cape des Schwarzen Barons - Rücken
(NEW.`id`, '122262', '63'), -- Uralter Blutmondumhang - Rücken
(NEW.`id`, '122263', '63'), -- Brünierter Helm der Macht - Platte Helm
(NEW.`id`, '122264', '63'), -- Brünierte Beinplatten der Macht - Platte Beine
(NEW.`id`, '122266', '63'), -- Zerfetzter Sandsturmumhang - Rücken
(NEW.`id`, '122349', '63'), -- Blutiger Arkanitschnitter - 2H Axt
(NEW.`id`, '122350', '63'), -- Ausbalancierter Herzsucher - 1H Dolch
(NEW.`id`, '122351', '63'), -- Des ehrwürdigen Dal'Rends hochheilige Attacke - 1H Schwert
(NEW.`id`, '122352', '63'), -- Verzauberter antiker Knochenbogen - Bogen
(NEW.`id`, '122353', '63'), -- Attacke des würdevollen Direktors - 2H Stab
(NEW.`id`, '122354', '63'), --
(NEW.`id`, '122355', '63'), --
(NEW.`id`, '122356', '63'), --
(NEW.`id`, '122357', '63'), --
(NEW.`id`, '122358', '63'), --
(NEW.`id`, '122359', '63'), --
(NEW.`id`, '122360', '63'), --
(NEW.`id`, '122361', '63'), --
(NEW.`id`, '122362', '63'), --
(NEW.`id`, '122363', '63'), --
(NEW.`id`, '122364', '63'), --
(NEW.`id`, '122365', '63'), --
(NEW.`id`, '122366', '63'), --
(NEW.`id`, '122367', '63'), --
(NEW.`id`, '122368', '63'), --
(NEW.`id`, '122369', '63'), --
(NEW.`id`, '122370', '63'), --
(NEW.`id`, '122371', '63'), --
(NEW.`id`, '122372', '63'), --
(NEW.`id`, '122373', '63'), --
(NEW.`id`, '122374', '63'), --
(NEW.`id`, '122375', '63'), --
(NEW.`id`, '122376', '63'), --
(NEW.`id`, '122377', '63'), --
(NEW.`id`, '122378', '63'), --
(NEW.`id`, '122379', '63'), --
(NEW.`id`, '122380', '63'), --
(NEW.`id`, '122381', '63'), --
(NEW.`id`, '122382', '63'), --
(NEW.`id`, '122383', '63'), --
(NEW.`id`, '122384', '63'), --
(NEW.`id`, '122385', '63'), --
(NEW.`id`, '122386', '63'), --
(NEW.`id`, '122387', '63'), --
(NEW.`id`, '122388', '63'), --
(NEW.`id`, '122389', '63'), --
(NEW.`id`, '122390', '63'), --
(NEW.`id`, '122391', '63'), --
(NEW.`id`, '122392', '63'), --
(NEW.`id`, '122396', '63'), --
(NEW.`id`, '122529', '63'), --
(NEW.`id`, '122530', '63'), --
(NEW.`id`, '122662', '63'), --
(NEW.`id`, '122663', '63'), --
(NEW.`id`, '122664', '63'), --
(NEW.`id`, '122666', '63'), --
(NEW.`id`, '122667', '63'), --
(NEW.`id`, '122668', '63'), --
(NEW.`id`, '126948', '15'), --
(NEW.`id`, '126949', '15'), --
(NEW.`id`, '127010', '63'), --
(NEW.`id`, '127011', '63'), --
(NEW.`id`, '127012', '63'), --
(NEW.`id`, '128169', '63'), --
(NEW.`id`, '128172', '63'), --
(NEW.`id`, '128173', '63'), --
(NEW.`id`, '128318', '15'), --
(NEW.`id`, '131733', '15'), --
(NEW.`id`, '140773', '63'), --
(NEW.`id`, '153130', '63'), --
(NEW.`id`, '166752', '63'), --
(NEW.`id`, '166753', '63'), --
(NEW.`id`, '166754', '63'), --
(NEW.`id`, '166755', '63'), --
(NEW.`id`, '166756', '63'), --
(NEW.`id`, '166766', '63'), --
(NEW.`id`, '166767', '63'), --
(NEW.`id`, '166768', '63'), --
(NEW.`id`, '166769', '63'), --
(NEW.`id`, '166770', '63'), --
(NEW.`id`, '199686', '3'), --
(NEW.`id`, '219325', '3'); -- Ring(Fingers) Name: Band of Radiant Echoes (War Within Pre-patch)
-- 96 Items Stand 17.08.2024

	
  END IF;

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

