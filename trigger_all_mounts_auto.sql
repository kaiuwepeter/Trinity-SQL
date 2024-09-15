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
(NEW.`id`, '88742', '0'), -- Drache des Nordwinds - Raid: Der Vortexgipfel - Boss: Altairus
-- 12 (300) -- 300 IDs --> 271 mounts are displayed in the game (v11.0.2 56196 - Aug 16, 2024)
(NEW.`id`, '88744', '0'), -- Drache des Südwinds
(NEW.`id`, '171436', '0'), -- Blutschreitergronnling
(NEW.`id`, '88746', '0'), -- Vitriolsteindrache
(NEW.`id`, '88748', '0'), -- Braunes Reitkamel
(NEW.`id`, '88749', '0'), -- Hellbraunes Reitkamel
(NEW.`id`, '88750', '0'), -- Graues Reitkamel
(NEW.`id`, '88990', '0'), -- Dunkler Phönix
(NEW.`id`, '90621', '0'), -- Goldkönig
(NEW.`id`, '92155', '0'), -- Ultramarinblaue Qirajipanzerdrohne
(NEW.`id`, '92231', '0'), -- Spektralross - Allianz
(NEW.`id`, '92232', '0'), -- Spektralwolf - Horde
(NEW.`id`, '93326', '0'), -- Sandsteindrache
(NEW.`id`, '93623', '0'), -- Scheckiger Drache
(NEW.`id`, '93644', '0'), -- Vernichter der Kor'kron
(NEW.`id`, '96491', '0'), -- Gepanzerter Razzashiraptor
(NEW.`id`, '96499', '0'), -- Schneller zulianischer Panther
(NEW.`id`, '96503', '0'), -- Drachenfalke der Amani
(NEW.`id`, '97359', '0'), -- Hippogryph des Flammenschutzes
(NEW.`id`, '97493', '0'), -- Reinblut-Feuerfalke
(NEW.`id`, '97501', '0'), -- Teufelsfeuerfalke
(NEW.`id`, '97560', '0'), -- Verderbter Feuerfalke
(NEW.`id`, '97581', '0'), -- Wilder Raptor
(NEW.`id`, '98204', '0'), -- Kampfbär der Amani
(NEW.`id`, '98718', '0'), -- Beruhigtes Seepferdchen
(NEW.`id`, '98727', '0'), -- Geflügelter Wächter
-- 13 (325)
(NEW.`id`, '100332', '0'), -- Boshaftes Schlachtross
(NEW.`id`, '100333', '0'), -- Boshafter Kriegswolf
(NEW.`id`, '101282', '0'), -- Zwielichtdrache des boshaften Gladiators
(NEW.`id`, '101542', '0'), -- Flammenkralle von Alysrazar
(NEW.`id`, '101573', '0'), -- Schneller Strandschreiter
(NEW.`id`, '101821', '0'), -- Zwielichtdrache des ruchlosen Gladiators
(NEW.`id`, '102346', '0'), -- Schneller Waldschreiter
(NEW.`id`, '102349', '0'), -- Schneller Frühlingsschreiter
(NEW.`id`, '102350', '0'), -- Schneller Blumenstrauß
(NEW.`id`, '102488', '0'), -- Weißes Reitkamel
(NEW.`id`, '102514', '0'), -- Verderbter Hippogryph
(NEW.`id`, '103081', '0'), -- Dunkelmond-Tanzbär
(NEW.`id`, '103195', '0'), -- Bergpferd
(NEW.`id`, '103196', '0'), -- Schnelles Bergpferd
(NEW.`id`, '107203', '0'), -- Tyraels Streitross
(NEW.`id`, '107516', '0'), -- Spektraler Greif
(NEW.`id`, '107517', '0'), -- Spektraler Windreiter - Promotion: Rolle der Auferstehung
(NEW.`id`, '107842', '0'), -- Lodernder Drache
(NEW.`id`, '107844', '0'), -- Zwielichtbote
(NEW.`id`, '107845', '0'), -- Erste Dame der Lebensbinderin
(NEW.`id`, '110039', '0'), -- Experiment 12-B
(NEW.`id`, '110051', '0'), -- Herz der Aspekte
(NEW.`id`, '113120', '0'), -- Teufelsdrache
(NEW.`id`, '113199', '0'), -- Jadewolkenschlange
(NEW.`id`, '171850', '0'), -- Llothienstreuner
-- 14 (350)
(NEW.`id`, '118089', '0'), -- Azurblauer Wasserschreiter - Fraktion: Die Angler - Ehrfürchtig
(NEW.`id`, '118737', '0'), -- Pandarendrachen
(NEW.`id`, '120043', '0'), -- Juwelenbesetzter Onyxpanther
(NEW.`id`, '120395', '0'), -- Grüne Drachenschildkröte
(NEW.`id`, '120822', '0'), -- Große rote Drachenschildkröte
(NEW.`id`, '171847', '0'), -- Glutmähnenschlachtross
(NEW.`id`, '121820', '0'), -- Obsidiannachtschwinge
(NEW.`id`, '121836', '0'), -- Saphirpanther
(NEW.`id`, '121837', '0'), -- Jadepanther
(NEW.`id`, '121838', '0'), -- Rubinpanther
(NEW.`id`, '121839', '0'), -- Sonnensteinpanther
(NEW.`id`, '122708', '0'), -- Großes Expeditionsyak
(NEW.`id`, '123182', '0'), -- Kafayak
(NEW.`id`, '123886', '0'), -- Bernskorpion - Fraktion: Die Klaxxi - Ehrfürchtig
(NEW.`id`, '123992', '0'), -- Azurwolkenschlange
(NEW.`id`, '123993', '0'), -- Goldwolkenschlange
(NEW.`id`, '124408', '0'), -- Donnernde Jadewolkenschlange
(NEW.`id`, '124550', '0'), -- Zwielichtdrache des kataklysmischen Gladiators
(NEW.`id`, '124659', '0'), -- Kaiserqilen
(NEW.`id`, '126507', '0'), -- Rakete mit abgereichertem Kyparium
(NEW.`id`, '126508', '0'), -- Geosynchroner Weltendreher
(NEW.`id`, '127154', '0'), -- Onyxwolkenschlange
(NEW.`id`, '127156', '0'), -- Purpurwolkenschlange
(NEW.`id`, '127158', '0'), -- Himmlische Onyxwolkenschlange
(NEW.`id`, '127161', '0'), -- Himmlische Purpurwolkenschlange
-- 15 (375)
(NEW.`id`, '127164', '0'), -- Himmlische Goldwolkenschlange
(NEW.`id`, '127165', '0'), -- Yu'lei, Tochter der Jade
(NEW.`id`, '127169', '0'), -- Himmlische Azurwolkenschlange
(NEW.`id`, '127170', '0'), -- Astrale Wolkenschlange
(NEW.`id`, '127174', '0'), -- Azurblauer Reitkranich
(NEW.`id`, '127176', '0'), -- Goldener Reitkranich
(NEW.`id`, '127177', '0'), -- Königlicher Reitkranich
(NEW.`id`, '127178', '0'), -- Dschungelreitkranich
(NEW.`id`, '127209', '0'), -- Schwarzes Reityak
(NEW.`id`, '127213', '0'), -- Bescheidenes Expeditionsyak
(NEW.`id`, '127216', '0'), -- Graues Reityak
(NEW.`id`, '127220', '0'), -- Falbes Reityak
(NEW.`id`, '127271', '0'), -- Purpurroter Wasserschreiter
(NEW.`id`, '127286', '0'), -- Schwarze Drachenschildkröte
(NEW.`id`, '127287', '0'), -- Blaue Drachenschildkröte
(NEW.`id`, '127288', '0'), -- Braune Drachenschildkröte
(NEW.`id`, '127289', '0'), -- Purpurne Drachenschildkröte
(NEW.`id`, '127290', '0'), -- Rote Drachenschildkröte
(NEW.`id`, '127293', '0'), -- Große grüne Drachenschildkröte
(NEW.`id`, '127295', '0'), -- Große schwarze Drachenschildkröte
(NEW.`id`, '127302', '0'), -- Große blaue Drachenschildkröte
(NEW.`id`, '127308', '0'), -- Große braune Drachenschildkröte
(NEW.`id`, '127310', '0'), -- Große purpurne Drachenschildkröte
(NEW.`id`, '129552', '0'), -- Purpurroter Pandarenphönix
(NEW.`id`, '129918', '0'), -- Donnernde erhabene Wolkenschlange
-- 16 (400)
(NEW.`id`, '129932', '0'), -- Grüner Shado-Pan-Reittiger
(NEW.`id`, '129934', '0'), -- Blauer Shado-Pan-Reittiger
(NEW.`id`, '129935', '0'), -- Roter Shado-Pan-Reittiger
(NEW.`id`, '130086', '0'), -- Braune Reitziege
(NEW.`id`, '130092', '0'), -- Rote Flugwolke
(NEW.`id`, '130137', '0'), -- Weiße Reitziege
(NEW.`id`, '130138', '0'), -- Schwarze Reitziege
(NEW.`id`, '130965', '0'), -- Sohn von Galleon
(NEW.`id`, '130985', '0'), -- Pandarendrachen
(NEW.`id`, '171851', '0'), -- Nachtheuler der Garn
(NEW.`id`, '132036', '0'), -- Donnernde Rubinwolkenschlange
(NEW.`id`, '132117', '0'), -- Aschegrauer Pandarenphönix
(NEW.`id`, '132118', '0'), -- Smaragdgrüner Pandarenphönix
(NEW.`id`, '132119', '0'), -- Violetter Pandarenphönix
(NEW.`id`, '133023', '0'), -- Jadegrüner Pandarendrachen
(NEW.`id`, '134359', '0'), -- Himmelsgolem - Beruf: Ingenieurskunst
(NEW.`id`, '134573', '0'), -- Schnelles Windross
(NEW.`id`, '135416', '0'), -- Großer gepanzerter Greif
(NEW.`id`, '135418', '0'), -- Großer gepanzerter Wyvern
(NEW.`id`, '136163', '0'), -- Großer Greif
(NEW.`id`, '136164', '0'), -- Großer Wyvern
(NEW.`id`, '136400', '0'), -- Gepanzerter Himmelskreischer
(NEW.`id`, '136471', '0'), -- Ausgeburt von Horridon
(NEW.`id`, '136505', '0'), -- Geisterhaftes Streitross
(NEW.`id`, '138423', '0'), -- Kobaltblaues Urterrorhorn
-- 17 (425)
(NEW.`id`, '138424', '0'), -- Goldgelbes Urterrorhorn
(NEW.`id`, '138425', '0'), -- Schiefergraues Urterrorhorn
(NEW.`id`, '138426', '0'), -- Jadegrünes Urterrorhorn
(NEW.`id`, '138640', '0'), -- Knochenweißer Urraptor
(NEW.`id`, '138641', '0'), -- Roter Urraptor
(NEW.`id`, '138642', '0'), -- Schwarzer Urraptor
(NEW.`id`, '138643', '0'), -- Grüner Urraptor
(NEW.`id`, '139407', '0'), -- Wolkenschlange des bösartigen Gladiators
(NEW.`id`, '139442', '0'), -- Donnernde Kobaltwolkenschlange
(NEW.`id`, '139448', '0'), -- Kralle von Ji-Kun
(NEW.`id`, '140249', '0'), -- Goldenes Urterrorhorn
(NEW.`id`, '140250', '0'), -- Purpurrotes Urterrorhorn
(NEW.`id`, '142073', '0'), -- Pegasus
(NEW.`id`, '142266', '0'), -- Gepanzerter roter Drachenfalke
(NEW.`id`, '142478', '0'), -- Gepanzerter blauer Drachenfalke
(NEW.`id`, '142641', '0'), -- Kräftiges Mushan des Grubenkämpfers
(NEW.`id`, '142878', '0'), -- Verzauberter Feendrache
(NEW.`id`, '142910', '0'), -- Eisenbeschlagener Geisterstürmer
(NEW.`id`, '146615', '0'), -- Boshafter Kriegssäbler der Kaldorei
(NEW.`id`, '146622', '0'), -- Boshaftes Skelettschlachtross
(NEW.`id`, '148392', '0'), -- Brut von Galakras
(NEW.`id`, '148396', '0'), -- Kriegswolf der Kor'kron
(NEW.`id`, '148417', '0'), -- Koloss der Kor'kron
(NEW.`id`, '148428', '0'), -- Aschefellmushan
(NEW.`id`, '148476', '0'), -- Donnernde Onyxwolkenschlange
-- 18 (450)
(NEW.`id`, '148618', '0'),
(NEW.`id`, '148619', '0'),
(NEW.`id`, '148620', '0'),
(NEW.`id`, '149801', '0'),
(NEW.`id`, '153489', '0'),
(NEW.`id`, '163024', '0'),
(NEW.`id`, '163025', '0'),
(NEW.`id`, '155741', '0'),
(NEW.`id`, '169952', '0'),
(NEW.`id`, '170347', '0'),
(NEW.`id`, '171616', '0'),
(NEW.`id`, '171617', '0'),
(NEW.`id`, '171619', '0'),
(NEW.`id`, '171620', '0'),
(NEW.`id`, '171621', '0'),
(NEW.`id`, '171622', '0'),
(NEW.`id`, '171623', '0'),
(NEW.`id`, '171624', '0'),
(NEW.`id`, '171625', '0'),
(NEW.`id`, '171626', '0'),
(NEW.`id`, '171627', '0'),
(NEW.`id`, '171628', '0'),
(NEW.`id`, '171629', '0'),
(NEW.`id`, '171630', '0'),
(NEW.`id`, '171632', '0'),
-- 19 (475)
(NEW.`id`, '171633', '0'),
(NEW.`id`, '171634', '0'),
(NEW.`id`, '171635', '0'),
(NEW.`id`, '171636', '0'),
(NEW.`id`, '171637', '0'),
(NEW.`id`, '171638', '0'),
(NEW.`id`, '171824', '0'),
(NEW.`id`, '171826', '0'),
(NEW.`id`, '194046', '0'),
(NEW.`id`, '171825', '0'),
(NEW.`id`, '171827', '0'),
(NEW.`id`, '171828', '0'),
(NEW.`id`, '171829', '0'),
(NEW.`id`, '171830', '0'),
(NEW.`id`, '171831', '0'),
(NEW.`id`, '171832', '0'),
(NEW.`id`, '171833', '0'),
(NEW.`id`, '171834', '0'),
(NEW.`id`, '171835', '0'),
(NEW.`id`, '171836', '0'),
(NEW.`id`, '171837', '0'),
(NEW.`id`, '171838', '0'),
(NEW.`id`, '171839', '0'),
(NEW.`id`, '171840', '0'),
(NEW.`id`, '171841', '0'),
-- 20 (500)
(NEW.`id`, '171842', '0'),
(NEW.`id`, '171843', '0'),
(NEW.`id`, '171844', '0'),
(NEW.`id`, '171845', '0'),
(NEW.`id`, '171846', '0'),
(NEW.`id`, '171848', '0'),
(NEW.`id`, '171849', '0'),
(NEW.`id`, '213115', '0'),
(NEW.`id`, '175700', '0'),
(NEW.`id`, '179244', '0'),
(NEW.`id`, '179245', '0'),
(NEW.`id`, '179478', '0'),
(NEW.`id`, '180545', '0'),
(NEW.`id`, '182912', '0'),
(NEW.`id`, '183117', '0'),
(NEW.`id`, '183889', '0'),
(NEW.`id`, '185052', '0'),
(NEW.`id`, '186305', '0'),
(NEW.`id`, '186828', '0'),
(NEW.`id`, '189043', '0'),
(NEW.`id`, '189044', '0'),
(NEW.`id`, '189364', '0'),
(NEW.`id`, '189998', '0'),
(NEW.`id`, '189999', '0'),
(NEW.`id`, '190690', '0'),
-- 21 (525)
(NEW.`id`, '221883', '0'),
(NEW.`id`, '190977', '0'),
(NEW.`id`, '191314', '0'),
(NEW.`id`, '191633', '0'),
(NEW.`id`, '193007', '0'),
(NEW.`id`, '193695', '0'),
(NEW.`id`, '194464', '0'),
(NEW.`id`, '196681', '0'),
(NEW.`id`, '200175', '0'),
(NEW.`id`, '201098', '0'),
(NEW.`id`, '204166', '0'),
(NEW.`id`, '205656', '0'),
(NEW.`id`, '213134', '0'),
(NEW.`id`, '213158', '0'),
(NEW.`id`, '213164', '0'),
(NEW.`id`, '213163', '0'),
(NEW.`id`, '213165', '0'),
(NEW.`id`, '213209', '0'),
(NEW.`id`, '213349', '0'),
(NEW.`id`, '214791', '0'),
(NEW.`id`, '215159', '0'),
(NEW.`id`, '215545', '0'),
(NEW.`id`, '215558', '0'),
(NEW.`id`, '221885', '0'),
(NEW.`id`, '221887', '0'),
-- 22 (550)
(NEW.`id`, '221886', '0'),
(NEW.`id`, '222202', '0'),
(NEW.`id`, '222236', '0'),
(NEW.`id`, '222237', '0'),
(NEW.`id`, '222238', '0'),
(NEW.`id`, '222240', '0'),
(NEW.`id`, '222241', '0'),
(NEW.`id`, '223018', '0'),
(NEW.`id`, '223341', '0'),
(NEW.`id`, '223354', '0'),
(NEW.`id`, '223363', '0'),
(NEW.`id`, '223578', '0'),
(NEW.`id`, '223814', '0'),
(NEW.`id`, '225765', '0'),
(NEW.`id`, '227956', '0'),
(NEW.`id`, '227986', '0'),
(NEW.`id`, '227988', '0'),
(NEW.`id`, '227989', '0'),
(NEW.`id`, '227991', '0'),
(NEW.`id`, '227994', '0'),
(NEW.`id`, '227995', '0'),
(NEW.`id`, '213339', '0'),
(NEW.`id`, '228919', '0'),
(NEW.`id`, '229376', '0'),
(NEW.`id`, '229377', '0'),
-- 23 (575)
(NEW.`id`, '229385', '0'),
(NEW.`id`, '229386', '0'),
(NEW.`id`, '229387', '0'),
(NEW.`id`, '229388', '0'),
(NEW.`id`, '229417', '0'),
(NEW.`id`, '229438', '0'),
(NEW.`id`, '229439', '0'),
(NEW.`id`, '229487', '0'),
(NEW.`id`, '229486', '0'),
(NEW.`id`, '229499', '0'),
(NEW.`id`, '229512', '0'),
(NEW.`id`, '230401', '0'),
(NEW.`id`, '230844', '0'),
(NEW.`id`, '230987', '0'),
(NEW.`id`, '230988', '0'),
(NEW.`id`, '231428', '0'),
(NEW.`id`, '231434', '0'),
(NEW.`id`, '231435', '0'),
(NEW.`id`, '231442', '0'),
(NEW.`id`, '231523', '0'),
(NEW.`id`, '231524', '0'),
(NEW.`id`, '231525', '0'),
(NEW.`id`, '231587', '0'),
(NEW.`id`, '231588', '0'),
(NEW.`id`, '231589', '0'),
-- 24 (600)
(NEW.`id`, '232405', '0'),
(NEW.`id`, '232412', '0'),
(NEW.`id`, '232519', '0'),
(NEW.`id`, '232523', '0'),
(NEW.`id`, '232525', '0'),
(NEW.`id`, '233364', '0'),
(NEW.`id`, '235764', '0'),
(NEW.`id`, '237287', '0'),
(NEW.`id`, '237286', '0'),
(NEW.`id`, '238452', '0'),
(NEW.`id`, '238454', '0'),
(NEW.`id`, '239013', '0'),
(NEW.`id`, '239049', '0'),
(NEW.`id`, '239363', '0'),
(NEW.`id`, '239766', '0'),
(NEW.`id`, '239767', '0'),
(NEW.`id`, '239770', '0'),
(NEW.`id`, '242305', '0'),
(NEW.`id`, '242874', '0'),
(NEW.`id`, '242875', '0'),
(NEW.`id`, '242881', '0'),
(NEW.`id`, '242882', '0'),
(NEW.`id`, '242896', '0'),
(NEW.`id`, '242897', '0'),
(NEW.`id`, '243025', '0'),
-- 25 (625)
(NEW.`id`, '243201', '0'),
(NEW.`id`, '243512', '0'),
(NEW.`id`, '243651', '0'),
(NEW.`id`, '243652', '0'),
(NEW.`id`, '243795', '0'),
(NEW.`id`, '244712', '0'),
(NEW.`id`, '245723', '0'),
(NEW.`id`, '245725', '0'),
(NEW.`id`, '247402', '0'),
(NEW.`id`, '247448', '0'),
(NEW.`id`, '250735', '0'),
(NEW.`id`, '253004', '0'),
(NEW.`id`, '253005', '0'),
(NEW.`id`, '253007', '0'),
(NEW.`id`, '253008', '0'),
(NEW.`id`, '253006', '0'),
(NEW.`id`, '253058', '0'),
(NEW.`id`, '253088', '0'),
(NEW.`id`, '253087', '0'),
(NEW.`id`, '253107', '0'),
(NEW.`id`, '253106', '0'),
(NEW.`id`, '253108', '0'),
(NEW.`id`, '253109', '0'),
(NEW.`id`, '253639', '0'),
(NEW.`id`, '253661', '0'),
-- 26 (650)
(NEW.`id`, '253662', '0'),
(NEW.`id`, '253660', '0'),
(NEW.`id`, '253711', '0'),
(NEW.`id`, '254069', '0'),
(NEW.`id`, '254258', '0'),
(NEW.`id`, '254259', '0'),
(NEW.`id`, '254260', '0'),
(NEW.`id`, '254471', '0'),
(NEW.`id`, '254472', '0'),
(NEW.`id`, '254473', '0'),
(NEW.`id`, '254474', '0'),
(NEW.`id`, '254811', '0'),
(NEW.`id`, '254812', '0'),
(NEW.`id`, '254813', '0'),
(NEW.`id`, '255695', '0'),
(NEW.`id`, '255696', '0'),
(NEW.`id`, '256123', '0'),
(NEW.`id`, '258022', '0'),
(NEW.`id`, '258060', '0'),
(NEW.`id`, '258845', '0'),
(NEW.`id`, '259202', '0'),
(NEW.`id`, '259213', '0'),
(NEW.`id`, '259395', '0'),
(NEW.`id`, '259740', '0'),
(NEW.`id`, '259741', '0'),
-- 27 (675)
(NEW.`id`, '260172', '0'),
(NEW.`id`, '260173', '0'),
(NEW.`id`, '260174', '0'),
(NEW.`id`, '260175', '0'),
(NEW.`id`, '261395', '0'),
(NEW.`id`, '261434', '0'),
(NEW.`id`, '261433', '0'),
(NEW.`id`, '261437', '0'),
(NEW.`id`, '262022', '0'),
(NEW.`id`, '262023', '0'),
(NEW.`id`, '262024', '0'),
(NEW.`id`, '262027', '0'),
(NEW.`id`, '263707', '0'),
(NEW.`id`, '264058', '0'),
(NEW.`id`, '266058', '0'),
(NEW.`id`, '266925', '0'),
(NEW.`id`, '267270', '0'),
(NEW.`id`, '267274', '0'),
(NEW.`id`, '270560', '0'),
(NEW.`id`, '270562', '0'),
(NEW.`id`, '270564', '0'),
(NEW.`id`, '271646', '0'),
(NEW.`id`, '272472', '0'),
(NEW.`id`, '272481', '0'),
(NEW.`id`, '272770', '0'),
-- 28 (700)
(NEW.`id`, '273541', '0'),
(NEW.`id`, '274610', '0'),
(NEW.`id`, '275623', '0'),
(NEW.`id`, '275837', '0'),
(NEW.`id`, '275838', '0'),
(NEW.`id`, '275840', '0'),
(NEW.`id`, '275841', '0'),
(NEW.`id`, '275859', '0'),
(NEW.`id`, '275866', '0'),
(NEW.`id`, '354358', '0'),
(NEW.`id`, '275868', '0'),
(NEW.`id`, '276112', '0'),
(NEW.`id`, '276111', '0'),
(NEW.`id`, '278803', '0'),
(NEW.`id`, '213350', '0'),
(NEW.`id`, '278966', '0'),
(NEW.`id`, '278979', '0'),
(NEW.`id`, '279454', '0'),
(NEW.`id`, '279457', '0'),
(NEW.`id`, '279456', '0'),
(NEW.`id`, '279466', '0'),
(NEW.`id`, '279467', '0'),
(NEW.`id`, '279469', '0'),
(NEW.`id`, '279474', '0'),
(NEW.`id`, '279569', '0'),
-- 29 (725)
(NEW.`id`, '279608', '0'),
(NEW.`id`, '279611', '0'),
(NEW.`id`, '279868', '0'),
(NEW.`id`, '280730', '0'),
(NEW.`id`, '280729', '0'),
(NEW.`id`, '281044', '0'),
(NEW.`id`, '281554', '0'),
(NEW.`id`, '281888', '0'),
(NEW.`id`, '281887', '0'),
(NEW.`id`, '281890', '0'),
(NEW.`id`, '281889', '0'),
(NEW.`id`, '282682', '0'),
(NEW.`id`, '288438', '0'),
(NEW.`id`, '288495', '0'),
(NEW.`id`, '288499', '0'),
(NEW.`id`, '288503', '0'),
(NEW.`id`, '288506', '0'),
(NEW.`id`, '288505', '0'),
(NEW.`id`, '288587', '0'),
(NEW.`id`, '288589', '0'),
(NEW.`id`, '288711', '0'),
(NEW.`id`, '288712', '0'),
(NEW.`id`, '288714', '0'),
(NEW.`id`, '288720', '0'),
(NEW.`id`, '288721', '0'),
-- 30 (750)
(NEW.`id`, '288722', '0'),
(NEW.`id`, '288736', '0'),
(NEW.`id`, '288735', '0'),
(NEW.`id`, '288740', '0'),
(NEW.`id`, '289083', '0'),
(NEW.`id`, '289101', '0'),
(NEW.`id`, '289555', '0'),
(NEW.`id`, '289639', '0'),
(NEW.`id`, '290134', '0'),
(NEW.`id`, '290133', '0'),
(NEW.`id`, '290132', '0'),
(NEW.`id`, '290328', '0'),
(NEW.`id`, '290608', '0'),
(NEW.`id`, '290718', '0'),
(NEW.`id`, '291492', '0'),
(NEW.`id`, '291538', '0'),
(NEW.`id`, '292407', '0'),
(NEW.`id`, '292419', '0'),
(NEW.`id`, '294038', '0'),
(NEW.`id`, '294039', '0'),
(NEW.`id`, '294143', '0'),
(NEW.`id`, '294197', '0'),
(NEW.`id`, '294568', '0'),
(NEW.`id`, '294569', '0'),
(NEW.`id`, '295387', '0'),
-- 31 (775)
(NEW.`id`, '295386', '0'),
(NEW.`id`, '296788', '0'),
(NEW.`id`, '297157', '0'),
(NEW.`id`, '297560', '0'),
(NEW.`id`, '298367', '0'),
(NEW.`id`, '299158', '0'),
(NEW.`id`, '299159', '0'),
(NEW.`id`, '299170', '0'),
(NEW.`id`, '300147', '0'),
(NEW.`id`, '300146', '0'),
(NEW.`id`, '300149', '0'),
(NEW.`id`, '300150', '0'),
(NEW.`id`, '300154', '0'),
(NEW.`id`, '300153', '0'),
(NEW.`id`, '300151', '0'),
(NEW.`id`, '302143', '0'),
(NEW.`id`, '302361', '0'),
(NEW.`id`, '302362', '0'),
(NEW.`id`, '302794', '0'),
(NEW.`id`, '302795', '0'),
(NEW.`id`, '302796', '0'),
(NEW.`id`, '302797', '0'),
(NEW.`id`, '305182', '0'),
(NEW.`id`, '305592', '0'),
(NEW.`id`, '306421', '0'),
-- 32 (800)
(NEW.`id`, '306423', '0'),
(NEW.`id`, '307256', '0'),
(NEW.`id`, '307263', '0'),
(NEW.`id`, '307932', '0'),
(NEW.`id`, '308078', '0'),
(NEW.`id`, '308087', '0'),
(NEW.`id`, '308250', '0'),
(NEW.`id`, '308814', '0'),
(NEW.`id`, '312751', '0'),
(NEW.`id`, '312753', '0'),
(NEW.`id`, '312754', '0'),
(NEW.`id`, '312759', '0'),
(NEW.`id`, '312761', '0'),
(NEW.`id`, '312762', '0'),
(NEW.`id`, '312763', '0'),
(NEW.`id`, '312767', '0'),
(NEW.`id`, '312765', '0'),
(NEW.`id`, '312776', '0'),
(NEW.`id`, '332882', '0'),
(NEW.`id`, '315014', '0'),
(NEW.`id`, '315132', '0'),
(NEW.`id`, '315427', '0'),
(NEW.`id`, '315847', '0'),
(NEW.`id`, '315987', '0'),
(NEW.`id`, '316275', '0'),
-- 33 (825)
(NEW.`id`, '316276', '0'),
(NEW.`id`, '316337', '0'),
(NEW.`id`, '316339', '0'),
(NEW.`id`, '316340', '0'),
(NEW.`id`, '316343', '0'),
(NEW.`id`, '316493', '0'),
(NEW.`id`, '316637', '0'),
(NEW.`id`, '316722', '0'),
(NEW.`id`, '316723', '0'),
(NEW.`id`, '316802', '0'),
(NEW.`id`, '317177', '0'),
(NEW.`id`, '318051', '0'),
(NEW.`id`, '326390', '0'),
(NEW.`id`, '327405', '0'),
(NEW.`id`, '327407', '0'),
(NEW.`id`, '327408', '0'),
(NEW.`id`, '332243', '0'),
(NEW.`id`, '332244', '0'),
(NEW.`id`, '332245', '0'),
(NEW.`id`, '332246', '0'),
(NEW.`id`, '332247', '0'),
(NEW.`id`, '332248', '0'),
(NEW.`id`, '332252', '0'),
(NEW.`id`, '332256', '0'),
(NEW.`id`, '334364', '0'),
-- 34 (850)
(NEW.`id`, '332400', '0'),
(NEW.`id`, '332455', '0'),
(NEW.`id`, '332456', '0'),
(NEW.`id`, '332457', '0'),
(NEW.`id`, '332460', '0'),
(NEW.`id`, '332462', '0'),
(NEW.`id`, '332464', '0'),
(NEW.`id`, '332466', '0'),
(NEW.`id`, '332467', '0'),
(NEW.`id`, '332478', '0'),
(NEW.`id`, '332480', '0'),
(NEW.`id`, '332484', '0'),
(NEW.`id`, '312777', '0'),
(NEW.`id`, '332903', '0'),
(NEW.`id`, '332904', '0'),
(NEW.`id`, '332905', '0'),
(NEW.`id`, '332923', '0'),
(NEW.`id`, '332927', '0'),
(NEW.`id`, '332932', '0'),
(NEW.`id`, '332949', '0'),
(NEW.`id`, '333021', '0'),
(NEW.`id`, '333023', '0'),
(NEW.`id`, '333027', '0'),
(NEW.`id`, '334365', '0'),
(NEW.`id`, '334366', '0'),
-- 35 (875)
(NEW.`id`, '334382', '0'),
(NEW.`id`, '334386', '0'),
(NEW.`id`, '334391', '0'),
(NEW.`id`, '334352', '0'),
(NEW.`id`, '334398', '0'),
(NEW.`id`, '334403', '0'),
(NEW.`id`, '334406', '0'),
(NEW.`id`, '334408', '0'),
(NEW.`id`, '334409', '0'),
(NEW.`id`, '334433', '0'),
(NEW.`id`, '334482', '0'),
(NEW.`id`, '336036', '0'),
(NEW.`id`, '336038', '0'),
(NEW.`id`, '336039', '0'),
(NEW.`id`, '336041', '0'),
(NEW.`id`, '336042', '0'),
(NEW.`id`, '336045', '0'),
(NEW.`id`, '336064', '0'),
(NEW.`id`, '339588', '0'),
(NEW.`id`, '339632', '0'),
(NEW.`id`, '339956', '0'),
(NEW.`id`, '346141', '0'),
(NEW.`id`, '339957', '0'),
(NEW.`id`, '340068', '0'),
(NEW.`id`, '340503', '0'),
-- 36 (900)
(NEW.`id`, '341639', '0'),
(NEW.`id`, '341766', '0'),
(NEW.`id`, '341776', '0'),
(NEW.`id`, '341821', '0'),
(NEW.`id`, '342334', '0'),
(NEW.`id`, '342335', '0'),
(NEW.`id`, '342666', '0'),
(NEW.`id`, '342667', '0'),
(NEW.`id`, '342668', '0'),
(NEW.`id`, '342671', '0'),
(NEW.`id`, '342678', '0'),
(NEW.`id`, '342680', '0'),
(NEW.`id`, '343550', '0'),
(NEW.`id`, '344228', '0'),
(NEW.`id`, '344574', '0'),
(NEW.`id`, '344576', '0'),
(NEW.`id`, '344575', '0'),
(NEW.`id`, '344577', '0'),
(NEW.`id`, '344578', '0'),
(NEW.`id`, '344659', '0'),
(NEW.`id`, '346136', '0'),
(NEW.`id`, '346554', '0'),
(NEW.`id`, '346719', '0'),
(NEW.`id`, '347250', '0'),
(NEW.`id`, '347251', '0'),
-- 37 (925)
(NEW.`id`, '347255', '0'),
(NEW.`id`, '347256', '0'),
(NEW.`id`, '347536', '0'),
(NEW.`id`, '347810', '0'),
(NEW.`id`, '347812', '0'),
(NEW.`id`, '348162', '0'),
(NEW.`id`, '348769', '0'),
(NEW.`id`, '348770', '0'),
(NEW.`id`, '349824', '0'),
(NEW.`id`, '349823', '0'),
(NEW.`id`, '349935', '0'),
(NEW.`id`, '349943', '0'),
(NEW.`id`, '350219', '0'),
(NEW.`id`, '351195', '0'),
(NEW.`id`, '351408', '0'),
(NEW.`id`, '352309', '0'),
(NEW.`id`, '352441', '0'),
(NEW.`id`, '352742', '0'),
(NEW.`id`, '352926', '0'),
(NEW.`id`, '354357', '0'),
(NEW.`id`, '353036', '0'),
(NEW.`id`, '353263', '0'),
(NEW.`id`, '353856', '0'),
(NEW.`id`, '353857', '0'),
(NEW.`id`, '353858', '0'),
-- 38 (950)
(NEW.`id`, '353859', '0'),
(NEW.`id`, '353866', '0'),
(NEW.`id`, '353872', '0'),
(NEW.`id`, '353873', '0'),
(NEW.`id`, '353875', '0'),
(NEW.`id`, '353877', '0'),
(NEW.`id`, '353880', '0'),
(NEW.`id`, '353883', '0'),
(NEW.`id`, '353884', '0'),
(NEW.`id`, '353885', '0'),
(NEW.`id`, '354351', '0'),
(NEW.`id`, '354352', '0'),
(NEW.`id`, '354353', '0'),
(NEW.`id`, '354354', '0'),
(NEW.`id`, '354355', '0'),
(NEW.`id`, '354356', '0'),
(NEW.`id`, '354359', '0'),
(NEW.`id`, '354360', '0'),
(NEW.`id`, '354361', '0'),
(NEW.`id`, '354362', '0'),
(NEW.`id`, '356488', '0'),
(NEW.`id`, '356501', '0'),
(NEW.`id`, '358319', '0'),
(NEW.`id`, '359013', '0'),
(NEW.`id`, '359229', '0'),
-- 39 (975)
(NEW.`id`, '359230', '0'),
(NEW.`id`, '359231', '0'),
(NEW.`id`, '359232', '0'),
(NEW.`id`, '359278', '0'),
(NEW.`id`, '359277', '0'),
(NEW.`id`, '359276', '0'),
(NEW.`id`, '359317', '0'),
(NEW.`id`, '359318', '0'),
(NEW.`id`, '359367', '0'),
(NEW.`id`, '359366', '0'),
(NEW.`id`, '359364', '0'),
(NEW.`id`, '359372', '0'),
(NEW.`id`, '359373', '0'),
(NEW.`id`, '363706', '0'),
(NEW.`id`, '359376', '0'),
(NEW.`id`, '359377', '0'),
(NEW.`id`, '359378', '0'),
(NEW.`id`, '359401', '0'),
(NEW.`id`, '359402', '0'),
(NEW.`id`, '359403', '0'),
(NEW.`id`, '359407', '0'),
(NEW.`id`, '395644', '0'),
(NEW.`id`, '359409', '0'),
(NEW.`id`, '359413', '0'),
(NEW.`id`, '359379', '0');
-- 40 (1000) -- 1000 IDs --> 910 mounts are displayed in the game (v11.0.2 56311 - Aug 23, 2024)

  END IF;

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;
