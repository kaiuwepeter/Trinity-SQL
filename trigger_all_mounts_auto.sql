CREATE DATABASE IF NOT EXISTS `auth` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `auth`;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `battlenet_account_mounts_auto` AFTER INSERT ON `battlenet_accounts` FOR EACH ROW -- Every new account automatically gets all mounts

BEGIN

  IF NEW.`id`>0 THEN

replace into `battlenet_account_mounts` (`battlenetAccountId`, `mountSpellId`, `flags`) VALUES 

-- Why are there more ids than mounts in the list?
--
-- Not all mounts are available,
-- some never made it into the game
-- others were removed from the game
-- but all available mounts will be added

All IDs were checked via WoWHead and are or were available
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
(NEW.`id`, '28828', '0'), -- Netherdrache
-- 4 (100)
(NEW.`id`, '30174', '0'), -- Reitschildkröte
(NEW.`id`, '32235', '0'), -- Goldener Greif
(NEW.`id`, '32239', '0'), -- Schwarzer Greif
(NEW.`id`, '32240', '0'), -- Weißer Greif
(NEW.`id`, '32242', '0'), -- Schneller blauer Greif
(NEW.`id`, '32243', '0'), -- Lohfarbener Windreiter
(NEW.`id`, '32244', '0'), -- Blauer Windreiter
(NEW.`id`, '32245', '0'), -- Grüner Windreiter
(NEW.`id`, '32246', '0'), -- Schneller roter Windreiter
(NEW.`id`, '32289', '0'), -- Schneller roter Greif
(NEW.`id`, '32290', '0'), -- Schneller grüner Greif
(NEW.`id`, '32292', '0'), -- Schneller purpurfarbener Grei
(NEW.`id`, '32295', '0'), -- Schneller grüner Windreiter
(NEW.`id`, '32296', '0'), -- Schneller gelber Windreiter
(NEW.`id`, '32297', '0'), -- Schneller lila Windreiter
(NEW.`id`, '33630', '0'), -- Blauer Roboschreiter
(NEW.`id`, '33660', '0'), -- Schneller pinkfarbener Falkenschreiter
(NEW.`id`, '34406', '0'), -- Brauner Elekk
(NEW.`id`, '34767', '0'), -- Thalassisches Streitross (Paladin Horde)
(NEW.`id`, '34769', '0'), -- Thalassisches Schlachtross beschwören (Paladin Horde)
(NEW.`id`, '42776', '0'), -- Spektraltiger <3
(NEW.`id`, '34790', '0'), -- Dunkler Kriegstalbuk
(NEW.`id`, '34795', '0'), -- Roter Falkenschreiter
(NEW.`id`, '34896', '0'), -- Kobaltblauer Kriegstalbuk
(NEW.`id`, '34897', '0'), -- Weißer Kriegstalbuk
-- 5 (125)
(NEW.`id`, '34898', '0'), -- Silberner Kriegstalbuk
(NEW.`id`, '34899', '0'), -- Brauner Kriegstalbuk
(NEW.`id`, '35018', '0'), -- Lila Falkenschreiter
(NEW.`id`, '35020', '0'), -- Blauer Falkenschreiter
(NEW.`id`, '35022', '0'), -- Schwarzer Falkenschreiter
(NEW.`id`, '35025', '0'), -- Schneller grüner Falkenschreiter
(NEW.`id`, '35027', '0'), -- Schneller lila Falkenschreiter
(NEW.`id`, '35028', '0'), -- Schneller Kriegsschreiter
(NEW.`id`, '35710', '0'), -- Grauer Elekk
(NEW.`id`, '35711', '0'), -- Lila Elekk
(NEW.`id`, '35712', '0'), -- Großer grüner Elekk
(NEW.`id`, '35713', '0'), -- Großer blauer Elekk
(NEW.`id`, '35714', '0'), -- Großer lila Elekk
(NEW.`id`, '36702', '0'), -- Feuriges Schlachtross (Attumen - Karazhan)
(NEW.`id`, '139595', '0'), -- Gepanzerte Blutschwinge (Shop)
(NEW.`id`, '39315', '0'), -- Kobaltblauer Reittalbuk
(NEW.`id`, '39316', '0'), -- Dunkler Reittalbuk
(NEW.`id`, '39317', '0'), -- Silberner Reittalbuk
(NEW.`id`, '39318', '0'), -- Brauner Reittalbuk
(NEW.`id`, '39319', '0'), -- Weißer Reittalbuk
(NEW.`id`, '39798', '0'), -- Grüner Reitnetherrochen
(NEW.`id`, '39800', '0'), -- Roter Reitnetherrochen
(NEW.`id`, '39801', '0'), -- Lila Reitnetherrochen
(NEW.`id`, '39802', '0'), -- Silberner Reitnetherrochen
(NEW.`id`, '39803', '0'), -- Blauer Reitnetherrochen
-- 6 (150)
(NEW.`id`, '40192', '0'), -- Al'ars Asche - Raid: Das Auge, Festung der Stürme EN: The Eye, Tempest Keep)
(NEW.`id`, '41252', '0'), -- Rabenfürst - Dungeon: Sethekkhallen (Heroisch) EN: Sethekk Halls (Heroic)
(NEW.`id`, '41513', '0'), -- Onyxfarbener Drache der Netherschwingen
(NEW.`id`, '41514', '0'), -- Azurblauer Drache der Netherschwingen
(NEW.`id`, '41515', '0'), -- Kobaltblauer Drache der Netherschwingen
(NEW.`id`, '41516', '0'), -- Lila Drache der Netherschwingen
(NEW.`id`, '41517', '0'), -- Viridiangrüner Drache der Netherschwingen
(NEW.`id`, '41518', '0'), -- Violetter Drache der Netherschwingen
(NEW.`id`, '42777', '0'), -- Schneller Spektraltiger
(NEW.`id`, '43688', '0'), -- Kriegsbär der Amani
(NEW.`id`, '43899', '0'), -- Braufestwidder
(NEW.`id`, '43900', '0'), -- Schneller Braufestwidder
(NEW.`id`, '43927', '0'), -- Cenarischer Kriegshippogryph - Fraktion: Expedition des Cenarius - Ehrfürchtig
(NEW.`id`, '44151', '0'), -- Turbogetriebene Flugmaschine - Beruf: Ingenieurskunst
(NEW.`id`, '44153', '0'), -- Flugmaschine - Beruf: Ingenieurskunst
(NEW.`id`, '44317', '0'), -- Netherdrache des Erbarmungslosen
(NEW.`id`, '44744', '0'), -- Netherdrache des Erbarmungslosen
(NEW.`id`, '46197', '0'), -- X-51 Netherrakete
(NEW.`id`, '46199', '0'), -- X-51 Netherrakete X-TREM
(NEW.`id`, '46628', '0'), -- Schneller weißer Falkenschreiter Dungeon: Terrasse der Magister
(NEW.`id`, '48025', '0'), -- Ross des kopflosen Reiters - Festtag: Schlotternächte
(NEW.`id`, '48027', '0'), -- Schwarzer Kriegselekk - PvP Belohnung
(NEW.`id`, '48778', '0'), -- Todesstreitross von Acherus - (Todesritter)
(NEW.`id`, '48954', '0'), -- Schnelles Zhevra - (WoWHead: This spell is not in game.)
(NEW.`id`, '49193', '0'), -- Rachsüchtiger Netherdrache - Arenasaison 3 von The Burning Crusade
-- 7 (175)
(NEW.`id`, '49322', '0'), -- Schnelles Zhevra - Werbt einen Freund
(NEW.`id`, '49378', '0'), -- Reitkodo des Braufests
(NEW.`id`, '49379', '0'), -- Großer Braufestkodo
(NEW.`id`, '51412', '0'), -- Großer Kampfbär
(NEW.`id`, '54729', '0'), -- Geflügelter Greif der Schwarzen Klinge (Todesritter)
(NEW.`id`, '54753', '0'), -- Weißer Eisbär
(NEW.`id`, '55164', '0'), -- Schneller spektraler Greif
(NEW.`id`, '55531', '0'), -- Feuerstuhl - Beruf: Ingenieurskunst
(NEW.`id`, '58615', '0'), -- Brutaler Netherdrache - Arenasaison 4 von The Burning Crusade
(NEW.`id`, '58983', '0'), -- Großer Blizzardbär (Promotion: BlizzCon)
(NEW.`id`, '59567', '0'), -- Azurblauer Drache - Malygos - Raid: Auge der Ewigkeit
(NEW.`id`, '59568', '0'), -- Blaudrache
(NEW.`id`, '59569', '0'), -- Bronzedrache - Dungeon: Das Ausmerzen von Stratholme
(NEW.`id`, '59570', '0'), -- Rotdrache - Fraktion: Der Wyrmruhpakt - Ehrfürchtig
(NEW.`id`, '59571', '0'), -- Zwielichtdrache - Sartharion - Raid: Das Obsidiansanktum
(NEW.`id`, '59572', '0'), -- Schwarzer Eisbär
(NEW.`id`, '59650', '0'), -- Schwarzdrache - Sartharion - Raid: Das Obsidiansanktum
(NEW.`id`, '59785', '0'), -- Schwarzes Kriegsmammut PvP Belohnung Tausendwinter
(NEW.`id`, '59788', '0'), -- Schwarzes Kriegsmammut PvP Belohnung Tausendwinter
(NEW.`id`, '59791', '0'), -- Wollmammut - Allianz
(NEW.`id`, '59793', '0'), -- Wollmammut - Horde
(NEW.`id`, '59797', '0'), -- Eismammut - Horde - Fraktion: Die Söhne Hodirs - Respektvoll
(NEW.`id`, '59799', '0'), -- Eismammut - Allianz - Fraktion: Die Söhne Hodirs - Respektvoll
(NEW.`id`, '59961', '0'), -- Roter Protodrache - Erfolg: Ruhm des Helden
(NEW.`id`, '59976', '0'), -- Schwarzer Protodrache
-- 8 (200)
(NEW.`id`, '59996', '0'), -- Blauer Protodrache - Dungeon:  Turm Utgarde
(NEW.`id`, '60002', '0'), -- Zeitverlorener Protodrache
(NEW.`id`, '60021', '0'), -- Verseuchter Protodrache
(NEW.`id`, '60024', '0'), -- Violetter Protodrache
(NEW.`id`, '60025', '0'), -- Albinodrache - Erfolg: Führen der Kavallerie
(NEW.`id`, '60114', '0'), -- Gepanzerter Braunbär - Allianz
(NEW.`id`, '60116', '0'), -- Gepanzerter Braunbär - Horde
(NEW.`id`, '60118', '0'), -- Schwarzer Kriegsbär - Allianz - PVP Belohung (Erfolg: Für die Allianz!)
(NEW.`id`, '60119', '0'), -- Schwarzer Kriegsbär - Horde - PVP Belohung (Erfolg: Für die Horde!)
(NEW.`id`, '60136', '0'), -- Großes Karawanenmammut
(NEW.`id`, '60140', '0'), -- Großes Karawanenmammut
(NEW.`id`, '60424', '0'), -- Chopper des Robogenieurs - Beruf: Ingenieurskunst
(NEW.`id`, '61229', '0'), -- Gepanzerter weißer Greif - Allianz
(NEW.`id`, '61230', '0'), -- Gepanzerter blauer Windreiter - Horde
(NEW.`id`, '61294', '0'), -- Grüner Protodrache
(NEW.`id`, '61309', '0'), -- Großartiger fliegender Teppich - Beruf: Schneiderei
(NEW.`id`, '61425', '0'), -- Tundramammut des Reisenden - Allianz
(NEW.`id`, '61447', '0'), -- Tundramammut des Reisenden - Horde
(NEW.`id`, '61451', '0'), -- Fliegender Teppich - Beruf: Schneiderei
(NEW.`id`, '61465', '0'), -- Großes schwarzes Kriegsmammut - PVP Belohnung - Allianz
(NEW.`id`, '61467', '0'), -- Großes schwarzes Kriegsmammut - PVP Belohunhg - Horde
(NEW.`id`, '61469', '0'), -- Großes Eismammut - Fraktion: Die Söhne Hodirs - Ehrfürchtig - Horde
(NEW.`id`, '61470', '0'), -- Großes Eismammut - Fraktion: Die Söhne Hodirs - Ehrfürchtig - Allianz
(NEW.`id`, '61996', '0'), -- Blauer Drachenfalke - Erfolg: Tierisch viele Reittiere - Allianz
(NEW.`id`, '61997', '0'), -- Roter Drachenfalke - Erfolg: Tierisch viele Reittiere - Horde
-- 9 (225)
(NEW.`id`, '62048', '0'), -- Verdammnisfalke der Illidari
(NEW.`id`, '63232', '0'), -- Ross aus Sturmwind
(NEW.`id`, '63635', '0'), -- Raptor der Dunkelspeere
(NEW.`id`, '63636', '0'), -- Widder aus Eisenschmiede
(NEW.`id`, '63637', '0'), -- Darnassischer Nachtsäbler
(NEW.`id`, '63638', '0'), -- Roboschreiter aus Gnomeregan
(NEW.`id`, '63639', '0'), -- Elekk aus der Exodar
(NEW.`id`, '63640', '0'), -- Wolf aus Orgrimmar
(NEW.`id`, '63641', '0'), -- Kodo aus Donnerfels
(NEW.`id`, '63642', '0'), -- Falkenschreiter aus Silbermond
(NEW.`id`, '63643', '0'), -- Schlachtross der Verlassenen
(NEW.`id`, '63796', '0'), -- Mimirons Kopf - Raid: Ulduar Boss: Yogg-Saron
(NEW.`id`, '63844', '0'), -- Argentumhippogryph
(NEW.`id`, '63956', '0'), -- Eisenbeschlagener Protodrache - Erfolg: Ruhm des Schlachtzüglers von Ulduar
(NEW.`id`, '63963', '0'), -- Rostiger Protodrache
(NEW.`id`, '64656', '0'), -- Blaues Skelettschlachtross
(NEW.`id`, '64657', '0'), -- Weißer Kodo
(NEW.`id`, '64658', '0'), -- Schwarzer Wolf
(NEW.`id`, '64659', '0'), -- Gifthautravasaurus
(NEW.`id`, '64731', '0'), -- Meeresschildkröte - Beruf: Angeln
(NEW.`id`, '64927', '0'), -- Frostwyrm des tödlichen Gladiators
(NEW.`id`, '64977', '0'), -- Schwarzes Skelettpferd
(NEW.`id`, '65439', '0'), -- Frostwyrm des wütenden Gladiators
(NEW.`id`, '65637', '0'), -- Großer roter Elekk
(NEW.`id`, '65638', '0'), -- Schneller Mondsäbler
-- 10 (250)
(NEW.`id`, '65639', '0'), -- Schneller roter Falkenschreiter
(NEW.`id`, '65640', '0'), -- Schnelles graues Ross
(NEW.`id`, '65641', '0'), -- Großer goldener Kodo
(NEW.`id`, '65642', '0'), -- Turboschreiter
(NEW.`id`, '65643', '0'), -- Schneller violetter Widder
(NEW.`id`, '65644', '0'), -- Schneller purpurfarbener Raptor
(NEW.`id`, '65645', '0'), -- Weißes Skelettschlachtross
(NEW.`id`, '65646', '0'), -- Schneller burgundfarbener Wolf
(NEW.`id`, '65917', '0'), -- Magischer Hahn
(NEW.`id`, '66087', '0'), -- Hippogryph des Silberbunds - Fraktion: Der Silberbund - Ehrfürchtig
(NEW.`id`, '66088', '0'), -- Drachenfalke der Sonnenhäscher - 
(NEW.`id`, '66090', '0'), -- Drachenfalke der Sonnenhäscher - Fraktion: Die Sonnenhäscher - Ehrfürchtig
(NEW.`id`, '66091', '0'), -- Falkenschreiter der Sonnenhäscher - Fraktion: Die Sonnenhäscher - Ehrfürchtig
(NEW.`id`, '66122', '0'), -- Magischer Hahn
(NEW.`id`, '66123', '0'), -- Magischer Hahn
(NEW.`id`, '66124', '0'), -- Magischer Hahn
(NEW.`id`, '66846', '0'), -- Ockerfarbenes Skelettschlachtross
(NEW.`id`, '66847', '0'), -- Gestreifter Dämmersäbler
(NEW.`id`, '66906', '0'), -- Argentumstreitross
(NEW.`id`, '67336', '0'), -- Frostwyrm des unerbittlichen Gladiators
(NEW.`id`, '67466', '0'), -- Argentumschlachtross
(NEW.`id`, '68056', '0'), -- Schneller Wolf der Horde - Horde
(NEW.`id`, '68057', '0'), -- Schnelles Ross der Allianz - Allianz
(NEW.`id`, '68187', '0'), -- Weißes Schlachtross des Kreuzfahrers - Allianz
(NEW.`id`, '68188', '0'); -- Schwarzes Schlachtross des Kreuzfahrers - Horde
-- 11 (275)
(NEW.`id`, '69395', '0'), -- Drache von Onyxia - Raid: Onyxia - Boss: Onyxia
(NEW.`id`, '69820', '0'), -- Kodo der Sonnenläufer - Horde Paladin
(NEW.`id`, '69826', '0'), -- Großen Kodo der Sonnenläufer
(NEW.`id`, '71342', '0'), -- Herzbrecher X-45
(NEW.`id`, '71810', '0'), -- Frostwyrm des zornerfüllten Gladiators
(NEW.`id`, '72286', '0'), -- Unbesiegbar - Raid: Eiskronenzitadelle - Boss: Lichkönig
(NEW.`id`, '72807', '0'), -- Eisbeschlagener Frostbrutbezwinger
(NEW.`id`, '72808', '0'), -- Blutgebadeter Frostbrutbezwinger
(NEW.`id`, '73313', '0'), -- Scharlachrotes Todesstreitross
(NEW.`id`, '73629', '0'), -- Elekk des Exarchen beschwören - Allianz Paladin Draenei
(NEW.`id`, '73630', '0'), -- Großen Elekk des Exarchen beschwören  - Allianz Paladin Draenei
(NEW.`id`, '74856', '0'), -- Flammender Hippogryph
(NEW.`id`, '74918', '0'), -- Weißes Wollrhinozeros
(NEW.`id`, '75207', '0'), -- Vashj'ir-Seepferdchen
(NEW.`id`, '75596', '0'), -- Fliegender Frostteppich - Beruf: Schneidern
(NEW.`id`, '75614', '0'), -- Himmelsross
(NEW.`id`, '75973', '0'), -- X-53 Reiserakete
(NEW.`id`, '84751', '0'), -- Fossiler Raptor
(NEW.`id`, '87090', '0'), -- Goblinisches Trike - Horde
(NEW.`id`, '87091', '0'), -- Goblinisches Turbotrike - Horde
(NEW.`id`, '88331', '0'), -- Vulkansteindrache
(NEW.`id`, '88335', '0'), -- Drache des Ostwinds
(NEW.`id`, '88718', '0'), -- Phosphorsteindrache
(NEW.`id`, '88741', '0'), -- Drache des Westwinds - Fraktion: Wächter von Baradin - Ehrfürchtig
(NEW.`id`, '88742', '0'); -- Drache des Nordwinds - Raid: Der Vortexgipfel - Boss: Altairus
-- 12 (300)

  END IF;

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;
