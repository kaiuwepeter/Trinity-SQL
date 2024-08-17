CREATE DATABASE IF NOT EXISTS `auth` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `auth`;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `battlenet_account_mounts_auto` AFTER INSERT ON `battlenet_accounts` FOR EACH ROW -- Every new account automatically gets all mounts

BEGIN

  IF NEW.`id`>0 THEN

replace into `battlenet_account_mounts` (`battlenetAccountId`, `mountSpellId`, `flags`) VALUES 

----------------------- -- German mount names
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
(NEW.`id`, '10796', '0'); -- Türkisfarbener Raptor
-- 25 Mounts	1
  END IF;

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;
