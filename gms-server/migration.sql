SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ========================================================
-- 1. 迁移账号: admin
-- ========================================================
INSERT INTO `accounts` (`name`, `password`, `pin`, `pic`, `loggedin`, `lastlogin`, `createdat`, `birthday`, `banned`, `banreason`, `macs`, `nxCredit`, `maplePoint`, `nxPrepaid`, `characterslots`, `gender`, `tempban`, `greason`, `tos`, `sitelogged`, `webadmin`, `nick`, `mute`, `email`, `ip`, `rewardpoints`, `votepoints`, `hwid`, `language`) VALUES ('admin', '$2y$12$aFD9BDeUocDMY1X4tDYDyeJw/HhkQwCQWs3KAY7gCaRG0cpqJcaL.', '0000', '000000', 0, '2021-05-24 00:00:01.0', '2021-05-24 00:00:02.0', '2005-05-11', 0, NULL, NULL, 1000000, 1000000, 1000000, 3, 0, '2005-05-11 03:00:00.0', 0, 1, NULL, 1, NULL, 0, NULL, NULL, 0, 0, '1234-5678', 3);
SET @current_account_id = LAST_INSERT_ID();

INSERT INTO `storages` (`accountid`, `world`, `slots`, `meso`) VALUES (@current_account_id, 0, 4, 0);
-- --------------------------------------------------------
-- 2. 迁移角色: Admin
-- --------------------------------------------------------
INSERT INTO `characters` (`accountid`, `world`, `name`, `level`, `exp`, `gachaexp`, `str`, `dex`, `luk`, `int`, `hp`, `mp`, `maxhp`, `maxmp`, `meso`, `hpMpUsed`, `job`, `skincolor`, `gender`, `fame`, `fquest`, `hair`, `face`, `ap`, `sp`, `map`, `spawnpoint`, `gm`, `party`, `buddyCapacity`, `createdate`, `rank`, `rankMove`, `jobRank`, `jobRankMove`, `guildid`, `guildrank`, `messengerid`, `messengerposition`, `mountlevel`, `mountexp`, `mounttiredness`, `omokwins`, `omoklosses`, `omokties`, `matchcardwins`, `matchcardlosses`, `matchcardties`, `merchantmesos`, `hasmerchant`, `equipslots`, `useslots`, `setupslots`, `etcslots`, `familyId`, `monsterbookcover`, `allianceRank`, `vanquisherStage`, `ariantPoints`, `dojoPoints`, `lastDojoStage`, `finishedDojoTutorial`, `vanquisherKills`, `summonValue`, `partnerId`, `marriageItemId`, `reborns`, `pqpoints`, `dataString`, `lastLogoutTime`, `lastExpGainTime`, `partySearch`, `jailexpire`) VALUES (@current_account_id, 0, 'Admin', 1, 0, 0, 12, 5, 4, 4, 50, 5, 50, 5, 0, 0, 0, 0, 0, 0, 0, 30030, 20000, 0, '0,0,0,0,0,0,0,0,0,0', 10000, 2, 6, -1, 25, '2021-05-24 00:00:03.0', 1, 0, 1, 0, 0, 5, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 24, 24, 24, -1, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '2021-05-24 00:00:04.0', '2015-01-01 05:00:00.0', 1, 0);
SET @current_char_id = LAST_INSERT_ID();

INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 18, 4, 0);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 65, 6, 106);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 2, 4, 10);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 23, 4, 1);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 3, 4, 12);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 4, 4, 13);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 5, 4, 18);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 6, 4, 24);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 16, 4, 8);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 17, 4, 5);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 19, 4, 4);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 25, 4, 19);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 26, 4, 14);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 27, 4, 15);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 31, 4, 2);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 34, 4, 17);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 35, 4, 11);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 37, 4, 3);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 38, 4, 20);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 40, 4, 16);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 43, 4, 9);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 44, 5, 50);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 45, 5, 51);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 46, 4, 6);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 50, 4, 7);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 56, 5, 53);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 59, 6, 100);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 60, 6, 101);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 61, 6, 102);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 62, 6, 103);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 63, 6, 104);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 64, 6, 105);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 57, 5, 54);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 48, 4, 22);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 29, 5, 52);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 7, 4, 21);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 24, 4, 25);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 33, 4, 26);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 41, 4, 23);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 39, 4, 27);

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4161001, 4, 1, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1040002, -1, -5, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1060002, -1, -6, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1072001, -1, -7, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1302000, -1, -11, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 7, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);
-- ========================================================
-- 1. 迁移账号: e110110eee
-- ========================================================
INSERT INTO `accounts` (`name`, `password`, `pin`, `pic`, `loggedin`, `lastlogin`, `createdat`, `birthday`, `banned`, `banreason`, `macs`, `nxCredit`, `maplePoint`, `nxPrepaid`, `characterslots`, `gender`, `tempban`, `greason`, `tos`, `sitelogged`, `webadmin`, `nick`, `mute`, `email`, `ip`, `rewardpoints`, `votepoints`, `hwid`, `language`) VALUES ('e110110eee', '$2y$12$bDnKcHFfRn2z8hr8/s3EVOa0YPluuWseB98oYbbA0Fan8zOgOH9mu', '', '', 0, '2026-06-17 00:41:36.0', '2026-06-14 06:23:10.0', '2005-05-11', 0, NULL, '08-BF-B8-C4-B0-F1, 00-50-56-C0-00-08, 00-50-56-C0-00-01, 00-15-5D-2E-B4-FB', 99484499, 0, 0, 15, 0, '2005-05-11 00:00:00.0', 0, 1, NULL, 0, NULL, 0, NULL, NULL, 0, 0, '8964296A', 3);
SET @current_account_id = LAST_INSERT_ID();

INSERT INTO `storages` (`accountid`, `world`, `slots`, `meso`) VALUES (@current_account_id, 0, 44, 100000);
-- --------------------------------------------------------
-- 2. 迁移角色: dwang
-- --------------------------------------------------------
INSERT INTO `characters` (`accountid`, `world`, `name`, `level`, `exp`, `gachaexp`, `str`, `dex`, `luk`, `int`, `hp`, `mp`, `maxhp`, `maxmp`, `meso`, `hpMpUsed`, `job`, `skincolor`, `gender`, `fame`, `fquest`, `hair`, `face`, `ap`, `sp`, `map`, `spawnpoint`, `gm`, `party`, `buddyCapacity`, `createdate`, `rank`, `rankMove`, `jobRank`, `jobRankMove`, `guildid`, `guildrank`, `messengerid`, `messengerposition`, `mountlevel`, `mountexp`, `mounttiredness`, `omokwins`, `omoklosses`, `omokties`, `matchcardwins`, `matchcardlosses`, `matchcardties`, `merchantmesos`, `hasmerchant`, `equipslots`, `useslots`, `setupslots`, `etcslots`, `familyId`, `monsterbookcover`, `allianceRank`, `vanquisherStage`, `ariantPoints`, `dojoPoints`, `lastDojoStage`, `finishedDojoTutorial`, `vanquisherKills`, `summonValue`, `partnerId`, `marriageItemId`, `reborns`, `pqpoints`, `dataString`, `lastLogoutTime`, `lastExpGainTime`, `partySearch`, `jailexpire`) VALUES (@current_account_id, 0, 'dwang', 66, 650064, 0, 4, 4, 64, 253, 930, 2601, 830, 3511, 13801979, 0, 210, 0, 0, 0, 0, 30022, 20000, 25, '3,0,0,0,0,0,0,0,0,0', 101000001, 0, 0, -1, 25, '2026-06-14 12:30:18.0', 1, 0, 1, 0, 0, 5, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 96, 96, 96, -1, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '2026-06-17 00:41:36.0', '2026-06-16 01:03:19.0', 1, 0);
SET @current_char_id = LAST_INSERT_ID();

INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2380001, 5);
INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2380003, 5);
INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2380004, 5);
INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2380005, 5);
INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2380008, 3);
INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2380012, 5);
INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2381000, 5);
INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2381006, 2);
INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2381007, 5);
INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2381016, 5);
INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2381083, 4);
INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2382006, 5);
INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2382023, 5);
INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2382029, 2);
INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2382032, 1);
INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2382040, 5);
INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2382041, 5);
INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2382049, 1);
INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2383013, 4);
INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2383031, 4);
INSERT INTO `monsterbook` (`charid`, `cardid`, `level`) VALUES (@current_char_id, 2383047, 2);
INSERT INTO `medalmaps` (`characterid`, `queststatusid`, `mapid`) VALUES (@current_char_id, 623, 101000000);
INSERT INTO `medalmaps` (`characterid`, `queststatusid`, `mapid`) VALUES (@current_char_id, 672, 211000000);
INSERT INTO `questprogress` (`characterid`, `queststatusid`, `progressid`, `progress`) VALUES (@current_char_id, 624, 0, '1');
INSERT INTO `questprogress` (`characterid`, `queststatusid`, `progressid`, `progress`) VALUES (@current_char_id, 634, 9101000, '000');
INSERT INTO `questprogress` (`characterid`, `queststatusid`, `progressid`, `progress`) VALUES (@current_char_id, 635, 1110101, '000');
INSERT INTO `questprogress` (`characterid`, `queststatusid`, `progressid`, `progress`) VALUES (@current_char_id, 641, 100101, '000');
INSERT INTO `questprogress` (`characterid`, `queststatusid`, `progressid`, `progress`) VALUES (@current_char_id, 641, 130101, '000');
INSERT INTO `questprogress` (`characterid`, `queststatusid`, `progressid`, `progress`) VALUES (@current_char_id, 667, 4230101, '000');
INSERT INTO `questprogress` (`characterid`, `queststatusid`, `progressid`, `progress`) VALUES (@current_char_id, 667, 4230114, '000');
INSERT INTO `questprogress` (`characterid`, `queststatusid`, `progressid`, `progress`) VALUES (@current_char_id, 667, 4230115, '000');
INSERT INTO `questprogress` (`characterid`, `queststatusid`, `progressid`, `progress`) VALUES (@current_char_id, 667, 4230126, '000');
INSERT INTO `questprogress` (`characterid`, `queststatusid`, `progressid`, `progress`) VALUES (@current_char_id, 667, 4230102, '000');
INSERT INTO `questprogress` (`characterid`, `queststatusid`, `progressid`, `progress`) VALUES (@current_char_id, 668, 2230101, '000');
INSERT INTO `questprogress` (`characterid`, `queststatusid`, `progressid`, `progress`) VALUES (@current_char_id, 673, 0, '1');
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 30004, 2, 1781440243, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 29005, 1, 1781440244, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 27010, 0, 1781440244, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 30000, 2, 1781440251, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2197, 2, 1781440270, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 29900, 2, 1781442470, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2401, 1, 1781440510, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2132, 2, 1781440766, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2133, 2, 1781440967, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2230, 1, 1781440847, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2134, 2, 1781441129, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2135, 2, 1781441478, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 8048, 1, 1781441230, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 28274, 1, 1781441601, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2089, 1, 1781441631, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 28273, 2, 1781441641, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2000, 2, 1781442490, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 28281, 2, 1781442494, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2082, 2, 1781442504, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 28280, 1, 1781441734, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2065, 1, 1781442047, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2116, 1, 1781442050, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2117, 1, 1781442053, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 29000, 1, 1781442476, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 29507, 1, 1781442479, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 29508, 2, 1781442484, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 29512, 1, 1781442486, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, -30672, 0, 1781442509, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 20718, 0, 1781442858, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, -31066, 2, 1781443233, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 28180, 2, 1781442875, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, -31065, 2, 1781443432, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, -31064, 2, 1781443479, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 29901, 2, 1781448464, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 29014, 1, 1781443568, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 27019, 0, 1781443568, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2301, 0, 1781443602, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 6000, 1, 1781443619, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2050, 1, 1781443633, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2246, 2, 1781444144, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2247, 2, 1781445061, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 30005, 2, 1781446845, 0, 1, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2292, 1, 1781444462, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 29015, 1, 1781444752, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2248, 2, 1781445166, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 29016, 1, 1781445093, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2249, 1, 1781445183, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 2017, 1, 1781445822, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 29007, 1, 1781447259, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 27012, 0, 1781447259, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 29006, 1, 1781448851, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 27011, 0, 1781448851, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 3000, 1, 1781450749, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 3102, 2, 1781451465, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 3004, 1, 1781451549, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 3103, 1, 1781451554, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 4104, 2, 1781526596, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 4107, 1, 1781452296, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 4108, 1, 1781527486, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 4100, 2, 1781527459, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 4105, 2, 1781526573, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 4101, 2, 1781527501, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 3845, 1, 1781527494, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 4102, 2, 1781528259, 0, 0, 1, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 4103, 1, 1781528262, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 8512, 0, 1781527975, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 4109, 0, 1781529039, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 29009, 1, 1781529378, 0, 0, 0, 0);
INSERT INTO `queststatus` (`characterid`, `quest`, `status`, `time`, `expires`, `forfeited`, `completed`, `info`) VALUES (@current_char_id, 27014, 0, 1781529378, 0, 0, 0, 0);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 65, 6, 106);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 2, 1, 2001002);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 3, 1, 2001003);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 4, 1, 2101001);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 5, 4, 18);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 6, 4, 24);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 17, 5, 53);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 19, 1, 2001005);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 25, 4, 19);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 26, 4, 14);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 27, 4, 15);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 34, 4, 17);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 35, 4, 11);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 37, 4, 3);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 38, 4, 0);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 40, 4, 16);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 43, 4, 9);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 44, 5, 50);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 45, 5, 51);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 46, 5, 52);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 50, 4, 7);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 59, 6, 100);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 60, 6, 101);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 61, 6, 102);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 62, 6, 103);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 63, 4, 8);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 64, 4, 5);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 57, 5, 54);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 48, 4, 22);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 7, 4, 21);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 24, 4, 25);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 33, 4, 26);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 41, 4, 1);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 39, 4, 27);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 36, 4, 2);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 16, 1, 2101004);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 29, 1, 1002);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 81, 2, 2022000);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 73, 2, 2000002);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 31, 1, 2101002);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 71, 2, 2002003);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 18, 1, 2101005);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 91, 7, 0);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 92, 7, 2022000);
INSERT INTO `keymap` (`characterid`, `key`, `type`, `action`) VALUES (@current_char_id, 79, 2, 2120000);
INSERT INTO `savedlocations` (`characterid`, `locationtype`, `map`, `portal`) VALUES (@current_char_id, 'FREE_MARKET', 211000000, 16);
INSERT INTO `savedlocations` (`characterid`, `locationtype`, `map`, `portal`) VALUES (@current_char_id, 'WORLDTOUR', 910000000, 34);
INSERT INTO `savedlocations` (`characterid`, `locationtype`, `map`, `portal`) VALUES (@current_char_id, 'FLORINA', 910000000, 34);
INSERT INTO `savedlocations` (`characterid`, `locationtype`, `map`, `portal`) VALUES (@current_char_id, 'INTRO', 910000000, 34);
INSERT INTO `savedlocations` (`characterid`, `locationtype`, `map`, `portal`) VALUES (@current_char_id, 'SUNDAY_MARKET', 910000000, 34);
INSERT INTO `savedlocations` (`characterid`, `locationtype`, `map`, `portal`) VALUES (@current_char_id, 'MIRROR', 910000000, 34);
INSERT INTO `savedlocations` (`characterid`, `locationtype`, `map`, `portal`) VALUES (@current_char_id, 'EVENT', 910000000, 34);
INSERT INTO `savedlocations` (`characterid`, `locationtype`, `map`, `portal`) VALUES (@current_char_id, 'BOSSPQ', 910000000, 34);
INSERT INTO `savedlocations` (`characterid`, `locationtype`, `map`, `portal`) VALUES (@current_char_id, 'HAPPYVILLE', 910000000, 34);
INSERT INTO `savedlocations` (`characterid`, `locationtype`, `map`, `portal`) VALUES (@current_char_id, 'MONSTER_CARNIVAL', 910000000, 34);
INSERT INTO `savedlocations` (`characterid`, `locationtype`, `map`, `portal`) VALUES (@current_char_id, 'DEVELOPER', 910000000, 34);
INSERT INTO `savedlocations` (`characterid`, `locationtype`, `map`, `portal`) VALUES (@current_char_id, 'JAIL', 910000000, 34);
INSERT INTO `skills` (`skillid`, `characterid`, `skilllevel`, `masterlevel`, `expiration`) VALUES (12, @current_char_id, 0, 20, -1);
INSERT INTO `skills` (`skillid`, `characterid`, `skilllevel`, `masterlevel`, `expiration`) VALUES (1000, @current_char_id, 3, 0, -1);
INSERT INTO `skills` (`skillid`, `characterid`, `skilllevel`, `masterlevel`, `expiration`) VALUES (1002, @current_char_id, 3, 0, -1);
INSERT INTO `skills` (`skillid`, `characterid`, `skilllevel`, `masterlevel`, `expiration`) VALUES (2001004, @current_char_id, 1, 0, -1);
INSERT INTO `skills` (`skillid`, `characterid`, `skilllevel`, `masterlevel`, `expiration`) VALUES (2000000, @current_char_id, 5, 0, -1);
INSERT INTO `skills` (`skillid`, `characterid`, `skilllevel`, `masterlevel`, `expiration`) VALUES (2000001, @current_char_id, 10, 0, -1);
INSERT INTO `skills` (`skillid`, `characterid`, `skilllevel`, `masterlevel`, `expiration`) VALUES (2001005, @current_char_id, 11, 0, -1);
INSERT INTO `skills` (`skillid`, `characterid`, `skilllevel`, `masterlevel`, `expiration`) VALUES (2001002, @current_char_id, 20, 0, -1);
INSERT INTO `skills` (`skillid`, `characterid`, `skilllevel`, `masterlevel`, `expiration`) VALUES (2001003, @current_char_id, 20, 0, -1);
INSERT INTO `skills` (`skillid`, `characterid`, `skilllevel`, `masterlevel`, `expiration`) VALUES (2101004, @current_char_id, 30, 0, -1);
INSERT INTO `skills` (`skillid`, `characterid`, `skilllevel`, `masterlevel`, `expiration`) VALUES (2101002, @current_char_id, 20, 0, -1);
INSERT INTO `skills` (`skillid`, `characterid`, `skilllevel`, `masterlevel`, `expiration`) VALUES (2100000, @current_char_id, 20, 0, -1);
INSERT INTO `skills` (`skillid`, `characterid`, `skilllevel`, `masterlevel`, `expiration`) VALUES (2101001, @current_char_id, 20, 0, -1);
INSERT INTO `skills` (`skillid`, `characterid`, `skilllevel`, `masterlevel`, `expiration`) VALUES (2101005, @current_char_id, 16, 0, -1);
INSERT INTO `skills` (`skillid`, `characterid`, `skilllevel`, `masterlevel`, `expiration`) VALUES (4111006, @current_char_id, 20, 20, -1);
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (2, NULL, @current_account_id, 1472032, 1, 1, 1, '', -1, 0, -1, '');
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (2, NULL, @current_account_id, 4010000, 4, 2, 25, '', -1, 0, -1, '');
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (3, NULL, @current_account_id, 1002536, 1, 2, 1, '', -1, 0, 1789403664517, '');
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (3, NULL, @current_account_id, 1002311, 1, 3, 1, '', -1, 0, 1789403864284, '');
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (3, NULL, @current_account_id, 1002708, 1, 1, 1, '', -1, 0, 1789403680834, '');

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1032000, 1, 15, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1072120, 1, 6, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 5, 0, 0, 2, 0, 0, 0, 4, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1072090, 1, 18, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 5, 0, 0, 0, 1, 0, 0, 9, 0, 0, 14, 7, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1041083, 1, 19, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 7, 0, 0, 2, 0, 0, 0, 10, 0, 0, 38, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1092030, 1, 22, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 11, 0, 1, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1072141, 1, 24, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 5, 0, 0, 0, 2, 1, 0, 0, 0, 0, 18, 9, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1092029, 1, 25, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 7, 0, 0, 0, 2, 0, 0, 0, 0, 0, 15, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1302013, 1, 26, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 7, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1332020, 1, 27, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 7, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 6, 4, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1332025, 1, 28, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 7, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0, 0, 10, 15, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1452022, 1, 30, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 7, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1382012, 1, 29, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 7, 0, 0, 0, 0, 0, 96, 53, 37, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1072169, 1, 20, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1072090, 1, 23, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 5, 0, 0, 0, 1, 0, 0, 9, 0, 0, 11, 7, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1102000, 1, 17, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 17, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2000002, 2, 1, 100, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2000002, 2, 2, 100, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2000002, 2, 3, 24, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2000003, 2, 4, 84, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2000004, 2, 5, 21, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2001002, 2, 6, 100, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2001002, 2, 7, 100, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2001002, 2, 8, 100, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2002000, 2, 9, 41, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2002001, 2, 10, 4, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2002003, 2, 12, 50, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2002004, 2, 13, 3, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2002005, 2, 14, 11, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2020028, 2, 15, 3, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2022000, 2, 16, 42, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2022001, 2, 17, 14, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2022179, 2, 18, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2030000, 2, 19, 15, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2030002, 2, 20, 19, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2030006, 2, 21, 20, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2040302, 2, 22, 2, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2040401, 2, 23, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2040402, 2, 24, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2040505, 2, 25, 3, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2040600, 2, 26, 2, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2040602, 2, 27, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2040902, 2, 28, 4, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2041010, 2, 29, 2, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2041018, 2, 30, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2041043, 2, 31, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2041044, 2, 32, 3, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2043702, 2, 33, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2044001, 2, 34, 3, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2044202, 2, 35, 2, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2044301, 2, 36, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2044701, 2, 37, 2, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2044803, 2, 38, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2048000, 2, 39, 4, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2049100, 2, 40, 2, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2050001, 2, 41, 34, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2050002, 2, 42, 41, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2061001, 2, 43, 586, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2060001, 2, 44, 644, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2060000, 2, 45, 2000, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2061000, 2, 46, 2000, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2060000, 2, 47, 866, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2070008, 2, 52, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2120000, 2, 53, 197, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2120000, 2, 54, 187, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2340000, 2, 55, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2430033, 2, 56, 43, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2022063, 2, 11, 10, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2000001, 2, 57, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2010003, 2, 58, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2044501, 2, 59, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2040708, 2, 60, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2043701, 2, 61, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2000005, 2, 62, 5, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2000006, 2, 64, 4, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2061000, 2, 65, 764, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2070003, 2, 49, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2070003, 2, 48, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2070002, 2, 50, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2070002, 2, 63, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 2070002, 2, 51, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4020000, 4, 1, 11, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4001006, 4, 2, 12, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4030012, 4, 3, 221, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4020004, 4, 4, 21, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4020001, 4, 5, 25, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4010004, 4, 6, 18, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4010001, 4, 7, 32, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4020005, 4, 8, 25, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4010005, 4, 9, 32, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4032086, 4, 10, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000003, 4, 11, 36, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4001344, 4, 13, 34, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4001126, 4, 14, 8, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000008, 4, 15, 110, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4010003, 4, 16, 49, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4020003, 4, 17, 45, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4031147, 4, 18, 52, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4006000, 4, 19, 14, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4010002, 4, 20, 25, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000015, 4, 21, 105, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4020006, 4, 22, 38, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4007003, 4, 23, 16, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4003004, 4, 24, 100, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4007004, 4, 25, 27, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4007001, 4, 26, 16, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4007002, 4, 27, 25, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4007006, 4, 28, 26, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4007005, 4, 29, 31, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000114, 4, 12, 69, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4004003, 4, 30, 37, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4130013, 4, 31, 7, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000115, 4, 32, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000086, 4, 33, 34, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4130000, 4, 34, 7, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4130011, 4, 35, 11, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4007000, 4, 36, 18, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000088, 4, 37, 2, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4130014, 4, 38, 5, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4130002, 4, 39, 8, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4020007, 4, 40, 10, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4130005, 4, 41, 6, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4004000, 4, 42, 6, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4006001, 4, 43, 6, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4003005, 4, 44, 36, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000021, 4, 45, 61, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000048, 4, 46, 25, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4004002, 4, 47, 5, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4007007, 4, 48, 4, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000051, 4, 49, 14, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000188, 4, 50, 30, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000253, 4, 51, 12, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000252, 4, 52, 12, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000187, 4, 53, 15, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4010000, 4, 54, 2, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000034, 4, 55, 5, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000189, 4, 56, 33, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000190, 4, 58, 41, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000192, 4, 59, 20, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000193, 4, 60, 4, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4030009, 4, 61, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4020008, 4, 62, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4010006, 4, 63, 4, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4020002, 4, 64, 2, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4031289, 4, 57, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000191, 4, 65, 2, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000194, 4, 66, 4, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000285, 4, 67, 9, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000283, 4, 68, 10, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4130017, 4, 69, 2, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4004001, 4, 70, 1, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4000052, 4, 71, 3, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4130015, 4, 72, 2, '', -1, 0, -1, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 4130010, 4, 73, 3, '', -1, 0, -1, '');

-- ----------------------------------------
-- [宠物道具] 分流处理
INSERT INTO `pets` (`name`, `level`, `closeness`, `fullness`, `summoned`, `flag`) VALUES ('小金猪', 3, 4, 90, 1, 0);
SET @current_pet_id = LAST_INSERT_ID();
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 5000025, 5, 1, 1, '', 1, 0, 1789221800700, '');
SET @current_item_id = LAST_INSERT_ID();
UPDATE `inventoryitems` SET `petid` = @current_pet_id WHERE `inventoryitemid` = @current_item_id;

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 5130000, 5, 2, 4, '', -1, 0, 1789226907702, '');

-- ----------------------------------------
-- [宠物道具] 分流处理
INSERT INTO `pets` (`name`, `level`, `closeness`, `fullness`, `summoned`, `flag`) VALUES ('品克缤', 1, 0, 100, 0, 0);
SET @current_pet_id = LAST_INSERT_ID();
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 5000060, 5, 3, 1, '', 2, 0, 9223372036854775807, '');
SET @current_item_id = LAST_INSERT_ID();
UPDATE `inventoryitems` SET `petid` = @current_pet_id WHERE `inventoryitemid` = @current_item_id;

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 5220000, 5, 4, 8, '', -1, 0, 1789226986179, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 5220000, 5, 5, 11, '', -1, 0, 1789226986956, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 5220000, 5, 6, 35, '', -1, 0, 1789226987733, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 5220000, 5, 7, 35, '', -1, 0, 1789226988510, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 5220000, 5, 8, 35, '', -1, 0, 1789226989287, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 5220000, 5, 9, 35, '', -1, 0, 1789226989287, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 5220000, 5, 10, 35, '', -1, 0, 1789226989287, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 5220000, 5, 11, 35, '', -1, 0, 1789226990064, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 5220000, 5, 12, 35, '', -1, 0, 1789226990064, '');

-- ----------------------------------------
-- [普通道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 5220000, 5, 13, 35, '', -1, 0, 1789226990841, '');

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1002155, -1, -1, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 7, 0, 0, 0, 0, 0, 0, 0, 0, 3, 18, 51, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1050036, -1, -5, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 10, 0, 0, 0, 5, 2, 0, 0, 0, 0, 38, 17, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1092030, -1, -10, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1812001, -1, -122, 1, '', -1, 0, 1789223876626, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1142108, -1, -49, 1, '', -1, 8, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 0, 0, 0, 0, 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1812000, -1, -123, 1, '', -1, 0, 1789226938005, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1812004, -1, -126, 1, '', -1, 0, 1789226937228, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1812002, -1, -124, 1, '', -1, 0, 1789226942667, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1812003, -1, -125, 1, '', -1, 0, 1789226943444, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1812005, -1, -127, 1, '', -1, 0, 1789226941113, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1032012, -1, -4, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1082062, -1, -8, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1382001, -1, -11, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 7, 0, 0, 0, 0, 0, 0, 0, 46, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1072116, -1, -7, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 5, 0, 0, 0, 3, 0, 0, 6, 0, 0, 14, 7, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

-- ----------------------------------------
-- [装备道具] 分流处理
INSERT INTO `inventoryitems` (`type`, `characterid`, `accountid`, `itemid`, `inventorytype`, `position`, `quantity`, `owner`, `petid`, `flag`, `expiration`, `giftFrom`) VALUES (1, @current_char_id, NULL, 1102015, -1, -9, 1, '', -1, 0, -1, '');
SET @current_item_id = LAST_INSERT_ID();
INSERT INTO `inventoryequipment` (`inventoryitemid`, `upgradeslots`, `level`, `str`, `dex`, `int`, `luk`, `hp`, `mp`, `watk`, `matk`, `wdef`, `mdef`, `acc`, `avoid`, `hands`, `speed`, `jump`, `locked`, `vicious`, `itemlevel`, `itemexp`, `ringid`) VALUES (@current_item_id, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 24, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1);

