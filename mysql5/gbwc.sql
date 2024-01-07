/*
 Navicat Premium Data Transfer

 Source Server         : GunBound
 Source Server Type    : MySQL
 Source Server Version : 40121
 Source Host           : localhost:3306
 Source Schema         : gbwc

 Target Server Type    : MySQL
 Target Server Version : 40121
 File Encoding         : 65001

 Date: 01/09/2023 16:56:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for abnormalupdate
-- ----------------------------
DROP TABLE IF EXISTS `abnormalupdate`;
CREATE TABLE `abnormalupdate`  (
  `Master` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `ID` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `ScoreDelta` smallint(6) NOT NULL DEFAULT 0,
  `MoneyDelta` int(11) NOT NULL DEFAULT 0,
  `Time` datetime NOT NULL DEFAULT '0001-01-01 00:00:01'
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for abnormalupdatelog
-- ----------------------------
DROP TABLE IF EXISTS `abnormalupdatelog`;
CREATE TABLE `abnormalupdatelog`  (
  `DeadTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `MoneyDelta` int(11) NOT NULL DEFAULT 0,
  `ScoreDelta` smallint(6) NOT NULL DEFAULT 0,
  `DeadCause` int(10) NOT NULL DEFAULT 0,
  `TeamID` tinyint(4) NOT NULL DEFAULT 0,
  `ID` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `WinTeamOrPlayer` tinyint(1) NOT NULL DEFAULT 0,
  `GameOption` int(10) NOT NULL DEFAULT 0,
  `EndTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `StartTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `GameRoomTitle` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `GameRoomID` smallint(5) NOT NULL DEFAULT 0,
  `ServerIP` int(10) NOT NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for abusercandidate
-- ----------------------------
DROP TABLE IF EXISTS `abusercandidate`;
CREATE TABLE `abusercandidate`  (
  `Id` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MoneyDelta` int(10) NULL DEFAULT NULL,
  `ScoreDelta` int(10) NULL DEFAULT NULL,
  `Time` datetime NULL DEFAULT '0001-01-01 00:00:01'
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for accuse
-- ----------------------------
DROP TABLE IF EXISTS `accuse`;
CREATE TABLE `accuse`  (
  `Accuse` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ServerIp` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ServerPort` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Accused` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Time` time NULL DEFAULT NULL,
  `Complaint` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for applicationsetting
-- ----------------------------
DROP TABLE IF EXISTS `applicationsetting`;
CREATE TABLE `applicationsetting`  (
  `ApplicationId` int(11) NOT NULL DEFAULT 0,
  `BaseURL` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `NoticeUrl` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `FullDownloadUrl` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `VersionLimit` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`ApplicationId`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for avatar_supply_history
-- ----------------------------
DROP TABLE IF EXISTS `avatar_supply_history`;
CREATE TABLE `avatar_supply_history`  (
  `Receive_Id` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Prop_Number` int(11) NOT NULL DEFAULT 0,
  `Provide_Count` int(11) NOT NULL DEFAULT 0,
  `Provide_Id` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Provide_Date` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `Provide_Msg` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT ''
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for avatar_table
-- ----------------------------
DROP TABLE IF EXISTS `avatar_table`;
CREATE TABLE `avatar_table`  (
  `Prop_Number` bigint(20) NOT NULL DEFAULT 0,
  `Prop_Name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Prop_Description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Prop_Money` int(11) NOT NULL DEFAULT 0,
  `Prop_Cash` int(11) NOT NULL DEFAULT 0,
  `Prop_Type` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Prop_Sex` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Prop_Gift` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Prop_Delay` int(2) NOT NULL DEFAULT 0,
  `Prop_Attack` int(2) NOT NULL DEFAULT 0,
  `Prop_Life` int(2) NOT NULL DEFAULT 0,
  `Prop_Dig` int(2) NOT NULL DEFAULT 0,
  `Prop_Star` int(2) NOT NULL DEFAULT 0,
  `Prop_Def` int(2) NOT NULL DEFAULT 0,
  `Prop_Shield` int(2) NOT NULL DEFAULT 0,
  `Prop_Skip` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`Prop_Number`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avatar_table
-- ----------------------------
INSERT INTO `avatar_table` VALUES (1, 'Space Marine', 'Space marine uniform', 20000, 2000, 'Body', 'Female', 'Normal', 0, 3, 0, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (2, 'School Uniform', 'Cute and pretty school uniform', 10000, 1000, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (3, 'Shoulder Strap', 'Shoulder strap pants for girls', 12000, 1200, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 3, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (4, 'Pirate Captain', 'Pirate captain clothing', 60000, 6000, 'Body', 'Female', 'Normal', 0, 12, 0, 0, 3, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (5, 'Roman General', 'Roman general armour', 40000, 4000, 'Body', 'Female', 'Normal', -3, 6, 0, 0, 0, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (6, 'Light Armour', 'Light middle age armour', 30000, 3000, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 3, 6, 0, 3);
INSERT INTO `avatar_table` VALUES (7, 'Chinese Dress', 'Splendid chinese clothing', 50000, 5000, 'Body', 'Female', 'Normal', -6, 0, 3, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (8, 'Sapce Suit A', 'Outer space body protector', 60000, 6000, 'Body', 'Female', 'Normal', 0, 0, 3, 0, 3, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (9, 'Cutty Orange', 'Party~! Party~!', 35000, 3500, 'Body', 'Female', 'Normal', 0, 0, 3, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (10, 'Red Devil', 'Cute red devil', 15000, 1500, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (11, 'Nymph Clothing A', 'Protector of water, naiad!', 55000, 5500, 'Body', 'Female', 'Normal', 0, 0, 6, 0, 3, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (12, 'Safari Wear', 'Safari clothing', 38000, 3800, 'Body', 'Female', 'Normal', 0, 0, 3, 3, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (13, 'Magician A', 'Magician clothing', 40000, 4000, 'Body', 'Female', 'Normal', -6, 3, 0, 6, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (14, 'Ribbon Dress', 'Cute little dress', 35000, 3500, 'Body', 'Female', 'Normal', 0, 0, 0, 3, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (15, 'Swim Suit A', 'Cool swim suit', 8000, 800, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (16, 'Korean Dress A', 'Softly as wind and cloud!', 35000, 3500, 'Body', 'Female', 'Normal', 0, 0, 3, 0, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (17, 'Fantasy Wear A', 'As mysterious as in the fantasyâ€¦', 40000, 4000, 'Body', 'Female', 'Normal', 0, 3, 0, 6, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (18, 'Rider Uniform', 'Wherever with motor cycle', 38000, 3800, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 3, 0, 0, 9);
INSERT INTO `avatar_table` VALUES (20, 'FriendShip A', 'Event clothing', 1000000, 100000, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 3, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (21, 'Arch Angel', 'Arch Angel with big wings', 200000, 20000, 'Body', 'Female', 'Normal', 0, 0, 21, 0, 3, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (22, 'Navy Uniform', 'Protector of the sea!', 45000, 4500, 'Body', 'Female', 'Normal', 0, 0, 3, 6, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (23, 'Pharaoh', 'Shining egyptian king', 100000, 10000, 'Body', 'Female', 'Normal', 0, 6, 9, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (24, 'Thanksgiving', 'Happy thanksgiving !', 25000, 2500, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (25, 'Cowboy', 'Cowboy clothing', 50000, 5000, 'Body', 'Female', 'Normal', 0, 0, 0, 3, 9, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (27, 'Ranger Wear', 'Find the secret of woods', 50000, 5000, 'Body', 'Female', 'Normal', 0, 0, 0, 6, 0, 0, 3, 6);
INSERT INTO `avatar_table` VALUES (28, 'Warriror A', 'Fight against the enemy!', 50000, 5000, 'Body', 'Female', 'Normal', 0, 6, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (29, 'Indian Wear', 'Indian clothing for winter!', 50000, 5000, 'Body', 'Female', 'Normal', -3, 0, 6, 0, 0, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (30, 'Black Dress', 'For sophisticated lookâ€¦', 40000, 4000, 'Body', 'Female', 'Normal', -6, 0, 3, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (31, 'Hawaiian Wear', 'Shell and palm decoration', 40000, 4000, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 15, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32, 'Snow White', 'Temptation of an apple..', 45000, 4500, 'Body', 'Female', 'Normal', 0, 0, 12, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (33, 'Flamingo', 'Extravaganza', 60000, 6000, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 18, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (34, 'Devil Clothing', 'The devil power!', 60000, 6000, 'Body', 'Female', 'Normal', -6, 6, 6, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (35, 'Gladiator', 'Symbol of courage', 50000, 5000, 'Body', 'Female', 'Normal', -3, 6, 0, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (36, 'Ballroom Dress', 'Ladies and gentlemen~', 1000000, 100000, 'Body', 'Female', 'Normal', 0, 0, 3, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (37, 'Red Dress', 'For sexy look..', 42000, 4200, 'Body', 'Female', 'Normal', 0, 0, 9, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (38, 'Tree Angel', 'Mysterious power of insects, dryad!', 45000, 4500, 'Body', 'Female', 'Normal', -3, 0, 6, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (39, 'High School Band', 'High school band', 50000, 5000, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 0, 3, 3, 0);
INSERT INTO `avatar_table` VALUES (40, 'Santa Suit', 'Merry Christmas~!', 15000, 1500, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (41, 'Boarder Suit', 'Snowboard mania', 75000, 7500, 'Body', 'Female', 'Normal', -6, 0, 6, 0, 0, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (42, 'Disco Suit', 'Shake your body to the music~', 40000, 4000, 'Body', 'Female', 'Normal', -9, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (43, 'Silver Dress', 'For that special occasionâ€¦', 50000, 5000, 'Body', 'Female', 'Normal', 0, 0, 6, 0, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (44, 'Picnic Dress', 'To the park or hills~', 100000, 10000, 'Body', 'Female', 'Normal', -12, 0, 0, 0, 9, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (45, 'Wedding Dress', 'Happy wedding~!', 150000, 15000, 'Body', 'Female', 'Normal', 0, 0, 12, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (46, 'Raincoat', 'Rainy day!', 36000, 3600, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 0, 6, 3, 3);
INSERT INTO `avatar_table` VALUES (47, 'Baseball Jacket', 'Play baseball?', 38000, 3800, 'Body', 'Female', 'Normal', -3, 0, 0, 0, 0, 0, 3, 6);
INSERT INTO `avatar_table` VALUES (48, 'Officer Uniform', 'Honour and glory', 60000, 6000, 'Body', 'Female', 'Normal', 0, 6, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (49, 'Wood Body', 'Find the secret of woods', 40000, 4000, 'Body', 'Female', 'Normal', 0, 0, 12, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (50, 'Clown Costume', 'Fun,fun and fun!!!', 1000000, 100000, 'Body', 'Female', 'Normal', 0, 0, 3, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (51, 'Hip-Hop Wear', 'Like music~~', 38000, 3800, 'Body', 'Female', 'Normal', -3, 0, 0, 0, 9, 0, 0, 4);
INSERT INTO `avatar_table` VALUES (52, 'Disco Suit 2', 'Boogi, boogie night~!', 40000, 4000, 'Body', 'Female', 'Normal', -9, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (53, 'Golden Armour', 'All bow down~!', 250000, 25000, 'Body', 'Female', 'Normal', 0, 3, 0, 0, 6, 21, 0, 0);
INSERT INTO `avatar_table` VALUES (54, 'Mecca Armour', 'Strong buildâ€¦', 70000, 7000, 'Body', 'Female', 'Normal', 0, 0, 9, 0, 0, 9, 0, 3);
INSERT INTO `avatar_table` VALUES (55, 'Black Dress', 'For sophisticated lookâ€¦', 45000, 4500, 'Body', 'Female', 'Normal', 0, 0, 6, 0, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (56, 'Red Devil', 'Cute red devil', 40000, 4000, 'Body', 'Female', 'Normal', 0, 3, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (57, 'Orange Blade', 'Party~! Party~!', 60000, 6000, 'Body', 'Female', 'Normal', -6, 0, 0, 0, 6, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (58, 'Indian Fighter', 'Risking my lifeâ€¦', 75000, 7500, 'Body', 'Female', 'Normal', -6, 0, 6, 0, 0, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (59, 'SWAT Combat', 'War against terror', 75000, 7500, 'Body', 'Female', 'Normal', 0, 3, 6, 0, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (60, 'Indian Wear 2', 'Indian clothing for winter!', 55000, 5500, 'Body', 'Female', 'Normal', -3, 6, 0, 0, 0, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (61, 'Mummy Clothing', 'Fearful mummy', 85000, 8500, 'Body', 'Female', 'Normal', 0, 6, 9, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (62, 'Indiana Wear', 'Indiana jones', 60000, 6000, 'Body', 'Female', 'Normal', 0, 0, 6, 0, 0, 0, 6, 6);
INSERT INTO `avatar_table` VALUES (63, 'Black Coat', 'Welcome to the new world!', 60000, 6000, 'Body', 'Female', 'Normal', -15, 0, 0, -3, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (64, 'Muaythai Clothing', 'I will slice you like the wind..', 78000, 7800, 'Body', 'Female', 'Normal', 0, 9, -2, 0, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (65, 'Ninja Clothing', 'Swift as the birdâ€¦', 82000, 8200, 'Body', 'Female', 'Normal', 0, 14, -1, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (66, 'Elf Clothing A', 'Noble and wise elf', 92000, 9200, 'Body', 'Female', 'Normal', -6, 0, 0, 0, 3, 0, 12, 0);
INSERT INTO `avatar_table` VALUES (67, 'Ice Hockey Suit', 'Destroy my opponent with body crush', 110000, 11000, 'Body', 'Female', 'Normal', -9, 0, 0, 0, 2, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (68, 'Rocker Suit', 'With all of your spirit.. Scream!!', 90000, 9000, 'Body', 'Female', 'Normal', 0, 0, 0, 12, 8, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (69, 'Kendo Uniform', 'Concentrate your mind and body', 120000, 12000, 'Body', 'Female', 'Normal', -4, 7, 0, 0, 0, 11, 0, 0);
INSERT INTO `avatar_table` VALUES (70, 'Fireman Uniform', 'Go anywhere with fire. Courage and sacrifice.', 120000, 12000, 'Body', 'Female', 'Normal', 0, 0, 9, 0, 0, 9, 0, 5);
INSERT INTO `avatar_table` VALUES (71, 'Panda Clothing', 'I like Panda!  From Korean Avatar Contest, UserID:?????', 95000, 9500, 'Body', 'Female', 'Normal', 0, 0, 10, 0, 9, 0, 4, 0);
INSERT INTO `avatar_table` VALUES (72, 'Great Devil Clothing', 'The Great devil with mighty red wings', 145000, 14500, 'Body', 'Female', 'Normal', 0, 16, 0, 4, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (73, 'Frankenstein', 'Green giant frankenstein', 75000, 7500, 'Body', 'Female', 'Normal', 0, 0, 7, 4, 0, 7, 0, 0);
INSERT INTO `avatar_table` VALUES (74, 'Skeleton', 'The mask of the undead', 1000000, 100000, 'Body', 'Female', 'Normal', 0, 0, 14, 0, -3, 21, 0, 0);
INSERT INTO `avatar_table` VALUES (75, 'Angel of Death', 'I shall take you to the land of death... ( By Seuldieu)', 95000, 9500, 'Body', 'Female', 'Normal', 0, 20, -4, 4, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (76, 'Metallic Armour', 'The metal turtle for ultimate defense (By TKeiTa)', 85000, 8500, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 2, 17, 0, 0);
INSERT INTO `avatar_table` VALUES (77, 'Scarecrow Girl', 'Timeless protector of loneliness (By ICHIGOcream)', 50000, 5000, 'Body', 'Female', 'Normal', 0, 0, 15, 0, 2, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (78, 'Creature Pink', 'No.2 mysterious creature \"Pink\"', 140000, 14000, 'Body', 'Female', 'Normal', 0, 0, 9, 0, 0, 0, 14, 2);
INSERT INTO `avatar_table` VALUES (79, 'Princess Mermaid', 'The prettiest in the sea~', 90000, 9000, 'Body', 'Female', 'Normal', 9, 0, 0, 0, 4, 0, 0, 9);
INSERT INTO `avatar_table` VALUES (80, 'Sky Goddess', 'The goddess of the sky', 80000, 8000, 'Body', 'Female', 'Normal', 0, 0, 9, 0, 6, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (81, 'Dracula', 'I need fresh bloodâ€¦ ^?^', 70000, 7000, 'Body', 'Female', 'Normal', 0, 0, 0, -2, 12, 0, 0, 9);
INSERT INTO `avatar_table` VALUES (82, 'Viking', 'Be a viking if you are brave enough!', 100000, 10000, 'Body', 'Female', 'Normal', 0, 0, 6, 6, 10, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (83, 'Plumpy', 'Plumpy but brave~', 1000000, 100000, 'Body', 'Female', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (84, 'Medieval Clothing', 'For that sophisticated stroll..', 125000, 12500, 'Body', 'Female', 'Event', 3, 0, 0, 0, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (85, 'Latin Clothing', 'Passion of South America', 110000, 11000, 'Body', 'Female', 'Normal', -6, 0, 0, 0, 10, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (86, 'Musketeer', 'One for all, All for one.', 120000, 12000, 'Body', 'Female', 'Normal', 0, 0, 9, 0, 4, 0, 9, 0);
INSERT INTO `avatar_table` VALUES (87, 'Persian Queen', 'Want extravagant fortune??', 90000, 9000, 'Body', 'Female', 'Normal', 0, 0, 6, 0, 15, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (88, 'Arabian Princess', 'Most beautiful person in Arabian world.', 115000, 11500, 'Body', 'Female', 'Normal', 0, 10, 0, 10, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (89, 'Shamanist', 'Believer in the power of nature', 95000, 9500, 'Body', 'Female', 'Normal', -12, 0, -5, 0, 0, 0, 0, -12);
INSERT INTO `avatar_table` VALUES (90, 'Indian Chief(B)', 'We are the bravest of brave!', 250000, 25000, 'Body', 'Female', 'Normal', 10, 10, 0, 0, 15, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (91, 'Imperial Guards', 'For the safety of the Queen', 300000, 30000, 'Body', 'Female', 'Event', 0, 11, -6, 0, 11, 11, 0, 0);
INSERT INTO `avatar_table` VALUES (92, 'The Great General', 'Defeat all enemies!', 180000, 18000, 'Body', 'Female', 'Normal', 0, 0, 9, 9, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (93, 'General', 'Everyone, follow me!', 120000, 12000, 'Body', 'Female', 'Normal', 0, 0, 7, 7, 0, 7, 0, 0);
INSERT INTO `avatar_table` VALUES (94, 'Kangsi', 'Ancient Chinese ghoul', 125000, 12500, 'Body', 'Female', 'Normal', 7, 0, 9, 0, 0, 18, 0, 0);
INSERT INTO `avatar_table` VALUES (95, 'Archangel II', 'Archangel with shiny red wings', 220000, 22000, 'Body', 'Female', 'Normal', 0, 0, 0, 9, 6, 18, 0, 0);
INSERT INTO `avatar_table` VALUES (96, 'Insect Warrior', 'Strongest warrior of the Insect World!', 180000, 18000, 'Body', 'Female', 'Normal', 0, 0, 7, 0, 0, 20, 0, 0);
INSERT INTO `avatar_table` VALUES (97, 'Black Wizard', 'Black magic will soon rule the world', 250000, 25000, 'Body', 'Female', 'Normal', 0, 11, 0, 11, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98, 'Anubis', 'The Guide of the dead', 70000, 7000, 'Body', 'Female', 'Normal', 0, 0, 0, 9, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (99, 'Snowman', '.', 200000, 20000, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 10, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (100, 'Medic', 'I will make you feel better', 70000, 7000, 'Body', 'Female', 'Normal', 0, 0, 12, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (101, 'Cyber Rabbit', 'Donâ€™t be fooled by my cute look!', 70000, 7000, 'Body', 'Female', 'Normal', -9, 0, 0, 0, 0, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (102, 'Beast King', 'Enemies shall kneel before my powerful claws', 50000, 5000, 'Body', 'Female', 'Event', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (103, 'Moth Warrior', 'Fly like the moth but sting like a bee', 100000, 10000, 'Body', 'Female', 'Event', 0, 0, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (106, 'Cat Party Dress', 'Elegant as a cat', 80000, 8000, 'Body', 'Female', 'Normal', 0, 0, 6, 0, 8, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (107, 'Puppy Party Dress', 'Cute as a puppy', 80000, 8000, 'Body', 'Female', 'Normal', 0, 6, 6, 0, 8, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (108, '??? ????', '?? ? ?? ????', 70000, 7000, 'Body', 'Female', 'Event', 0, 0, 6, 0, 6, 5, 0, 0);
INSERT INTO `avatar_table` VALUES (109, 'Saya', 'National Filipina Dress', 7000, 700, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (110, 'Silk Armor', 'Beautiful yet deadly', 140000, 14000, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 10, 12, 10, 0);
INSERT INTO `avatar_table` VALUES (111, 'Legendary Armor', 'Strong mind and strong body', 140000, 14000, 'Body', 'Female', 'Normal', -10, 0, 0, 0, 0, 12, 0, 10);
INSERT INTO `avatar_table` VALUES (112, 'Dragon Armor', 'Strong fighting style', 140000, 14000, 'Body', 'Female', 'Normal', 0, 10, 0, 8, 0, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (113, 'Thunderhawk Armor', 'Armor of stronghold', 160000, 16000, 'Body', 'Female', 'Normal', 0, 0, 12, 8, 0, 14, 0, 0);
INSERT INTO `avatar_table` VALUES (115, 'Foxxxy Outfit', 'Groovy Disco girl', 43000, 4300, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 15, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (117, 'Toadstool', 'He He, catch me if you can.', 60000, 6000, 'Body', 'Female', 'Normal', -5, 0, 0, 0, 3, 5, 0, 5);
INSERT INTO `avatar_table` VALUES (118, 'Inca Clothing', 'Seeking for the glory of the Inca Empire', 100000, 10000, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 0, 21, 0, 0);
INSERT INTO `avatar_table` VALUES (119, 'Cyber Police', 'Sweep the earth crime', 80000, 8000, 'Body', 'Female', 'Normal', 0, 10, 0, 0, 0, 10, 0, 0);
INSERT INTO `avatar_table` VALUES (121, 'WOWLG', 'Seeking for the glory of the Inca Empire', 75000, 7500, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 0, 0, 6, 6);
INSERT INTO `avatar_table` VALUES (122, 'Silver Moth', 'Moth is stronger than a butterfly', 180000, 18000, 'Body', 'Female', 'Normal', 0, 9, 9, 9, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (123, 'Magic Pierrot', 'I would like to show you very interesting magic', 120000, 12000, 'Body', 'Female', 'Normal', 0, 0, 7, 0, 7, 0, 7, 0);
INSERT INTO `avatar_table` VALUES (124, 'Dios', 'See you in the Greek-Rome shrine', 60000, 6000, 'Body', 'Female', 'Normal', 0, 0, 6, 0, 6, 0, 6, 0);
INSERT INTO `avatar_table` VALUES (126, 'Super Fly', 'Happy Halloween', 250000, 25000, 'Body', 'Female', 'Normal', 6, 0, 0, 0, 6, 0, 6, 0);
INSERT INTO `avatar_table` VALUES (127, 'Bikini', 'Happy Halloween', 75000, 7500, 'Body', 'Female', 'Normal', 0, 0, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (128, 'Skeleton Halloween', 'Happy Halloween', 1000000, 100000, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 14, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (130, 'Lion Mask', 'Be more powerful by wearing lion mask', 120000, 12000, 'Body', 'Female', 'Normal', 0, 0, 7, 0, 7, 0, 7, 0);
INSERT INTO `avatar_table` VALUES (133, 'Observador', 'I am the Very Important Person in GB world', 180000, 18000, 'Body', 'Female', 'Normal', 12, 0, 18, 0, 0, 18, 18, 0);
INSERT INTO `avatar_table` VALUES (136, 'Alice', 'Paul in Wonderland', 100000, 10000, 'Body', 'Female', 'Normal', 0, 0, 7, 0, 2, 7, 7, 0);
INSERT INTO `avatar_table` VALUES (137, 'Chinese Pierrot', 'Sing after me~', 100000, 10000, 'Body', 'Female', 'Normal', 0, 0, 7, 0, 2, 7, 7, 0);
INSERT INTO `avatar_table` VALUES (138, 'Fish Warrior', 'No one can beat me under the water', 100000, 10000, 'Body', 'Female', 'Normal', 0, 0, 7, 0, 2, 7, 7, 0);
INSERT INTO `avatar_table` VALUES (139, 'Poseidon', 'Poseidon is the King of the sea', 60000, 6000, 'Body', 'Female', 'Normal', 0, 8, 0, 0, 4, 8, 0, 0);
INSERT INTO `avatar_table` VALUES (141, 'Valentine 2006', 'Sweet Valentine', 1000000, 100000, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 11, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (142, 'Lion King', 'King of the Jungle', 100000, 10000, 'Body', 'Female', 'Normal', 0, 0, 10, 0, 0, 14, 0, 0);
INSERT INTO `avatar_table` VALUES (146, 'Honey Bee', 'Wandering around for a sweet honey', 60000, 6000, 'Body', 'Female', 'Normal', 0, 0, 9, 0, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (147, 'Easter Bunny', 'Happy Easter!', 80000, 8000, 'Body', 'Female', 'Normal', 0, 0, 14, 0, 7, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32769, 'Space Marine', 'Space marine uniform', 20000, 2000, 'Body', 'Male', 'Normal', 0, 3, 0, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (32770, 'School Uniform', 'Cute and pretty school uniform', 10000, 1000, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32771, 'Shoulder Strap', 'Shoulder strap pants for boys', 12000, 1200, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 3, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (32772, 'Pirate Captain', 'Pirate captain clothing', 60000, 6000, 'Body', 'Male', 'Normal', 0, 12, 0, 0, 3, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (32773, 'Roman General', 'Roman general armour', 40000, 4000, 'Body', 'Male', 'Normal', -3, 6, 0, 0, 0, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (32774, 'Light Armour', 'Light middle age armour', 30000, 3000, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 3, 6, 0, 3);
INSERT INTO `avatar_table` VALUES (32775, 'Heavy Armour', 'Heavy middle age armour', 35000, 3500, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 0, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (32776, 'Space Suit A', 'Outer space body protector', 60000, 6000, 'Body', 'Male', 'Normal', 0, 0, 3, 0, 3, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (32777, 'Red Devil', 'Go! Go! Soccer~!', 15000, 1500, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32778, 'Rider Uniform', 'Wherever with motor cycle', 38000, 3800, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 3, 0, 0, 9);
INSERT INTO `avatar_table` VALUES (32779, 'Navy Uniform', 'Protector of the sea!', 45000, 4500, 'Body', 'Male', 'Normal', 0, 0, 3, 6, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32780, 'Cowboy', 'Cowboy clothing', 50000, 5000, 'Body', 'Male', 'Normal', 0, 0, 0, 3, 9, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (32781, 'Pharaoh', 'Shining egyptian king', 100000, 10000, 'Body', 'Male', 'Normal', 0, 6, 9, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (32782, 'Swim Suit A', 'Cool swim suit', 8000, 800, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32784, 'Safari Wear', 'Journey to africa', 38000, 3800, 'Body', 'Male', 'Normal', 0, 0, 3, 3, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32786, 'Arch Angel', 'Arch Angel with big wings', 200000, 20000, 'Body', 'Male', 'Normal', 0, 0, 21, 0, 3, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (32787, 'FriendShip A', 'Event Clothing', 9999999, 9999999, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 3, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (32788, 'Korean Dress A', 'Softly as wind and cloud !', 35000, 3500, 'Body', 'Male', 'Normal', 0, 0, 3, 0, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32789, 'Great King', 'The dignity of King', 40000, 4000, 'Body', 'Male', 'Normal', 0, 3, 3, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (32790, 'Warriror A', 'Fight against the enemy !', 50000, 5000, 'Body', 'Male', 'Normal', 0, 6, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (32791, 'Chinese Dress', 'Splendid chinese clothing', 35000, 3500, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 6, 0, 3, 3);
INSERT INTO `avatar_table` VALUES (32792, 'Ranger Wear', 'Find the secret of woods', 50000, 5000, 'Body', 'Male', 'Normal', 0, 0, 0, 6, 0, 0, 3, 6);
INSERT INTO `avatar_table` VALUES (32793, 'Thanksgiving', 'Happy thanksgiving !', 25000, 2500, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32794, 'Magician A', 'Magician clothing', 40000, 4000, 'Body', 'Male', 'Normal', -6, 3, 0, 6, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32795, 'Indian Wear', 'Nice indian wear', 50000, 5000, 'Body', 'Male', 'Normal', -3, 0, 6, 0, 0, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (32796, 'Gladiator', 'Symbol of courage', 50000, 5000, 'Body', 'Male', 'Normal', -3, 6, 0, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (32797, 'Hawaiian Wear', 'Shell and palm decoration', 40000, 4000, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 15, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32798, 'Devil Clothing', 'The devil power!', 60000, 6000, 'Body', 'Male', 'Normal', -6, 6, 6, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32799, 'Mechanic Armour', 'Powerful mechanic armour', 70000, 7000, 'Body', 'Male', 'Normal', 0, 0, 9, 0, 0, 9, 0, 3);
INSERT INTO `avatar_table` VALUES (32800, 'Fabre Clothing', 'Mysterious power of insects', 68000, 6800, 'Body', 'Male', 'Normal', 0, 0, 9, 0, 0, 0, 3, 6);
INSERT INTO `avatar_table` VALUES (32801, 'Officer Uniform', 'Honour and glory', 60000, 6000, 'Body', 'Male', 'Normal', 0, 6, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32802, 'SWAT Combat', 'War against terror', 75000, 7500, 'Body', 'Male', 'Normal', 0, 3, 6, 0, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (32803, 'Ballroom Suit', 'Birthday event wear', 9999999, 9999999, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 3, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (32804, 'High School Band', 'High school band', 9999999, 9999999, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 0, 3, 3, 0);
INSERT INTO `avatar_table` VALUES (32805, 'Santa Suit', 'Merry Christmas~!', 15000, 1500, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32806, 'Boarder Suit', 'Snowboard mania', 75000, 7500, 'Body', 'Male', 'Normal', -6, 0, 6, 0, 0, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (32807, 'Golden Armour', 'All bow down~!', 250000, 25000, 'Body', 'Male', 'Normal', 0, 3, 0, 0, 6, 21, 0, 0);
INSERT INTO `avatar_table` VALUES (32808, 'Indian Wear 2', 'Indian clothing for winter', 55000, 5500, 'Body', 'Male', 'Normal', -3, 6, 0, 0, 0, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (32809, 'Indiana Wear', 'Indiana jones', 60000, 6000, 'Body', 'Male', 'Normal', 0, 0, 6, 0, 0, 0, 6, 6);
INSERT INTO `avatar_table` VALUES (32810, 'Tuxedo', 'Happy wedding~!', 150000, 15000, 'Body', 'Male', 'Normal', 0, 0, 6, 0, 15, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (32811, 'Duke Suit', 'Peasants â€¦get out!', 70000, 7000, 'Body', 'Male', 'Normal', 0, 6, 0, 0, 6, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (32812, 'Raincoat', 'Rainy day!', 36000, 3600, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 0, 6, 3, 3);
INSERT INTO `avatar_table` VALUES (32813, 'Baseball Jacket', 'Play baseball?', 38000, 3800, 'Body', 'Male', 'Normal', -3, 0, 0, 0, 0, 0, 3, 6);
INSERT INTO `avatar_table` VALUES (32814, 'Wood Body', 'Retire from the worldâ€¦', 40000, 4000, 'Body', 'Male', 'Normal', 0, 0, 12, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32815, 'Mummy Clothing', 'Fearful mummy', 85000, 8500, 'Body', 'Male', 'Normal', 0, 6, 9, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32816, 'Clown Costume', 'Fun,fun and fun~!', 9999999, 9999999, 'Body', 'Male', 'Normal', 0, 0, 3, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32817, 'Hip-Hop Wear', 'Like music~~', 38000, 3800, 'Body', 'Male', 'Normal', -3, 0, 0, 0, 9, 0, 0, 4);
INSERT INTO `avatar_table` VALUES (32818, 'Indian Fighter', 'Risking my life..', 75000, 7500, 'Body', 'Male', 'Normal', -6, 0, 6, 0, 0, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (32819, 'Street Fighter', 'This is mine!', 35000, 3500, 'Body', 'Male', 'Normal', -6, 0, 0, 0, 0, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (32820, 'Black Cloak', 'Namelessâ€¦', 70000, 7000, 'Body', 'Male', 'Normal', 0, 6, 0, 0, 6, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (32821, 'Road Shooter', 'Want to fight?', 45000, 4500, 'Body', 'Male', 'Normal', -6, 6, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32822, 'Military Suit', 'Want to shoot?', 45000, 4500, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 6, 6, 3, 0);
INSERT INTO `avatar_table` VALUES (32823, 'Flamingo', 'Extravaganza', 60000, 6000, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 18, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32824, 'Black Dress', 'For sophisticated lookâ€¦', 50000, 5000, 'Body', 'Male', 'Normal', 0, 0, 6, 0, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32825, 'Disco Suit', 'Shake your body to the music~', 40000, 4000, 'Body', 'Male', 'Normal', -9, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32826, 'Orange Blade', 'Party~! Party~!', 60000, 6000, 'Body', 'Male', 'Normal', -6, 0, 0, 0, 6, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (32827, 'Red Devil', 'Cute red devil', 40000, 4000, 'Body', 'Male', 'Normal', 0, 3, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32828, 'Black Coat', 'Welcome to the new world!', 60000, 6000, 'Body', 'Male', 'Normal', -15, 0, 0, -3, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32829, '.', '.', 0, 0, 'Body', 'Male', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32830, '.', '.', 0, 0, 'Body', 'Male', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32831, '.', '.', 0, 0, 'Body', 'Male', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32832, 'Samurai Clothing', 'I will slice you like the wind..', 82000, 8200, 'Body', 'Male', 'Normal', 0, 14, -1, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32833, 'Muaythai Clothing', 'Iron muscle with endless training', 78000, 7800, 'Body', 'Male', 'Normal', 0, 9, -2, 0, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (32834, 'Elf Clothing A', 'Noble and wise elf', 92000, 9200, 'Body', 'Male', 'Normal', -6, 0, 0, 0, 3, 0, 12, 0);
INSERT INTO `avatar_table` VALUES (32835, 'Ice Hockey Uniform', 'Destroy my opponent with body crush', 110000, 11000, 'Body', 'Male', 'Normal', -9, 0, 0, 0, 2, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (32836, 'Rocker Suit', 'With all of your spirit.. Scream!!', 90000, 9000, 'Body', 'Male', 'Normal', 0, 0, 0, 12, 8, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32837, 'Kendo Uniform', 'Concentrate your mind and body', 120000, 12000, 'Body', 'Male', 'Normal', -4, 7, 0, 0, 0, 11, 0, 0);
INSERT INTO `avatar_table` VALUES (32838, 'Fireman Uniform', 'Go anywhere with fire. Courage and sacrifice.', 120000, 12000, 'Body', 'Male', 'Normal', 0, 0, 9, 0, 0, 9, 0, 5);
INSERT INTO `avatar_table` VALUES (32839, 'Panda Clothing', 'I like panda!  From korean avatar contest, UserID:?????', 95000, 9500, 'Body', 'Male', 'Normal', 0, 0, 10, 0, 9, 0, 4, 0);
INSERT INTO `avatar_table` VALUES (32840, 'Great Devil Clothing', 'The great devil with mighty red wings', 145000, 14500, 'Body', 'Male', 'Normal', 0, 16, 0, 4, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32841, 'Frankenstein', 'Green giant frankenstein', 75000, 7500, 'Body', 'Male', 'Normal', 0, 0, 7, 4, 0, 7, 0, 0);
INSERT INTO `avatar_table` VALUES (32842, 'Skeleton', 'The mask of the undead', 9999999, 9999999, 'Body', 'Male', 'Normal', 0, 0, 14, 0, -3, 21, 0, 0);
INSERT INTO `avatar_table` VALUES (32843, 'Angel of Death', 'I shall take you to the land of death... ( By Seuldieu)', 95000, 9500, 'Body', 'Male', 'Normal', 0, 20, -4, 4, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32844, 'Metallic Armour', 'The metal turtle for ultimate defense (By TKeiTa)', 85000, 8500, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 2, 17, 0, 0);
INSERT INTO `avatar_table` VALUES (32845, 'Scarecrow Boy', 'Timeless protector of loneliness (By ICHIGOcream)', 50000, 5000, 'Body', 'Male', 'Normal', 0, 0, 15, 0, 2, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32846, 'Creature Violet', 'No. 1 mystery creature \"Violet\"', 140000, 14000, 'Body', 'Male', 'Normal', 0, 0, 9, 0, 0, 0, 14, 2);
INSERT INTO `avatar_table` VALUES (32847, 'Prince Mermaid', 'The prettiest in the sea~', 90000, 9000, 'Body', 'Male', 'Normal', 9, 0, 0, 0, 4, 0, 0, 9);
INSERT INTO `avatar_table` VALUES (32848, 'Ocean King', 'I am the real king of the ocean!', 80000, 8000, 'Body', 'Male', 'Normal', 0, 0, 9, 0, 6, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (32849, 'Dracula', 'I Need fresh bloodâ€¦ ^?^', 70000, 7000, 'Body', 'Male', 'Normal', 0, 0, 0, -2, 12, 0, 0, 9);
INSERT INTO `avatar_table` VALUES (32850, 'Viking', 'Be a viking if you are brave enough!', 100000, 10000, 'Body', 'Male', 'Normal', 0, 0, 6, 6, 10, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32851, 'Plumpy', 'Plumpy but brave~', 9999999, 9999999, 'Body', 'Male', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32852, 'Medieval Clothing', 'For that sophisticated stroll..', 9999999, 9999999, 'Body', 'Male', 'Event', 3, 0, 0, 0, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (32853, 'Latin Clothing', 'Passion of South America', 110000, 11000, 'Body', 'Male', 'Normal', -6, 0, 0, 0, 10, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (32854, 'Musketeer', 'One for all, All for one.', 120000, 12000, 'Body', 'Male', 'Normal', 0, 0, 9, 0, 4, 0, 9, 0);
INSERT INTO `avatar_table` VALUES (32855, 'Persian king', 'Want extravagant fortune??', 90000, 9000, 'Body', 'Male', 'Normal', 0, 0, 6, 0, 15, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32856, 'Arabian Prince', 'Bravest warrior in Arabian World.', 115000, 11500, 'Body', 'Male', 'Normal', 0, 10, 0, 10, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32857, 'Shamanist', 'Believer in the power of nature', 95000, 9500, 'Body', 'Male', 'Normal', -12, 0, -5, 0, 0, 0, 0, -12);
INSERT INTO `avatar_table` VALUES (32858, 'Indian Chief(B)', 'We are the bravest of brave!', 250000, 25000, 'Body', 'Male', 'Normal', 10, 10, 0, 0, 15, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32859, 'Imperial Guards', 'For the safety of the Queen', 9999990, 999999, 'Body', 'Male', 'Event', 0, 11, -6, 0, 11, 11, 0, 0);
INSERT INTO `avatar_table` VALUES (32860, 'The Great General', 'Defeat all enemies!', 180000, 18000, 'Body', 'Male', 'Normal', 0, 0, 9, 9, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (32861, 'General', 'Everyone, follow me!', 120000, 12000, 'Body', 'Male', 'Normal', 0, 0, 7, 7, 0, 7, 0, 0);
INSERT INTO `avatar_table` VALUES (32862, 'Kangsi', 'Ancient Chinese ghoul', 125000, 12500, 'Body', 'Male', 'Normal', 7, 0, 9, 0, 0, 18, 0, 0);
INSERT INTO `avatar_table` VALUES (32863, 'Archangel II', 'Archangel with shiny blue wings', 220000, 22000, 'Body', 'Male', 'Normal', 0, 0, 0, 9, 6, 18, 0, 0);
INSERT INTO `avatar_table` VALUES (32864, 'Insect Warrior', 'Strongest warrior of the Insect World!', 180000, 18000, 'Body', 'Male', 'Normal', 0, 0, 7, 0, 0, 20, 0, 0);
INSERT INTO `avatar_table` VALUES (32865, 'Black Wizard', 'Black magic will soon rule the world', 9999990, 999999, 'Body', 'Male', 'Normal', 0, 11, 0, 11, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32866, 'Anubis', 'The Guide of the dead', 70000, 7000, 'Body', 'Male', 'Normal', 0, 0, 0, 9, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (32867, 'Snowman', '.', 9999990, 999999, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 10, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32868, 'Medic', 'I will make you feel better', 70000, 7000, 'Body', 'Male', 'Normal', 0, 0, 12, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (32869, 'Cyber Rabbit', 'Donâ€™t be fooled by my cute look!', 70000, 7000, 'Body', 'Male', 'Normal', -9, 0, 0, 0, 0, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (32870, 'Beast King', 'Enemies shall kneel before my powerful claws', 9999990, 999999, 'Body', 'Male', 'Event', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32871, 'Moth Warrior', 'Fly like the moth but sting like a bee', 9999990, 999999, 'Body', 'Male', 'Event', 0, 0, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32874, 'Cat Tuxedo', 'Elegant as a cat', 80000, 8000, 'Body', 'Male', 'Normal', 0, 0, 6, 0, 8, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (32875, 'Puppy Tuxedo', 'Cute as a puppy', 80000, 8000, 'Body', 'Male', 'Normal', 0, 6, 6, 0, 8, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32876, '??? ????', '?? ? ?? ????', 70000, 7000, 'Body', 'Male', 'Event', 0, 0, 6, 0, 6, 5, 0, 0);
INSERT INTO `avatar_table` VALUES (32877, 'Barong', 'Tagalog Dress Shirt', 7000, 700, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32878, 'Katipunero Shirt', 'Filipino Revolutionary Shirt', 7000, 700, 'Body', 'Male', 'Normal', 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32879, 'Legendary Armor', 'Strong mind and strong body', 140000, 14000, 'Body', 'Male', 'Normal', -10, 0, 0, 0, 0, 12, 0, 10);
INSERT INTO `avatar_table` VALUES (32880, 'Dragon Armor', 'Strong fighting style', 140000, 14000, 'Body', 'Male', 'Normal', 0, 10, 0, 8, 0, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (32881, 'Thunderhawk Armor', 'Armor of stronghold', 160000, 16000, 'Body', 'Male', 'Normal', 0, 0, 12, 8, 0, 14, 0, 0);
INSERT INTO `avatar_table` VALUES (32882, 'Iverson Jersey', 'Philly jersey', 43000, 4300, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 15, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32883, 'Old School', 'Old school jersey', 43000, 4300, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 15, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32884, 'Bling-Bling', 'Tank-top with bling-bling necklace', 5000, 500, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32885, 'Iverson Jersey', 'Philly jersey', 43000, 4300, 'Body', 'Male', 'Event', 0, 0, 0, 0, 15, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32886, 'Old School', 'Old school jersey', 43000, 4300, 'Body', 'Male', 'Event', 0, 0, 0, 0, 15, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32887, 'MAD', '', 250000, 25000, 'Body', 'Male', 'Normal', 0, 3, 0, 0, 6, 24, 0, 0);
INSERT INTO `avatar_table` VALUES (32889, 'WOWLG', 'Seeking for the glory of the Inca Empire', 9999990, 999999, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 0, 0, 6, 6);
INSERT INTO `avatar_table` VALUES (32890, 'Silver Moth', 'Moth is stronger than a butterfly', 180000, 18000, 'Body', 'Male', 'Normal', 0, 9, 9, 9, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32891, 'Magic Pierrot', 'I would like to show you very interesting magic', 120000, 12000, 'Body', 'Male', 'Normal', 0, 0, 7, 0, 7, 0, 7, 0);
INSERT INTO `avatar_table` VALUES (32892, 'Dios', 'See you in the Greek-Rome shrine', 60000, 6000, 'Body', 'Male', 'Normal', 0, 0, 6, 0, 6, 0, 6, 0);
INSERT INTO `avatar_table` VALUES (32894, 'Super Fly', 'Happy Halloween', 9999990, 999999, 'Body', 'Male', 'Normal', 6, 0, 0, 0, 6, 0, 6, 0);
INSERT INTO `avatar_table` VALUES (32895, 'Bikini', 'Happy Halloween', 9999990, 999999, 'Body', 'Male', 'Normal', 0, 0, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32896, 'Skeleton Halloween', 'Happy Halloween', 9999990, 999999, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 14, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32898, 'Lion Mask', 'Be more powerful by wearing lion mask', 120000, 12000, 'Body', 'Male', 'Normal', 0, 0, 7, 0, 7, 0, 7, 0);
INSERT INTO `avatar_table` VALUES (32901, 'Observador', 'I am the Very Important Person in GB world', 180000, 18000, 'Body', 'Male', 'Normal', 12, 0, 18, 0, 0, 18, 18, 0);
INSERT INTO `avatar_table` VALUES (32904, 'Paul', 'Paul in Wonderland', 100000, 10000, 'Body', 'Male', 'Normal', 0, 0, 7, 0, 2, 7, 7, 0);
INSERT INTO `avatar_table` VALUES (32905, 'Chinese Pierrot', 'Sing after me~', 100000, 10000, 'Body', 'Male', 'Normal', 0, 0, 7, 0, 2, 7, 7, 0);
INSERT INTO `avatar_table` VALUES (32906, 'Fish Warrior', 'No one can beat me under the water', 100000, 10000, 'Body', 'Male', 'Normal', 0, 0, 7, 0, 2, 7, 7, 0);
INSERT INTO `avatar_table` VALUES (32907, 'Poseidon', 'Poseidon is the King of the sea', 60000, 6000, 'Body', 'Male', 'Normal', 0, 8, 0, 0, 4, 8, 0, 0);
INSERT INTO `avatar_table` VALUES (32909, 'Valentine 2006', 'Sweet Valentine', 9999990, 999999, 'Body', 'Male', 'Normal', 0, 0, 0, 0, 11, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32910, 'Lion King', 'King of the Jungle', 100000, 10000, 'Body', 'Male', 'Normal', 0, 0, 10, 0, 0, 14, 0, 0);
INSERT INTO `avatar_table` VALUES (32914, 'Honey Bee', 'Wandering around for a sweet honey', 60000, 6000, 'Body', 'Male', 'Normal', 0, 0, 9, 0, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (32915, 'Easter Bunny', 'Happy Easter!', 80000, 8000, 'Body', 'Male', 'Normal', 0, 0, 14, 0, 7, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65537, 'Space Marine', 'Combat helmet for the space marine', 10000, 1000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 3, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (65538, 'Safety Helmet', 'Safety hat with cute light bulb', 15000, 1500, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (65539, 'Flower Pin', 'Hair pin with pretty flower', 10000, 1000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65540, 'Rome Helmet', 'Helmet of roman general', 25000, 2500, 'Helm', 'Female', 'Normal', 0, 3, 0, 0, 3, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (65541, 'Pirate Hat', 'Pirate captain hat', 40000, 4000, 'Helm', 'Female', 'Normal', 0, 9, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65542, 'Pucca Hair', 'Pucca style hair', 18000, 1800, 'Helm', 'Female', 'Normal', 0, 0, 3, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65543, 'Space Helmet A', 'Helmet for space suit', 45000, 4500, 'Helm', 'Female', 'Normal', 0, 0, 3, 0, 6, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (65544, 'Wing Helmet', 'Wing helmet with shining jewel', 20000, 2000, 'Helm', 'Female', 'Normal', 0, 3, 0, 0, 3, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (65545, 'Rabbit Hair', 'Super cute rabbit headband', 20000, 2000, 'Helm', 'Female', 'Normal', -3, 0, 0, 0, 3, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (65546, 'RedDevil Hood', 'Oh! Go soccer~!!', 5000, 500, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65547, 'Fruit Angel Hat', 'Fruit angel hat', 40000, 4000, 'Helm', 'Female', 'Normal', 0, 0, 6, 3, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65548, 'Safari Hat', 'Safari hat in Africa', 30000, 3000, 'Helm', 'Female', 'Normal', 0, 0, 6, 0, 0, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (65549, 'Soccer Hat', 'Event hat', 1000000, 100000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65550, 'Magician Hat A', 'Rookie magician hat', 30000, 3000, 'Helm', 'Female', 'Normal', -3, 6, 0, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (65551, 'Silver Crown', 'Shining crown and violet hair', 100000, 10000, 'Helm', 'Female', 'Normal', -9, 0, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65552, 'Suntan A', 'Excellent shape', 8000, 800, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65553, 'Bamboo Hat', 'Pretty bamboo hat', 35000, 3500, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 6, 0, 3, 3);
INSERT INTO `avatar_table` VALUES (65555, 'Motor Helmet', 'Motor cycle helmet', 40000, 4000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 3, 0, 6, 6);
INSERT INTO `avatar_table` VALUES (65556, 'Arabian Style', 'Beautiful arabian woman', 40000, 4000, 'Helm', 'Female', 'Normal', -3, 0, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65557, 'Friendship A', 'Event hat', 1000000, 100000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 3, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (65558, 'Angel Hair', 'Pink hair with hair-ring', 30000, 3000, 'Helm', 'Female', 'Normal', 0, 0, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65559, 'Hostess Hair A', 'Traditional korean Lady hair', 30000, 3000, 'Helm', 'Female', 'Normal', 0, 0, 3, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (65560, 'Marine Helmet', 'Marine captain hat', 30000, 3000, 'Helm', 'Female', 'Normal', 0, 3, 0, 0, 3, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (65561, 'Pharaoh', 'Golden cobra decoration', 200000, 20000, 'Helm', 'Female', 'Normal', 0, 3, 18, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (65562, 'Thanksgiving', 'Happy thanksgiving !', 25000, 2500, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65563, 'Cowboy Hat', 'Cool cowboy hat', 30000, 3000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 6, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (65565, 'Ranger Hat', 'Find the secret of woods', 40000, 4000, 'Helm', 'Female', 'Normal', 0, 0, 0, 6, 0, 0, 6, 0);
INSERT INTO `avatar_table` VALUES (65566, 'Hairpin Hair', 'Big hairpin style', 30000, 3000, 'Helm', 'Female', 'Normal', 0, 0, 3, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (65567, 'Indian Hair', 'Indian decoration', 40000, 4000, 'Helm', 'Female', 'Normal', -6, 0, 0, 0, 3, 0, 6, 0);
INSERT INTO `avatar_table` VALUES (65568, 'Black Hat', 'Black hat with brown stripe', 35000, 3500, 'Helm', 'Female', 'Normal', 0, 3, 3, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65569, 'Hawaiian Hair', 'Shell decoration', 30000, 3000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 6, 0, 6, 0);
INSERT INTO `avatar_table` VALUES (65570, 'Snow White', 'Snow white & the seven dwarfs', 30000, 3000, 'Helm', 'Female', 'Normal', -3, 0, 6, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65571, 'Flamingo Hair', 'Fantistic festival style', 55000, 5500, 'Helm', 'Female', 'Normal', 0, 0, 3, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65572, 'Crocodile', 'Devil hair with horn', 40000, 4000, 'Helm', 'Female', 'Normal', 0, 3, 6, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (65573, 'Wolf Hair', 'Symbol of courage', 45000, 4500, 'Helm', 'Female', 'Normal', -6, 3, 6, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65574, 'Birthday Hat', 'Birthday event', 1000000, 100000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 14, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65575, 'Golden Hair', 'Shining golden hair', 30000, 3000, 'Helm', 'Female', 'Normal', 0, 0, 3, 0, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65576, 'Tree Angel Hair', 'Leaf decoration', 35000, 3500, 'Helm', 'Female', 'Normal', 0, 0, 6, 0, 3, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (65577, 'Black Noodle', 'Black noodle', 75000, 7500, 'Helm', 'Female', 'Normal', 0, 10, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65578, 'Santa Hat', 'Merry Christmas~!', 15000, 1500, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65579, 'Ski Headgear', 'Snow field calls meâ€¦', 40000, 4000, 'Helm', 'Female', 'Normal', -3, 0, 0, 0, 0, 6, 0, 6);
INSERT INTO `avatar_table` VALUES (65580, 'Disco Hood', 'Party! Party!', 40000, 4000, 'Helm', 'Female', 'Normal', 0, 0, 0, 3, 6, 0, 6, 0);
INSERT INTO `avatar_table` VALUES (65581, 'Riding Hat', 'Horse riding~', 40000, 4000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 9, 3, 0, 3);
INSERT INTO `avatar_table` VALUES (65582, 'Picnic Hat', 'For luxurious picnic', 150000, 15000, 'Helm', 'Female', 'Normal', 0, 0, 6, 0, 18, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (65583, 'Bride Hair', 'Happy wedding~!', 150000, 15000, 'Helm', 'Female', 'Normal', 0, 3, 15, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65584, 'Raincoat Hat', 'Raining day!', 30000, 3000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 6, 3, 0, 3);
INSERT INTO `avatar_table` VALUES (65585, 'Baseball Cap', 'Play baseball?', 46000, 4600, 'Helm', 'Female', 'Normal', 0, 3, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65586, 'Officer Uniform', 'Honor and Glory', 45000, 4500, 'Helm', 'Female', 'Normal', -6, 0, 6, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65587, 'Wood Hair', 'Rertire from the world', 35000, 3500, 'Helm', 'Female', 'Normal', 0, 0, 6, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (65588, 'Clown Costume Hat', 'Fun, fun and fun!!!', 1000000, 100000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65589, 'Hip-Hop Hair', 'Like music~~', 40000, 4000, 'Helm', 'Female', 'Normal', -3, 0, 0, 0, 6, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (65590, 'Hussy Hair', 'My name is a trouble maker ^^', 35000, 3500, 'Helm', 'Female', 'Normal', 0, 0, 6, 0, 3, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (65591, 'Golden Helmet', 'All heads down', 350000, 35000, 'Helm', 'Female', 'Normal', -3, 3, 0, 0, 0, 24, 0, 0);
INSERT INTO `avatar_table` VALUES (65592, 'Mechanic Helmet', 'Super mechanic helmet', 48000, 4800, 'Helm', 'Female', 'Normal', 0, 0, 6, 0, 3, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (65593, 'Cat Head', 'Meow~ Meow~', 40000, 4000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 6, 0, 0, 9);
INSERT INTO `avatar_table` VALUES (65594, 'RedDevils', 'Cute red devil', 40000, 4000, 'Helm', 'Female', 'Normal', 0, 3, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65595, 'Orange Helmet', 'Ride! Ride! Ride!!!', 50000, 5000, 'Helm', 'Female', 'Normal', -3, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (65596, 'Indian Fighter', 'Risk my lifeâ€¦', 50000, 5000, 'Helm', 'Female', 'Normal', -6, 9, 3, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65597, 'SWAT Helmet', 'War against terror', 40000, 4000, 'Helm', 'Female', 'Normal', -3, 0, 0, 0, 0, 9, 0, 3);
INSERT INTO `avatar_table` VALUES (65598, 'SARS Protector', 'Protection from SARS', 30000, 3000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 6, 0, 3, 3);
INSERT INTO `avatar_table` VALUES (65599, 'Mummy Hair', 'Fearful mummy', 95000, 9500, 'Helm', 'Female', 'Normal', 0, 0, 15, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65600, 'Indiana Hat', 'Indiana jones', 40000, 4000, 'Helm', 'Female', 'Normal', -3, 0, 0, 0, 0, 0, 6, 6);
INSERT INTO `avatar_table` VALUES (65601, 'M.Hair', 'The one and onlyâ€¦', 54000, 5400, 'Helm', 'Female', 'Normal', 0, 0, -3, 0, 6, 0, 0, 12);
INSERT INTO `avatar_table` VALUES (65602, 'Muaythai Hair', 'Iron muscle from endless training', 68000, 6800, 'Helm', 'Female', 'Normal', 0, 9, -2, 0, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (65603, 'Ninja Hair', 'I will slice you like wind..', 70000, 7000, 'Helm', 'Female', 'Normal', -6, 9, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65604, 'Elf Hair A', 'Noble and wise elf', 92000, 9200, 'Helm', 'Female', 'Normal', -6, 0, 3, 0, 0, 0, 12, 0);
INSERT INTO `avatar_table` VALUES (65605, 'Ice Hockey Helmet', 'Destroy my opponent with body crush', 100000, 10000, 'Helm', 'Female', 'Normal', -9, 0, 0, 0, 0, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (65606, 'Rocker Hair', 'With all of your spirit.. Scream!!', 85000, 8500, 'Helm', 'Female', 'Normal', 0, 0, 0, 12, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65607, 'Kendo helmet', 'Concentrate your mind and your body', 115000, 11500, 'Helm', 'Female', 'Normal', -3, 7, 0, 0, 0, 11, 0, 0);
INSERT INTO `avatar_table` VALUES (65608, 'Chief Hair', 'Feather decoration of Power', 250000, 25000, 'Helm', 'Female', 'Normal', 0, 12, 12, 0, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (65609, 'Fireman Helmet', 'Go anywhere with fire. Courage and Sacrifice!', 132000, 13200, 'Helm', 'Female', 'Normal', 0, 0, 9, 0, 0, 9, 0, 7);
INSERT INTO `avatar_table` VALUES (65610, 'Panda Hat', 'I like panda!  From korean avatar contest, UserID:?????', 90000, 9000, 'Helm', 'Female', 'Normal', 0, 0, 9, 0, 7, 0, 6, 0);
INSERT INTO `avatar_table` VALUES (65611, 'Great Devil Head', 'The great devil with mighty red wings', 320000, 32000, 'Helm', 'Female', 'Normal', 0, 20, 0, 8, 7, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65612, 'Frankenstein', 'Green giant frankenstein', 195000, 19500, 'Helm', 'Female', 'Normal', 0, 0, 20, 0, 0, 9, 0, -4);
INSERT INTO `avatar_table` VALUES (65613, 'Skeleton', 'The mask of the undead', 1000000, 100000, 'Helm', 'Female', 'Normal', 0, 0, 21, 0, 0, 14, 0, 0);
INSERT INTO `avatar_table` VALUES (65614, 'Angel of Death', 'I shall take you to the land of death... ( By Seuldieu)', 110000, 11000, 'Helm', 'Female', 'Normal', 0, 21, -3, 3, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65615, 'Metallic Armour', 'The metal turtle for ultimate defense (By TKeiTa)', 95000, 9500, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 3, 19, 0, 0);
INSERT INTO `avatar_table` VALUES (65616, 'Scarecrow Girl', 'Timeless protector of loneliness (By ICHIGOcream)', 70000, 7000, 'Helm', 'Female', 'Normal', 0, 0, 18, 0, 4, -1, 0, 0);
INSERT INTO `avatar_table` VALUES (65617, 'Creature Pink', 'No.2 mysterious creature \"Pink\"', 185000, 18500, 'Helm', 'Female', 'Normal', 0, 0, 10, 0, 0, 0, 16, 3);
INSERT INTO `avatar_table` VALUES (65618, 'Princess Mermaid', 'The prettiest in the sea~', 80000, 8000, 'Helm', 'Female', 'Normal', 0, 0, 10, 0, 4, 4, 0, 0);
INSERT INTO `avatar_table` VALUES (65619, 'Sky Goddess', 'The goddess of the sky', 95000, 9500, 'Helm', 'Female', 'Normal', 0, 9, 0, 6, 7, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65620, 'Dracula', 'I need fresh bloodâ€¦ ^?^', 80000, 8000, 'Helm', 'Female', 'Normal', -6, 0, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65621, 'Viking', 'Be a viking if you are brave enough!', 120000, 12000, 'Helm', 'Female', 'Normal', 4, 12, 0, 0, 0, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (65623, 'Plumpy', 'Plumpy but brave~', 1000000, 100000, 'Helm', 'Female', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65624, 'Medieval Clothing', 'For that sophisticated stroll..', 1000000, 100000, 'Helm', 'Female', 'Event', 0, 0, 6, 0, 0, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (65625, 'Latin Hair', 'Passion of South America', 110000, 11000, 'Helm', 'Female', 'Normal', 0, 0, 0, 9, 0, 6, 0, 6);
INSERT INTO `avatar_table` VALUES (65626, 'Musketeer', 'One for all, All for one.', 120000, 12000, 'Helm', 'Female', 'Normal', 0, 8, 0, 0, 6, 8, 0, 0);
INSERT INTO `avatar_table` VALUES (65627, 'Persian Queen', 'Want extravagant fortune??', 99000, 9900, 'Helm', 'Female', 'Normal', 5, 0, 12, 0, 0, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (65628, 'Arabian Princess', 'Most beautiful person in Arabian world.', 150000, 15000, 'Helm', 'Female', 'Normal', 0, 0, 12, 0, 0, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (65629, 'Shamanist', 'Believer in the power of nature', 110000, 11000, 'Helm', 'Female', 'Normal', 0, 7, 0, 7, 0, 7, 0, 0);
INSERT INTO `avatar_table` VALUES (65630, 'Indian Chief(H)', 'We are the bravest of brave!', 300000, 30000, 'Helm', 'Female', 'Normal', 0, 12, 0, 0, 20, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (65631, 'Imperial Guards', 'For the safety of the Queen', 150000, 15000, 'Helm', 'Female', 'Event', 0, 6, -3, 0, 6, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (65632, 'The Great General', 'Defeat all enemies!', 220000, 22000, 'Helm', 'Female', 'Normal', -9, 18, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65633, 'General', 'Everyone, follow me!', 130000, 13000, 'Helm', 'Female', 'Normal', -8, 16, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65634, 'Kangsi', 'Ancient Chinese ghoul', 135000, 13500, 'Helm', 'Female', 'Normal', 0, 15, 15, 0, 0, 0, 0, -5);
INSERT INTO `avatar_table` VALUES (65635, 'Archangel II', 'Archangel with shiny red wings', 220000, 22000, 'Helm', 'Female', 'Normal', -9, 18, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65636, 'Insect Warrior', 'Strongest warrior of the Insect World!', 220000, 22000, 'Helm', 'Female', 'Normal', 0, 20, 0, 7, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65637, 'Black Wizard', 'Black magic will soon rule the world', 1000000, 100000, 'Helm', 'Female', 'Normal', 0, 8, 0, 0, 0, 8, 0, 0);
INSERT INTO `avatar_table` VALUES (65638, 'Anubis', 'The Guide of the dead', 90000, 9000, 'Helm', 'Female', 'Normal', 0, 0, 12, 0, 0, 10, 0, 0);
INSERT INTO `avatar_table` VALUES (65639, 'Snowman', '.', 1000000, 100000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 16, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65640, 'Medic', 'I will make you feel better', 90000, 9000, 'Helm', 'Female', 'Normal', -7, 0, 10, 0, 0, 0, 4, 0);
INSERT INTO `avatar_table` VALUES (65641, 'Cyber Rabbit', 'Donâ€™t be fooled by my cute look!', 100000, 10000, 'Helm', 'Female', 'Normal', -7, 0, 0, 7, 0, 0, 0, 7);
INSERT INTO `avatar_table` VALUES (65642, 'Beast King', 'Enemies shall kneel before my powerful claws', 1000000, 100000, 'Helm', 'Female', 'Event', 0, 0, 0, 0, 10, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65643, 'Moth Warrior', 'Fly like the moth but sting like a bee', 1000000, 100000, 'Helm', 'Female', 'Event', 0, 0, 11, 0, 11, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65646, 'Cat Party Dress', 'Elegant as a cat', 100000, 10000, 'Helm', 'Female', 'Normal', -7, 0, 6, 0, 10, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65647, 'Puppy Party Dress', 'Cute as a puppy', 100000, 10000, 'Helm', 'Female', 'Normal', 0, 0, 6, 7, 10, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65648, '??? ????', '?? ? ?? ????', 40000, 4000, 'Helm', 'Female', 'Event', -5, 0, 0, 0, 7, 2, 0, 0);
INSERT INTO `avatar_table` VALUES (65649, 'Imelda Hair', 'Most Glamorous Filipina', 50000, 5000, 'Helm', 'Female', 'Normal', 0, 0, 3, 0, 6, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (65650, 'Katipunero Hat', 'Filipino Revolutionary Hat', 6000, 600, 'Helm', 'Female', 'Normal', 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65651, 'Silk Helm', 'Helm of fairies', 80000, 8000, 'Helm', 'Female', 'Normal', 0, 0, 10, 0, 0, 10, 0, 6);
INSERT INTO `avatar_table` VALUES (65652, 'Legendary Helm', 'Helm of the legendary wizards', 80000, 8000, 'Helm', 'Female', 'Normal', 0, 0, 10, 0, 0, 10, 6, 0);
INSERT INTO `avatar_table` VALUES (65653, 'Dragon Helm', 'Helm of the legendary knights', 80000, 8000, 'Helm', 'Female', 'Normal', 0, 0, 8, 0, 8, 10, 0, 0);
INSERT INTO `avatar_table` VALUES (65654, 'Thunderhawk Mask', 'Mask that creates magic', 100000, 10000, 'Helm', 'Female', 'Normal', 0, 0, 8, 0, 10, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (65655, 'Foxxxy Hair', '1 foot high afro hair', 30000, 3000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65656, 'Braids', 'Cornrows for girls', 30000, 3000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65657, 'Foxxxy Hair', '1 foot high afro hair', 30000, 3000, 'Helm', 'Female', 'Event', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65658, 'Braids', 'Cornrows for girls', 30000, 3000, 'Helm', 'Female', 'Event', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65659, 'Cyber Police', 'Sweep the earth crime', 100000, 10000, 'Helm', 'Female', 'Normal', 0, 0, 10, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65661, 'WOWLG', 'Seeking for the glory of the Inca Empire', 1000000, 100000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 0, 0, 10, 10);
INSERT INTO `avatar_table` VALUES (65662, 'Silver Moth', 'Moth is stronger than a butterfly', 220000, 22000, 'Helm', 'Female', 'Normal', 0, 0, 10, 0, 10, 7, 0, 0);
INSERT INTO `avatar_table` VALUES (65663, 'Magic Pierrot', 'I would like to show you very interesting magic', 130000, 13000, 'Helm', 'Female', 'Normal', 0, 5, 0, 0, 10, 5, 0, 0);
INSERT INTO `avatar_table` VALUES (65664, 'Dios', 'See you in the Greek-Rome shrine', 70000, 7000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 6, 0, 0, -12);
INSERT INTO `avatar_table` VALUES (65666, 'Super Fly', 'Happy Halloween', 1000000, 100000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65667, 'Bikini', 'Happy Halloween', 100000, 10000, 'Helm', 'Female', 'Normal', 0, 0, 8, 0, 8, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65668, 'Skeleton Halloween', 'Happy Halloween', 1000000, 100000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 16, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65670, 'Lion Mask', 'Be more powerful by wearing lion mask', 130000, 13000, 'Helm', 'Female', 'Normal', 0, 5, 0, 0, 10, 5, 0, 0);
INSERT INTO `avatar_table` VALUES (65673, 'Observador', 'I am the Very Important Person in GB world', 180000, 18000, 'Helm', 'Female', 'Normal', 0, 18, 0, 18, 18, 0, 0, -12);
INSERT INTO `avatar_table` VALUES (65676, 'Alice', 'Paul in Wonderland', 100000, 10000, 'Helm', 'Female', 'Normal', 0, 7, 0, 7, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65677, 'Chinese Pierrot', 'Sing after me~', 100000, 10000, 'Helm', 'Female', 'Normal', 0, 7, 0, 7, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65678, 'Fish Warrior', 'No one can beat me under the water', 100000, 10000, 'Helm', 'Female', 'Normal', 0, 7, 0, 7, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65679, 'Poseidon', 'Poseidon is the King of the sea', 70000, 7000, 'Helm', 'Female', 'Normal', 0, 2, 10, 6, 6, 2, 0, 0);
INSERT INTO `avatar_table` VALUES (65681, 'Valentine 2006', 'Sweet Valentine', 1000000, 100000, 'Helm', 'Female', 'Normal', 0, 0, 0, 0, 14, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65682, 'Lion King', 'King of the Jungle', 110000, 11000, 'Helm', 'Female', 'Normal', 0, 14, 0, 10, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65686, 'Honey Bee', 'Wandering around for a sweet honey', 70000, 7000, 'Helm', 'Female', 'Normal', 0, 9, 0, -9, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (65687, 'Easter Bunny', 'Happy Easter!', 100000, 10000, 'Helm', 'Female', 'Normal', -7, 0, 7, 0, 7, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98305, 'Space Marine', 'Space marine combat helmet', 10000, 1000, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 3, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (98306, 'Safety Helmet', 'Safety helmet with cute light bulb', 15000, 1500, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (98307, 'Punk Hair', 'Punky hair style', 10000, 1000, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98308, 'Wing Helmet', 'Wing helmet with shining jewel', 20000, 2000, 'Helm', 'Male', 'Normal', 0, 3, 0, 0, 3, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (98309, 'Knight Helmet', 'Middle age knight helmet', 18000, 1800, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (98310, 'Rome Helmet', 'Roman general helmet', 25000, 2500, 'Helm', 'Male', 'Normal', 0, 3, 0, 0, 3, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (98311, 'Pirate Hat', 'Pirate Captain Hat', 40000, 4000, 'Helm', 'Male', 'Normal', 0, 9, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98312, 'Space Helmet A', 'Space suit helmet', 45000, 4500, 'Helm', 'Male', 'Normal', 0, 0, 3, 0, 6, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (98313, 'RedDevil Hood', 'Oh! Go Soccer~!', 5000, 500, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98314, 'Motor Helmet', 'Motor cycle helmet', 40000, 4000, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 3, 0, 6, 6);
INSERT INTO `avatar_table` VALUES (98315, 'Marine Hat', 'Marine captain hat', 30000, 3000, 'Helm', 'Male', 'Normal', 0, 3, 0, 0, 3, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (98316, 'Soccer Hat', 'Event hat', 9999999, 9999999, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98317, 'Cowboy Hat', 'Handsome cowboy', 30000, 3000, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 6, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (98318, 'Pharaoh', 'Golden cobra decoration', 200000, 20000, 'Helm', 'Male', 'Normal', 0, 3, 18, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (98319, 'Suntan A', 'Excellent Shape', 8000, 800, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98321, 'Safari Hat', 'Safari hat for africa', 30000, 3000, 'Helm', 'Male', 'Normal', 0, 0, 6, 0, 0, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (98323, 'Magician Hair A', 'Magician of storm', 30000, 3000, 'Helm', 'Male', 'Normal', -3, 6, 0, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (98324, 'Friendship A', 'Event hat', 9999999, 9999999, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 3, 0, 6, 0);
INSERT INTO `avatar_table` VALUES (98325, 'Bamboo Hat', 'Softly as wind and cloud!', 35000, 3500, 'Helm', 'Male', 'Normal', 0, 0, 3, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (98326, 'Gold Crown', 'With dignity of king', 100000, 10000, 'Helm', 'Male', 'Normal', 0, 0, 15, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98327, 'Pigtail Hair', 'Funny pigtail hair', 30000, 3000, 'Helm', 'Male', 'Normal', -3, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (98328, 'Hwarang Hair', 'Follow HwaRangDo', 40000, 4000, 'Helm', 'Male', 'Normal', -3, 6, 0, 6, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98329, 'Laurel Crown', 'With victory', 80000, 8000, 'Helm', 'Male', 'Normal', -9, 0, 6, 3, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98330, 'Ranger Hat', 'Find secret of woods', 40000, 4000, 'Helm', 'Male', 'Normal', 0, 0, 0, 6, 0, 0, 6, 0);
INSERT INTO `avatar_table` VALUES (98331, 'Thanksgiving', 'Happy thanksgiving !', 25000, 2500, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98332, 'Magician Hat A', 'Rookie magician hat', 30000, 3000, 'Helm', 'Male', 'Normal', -6, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98333, 'Chief Hair', 'Feather decoration of power', 250000, 25000, 'Helm', 'Male', 'Normal', 0, 12, 12, 0, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (98334, 'Wolf Hair', 'Symbol of courage', 45000, 4500, 'Helm', 'Male', 'Normal', -6, 6, 3, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98335, 'Hawaiian Hair', 'Bridge style hair', 30000, 3000, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 6, 0, 6, 0);
INSERT INTO `avatar_table` VALUES (98336, 'Devil Hair', 'Devil hair with horn', 40000, 4000, 'Helm', 'Male', 'Normal', 0, 0, 6, 3, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (98337, 'Mechanic Helmet', 'Powerful mechanic helmet', 48000, 4800, 'Helm', 'Male', 'Normal', 0, 0, 6, 0, 3, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (98338, 'Insect Hat', 'Mysterious power of insects', 35000, 3500, 'Helm', 'Male', 'Normal', 0, 0, 9, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98339, 'Officer Uniform', 'Honor and glory', 45000, 4500, 'Helm', 'Male', 'Normal', -6, 0, 6, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98340, 'SWAT Helmet', 'War against terror', 40000, 4000, 'Helm', 'Male', 'Normal', -3, 0, 0, 0, 0, 9, 0, 3);
INSERT INTO `avatar_table` VALUES (98341, 'Birthday Hat', 'Birthday event', 9999999, 9999999, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 14, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98342, 'Black Noodle', 'Black Noodle hat', 9999999, 9999999, 'Helm', 'Male', 'Event', 0, 10, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98343, 'Santa Hat', 'Merry Christmas~!', 15000, 1500, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98344, 'Ski Headgear', 'Snow field calls meâ€¦', 40000, 4000, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 0, 6, 6, 3);
INSERT INTO `avatar_table` VALUES (98345, 'Golden Helmet', 'All heads down!', 350000, 35000, 'Helm', 'Male', 'Normal', -3, 3, 0, 0, 0, 24, 0, 0);
INSERT INTO `avatar_table` VALUES (98346, 'SARS Protector', 'Protection from SARS', 30000, 3000, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 6, 0, 3, 3);
INSERT INTO `avatar_table` VALUES (98347, 'Indiana Hat', 'Indiana jones', 40000, 4000, 'Helm', 'Male', 'Normal', -3, 0, 0, 0, 0, 0, 6, 6);
INSERT INTO `avatar_table` VALUES (98348, 'Bridegeroom Hair', 'Happy wedding!', 150000, 15000, 'Helm', 'Male', 'Normal', 0, 0, 9, 0, 15, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98349, 'Duke Hair', 'Peasant â€¦get out!', 70000, 7000, 'Helm', 'Male', 'Normal', -6, 6, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98350, 'Raincoat Hat', 'Raining day!', 30000, 3000, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 6, 3, 0, 3);
INSERT INTO `avatar_table` VALUES (98351, 'Baseball Cap', 'Play baseball?', 46000, 4600, 'Helm', 'Male', 'Normal', 0, 3, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98352, 'Wood Hair', 'Rrtire from the world', 35000, 3500, 'Helm', 'Male', 'Normal', 0, 0, 6, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (98353, 'Mummy Hair', 'Fearful mummy', 95000, 9500, 'Helm', 'Male', 'Normal', 0, 0, 15, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98354, 'Clown Costume', 'Fun, fun and fun!!!', 9999999, 9999999, 'Helm', 'Male', 'Normal', 0, 8, 0, 0, 0, 8, 0, 0);
INSERT INTO `avatar_table` VALUES (98355, 'Hip-Hop Hair', 'Like music~~', 40000, 4000, 'Helm', 'Male', 'Normal', -3, 0, 0, 0, 6, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (98356, 'Indian Fighter', 'Risk my lifeâ€¦', 50000, 5000, 'Helm', 'Male', 'Normal', -6, 9, 3, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98357, 'Poet Head', 'Have a poetic turn of mind', 20000, 2000, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98358, 'Sensor Helmet', 'Ultra sensitive', 25000, 2500, 'Helm', 'Male', 'Normal', 0, 3, 0, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (98359, 'Punky Brown', 'Punk rock!', 45000, 4500, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 15, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98360, 'Criminal Hair', 'From prison', 38000, 3800, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 6, 0, 3, 3);
INSERT INTO `avatar_table` VALUES (98361, 'Flamingo Hair', 'Fantistic festival style', 55000, 5500, 'Helm', 'Male', 'Normal', 0, 0, 3, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98362, 'Riding Hat', 'Horse riding', 40000, 4000, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 9, 3, 0, 3);
INSERT INTO `avatar_table` VALUES (98363, 'Disco Hood', 'Party! Party!', 40000, 4000, 'Helm', 'Male', 'Normal', 0, 0, 0, 3, 6, 0, 6, 0);
INSERT INTO `avatar_table` VALUES (98364, 'Orange Helmet', 'Ride! Ride! Ride!', 50000, 5000, 'Helm', 'Male', 'Normal', -3, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (98365, 'Red Devils', 'Cute red devil', 40000, 4000, 'Helm', 'Male', 'Normal', 0, 3, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98366, 'M.Hair', 'The one and onlyâ€¦', 54000, 5400, 'Helm', 'Male', 'Normal', 0, 0, -3, 0, 6, 0, 0, 12);
INSERT INTO `avatar_table` VALUES (98367, 'Samurai Hair', 'I will slice you like wind~', 70000, 7000, 'Helm', 'Male', 'Normal', -6, 9, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98368, 'Muaythai Hair', 'Iron muscle from endless training', 68000, 6800, 'Helm', 'Male', 'Normal', 0, 9, -3, 0, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (98369, 'Elf Hair A', 'Noble and wise elf', 92000, 9200, 'Helm', 'Male', 'Normal', -6, 0, 3, 0, 0, 0, 12, 0);
INSERT INTO `avatar_table` VALUES (98370, 'Ice Hockey Helmet', 'Destroy my opponent with body crush', 100000, 10000, 'Helm', 'Male', 'Normal', -9, 0, 0, 0, 0, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (98371, 'Rocker Hair', 'With all of your spirit.. Scream!!', 85000, 8500, 'Helm', 'Male', 'Normal', 0, 0, 0, 12, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98372, 'Kendo helmet', 'Concentrate your mind and your body', 115000, 11500, 'Helm', 'Male', 'Normal', -3, 7, 0, 0, 0, 11, 0, 0);
INSERT INTO `avatar_table` VALUES (98373, 'Fireman Helmet', 'Go anywhere with fire. Courage and Sacrifice.', 132000, 13200, 'Helm', 'Male', 'Normal', 0, 0, 9, 0, 0, 9, 0, 7);
INSERT INTO `avatar_table` VALUES (98374, 'Panda Hat', 'I like Panda!  From Korean Avatar Contest, UserID:?????', 90000, 9000, 'Helm', 'Male', 'Normal', 0, 0, 9, 0, 7, 0, 6, 0);
INSERT INTO `avatar_table` VALUES (98375, 'Great Devil Head', 'The Great Devil with mighty red wings', 320000, 32000, 'Helm', 'Male', 'Normal', 0, 20, 0, 8, 7, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98376, 'Frankenstein', 'Green Giant Frankenstein', 195000, 19500, 'Helm', 'Male', 'Normal', 0, 0, 20, 0, 0, 9, 0, -4);
INSERT INTO `avatar_table` VALUES (98377, 'Skeleton', 'The mask of the undead', 9999999, 9999999, 'Helm', 'Male', 'Normal', 0, 0, 21, 0, 0, 14, 0, 0);
INSERT INTO `avatar_table` VALUES (98378, 'Angel of Death', 'I shall take you to the land of death... ( By Seuldieu)', 110000, 11000, 'Helm', 'Male', 'Normal', 0, 21, -3, 3, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98379, 'Metallic Armour', 'The metal turtle for ultimate defense (By TKeiTa)', 95000, 9500, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 3, 19, 0, 0);
INSERT INTO `avatar_table` VALUES (98380, 'Scarecrow Boy', 'Timeless protector of loneliness (By ICHIGOcream)', 70000, 7000, 'Helm', 'Male', 'Normal', 0, 0, 18, 0, 4, -1, 0, 0);
INSERT INTO `avatar_table` VALUES (98381, 'Creature Violet', 'No. 1 mysterious creature \"Violet\"', 185000, 18500, 'Helm', 'Male', 'Normal', 0, 0, 10, 0, 0, 0, 16, 3);
INSERT INTO `avatar_table` VALUES (98382, 'Prince Mermaid', 'The handsomest in the sea~', 80000, 8000, 'Helm', 'Male', 'Normal', 0, 0, 10, 0, 4, 4, 0, 0);
INSERT INTO `avatar_table` VALUES (98383, 'Ocean King', 'I am the real king of the ocean!', 95000, 9500, 'Helm', 'Male', 'Normal', 0, 9, 0, 6, 7, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98384, 'Dracula', 'I need fresh bloodâ€¦ ^?^', 80000, 8000, 'Helm', 'Male', 'Normal', -6, 0, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98385, 'Viking', 'Be a viking if you are brave enough!', 120000, 12000, 'Helm', 'Male', 'Normal', 4, 12, 0, 0, 0, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (98387, 'Plumpy', 'Plumpy but brave~', 9999999, 9999999, 'Helm', 'Male', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98388, 'Medieval Clothing', 'For that sophisticated stroll..', 9999999, 9999999, 'Helm', 'Male', 'Event', 0, 0, 6, 0, 0, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (98389, 'Latin Hair', 'Passion of South America', 110000, 11000, 'Helm', 'Male', 'Normal', 0, 0, 0, 9, 0, 6, 0, 6);
INSERT INTO `avatar_table` VALUES (98390, 'Musketeer', 'One for all, All for one.', 120000, 12000, 'Helm', 'Male', 'Normal', 0, 8, 0, 0, 6, 8, 0, 0);
INSERT INTO `avatar_table` VALUES (98391, 'Persian king', 'Want extravagant fortune??', 99000, 9900, 'Helm', 'Male', 'Normal', 5, 0, 12, 0, 0, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (98392, 'Arabian Prince', 'Bravest warrior in Arabian World.', 150000, 15000, 'Helm', 'Male', 'Normal', 0, 0, 12, 0, 0, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (98393, 'Shamanist', 'Believer in the power of nature', 110000, 11000, 'Helm', 'Male', 'Normal', 0, 7, 0, 7, 0, 7, 0, 0);
INSERT INTO `avatar_table` VALUES (98394, 'Indian Chief Hair', 'We are the bravest of brave!', 300000, 30000, 'Helm', 'Male', 'Normal', 0, 12, 0, 0, 20, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (98395, 'Imperial Guards', 'For the safety of the Queen', 9999990, 9999999, 'Helm', 'Male', 'Event', 0, 6, -3, 0, 6, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (98396, 'The Great General', 'Defeat all enemies!', 220000, 22000, 'Helm', 'Male', 'Normal', -9, 18, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98397, 'General', 'Everyone, follow me!', 130000, 13000, 'Helm', 'Male', 'Normal', -8, 16, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98398, 'Kangsi', 'Ancient Chinese ghoul', 135000, 13500, 'Helm', 'Male', 'Normal', 0, 15, 15, 0, 0, 0, 0, -5);
INSERT INTO `avatar_table` VALUES (98399, 'Archangel II', 'Archangel with shiny blue wings', 220000, 22000, 'Helm', 'Male', 'Normal', -9, 18, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98400, 'Insect Warrior', 'Strongest warrior of the Insect World!', 220000, 22000, 'Helm', 'Male', 'Normal', 0, 20, 0, 7, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98401, 'Black Wizard', 'Black magic will soon rule the world', 95000, 9500, 'Helm', 'Male', 'Normal', 0, 10, 0, 7, 4, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98402, 'Anubis', 'The Guide of the dead', 90000, 9000, 'Helm', 'Male', 'Normal', 0, 0, 12, 0, 0, 10, 0, 0);
INSERT INTO `avatar_table` VALUES (98403, 'Snowman', '.', 9999990, 999999, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 16, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98404, 'Medic', 'I will make you feel better', 90000, 9000, 'Helm', 'Male', 'Normal', -7, 0, 10, 0, 0, 0, 4, 0);
INSERT INTO `avatar_table` VALUES (98405, 'Cyber Rabbit', 'Donâ€™t be fooled by my cute look!', 100000, 10000, 'Helm', 'Male', 'Normal', -7, 0, 0, 7, 0, 0, 0, 7);
INSERT INTO `avatar_table` VALUES (98406, 'Beast King', 'Enemies shall kneel before my powerful claws', 9999990, 999999, 'Helm', 'Male', 'Event', 0, 0, 0, 0, 10, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98407, 'Moth Warrior', 'Fly like the moth but sting like a bee', 9999990, 999999, 'Helm', 'Male', 'Event', 0, 0, 11, 0, 11, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98410, 'Cat Tuxedo', 'Elegant as a cat', 100000, 10000, 'Helm', 'Male', 'Normal', -7, 0, 6, 0, 10, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98411, 'Puppy Tuxedo', 'Cute as a puppy', 100000, 10000, 'Helm', 'Male', 'Normal', 0, 0, 6, 7, 10, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98412, '??? ????', '?? ? ?? ????', 40000, 4000, 'Helm', 'Male', 'Event', -5, 0, 0, 0, 7, 2, 0, 0);
INSERT INTO `avatar_table` VALUES (98414, 'Katipunero Hat', 'Filipino Revolutionary Hat', 6000, 600, 'Helm', 'Male', 'Normal', 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98416, 'Legendary Helm', 'Helm of the legendary wizards', 80000, 8000, 'Helm', 'Male', 'Normal', 0, 0, 10, 0, 0, 10, 6, 0);
INSERT INTO `avatar_table` VALUES (98417, 'Dragon Helm', 'Helm of the legendary knights', 80000, 8000, 'Helm', 'Male', 'Normal', 0, 0, 8, 0, 8, 10, 0, 0);
INSERT INTO `avatar_table` VALUES (98418, 'Thunderhawk Mask', 'Mask that creates magic', 100000, 10000, 'Helm', 'Male', 'Normal', 0, 0, 8, 0, 10, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (98419, 'Afro Hair', '1 foot high afro hair', 30000, 3000, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98420, 'Iverson Hair', 'Cornrows', 30000, 3000, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98421, 'Doo Rag & Cap', 'Doo rag underneath a red cap', 13000, 1300, 'Helm', 'Male', 'Normal', 0, 2, 0, 0, 0, 4, 0, 0);
INSERT INTO `avatar_table` VALUES (98422, 'Afro Hair', '1 foot high afro hair', 30000, 3000, 'Helm', 'Male', 'Event', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98423, 'Iverson Hair', 'Cornrows', 30000, 3000, 'Helm', 'Male', 'Event', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98424, 'MAD boy', '', 350000, 35000, 'Helm', 'Male', 'Normal', 0, 3, 0, 0, 0, 24, 0, 0);
INSERT INTO `avatar_table` VALUES (98425, 'WOWLG', 'Seeking for the glory of the Inca Empire', 9999990, 999999, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 0, 0, 10, 10);
INSERT INTO `avatar_table` VALUES (98426, 'Silver Moth', 'Moth is stronger than a butterfly', 220000, 22000, 'Helm', 'Male', 'Normal', 0, 0, 10, 0, 10, 7, 0, 0);
INSERT INTO `avatar_table` VALUES (98427, 'Magic Pierrot', 'I would like to show you very interesting magic', 130000, 13000, 'Helm', 'Male', 'Normal', 0, 5, 0, 0, 10, 5, 0, 0);
INSERT INTO `avatar_table` VALUES (98428, 'Dios', 'See you in the Greek-Rome shrine', 70000, 7000, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 6, 0, 0, -12);
INSERT INTO `avatar_table` VALUES (98430, 'Super Fly', 'Happy Halloween', 9999990, 999999, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 6, 0, 6, 6);
INSERT INTO `avatar_table` VALUES (98431, 'Bikini', 'Happy Halloween', 9999990, 999999, 'Helm', 'Male', 'Normal', 0, 0, 8, 0, 8, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98432, 'Skeleton Halloween', 'Happy Halloween', 9999990, 999999, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 16, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98434, 'Lion Mask', 'Be more powerful by wearing lion mask', 130000, 13000, 'Helm', 'Male', 'Normal', 0, 5, 0, 0, 10, 5, 0, 0);
INSERT INTO `avatar_table` VALUES (98437, 'Observador', 'I am the Very Important Person in GB world', 180000, 18000, 'Helm', 'Male', 'Normal', 0, 18, 0, 18, 18, 0, 0, -12);
INSERT INTO `avatar_table` VALUES (98440, 'Paul', 'Paul in Wonderland', 100000, 10000, 'Helm', 'Male', 'Normal', 0, 7, 0, 7, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98441, 'Chinese Pierrot', 'Sing after me~', 100000, 10000, 'Helm', 'Male', 'Normal', 0, 7, 0, 7, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98442, 'Fish Warrior', 'No one can beat me under the water', 100000, 10000, 'Helm', 'Male', 'Normal', 0, 7, 0, 7, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98443, 'Poseidon', 'Poseidon is the King of the sea', 70000, 7000, 'Helm', 'Male', 'Normal', 0, 2, 10, 6, 6, 2, 0, 0);
INSERT INTO `avatar_table` VALUES (98445, 'Valentine 2006', 'Sweet Valentine', 9999990, 999999, 'Helm', 'Male', 'Normal', 0, 0, 0, 0, 14, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98446, 'Lion King', 'King of the Jungle', 110000, 11000, 'Helm', 'Male', 'Normal', 0, 14, 0, 10, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98450, 'Honey Bee', 'Wandering around for a sweet honey', 70000, 7000, 'Helm', 'Male', 'Normal', 0, 9, 0, -9, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98451, 'Easter Bunny', 'Happy Easter!', 100000, 10000, 'Helm', 'Male', 'Normal', -7, 0, 7, 0, 7, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131073, 'Battle Goggle', 'Futuristic battle goggle', 20000, 2000, 'Body', 'Female', 'Normal', 0, 0, 0, 3, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131074, 'Pilot Goggle', 'Fly to the sky~', 15000, 1500, 'Body', 'Female', 'Normal', 0, 0, 0, 3, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131075, 'YinYang Painting', 'Tough cross-shaped scar', 5000, 500, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131076, 'Heart Painting', 'Mysterious power', 20000, 2000, 'Body', 'Female', 'Normal', 0, 0, 3, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131077, 'Zoro Mask', 'Symbol of love', 20000, 2000, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 6, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (131078, 'Sunglasses', 'Black rim glasses', 30000, 3000, 'Body', 'Female', 'Normal', 0, 0, 3, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (131079, 'Night Vision', 'Master of thief', 30000, 3000, 'Body', 'Female', 'Normal', 0, 3, 0, 6, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (131080, 'Battle Goggle O', 'Black sunglasses', 20000, 2000, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 3, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (131082, 'Battle Goggle B', 'Futuristic battle goggle (black)', 20000, 2000, 'Body', 'Female', 'Normal', 0, 0, 6, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131083, 'Black Glasses', 'Futuristic battle goggle (green)', 15000, 1500, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 3, 0, 3, 0);
INSERT INTO `avatar_table` VALUES (131084, 'Red Makeup', 'Futuristic battle goggle (sky)', 20000, 2000, 'Body', 'Female', 'Normal', 0, 0, 3, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131085, 'Swimming Goggles', 'For water war', 30000, 3000, 'Body', 'Female', 'Normal', 0, 0, 0, 3, 0, 0, 3, 6);
INSERT INTO `avatar_table` VALUES (131086, 'Gunshot', '100% Accuracy', 35000, 3500, 'Body', 'Female', 'Normal', -3, 0, 6, 3, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131087, 'Red Nose', 'Fast and strong', 20000, 2000, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131088, 'Laser Goggle', 'Nobody knows..', 50000, 5000, 'Body', 'Female', 'Normal', 0, 9, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (131089, 'Black Painting', 'Comic item', 20000, 2000, 'Body', 'Female', 'Normal', 0, 0, 3, 0, 3, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (131090, 'Hockey Mask', 'Iron mask for hockey', 30000, 3000, 'Body', 'Female', 'Normal', 0, 0, 6, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (131091, 'Orbiting Moon', '.', 1000000, 100000, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131092, '20', '.', 1000000, 100000, 'Body', 'Female', 'Normal', 0, 3, 0, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (131093, 'One-Eyed', 'Tough item', 20000, 2000, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 3, 0, 3, 3);
INSERT INTO `avatar_table` VALUES (131094, 'Pet-01', 'Defence robot', 120000, 12000, 'Body', 'Female', 'Normal', 0, 3, 0, 3, 0, 15, 0, 0);
INSERT INTO `avatar_table` VALUES (131095, 'Rudolph Nose', 'Red nose', 5000, 500, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131096, 'Ski Goggle', 'UV alert', 40000, 4000, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 3, 6, 0, 6);
INSERT INTO `avatar_table` VALUES (131097, 'Love Eye', 'I Love You!!', 30000, 3000, 'Body', 'Female', 'Normal', 0, 0, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131098, 'Rimless specs', 'For intelligent look!', 16000, 1600, 'Body', 'Female', 'Normal', 0, 0, 3, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131099, 'Red Glasses', 'Red eyes~~', 45000, 4500, 'Body', 'Female', 'Normal', -6, 0, 0, 0, 0, 0, 6, 3);
INSERT INTO `avatar_table` VALUES (131100, 'Monkey Mask', 'Who am I?!', 60000, 6000, 'Body', 'Female', 'Normal', 0, 0, 6, 0, 9, 0, 3, 0);
INSERT INTO `avatar_table` VALUES (131101, 'Pig Mask', 'Cute piggy', 60000, 6000, 'Body', 'Female', 'Normal', 0, 0, 9, 0, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131102, 'M.Sunglasses', 'I can see the bullet time!', 56000, 5600, 'Body', 'Female', 'Normal', -12, 0, 0, 0, 6, -3, 0, 0);
INSERT INTO `avatar_table` VALUES (131103, 'snorkel', 'What a view to see~', 46000, 4600, 'Body', 'Female', 'Normal', 0, 0, 6, 0, 4, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (131104, 'Pet-02', 'Modified version of pet-01', 125000, 12500, 'Body', 'Female', 'Normal', 0, 0, 6, 0, 0, 15, 0, 0);
INSERT INTO `avatar_table` VALUES (131105, 'Pet-03', 'Modified version of pet-01', 125000, 12500, 'Body', 'Female', 'Normal', -6, 0, 0, 6, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (131106, 'Pet-AD', 'Futuristic defensive robot', 240000, 24000, 'Body', 'Female', 'Normal', 0, 0, 0, 6, 0, 18, 0, 6);
INSERT INTO `avatar_table` VALUES (131108, 'Dizzy Glasses', 'Dizzy?? Confuse your opponent.', 48000, 4800, 'Body', 'Female', 'Normal', -7, 0, 0, 8, 2, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131109, 'Eagle', 'The strongest bird in the sky', 95000, 9500, 'Body', 'Female', 'Normal', 0, 9, 9, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131110, 'Parrot', 'Very useful when need to quarrel', 80000, 8000, 'Body', 'Female', 'Normal', 0, 0, 8, 0, 11, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131111, 'Silver Hawk', 'The ultimate bird', 110000, 11000, 'Body', 'Female', 'Normal', 0, 12, 12, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131112, 'Phoenix', 'The symbol of everlasting life', 180000, 18000, 'Body', 'Female', 'Normal', 0, 9, 15, 0, 0, 15, 0, 0);
INSERT INTO `avatar_table` VALUES (131113, 'Red Parrot', '.', 1000000, 100000, 'Body', 'Female', 'Normal', 0, 9, 9, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (131114, 'Kangsi Charm', 'Powerful charm for exorcist to control Kangsi', 380000, 38000, 'Body', 'Female', 'Event', 0, 12, 0, 12, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131117, 'Curious Eyes', 'Hmmm I wonder what that is..?', 25000, 2500, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131118, 'Shocked', 'Eeek! What was that !?! O_o', 25000, 2500, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131123, 'Sibat at Kalasag', 'Filipino Spear and Shield', 60000, 6000, 'Body', 'Female', 'Normal', 0, 6, 0, 0, 0, 6, 6, 0);
INSERT INTO `avatar_table` VALUES (131124, 'Kris', 'Large Visayan Sword', 40000, 4000, 'Body', 'Female', 'Normal', 0, 9, 0, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (131125, 'Barong Sword', 'Tausug Leaf Shaped Sword', 20000, 2000, 'Body', 'Female', 'Normal', 0, 6, 0, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (131127, 'Legendary Staff', 'Great for spellcasting', 60000, 6000, 'Body', 'Female', 'Normal', 2, 12, 0, 0, 0, 10, 0, 0);
INSERT INTO `avatar_table` VALUES (131128, 'Double Blade', 'Best for attacking enemies', 60000, 6000, 'Body', 'Female', 'Normal', 0, 12, 0, 0, 0, -2, 0, 8);
INSERT INTO `avatar_table` VALUES (131129, 'Rune Blade', 'Great for both attack and defense', 80000, 8000, 'Body', 'Female', 'Normal', 4, 16, 12, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131130, 'Basketball', 'Basketball for the ultimate baller', 30000, 3000, 'Body', 'Female', 'Normal', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (131131, 'Basketball', 'Basketball for the ultimate baller', 30000, 3000, 'Body', 'Female', 'Event', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163841, 'Battle Goggle', 'Futuristic battle goggle', 20000, 2000, 'Glasses', 'Male', 'Normal', 0, 0, 0, 3, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163842, 'Pilot Goggle', 'Fly to the sky~', 15000, 1500, 'Glasses', 'Male', 'Normal', 0, 0, 0, 3, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163843, 'Cross Scar', 'Tough cross-shaped scar', 10000, 1000, 'Glasses', 'Male', 'Normal', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163844, 'YinYang Painting', 'Mysterious power', 5000, 500, 'Glasses', 'Male', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163845, 'Heart Painting', 'Symbol of love', 20000, 2000, 'Glasses', 'Male', 'Normal', 0, 0, 3, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163846, 'Black Glasses', 'Black rim glasses', 15000, 1500, 'Glasses', 'Male', 'Normal', 0, 0, 0, 0, 3, 0, 3, 0);
INSERT INTO `avatar_table` VALUES (163847, 'Zoro Mask', 'Master of thief', 20000, 2000, 'Glasses', 'Male', 'Normal', 0, 0, 0, 0, 6, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (163848, 'Sunglasses', 'Black sunglasses', 30000, 3000, 'Glasses', 'Male', 'Normal', 0, 0, 3, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (163850, 'Battle Goggle B', 'Futuristic battle goggle (black)', 20000, 2000, 'Glasses', 'Male', 'Normal', 0, 0, 0, 0, 3, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (163851, 'Battle Goggle G', 'Futuristic battle goggle (green)', 20000, 2000, 'Glasses', 'Male', 'Normal', 0, 6, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163852, 'Battle Goggle S', 'Futuristic battle goggle (sky)', 20000, 2000, 'Glasses', 'Male', 'Normal', 0, 0, 6, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163853, 'Swimming Goggles', 'For water war', 30000, 3000, 'Glasses', 'Male', 'Normal', 0, 0, 0, 3, 0, 0, 3, 6);
INSERT INTO `avatar_table` VALUES (163854, 'Gunshot', '100% Accuracy', 35000, 3500, 'Glasses', 'Male', 'Normal', -3, 0, 6, 3, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163855, 'Laser Goggle', 'Fast and strong', 50000, 5000, 'Glasses', 'Male', 'Normal', 0, 9, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (163856, 'Black Painting', 'Nobody knows..', 20000, 2000, 'Glasses', 'Male', 'Normal', 0, 0, 3, 0, 3, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (163857, 'Red Nose', 'Comic item', 20000, 2000, 'Glasses', 'Male', 'Normal', 0, 0, 0, 0, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163858, 'Hockey Mask', 'Iron mask for hockey', 30000, 3000, 'Glasses', 'Male', 'Normal', 0, 0, 6, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (163859, 'Orbiting Moon', '.', 9999999, 9999999, 'Glasses', 'Male', 'Normal', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163860, '20', '.', 16113919, 9999999, 'Glasses', 'Male', 'Normal', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163861, 'One-eyed', 'Tough item', 20000, 2000, 'Glasses', 'Male', 'Normal', 0, 0, 0, 0, 3, 0, 3, 3);
INSERT INTO `avatar_table` VALUES (163862, 'Pet-01', 'Defence robot', 120000, 12000, 'Glasses', 'Male', 'Normal', 0, 3, 0, 3, 0, 15, 0, 0);
INSERT INTO `avatar_table` VALUES (163863, 'Rudolph Nose', 'Red nose', 5000, 500, 'Glasses', 'Male', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163864, 'Ski Goggle', 'UV alert', 40000, 4000, 'Glasses', 'Male', 'Normal', 0, 0, 0, 0, 3, 6, 0, 6);
INSERT INTO `avatar_table` VALUES (163865, 'Love Eye', 'I Love You!!', 30000, 3000, 'Glasses', 'Male', 'Normal', 0, 0, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163866, 'Rimless specs', 'For intelligent look!', 16000, 1600, 'Glasses', 'Male', 'Normal', 0, 0, 3, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163867, 'Red Glasses', 'Red eyes~~', 45000, 4500, 'Glasses', 'Male', 'Normal', -6, 0, 0, 0, 0, 0, 6, 3);
INSERT INTO `avatar_table` VALUES (163868, 'Monkey Mask', 'Who am I?!', 60000, 6000, 'Glasses', 'Male', 'Normal', 0, 0, 6, 0, 9, 0, 3, 0);
INSERT INTO `avatar_table` VALUES (163869, 'Pig Mask', 'Cute piggy', 60000, 6000, 'Glasses', 'Male', 'Normal', 0, 0, 9, 0, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163870, 'M.Sunglasses', 'I can see the bullet time!', 56000, 5600, 'Glasses', 'Male', 'Normal', -12, 0, 0, 0, 6, -3, 0, 0);
INSERT INTO `avatar_table` VALUES (163871, 'snorkel', 'What a view to see~', 46000, 4600, 'Glasses', 'Male', 'Normal', 0, 0, 6, 0, 4, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (163872, 'Pet-02', 'Modified version of pet-01', 125000, 12500, 'Glasses', 'Male', 'Normal', 0, 0, 6, 0, 0, 15, 0, 0);
INSERT INTO `avatar_table` VALUES (163873, 'Pet-03', 'Modified version of pet-01', 125000, 12500, 'Glasses', 'Male', 'Normal', -6, 0, 0, 6, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (163874, 'Pet-AD', 'Futuristic defensive robot', 240000, 24000, 'Glasses', 'Male', 'Normal', 0, 0, 0, 6, 0, 18, 0, 6);
INSERT INTO `avatar_table` VALUES (163876, 'Dizzy Glasses', 'Dizzy?? Confuse your opponent.', 48000, 4800, 'Glasses', 'Male', 'Normal', -7, 0, 0, 8, 2, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163877, 'Eagle', 'The strongest bird in the sky', 95000, 9500, 'Glasses', 'Male', 'Normal', 0, 9, 9, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163878, 'Parrot', 'Very useful when need to quarrel', 80000, 8000, 'Glasses', 'Male', 'Normal', 0, 0, 8, 0, 11, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163879, 'Silver Hawk', 'The ultimate bird', 110000, 11000, 'Glasses', 'Male', 'Normal', 0, 12, 12, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163880, 'Phoenix', 'The symbol of everlasting life', 180000, 18000, 'Glasses', 'Male', 'Normal', 0, 9, 15, 0, 0, 15, 0, 0);
INSERT INTO `avatar_table` VALUES (163881, 'Red Parrot', '.', 9999990, 9999999, 'Glasses', 'Male', 'Normal', 0, 9, 9, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (163882, 'Kangsi Charm', 'Powerful charm for exorcist to control Kangsi', 380000, 38000, 'Glasses', 'Male', 'Event', 0, 12, 0, 12, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163885, 'Curious', 'Hmmm I wonder what that is..?', 25000, 2500, 'Glasses', 'Male', 'Normal', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163886, 'Shocked', 'Eeek! What was that !?! O_o', 25000, 2500, 'Glasses', 'Male', 'Normal', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163887, 'Sleepy', 'ZzZzZz... *yawn*', 25000, 2500, 'Glasses', 'Male', 'Event', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163889, 'Cat Eyes', 'Meow~', 25000, 2500, 'Glasses', 'Male', 'Event', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163890, 'Stunned', 'Eh?!?', 25000, 2500, 'Glasses', 'Male', 'Event', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163891, 'Sibat at Kalasag', 'Filipino Spear and Shield', 60000, 6000, 'Glasses', 'Male', 'Normal', 0, 6, 0, 0, 0, 6, 6, 0);
INSERT INTO `avatar_table` VALUES (163892, 'Kris', 'Large Visayan Sword', 40000, 4000, 'Glasses', 'Male', 'Normal', 0, 9, 0, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (163893, 'Barong Sword', 'Tausug Leaf Shaped Sword', 20000, 2000, 'Glasses', 'Male', 'Normal', 0, 6, 0, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (163894, 'Legendary Staff', 'Great for spellcasting', 60000, 6000, 'Glasses', 'Male', 'Normal', 2, 12, 0, 0, 0, 10, 0, 0);
INSERT INTO `avatar_table` VALUES (163895, 'Double Blade', 'Best for attacking enemies', 60000, 6000, 'Glasses', 'Male', 'Normal', 0, 12, 0, 0, 0, -2, 0, 8);
INSERT INTO `avatar_table` VALUES (163896, 'Rune Blade', 'Great for both attack and defense', 80000, 8000, 'Glasses', 'Male', 'Normal', 4, 16, 12, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163897, 'Basketball', 'Basketball for the ultimate baller', 30000, 3000, 'Glasses', 'Male', 'Normal', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163898, 'Basketball', 'Basketball for the ultimate baller', 30000, 3000, 'Glasses', 'Male', 'Event', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229377, 'Blue Flag', 'Blue triangular flag', 10000, 1000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229378, 'Red Flag', 'Red triangular flag', 10000, 1000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229379, 'Violet Flag', 'Violet triangular flag', 10000, 1000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229380, 'Black Flag', 'Black triangular flag', 10000, 1000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229381, 'Yellow Flag', 'Yellow triangular flag', 10000, 1000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229382, 'white Flag', 'White triangular flag', 10000, 1000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229383, 'France', 'Paris', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229384, 'Senegal', 'Dakar', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229385, 'Uruguay', 'Montevideo', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229386, 'Denmark', 'Copenhagen', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229387, 'Spain', 'Madrid', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229388, 'Slovenia', 'Ljubljana', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229389, 'Paraguay', 'Asuncion', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229390, 'South Africa', 'Pretoria', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229391, 'Brazil', 'Brazilia', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229392, 'Turkey', 'Ankara', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229393, 'China', 'Beijing', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229394, 'Costa Rica', 'San Jose', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229395, 'Korea', 'Seoul', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229396, 'Poland', 'Warsaw', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229397, 'USA', 'Washington', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229398, 'Portugal', 'Lisbon', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229399, 'Germany', 'Berlin', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229400, 'Saudi Arabia', 'Riyadh', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229401, 'Ireland', 'Dublin', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229402, 'Cameroon', 'Yaounde', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229403, 'Argentina', 'Buenos Aires', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229404, 'Nigeria', 'Abuja', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229405, 'England', 'London', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229406, 'Sweden', 'Stockholm', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229407, 'Italy', 'Rome', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229408, 'Ecuador', 'Quito', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229409, 'Croatia', 'Zagreb', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229410, 'Mexico', 'Mexico', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229411, 'Japan', 'Tokyo', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229412, 'Belgium', 'Brussels', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229413, 'Russia', 'Moscow', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229414, 'Tunisia', 'Tunis', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229415, 'Lond Dream', 'Lond Dream', 60000, 6000, 'Flag', 'UniSex', 'Normal', 0, 6, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229416, 'Feather Fan', 'Feather folding fan', 30000, 3000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 3, 0, 0, 3, 6);
INSERT INTO `avatar_table` VALUES (229417, 'Cross Spear', 'Cross spear', 45000, 4500, 'Flag', 'UniSex', 'Normal', 0, 9, 0, 0, 3, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229418, 'Palm Tree(big)', 'Palm tree(big)', 32000, 3200, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (229419, 'Palm Tree(small)', 'Palm tree(small)', 24000, 2400, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 3, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (229420, 'Stick Candy', 'Stick candy', 24000, 2400, 'Flag', 'UniSex', 'Normal', 0, 0, 3, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229421, 'ChungRyongDo', 'Kill enemy at once', 45000, 4500, 'Flag', 'UniSex', 'Normal', 0, 9, 0, 3, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229422, 'Magic Broom', 'Speed up item', 30000, 3000, 'Flag', 'UniSex', 'Normal', -3, 0, 0, 0, 0, 0, 0, 9);
INSERT INTO `avatar_table` VALUES (229423, 'Propeller', 'Full Speed', 30000, 3000, 'Flag', 'UniSex', 'Normal', -6, 0, 0, 0, 0, 0, 3, 3);
INSERT INTO `avatar_table` VALUES (229424, '.', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229425, 'BangChun', 'Spear of legendary warrior', 55000, 5500, 'Flag', 'UniSex', 'Normal', 0, 9, 0, 3, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229426, 'Shield Spear', 'Protect and attack, all at once', 35000, 3500, 'Flag', 'UniSex', 'Normal', 0, 6, 0, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (229427, 'Golden Hammer', 'Attack, Attack, Attack!', 65000, 6500, 'Flag', 'UniSex', 'Normal', 0, 18, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229428, 'Japan Umbrella', 'Pretty umbrella', 30000, 3000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 3, 0, 3);
INSERT INTO `avatar_table` VALUES (229429, 'JiRoDo', 'Sword of legendary warrior', 50000, 5000, 'Flag', 'UniSex', 'Normal', -3, 6, 0, 0, 0, 0, 6, 0);
INSERT INTO `avatar_table` VALUES (229430, 'Deep-Sea Fish', 'Mysterious power', 50000, 5000, 'Flag', 'UniSex', 'Normal', 0, 0, 6, 0, 3, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (229431, 'BooDoo A', 'BooDoo magic A', 40000, 4000, 'Flag', 'UniSex', 'Normal', -6, 0, 3, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (229432, 'BooDoo B', 'BooDoo magic B', 40000, 4000, 'Flag', 'UniSex', 'Normal', -6, 6, 0, 0, 0, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229433, 'Radar', 'Searching for enemy', 45000, 4500, 'Flag', 'UniSex', 'Normal', -6, 0, 0, 3, 0, 0, 6, 0);
INSERT INTO `avatar_table` VALUES (229434, 'Parasol', 'Block the strong sun light', 30000, 3000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 3, 3);
INSERT INTO `avatar_table` VALUES (229435, 'Toy Hammer', 'Hit for fun', 35000, 3500, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229436, 'Scorpion', 'Deadly stingâ€¦', 35000, 3500, 'Flag', 'UniSex', 'Normal', 1, 6, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229437, 'Guild Flag', 'Guild flag', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229438, 'Guild Flag', 'Guild flag', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229439, 'Guild Flag', 'Guild flag', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229440, 'Guild Flag', 'Guild flag', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229441, 'Guild Flag', 'Guild flag', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229442, 'Guild Flag', 'Guild flag', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229443, 'Guild Flag', 'Guild flag', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229444, 'Guild Flag', 'Guild flag', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229445, 'Guild Flag', 'Guild flag', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229446, 'Guild Flag', 'Guild flag', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229447, 'Guild Flag', 'Guild flag', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229448, 'Guild Flag', 'Guild flag', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229449, 'Guild Flag', 'Guild flag', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229450, 'Guild Flag', 'Guild flag', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229451, 'Guild Flag', 'Guild flag', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229452, 'Guild Flag', 'Guild flag', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229453, 'X-mas Gift', 'Merry X-mas!', 30000, 3000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 3, 0);
INSERT INTO `avatar_table` VALUES (229454, 'X-mas Tree', 'Happy X-mas!', 35000, 3500, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229455, 'Halloween', 'Trick or treat?', 45000, 4500, 'Flag', 'UniSex', 'Normal', -6, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229456, 'Vampire Casket', 'Where is your Blood?', 30000, 3000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229457, 'Electric Shock', 'Prickling electric power', 65000, 6500, 'Flag', 'UniSex', 'Normal', 0, 9, 3, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229458, 'Chief Symbol', 'Symbol of paraoh', 70000, 7000, 'Flag', 'UniSex', 'Normal', -9, 0, 0, 0, 6, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229460, '84', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229461, '85', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229462, '86', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229463, '87', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229464, '88', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229465, 'Thunder Bolt', 'Ex-item', 400000, 9999999, 'Flag', 'UniSex', 'Normal', 0, 6, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229466, 'CHILJIDO', '.', 9999999, 9999999, 'Flag', 'UniSex', 'Normal', 0, 3, 0, 3, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229467, '91', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229468, '92', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229469, '93', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229470, '94', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229471, 'PEACOCK', '.', 9999999, 9999999, 'Flag', 'UniSex', 'Normal', 6, 6, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229472, '96', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229473, '97', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229474, 'Emerald Stick', 'Magic emerald', 75000, 7500, 'Flag', 'UniSex', 'Normal', -6, 6, 0, 0, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (229475, 'Battle AXE', 'Strong war experience', 80000, 8000, 'Flag', 'UniSex', 'Normal', -3, 9, 3, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229476, 'Acrobot', 'Fun with everyone', 50000, 5000, 'Flag', 'UniSex', 'Normal', 0, 0, 3, 0, 9, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229477, 'Rudolph', 'Cousin of rudolph', 35000, 3500, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 3, 3);
INSERT INTO `avatar_table` VALUES (229478, 'Mecca Ball Sensor', 'Master of locating enemy with protection', 80000, 8000, 'Flag', 'UniSex', 'Normal', 0, 0, 6, 0, 0, 6, 0, 6);
INSERT INTO `avatar_table` VALUES (229479, 'Lightennig Hammer', 'Lighting hammer', 80000, 8000, 'Flag', 'UniSex', 'Normal', -3, 6, 0, 0, 0, 0, 0, 9);
INSERT INTO `avatar_table` VALUES (229480, 'Lamp of Good Luck', 'Blessed with good luck', 45000, 4500, 'Flag', 'UniSex', 'Normal', 0, 0, 3, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229481, 'Head of Lamb', 'Year of lamb', 40000, 4000, 'Flag', 'UniSex', 'Normal', -3, 0, 9, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229482, 'Malaysia', 'National flag of Malaysia', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229483, 'Singapore', 'National flag of Singapore', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229484, 'Indonesia', 'National flag of Indonesia', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229485, 'Thai', 'National flag of Thailand', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229486, 'Philippines', 'National flag of Philippines', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229487, 'Australia', 'National flag of Australia', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229488, 'Half-Moon Spear', 'Pierce your heart', 70000, 7000, 'Flag', 'UniSex', 'Normal', 0, 9, 0, 6, 0, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229489, 'Electric Spear', 'Powerful electric slash..', 75000, 7500, 'Flag', 'UniSex', 'Normal', 0, 6, 0, 0, 6, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (229490, 'Strawberry', 'Delicious strawberry', 35000, 3500, 'Flag', 'UniSex', 'Normal', 0, 0, 6, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229491, 'Grape', 'Funny grape party', 35000, 3500, 'Flag', 'UniSex', 'Normal', 0, 0, 3, 0, 6, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229492, 'IRAQ', 'Baghdad', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229493, 'Picnic Umbrella', 'Protection from UV', 80000, 8000, 'Flag', 'UniSex', 'Normal', 0, 0, 6, 0, 6, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (229494, 'Wedding Flower', 'I want to get married~', 150000, 15000, 'Flag', 'UniSex', 'Normal', -6, 0, 12, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229495, 'Wedding Balloon', 'Just married!!!', 150000, 15000, 'Flag', 'UniSex', 'Normal', -6, 0, 9, 0, 0, 0, 0, 9);
INSERT INTO `avatar_table` VALUES (229496, 'Water Knife', 'Cut my enemy with water!', 50000, 5000, 'Flag', 'UniSex', 'Normal', 0, 0, 9, 3, 0, 0, 3, 0);
INSERT INTO `avatar_table` VALUES (229497, 'Dragon Symbol', 'Follow the dragon!', 52000, 5200, 'Flag', 'UniSex', 'Normal', 0, 6, 6, 0, 0, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229498, 'Butterfly Wing', 'Fly to sky~!', 48000, 4800, 'Flag', 'UniSex', 'Normal', -9, 0, 0, 0, 3, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229499, 'Anchor', 'The center of gravity!', 45000, 4500, 'Flag', 'UniSex', 'Normal', 0, 6, 0, 0, 3, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (229500, 'Robot X', 'Robot ailien', 200000, 20000, 'Flag', 'UniSex', 'Normal', -6, 15, 0, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (229501, 'Cloud Stick', 'In thick cloudâ€¦', 50000, 5000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 9);
INSERT INTO `avatar_table` VALUES (229502, 'Sun Stick', 'Powerful fire', 50000, 5000, 'Flag', 'UniSex', 'Normal', 0, 0, 9, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229503, 'Moon Stick', 'Powerful coldness', 50000, 5000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (229504, 'Gold Stick', '99.9999%Gold', 70000, 7000, 'Flag', 'UniSex', 'Normal', 0, 0, 15, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229505, 'Star Stick', 'Glitters! Glitters!', 50000, 5000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (229506, 'Happy Stick', 'Happy GunBound~!!!', 65000, 6500, 'Flag', 'UniSex', 'Normal', 0, 0, 9, 0, 6, 0, 3, 0);
INSERT INTO `avatar_table` VALUES (229507, 'Magic Stick', 'Have a taste of my magic!', 65000, 6500, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 9, 0, 3);
INSERT INTO `avatar_table` VALUES (229509, 'Owl', 'The owl hoots~', 50000, 5000, 'Flag', 'UniSex', 'Normal', 0, 0, 6, 0, 3, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (229510, 'Rain Cloud', 'In the blue sky', 30000, 3000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 6);
INSERT INTO `avatar_table` VALUES (229511, 'Egg Angel', 'My egg angel', 35000, 3500, 'Flag', 'UniSex', 'Normal', 0, 0, 6, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (229512, 'Worker Bee', 'Hi~honey~~', 25000, 2500, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229513, 'Baseball Bat', 'Star player of baseball', 50000, 5000, 'Flag', 'UniSex', 'Normal', -9, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229514, 'Black Devil', 'No batman!!', 55000, 5500, 'Flag', 'UniSex', 'Normal', 0, 9, 0, 0, 6, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229515, '.', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229516, '.', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229517, '.', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229518, '.', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229519, '.', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229520, '.', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229521, '.', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229522, '.', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229523, '.', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229524, '.', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229525, '.', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229526, '.', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229527, '.', '.', 0, 0, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229528, 'Canada', 'Ottawa', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229529, 'UAE', 'Abu Dhabi', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229530, 'England', 'London', 20000, 2000, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229531, 'Israel', 'Jerusalem', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229532, 'Holland', 'Amsterdam', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229533, 'Afghanistan', 'Kabul', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229534, 'Chile', 'Santiago', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229535, 'Peru', 'Lima', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229536, 'Ox Shield', 'Firm and strong as an ox', 62000, 6200, 'Flag', 'UniSex', 'Normal', 0, 0, 0, -4, 6, 15, 0, 0);
INSERT INTO `avatar_table` VALUES (229537, 'Golden Lion', 'With the strength of a powerful lion', 172000, 17200, 'Flag', 'UniSex', 'Normal', 0, 12, 0, 12, 0, -5, 0, 0);
INSERT INTO `avatar_table` VALUES (229538, 'Shield Wheel', 'Increases the ability of the shield', 88000, 8800, 'Flag', 'UniSex', 'Normal', 0, -2, 0, 0, 0, 0, 18, 0);
INSERT INTO `avatar_table` VALUES (229539, 'Lucky', 'Happy new year~!', 9999999, 9999999, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 10, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229541, 'Conga', 'Beat of sweet African rhythm~', 72000, 7200, 'Flag', 'UniSex', 'Normal', -3, 0, 3, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229542, 'Golden Propeller', 'Speed up+shield up (gold version)', 120000, 12000, 'Flag', 'UniSex', 'Normal', -10, 0, 0, 0, 0, 0, 6, 6);
INSERT INTO `avatar_table` VALUES (229543, 'Gold Lond Dream', 'Luck deciding disk of the satellite lond ?gold?', 150000, 15000, 'Flag', 'UniSex', 'Normal', 0, 9, 9, 0, 7, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229544, 'Panda Bamboo stick', 'I like panda!  From korean avatar contest, UserID:?????', 48000, 4800, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 14, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229545, 'The Castle', 'The castle for frankenstein', 60000, 6000, 'Flag', 'UniSex', 'Normal', 0, 0, 6, 0, 0, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (229546, 'Skeleton Sword', 'The mask of the undead', 9999999, 9999999, 'Flag', 'UniSex', 'Normal', 0, 21, 0, 0, -3, 14, 0, 0);
INSERT INTO `avatar_table` VALUES (229547, 'Scythe', 'I shall take you to the land of death... ( By Seuldieu)', 82500, 8250, 'Flag', 'UniSex', 'Normal', 0, 18, -1, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229548, 'Metallic Wand', 'The metal turtle for ultimate defense (By TKeiTa)', 80000, 8000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 3, 17, 0, 0);
INSERT INTO `avatar_table` VALUES (229549, 'Rusted Rake', 'Timeless protector of loneliness (By ICHIGOcream)', 38000, 3800, 'Flag', 'UniSex', 'Normal', 0, 0, 12, 0, 3, -1, 0, 0);
INSERT INTO `avatar_table` VALUES (229550, 'Kangsi Charm', 'Powerful charm for exorcist to control Kangsi', 50000, 5000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 12, 6, 0, 0, -2);
INSERT INTO `avatar_table` VALUES (229551, 'Venezuela', 'Carcas', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229552, 'Greece', 'Athene', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229553, 'Bolivia', 'Folkloric', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229554, 'Blue Dragon', 'The governor of the water in the sky', 60000, 6000, 'Flag', 'UniSex', 'Normal', -6, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229555, 'Ifrit', 'Stronger with the strength of fire', 82500, 8250, 'Flag', 'UniSex', 'Normal', 0, 12, 0, 0, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229556, 'Shiva', 'Stronger with the strength of ice', 82500, 8250, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 9, 12, 0, 0);
INSERT INTO `avatar_table` VALUES (229557, 'Sylph', 'Faster with the strength of wind', 82500, 8250, 'Flag', 'UniSex', 'Normal', -12, 0, 0, 0, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229558, 'Undine', 'Stronger with the strength of water', 82500, 8250, 'Flag', 'UniSex', 'Normal', 0, 0, 12, 0, 9, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229559, 'Cactus', 'I can live without a drop of water~', 70000, 7000, 'Flag', 'UniSex', 'Normal', 0, 0, 6, 0, 8, 0, 6, 0);
INSERT INTO `avatar_table` VALUES (229560, 'Gold Trophy', '.', 9999990, 999999, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 18, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229561, 'Silver Trophy', '.', 9999990, 999999, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 15, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229562, 'Bronze Trophy', '.', 9999990, 999999, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 10, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229563, 'Cartoonist Pen', '.', 9999990, 999999, 'Flag', 'UniSex', 'Normal', 10, 19, -8, 0, 0, -8, 0, 0);
INSERT INTO `avatar_table` VALUES (229564, 'Guardian Angel', 'Let me be your strength', 9999990, 999999, 'Flag', 'UniSex', 'Normal', -6, 0, 13, 0, 0, 13, 0, 0);
INSERT INTO `avatar_table` VALUES (229565, 'Beast Axe', 'Axe for the Beast King', 9999990, 999999, 'Flag', 'UniSex', 'Normal', 0, 6, 0, 0, 0, 6, 0, 0);
INSERT INTO `avatar_table` VALUES (229566, 'Cyber Pet', 'The all powerful battle Pet', 9999990, 999999, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 0, 6, 0, 6);
INSERT INTO `avatar_table` VALUES (229567, 'Titan', 'Power of Earth', 82500, 8250, 'Flag', 'UniSex', 'Event', 0, 0, 7, 0, 8, 7, 0, 0);
INSERT INTO `avatar_table` VALUES (229568, 'Ramuh', 'Power of Lightning', 82500, 8250, 'Flag', 'UniSex', 'Event', 0, 7, 0, 7, 8, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229569, 'Carbuncle', 'Power of Light', 82500, 8250, 'Flag', 'UniSex', 'Event', 9, 0, 0, 0, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (229570, 'Fenrir', 'Power of Darkness', 82500, 8250, 'Flag', 'UniSex', 'Event', 0, 7, 0, 0, 8, 7, 0, 0);
INSERT INTO `avatar_table` VALUES (229571, 'Snowfall', '.', 9999990, 999999, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229572, 'Ski', 'Downslope with ski', 70000, 7000, 'Flag', 'UniSex', 'Normal', -14, 0, 0, 0, 0, 0, 0, 7);
INSERT INTO `avatar_table` VALUES (229573, 'Snowman', 'Make your own snowman this winter', 70000, 7000, 'Flag', 'UniSex', 'Normal', 0, 0, 10, 0, 2, 10, 0, 0);
INSERT INTO `avatar_table` VALUES (229574, 'Ankh Cross', 'The symbol of Life', 90000, 9000, 'Flag', 'UniSex', 'Normal', 0, 0, 12, 0, 0, 10, 0, 0);
INSERT INTO `avatar_table` VALUES (229575, '????', '???? ????? ^^', 70000, 7000, 'Flag', 'UniSex', 'Event', -5, 7, 0, 0, 4, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229576, '???', '???? ???', 20000, 2000, 'Flag', 'UniSex', 'Event', 0, 0, 0, 0, 6, 0, 0, 3);
INSERT INTO `avatar_table` VALUES (229577, 'Valentine Heart', 'Collect and gift for Valentines Day', 5000, 500, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229578, 'Needle', 'Perfect for when youâ€™re feeling sick', 50000, 5000, 'Flag', 'UniSex', 'Normal', 0, 0, 7, 0, 8, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229579, 'Enemy Observer', 'State of the art enemy tracker linked to the satellite', 80000, 8000, 'Flag', 'UniSex', 'Normal', 0, 9, 0, 0, 0, 9, 0, 0);
INSERT INTO `avatar_table` VALUES (229580, 'Gitgit', 'Filipino 3 Stringed Instrument', 6000, 600, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229581, 'Kutyapi', 'Filipino 2 Stringed Instrument', 6000, 600, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229582, 'Tangkol', 'Filipino Bamboo Instrument', 5000, 500, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229583, 'MLA', 'Manila Flag', 2000, 200, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229584, 'Davao', 'Davao Flag', 2000, 200, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229585, 'Makati', 'Makati Flag', 2000, 200, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229586, 'Cebu', 'Cebu Flag', 2000, 200, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229587, 'VAL', 'VAL Flag', 2000, 200, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229588, 'KAL', 'KAL Flag', 2000, 200, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229589, 'QC', 'QC Flag', 2000, 200, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229590, 'KKK Flag 1', 'Filipino Revolutionary Flag', 5000, 500, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229591, 'KKK Flag 2', 'Filipino Revolutionary Flag', 5000, 500, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229592, 'KKK Flag 3', 'Filipino Revolutionary Flag', 5000, 500, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229593, 'KKK Flag 4', 'Filipino Revolutionary Flag', 5000, 500, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229594, 'KKK Flag 5', 'Filipino Revolutionary Flag', 5000, 500, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229595, 'KKK Flag 6', 'Filipino Revolutionary Flag', 5000, 500, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229596, 'KKK Flag 7', 'Filipino Revolutionary Flag', 5000, 500, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229597, 'KKK Flag 8', 'Filipino Revolutionary Flag', 5000, 500, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229598, 'KKK Flag 9', 'Filipino Revolutionary Flag', 5000, 500, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229599, 'Cebuano Flag', 'For All Proud Cebuanos', 30000, 3000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229600, 'Manileno Flag', 'For All Proud Manilenos', 30000, 3000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229601, 'Davaoeno Flag', 'For All Proud Davaoenos', 30000, 3000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229602, 'ADMU Flag', 'ADMU Flag', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229603, 'ADU Flag', 'ADU Flag', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229604, 'AMA Flag', 'AMA Flag', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229605, 'CEU Flag', 'CEU Flag', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229606, 'DAP Flag', 'DAP Flag', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229607, 'DLSU Flag', 'DLSU Flag', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229608, 'FEU Flag', 'FEU Flag', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229609, 'MCU Flag', 'MCU Flag', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229610, 'NDU Flag', 'NDU Flag', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229611, 'PCU Flag', 'PCU Flag', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229612, 'PNU Flag', 'PNU Flag', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229613, 'PUP Flag', 'PUP Flag', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229614, 'PWU Flag', 'PWU Flag', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229615, 'TUP Flag', 'TUP Flag', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229616, 'UAP Flag', 'UAP Flag', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229617, 'UE Flag', 'UE Flag', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229618, 'UP Flag', 'UP Flag', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229619, 'UPH Flag', 'UPH Flag', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229620, 'UST Flag', 'UST Flag', 20000, 2000, 'Flag', 'UniSex', 'Normal', 0, 3, 3, 0, 0, 3, 0, 0);
INSERT INTO `avatar_table` VALUES (229621, 'Bat Wings', 'More power to fight your enemies', 70000, 7000, 'Flag', 'UniSex', 'Normal', 0, 10, -2, 0, 0, 10, 0, 0);
INSERT INTO `avatar_table` VALUES (229622, 'Angel Wings', 'Protects you and gives you life', 70000, 7000, 'Flag', 'UniSex', 'Normal', 0, -2, 10, 0, 0, 10, 0, 0);
INSERT INTO `avatar_table` VALUES (229623, 'Basket Hoop', 'Bball hoop for the ultimate baller', 30000, 3000, 'Flag', 'UniSex', 'Normal', 0, 0, 0, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229624, 'Boom Box', 'Hip-hop music machine', 43000, 4300, 'Flag', 'UniSex', 'Normal', 0, 0, 3, 0, 12, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (32978, 'Birthday2007', 'Avatar exclusivo-Raro', 0, 0, 'Helm', 'Male', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (98514, 'Birthday2007', 'Avatar exclusivo- Raro', 0, 0, 'Body', 'Male', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (163958, 'BirthDay2008', 'Avatar exclusivo-Raro', 0, 0, 'Glasses', 'Male', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (229745, 'BirthDay2008', 'Avatar exclusivo-Raro', 0, 0, 'Flag', 'Male', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (204801, 'PowerUser (1 mês)', 'Power user', 0, 0, 'Unisex', 'Unisex', 'Normal', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (204860, 'PostBox', 'Avatar Raro-Exclusivo', 0, 0, 'Unisex', 'Unisex', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `avatar_table` VALUES (205087, 'Admin BG', 'Avatar raro- Exclusivo', 0, 0, 'Unisex', 'Unisex', 'Event', 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for ban
-- ----------------------------
DROP TABLE IF EXISTS `ban`;
CREATE TABLE `ban`  (
  `ID` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Nickname` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT ''
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for banlog
-- ----------------------------
DROP TABLE IF EXISTS `banlog`;
CREATE TABLE `banlog`  (
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `StartTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `Duration` smallint(6) NOT NULL DEFAULT 0,
  `Reason` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Judge` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  INDEX `Id` USING BTREE(`Id`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for banreason
-- ----------------------------
DROP TABLE IF EXISTS `banreason`;
CREATE TABLE `banreason`  (
  `ID` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `MuteLog` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for buddylist
-- ----------------------------
DROP TABLE IF EXISTS `buddylist`;
CREATE TABLE `buddylist`  (
  `Id` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Category` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Buddy` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  INDEX `Id` USING BTREE(`Id`, `Buddy`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for buyinfo
-- ----------------------------
DROP TABLE IF EXISTS `buyinfo`;
CREATE TABLE `buyinfo`  (
  `SerialNo` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `MenuNo` int(16) NOT NULL DEFAULT 0,
  `Price` int(16) NOT NULL DEFAULT 0,
  `Asset` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `BuyType` int(16) NOT NULL DEFAULT 0,
  `Time` time NOT NULL DEFAULT '00:00:00'
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cash
-- ----------------------------
DROP TABLE IF EXISTS `cash`;
CREATE TABLE `cash`  (
  `ID` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `NickName` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `Cash` int(11) NULL DEFAULT NULL,
  `Coin` int(11) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`ID`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cash
-- ----------------------------
INSERT INTO `cash` VALUES ('thdung3', '0', 999999999, NULL);
INSERT INTO `cash` VALUES ('pgaming', '0', 999999999, NULL);

-- ----------------------------
-- Table structure for cashlog
-- ----------------------------
DROP TABLE IF EXISTS `cashlog`;
CREATE TABLE `cashlog`  (
  `No` int(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `NickName` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Date_Changed` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`No`, `Id`, `NickName`)
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for charge_candidate
-- ----------------------------
DROP TABLE IF EXISTS `charge_candidate`;
CREATE TABLE `charge_candidate`  (
  `Sn` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `PayPal_Mail` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Txn_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Request_Time` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `Approval_Time` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `Type` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'PayPal',
  `Merchandise` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `price` float NULL DEFAULT NULL,
  `Status` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Waiting',
  PRIMARY KEY USING BTREE (`Sn`),
  INDEX `Id` USING BTREE(`Id`, `PayPal_Mail`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for charge_history
-- ----------------------------
DROP TABLE IF EXISTS `charge_history`;
CREATE TABLE `charge_history`  (
  `Id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Fecha_de_recarga` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `Tipo_recarga` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Precio` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Mercancia` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Estado` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Desactivado',
  PRIMARY KEY USING BTREE (`Id_registro`)
) ENGINE = MyISAM AUTO_INCREMENT = 65 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for charge_status
-- ----------------------------
DROP TABLE IF EXISTS `charge_status`;
CREATE TABLE `charge_status`  (
  `Sn` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `PayPal_Mail` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Txn_ID` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Change_Time` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `Type` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'PAYPAL',
  `Merchandise` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Price` float NULL DEFAULT 0,
  `Status` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Status_ReaSon` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`Sn`),
  INDEX `Id` USING BTREE(`Id`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chest
-- ----------------------------
DROP TABLE IF EXISTS `chest`;
CREATE TABLE `chest`  (
  `No` int(10) NOT NULL AUTO_INCREMENT,
  `Item` int(11) NULL DEFAULT NULL,
  `Wearing` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `Acquisition` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `Expire` datetime NULL DEFAULT NULL,
  `Volume` int(10) NULL DEFAULT NULL,
  `PlaceOrder` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `Recovered` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `Owner` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ExpireType` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`No`)
) ENGINE = MyISAM AUTO_INCREMENT = 6992 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for clan_app
-- ----------------------------
DROP TABLE IF EXISTS `clan_app`;
CREATE TABLE `clan_app`  (
  `Id` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Clan` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Owner` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Date_A` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Description` char(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`Id`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for clan_com
-- ----------------------------
DROP TABLE IF EXISTS `clan_com`;
CREATE TABLE `clan_com`  (
  `No` int(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Clan` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `User` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Date` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Time` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Comment` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`No`, `Clan`, `User`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for coin_shop
-- ----------------------------
DROP TABLE IF EXISTS `coin_shop`;
CREATE TABLE `coin_shop`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `codigo` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `sexo` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `preco` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `estoque` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `foto` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = MyISAM AUTO_INCREMENT = 76 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection`  (
  `User` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `_255` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`User`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for columns_priv
-- ----------------------------
DROP TABLE IF EXISTS `columns_priv`;
CREATE TABLE `columns_priv`  (
  `Host` char(60) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Db` char(64) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `User` char(16) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Table_name` char(64) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Column_name` char(64) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`Host`, `Db`, `User`, `Table_name`, `Column_name`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = 'Column privileges' ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `COMID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VID` bigint(20) NOT NULL DEFAULT 0,
  `UID` bigint(20) NOT NULL DEFAULT 0,
  `commen` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `addtime` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`COMID`),
  UNIQUE INDEX `VID` USING BTREE(`VID`, `UID`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for concurrentuser
-- ----------------------------
DROP TABLE IF EXISTS `concurrentuser`;
CREATE TABLE `concurrentuser`  (
  `ServerIp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ServerPort` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UserCount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Time` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  INDEX `ServerIp` USING BTREE(`ServerIp`, `ServerPort`),
  INDEX `Time` USING BTREE(`Time`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for country_reference
-- ----------------------------
DROP TABLE IF EXISTS `country_reference`;
CREATE TABLE `country_reference`  (
  `Country_Count` int(11) NOT NULL AUTO_INCREMENT,
  `Country_Number` int(11) NOT NULL DEFAULT 0,
  `Country_Name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`Country_Count`),
  INDEX `Country_Name` USING BTREE(`Country_Name`)
) ENGINE = MyISAM AUTO_INCREMENT = 242 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for current_currentuser
-- ----------------------------
DROP TABLE IF EXISTS `current_currentuser`;
CREATE TABLE `current_currentuser`  (
  `ServerIp` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '127.0.0.1',
  `ServerPort` smallint(5) UNSIGNED NULL DEFAULT 8360,
  `UserCount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Time` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `ID` int(50) UNSIGNED NULL DEFAULT 0,
  INDEX `ServerIp` USING BTREE(`ServerIp`, `ServerPort`),
  INDEX `Time` USING BTREE(`Time`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for currentuser
-- ----------------------------
DROP TABLE IF EXISTS `currentuser`;
CREATE TABLE `currentuser`  (
  `ServerIp` int(10) NOT NULL DEFAULT 0,
  `ServerPort` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UserCount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Time` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `Context` int(10) NULL DEFAULT 0,
  `LoggingTime` datetime NULL DEFAULT NULL,
  `Id` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`Id`),
  UNIQUE INDEX `Id_2` USING BTREE(`Id`),
  INDEX `ServerIp` USING BTREE(`ServerIp`, `ServerPort`),
  INDEX `Time` USING BTREE(`Time`),
  INDEX `Id` USING BTREE(`Id`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dead_user
-- ----------------------------
DROP TABLE IF EXISTS `dead_user`;
CREATE TABLE `dead_user`  (
  `id` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `e_mail` char(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT ''
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for droplog
-- ----------------------------
DROP TABLE IF EXISTS `droplog`;
CREATE TABLE `droplog`  (
  `Id` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Dropper` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Time` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  INDEX `Id` USING BTREE(`Id`),
  INDEX `Dropper` USING BTREE(`Dropper`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for email_answer
-- ----------------------------
DROP TABLE IF EXISTS `email_answer`;
CREATE TABLE `email_answer`  (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `question` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `type` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `answer` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY USING BTREE (`no`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for eventlog
-- ----------------------------
DROP TABLE IF EXISTS `eventlog`;
CREATE TABLE `eventlog`  (
  `Id` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Code` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AcquiredScore` smallint(6) NOT NULL DEFAULT 0,
  `Time` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `ServerIp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ServerPort` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  INDEX `Id` USING BTREE(`Id`, `Code`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for fapplicationsetting
-- ----------------------------
DROP TABLE IF EXISTS `fapplicationsetting`;
CREATE TABLE `fapplicationsetting`  (
  `ApplicationId` int(11) NOT NULL DEFAULT 0,
  `BaseURL` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `NoticeUrl` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `FullDownloadUrl` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `VersionLimit` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`ApplicationId`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fetchapp
-- ----------------------------
DROP TABLE IF EXISTS `fetchapp`;
CREATE TABLE `fetchapp`  (
  `AppId` int(11) NOT NULL DEFAULT 0,
  `FileUrl` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `NoticeUrl` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `VerLimit` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`AppId`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fetchfile
-- ----------------------------
DROP TABLE IF EXISTS `fetchfile`;
CREATE TABLE `fetchfile`  (
  `AppId` int(11) NOT NULL DEFAULT 0,
  `Command` enum('M','R') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'M',
  `FileIns` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '.\\',
  `FileDir` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `FileVer` int(11) NOT NULL DEFAULT 0,
  `FileSize` int(11) NOT NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fileinfo
-- ----------------------------
DROP TABLE IF EXISTS `fileinfo`;
CREATE TABLE `fileinfo`  (
  `ApplicationId` int(11) NOT NULL DEFAULT 101,
  `Verb` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `LocalFileOrDir` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `RemoteFile` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `FileVersion` int(11) NOT NULL DEFAULT 0,
  `FileSize` int(11) NOT NULL DEFAULT 0,
  INDEX `ApplicationId` USING BTREE(`ApplicationId`),
  INDEX `FileVersion` USING BTREE(`FileVersion`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for forum_answer
-- ----------------------------
DROP TABLE IF EXISTS `forum_answer`;
CREATE TABLE `forum_answer`  (
  `question_id` int(4) NOT NULL DEFAULT 0,
  `a_id` int(4) NOT NULL DEFAULT 0,
  `a_name` varchar(65) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `a_nick` varchar(65) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `a_answer` varchar(62) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `a_datetime` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `a_grade` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `a_login` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `a_email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `a_country` int(3) NOT NULL DEFAULT 0,
  INDEX `a_id` USING BTREE(`a_id`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for forum_question
-- ----------------------------
DROP TABLE IF EXISTS `forum_question`;
CREATE TABLE `forum_question`  (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `topic` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `detail` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `login` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `email` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0000-00-00',
  `datetime` date NOT NULL DEFAULT '0001-01-01',
  `grade` int(3) NOT NULL DEFAULT 28,
  `country` int(3) NOT NULL DEFAULT 0,
  `type` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `view` int(5) NOT NULL DEFAULT 0,
  `reply` int(5) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = MyISAM AUTO_INCREMENT = 37 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game
-- ----------------------------
DROP TABLE IF EXISTS `game`;
CREATE TABLE `game`  (
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Guild` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `MemberCount` smallint(6) NOT NULL DEFAULT 0,
  `Money` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `EventScore1` int(11) NOT NULL DEFAULT 0,
  `EventScore2` int(11) NOT NULL DEFAULT 0,
  `EventScore3` int(11) NOT NULL DEFAULT 0,
  `AvatarWear` bigint(20) NOT NULL DEFAULT 0,
  `Prop1` varchar(201) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Prop2` varchar(201) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `AdminGift` smallint(6) NOT NULL DEFAULT 0,
  `TotalScore` int(11) NOT NULL DEFAULT 1000,
  `SeasonScore` int(11) NOT NULL DEFAULT 1000,
  `TotalGrade` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `SeasonGrade` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `TotalRank` int(11) NOT NULL DEFAULT 0,
  `SeasonRank` int(11) NOT NULL DEFAULT 0,
  `GuildRank` int(11) NOT NULL DEFAULT 0,
  `AccumShot` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `AccumDamage` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `StageRecords` varchar(161) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `MobileRecords` varchar(161) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `LastUpdateTime` datetime NULL DEFAULT '0001-01-01 00:00:01',
  `NoRankUpdate` tinyint(1) NOT NULL DEFAULT 0,
  `ClientData` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Country` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '28',
  `CountryGrade` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `CountryRank` int(11) NOT NULL DEFAULT 0,
  `GiftProhibitTime` datetime NULL DEFAULT '0001-01-01 00:00:01',
  `NickName` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `EventScore0` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`Id`),
  INDEX `Guild` USING BTREE(`Guild`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game
-- ----------------------------
INSERT INTO `game` VALUES ('thdung3', '', 0, 999999999, 0, 0, 0, 0, '', '', 0, 1000, 1000, '19', '19', 1, 1, 0, 0, 0, '', '', '0001-01-01 00:00:01', 0, '', '214', '19', 1, '0001-01-01 00:00:01', 'Picaso', 0);
INSERT INTO `game` VALUES ('pgaming', '', 0, 999999999, 0, 0, 0, 0, '0', '0', 0, 1000, 1000, '20', '20', 0, 0, 0, 0, 0, '0', '0', '2022-10-16 15:35:49', 0, '$', '214', '20', 0, '0001-01-01 00:00:01', 'pgaming', 0);

-- ----------------------------
-- Table structure for game_info
-- ----------------------------
DROP TABLE IF EXISTS `game_info`;
CREATE TABLE `game_info`  (
  `day` datetime NULL DEFAULT NULL,
  `avg_0` int(11) NULL DEFAULT NULL,
  `avg_1` int(11) NULL DEFAULT NULL,
  `avg_2` int(11) NULL DEFAULT NULL,
  `avg_3` int(11) NULL DEFAULT NULL,
  `avg_4` int(11) NULL DEFAULT NULL,
  `avg_5` int(11) NULL DEFAULT NULL,
  `avg_6` int(11) NULL DEFAULT NULL,
  `avg_7` int(11) NULL DEFAULT NULL,
  `avg_8` int(11) NULL DEFAULT NULL,
  `avg_9` int(11) NULL DEFAULT NULL,
  `avg_10` int(11) NULL DEFAULT NULL,
  `avg_11` int(11) NULL DEFAULT NULL,
  `avg_12` int(11) NULL DEFAULT NULL,
  `avg_13` int(11) NULL DEFAULT NULL,
  `avg_14` int(11) NULL DEFAULT NULL,
  `avg_15` int(11) NULL DEFAULT NULL,
  `avg_16` int(11) NULL DEFAULT NULL,
  `avg_17` int(11) NULL DEFAULT NULL,
  `avg_18` int(11) NULL DEFAULT NULL,
  `avg_19` int(11) NULL DEFAULT NULL,
  `avg_20` int(11) NULL DEFAULT NULL,
  `avg_21` int(11) NULL DEFAULT NULL,
  `avg_22` int(11) NULL DEFAULT NULL,
  `avg_23` int(11) NULL DEFAULT NULL,
  `max_0` int(11) NULL DEFAULT NULL,
  `max_1` int(11) NULL DEFAULT NULL,
  `max_2` int(11) NULL DEFAULT NULL,
  `max_3` int(11) NULL DEFAULT NULL,
  `max_4` int(11) NULL DEFAULT NULL,
  `max_5` int(11) NULL DEFAULT NULL,
  `max_6` int(11) NULL DEFAULT NULL,
  `max_7` int(11) NULL DEFAULT NULL,
  `max_8` int(11) NULL DEFAULT NULL,
  `max_9` int(11) NULL DEFAULT NULL,
  `max_10` int(11) NULL DEFAULT NULL,
  `max_11` int(11) NULL DEFAULT NULL,
  `max_12` int(11) NULL DEFAULT NULL,
  `max_13` int(11) NULL DEFAULT NULL,
  `max_14` int(11) NULL DEFAULT NULL,
  `max_15` int(11) NULL DEFAULT NULL,
  `max_16` int(11) NULL DEFAULT NULL,
  `max_17` int(11) NULL DEFAULT NULL,
  `max_18` int(11) NULL DEFAULT NULL,
  `max_19` int(11) NULL DEFAULT NULL,
  `max_20` int(11) NULL DEFAULT NULL,
  `max_21` int(11) NULL DEFAULT NULL,
  `max_22` int(11) NULL DEFAULT NULL,
  `max_23` int(11) NULL DEFAULT NULL,
  `new_id` int(11) NOT NULL DEFAULT 0,
  `Unique_Id` int(11) NULL DEFAULT 0,
  `nio_member` int(11) NOT NULL DEFAULT 0,
  UNIQUE INDEX `avg_13` USING BTREE(`avg_13`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for gamesnapshot
-- ----------------------------
DROP TABLE IF EXISTS `gamesnapshot`;
CREATE TABLE `gamesnapshot`  (
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Guild` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MemberCount` int(11) NULL DEFAULT NULL,
  `TotalGrade` int(11) NULL DEFAULT NULL,
  `SeasonGrade` int(11) NULL DEFAULT NULL,
  `TotalRank` int(11) NULL DEFAULT NULL,
  `SeasonRank` int(11) NULL DEFAULT NULL,
  `GuildRank` int(11) NULL DEFAULT NULL,
  `Money` int(10) NOT NULL DEFAULT 0,
  `TotalScore` int(11) NOT NULL DEFAULT 0,
  `SeasonScore` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`Id`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gameusertypes
-- ----------------------------
DROP TABLE IF EXISTS `gameusertypes`;
CREATE TABLE `gameusertypes`  (
  `id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `mask` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gift
-- ----------------------------
DROP TABLE IF EXISTS `gift`;
CREATE TABLE `gift`  (
  `SerialNo` int(11) NOT NULL AUTO_INCREMENT,
  `Receiver` char(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Sender` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Prop` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Msg` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `SentTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  PRIMARY KEY USING BTREE (`SerialNo`),
  INDEX `Receiver` USING BTREE(`Receiver`)
) ENGINE = MyISAM AUTO_INCREMENT = 229450 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for gift2
-- ----------------------------
DROP TABLE IF EXISTS `gift2`;
CREATE TABLE `gift2`  (
  `SerialNo` int(11) NOT NULL AUTO_INCREMENT,
  `Receiver` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Sender` char(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Prop` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Msg` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `SentTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  PRIMARY KEY USING BTREE (`SerialNo`),
  INDEX `Receiver` USING BTREE(`Receiver`)
) ENGINE = MyISAM AUTO_INCREMENT = 229450 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for giftitem
-- ----------------------------
DROP TABLE IF EXISTS `giftitem`;
CREATE TABLE `giftitem`  (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `Sender` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MenuId` int(11) NULL DEFAULT 0,
  `ReceiptGiftNo` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Acquisition` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Receiver` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`No`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for giftitem2
-- ----------------------------
DROP TABLE IF EXISTS `giftitem2`;
CREATE TABLE `giftitem2`  (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `Sender` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'LegacyGamers',
  `ReceiptGiftNo` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Acquisition` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'G',
  `Receiver` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `MenuId` int(11) NOT NULL DEFAULT 32895,
  PRIMARY KEY USING BTREE (`No`)
) ENGINE = MyISAM AUTO_INCREMENT = 229450 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for giftmsg
-- ----------------------------
DROP TABLE IF EXISTS `giftmsg`;
CREATE TABLE `giftmsg`  (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `MenuId` int(16) NULL DEFAULT NULL,
  `Sender` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `SentTime` timestamp NULL DEFAULT NULL,
  `Msg` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MsgType` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ExpireType` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `GiftItemNo` int(16) NULL DEFAULT NULL,
  `Receiver` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ItemId` int(16) NULL DEFAULT NULL,
  `Acquisition` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`No`)
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for giftmsg2
-- ----------------------------
DROP TABLE IF EXISTS `giftmsg2`;
CREATE TABLE `giftmsg2`  (
  `Receiver` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `ItemId` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Sender` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'LegacyGamers',
  `SentTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Msg` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `MsgType` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'G',
  `No` int(11) NOT NULL DEFAULT 0,
  `Acquisition` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'G',
  `MenuId` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '32895',
  `ExpireType` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'I',
  `GiftItemNo` int(16) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`GiftItemNo`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for grade_history
-- ----------------------------
DROP TABLE IF EXISTS `grade_history`;
CREATE TABLE `grade_history`  (
  `Id` char(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Admin` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `user` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `SeasonGrade` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TotalGrade` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CountryGrade` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Fecha` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT ''
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for gradelimit
-- ----------------------------
DROP TABLE IF EXISTS `gradelimit`;
CREATE TABLE `gradelimit`  (
  `Rank` int(11) NULL DEFAULT NULL,
  `Grade` smallint(6) NULL DEFAULT NULL,
  `Score` int(11) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for grandprix_group
-- ----------------------------
DROP TABLE IF EXISTS `grandprix_group`;
CREATE TABLE `grandprix_group`  (
  `Category` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ScoreOnCalc` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Rank` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `RankOld` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Win` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Lose` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for grandprix_personal
-- ----------------------------
DROP TABLE IF EXISTS `grandprix_personal`;
CREATE TABLE `grandprix_personal`  (
  `Score` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Rank` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `RankOld` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Win` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Lose` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ScoreOnCalc` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `User` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Category` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_temp
-- ----------------------------
DROP TABLE IF EXISTS `guild_temp`;
CREATE TABLE `guild_temp`  (
  `clan` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `NickName` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `level` int(6) NULL DEFAULT NULL,
  `guild` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`user`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guildweb
-- ----------------------------
DROP TABLE IF EXISTS `guildweb`;
CREATE TABLE `guildweb`  (
  `id_clan` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `guild` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `G_Master` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `G_Mod` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Descricao` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `Requerimento` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `WebSite` varchar(240) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `Membros` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Rank` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `posicao` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id_clan`)
) ENGINE = MyISAM AUTO_INCREMENT = 63 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gunwcuser
-- ----------------------------
DROP TABLE IF EXISTS `gunwcuser`;
CREATE TABLE `gunwcuser`  (
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `user` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Gender` smallint(2) NOT NULL DEFAULT 0,
  `NickName` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `User_Level` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Authority2` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Password` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Status` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `MuteTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `RestrictTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `Authority` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `E_Mail` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Country` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '28',
  `AuthorityBackup` int(10) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`Id`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gunwcuser
-- ----------------------------
INSERT INTO `gunwcuser` VALUES ('thdung3', 'thdung3', 0, 'Picaso', '1', '1', '12345678', '1', '0001-01-01 00:00:01', '0001-01-01 00:00:01', '1', '111@gmail.com', '214', 0);
INSERT INTO `gunwcuser` VALUES ('pgaming', 'pgaming', 0, 'pgaming', '1', '100', '123456', '1', '0001-01-01 00:00:01', '0001-01-01 00:00:01', '100', '123456@gmail.com', '214', 100);

-- ----------------------------
-- Table structure for ipblock
-- ----------------------------
DROP TABLE IF EXISTS `ipblock`;
CREATE TABLE `ipblock`  (
  `ip` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Allow` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Mask` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for iptracing
-- ----------------------------
DROP TABLE IF EXISTS `iptracing`;
CREATE TABLE `iptracing`  (
  `Score` int(16) NOT NULL DEFAULT 0,
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `Ip3` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  INDEX `Id` USING BTREE(`Id`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `No` int(11) NOT NULL DEFAULT 0,
  `Refund_C` int(11) NOT NULL DEFAULT 0,
  `Refund_G` int(11) NOT NULL DEFAULT 0,
  `Refund_T` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`No`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (98848, 0, 0, 0);
INSERT INTO `item` VALUES (98847, 0, 0, 0);
INSERT INTO `item` VALUES (98846, 0, 0, 0);
INSERT INTO `item` VALUES (98845, 0, 0, 0);
INSERT INTO `item` VALUES (98844, 0, 0, 0);
INSERT INTO `item` VALUES (98843, 0, 0, 0);
INSERT INTO `item` VALUES (98842, 0, 0, 0);
INSERT INTO `item` VALUES (98841, 0, 0, 0);
INSERT INTO `item` VALUES (98840, 0, 0, 0);
INSERT INTO `item` VALUES (98839, 0, 0, 0);
INSERT INTO `item` VALUES (98838, 0, 0, 0);
INSERT INTO `item` VALUES (98837, 0, 0, 0);
INSERT INTO `item` VALUES (98836, 0, 0, 0);
INSERT INTO `item` VALUES (98835, 0, 0, 0);
INSERT INTO `item` VALUES (98834, 0, 0, 0);
INSERT INTO `item` VALUES (98833, 0, 0, 0);
INSERT INTO `item` VALUES (98832, 0, 0, 0);
INSERT INTO `item` VALUES (98831, 0, 0, 0);
INSERT INTO `item` VALUES (98830, 0, 0, 0);
INSERT INTO `item` VALUES (98829, 0, 0, 0);
INSERT INTO `item` VALUES (98828, 0, 0, 0);
INSERT INTO `item` VALUES (98827, 0, 0, 0);
INSERT INTO `item` VALUES (98826, 0, 0, 0);
INSERT INTO `item` VALUES (98825, 0, 0, 0);
INSERT INTO `item` VALUES (98824, 0, 0, 0);
INSERT INTO `item` VALUES (98823, 0, 0, 0);
INSERT INTO `item` VALUES (98822, 0, 0, 0);
INSERT INTO `item` VALUES (98821, 0, 0, 0);
INSERT INTO `item` VALUES (98820, 0, 0, 0);
INSERT INTO `item` VALUES (98819, 0, 0, 0);
INSERT INTO `item` VALUES (98818, 0, 0, 0);
INSERT INTO `item` VALUES (98817, 0, 0, 0);
INSERT INTO `item` VALUES (98816, 0, 0, 0);
INSERT INTO `item` VALUES (98815, 0, 0, 0);
INSERT INTO `item` VALUES (98814, 0, 0, 0);
INSERT INTO `item` VALUES (98813, 0, 0, 0);
INSERT INTO `item` VALUES (98812, 0, 0, 0);
INSERT INTO `item` VALUES (98811, 0, 0, 0);
INSERT INTO `item` VALUES (98810, 0, 0, 0);
INSERT INTO `item` VALUES (98809, 0, 0, 0);
INSERT INTO `item` VALUES (98808, 0, 0, 0);
INSERT INTO `item` VALUES (98807, 0, 0, 0);
INSERT INTO `item` VALUES (98806, 0, 0, 0);
INSERT INTO `item` VALUES (98805, 0, 0, 0);
INSERT INTO `item` VALUES (98804, 0, 0, 0);
INSERT INTO `item` VALUES (98803, 0, 0, 0);
INSERT INTO `item` VALUES (98802, 0, 0, 0);
INSERT INTO `item` VALUES (98801, 0, 0, 0);
INSERT INTO `item` VALUES (98800, 0, 0, 0);
INSERT INTO `item` VALUES (98799, 0, 0, 0);
INSERT INTO `item` VALUES (98798, 0, 0, 0);
INSERT INTO `item` VALUES (98797, 0, 0, 0);
INSERT INTO `item` VALUES (98796, 0, 0, 0);
INSERT INTO `item` VALUES (98795, 0, 0, 0);
INSERT INTO `item` VALUES (98794, 0, 0, 0);
INSERT INTO `item` VALUES (98793, 0, 0, 0);
INSERT INTO `item` VALUES (98792, 0, 0, 0);
INSERT INTO `item` VALUES (98791, 0, 0, 0);
INSERT INTO `item` VALUES (98790, 0, 0, 0);
INSERT INTO `item` VALUES (98789, 0, 0, 0);
INSERT INTO `item` VALUES (98788, 0, 0, 0);
INSERT INTO `item` VALUES (98787, 0, 0, 0);
INSERT INTO `item` VALUES (98786, 0, 0, 0);
INSERT INTO `item` VALUES (98785, 0, 0, 0);
INSERT INTO `item` VALUES (98784, 0, 0, 0);
INSERT INTO `item` VALUES (98783, 0, 0, 0);
INSERT INTO `item` VALUES (98782, 0, 0, 0);
INSERT INTO `item` VALUES (98781, 0, 0, 0);
INSERT INTO `item` VALUES (98780, 0, 0, 0);
INSERT INTO `item` VALUES (98779, 0, 0, 0);
INSERT INTO `item` VALUES (98778, 0, 0, 0);
INSERT INTO `item` VALUES (98777, 0, 0, 0);
INSERT INTO `item` VALUES (98776, 0, 0, 0);
INSERT INTO `item` VALUES (98775, 0, 0, 0);
INSERT INTO `item` VALUES (98774, 0, 0, 0);
INSERT INTO `item` VALUES (98773, 0, 0, 0);
INSERT INTO `item` VALUES (98772, 0, 0, 0);
INSERT INTO `item` VALUES (98771, 180000, 180000, 180000);
INSERT INTO `item` VALUES (98770, 0, 0, 0);
INSERT INTO `item` VALUES (98769, 0, 0, 0);
INSERT INTO `item` VALUES (98768, 0, 0, 0);
INSERT INTO `item` VALUES (98767, 0, 0, 0);
INSERT INTO `item` VALUES (98766, 0, 0, 0);
INSERT INTO `item` VALUES (98765, 0, 0, 0);
INSERT INTO `item` VALUES (98764, 0, 0, 0);
INSERT INTO `item` VALUES (98763, 150000, 150000, 150000);
INSERT INTO `item` VALUES (98762, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98761, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98760, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98759, 36000, 36000, 36000);
INSERT INTO `item` VALUES (98758, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98757, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98756, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98755, 36000, 36000, 36000);
INSERT INTO `item` VALUES (98754, 30000, 30000, 30000);
INSERT INTO `item` VALUES (98753, 30000, 30000, 30000);
INSERT INTO `item` VALUES (98752, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98751, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98750, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98749, 30000, 30000, 30000);
INSERT INTO `item` VALUES (98748, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98747, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98746, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98745, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98744, 36000, 36000, 36000);
INSERT INTO `item` VALUES (98743, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98742, 30000, 30000, 30000);
INSERT INTO `item` VALUES (98741, 30000, 30000, 30000);
INSERT INTO `item` VALUES (98740, 12000, 12000, 12000);
INSERT INTO `item` VALUES (98739, 12000, 12000, 12000);
INSERT INTO `item` VALUES (98738, 12000, 12000, 12000);
INSERT INTO `item` VALUES (98737, 0, 0, 0);
INSERT INTO `item` VALUES (98736, 0, 0, 0);
INSERT INTO `item` VALUES (98735, 0, 0, 0);
INSERT INTO `item` VALUES (98734, 0, 0, 0);
INSERT INTO `item` VALUES (98733, 0, 0, 0);
INSERT INTO `item` VALUES (98732, 0, 0, 0);
INSERT INTO `item` VALUES (98731, 0, 0, 0);
INSERT INTO `item` VALUES (98730, 0, 0, 0);
INSERT INTO `item` VALUES (98729, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98728, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98727, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98726, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98725, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98724, 84000, 84000, 84000);
INSERT INTO `item` VALUES (98723, 84000, 84000, 84000);
INSERT INTO `item` VALUES (98722, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98721, 36000, 36000, 36000);
INSERT INTO `item` VALUES (98720, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98719, 84000, 84000, 84000);
INSERT INTO `item` VALUES (98718, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98717, 36000, 36000, 36000);
INSERT INTO `item` VALUES (98716, 36000, 36000, 36000);
INSERT INTO `item` VALUES (98715, 36000, 36000, 36000);
INSERT INTO `item` VALUES (98714, 120000, 120000, 120000);
INSERT INTO `item` VALUES (98713, 36000, 36000, 36000);
INSERT INTO `item` VALUES (98712, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98711, 36000, 36000, 36000);
INSERT INTO `item` VALUES (98710, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98709, 84000, 84000, 84000);
INSERT INTO `item` VALUES (98708, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98707, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98706, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98705, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98704, 0, 0, 0);
INSERT INTO `item` VALUES (98703, 84000, 84000, 84000);
INSERT INTO `item` VALUES (98702, 36000, 36000, 36000);
INSERT INTO `item` VALUES (98701, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98700, 36000, 36000, 36000);
INSERT INTO `item` VALUES (98699, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98698, 36000, 36000, 36000);
INSERT INTO `item` VALUES (98697, 84000, 84000, 84000);
INSERT INTO `item` VALUES (98696, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98695, 96000, 96000, 96000);
INSERT INTO `item` VALUES (98694, 312000, 312000, 312000);
INSERT INTO `item` VALUES (98693, 108000, 108000, 108000);
INSERT INTO `item` VALUES (98692, 108000, 108000, 108000);
INSERT INTO `item` VALUES (98691, 108000, 108000, 108000);
INSERT INTO `item` VALUES (98690, 108000, 108000, 108000);
INSERT INTO `item` VALUES (98689, 108000, 108000, 108000);
INSERT INTO `item` VALUES (98688, 108000, 108000, 108000);
INSERT INTO `item` VALUES (98687, 108000, 108000, 108000);
INSERT INTO `item` VALUES (98686, 108000, 108000, 108000);
INSERT INTO `item` VALUES (98685, 144000, 144000, 144000);
INSERT INTO `item` VALUES (98684, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98683, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98682, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98681, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98680, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98679, 36000, 36000, 36000);
INSERT INTO `item` VALUES (98678, 96000, 96000, 96000);
INSERT INTO `item` VALUES (98677, 240000, 240000, 240000);
INSERT INTO `item` VALUES (98676, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98675, 36000, 36000, 36000);
INSERT INTO `item` VALUES (98674, 150000, 150000, 150000);
INSERT INTO `item` VALUES (98673, 120000, 120000, 120000);
INSERT INTO `item` VALUES (98672, 0, 0, 0);
INSERT INTO `item` VALUES (98671, 0, 0, 0);
INSERT INTO `item` VALUES (98670, 0, 0, 0);
INSERT INTO `item` VALUES (98669, 0, 0, 0);
INSERT INTO `item` VALUES (98668, 0, 0, 0);
INSERT INTO `item` VALUES (98667, 0, 0, 0);
INSERT INTO `item` VALUES (98666, 0, 0, 0);
INSERT INTO `item` VALUES (98665, 0, 0, 0);
INSERT INTO `item` VALUES (98664, 0, 0, 0);
INSERT INTO `item` VALUES (98663, 0, 0, 0);
INSERT INTO `item` VALUES (98662, 0, 0, 0);
INSERT INTO `item` VALUES (98661, 0, 0, 0);
INSERT INTO `item` VALUES (98660, 0, 0, 0);
INSERT INTO `item` VALUES (98659, 0, 0, 0);
INSERT INTO `item` VALUES (98658, 0, 0, 0);
INSERT INTO `item` VALUES (98657, 0, 0, 0);
INSERT INTO `item` VALUES (98656, 0, 0, 0);
INSERT INTO `item` VALUES (98655, 0, 0, 0);
INSERT INTO `item` VALUES (98654, 0, 0, 0);
INSERT INTO `item` VALUES (98653, 0, 0, 0);
INSERT INTO `item` VALUES (98652, 0, 0, 0);
INSERT INTO `item` VALUES (98651, 0, 0, 0);
INSERT INTO `item` VALUES (98650, 0, 0, 0);
INSERT INTO `item` VALUES (98649, 0, 0, 0);
INSERT INTO `item` VALUES (98648, 0, 0, 0);
INSERT INTO `item` VALUES (98647, 0, 0, 0);
INSERT INTO `item` VALUES (98646, 0, 0, 0);
INSERT INTO `item` VALUES (98645, 0, 0, 0);
INSERT INTO `item` VALUES (98644, 0, 0, 0);
INSERT INTO `item` VALUES (98643, 0, 0, 0);
INSERT INTO `item` VALUES (98642, 0, 0, 0);
INSERT INTO `item` VALUES (98641, 0, 0, 0);
INSERT INTO `item` VALUES (98640, 0, 0, 0);
INSERT INTO `item` VALUES (98639, 0, 0, 0);
INSERT INTO `item` VALUES (98638, 0, 0, 0);
INSERT INTO `item` VALUES (98637, 0, 0, 0);
INSERT INTO `item` VALUES (98636, 0, 0, 0);
INSERT INTO `item` VALUES (98635, 0, 0, 0);
INSERT INTO `item` VALUES (98634, 0, 0, 0);
INSERT INTO `item` VALUES (98633, 0, 0, 0);
INSERT INTO `item` VALUES (98632, 0, 0, 0);
INSERT INTO `item` VALUES (98631, 0, 0, 0);
INSERT INTO `item` VALUES (98630, 0, 0, 0);
INSERT INTO `item` VALUES (98629, 0, 0, 0);
INSERT INTO `item` VALUES (98628, 0, 0, 0);
INSERT INTO `item` VALUES (98627, 36000, 36000, 36000);
INSERT INTO `item` VALUES (98626, 36000, 36000, 36000);
INSERT INTO `item` VALUES (98625, 36000, 36000, 36000);
INSERT INTO `item` VALUES (98624, 36000, 36000, 36000);
INSERT INTO `item` VALUES (98623, 36000, 36000, 36000);
INSERT INTO `item` VALUES (98622, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98621, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98620, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98619, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98618, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98617, 96000, 96000, 96000);
INSERT INTO `item` VALUES (98616, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98615, 36000, 36000, 36000);
INSERT INTO `item` VALUES (98614, 84000, 84000, 84000);
INSERT INTO `item` VALUES (98613, 108000, 108000, 108000);
INSERT INTO `item` VALUES (98612, 0, 0, 0);
INSERT INTO `item` VALUES (98611, 0, 0, 0);
INSERT INTO `item` VALUES (98610, 0, 0, 0);
INSERT INTO `item` VALUES (98609, 0, 0, 0);
INSERT INTO `item` VALUES (98608, 0, 0, 0);
INSERT INTO `item` VALUES (98607, 0, 0, 0);
INSERT INTO `item` VALUES (98606, 0, 0, 0);
INSERT INTO `item` VALUES (98605, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98604, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98603, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98602, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98601, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98600, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98599, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98598, 0, 0, 0);
INSERT INTO `item` VALUES (98597, 0, 0, 0);
INSERT INTO `item` VALUES (98596, 0, 0, 0);
INSERT INTO `item` VALUES (98595, 0, 0, 0);
INSERT INTO `item` VALUES (98594, 0, 0, 0);
INSERT INTO `item` VALUES (98593, 0, 0, 0);
INSERT INTO `item` VALUES (98592, 0, 0, 0);
INSERT INTO `item` VALUES (98591, 0, 0, 0);
INSERT INTO `item` VALUES (98590, 0, 0, 0);
INSERT INTO `item` VALUES (98589, 0, 0, 0);
INSERT INTO `item` VALUES (98588, 0, 0, 0);
INSERT INTO `item` VALUES (98587, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98586, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98585, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98584, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98583, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98582, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98581, 108000, 108000, 108000);
INSERT INTO `item` VALUES (98580, 90000, 90000, 90000);
INSERT INTO `item` VALUES (98579, 6000, 6000, 6000);
INSERT INTO `item` VALUES (98578, 480000, 480000, 480000);
INSERT INTO `item` VALUES (98577, 240000, 240000, 240000);
INSERT INTO `item` VALUES (98576, 30000, 30000, 30000);
INSERT INTO `item` VALUES (98575, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98574, 108000, 108000, 108000);
INSERT INTO `item` VALUES (98573, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98572, 30000, 30000, 30000);
INSERT INTO `item` VALUES (98571, 132000, 132000, 132000);
INSERT INTO `item` VALUES (98570, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98569, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98568, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98567, 108000, 108000, 108000);
INSERT INTO `item` VALUES (98566, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98565, 0, 0, 0);
INSERT INTO `item` VALUES (98564, 480000, 480000, 480000);
INSERT INTO `item` VALUES (98563, 480000, 480000, 480000);
INSERT INTO `item` VALUES (98562, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98561, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98560, 7200, 7200, 7200);
INSERT INTO `item` VALUES (98559, 0, 0, 0);
INSERT INTO `item` VALUES (98558, 0, 0, 0);
INSERT INTO `item` VALUES (98557, 90000, 90000, 90000);
INSERT INTO `item` VALUES (98556, 90000, 90000, 90000);
INSERT INTO `item` VALUES (98555, 90000, 90000, 90000);
INSERT INTO `item` VALUES (98554, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98553, 90000, 90000, 90000);
INSERT INTO `item` VALUES (98552, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98551, 90000, 90000, 90000);
INSERT INTO `item` VALUES (98550, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98549, 30000, 30000, 30000);
INSERT INTO `item` VALUES (98548, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98547, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98546, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98545, 90000, 90000, 90000);
INSERT INTO `item` VALUES (98544, 90000, 90000, 90000);
INSERT INTO `item` VALUES (98543, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98542, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98541, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98540, 0, 0, 0);
INSERT INTO `item` VALUES (98539, 0, 0, 0);
INSERT INTO `item` VALUES (98538, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98537, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98536, 300000, 300000, 300000);
INSERT INTO `item` VALUES (98535, 180000, 180000, 180000);
INSERT INTO `item` VALUES (98534, 0, 0, 0);
INSERT INTO `item` VALUES (98533, 720000, 720000, 720000);
INSERT INTO `item` VALUES (98532, 720000, 720000, 720000);
INSERT INTO `item` VALUES (98531, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98530, 0, 0, 0);
INSERT INTO `item` VALUES (98529, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98528, 0, 0, 0);
INSERT INTO `item` VALUES (98527, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98526, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98525, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98524, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98523, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98522, 240000, 240000, 240000);
INSERT INTO `item` VALUES (98521, 108000, 108000, 108000);
INSERT INTO `item` VALUES (98520, 30000, 30000, 30000);
INSERT INTO `item` VALUES (98519, 30000, 30000, 30000);
INSERT INTO `item` VALUES (98518, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98517, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98516, 0, 0, 0);
INSERT INTO `item` VALUES (98515, 0, 0, 0);
INSERT INTO `item` VALUES (98514, 0, 0, 0);
INSERT INTO `item` VALUES (98513, 90000, 90000, 90000);
INSERT INTO `item` VALUES (98512, 120000, 120000, 120000);
INSERT INTO `item` VALUES (98511, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98510, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98509, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98508, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98507, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98506, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98505, 210000, 210000, 210000);
INSERT INTO `item` VALUES (98504, 30000, 30000, 30000);
INSERT INTO `item` VALUES (98503, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98502, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98501, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98500, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98499, 0, 0, 0);
INSERT INTO `item` VALUES (98498, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98497, 90000, 90000, 90000);
INSERT INTO `item` VALUES (98496, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98495, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98494, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98493, 108000, 108000, 108000);
INSERT INTO `item` VALUES (98492, 108000, 108000, 108000);
INSERT INTO `item` VALUES (98491, 0, 0, 0);
INSERT INTO `item` VALUES (98490, 132000, 132000, 132000);
INSERT INTO `item` VALUES (98489, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98488, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98487, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98486, 0, 0, 0);
INSERT INTO `item` VALUES (98485, 0, 0, 0);
INSERT INTO `item` VALUES (98484, 0, 0, 0);
INSERT INTO `item` VALUES (98483, 0, 0, 0);
INSERT INTO `item` VALUES (98482, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98481, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98480, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98479, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98478, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98477, 0, 0, 0);
INSERT INTO `item` VALUES (98476, 108000, 108000, 108000);
INSERT INTO `item` VALUES (98475, 108000, 108000, 108000);
INSERT INTO `item` VALUES (98474, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98473, 132000, 132000, 132000);
INSERT INTO `item` VALUES (98472, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98471, 30000, 30000, 30000);
INSERT INTO `item` VALUES (98470, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98469, 270000, 270000, 270000);
INSERT INTO `item` VALUES (98468, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98467, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98466, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98465, 270000, 270000, 270000);
INSERT INTO `item` VALUES (98464, 0, 0, 0);
INSERT INTO `item` VALUES (98463, 0, 0, 0);
INSERT INTO `item` VALUES (98462, 0, 0, 0);
INSERT INTO `item` VALUES (98461, 0, 0, 0);
INSERT INTO `item` VALUES (98460, 0, 0, 0);
INSERT INTO `item` VALUES (98459, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98458, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98457, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98456, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98455, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98454, 78000, 78000, 78000);
INSERT INTO `item` VALUES (98453, 0, 0, 0);
INSERT INTO `item` VALUES (98452, 0, 0, 0);
INSERT INTO `item` VALUES (98451, 0, 0, 0);
INSERT INTO `item` VALUES (98450, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98449, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98448, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98447, 66000, 66000, 66000);
INSERT INTO `item` VALUES (98446, 66000, 66000, 66000);
INSERT INTO `item` VALUES (98445, 0, 0, 0);
INSERT INTO `item` VALUES (98444, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98443, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98442, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98441, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98440, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98439, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98438, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98437, 108000, 108000, 108000);
INSERT INTO `item` VALUES (98436, 66000, 66000, 66000);
INSERT INTO `item` VALUES (98435, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98434, 78000, 78000, 78000);
INSERT INTO `item` VALUES (98433, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98432, 0, 0, 0);
INSERT INTO `item` VALUES (98431, 0, 0, 0);
INSERT INTO `item` VALUES (98430, 0, 0, 0);
INSERT INTO `item` VALUES (98429, 132000, 132000, 132000);
INSERT INTO `item` VALUES (98428, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98427, 78000, 78000, 78000);
INSERT INTO `item` VALUES (98426, 132000, 132000, 132000);
INSERT INTO `item` VALUES (98425, 0, 0, 0);
INSERT INTO `item` VALUES (98424, 108000, 108000, 108000);
INSERT INTO `item` VALUES (98423, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98422, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98421, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98420, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98419, 108000, 108000, 108000);
INSERT INTO `item` VALUES (98418, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98417, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98416, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98415, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98414, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98413, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98412, 0, 0, 0);
INSERT INTO `item` VALUES (98411, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98410, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98409, 57000, 57000, 57000);
INSERT INTO `item` VALUES (98408, 54000, 54000, 54000);
INSERT INTO `item` VALUES (98407, 0, 0, 0);
INSERT INTO `item` VALUES (98406, 0, 0, 0);
INSERT INTO `item` VALUES (98405, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98404, 54000, 54000, 54000);
INSERT INTO `item` VALUES (98403, 0, 0, 0);
INSERT INTO `item` VALUES (98402, 57000, 57000, 57000);
INSERT INTO `item` VALUES (98401, 57000, 57000, 57000);
INSERT INTO `item` VALUES (98400, 132000, 132000, 132000);
INSERT INTO `item` VALUES (98399, 132000, 132000, 132000);
INSERT INTO `item` VALUES (98398, 81000, 81000, 81000);
INSERT INTO `item` VALUES (98397, 78000, 78000, 78000);
INSERT INTO `item` VALUES (98396, 132000, 132000, 132000);
INSERT INTO `item` VALUES (98395, 0, 0, 0);
INSERT INTO `item` VALUES (98394, 180000, 180000, 180000);
INSERT INTO `item` VALUES (98393, 66000, 66000, 66000);
INSERT INTO `item` VALUES (98392, 90000, 90000, 90000);
INSERT INTO `item` VALUES (98391, 59400, 59400, 59400);
INSERT INTO `item` VALUES (98390, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98389, 66000, 66000, 66000);
INSERT INTO `item` VALUES (98388, 0, 0, 0);
INSERT INTO `item` VALUES (98387, 0, 0, 0);
INSERT INTO `item` VALUES (98386, 0, 0, 0);
INSERT INTO `item` VALUES (98385, 72000, 72000, 72000);
INSERT INTO `item` VALUES (98384, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98383, 57000, 57000, 57000);
INSERT INTO `item` VALUES (98382, 48000, 48000, 48000);
INSERT INTO `item` VALUES (98381, 111000, 111000, 111000);
INSERT INTO `item` VALUES (98380, 42000, 42000, 42000);
INSERT INTO `item` VALUES (98379, 57000, 57000, 57000);
INSERT INTO `item` VALUES (98378, 66000, 66000, 66000);
INSERT INTO `item` VALUES (98377, 0, 0, 0);
INSERT INTO `item` VALUES (98376, 117000, 117000, 117000);
INSERT INTO `item` VALUES (98375, 192000, 192000, 192000);
INSERT INTO `item` VALUES (98374, 54000, 54000, 54000);
INSERT INTO `item` VALUES (98373, 79200, 79200, 79200);
INSERT INTO `item` VALUES (98372, 79200, 79200, 79200);
INSERT INTO `item` VALUES (98371, 51000, 51000, 51000);
INSERT INTO `item` VALUES (98370, 60000, 60000, 60000);
INSERT INTO `item` VALUES (98369, 55200, 55200, 55200);
INSERT INTO `item` VALUES (98368, 40800, 40800, 40800);
INSERT INTO `item` VALUES (98367, 32400, 32400, 32400);
INSERT INTO `item` VALUES (98366, 32400, 32400, 32400);
INSERT INTO `item` VALUES (98365, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98364, 30000, 30000, 30000);
INSERT INTO `item` VALUES (98363, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98362, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98361, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98360, 28800, 28800, 28800);
INSERT INTO `item` VALUES (98359, 210000, 210000, 210000);
INSERT INTO `item` VALUES (98358, 21000, 21000, 21000);
INSERT INTO `item` VALUES (98357, 30000, 30000, 30000);
INSERT INTO `item` VALUES (98356, 30000, 30000, 30000);
INSERT INTO `item` VALUES (98355, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98354, 0, 0, 0);
INSERT INTO `item` VALUES (98353, 57000, 57000, 57000);
INSERT INTO `item` VALUES (98352, 21000, 21000, 21000);
INSERT INTO `item` VALUES (98351, 27600, 27600, 27600);
INSERT INTO `item` VALUES (98350, 18000, 18000, 18000);
INSERT INTO `item` VALUES (98349, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98348, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98347, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98346, 18000, 18000, 18000);
INSERT INTO `item` VALUES (98345, 210000, 210000, 210000);
INSERT INTO `item` VALUES (98344, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98343, 9000, 9000, 9000);
INSERT INTO `item` VALUES (98342, 0, 0, 0);
INSERT INTO `item` VALUES (98341, 0, 0, 0);
INSERT INTO `item` VALUES (98340, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98339, 27000, 27000, 27000);
INSERT INTO `item` VALUES (98338, 18000, 18000, 18000);
INSERT INTO `item` VALUES (98337, 28800, 28800, 28800);
INSERT INTO `item` VALUES (98336, 21000, 21000, 21000);
INSERT INTO `item` VALUES (98335, 18000, 18000, 18000);
INSERT INTO `item` VALUES (98334, 27000, 27000, 27000);
INSERT INTO `item` VALUES (98333, 150000, 150000, 150000);
INSERT INTO `item` VALUES (98332, 15000, 15000, 15000);
INSERT INTO `item` VALUES (98331, 15000, 15000, 15000);
INSERT INTO `item` VALUES (98330, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98329, 120000, 120000, 120000);
INSERT INTO `item` VALUES (98328, 18000, 18000, 18000);
INSERT INTO `item` VALUES (98327, 18000, 18000, 18000);
INSERT INTO `item` VALUES (98326, 18000, 18000, 18000);
INSERT INTO `item` VALUES (98325, 21000, 21000, 21000);
INSERT INTO `item` VALUES (98324, 0, 0, 0);
INSERT INTO `item` VALUES (98323, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98322, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98321, 18000, 18000, 18000);
INSERT INTO `item` VALUES (98320, 15000, 15000, 15000);
INSERT INTO `item` VALUES (98319, 7200, 7200, 7200);
INSERT INTO `item` VALUES (98318, 120000, 120000, 120000);
INSERT INTO `item` VALUES (98317, 18000, 18000, 18000);
INSERT INTO `item` VALUES (98316, 18000, 18000, 18000);
INSERT INTO `item` VALUES (98315, 18000, 18000, 18000);
INSERT INTO `item` VALUES (98314, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98313, 7200, 7200, 7200);
INSERT INTO `item` VALUES (98312, 27000, 27000, 27000);
INSERT INTO `item` VALUES (98311, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98310, 15000, 15000, 15000);
INSERT INTO `item` VALUES (98309, 24000, 24000, 24000);
INSERT INTO `item` VALUES (98308, 12000, 12000, 12000);
INSERT INTO `item` VALUES (98307, 7200, 7200, 7200);
INSERT INTO `item` VALUES (98306, 9000, 9000, 9000);
INSERT INTO `item` VALUES (98305, 7200, 7200, 7200);
INSERT INTO `item` VALUES (98304, 0, 0, 0);
INSERT INTO `item` VALUES (33313, 0, 0, 0);
INSERT INTO `item` VALUES (33312, 0, 0, 0);
INSERT INTO `item` VALUES (33311, 0, 0, 0);
INSERT INTO `item` VALUES (33310, 0, 0, 0);
INSERT INTO `item` VALUES (33309, 0, 0, 0);
INSERT INTO `item` VALUES (33308, 0, 0, 0);
INSERT INTO `item` VALUES (33307, 0, 0, 0);
INSERT INTO `item` VALUES (33306, 0, 0, 0);
INSERT INTO `item` VALUES (33305, 0, 0, 0);
INSERT INTO `item` VALUES (33304, 0, 0, 0);
INSERT INTO `item` VALUES (33302, 0, 0, 0);
INSERT INTO `item` VALUES (33301, 0, 0, 0);
INSERT INTO `item` VALUES (33300, 0, 0, 0);
INSERT INTO `item` VALUES (33299, 0, 0, 0);
INSERT INTO `item` VALUES (33298, 0, 0, 0);
INSERT INTO `item` VALUES (33297, 0, 0, 0);
INSERT INTO `item` VALUES (33296, 0, 0, 0);
INSERT INTO `item` VALUES (33295, 0, 0, 0);
INSERT INTO `item` VALUES (33294, 0, 0, 0);
INSERT INTO `item` VALUES (33293, 0, 0, 0);
INSERT INTO `item` VALUES (33292, 0, 0, 0);
INSERT INTO `item` VALUES (33291, 0, 0, 0);
INSERT INTO `item` VALUES (33290, 0, 0, 0);
INSERT INTO `item` VALUES (33289, 0, 0, 0);
INSERT INTO `item` VALUES (33288, 0, 0, 0);
INSERT INTO `item` VALUES (33287, 0, 0, 0);
INSERT INTO `item` VALUES (33286, 0, 0, 0);
INSERT INTO `item` VALUES (33285, 0, 0, 0);
INSERT INTO `item` VALUES (33284, 0, 0, 0);
INSERT INTO `item` VALUES (33283, 0, 0, 0);
INSERT INTO `item` VALUES (33282, 0, 0, 0);
INSERT INTO `item` VALUES (33281, 0, 0, 0);
INSERT INTO `item` VALUES (33280, 0, 0, 0);
INSERT INTO `item` VALUES (33279, 0, 0, 0);
INSERT INTO `item` VALUES (33278, 0, 0, 0);
INSERT INTO `item` VALUES (33277, 0, 0, 0);
INSERT INTO `item` VALUES (33276, 0, 0, 0);
INSERT INTO `item` VALUES (33275, 0, 0, 0);
INSERT INTO `item` VALUES (33274, 0, 0, 0);
INSERT INTO `item` VALUES (33273, 0, 0, 0);
INSERT INTO `item` VALUES (33272, 0, 0, 0);
INSERT INTO `item` VALUES (33271, 0, 0, 0);
INSERT INTO `item` VALUES (33270, 0, 0, 0);
INSERT INTO `item` VALUES (33269, 0, 0, 0);
INSERT INTO `item` VALUES (33268, 0, 0, 0);
INSERT INTO `item` VALUES (33267, 0, 0, 0);
INSERT INTO `item` VALUES (33266, 0, 0, 0);
INSERT INTO `item` VALUES (33265, 0, 0, 0);
INSERT INTO `item` VALUES (33264, 0, 0, 0);
INSERT INTO `item` VALUES (33263, 0, 0, 0);
INSERT INTO `item` VALUES (33262, 0, 0, 0);
INSERT INTO `item` VALUES (33261, 0, 0, 0);
INSERT INTO `item` VALUES (33260, 0, 0, 0);
INSERT INTO `item` VALUES (33259, 0, 0, 0);
INSERT INTO `item` VALUES (33258, 0, 0, 0);
INSERT INTO `item` VALUES (33257, 0, 0, 0);
INSERT INTO `item` VALUES (33256, 0, 0, 0);
INSERT INTO `item` VALUES (33255, 0, 0, 0);
INSERT INTO `item` VALUES (33254, 0, 0, 0);
INSERT INTO `item` VALUES (33253, 0, 0, 0);
INSERT INTO `item` VALUES (33252, 0, 0, 0);
INSERT INTO `item` VALUES (33251, 0, 0, 0);
INSERT INTO `item` VALUES (33250, 0, 0, 0);
INSERT INTO `item` VALUES (33249, 0, 0, 0);
INSERT INTO `item` VALUES (33248, 0, 0, 0);
INSERT INTO `item` VALUES (33247, 0, 0, 0);
INSERT INTO `item` VALUES (33246, 0, 0, 0);
INSERT INTO `item` VALUES (33245, 0, 0, 0);
INSERT INTO `item` VALUES (33244, 0, 0, 0);
INSERT INTO `item` VALUES (33243, 0, 0, 0);
INSERT INTO `item` VALUES (33242, 0, 0, 0);
INSERT INTO `item` VALUES (33241, 0, 0, 0);
INSERT INTO `item` VALUES (33240, 0, 0, 0);
INSERT INTO `item` VALUES (33239, 0, 0, 0);
INSERT INTO `item` VALUES (33238, 0, 0, 0);
INSERT INTO `item` VALUES (33237, 0, 0, 0);
INSERT INTO `item` VALUES (33236, 0, 0, 0);
INSERT INTO `item` VALUES (33235, 180000, 180000, 180000);
INSERT INTO `item` VALUES (33234, 0, 0, 0);
INSERT INTO `item` VALUES (33233, 0, 0, 0);
INSERT INTO `item` VALUES (33232, 0, 0, 0);
INSERT INTO `item` VALUES (33231, 0, 0, 0);
INSERT INTO `item` VALUES (33230, 0, 0, 0);
INSERT INTO `item` VALUES (33229, 0, 0, 0);
INSERT INTO `item` VALUES (33228, 0, 0, 0);
INSERT INTO `item` VALUES (33227, 150000, 150000, 150000);
INSERT INTO `item` VALUES (33226, 42000, 42000, 42000);
INSERT INTO `item` VALUES (33225, 42000, 42000, 42000);
INSERT INTO `item` VALUES (33224, 60000, 60000, 60000);
INSERT INTO `item` VALUES (33223, 24000, 24000, 24000);
INSERT INTO `item` VALUES (33222, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33221, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33220, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33219, 12000, 12000, 12000);
INSERT INTO `item` VALUES (33218, 42000, 42000, 42000);
INSERT INTO `item` VALUES (33217, 42000, 42000, 42000);
INSERT INTO `item` VALUES (33216, 42000, 42000, 42000);
INSERT INTO `item` VALUES (33215, 72000, 72000, 72000);
INSERT INTO `item` VALUES (33214, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33213, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33212, 24000, 24000, 24000);
INSERT INTO `item` VALUES (33211, 72000, 72000, 72000);
INSERT INTO `item` VALUES (33210, 30000, 30000, 30000);
INSERT INTO `item` VALUES (33209, 30000, 30000, 30000);
INSERT INTO `item` VALUES (33208, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33207, 42000, 42000, 42000);
INSERT INTO `item` VALUES (33206, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33205, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33204, 24000, 24000, 24000);
INSERT INTO `item` VALUES (33203, 24000, 24000, 24000);
INSERT INTO `item` VALUES (33202, 24000, 24000, 24000);
INSERT INTO `item` VALUES (33201, 0, 0, 0);
INSERT INTO `item` VALUES (33200, 0, 0, 0);
INSERT INTO `item` VALUES (33199, 0, 0, 0);
INSERT INTO `item` VALUES (33198, 0, 0, 0);
INSERT INTO `item` VALUES (33197, 0, 0, 0);
INSERT INTO `item` VALUES (33196, 0, 0, 0);
INSERT INTO `item` VALUES (33195, 0, 0, 0);
INSERT INTO `item` VALUES (33194, 0, 0, 0);
INSERT INTO `item` VALUES (33193, 42000, 42000, 42000);
INSERT INTO `item` VALUES (33192, 24000, 24000, 24000);
INSERT INTO `item` VALUES (33191, 42000, 42000, 42000);
INSERT INTO `item` VALUES (33190, 60000, 60000, 60000);
INSERT INTO `item` VALUES (33189, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33188, 120000, 120000, 120000);
INSERT INTO `item` VALUES (33187, 120000, 120000, 120000);
INSERT INTO `item` VALUES (33186, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33185, 42000, 42000, 42000);
INSERT INTO `item` VALUES (33184, 84000, 84000, 84000);
INSERT INTO `item` VALUES (33183, 72000, 72000, 72000);
INSERT INTO `item` VALUES (33182, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33181, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33180, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33179, 120000, 120000, 120000);
INSERT INTO `item` VALUES (33178, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33177, 42000, 42000, 42000);
INSERT INTO `item` VALUES (33176, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33175, 42000, 42000, 42000);
INSERT INTO `item` VALUES (33174, 84000, 84000, 84000);
INSERT INTO `item` VALUES (33173, 72000, 72000, 72000);
INSERT INTO `item` VALUES (33172, 42000, 42000, 42000);
INSERT INTO `item` VALUES (33171, 42000, 42000, 42000);
INSERT INTO `item` VALUES (33170, 42000, 42000, 42000);
INSERT INTO `item` VALUES (33169, 0, 0, 0);
INSERT INTO `item` VALUES (33168, 0, 0, 0);
INSERT INTO `item` VALUES (33167, 84000, 84000, 84000);
INSERT INTO `item` VALUES (33166, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33165, 42000, 42000, 42000);
INSERT INTO `item` VALUES (33164, 72000, 72000, 72000);
INSERT INTO `item` VALUES (33163, 72000, 72000, 72000);
INSERT INTO `item` VALUES (33162, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33161, 84000, 84000, 84000);
INSERT INTO `item` VALUES (33160, 42000, 42000, 42000);
INSERT INTO `item` VALUES (33159, 96000, 96000, 96000);
INSERT INTO `item` VALUES (33158, 312000, 312000, 312000);
INSERT INTO `item` VALUES (33157, 108000, 108000, 108000);
INSERT INTO `item` VALUES (33156, 108000, 108000, 108000);
INSERT INTO `item` VALUES (33155, 108000, 108000, 108000);
INSERT INTO `item` VALUES (33154, 108000, 108000, 108000);
INSERT INTO `item` VALUES (33153, 108000, 108000, 108000);
INSERT INTO `item` VALUES (33152, 108000, 108000, 108000);
INSERT INTO `item` VALUES (33151, 108000, 108000, 108000);
INSERT INTO `item` VALUES (33150, 108000, 108000, 108000);
INSERT INTO `item` VALUES (33149, 144000, 144000, 144000);
INSERT INTO `item` VALUES (33148, 42000, 42000, 42000);
INSERT INTO `item` VALUES (33147, 42000, 42000, 42000);
INSERT INTO `item` VALUES (33146, 42000, 42000, 42000);
INSERT INTO `item` VALUES (33145, 42000, 42000, 42000);
INSERT INTO `item` VALUES (33144, 72000, 72000, 72000);
INSERT INTO `item` VALUES (33143, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33142, 96000, 96000, 96000);
INSERT INTO `item` VALUES (33141, 240000, 240000, 240000);
INSERT INTO `item` VALUES (33140, 72000, 72000, 72000);
INSERT INTO `item` VALUES (33139, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33138, 150000, 150000, 150000);
INSERT INTO `item` VALUES (33137, 120000, 120000, 120000);
INSERT INTO `item` VALUES (33136, 0, 0, 0);
INSERT INTO `item` VALUES (33135, 0, 0, 0);
INSERT INTO `item` VALUES (33134, 0, 0, 0);
INSERT INTO `item` VALUES (33133, 0, 0, 0);
INSERT INTO `item` VALUES (33132, 0, 0, 0);
INSERT INTO `item` VALUES (33131, 0, 0, 0);
INSERT INTO `item` VALUES (33130, 0, 0, 0);
INSERT INTO `item` VALUES (33129, 0, 0, 0);
INSERT INTO `item` VALUES (33128, 0, 0, 0);
INSERT INTO `item` VALUES (33127, 0, 0, 0);
INSERT INTO `item` VALUES (33126, 0, 0, 0);
INSERT INTO `item` VALUES (33125, 0, 0, 0);
INSERT INTO `item` VALUES (33124, 0, 0, 0);
INSERT INTO `item` VALUES (33123, 0, 0, 0);
INSERT INTO `item` VALUES (33122, 0, 0, 0);
INSERT INTO `item` VALUES (33121, 0, 0, 0);
INSERT INTO `item` VALUES (33120, 0, 0, 0);
INSERT INTO `item` VALUES (33119, 0, 0, 0);
INSERT INTO `item` VALUES (33118, 0, 0, 0);
INSERT INTO `item` VALUES (33117, 0, 0, 0);
INSERT INTO `item` VALUES (33116, 0, 0, 0);
INSERT INTO `item` VALUES (33115, 0, 0, 0);
INSERT INTO `item` VALUES (33114, 0, 0, 0);
INSERT INTO `item` VALUES (33113, 0, 0, 0);
INSERT INTO `item` VALUES (33112, 0, 0, 0);
INSERT INTO `item` VALUES (33111, 0, 0, 0);
INSERT INTO `item` VALUES (33110, 0, 0, 0);
INSERT INTO `item` VALUES (33109, 0, 0, 0);
INSERT INTO `item` VALUES (33108, 0, 0, 0);
INSERT INTO `item` VALUES (33107, 0, 0, 0);
INSERT INTO `item` VALUES (33106, 0, 0, 0);
INSERT INTO `item` VALUES (33105, 0, 0, 0);
INSERT INTO `item` VALUES (33104, 0, 0, 0);
INSERT INTO `item` VALUES (33103, 0, 0, 0);
INSERT INTO `item` VALUES (33102, 0, 0, 0);
INSERT INTO `item` VALUES (33101, 0, 0, 0);
INSERT INTO `item` VALUES (33100, 0, 0, 0);
INSERT INTO `item` VALUES (33099, 0, 0, 0);
INSERT INTO `item` VALUES (33098, 0, 0, 0);
INSERT INTO `item` VALUES (33097, 0, 0, 0);
INSERT INTO `item` VALUES (33096, 0, 0, 0);
INSERT INTO `item` VALUES (33095, 0, 0, 0);
INSERT INTO `item` VALUES (33094, 0, 0, 0);
INSERT INTO `item` VALUES (33093, 0, 0, 0);
INSERT INTO `item` VALUES (33092, 0, 0, 0);
INSERT INTO `item` VALUES (33091, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33090, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33089, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33088, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33087, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33086, 72000, 72000, 72000);
INSERT INTO `item` VALUES (33085, 24000, 24000, 24000);
INSERT INTO `item` VALUES (33084, 60000, 60000, 60000);
INSERT INTO `item` VALUES (33083, 60000, 60000, 60000);
INSERT INTO `item` VALUES (33082, 72000, 72000, 72000);
INSERT INTO `item` VALUES (33081, 96000, 96000, 96000);
INSERT INTO `item` VALUES (33080, 48000, 48000, 48000);
INSERT INTO `item` VALUES (33079, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33078, 84000, 84000, 84000);
INSERT INTO `item` VALUES (33077, 108000, 108000, 108000);
INSERT INTO `item` VALUES (33076, 0, 0, 0);
INSERT INTO `item` VALUES (33075, 0, 0, 0);
INSERT INTO `item` VALUES (33074, 0, 0, 0);
INSERT INTO `item` VALUES (33073, 0, 0, 0);
INSERT INTO `item` VALUES (33072, 0, 0, 0);
INSERT INTO `item` VALUES (33071, 0, 0, 0);
INSERT INTO `item` VALUES (33070, 0, 0, 0);
INSERT INTO `item` VALUES (33069, 48000, 48000, 48000);
INSERT INTO `item` VALUES (33068, 48000, 48000, 48000);
INSERT INTO `item` VALUES (33067, 48000, 48000, 48000);
INSERT INTO `item` VALUES (33066, 48000, 48000, 48000);
INSERT INTO `item` VALUES (33065, 60000, 60000, 60000);
INSERT INTO `item` VALUES (33064, 60000, 60000, 60000);
INSERT INTO `item` VALUES (33063, 72000, 72000, 72000);
INSERT INTO `item` VALUES (33062, 0, 0, 0);
INSERT INTO `item` VALUES (33061, 0, 0, 0);
INSERT INTO `item` VALUES (33060, 0, 0, 0);
INSERT INTO `item` VALUES (33059, 0, 0, 0);
INSERT INTO `item` VALUES (33058, 0, 0, 0);
INSERT INTO `item` VALUES (33057, 0, 0, 0);
INSERT INTO `item` VALUES (33056, 0, 0, 0);
INSERT INTO `item` VALUES (33055, 0, 0, 0);
INSERT INTO `item` VALUES (33054, 0, 0, 0);
INSERT INTO `item` VALUES (33053, 0, 0, 0);
INSERT INTO `item` VALUES (33052, 0, 0, 0);
INSERT INTO `item` VALUES (33051, 60000, 60000, 60000);
INSERT INTO `item` VALUES (33050, 72000, 72000, 72000);
INSERT INTO `item` VALUES (33049, 60000, 60000, 60000);
INSERT INTO `item` VALUES (33048, 48000, 48000, 48000);
INSERT INTO `item` VALUES (33047, 72000, 72000, 72000);
INSERT INTO `item` VALUES (33046, 72000, 72000, 72000);
INSERT INTO `item` VALUES (33045, 108000, 108000, 108000);
INSERT INTO `item` VALUES (33044, 90000, 90000, 90000);
INSERT INTO `item` VALUES (33043, 0, 0, 0);
INSERT INTO `item` VALUES (33042, 150000, 150000, 150000);
INSERT INTO `item` VALUES (33041, 90000, 90000, 90000);
INSERT INTO `item` VALUES (33040, 30000, 30000, 30000);
INSERT INTO `item` VALUES (33039, 7200, 7200, 7200);
INSERT INTO `item` VALUES (33038, 108000, 108000, 108000);
INSERT INTO `item` VALUES (33037, 48000, 48000, 48000);
INSERT INTO `item` VALUES (33036, 30000, 30000, 30000);
INSERT INTO `item` VALUES (33035, 132000, 132000, 132000);
INSERT INTO `item` VALUES (33034, 60000, 60000, 60000);
INSERT INTO `item` VALUES (33033, 48000, 48000, 48000);
INSERT INTO `item` VALUES (33032, 48000, 48000, 48000);
INSERT INTO `item` VALUES (33031, 108000, 108000, 108000);
INSERT INTO `item` VALUES (33030, 48000, 48000, 48000);
INSERT INTO `item` VALUES (33029, 0, 0, 0);
INSERT INTO `item` VALUES (33028, 48000, 48000, 48000);
INSERT INTO `item` VALUES (33027, 48000, 48000, 48000);
INSERT INTO `item` VALUES (33026, 48000, 48000, 48000);
INSERT INTO `item` VALUES (33025, 48000, 48000, 48000);
INSERT INTO `item` VALUES (33024, 0, 0, 0);
INSERT INTO `item` VALUES (33023, 0, 0, 0);
INSERT INTO `item` VALUES (33022, 0, 0, 0);
INSERT INTO `item` VALUES (33021, 7200, 7200, 7200);
INSERT INTO `item` VALUES (33020, 7200, 7200, 7200);
INSERT INTO `item` VALUES (33019, 7200, 7200, 7200);
INSERT INTO `item` VALUES (33018, 72000, 72000, 72000);
INSERT INTO `item` VALUES (33017, 90000, 90000, 90000);
INSERT INTO `item` VALUES (33016, 48000, 48000, 48000);
INSERT INTO `item` VALUES (33015, 7200, 7200, 7200);
INSERT INTO `item` VALUES (33014, 24000, 24000, 24000);
INSERT INTO `item` VALUES (33013, 30000, 30000, 30000);
INSERT INTO `item` VALUES (33012, 48000, 48000, 48000);
INSERT INTO `item` VALUES (33011, 24000, 24000, 24000);
INSERT INTO `item` VALUES (33010, 24000, 24000, 24000);
INSERT INTO `item` VALUES (33009, 60000, 60000, 60000);
INSERT INTO `item` VALUES (33008, 60000, 60000, 60000);
INSERT INTO `item` VALUES (33007, 48000, 48000, 48000);
INSERT INTO `item` VALUES (33006, 48000, 48000, 48000);
INSERT INTO `item` VALUES (33005, 48000, 48000, 48000);
INSERT INTO `item` VALUES (33004, 0, 0, 0);
INSERT INTO `item` VALUES (33003, 0, 0, 0);
INSERT INTO `item` VALUES (33002, 48000, 48000, 48000);
INSERT INTO `item` VALUES (33001, 30000, 30000, 30000);
INSERT INTO `item` VALUES (33000, 0, 0, 0);
INSERT INTO `item` VALUES (32999, 0, 0, 0);
INSERT INTO `item` VALUES (32998, 0, 0, 0);
INSERT INTO `item` VALUES (32997, 7200, 7200, 7200);
INSERT INTO `item` VALUES (32996, 7200, 7200, 7200);
INSERT INTO `item` VALUES (32995, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32994, 0, 0, 0);
INSERT INTO `item` VALUES (32993, 60000, 60000, 60000);
INSERT INTO `item` VALUES (32992, 0, 0, 0);
INSERT INTO `item` VALUES (32991, 60000, 60000, 60000);
INSERT INTO `item` VALUES (32990, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32989, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32988, 60000, 60000, 60000);
INSERT INTO `item` VALUES (32987, 60000, 60000, 60000);
INSERT INTO `item` VALUES (32986, 240000, 240000, 240000);
INSERT INTO `item` VALUES (32985, 108000, 108000, 108000);
INSERT INTO `item` VALUES (32984, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32983, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32982, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32981, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32980, 0, 0, 0);
INSERT INTO `item` VALUES (32979, 0, 0, 0);
INSERT INTO `item` VALUES (32978, 0, 0, 0);
INSERT INTO `item` VALUES (32977, 90000, 90000, 90000);
INSERT INTO `item` VALUES (32976, 120000, 120000, 120000);
INSERT INTO `item` VALUES (32975, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32974, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32973, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32972, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32971, 72000, 72000, 72000);
INSERT INTO `item` VALUES (32970, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32969, 150000, 150000, 150000);
INSERT INTO `item` VALUES (32968, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32967, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32966, 36000, 36000, 36000);
INSERT INTO `item` VALUES (32965, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32964, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32963, 0, 0, 0);
INSERT INTO `item` VALUES (32962, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32961, 90000, 90000, 90000);
INSERT INTO `item` VALUES (32960, 72000, 72000, 72000);
INSERT INTO `item` VALUES (32959, 72000, 72000, 72000);
INSERT INTO `item` VALUES (32958, 72000, 72000, 72000);
INSERT INTO `item` VALUES (32957, 108000, 108000, 108000);
INSERT INTO `item` VALUES (32956, 108000, 108000, 108000);
INSERT INTO `item` VALUES (32955, 0, 0, 0);
INSERT INTO `item` VALUES (32954, 72000, 72000, 72000);
INSERT INTO `item` VALUES (32953, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32952, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32951, 150000, 150000, 150000);
INSERT INTO `item` VALUES (32950, 0, 0, 0);
INSERT INTO `item` VALUES (32949, 0, 0, 0);
INSERT INTO `item` VALUES (32948, 0, 0, 0);
INSERT INTO `item` VALUES (32947, 0, 0, 0);
INSERT INTO `item` VALUES (32946, 150000, 150000, 150000);
INSERT INTO `item` VALUES (32945, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32944, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32943, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32942, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32941, 0, 0, 0);
INSERT INTO `item` VALUES (32940, 108000, 108000, 108000);
INSERT INTO `item` VALUES (32939, 108000, 108000, 108000);
INSERT INTO `item` VALUES (32938, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32937, 90000, 90000, 90000);
INSERT INTO `item` VALUES (32936, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32935, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32934, 36000, 36000, 36000);
INSERT INTO `item` VALUES (32933, 240000, 240000, 240000);
INSERT INTO `item` VALUES (32932, 0, 0, 0);
INSERT INTO `item` VALUES (32931, 0, 0, 0);
INSERT INTO `item` VALUES (32930, 0, 0, 0);
INSERT INTO `item` VALUES (32929, 0, 0, 0);
INSERT INTO `item` VALUES (32928, 0, 0, 0);
INSERT INTO `item` VALUES (32927, 0, 0, 0);
INSERT INTO `item` VALUES (32926, 0, 0, 0);
INSERT INTO `item` VALUES (32925, 0, 0, 0);
INSERT INTO `item` VALUES (32924, 0, 0, 0);
INSERT INTO `item` VALUES (32923, 72000, 72000, 72000);
INSERT INTO `item` VALUES (32922, 72000, 72000, 72000);
INSERT INTO `item` VALUES (32921, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32920, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32919, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32918, 72000, 72000, 72000);
INSERT INTO `item` VALUES (32917, 0, 0, 0);
INSERT INTO `item` VALUES (32916, 0, 0, 0);
INSERT INTO `item` VALUES (32915, 0, 0, 0);
INSERT INTO `item` VALUES (32914, 36000, 36000, 36000);
INSERT INTO `item` VALUES (32913, 36000, 36000, 36000);
INSERT INTO `item` VALUES (32912, 45000, 45000, 45000);
INSERT INTO `item` VALUES (32911, 60000, 60000, 60000);
INSERT INTO `item` VALUES (32910, 60000, 60000, 60000);
INSERT INTO `item` VALUES (32909, 0, 0, 0);
INSERT INTO `item` VALUES (32908, 36000, 36000, 36000);
INSERT INTO `item` VALUES (32907, 36000, 36000, 36000);
INSERT INTO `item` VALUES (32906, 60000, 60000, 60000);
INSERT INTO `item` VALUES (32905, 60000, 60000, 60000);
INSERT INTO `item` VALUES (32904, 60000, 60000, 60000);
INSERT INTO `item` VALUES (32903, 60000, 60000, 60000);
INSERT INTO `item` VALUES (32902, 72000, 72000, 72000);
INSERT INTO `item` VALUES (32901, 108000, 108000, 108000);
INSERT INTO `item` VALUES (32900, 45000, 45000, 45000);
INSERT INTO `item` VALUES (32899, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32898, 72000, 72000, 72000);
INSERT INTO `item` VALUES (32897, 36000, 36000, 36000);
INSERT INTO `item` VALUES (32896, 0, 0, 0);
INSERT INTO `item` VALUES (32895, 0, 0, 0);
INSERT INTO `item` VALUES (32894, 0, 0, 0);
INSERT INTO `item` VALUES (32893, 108000, 108000, 108000);
INSERT INTO `item` VALUES (32892, 36000, 36000, 36000);
INSERT INTO `item` VALUES (32891, 72000, 72000, 72000);
INSERT INTO `item` VALUES (32890, 108000, 108000, 108000);
INSERT INTO `item` VALUES (32889, 0, 0, 0);
INSERT INTO `item` VALUES (32888, 66000, 66000, 66000);
INSERT INTO `item` VALUES (32887, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32886, 60000, 60000, 60000);
INSERT INTO `item` VALUES (32885, 36000, 36000, 36000);
INSERT INTO `item` VALUES (32884, 45000, 45000, 45000);
INSERT INTO `item` VALUES (32883, 66000, 66000, 66000);
INSERT INTO `item` VALUES (32882, 42000, 42000, 42000);
INSERT INTO `item` VALUES (32881, 60000, 60000, 60000);
INSERT INTO `item` VALUES (32880, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32879, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32878, 36000, 36000, 36000);
INSERT INTO `item` VALUES (32877, 36000, 36000, 36000);
INSERT INTO `item` VALUES (32876, 0, 0, 0);
INSERT INTO `item` VALUES (32875, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32874, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32873, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32872, 45000, 45000, 45000);
INSERT INTO `item` VALUES (32871, 0, 0, 0);
INSERT INTO `item` VALUES (32870, 0, 0, 0);
INSERT INTO `item` VALUES (32869, 42000, 42000, 42000);
INSERT INTO `item` VALUES (32868, 42000, 42000, 42000);
INSERT INTO `item` VALUES (32867, 0, 0, 0);
INSERT INTO `item` VALUES (32866, 42000, 42000, 42000);
INSERT INTO `item` VALUES (32865, 57000, 57000, 57000);
INSERT INTO `item` VALUES (32864, 108000, 108000, 108000);
INSERT INTO `item` VALUES (32863, 132000, 132000, 132000);
INSERT INTO `item` VALUES (32862, 75000, 75000, 75000);
INSERT INTO `item` VALUES (32861, 72000, 72000, 72000);
INSERT INTO `item` VALUES (32860, 108000, 108000, 108000);
INSERT INTO `item` VALUES (32859, 60000, 60000, 60000);
INSERT INTO `item` VALUES (32858, 150000, 150000, 150000);
INSERT INTO `item` VALUES (32857, 57000, 57000, 57000);
INSERT INTO `item` VALUES (32856, 69000, 69000, 69000);
INSERT INTO `item` VALUES (32855, 54000, 54000, 54000);
INSERT INTO `item` VALUES (32854, 72000, 72000, 72000);
INSERT INTO `item` VALUES (32853, 66000, 66000, 66000);
INSERT INTO `item` VALUES (32852, 0, 0, 0);
INSERT INTO `item` VALUES (32851, 0, 0, 0);
INSERT INTO `item` VALUES (32850, 60000, 60000, 60000);
INSERT INTO `item` VALUES (32849, 42000, 42000, 42000);
INSERT INTO `item` VALUES (32848, 48000, 48000, 48000);
INSERT INTO `item` VALUES (32847, 54000, 54000, 54000);
INSERT INTO `item` VALUES (32846, 84000, 84000, 84000);
INSERT INTO `item` VALUES (32845, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32844, 51000, 51000, 51000);
INSERT INTO `item` VALUES (32843, 57000, 57000, 57000);
INSERT INTO `item` VALUES (32842, 0, 0, 0);
INSERT INTO `item` VALUES (32841, 45000, 45000, 45000);
INSERT INTO `item` VALUES (32840, 87000, 87000, 87000);
INSERT INTO `item` VALUES (32839, 57000, 57000, 57000);
INSERT INTO `item` VALUES (32838, 72000, 72000, 72000);
INSERT INTO `item` VALUES (32837, 72000, 72000, 72000);
INSERT INTO `item` VALUES (32836, 54000, 54000, 54000);
INSERT INTO `item` VALUES (32835, 66000, 66000, 66000);
INSERT INTO `item` VALUES (32834, 55200, 55200, 55200);
INSERT INTO `item` VALUES (32833, 46800, 46800, 46800);
INSERT INTO `item` VALUES (32832, 49200, 49200, 49200);
INSERT INTO `item` VALUES (32831, 0, 0, 0);
INSERT INTO `item` VALUES (32830, 0, 0, 0);
INSERT INTO `item` VALUES (32829, 0, 0, 0);
INSERT INTO `item` VALUES (32828, 36000, 36000, 36000);
INSERT INTO `item` VALUES (32827, 24000, 24000, 24000);
INSERT INTO `item` VALUES (32826, 36000, 36000, 36000);
INSERT INTO `item` VALUES (32825, 24000, 24000, 24000);
INSERT INTO `item` VALUES (32824, 27000, 27000, 27000);
INSERT INTO `item` VALUES (32823, 36000, 36000, 36000);
INSERT INTO `item` VALUES (32822, 27000, 27000, 27000);
INSERT INTO `item` VALUES (32821, 27000, 27000, 27000);
INSERT INTO `item` VALUES (32820, 42000, 42000, 42000);
INSERT INTO `item` VALUES (32819, 21000, 21000, 21000);
INSERT INTO `item` VALUES (32818, 45000, 45000, 45000);
INSERT INTO `item` VALUES (32817, 22800, 22800, 22800);
INSERT INTO `item` VALUES (32816, 0, 0, 0);
INSERT INTO `item` VALUES (32815, 51000, 51000, 51000);
INSERT INTO `item` VALUES (32814, 24000, 24000, 24000);
INSERT INTO `item` VALUES (32813, 22800, 22800, 22800);
INSERT INTO `item` VALUES (32812, 21600, 21600, 21600);
INSERT INTO `item` VALUES (32811, 42000, 42000, 42000);
INSERT INTO `item` VALUES (32810, 90000, 90000, 90000);
INSERT INTO `item` VALUES (32809, 36000, 36000, 36000);
INSERT INTO `item` VALUES (32808, 33000, 33000, 33000);
INSERT INTO `item` VALUES (32807, 150000, 150000, 150000);
INSERT INTO `item` VALUES (32806, 45000, 45000, 45000);
INSERT INTO `item` VALUES (32805, 9000, 9000, 9000);
INSERT INTO `item` VALUES (32804, 0, 0, 0);
INSERT INTO `item` VALUES (32803, 0, 0, 0);
INSERT INTO `item` VALUES (32802, 45000, 45000, 45000);
INSERT INTO `item` VALUES (32801, 36000, 36000, 36000);
INSERT INTO `item` VALUES (32800, 40800, 40800, 40800);
INSERT INTO `item` VALUES (32799, 42000, 42000, 42000);
INSERT INTO `item` VALUES (32798, 36000, 36000, 36000);
INSERT INTO `item` VALUES (32797, 24000, 24000, 24000);
INSERT INTO `item` VALUES (32796, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32795, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32794, 24000, 24000, 24000);
INSERT INTO `item` VALUES (32793, 15000, 15000, 15000);
INSERT INTO `item` VALUES (32792, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32791, 21000, 21000, 21000);
INSERT INTO `item` VALUES (32790, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32789, 24000, 24000, 24000);
INSERT INTO `item` VALUES (32788, 21000, 21000, 21000);
INSERT INTO `item` VALUES (32787, 0, 0, 0);
INSERT INTO `item` VALUES (32786, 120000, 120000, 120000);
INSERT INTO `item` VALUES (32785, 25200, 25200, 25200);
INSERT INTO `item` VALUES (32784, 22800, 22800, 22800);
INSERT INTO `item` VALUES (32783, 18000, 18000, 18000);
INSERT INTO `item` VALUES (32782, 7200, 7200, 7200);
INSERT INTO `item` VALUES (32781, 60000, 60000, 60000);
INSERT INTO `item` VALUES (32780, 30000, 30000, 30000);
INSERT INTO `item` VALUES (32779, 27000, 27000, 27000);
INSERT INTO `item` VALUES (32778, 22800, 22800, 22800);
INSERT INTO `item` VALUES (32777, 24000, 24000, 24000);
INSERT INTO `item` VALUES (32776, 36000, 36000, 36000);
INSERT INTO `item` VALUES (32775, 21000, 21000, 21000);
INSERT INTO `item` VALUES (32774, 18000, 18000, 18000);
INSERT INTO `item` VALUES (32773, 24000, 24000, 24000);
INSERT INTO `item` VALUES (32772, 36000, 36000, 36000);
INSERT INTO `item` VALUES (32771, 7200, 7200, 7200);
INSERT INTO `item` VALUES (32770, 7200, 7200, 7200);
INSERT INTO `item` VALUES (32769, 12000, 12000, 12000);
INSERT INTO `item` VALUES (164137, 0, 0, 0);
INSERT INTO `item` VALUES (164136, 0, 0, 0);
INSERT INTO `item` VALUES (164135, 0, 0, 0);
INSERT INTO `item` VALUES (164134, 0, 0, 0);
INSERT INTO `item` VALUES (164133, 0, 0, 0);
INSERT INTO `item` VALUES (164132, 0, 0, 0);
INSERT INTO `item` VALUES (164131, 0, 0, 0);
INSERT INTO `item` VALUES (164130, 0, 0, 0);
INSERT INTO `item` VALUES (164129, 0, 0, 0);
INSERT INTO `item` VALUES (164128, 0, 0, 0);
INSERT INTO `item` VALUES (164127, 0, 0, 0);
INSERT INTO `item` VALUES (164126, 0, 0, 0);
INSERT INTO `item` VALUES (164125, 0, 0, 0);
INSERT INTO `item` VALUES (164124, 0, 0, 0);
INSERT INTO `item` VALUES (164123, 0, 0, 0);
INSERT INTO `item` VALUES (164122, 0, 0, 0);
INSERT INTO `item` VALUES (164121, 0, 0, 0);
INSERT INTO `item` VALUES (164120, 0, 0, 0);
INSERT INTO `item` VALUES (164119, 0, 0, 0);
INSERT INTO `item` VALUES (164118, 0, 0, 0);
INSERT INTO `item` VALUES (164117, 0, 0, 0);
INSERT INTO `item` VALUES (164116, 0, 0, 0);
INSERT INTO `item` VALUES (164115, 0, 0, 0);
INSERT INTO `item` VALUES (164114, 0, 0, 0);
INSERT INTO `item` VALUES (164113, 0, 0, 0);
INSERT INTO `item` VALUES (164112, 0, 0, 0);
INSERT INTO `item` VALUES (164111, 0, 0, 0);
INSERT INTO `item` VALUES (164110, 0, 0, 0);
INSERT INTO `item` VALUES (164109, 0, 0, 0);
INSERT INTO `item` VALUES (164108, 0, 0, 0);
INSERT INTO `item` VALUES (164107, 0, 0, 0);
INSERT INTO `item` VALUES (164106, 0, 0, 0);
INSERT INTO `item` VALUES (164105, 0, 0, 0);
INSERT INTO `item` VALUES (164104, 0, 0, 0);
INSERT INTO `item` VALUES (164103, 0, 0, 0);
INSERT INTO `item` VALUES (164102, 0, 0, 0);
INSERT INTO `item` VALUES (164101, 0, 0, 0);
INSERT INTO `item` VALUES (164100, 0, 0, 0);
INSERT INTO `item` VALUES (164099, 0, 0, 0);
INSERT INTO `item` VALUES (164098, 0, 0, 0);
INSERT INTO `item` VALUES (164097, 0, 0, 0);
INSERT INTO `item` VALUES (164096, 0, 0, 0);
INSERT INTO `item` VALUES (164095, 0, 0, 0);
INSERT INTO `item` VALUES (164094, 0, 0, 0);
INSERT INTO `item` VALUES (164093, 0, 0, 0);
INSERT INTO `item` VALUES (164092, 0, 0, 0);
INSERT INTO `item` VALUES (164091, 0, 0, 0);
INSERT INTO `item` VALUES (164090, 0, 0, 0);
INSERT INTO `item` VALUES (164089, 0, 0, 0);
INSERT INTO `item` VALUES (164088, 0, 0, 0);
INSERT INTO `item` VALUES (164087, 0, 0, 0);
INSERT INTO `item` VALUES (164086, 0, 0, 0);
INSERT INTO `item` VALUES (164085, 0, 0, 0);
INSERT INTO `item` VALUES (164084, 0, 0, 0);
INSERT INTO `item` VALUES (164083, 0, 0, 0);
INSERT INTO `item` VALUES (164082, 0, 0, 0);
INSERT INTO `item` VALUES (164081, 0, 0, 0);
INSERT INTO `item` VALUES (164080, 0, 0, 0);
INSERT INTO `item` VALUES (164079, 0, 0, 0);
INSERT INTO `item` VALUES (164078, 0, 0, 0);
INSERT INTO `item` VALUES (164077, 0, 0, 0);
INSERT INTO `item` VALUES (164076, 0, 0, 0);
INSERT INTO `item` VALUES (164075, 0, 0, 0);
INSERT INTO `item` VALUES (164074, 0, 0, 0);
INSERT INTO `item` VALUES (164073, 0, 0, 0);
INSERT INTO `item` VALUES (164072, 0, 0, 0);
INSERT INTO `item` VALUES (164071, 0, 0, 0);
INSERT INTO `item` VALUES (164070, 0, 0, 0);
INSERT INTO `item` VALUES (164069, 0, 0, 0);
INSERT INTO `item` VALUES (164068, 0, 0, 0);
INSERT INTO `item` VALUES (164067, 0, 0, 0);
INSERT INTO `item` VALUES (164066, 0, 0, 0);
INSERT INTO `item` VALUES (164065, 0, 0, 0);
INSERT INTO `item` VALUES (164064, 0, 0, 0);
INSERT INTO `item` VALUES (164063, 0, 0, 0);
INSERT INTO `item` VALUES (164062, 0, 0, 0);
INSERT INTO `item` VALUES (164061, 0, 0, 0);
INSERT INTO `item` VALUES (164060, 0, 0, 0);
INSERT INTO `item` VALUES (164059, 0, 0, 0);
INSERT INTO `item` VALUES (164058, 0, 0, 0);
INSERT INTO `item` VALUES (164057, 0, 0, 0);
INSERT INTO `item` VALUES (164056, 0, 0, 0);
INSERT INTO `item` VALUES (164055, 0, 0, 0);
INSERT INTO `item` VALUES (164054, 0, 0, 0);
INSERT INTO `item` VALUES (164053, 0, 0, 0);
INSERT INTO `item` VALUES (164052, 0, 0, 0);
INSERT INTO `item` VALUES (164051, 0, 0, 0);
INSERT INTO `item` VALUES (164050, 0, 0, 0);
INSERT INTO `item` VALUES (164049, 0, 0, 0);
INSERT INTO `item` VALUES (164048, 0, 0, 0);
INSERT INTO `item` VALUES (164047, 0, 0, 0);
INSERT INTO `item` VALUES (164046, 0, 0, 0);
INSERT INTO `item` VALUES (164045, 0, 0, 0);
INSERT INTO `item` VALUES (164044, 0, 0, 0);
INSERT INTO `item` VALUES (164043, 0, 0, 0);
INSERT INTO `item` VALUES (164042, 0, 0, 0);
INSERT INTO `item` VALUES (164041, 0, 0, 0);
INSERT INTO `item` VALUES (164040, 0, 0, 0);
INSERT INTO `item` VALUES (164039, 0, 0, 0);
INSERT INTO `item` VALUES (164038, 0, 0, 0);
INSERT INTO `item` VALUES (164037, 0, 0, 0);
INSERT INTO `item` VALUES (164036, 0, 0, 0);
INSERT INTO `item` VALUES (164035, 0, 0, 0);
INSERT INTO `item` VALUES (164034, 0, 0, 0);
INSERT INTO `item` VALUES (164033, 0, 0, 0);
INSERT INTO `item` VALUES (164032, 0, 0, 0);
INSERT INTO `item` VALUES (164031, 0, 0, 0);
INSERT INTO `item` VALUES (164030, 0, 0, 0);
INSERT INTO `item` VALUES (164029, 0, 0, 0);
INSERT INTO `item` VALUES (164028, 0, 0, 0);
INSERT INTO `item` VALUES (164027, 28800, 28800, 28800);
INSERT INTO `item` VALUES (164026, 60000, 60000, 60000);
INSERT INTO `item` VALUES (164025, 24000, 24000, 24000);
INSERT INTO `item` VALUES (164024, 60000, 60000, 60000);
INSERT INTO `item` VALUES (164023, 60000, 60000, 60000);
INSERT INTO `item` VALUES (164022, 24000, 24000, 24000);
INSERT INTO `item` VALUES (164021, 24000, 24000, 24000);
INSERT INTO `item` VALUES (164020, 36000, 36000, 36000);
INSERT INTO `item` VALUES (164019, 36000, 36000, 36000);
INSERT INTO `item` VALUES (164018, 12000, 12000, 12000);
INSERT INTO `item` VALUES (164017, 12000, 12000, 12000);
INSERT INTO `item` VALUES (164016, 57000, 57000, 57000);
INSERT INTO `item` VALUES (164015, 216000, 216000, 216000);
INSERT INTO `item` VALUES (164014, 24000, 24000, 24000);
INSERT INTO `item` VALUES (164013, 36000, 36000, 36000);
INSERT INTO `item` VALUES (164012, 48000, 48000, 48000);
INSERT INTO `item` VALUES (164011, 12000, 12000, 12000);
INSERT INTO `item` VALUES (164010, 24000, 24000, 24000);
INSERT INTO `item` VALUES (164009, 36000, 36000, 36000);
INSERT INTO `item` VALUES (164008, 24000, 24000, 24000);
INSERT INTO `item` VALUES (164007, 28800, 28800, 28800);
INSERT INTO `item` VALUES (164006, 48000, 48000, 48000);
INSERT INTO `item` VALUES (164005, 36000, 36000, 36000);
INSERT INTO `item` VALUES (164004, 24000, 24000, 24000);
INSERT INTO `item` VALUES (164003, 24000, 24000, 24000);
INSERT INTO `item` VALUES (164002, 36000, 36000, 36000);
INSERT INTO `item` VALUES (164001, 36000, 36000, 36000);
INSERT INTO `item` VALUES (164000, 36000, 36000, 36000);
INSERT INTO `item` VALUES (163999, 36000, 36000, 36000);
INSERT INTO `item` VALUES (163998, 48000, 48000, 48000);
INSERT INTO `item` VALUES (163997, 24000, 24000, 24000);
INSERT INTO `item` VALUES (163996, 57000, 57000, 57000);
INSERT INTO `item` VALUES (163995, 108000, 108000, 108000);
INSERT INTO `item` VALUES (163994, 36000, 36000, 36000);
INSERT INTO `item` VALUES (163993, 36000, 36000, 36000);
INSERT INTO `item` VALUES (163992, 0, 0, 0);
INSERT INTO `item` VALUES (163991, 36000, 36000, 36000);
INSERT INTO `item` VALUES (163990, 57000, 57000, 57000);
INSERT INTO `item` VALUES (163989, 57000, 57000, 57000);
INSERT INTO `item` VALUES (163988, 36000, 36000, 36000);
INSERT INTO `item` VALUES (163987, 36000, 36000, 36000);
INSERT INTO `item` VALUES (163986, 36000, 36000, 36000);
INSERT INTO `item` VALUES (163985, 90000, 90000, 90000);
INSERT INTO `item` VALUES (163984, 36000, 36000, 36000);
INSERT INTO `item` VALUES (163983, 36000, 36000, 36000);
INSERT INTO `item` VALUES (163982, 0, 0, 0);
INSERT INTO `item` VALUES (163981, 0, 0, 0);
INSERT INTO `item` VALUES (163980, 0, 0, 0);
INSERT INTO `item` VALUES (163979, 0, 0, 0);
INSERT INTO `item` VALUES (163978, 108000, 108000, 108000);
INSERT INTO `item` VALUES (163977, 108000, 108000, 108000);
INSERT INTO `item` VALUES (163976, 24000, 24000, 24000);
INSERT INTO `item` VALUES (163975, 36000, 36000, 36000);
INSERT INTO `item` VALUES (163974, 96000, 96000, 96000);
INSERT INTO `item` VALUES (163973, 0, 0, 0);
INSERT INTO `item` VALUES (163972, 0, 0, 0);
INSERT INTO `item` VALUES (163971, 18000, 18000, 18000);
INSERT INTO `item` VALUES (163970, 18000, 18000, 18000);
INSERT INTO `item` VALUES (163969, 18000, 18000, 18000);
INSERT INTO `item` VALUES (163968, 18000, 18000, 18000);
INSERT INTO `item` VALUES (163967, 18000, 18000, 18000);
INSERT INTO `item` VALUES (163966, 18000, 18000, 18000);
INSERT INTO `item` VALUES (163965, 0, 0, 0);
INSERT INTO `item` VALUES (163964, 0, 0, 0);
INSERT INTO `item` VALUES (163963, 0, 0, 0);
INSERT INTO `item` VALUES (163962, 0, 0, 0);
INSERT INTO `item` VALUES (163961, 0, 0, 0);
INSERT INTO `item` VALUES (163960, 0, 0, 0);
INSERT INTO `item` VALUES (163959, 0, 0, 0);
INSERT INTO `item` VALUES (163958, 0, 0, 0);
INSERT INTO `item` VALUES (163957, 72000, 72000, 72000);
INSERT INTO `item` VALUES (163956, 0, 0, 0);
INSERT INTO `item` VALUES (163955, 0, 0, 0);
INSERT INTO `item` VALUES (163954, 0, 0, 0);
INSERT INTO `item` VALUES (163953, 24000, 24000, 24000);
INSERT INTO `item` VALUES (163952, 72000, 72000, 72000);
INSERT INTO `item` VALUES (163951, 144000, 144000, 144000);
INSERT INTO `item` VALUES (163950, 60000, 60000, 60000);
INSERT INTO `item` VALUES (163949, 0, 0, 0);
INSERT INTO `item` VALUES (163948, 144000, 144000, 144000);
INSERT INTO `item` VALUES (163947, 216000, 216000, 216000);
INSERT INTO `item` VALUES (163946, 24000, 24000, 24000);
INSERT INTO `item` VALUES (163945, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163944, 60000, 60000, 60000);
INSERT INTO `item` VALUES (163943, 60000, 60000, 60000);
INSERT INTO `item` VALUES (163942, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163941, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163940, 144000, 144000, 144000);
INSERT INTO `item` VALUES (163939, 0, 0, 0);
INSERT INTO `item` VALUES (163938, 0, 0, 0);
INSERT INTO `item` VALUES (163937, 0, 0, 0);
INSERT INTO `item` VALUES (163936, 0, 0, 0);
INSERT INTO `item` VALUES (163935, 0, 0, 0);
INSERT INTO `item` VALUES (163934, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163933, 72000, 72000, 72000);
INSERT INTO `item` VALUES (163932, 72000, 72000, 72000);
INSERT INTO `item` VALUES (163931, 108000, 108000, 108000);
INSERT INTO `item` VALUES (163930, 144000, 144000, 144000);
INSERT INTO `item` VALUES (163929, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163928, 0, 0, 0);
INSERT INTO `item` VALUES (163927, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163926, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163925, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163924, 60000, 60000, 60000);
INSERT INTO `item` VALUES (163923, 90000, 90000, 90000);
INSERT INTO `item` VALUES (163922, 108000, 108000, 108000);
INSERT INTO `item` VALUES (163921, 60000, 60000, 60000);
INSERT INTO `item` VALUES (163920, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163919, 0, 0, 0);
INSERT INTO `item` VALUES (163918, 0, 0, 0);
INSERT INTO `item` VALUES (163917, 144000, 144000, 144000);
INSERT INTO `item` VALUES (163916, 60000, 60000, 60000);
INSERT INTO `item` VALUES (163915, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163914, 60000, 60000, 60000);
INSERT INTO `item` VALUES (163913, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163912, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163911, 15000, 15000, 15000);
INSERT INTO `item` VALUES (163910, 48000, 48000, 48000);
INSERT INTO `item` VALUES (163909, 0, 0, 0);
INSERT INTO `item` VALUES (163908, 48000, 48000, 48000);
INSERT INTO `item` VALUES (163907, 48000, 48000, 48000);
INSERT INTO `item` VALUES (163906, 0, 0, 0);
INSERT INTO `item` VALUES (163905, 0, 0, 0);
INSERT INTO `item` VALUES (163904, 120000, 120000, 120000);
INSERT INTO `item` VALUES (163903, 15000, 15000, 15000);
INSERT INTO `item` VALUES (163902, 15000, 15000, 15000);
INSERT INTO `item` VALUES (163901, 15000, 15000, 15000);
INSERT INTO `item` VALUES (163900, 6000, 6000, 6000);
INSERT INTO `item` VALUES (163899, 48000, 48000, 48000);
INSERT INTO `item` VALUES (163898, 6000, 6000, 6000);
INSERT INTO `item` VALUES (163897, 90000, 90000, 90000);
INSERT INTO `item` VALUES (163896, 60000, 60000, 60000);
INSERT INTO `item` VALUES (163895, 15000, 15000, 15000);
INSERT INTO `item` VALUES (163894, 0, 0, 0);
INSERT INTO `item` VALUES (163893, 7200, 7200, 7200);
INSERT INTO `item` VALUES (163892, 48000, 48000, 48000);
INSERT INTO `item` VALUES (163891, 144000, 144000, 144000);
INSERT INTO `item` VALUES (163890, 15000, 15000, 15000);
INSERT INTO `item` VALUES (163889, 15000, 15000, 15000);
INSERT INTO `item` VALUES (163888, 15000, 15000, 15000);
INSERT INTO `item` VALUES (163887, 15000, 15000, 15000);
INSERT INTO `item` VALUES (163886, 15000, 15000, 15000);
INSERT INTO `item` VALUES (163885, 15000, 15000, 15000);
INSERT INTO `item` VALUES (163884, 15000, 15000, 15000);
INSERT INTO `item` VALUES (163883, 15000, 15000, 15000);
INSERT INTO `item` VALUES (163882, 22800, 22800, 22800);
INSERT INTO `item` VALUES (163881, 0, 0, 0);
INSERT INTO `item` VALUES (163880, 108000, 108000, 108000);
INSERT INTO `item` VALUES (163879, 66000, 66000, 66000);
INSERT INTO `item` VALUES (163878, 48000, 48000, 48000);
INSERT INTO `item` VALUES (163877, 57000, 57000, 57000);
INSERT INTO `item` VALUES (163876, 28800, 28800, 28800);
INSERT INTO `item` VALUES (163875, 21600, 21600, 21600);
INSERT INTO `item` VALUES (163874, 144000, 144000, 144000);
INSERT INTO `item` VALUES (163873, 75000, 75000, 75000);
INSERT INTO `item` VALUES (163872, 75000, 75000, 75000);
INSERT INTO `item` VALUES (163871, 27600, 27600, 27600);
INSERT INTO `item` VALUES (163870, 33600, 33600, 33600);
INSERT INTO `item` VALUES (163869, 36000, 36000, 36000);
INSERT INTO `item` VALUES (163868, 36000, 36000, 36000);
INSERT INTO `item` VALUES (163867, 27000, 27000, 27000);
INSERT INTO `item` VALUES (163866, 9600, 9600, 9600);
INSERT INTO `item` VALUES (163865, 18000, 18000, 18000);
INSERT INTO `item` VALUES (163864, 24000, 24000, 24000);
INSERT INTO `item` VALUES (163863, 7200, 7200, 7200);
INSERT INTO `item` VALUES (163862, 72000, 72000, 72000);
INSERT INTO `item` VALUES (163861, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163860, 0, 0, 0);
INSERT INTO `item` VALUES (163859, 0, 0, 0);
INSERT INTO `item` VALUES (163858, 18000, 18000, 18000);
INSERT INTO `item` VALUES (163857, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163856, 30000, 30000, 30000);
INSERT INTO `item` VALUES (163855, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163854, 21000, 21000, 21000);
INSERT INTO `item` VALUES (163853, 18000, 18000, 18000);
INSERT INTO `item` VALUES (163852, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163851, 9000, 9000, 9000);
INSERT INTO `item` VALUES (163850, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163849, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163848, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163847, 18000, 18000, 18000);
INSERT INTO `item` VALUES (163846, 18000, 18000, 18000);
INSERT INTO `item` VALUES (163845, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163844, 12000, 12000, 12000);
INSERT INTO `item` VALUES (163843, 7200, 7200, 7200);
INSERT INTO `item` VALUES (163842, 9000, 9000, 9000);
INSERT INTO `item` VALUES (163841, 12000, 12000, 12000);
INSERT INTO `item` VALUES (230299, 0, 0, 0);
INSERT INTO `item` VALUES (230298, 0, 0, 0);
INSERT INTO `item` VALUES (230297, 0, 0, 0);
INSERT INTO `item` VALUES (230296, 0, 0, 0);
INSERT INTO `item` VALUES (230295, 0, 0, 0);
INSERT INTO `item` VALUES (230294, 0, 0, 0);
INSERT INTO `item` VALUES (230293, 0, 0, 0);
INSERT INTO `item` VALUES (230292, 0, 0, 0);
INSERT INTO `item` VALUES (230291, 0, 0, 0);
INSERT INTO `item` VALUES (230290, 0, 0, 0);
INSERT INTO `item` VALUES (230289, 0, 0, 0);
INSERT INTO `item` VALUES (230288, 0, 0, 0);
INSERT INTO `item` VALUES (230287, 0, 0, 0);
INSERT INTO `item` VALUES (230286, 0, 0, 0);
INSERT INTO `item` VALUES (230285, 0, 0, 0);
INSERT INTO `item` VALUES (230284, 0, 0, 0);
INSERT INTO `item` VALUES (230283, 0, 0, 0);
INSERT INTO `item` VALUES (230282, 0, 0, 0);
INSERT INTO `item` VALUES (230281, 0, 0, 0);
INSERT INTO `item` VALUES (230280, 0, 0, 0);
INSERT INTO `item` VALUES (230279, 0, 0, 0);
INSERT INTO `item` VALUES (230278, 0, 0, 0);
INSERT INTO `item` VALUES (230277, 0, 0, 0);
INSERT INTO `item` VALUES (230276, 0, 0, 0);
INSERT INTO `item` VALUES (230275, 0, 0, 0);
INSERT INTO `item` VALUES (230274, 0, 0, 0);
INSERT INTO `item` VALUES (230273, 0, 0, 0);
INSERT INTO `item` VALUES (230272, 0, 0, 0);
INSERT INTO `item` VALUES (230271, 0, 0, 0);
INSERT INTO `item` VALUES (230270, 0, 0, 0);
INSERT INTO `item` VALUES (230269, 0, 0, 0);
INSERT INTO `item` VALUES (230268, 0, 0, 0);
INSERT INTO `item` VALUES (230267, 0, 0, 0);
INSERT INTO `item` VALUES (230266, 0, 0, 0);
INSERT INTO `item` VALUES (230265, 0, 0, 0);
INSERT INTO `item` VALUES (230264, 0, 0, 0);
INSERT INTO `item` VALUES (230263, 0, 0, 0);
INSERT INTO `item` VALUES (229959, 0, 0, 0);
INSERT INTO `item` VALUES (229958, 0, 0, 0);
INSERT INTO `item` VALUES (229957, 0, 0, 0);
INSERT INTO `item` VALUES (229956, 0, 0, 0);
INSERT INTO `item` VALUES (229955, 60000, 60000, 60000);
INSERT INTO `item` VALUES (229954, 0, 0, 0);
INSERT INTO `item` VALUES (229953, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229952, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229951, 24000, 24000, 24000);
INSERT INTO `item` VALUES (229950, 60000, 60000, 60000);
INSERT INTO `item` VALUES (229949, 84000, 84000, 84000);
INSERT INTO `item` VALUES (229948, 54000, 54000, 54000);
INSERT INTO `item` VALUES (229947, 54000, 54000, 54000);
INSERT INTO `item` VALUES (229946, 24000, 24000, 24000);
INSERT INTO `item` VALUES (229945, 24000, 24000, 24000);
INSERT INTO `item` VALUES (229944, 24000, 24000, 24000);
INSERT INTO `item` VALUES (229943, 84000, 84000, 84000);
INSERT INTO `item` VALUES (229942, 48000, 48000, 48000);
INSERT INTO `item` VALUES (229941, 96000, 96000, 96000);
INSERT INTO `item` VALUES (229940, 48000, 48000, 48000);
INSERT INTO `item` VALUES (229939, 48000, 48000, 48000);
INSERT INTO `item` VALUES (229938, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229937, 48000, 48000, 48000);
INSERT INTO `item` VALUES (229936, 48000, 48000, 48000);
INSERT INTO `item` VALUES (229935, 54000, 54000, 54000);
INSERT INTO `item` VALUES (229934, 54000, 54000, 54000);
INSERT INTO `item` VALUES (229933, 54000, 54000, 54000);
INSERT INTO `item` VALUES (229932, 24000, 24000, 24000);
INSERT INTO `item` VALUES (229931, 24000, 24000, 24000);
INSERT INTO `item` VALUES (229930, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229929, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229928, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229927, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229926, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229925, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229924, 90000, 90000, 90000);
INSERT INTO `item` VALUES (229923, 60000, 60000, 60000);
INSERT INTO `item` VALUES (229922, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229921, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229920, 96000, 96000, 96000);
INSERT INTO `item` VALUES (229919, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229918, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229917, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229916, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229915, 24000, 24000, 24000);
INSERT INTO `item` VALUES (229914, 24000, 24000, 24000);
INSERT INTO `item` VALUES (229913, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229912, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229911, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229910, 24000, 24000, 24000);
INSERT INTO `item` VALUES (229909, 24000, 24000, 24000);
INSERT INTO `item` VALUES (229908, 24000, 24000, 24000);
INSERT INTO `item` VALUES (229907, 60000, 60000, 60000);
INSERT INTO `item` VALUES (229906, 96000, 96000, 96000);
INSERT INTO `item` VALUES (229905, 108000, 108000, 108000);
INSERT INTO `item` VALUES (229904, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229903, 0, 0, 0);
INSERT INTO `item` VALUES (229902, 0, 0, 0);
INSERT INTO `item` VALUES (229901, 90000, 90000, 90000);
INSERT INTO `item` VALUES (229900, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229899, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229898, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229897, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229896, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229895, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229894, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229893, 90000, 90000, 90000);
INSERT INTO `item` VALUES (229892, 72000, 72000, 72000);
INSERT INTO `item` VALUES (229891, 120000, 120000, 120000);
INSERT INTO `item` VALUES (229890, 108000, 108000, 108000);
INSERT INTO `item` VALUES (229889, 108000, 108000, 108000);
INSERT INTO `item` VALUES (229888, 108000, 108000, 108000);
INSERT INTO `item` VALUES (229887, 108000, 108000, 108000);
INSERT INTO `item` VALUES (229886, 168000, 168000, 168000);
INSERT INTO `item` VALUES (229885, 900000, 900000, 900000);
INSERT INTO `item` VALUES (229884, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229883, 0, 0, 0);
INSERT INTO `item` VALUES (229882, 0, 0, 0);
INSERT INTO `item` VALUES (229881, 0, 0, 0);
INSERT INTO `item` VALUES (229880, 0, 0, 0);
INSERT INTO `item` VALUES (229879, 0, 0, 0);
INSERT INTO `item` VALUES (229878, 0, 0, 0);
INSERT INTO `item` VALUES (229877, 0, 0, 0);
INSERT INTO `item` VALUES (229876, 0, 0, 0);
INSERT INTO `item` VALUES (229875, 0, 0, 0);
INSERT INTO `item` VALUES (229874, 0, 0, 0);
INSERT INTO `item` VALUES (229873, 0, 0, 0);
INSERT INTO `item` VALUES (229872, 0, 0, 0);
INSERT INTO `item` VALUES (229871, 0, 0, 0);
INSERT INTO `item` VALUES (229870, 0, 0, 0);
INSERT INTO `item` VALUES (229869, 0, 0, 0);
INSERT INTO `item` VALUES (229868, 0, 0, 0);
INSERT INTO `item` VALUES (229867, 0, 0, 0);
INSERT INTO `item` VALUES (229866, 0, 0, 0);
INSERT INTO `item` VALUES (229865, 0, 0, 0);
INSERT INTO `item` VALUES (229864, 0, 0, 0);
INSERT INTO `item` VALUES (229863, 0, 0, 0);
INSERT INTO `item` VALUES (229862, 0, 0, 0);
INSERT INTO `item` VALUES (229861, 0, 0, 0);
INSERT INTO `item` VALUES (229860, 0, 0, 0);
INSERT INTO `item` VALUES (229859, 0, 0, 0);
INSERT INTO `item` VALUES (229858, 0, 0, 0);
INSERT INTO `item` VALUES (229857, 0, 0, 0);
INSERT INTO `item` VALUES (229856, 0, 0, 0);
INSERT INTO `item` VALUES (229855, 0, 0, 0);
INSERT INTO `item` VALUES (229854, 0, 0, 0);
INSERT INTO `item` VALUES (229853, 0, 0, 0);
INSERT INTO `item` VALUES (229852, 0, 0, 0);
INSERT INTO `item` VALUES (229851, 0, 0, 0);
INSERT INTO `item` VALUES (229850, 0, 0, 0);
INSERT INTO `item` VALUES (229849, 0, 0, 0);
INSERT INTO `item` VALUES (229848, 0, 0, 0);
INSERT INTO `item` VALUES (229847, 0, 0, 0);
INSERT INTO `item` VALUES (229846, 0, 0, 0);
INSERT INTO `item` VALUES (229845, 0, 0, 0);
INSERT INTO `item` VALUES (229844, 0, 0, 0);
INSERT INTO `item` VALUES (229843, 0, 0, 0);
INSERT INTO `item` VALUES (229842, 0, 0, 0);
INSERT INTO `item` VALUES (229841, 0, 0, 0);
INSERT INTO `item` VALUES (229840, 0, 0, 0);
INSERT INTO `item` VALUES (229839, 0, 0, 0);
INSERT INTO `item` VALUES (229838, 0, 0, 0);
INSERT INTO `item` VALUES (229837, 0, 0, 0);
INSERT INTO `item` VALUES (229836, 0, 0, 0);
INSERT INTO `item` VALUES (229835, 0, 0, 0);
INSERT INTO `item` VALUES (229834, 0, 0, 0);
INSERT INTO `item` VALUES (229833, 0, 0, 0);
INSERT INTO `item` VALUES (229832, 0, 0, 0);
INSERT INTO `item` VALUES (229831, 0, 0, 0);
INSERT INTO `item` VALUES (229830, 0, 0, 0);
INSERT INTO `item` VALUES (229829, 0, 0, 0);
INSERT INTO `item` VALUES (229828, 0, 0, 0);
INSERT INTO `item` VALUES (229827, 0, 0, 0);
INSERT INTO `item` VALUES (229826, 0, 0, 0);
INSERT INTO `item` VALUES (229825, 0, 0, 0);
INSERT INTO `item` VALUES (229824, 0, 0, 0);
INSERT INTO `item` VALUES (229823, 0, 0, 0);
INSERT INTO `item` VALUES (229822, 0, 0, 0);
INSERT INTO `item` VALUES (229821, 0, 0, 0);
INSERT INTO `item` VALUES (229820, 0, 0, 0);
INSERT INTO `item` VALUES (229819, 0, 0, 0);
INSERT INTO `item` VALUES (229818, 0, 0, 0);
INSERT INTO `item` VALUES (229817, 0, 0, 0);
INSERT INTO `item` VALUES (229816, 0, 0, 0);
INSERT INTO `item` VALUES (229815, 0, 0, 0);
INSERT INTO `item` VALUES (229814, 0, 0, 0);
INSERT INTO `item` VALUES (229813, 0, 0, 0);
INSERT INTO `item` VALUES (229812, 0, 0, 0);
INSERT INTO `item` VALUES (229811, 0, 0, 0);
INSERT INTO `item` VALUES (229810, 0, 0, 0);
INSERT INTO `item` VALUES (229809, 0, 0, 0);
INSERT INTO `item` VALUES (229808, 0, 0, 0);
INSERT INTO `item` VALUES (229807, 0, 0, 0);
INSERT INTO `item` VALUES (229806, 0, 0, 0);
INSERT INTO `item` VALUES (229805, 0, 0, 0);
INSERT INTO `item` VALUES (229804, 0, 0, 0);
INSERT INTO `item` VALUES (229803, 0, 0, 0);
INSERT INTO `item` VALUES (229802, 0, 0, 0);
INSERT INTO `item` VALUES (229801, 0, 0, 0);
INSERT INTO `item` VALUES (229800, 0, 0, 0);
INSERT INTO `item` VALUES (229799, 0, 0, 0);
INSERT INTO `item` VALUES (229798, 0, 0, 0);
INSERT INTO `item` VALUES (229797, 0, 0, 0);
INSERT INTO `item` VALUES (229796, 0, 0, 0);
INSERT INTO `item` VALUES (229795, 0, 0, 0);
INSERT INTO `item` VALUES (229794, 0, 0, 0);
INSERT INTO `item` VALUES (229793, 0, 0, 0);
INSERT INTO `item` VALUES (229792, 0, 0, 0);
INSERT INTO `item` VALUES (229791, 0, 0, 0);
INSERT INTO `item` VALUES (229790, 0, 0, 0);
INSERT INTO `item` VALUES (229789, 0, 0, 0);
INSERT INTO `item` VALUES (229788, 0, 0, 0);
INSERT INTO `item` VALUES (229787, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229786, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229785, 72000, 72000, 72000);
INSERT INTO `item` VALUES (229784, 60000, 60000, 60000);
INSERT INTO `item` VALUES (229783, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229782, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229781, 24000, 24000, 24000);
INSERT INTO `item` VALUES (229780, 72000, 72000, 72000);
INSERT INTO `item` VALUES (229779, 144000, 144000, 144000);
INSERT INTO `item` VALUES (229778, 0, 0, 0);
INSERT INTO `item` VALUES (229777, 0, 0, 0);
INSERT INTO `item` VALUES (229776, 0, 0, 0);
INSERT INTO `item` VALUES (229775, 0, 0, 0);
INSERT INTO `item` VALUES (229774, 0, 0, 0);
INSERT INTO `item` VALUES (229773, 0, 0, 0);
INSERT INTO `item` VALUES (229772, 0, 0, 0);
INSERT INTO `item` VALUES (229771, 0, 0, 0);
INSERT INTO `item` VALUES (229770, 0, 0, 0);
INSERT INTO `item` VALUES (229769, 0, 0, 0);
INSERT INTO `item` VALUES (229768, 0, 0, 0);
INSERT INTO `item` VALUES (229767, 0, 0, 0);
INSERT INTO `item` VALUES (229766, 0, 0, 0);
INSERT INTO `item` VALUES (229765, 0, 0, 0);
INSERT INTO `item` VALUES (229764, 0, 0, 0);
INSERT INTO `item` VALUES (229763, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229762, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229761, 0, 0, 0);
INSERT INTO `item` VALUES (229760, 0, 0, 0);
INSERT INTO `item` VALUES (229759, 0, 0, 0);
INSERT INTO `item` VALUES (229758, 0, 0, 0);
INSERT INTO `item` VALUES (229757, 0, 0, 0);
INSERT INTO `item` VALUES (229756, 0, 0, 0);
INSERT INTO `item` VALUES (229755, 0, 0, 0);
INSERT INTO `item` VALUES (229754, 0, 0, 0);
INSERT INTO `item` VALUES (229753, 0, 0, 0);
INSERT INTO `item` VALUES (229752, 0, 0, 0);
INSERT INTO `item` VALUES (229751, 0, 0, 0);
INSERT INTO `item` VALUES (229750, 0, 0, 0);
INSERT INTO `item` VALUES (229749, 0, 0, 0);
INSERT INTO `item` VALUES (229748, 0, 0, 0);
INSERT INTO `item` VALUES (229747, 0, 0, 0);
INSERT INTO `item` VALUES (229746, 0, 0, 0);
INSERT INTO `item` VALUES (229745, 0, 0, 0);
INSERT INTO `item` VALUES (229744, 96000, 96000, 96000);
INSERT INTO `item` VALUES (229743, 72000, 72000, 72000);
INSERT INTO `item` VALUES (229742, 6000, 6000, 6000);
INSERT INTO `item` VALUES (229741, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229740, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229739, 120000, 120000, 120000);
INSERT INTO `item` VALUES (229738, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229737, 48000, 48000, 48000);
INSERT INTO `item` VALUES (229736, 0, 0, 0);
INSERT INTO `item` VALUES (229735, 0, 0, 0);
INSERT INTO `item` VALUES (229734, 0, 0, 0);
INSERT INTO `item` VALUES (229733, 0, 0, 0);
INSERT INTO `item` VALUES (229732, 0, 0, 0);
INSERT INTO `item` VALUES (229731, 0, 0, 0);
INSERT INTO `item` VALUES (229730, 0, 0, 0);
INSERT INTO `item` VALUES (229729, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229728, 72000, 72000, 72000);
INSERT INTO `item` VALUES (229727, 48000, 48000, 48000);
INSERT INTO `item` VALUES (229726, 72000, 72000, 72000);
INSERT INTO `item` VALUES (229725, 0, 0, 0);
INSERT INTO `item` VALUES (229724, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229723, 120000, 120000, 120000);
INSERT INTO `item` VALUES (229722, 120000, 120000, 120000);
INSERT INTO `item` VALUES (229721, 72000, 72000, 72000);
INSERT INTO `item` VALUES (229720, 24000, 24000, 24000);
INSERT INTO `item` VALUES (229719, 0, 0, 0);
INSERT INTO `item` VALUES (229718, 0, 0, 0);
INSERT INTO `item` VALUES (229717, 0, 0, 0);
INSERT INTO `item` VALUES (229716, 0, 0, 0);
INSERT INTO `item` VALUES (229715, 0, 0, 0);
INSERT INTO `item` VALUES (229714, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229713, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229712, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229711, 120000, 120000, 120000);
INSERT INTO `item` VALUES (229710, 48000, 48000, 48000);
INSERT INTO `item` VALUES (229709, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229708, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229707, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229706, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229705, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229704, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229703, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229702, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229701, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229700, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229699, 0, 0, 0);
INSERT INTO `item` VALUES (229698, 0, 0, 0);
INSERT INTO `item` VALUES (229697, 0, 0, 0);
INSERT INTO `item` VALUES (229696, 0, 0, 0);
INSERT INTO `item` VALUES (229695, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229694, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229693, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229692, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229691, 96000, 96000, 96000);
INSERT INTO `item` VALUES (229690, 0, 0, 0);
INSERT INTO `item` VALUES (229689, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229688, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229687, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229686, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229685, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229684, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229683, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229682, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229681, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229680, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229679, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229678, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229677, 120000, 120000, 120000);
INSERT INTO `item` VALUES (229676, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229675, 60000, 60000, 60000);
INSERT INTO `item` VALUES (229674, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229673, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229672, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229671, 0, 0, 0);
INSERT INTO `item` VALUES (229670, 0, 0, 0);
INSERT INTO `item` VALUES (229669, 0, 0, 0);
INSERT INTO `item` VALUES (229668, 0, 0, 0);
INSERT INTO `item` VALUES (229667, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229666, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229665, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229664, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229663, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229662, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229661, 0, 0, 0);
INSERT INTO `item` VALUES (229660, 144000, 144000, 144000);
INSERT INTO `item` VALUES (229659, 120000, 120000, 120000);
INSERT INTO `item` VALUES (229658, 120000, 120000, 120000);
INSERT INTO `item` VALUES (229657, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229656, 0, 0, 0);
INSERT INTO `item` VALUES (229655, 0, 0, 0);
INSERT INTO `item` VALUES (229654, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229653, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229652, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229651, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229650, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229649, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229648, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229647, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229646, 0, 0, 0);
INSERT INTO `item` VALUES (229645, 72000, 72000, 72000);
INSERT INTO `item` VALUES (229644, 60000, 60000, 60000);
INSERT INTO `item` VALUES (229643, 60000, 60000, 60000);
INSERT INTO `item` VALUES (229642, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229641, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229640, 0, 0, 0);
INSERT INTO `item` VALUES (229639, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229638, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229637, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229636, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229635, 0, 0, 0);
INSERT INTO `item` VALUES (229634, 0, 0, 0);
INSERT INTO `item` VALUES (229633, 60000, 60000, 60000);
INSERT INTO `item` VALUES (229632, 60000, 60000, 60000);
INSERT INTO `item` VALUES (229631, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229630, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229629, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229628, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229627, 0, 0, 0);
INSERT INTO `item` VALUES (229626, 120000, 120000, 120000);
INSERT INTO `item` VALUES (229625, 120000, 120000, 120000);
INSERT INTO `item` VALUES (229624, 120000, 120000, 120000);
INSERT INTO `item` VALUES (229623, 120000, 120000, 120000);
INSERT INTO `item` VALUES (229622, 6000, 6000, 6000);
INSERT INTO `item` VALUES (229621, 6000, 6000, 6000);
INSERT INTO `item` VALUES (229620, 60000, 60000, 60000);
INSERT INTO `item` VALUES (229619, 60000, 60000, 60000);
INSERT INTO `item` VALUES (229618, 60000, 60000, 60000);
INSERT INTO `item` VALUES (229617, 60000, 60000, 60000);
INSERT INTO `item` VALUES (229616, 120000, 120000, 120000);
INSERT INTO `item` VALUES (229615, 0, 0, 0);
INSERT INTO `item` VALUES (229614, 60000, 60000, 60000);
INSERT INTO `item` VALUES (229613, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229612, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229611, 0, 0, 0);
INSERT INTO `item` VALUES (229610, 0, 0, 0);
INSERT INTO `item` VALUES (229609, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229608, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229607, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229606, 0, 0, 0);
INSERT INTO `item` VALUES (229605, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229604, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229603, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229602, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229601, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229600, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229599, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229598, 54000, 54000, 54000);
INSERT INTO `item` VALUES (229597, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229596, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229595, 120000, 120000, 120000);
INSERT INTO `item` VALUES (229594, 60000, 60000, 60000);
INSERT INTO `item` VALUES (229593, 0, 0, 0);
INSERT INTO `item` VALUES (229592, 36000, 36000, 36000);
INSERT INTO `item` VALUES (229591, 48000, 48000, 48000);
INSERT INTO `item` VALUES (229590, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229589, 60000, 60000, 60000);
INSERT INTO `item` VALUES (229588, 36000, 36000, 36000);
INSERT INTO `item` VALUES (229587, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229586, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229585, 0, 0, 0);
INSERT INTO `item` VALUES (229584, 21000, 21000, 21000);
INSERT INTO `item` VALUES (229583, 16800, 16800, 16800);
INSERT INTO `item` VALUES (229582, 0, 0, 0);
INSERT INTO `item` VALUES (229581, 0, 0, 0);
INSERT INTO `item` VALUES (229580, 48000, 48000, 48000);
INSERT INTO `item` VALUES (229579, 48000, 48000, 48000);
INSERT INTO `item` VALUES (229578, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229577, 0, 0, 0);
INSERT INTO `item` VALUES (229576, 0, 0, 0);
INSERT INTO `item` VALUES (229575, 0, 0, 0);
INSERT INTO `item` VALUES (229574, 54000, 54000, 54000);
INSERT INTO `item` VALUES (229573, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229572, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229571, 90000, 90000, 90000);
INSERT INTO `item` VALUES (229570, 49500, 49500, 49500);
INSERT INTO `item` VALUES (229569, 49500, 49500, 49500);
INSERT INTO `item` VALUES (229568, 49500, 49500, 49500);
INSERT INTO `item` VALUES (229567, 49500, 49500, 49500);
INSERT INTO `item` VALUES (229566, 0, 0, 0);
INSERT INTO `item` VALUES (229565, 0, 0, 0);
INSERT INTO `item` VALUES (229564, 0, 0, 0);
INSERT INTO `item` VALUES (229563, 0, 0, 0);
INSERT INTO `item` VALUES (229562, 0, 0, 0);
INSERT INTO `item` VALUES (229561, 0, 0, 0);
INSERT INTO `item` VALUES (229560, 0, 0, 0);
INSERT INTO `item` VALUES (229559, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229558, 49500, 49500, 49500);
INSERT INTO `item` VALUES (229557, 49500, 49500, 49500);
INSERT INTO `item` VALUES (229556, 49500, 49500, 49500);
INSERT INTO `item` VALUES (229555, 49500, 49500, 49500);
INSERT INTO `item` VALUES (229554, 36000, 36000, 36000);
INSERT INTO `item` VALUES (229553, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229552, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229551, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229550, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229549, 22800, 22800, 22800);
INSERT INTO `item` VALUES (229548, 48000, 48000, 48000);
INSERT INTO `item` VALUES (229547, 49500, 49500, 49500);
INSERT INTO `item` VALUES (229546, 0, 0, 0);
INSERT INTO `item` VALUES (229545, 36000, 36000, 36000);
INSERT INTO `item` VALUES (229544, 28800, 28800, 28800);
INSERT INTO `item` VALUES (229543, 90000, 90000, 90000);
INSERT INTO `item` VALUES (229542, 72000, 72000, 72000);
INSERT INTO `item` VALUES (229541, 43200, 43200, 43200);
INSERT INTO `item` VALUES (229540, 96000, 96000, 96000);
INSERT INTO `item` VALUES (229539, 0, 0, 0);
INSERT INTO `item` VALUES (229538, 52800, 52800, 52800);
INSERT INTO `item` VALUES (229537, 103200, 103200, 103200);
INSERT INTO `item` VALUES (229536, 37200, 37200, 37200);
INSERT INTO `item` VALUES (229535, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229534, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229533, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229532, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229531, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229530, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229529, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229528, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229527, 0, 0, 0);
INSERT INTO `item` VALUES (229526, 0, 0, 0);
INSERT INTO `item` VALUES (229525, 0, 0, 0);
INSERT INTO `item` VALUES (229524, 0, 0, 0);
INSERT INTO `item` VALUES (229523, 0, 0, 0);
INSERT INTO `item` VALUES (229522, 0, 0, 0);
INSERT INTO `item` VALUES (229521, 0, 0, 0);
INSERT INTO `item` VALUES (229520, 0, 0, 0);
INSERT INTO `item` VALUES (229519, 0, 0, 0);
INSERT INTO `item` VALUES (229518, 0, 0, 0);
INSERT INTO `item` VALUES (229517, 0, 0, 0);
INSERT INTO `item` VALUES (229516, 0, 0, 0);
INSERT INTO `item` VALUES (229515, 0, 0, 0);
INSERT INTO `item` VALUES (229514, 33000, 33000, 33000);
INSERT INTO `item` VALUES (229513, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229512, 15000, 15000, 15000);
INSERT INTO `item` VALUES (229511, 21000, 21000, 21000);
INSERT INTO `item` VALUES (229510, 18000, 18000, 18000);
INSERT INTO `item` VALUES (229509, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229508, 27000, 27000, 27000);
INSERT INTO `item` VALUES (229507, 39000, 39000, 39000);
INSERT INTO `item` VALUES (229506, 39000, 39000, 39000);
INSERT INTO `item` VALUES (229505, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229504, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229503, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229502, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229501, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229500, 120000, 120000, 120000);
INSERT INTO `item` VALUES (229499, 27000, 27000, 27000);
INSERT INTO `item` VALUES (229498, 28800, 28800, 28800);
INSERT INTO `item` VALUES (229497, 31200, 31200, 31200);
INSERT INTO `item` VALUES (229496, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229495, 90000, 90000, 90000);
INSERT INTO `item` VALUES (229494, 90000, 90000, 90000);
INSERT INTO `item` VALUES (229493, 48000, 48000, 48000);
INSERT INTO `item` VALUES (229492, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229491, 21000, 21000, 21000);
INSERT INTO `item` VALUES (229490, 21000, 21000, 21000);
INSERT INTO `item` VALUES (229489, 45000, 45000, 45000);
INSERT INTO `item` VALUES (229488, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229487, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229486, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229485, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229484, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229483, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229482, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229481, 24000, 24000, 24000);
INSERT INTO `item` VALUES (229480, 27000, 27000, 27000);
INSERT INTO `item` VALUES (229479, 48000, 48000, 48000);
INSERT INTO `item` VALUES (229478, 48000, 48000, 48000);
INSERT INTO `item` VALUES (229477, 21000, 21000, 21000);
INSERT INTO `item` VALUES (229476, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229475, 48000, 48000, 48000);
INSERT INTO `item` VALUES (229474, 45000, 45000, 45000);
INSERT INTO `item` VALUES (229473, 0, 0, 0);
INSERT INTO `item` VALUES (229472, 0, 0, 0);
INSERT INTO `item` VALUES (229471, 0, 0, 0);
INSERT INTO `item` VALUES (229470, 0, 0, 0);
INSERT INTO `item` VALUES (229469, 0, 0, 0);
INSERT INTO `item` VALUES (229468, 0, 0, 0);
INSERT INTO `item` VALUES (229467, 0, 0, 0);
INSERT INTO `item` VALUES (229466, 0, 0, 0);
INSERT INTO `item` VALUES (229465, 0, 0, 0);
INSERT INTO `item` VALUES (229464, 0, 0, 0);
INSERT INTO `item` VALUES (229463, 0, 0, 0);
INSERT INTO `item` VALUES (229462, 0, 0, 0);
INSERT INTO `item` VALUES (229461, 0, 0, 0);
INSERT INTO `item` VALUES (229460, 0, 0, 0);
INSERT INTO `item` VALUES (229459, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229458, 42000, 42000, 42000);
INSERT INTO `item` VALUES (229457, 39000, 39000, 39000);
INSERT INTO `item` VALUES (229456, 18000, 18000, 18000);
INSERT INTO `item` VALUES (229455, 27000, 27000, 27000);
INSERT INTO `item` VALUES (229454, 21000, 21000, 21000);
INSERT INTO `item` VALUES (229453, 18000, 18000, 18000);
INSERT INTO `item` VALUES (229452, 0, 0, 0);
INSERT INTO `item` VALUES (229451, 0, 0, 0);
INSERT INTO `item` VALUES (229450, 0, 0, 0);
INSERT INTO `item` VALUES (229449, 0, 0, 0);
INSERT INTO `item` VALUES (229448, 0, 0, 0);
INSERT INTO `item` VALUES (229447, 0, 0, 0);
INSERT INTO `item` VALUES (229446, 0, 0, 0);
INSERT INTO `item` VALUES (229445, 0, 0, 0);
INSERT INTO `item` VALUES (229444, 0, 0, 0);
INSERT INTO `item` VALUES (229443, 0, 0, 0);
INSERT INTO `item` VALUES (229442, 0, 0, 0);
INSERT INTO `item` VALUES (229441, 0, 0, 0);
INSERT INTO `item` VALUES (229440, 0, 0, 0);
INSERT INTO `item` VALUES (229439, 0, 0, 0);
INSERT INTO `item` VALUES (229438, 0, 0, 0);
INSERT INTO `item` VALUES (229437, 0, 0, 0);
INSERT INTO `item` VALUES (229436, 21000, 21000, 21000);
INSERT INTO `item` VALUES (229435, 21000, 21000, 21000);
INSERT INTO `item` VALUES (229434, 18000, 18000, 18000);
INSERT INTO `item` VALUES (229433, 27000, 27000, 27000);
INSERT INTO `item` VALUES (229432, 24000, 24000, 24000);
INSERT INTO `item` VALUES (229431, 24000, 24000, 24000);
INSERT INTO `item` VALUES (229430, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229429, 30000, 30000, 30000);
INSERT INTO `item` VALUES (229428, 18000, 18000, 18000);
INSERT INTO `item` VALUES (229427, 39000, 39000, 39000);
INSERT INTO `item` VALUES (229426, 21000, 21000, 21000);
INSERT INTO `item` VALUES (229425, 33000, 33000, 33000);
INSERT INTO `item` VALUES (229424, 0, 0, 0);
INSERT INTO `item` VALUES (229423, 18000, 18000, 18000);
INSERT INTO `item` VALUES (229422, 18000, 18000, 18000);
INSERT INTO `item` VALUES (229421, 27000, 27000, 27000);
INSERT INTO `item` VALUES (229420, 14400, 14400, 14400);
INSERT INTO `item` VALUES (229419, 14400, 14400, 14400);
INSERT INTO `item` VALUES (229418, 19200, 19200, 19200);
INSERT INTO `item` VALUES (229417, 27000, 27000, 27000);
INSERT INTO `item` VALUES (229416, 18000, 18000, 18000);
INSERT INTO `item` VALUES (229415, 36000, 36000, 36000);
INSERT INTO `item` VALUES (229414, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229413, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229412, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229411, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229410, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229409, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229408, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229407, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229406, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229405, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229404, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229403, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229402, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229401, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229400, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229399, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229398, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229397, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229396, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229395, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229394, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229393, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229392, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229391, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229390, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229389, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229388, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229387, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229386, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229385, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229384, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229383, 12000, 12000, 12000);
INSERT INTO `item` VALUES (229382, 7200, 7200, 7200);
INSERT INTO `item` VALUES (229381, 7200, 7200, 7200);
INSERT INTO `item` VALUES (229380, 7200, 7200, 7200);
INSERT INTO `item` VALUES (229379, 7200, 7200, 7200);
INSERT INTO `item` VALUES (229378, 7200, 7200, 7200);
INSERT INTO `item` VALUES (229377, 7200, 7200, 7200);
INSERT INTO `item` VALUES (229376, 0, 0, 0);
INSERT INTO `item` VALUES (66080, 0, 0, 0);
INSERT INTO `item` VALUES (66079, 0, 0, 0);
INSERT INTO `item` VALUES (66078, 0, 0, 0);
INSERT INTO `item` VALUES (66077, 0, 0, 0);
INSERT INTO `item` VALUES (66076, 0, 0, 0);
INSERT INTO `item` VALUES (66075, 0, 0, 0);
INSERT INTO `item` VALUES (66074, 0, 0, 0);
INSERT INTO `item` VALUES (66073, 0, 0, 0);
INSERT INTO `item` VALUES (66072, 0, 0, 0);
INSERT INTO `item` VALUES (66071, 0, 0, 0);
INSERT INTO `item` VALUES (66070, 0, 0, 0);
INSERT INTO `item` VALUES (66069, 0, 0, 0);
INSERT INTO `item` VALUES (66068, 0, 0, 0);
INSERT INTO `item` VALUES (66067, 0, 0, 0);
INSERT INTO `item` VALUES (66066, 0, 0, 0);
INSERT INTO `item` VALUES (66065, 0, 0, 0);
INSERT INTO `item` VALUES (66064, 0, 0, 0);
INSERT INTO `item` VALUES (66063, 0, 0, 0);
INSERT INTO `item` VALUES (66062, 0, 0, 0);
INSERT INTO `item` VALUES (66061, 0, 0, 0);
INSERT INTO `item` VALUES (66060, 0, 0, 0);
INSERT INTO `item` VALUES (66059, 0, 0, 0);
INSERT INTO `item` VALUES (66058, 0, 0, 0);
INSERT INTO `item` VALUES (66057, 0, 0, 0);
INSERT INTO `item` VALUES (66056, 0, 0, 0);
INSERT INTO `item` VALUES (66055, 0, 0, 0);
INSERT INTO `item` VALUES (66054, 0, 0, 0);
INSERT INTO `item` VALUES (66053, 0, 0, 0);
INSERT INTO `item` VALUES (66052, 0, 0, 0);
INSERT INTO `item` VALUES (66051, 0, 0, 0);
INSERT INTO `item` VALUES (66050, 0, 0, 0);
INSERT INTO `item` VALUES (66049, 0, 0, 0);
INSERT INTO `item` VALUES (66048, 0, 0, 0);
INSERT INTO `item` VALUES (66047, 0, 0, 0);
INSERT INTO `item` VALUES (66046, 0, 0, 0);
INSERT INTO `item` VALUES (66045, 0, 0, 0);
INSERT INTO `item` VALUES (66044, 0, 0, 0);
INSERT INTO `item` VALUES (66043, 0, 0, 0);
INSERT INTO `item` VALUES (66042, 0, 0, 0);
INSERT INTO `item` VALUES (66041, 0, 0, 0);
INSERT INTO `item` VALUES (66040, 0, 0, 0);
INSERT INTO `item` VALUES (66039, 0, 0, 0);
INSERT INTO `item` VALUES (66038, 0, 0, 0);
INSERT INTO `item` VALUES (66037, 0, 0, 0);
INSERT INTO `item` VALUES (66036, 0, 0, 0);
INSERT INTO `item` VALUES (66035, 0, 0, 0);
INSERT INTO `item` VALUES (66034, 0, 0, 0);
INSERT INTO `item` VALUES (66033, 0, 0, 0);
INSERT INTO `item` VALUES (66032, 0, 0, 0);
INSERT INTO `item` VALUES (66031, 0, 0, 0);
INSERT INTO `item` VALUES (66030, 0, 0, 0);
INSERT INTO `item` VALUES (66029, 0, 0, 0);
INSERT INTO `item` VALUES (66028, 0, 0, 0);
INSERT INTO `item` VALUES (66027, 0, 0, 0);
INSERT INTO `item` VALUES (66026, 0, 0, 0);
INSERT INTO `item` VALUES (66025, 0, 0, 0);
INSERT INTO `item` VALUES (66024, 0, 0, 0);
INSERT INTO `item` VALUES (66023, 0, 0, 0);
INSERT INTO `item` VALUES (66022, 0, 0, 0);
INSERT INTO `item` VALUES (66021, 0, 0, 0);
INSERT INTO `item` VALUES (66020, 0, 0, 0);
INSERT INTO `item` VALUES (66019, 0, 0, 0);
INSERT INTO `item` VALUES (66018, 0, 0, 0);
INSERT INTO `item` VALUES (66017, 0, 0, 0);
INSERT INTO `item` VALUES (66016, 0, 0, 0);
INSERT INTO `item` VALUES (66015, 0, 0, 0);
INSERT INTO `item` VALUES (66014, 0, 0, 0);
INSERT INTO `item` VALUES (66013, 0, 0, 0);
INSERT INTO `item` VALUES (66012, 0, 0, 0);
INSERT INTO `item` VALUES (66011, 0, 0, 0);
INSERT INTO `item` VALUES (66010, 0, 0, 0);
INSERT INTO `item` VALUES (66009, 0, 0, 0);
INSERT INTO `item` VALUES (66008, 0, 0, 0);
INSERT INTO `item` VALUES (66007, 0, 0, 0);
INSERT INTO `item` VALUES (66006, 0, 0, 0);
INSERT INTO `item` VALUES (66005, 0, 0, 0);
INSERT INTO `item` VALUES (66003, 0, 0, 0);
INSERT INTO `item` VALUES (66002, 180000, 180000, 180000);
INSERT INTO `item` VALUES (66001, 0, 0, 0);
INSERT INTO `item` VALUES (66000, 0, 0, 0);
INSERT INTO `item` VALUES (65999, 0, 0, 0);
INSERT INTO `item` VALUES (65998, 0, 0, 0);
INSERT INTO `item` VALUES (65997, 0, 0, 0);
INSERT INTO `item` VALUES (65996, 0, 0, 0);
INSERT INTO `item` VALUES (65995, 150000, 150000, 150000);
INSERT INTO `item` VALUES (65994, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65993, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65992, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65991, 36000, 36000, 36000);
INSERT INTO `item` VALUES (65990, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65989, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65988, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65987, 36000, 36000, 36000);
INSERT INTO `item` VALUES (65986, 30000, 30000, 30000);
INSERT INTO `item` VALUES (65985, 30000, 30000, 30000);
INSERT INTO `item` VALUES (65984, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65983, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65982, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65981, 30000, 30000, 30000);
INSERT INTO `item` VALUES (65980, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65979, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65978, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65977, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65976, 36000, 36000, 36000);
INSERT INTO `item` VALUES (65975, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65974, 30000, 30000, 30000);
INSERT INTO `item` VALUES (65973, 30000, 30000, 30000);
INSERT INTO `item` VALUES (65972, 12000, 12000, 12000);
INSERT INTO `item` VALUES (65971, 12000, 12000, 12000);
INSERT INTO `item` VALUES (65970, 12000, 12000, 12000);
INSERT INTO `item` VALUES (65969, 0, 0, 0);
INSERT INTO `item` VALUES (65968, 0, 0, 0);
INSERT INTO `item` VALUES (65967, 0, 0, 0);
INSERT INTO `item` VALUES (65966, 0, 0, 0);
INSERT INTO `item` VALUES (65965, 0, 0, 0);
INSERT INTO `item` VALUES (65964, 0, 0, 0);
INSERT INTO `item` VALUES (65963, 0, 0, 0);
INSERT INTO `item` VALUES (65962, 0, 0, 0);
INSERT INTO `item` VALUES (65961, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65960, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65959, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65958, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65957, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65956, 84000, 84000, 84000);
INSERT INTO `item` VALUES (65955, 84000, 84000, 84000);
INSERT INTO `item` VALUES (65954, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65953, 36000, 36000, 36000);
INSERT INTO `item` VALUES (65952, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65951, 84000, 84000, 84000);
INSERT INTO `item` VALUES (65950, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65949, 36000, 36000, 36000);
INSERT INTO `item` VALUES (65948, 36000, 36000, 36000);
INSERT INTO `item` VALUES (65947, 36000, 36000, 36000);
INSERT INTO `item` VALUES (65946, 120000, 120000, 120000);
INSERT INTO `item` VALUES (65945, 36000, 36000, 36000);
INSERT INTO `item` VALUES (65944, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65943, 36000, 36000, 36000);
INSERT INTO `item` VALUES (65942, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65941, 84000, 84000, 84000);
INSERT INTO `item` VALUES (65940, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65939, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65938, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65937, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65936, 0, 0, 0);
INSERT INTO `item` VALUES (65935, 84000, 84000, 84000);
INSERT INTO `item` VALUES (65934, 36000, 36000, 36000);
INSERT INTO `item` VALUES (65933, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65932, 36000, 36000, 36000);
INSERT INTO `item` VALUES (65931, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65930, 36000, 36000, 36000);
INSERT INTO `item` VALUES (65929, 84000, 84000, 84000);
INSERT INTO `item` VALUES (65928, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65927, 96000, 96000, 96000);
INSERT INTO `item` VALUES (65926, 312000, 312000, 312000);
INSERT INTO `item` VALUES (65925, 108000, 108000, 108000);
INSERT INTO `item` VALUES (65924, 108000, 108000, 108000);
INSERT INTO `item` VALUES (65923, 108000, 108000, 108000);
INSERT INTO `item` VALUES (65922, 108000, 108000, 108000);
INSERT INTO `item` VALUES (65921, 108000, 108000, 108000);
INSERT INTO `item` VALUES (65920, 108000, 108000, 108000);
INSERT INTO `item` VALUES (65919, 108000, 108000, 108000);
INSERT INTO `item` VALUES (65918, 108000, 108000, 108000);
INSERT INTO `item` VALUES (65917, 144000, 144000, 144000);
INSERT INTO `item` VALUES (65916, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65915, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65914, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65913, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65912, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65911, 36000, 36000, 36000);
INSERT INTO `item` VALUES (65910, 96000, 96000, 96000);
INSERT INTO `item` VALUES (65909, 240000, 240000, 240000);
INSERT INTO `item` VALUES (65908, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65907, 36000, 36000, 36000);
INSERT INTO `item` VALUES (65906, 150000, 150000, 150000);
INSERT INTO `item` VALUES (65905, 120000, 120000, 120000);
INSERT INTO `item` VALUES (65904, 0, 0, 0);
INSERT INTO `item` VALUES (65903, 0, 0, 0);
INSERT INTO `item` VALUES (65902, 0, 0, 0);
INSERT INTO `item` VALUES (65901, 0, 0, 0);
INSERT INTO `item` VALUES (65900, 0, 0, 0);
INSERT INTO `item` VALUES (65899, 0, 0, 0);
INSERT INTO `item` VALUES (65898, 0, 0, 0);
INSERT INTO `item` VALUES (65897, 0, 0, 0);
INSERT INTO `item` VALUES (65896, 0, 0, 0);
INSERT INTO `item` VALUES (65895, 0, 0, 0);
INSERT INTO `item` VALUES (65894, 0, 0, 0);
INSERT INTO `item` VALUES (65893, 0, 0, 0);
INSERT INTO `item` VALUES (65892, 0, 0, 0);
INSERT INTO `item` VALUES (65891, 0, 0, 0);
INSERT INTO `item` VALUES (65890, 0, 0, 0);
INSERT INTO `item` VALUES (65889, 0, 0, 0);
INSERT INTO `item` VALUES (65888, 0, 0, 0);
INSERT INTO `item` VALUES (65887, 0, 0, 0);
INSERT INTO `item` VALUES (65886, 0, 0, 0);
INSERT INTO `item` VALUES (65885, 0, 0, 0);
INSERT INTO `item` VALUES (65884, 0, 0, 0);
INSERT INTO `item` VALUES (65883, 0, 0, 0);
INSERT INTO `item` VALUES (65882, 0, 0, 0);
INSERT INTO `item` VALUES (65881, 0, 0, 0);
INSERT INTO `item` VALUES (65880, 0, 0, 0);
INSERT INTO `item` VALUES (65879, 0, 0, 0);
INSERT INTO `item` VALUES (65878, 0, 0, 0);
INSERT INTO `item` VALUES (65877, 0, 0, 0);
INSERT INTO `item` VALUES (65876, 0, 0, 0);
INSERT INTO `item` VALUES (65875, 0, 0, 0);
INSERT INTO `item` VALUES (65874, 0, 0, 0);
INSERT INTO `item` VALUES (65873, 0, 0, 0);
INSERT INTO `item` VALUES (65872, 0, 0, 0);
INSERT INTO `item` VALUES (65871, 0, 0, 0);
INSERT INTO `item` VALUES (65870, 0, 0, 0);
INSERT INTO `item` VALUES (65869, 0, 0, 0);
INSERT INTO `item` VALUES (65868, 0, 0, 0);
INSERT INTO `item` VALUES (65867, 0, 0, 0);
INSERT INTO `item` VALUES (65866, 0, 0, 0);
INSERT INTO `item` VALUES (65865, 0, 0, 0);
INSERT INTO `item` VALUES (65864, 0, 0, 0);
INSERT INTO `item` VALUES (65863, 0, 0, 0);
INSERT INTO `item` VALUES (65862, 0, 0, 0);
INSERT INTO `item` VALUES (65861, 0, 0, 0);
INSERT INTO `item` VALUES (65860, 0, 0, 0);
INSERT INTO `item` VALUES (65859, 36000, 36000, 36000);
INSERT INTO `item` VALUES (65858, 36000, 36000, 36000);
INSERT INTO `item` VALUES (65857, 36000, 36000, 36000);
INSERT INTO `item` VALUES (65856, 36000, 36000, 36000);
INSERT INTO `item` VALUES (65855, 36000, 36000, 36000);
INSERT INTO `item` VALUES (65854, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65853, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65852, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65851, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65850, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65849, 96000, 96000, 96000);
INSERT INTO `item` VALUES (65848, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65847, 36000, 36000, 36000);
INSERT INTO `item` VALUES (65846, 84000, 84000, 84000);
INSERT INTO `item` VALUES (65845, 108000, 108000, 108000);
INSERT INTO `item` VALUES (65844, 0, 0, 0);
INSERT INTO `item` VALUES (65843, 0, 0, 0);
INSERT INTO `item` VALUES (65842, 0, 0, 0);
INSERT INTO `item` VALUES (65841, 0, 0, 0);
INSERT INTO `item` VALUES (65840, 0, 0, 0);
INSERT INTO `item` VALUES (65839, 0, 0, 0);
INSERT INTO `item` VALUES (65838, 0, 0, 0);
INSERT INTO `item` VALUES (65837, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65836, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65835, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65834, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65833, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65832, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65831, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65830, 0, 0, 0);
INSERT INTO `item` VALUES (65829, 0, 0, 0);
INSERT INTO `item` VALUES (65828, 0, 0, 0);
INSERT INTO `item` VALUES (65827, 0, 0, 0);
INSERT INTO `item` VALUES (65826, 0, 0, 0);
INSERT INTO `item` VALUES (65825, 0, 0, 0);
INSERT INTO `item` VALUES (65824, 0, 0, 0);
INSERT INTO `item` VALUES (65823, 0, 0, 0);
INSERT INTO `item` VALUES (65822, 0, 0, 0);
INSERT INTO `item` VALUES (65821, 0, 0, 0);
INSERT INTO `item` VALUES (65820, 0, 0, 0);
INSERT INTO `item` VALUES (65819, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65818, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65817, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65816, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65815, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65814, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65813, 108000, 108000, 108000);
INSERT INTO `item` VALUES (65812, 90000, 90000, 90000);
INSERT INTO `item` VALUES (65811, 6000, 6000, 6000);
INSERT INTO `item` VALUES (65810, 480000, 480000, 480000);
INSERT INTO `item` VALUES (65809, 240000, 240000, 240000);
INSERT INTO `item` VALUES (65808, 30000, 30000, 30000);
INSERT INTO `item` VALUES (65807, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65806, 108000, 108000, 108000);
INSERT INTO `item` VALUES (65805, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65804, 30000, 30000, 30000);
INSERT INTO `item` VALUES (65803, 132000, 132000, 132000);
INSERT INTO `item` VALUES (65802, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65801, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65800, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65799, 108000, 108000, 108000);
INSERT INTO `item` VALUES (65798, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65797, 0, 0, 0);
INSERT INTO `item` VALUES (65796, 480000, 480000, 480000);
INSERT INTO `item` VALUES (65795, 480000, 480000, 480000);
INSERT INTO `item` VALUES (65794, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65793, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65792, 7200, 7200, 7200);
INSERT INTO `item` VALUES (65791, 0, 0, 0);
INSERT INTO `item` VALUES (65790, 0, 0, 0);
INSERT INTO `item` VALUES (65789, 90000, 90000, 90000);
INSERT INTO `item` VALUES (65788, 90000, 90000, 90000);
INSERT INTO `item` VALUES (65787, 90000, 90000, 90000);
INSERT INTO `item` VALUES (65786, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65785, 90000, 90000, 90000);
INSERT INTO `item` VALUES (65784, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65783, 90000, 90000, 90000);
INSERT INTO `item` VALUES (65782, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65781, 30000, 30000, 30000);
INSERT INTO `item` VALUES (65780, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65779, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65778, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65777, 90000, 90000, 90000);
INSERT INTO `item` VALUES (65776, 90000, 90000, 90000);
INSERT INTO `item` VALUES (65775, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65774, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65773, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65772, 0, 0, 0);
INSERT INTO `item` VALUES (65771, 0, 0, 0);
INSERT INTO `item` VALUES (65770, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65769, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65768, 300000, 300000, 300000);
INSERT INTO `item` VALUES (65767, 180000, 180000, 180000);
INSERT INTO `item` VALUES (65766, 0, 0, 0);
INSERT INTO `item` VALUES (65765, 720000, 720000, 720000);
INSERT INTO `item` VALUES (65764, 720000, 720000, 720000);
INSERT INTO `item` VALUES (65763, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65762, 0, 0, 0);
INSERT INTO `item` VALUES (65761, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65760, 0, 0, 0);
INSERT INTO `item` VALUES (65759, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65758, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65757, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65756, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65755, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65754, 240000, 240000, 240000);
INSERT INTO `item` VALUES (65753, 108000, 108000, 108000);
INSERT INTO `item` VALUES (65752, 30000, 30000, 30000);
INSERT INTO `item` VALUES (65751, 30000, 30000, 30000);
INSERT INTO `item` VALUES (65750, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65749, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65748, 0, 0, 0);
INSERT INTO `item` VALUES (65747, 0, 0, 0);
INSERT INTO `item` VALUES (65746, 0, 0, 0);
INSERT INTO `item` VALUES (65745, 90000, 90000, 90000);
INSERT INTO `item` VALUES (65744, 120000, 120000, 120000);
INSERT INTO `item` VALUES (65743, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65742, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65741, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65740, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65739, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65738, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65737, 210000, 210000, 210000);
INSERT INTO `item` VALUES (65736, 30000, 30000, 30000);
INSERT INTO `item` VALUES (65735, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65734, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65733, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65732, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65731, 0, 0, 0);
INSERT INTO `item` VALUES (65730, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65729, 90000, 90000, 90000);
INSERT INTO `item` VALUES (65728, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65727, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65726, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65725, 108000, 108000, 108000);
INSERT INTO `item` VALUES (65724, 108000, 108000, 108000);
INSERT INTO `item` VALUES (65723, 0, 0, 0);
INSERT INTO `item` VALUES (65722, 132000, 132000, 132000);
INSERT INTO `item` VALUES (65721, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65720, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65719, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65718, 0, 0, 0);
INSERT INTO `item` VALUES (65717, 0, 0, 0);
INSERT INTO `item` VALUES (65716, 0, 0, 0);
INSERT INTO `item` VALUES (65715, 0, 0, 0);
INSERT INTO `item` VALUES (65714, 270000, 270000, 270000);
INSERT INTO `item` VALUES (65713, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65712, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65711, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65710, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65709, 0, 0, 0);
INSERT INTO `item` VALUES (65708, 108000, 108000, 108000);
INSERT INTO `item` VALUES (65707, 108000, 108000, 108000);
INSERT INTO `item` VALUES (65706, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65705, 132000, 132000, 132000);
INSERT INTO `item` VALUES (65704, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65703, 30000, 30000, 30000);
INSERT INTO `item` VALUES (65702, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65701, 270000, 270000, 270000);
INSERT INTO `item` VALUES (65700, 0, 0, 0);
INSERT INTO `item` VALUES (65699, 0, 0, 0);
INSERT INTO `item` VALUES (65698, 0, 0, 0);
INSERT INTO `item` VALUES (65697, 0, 0, 0);
INSERT INTO `item` VALUES (65696, 0, 0, 0);
INSERT INTO `item` VALUES (65695, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65694, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65693, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65692, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65691, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65690, 78000, 78000, 78000);
INSERT INTO `item` VALUES (65689, 0, 0, 0);
INSERT INTO `item` VALUES (65688, 0, 0, 0);
INSERT INTO `item` VALUES (65687, 0, 0, 0);
INSERT INTO `item` VALUES (65686, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65685, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65684, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65683, 66000, 66000, 66000);
INSERT INTO `item` VALUES (65682, 66000, 66000, 66000);
INSERT INTO `item` VALUES (65681, 0, 0, 0);
INSERT INTO `item` VALUES (65680, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65679, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65678, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65677, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65676, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65675, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65674, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65673, 108000, 108000, 108000);
INSERT INTO `item` VALUES (65672, 66000, 66000, 66000);
INSERT INTO `item` VALUES (65671, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65670, 78000, 78000, 78000);
INSERT INTO `item` VALUES (65669, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65668, 0, 0, 0);
INSERT INTO `item` VALUES (65667, 0, 0, 0);
INSERT INTO `item` VALUES (65666, 0, 0, 0);
INSERT INTO `item` VALUES (65665, 132000, 132000, 132000);
INSERT INTO `item` VALUES (65664, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65663, 78000, 78000, 78000);
INSERT INTO `item` VALUES (65662, 132000, 132000, 132000);
INSERT INTO `item` VALUES (65661, 0, 0, 0);
INSERT INTO `item` VALUES (65660, 108000, 108000, 108000);
INSERT INTO `item` VALUES (65659, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65658, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65657, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65656, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65655, 108000, 108000, 108000);
INSERT INTO `item` VALUES (65654, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65653, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65652, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65651, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65650, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65649, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65648, 0, 0, 0);
INSERT INTO `item` VALUES (65647, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65646, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65645, 57000, 57000, 57000);
INSERT INTO `item` VALUES (65644, 54000, 54000, 54000);
INSERT INTO `item` VALUES (65643, 0, 0, 0);
INSERT INTO `item` VALUES (65642, 0, 0, 0);
INSERT INTO `item` VALUES (65641, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65640, 54000, 54000, 54000);
INSERT INTO `item` VALUES (65639, 0, 0, 0);
INSERT INTO `item` VALUES (65638, 57000, 57000, 57000);
INSERT INTO `item` VALUES (65637, 57000, 57000, 57000);
INSERT INTO `item` VALUES (65636, 132000, 132000, 132000);
INSERT INTO `item` VALUES (65635, 132000, 132000, 132000);
INSERT INTO `item` VALUES (65634, 81000, 81000, 81000);
INSERT INTO `item` VALUES (65633, 78000, 78000, 78000);
INSERT INTO `item` VALUES (65632, 132000, 132000, 132000);
INSERT INTO `item` VALUES (65631, 0, 0, 0);
INSERT INTO `item` VALUES (65630, 180000, 180000, 180000);
INSERT INTO `item` VALUES (65629, 66000, 66000, 66000);
INSERT INTO `item` VALUES (65628, 90000, 90000, 90000);
INSERT INTO `item` VALUES (65627, 59400, 59400, 59400);
INSERT INTO `item` VALUES (65626, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65625, 66000, 66000, 66000);
INSERT INTO `item` VALUES (65624, 0, 0, 0);
INSERT INTO `item` VALUES (65623, 0, 0, 0);
INSERT INTO `item` VALUES (65622, 0, 0, 0);
INSERT INTO `item` VALUES (65621, 72000, 72000, 72000);
INSERT INTO `item` VALUES (65620, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65619, 57000, 57000, 57000);
INSERT INTO `item` VALUES (65618, 48000, 48000, 48000);
INSERT INTO `item` VALUES (65617, 111000, 111000, 111000);
INSERT INTO `item` VALUES (65616, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65615, 57000, 57000, 57000);
INSERT INTO `item` VALUES (65614, 66000, 66000, 66000);
INSERT INTO `item` VALUES (65613, 0, 0, 0);
INSERT INTO `item` VALUES (65612, 117000, 117000, 117000);
INSERT INTO `item` VALUES (65611, 192000, 192000, 192000);
INSERT INTO `item` VALUES (65610, 54000, 54000, 54000);
INSERT INTO `item` VALUES (65609, 79200, 79200, 79200);
INSERT INTO `item` VALUES (65608, 150000, 150000, 150000);
INSERT INTO `item` VALUES (65607, 69000, 69000, 69000);
INSERT INTO `item` VALUES (65606, 51000, 51000, 51000);
INSERT INTO `item` VALUES (65605, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65604, 55200, 55200, 55200);
INSERT INTO `item` VALUES (65603, 42000, 42000, 42000);
INSERT INTO `item` VALUES (65602, 40800, 40800, 40800);
INSERT INTO `item` VALUES (65601, 32400, 32400, 32400);
INSERT INTO `item` VALUES (65600, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65599, 57000, 57000, 57000);
INSERT INTO `item` VALUES (65598, 18000, 18000, 18000);
INSERT INTO `item` VALUES (65597, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65596, 30000, 30000, 30000);
INSERT INTO `item` VALUES (65595, 30000, 30000, 30000);
INSERT INTO `item` VALUES (65594, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65593, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65592, 28800, 28800, 28800);
INSERT INTO `item` VALUES (65591, 210000, 210000, 210000);
INSERT INTO `item` VALUES (65590, 21000, 21000, 21000);
INSERT INTO `item` VALUES (65589, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65588, 0, 0, 0);
INSERT INTO `item` VALUES (65587, 21000, 21000, 21000);
INSERT INTO `item` VALUES (65586, 27000, 27000, 27000);
INSERT INTO `item` VALUES (65585, 27600, 27600, 27600);
INSERT INTO `item` VALUES (65584, 18000, 18000, 18000);
INSERT INTO `item` VALUES (65583, 90000, 90000, 90000);
INSERT INTO `item` VALUES (65582, 90000, 90000, 90000);
INSERT INTO `item` VALUES (65581, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65580, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65579, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65578, 9000, 9000, 9000);
INSERT INTO `item` VALUES (65577, 0, 0, 0);
INSERT INTO `item` VALUES (65576, 21000, 21000, 21000);
INSERT INTO `item` VALUES (65575, 18000, 18000, 18000);
INSERT INTO `item` VALUES (65574, 0, 0, 0);
INSERT INTO `item` VALUES (65573, 27000, 27000, 27000);
INSERT INTO `item` VALUES (65572, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65571, 33000, 33000, 33000);
INSERT INTO `item` VALUES (65570, 18000, 18000, 18000);
INSERT INTO `item` VALUES (65569, 18000, 18000, 18000);
INSERT INTO `item` VALUES (65568, 21000, 21000, 21000);
INSERT INTO `item` VALUES (65567, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65566, 18000, 18000, 18000);
INSERT INTO `item` VALUES (65565, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65564, 15000, 15000, 15000);
INSERT INTO `item` VALUES (65563, 18000, 18000, 18000);
INSERT INTO `item` VALUES (65562, 15000, 15000, 15000);
INSERT INTO `item` VALUES (65561, 120000, 120000, 120000);
INSERT INTO `item` VALUES (65560, 18000, 18000, 18000);
INSERT INTO `item` VALUES (65559, 18000, 18000, 18000);
INSERT INTO `item` VALUES (65558, 18000, 18000, 18000);
INSERT INTO `item` VALUES (65557, 0, 0, 0);
INSERT INTO `item` VALUES (65556, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65555, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65554, 31200, 31200, 31200);
INSERT INTO `item` VALUES (65553, 21000, 21000, 21000);
INSERT INTO `item` VALUES (65552, 7200, 7200, 7200);
INSERT INTO `item` VALUES (65551, 60000, 60000, 60000);
INSERT INTO `item` VALUES (65550, 0, 0, 0);
INSERT INTO `item` VALUES (65549, 18000, 18000, 18000);
INSERT INTO `item` VALUES (65548, 18000, 18000, 18000);
INSERT INTO `item` VALUES (65547, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65546, 7200, 7200, 7200);
INSERT INTO `item` VALUES (65545, 12000, 12000, 12000);
INSERT INTO `item` VALUES (65544, 12000, 12000, 12000);
INSERT INTO `item` VALUES (65543, 27000, 27000, 27000);
INSERT INTO `item` VALUES (65542, 10800, 10800, 10800);
INSERT INTO `item` VALUES (65541, 24000, 24000, 24000);
INSERT INTO `item` VALUES (65540, 15000, 15000, 15000);
INSERT INTO `item` VALUES (65539, 7200, 7200, 7200);
INSERT INTO `item` VALUES (65538, 9000, 9000, 9000);
INSERT INTO `item` VALUES (65537, 7200, 7200, 7200);
INSERT INTO `item` VALUES (65536, 0, 0, 0);
INSERT INTO `item` VALUES (544, 0, 0, 0);
INSERT INTO `item` VALUES (543, 0, 0, 0);
INSERT INTO `item` VALUES (542, 0, 0, 0);
INSERT INTO `item` VALUES (541, 0, 0, 0);
INSERT INTO `item` VALUES (540, 0, 0, 0);
INSERT INTO `item` VALUES (539, 0, 0, 0);
INSERT INTO `item` VALUES (538, 0, 0, 0);
INSERT INTO `item` VALUES (537, 0, 0, 0);
INSERT INTO `item` VALUES (536, 0, 0, 0);
INSERT INTO `item` VALUES (535, 0, 0, 0);
INSERT INTO `item` VALUES (534, 0, 0, 0);
INSERT INTO `item` VALUES (533, 0, 0, 0);
INSERT INTO `item` VALUES (532, 0, 0, 0);
INSERT INTO `item` VALUES (531, 0, 0, 0);
INSERT INTO `item` VALUES (530, 0, 0, 0);
INSERT INTO `item` VALUES (529, 0, 0, 0);
INSERT INTO `item` VALUES (528, 0, 0, 0);
INSERT INTO `item` VALUES (527, 0, 0, 0);
INSERT INTO `item` VALUES (526, 0, 0, 0);
INSERT INTO `item` VALUES (525, 0, 0, 0);
INSERT INTO `item` VALUES (524, 0, 0, 0);
INSERT INTO `item` VALUES (523, 0, 0, 0);
INSERT INTO `item` VALUES (522, 0, 0, 0);
INSERT INTO `item` VALUES (521, 0, 0, 0);
INSERT INTO `item` VALUES (520, 0, 0, 0);
INSERT INTO `item` VALUES (519, 0, 0, 0);
INSERT INTO `item` VALUES (518, 0, 0, 0);
INSERT INTO `item` VALUES (517, 0, 0, 0);
INSERT INTO `item` VALUES (516, 0, 0, 0);
INSERT INTO `item` VALUES (515, 0, 0, 0);
INSERT INTO `item` VALUES (514, 0, 0, 0);
INSERT INTO `item` VALUES (513, 0, 0, 0);
INSERT INTO `item` VALUES (512, 0, 0, 0);
INSERT INTO `item` VALUES (511, 0, 0, 0);
INSERT INTO `item` VALUES (510, 0, 0, 0);
INSERT INTO `item` VALUES (509, 0, 0, 0);
INSERT INTO `item` VALUES (508, 0, 0, 0);
INSERT INTO `item` VALUES (507, 0, 0, 0);
INSERT INTO `item` VALUES (506, 0, 0, 0);
INSERT INTO `item` VALUES (505, 0, 0, 0);
INSERT INTO `item` VALUES (504, 0, 0, 0);
INSERT INTO `item` VALUES (503, 0, 0, 0);
INSERT INTO `item` VALUES (502, 0, 0, 0);
INSERT INTO `item` VALUES (501, 0, 0, 0);
INSERT INTO `item` VALUES (500, 0, 0, 0);
INSERT INTO `item` VALUES (499, 0, 0, 0);
INSERT INTO `item` VALUES (498, 0, 0, 0);
INSERT INTO `item` VALUES (497, 0, 0, 0);
INSERT INTO `item` VALUES (496, 0, 0, 0);
INSERT INTO `item` VALUES (495, 0, 0, 0);
INSERT INTO `item` VALUES (494, 0, 0, 0);
INSERT INTO `item` VALUES (493, 0, 0, 0);
INSERT INTO `item` VALUES (492, 0, 0, 0);
INSERT INTO `item` VALUES (491, 0, 0, 0);
INSERT INTO `item` VALUES (490, 0, 0, 0);
INSERT INTO `item` VALUES (489, 0, 0, 0);
INSERT INTO `item` VALUES (488, 0, 0, 0);
INSERT INTO `item` VALUES (487, 0, 0, 0);
INSERT INTO `item` VALUES (486, 0, 0, 0);
INSERT INTO `item` VALUES (485, 0, 0, 0);
INSERT INTO `item` VALUES (484, 0, 0, 0);
INSERT INTO `item` VALUES (483, 0, 0, 0);
INSERT INTO `item` VALUES (482, 0, 0, 0);
INSERT INTO `item` VALUES (481, 0, 0, 0);
INSERT INTO `item` VALUES (480, 0, 0, 0);
INSERT INTO `item` VALUES (479, 0, 0, 0);
INSERT INTO `item` VALUES (478, 0, 0, 0);
INSERT INTO `item` VALUES (477, 0, 0, 0);
INSERT INTO `item` VALUES (476, 0, 0, 0);
INSERT INTO `item` VALUES (475, 0, 0, 0);
INSERT INTO `item` VALUES (474, 0, 0, 0);
INSERT INTO `item` VALUES (473, 0, 0, 0);
INSERT INTO `item` VALUES (472, 0, 0, 0);
INSERT INTO `item` VALUES (471, 0, 0, 0);
INSERT INTO `item` VALUES (470, 0, 0, 0);
INSERT INTO `item` VALUES (469, 0, 0, 0);
INSERT INTO `item` VALUES (467, 0, 0, 0);
INSERT INTO `item` VALUES (466, 180000, 180000, 180000);
INSERT INTO `item` VALUES (465, 0, 0, 0);
INSERT INTO `item` VALUES (464, 0, 0, 0);
INSERT INTO `item` VALUES (463, 0, 0, 0);
INSERT INTO `item` VALUES (462, 0, 0, 0);
INSERT INTO `item` VALUES (461, 0, 0, 0);
INSERT INTO `item` VALUES (460, 0, 0, 0);
INSERT INTO `item` VALUES (459, 150000, 150000, 150000);
INSERT INTO `item` VALUES (458, 42000, 42000, 42000);
INSERT INTO `item` VALUES (457, 42000, 42000, 42000);
INSERT INTO `item` VALUES (456, 60000, 60000, 60000);
INSERT INTO `item` VALUES (455, 24000, 24000, 24000);
INSERT INTO `item` VALUES (454, 36000, 36000, 36000);
INSERT INTO `item` VALUES (453, 36000, 36000, 36000);
INSERT INTO `item` VALUES (452, 36000, 36000, 36000);
INSERT INTO `item` VALUES (451, 12000, 12000, 12000);
INSERT INTO `item` VALUES (450, 42000, 42000, 42000);
INSERT INTO `item` VALUES (449, 42000, 42000, 42000);
INSERT INTO `item` VALUES (448, 42000, 42000, 42000);
INSERT INTO `item` VALUES (447, 72000, 72000, 72000);
INSERT INTO `item` VALUES (446, 36000, 36000, 36000);
INSERT INTO `item` VALUES (445, 36000, 36000, 36000);
INSERT INTO `item` VALUES (444, 24000, 24000, 24000);
INSERT INTO `item` VALUES (443, 72000, 72000, 72000);
INSERT INTO `item` VALUES (442, 30000, 30000, 30000);
INSERT INTO `item` VALUES (441, 30000, 30000, 30000);
INSERT INTO `item` VALUES (440, 36000, 36000, 36000);
INSERT INTO `item` VALUES (439, 42000, 42000, 42000);
INSERT INTO `item` VALUES (438, 36000, 36000, 36000);
INSERT INTO `item` VALUES (437, 36000, 36000, 36000);
INSERT INTO `item` VALUES (436, 24000, 24000, 24000);
INSERT INTO `item` VALUES (435, 24000, 24000, 24000);
INSERT INTO `item` VALUES (434, 24000, 24000, 24000);
INSERT INTO `item` VALUES (433, 0, 0, 0);
INSERT INTO `item` VALUES (432, 0, 0, 0);
INSERT INTO `item` VALUES (431, 0, 0, 0);
INSERT INTO `item` VALUES (430, 0, 0, 0);
INSERT INTO `item` VALUES (429, 0, 0, 0);
INSERT INTO `item` VALUES (428, 0, 0, 0);
INSERT INTO `item` VALUES (427, 0, 0, 0);
INSERT INTO `item` VALUES (426, 0, 0, 0);
INSERT INTO `item` VALUES (425, 42000, 42000, 42000);
INSERT INTO `item` VALUES (424, 24000, 24000, 24000);
INSERT INTO `item` VALUES (423, 42000, 42000, 42000);
INSERT INTO `item` VALUES (422, 60000, 60000, 60000);
INSERT INTO `item` VALUES (421, 36000, 36000, 36000);
INSERT INTO `item` VALUES (420, 120000, 120000, 120000);
INSERT INTO `item` VALUES (419, 120000, 120000, 120000);
INSERT INTO `item` VALUES (418, 36000, 36000, 36000);
INSERT INTO `item` VALUES (417, 42000, 42000, 42000);
INSERT INTO `item` VALUES (416, 84000, 84000, 84000);
INSERT INTO `item` VALUES (415, 72000, 72000, 72000);
INSERT INTO `item` VALUES (414, 36000, 36000, 36000);
INSERT INTO `item` VALUES (413, 36000, 36000, 36000);
INSERT INTO `item` VALUES (412, 36000, 36000, 36000);
INSERT INTO `item` VALUES (411, 120000, 120000, 120000);
INSERT INTO `item` VALUES (410, 36000, 36000, 36000);
INSERT INTO `item` VALUES (409, 42000, 42000, 42000);
INSERT INTO `item` VALUES (408, 36000, 36000, 36000);
INSERT INTO `item` VALUES (407, 42000, 42000, 42000);
INSERT INTO `item` VALUES (406, 84000, 84000, 84000);
INSERT INTO `item` VALUES (405, 72000, 72000, 72000);
INSERT INTO `item` VALUES (404, 42000, 42000, 42000);
INSERT INTO `item` VALUES (403, 42000, 42000, 42000);
INSERT INTO `item` VALUES (402, 42000, 42000, 42000);
INSERT INTO `item` VALUES (401, 0, 0, 0);
INSERT INTO `item` VALUES (400, 0, 0, 0);
INSERT INTO `item` VALUES (399, 84000, 84000, 84000);
INSERT INTO `item` VALUES (398, 36000, 36000, 36000);
INSERT INTO `item` VALUES (397, 42000, 42000, 42000);
INSERT INTO `item` VALUES (396, 72000, 72000, 72000);
INSERT INTO `item` VALUES (395, 72000, 72000, 72000);
INSERT INTO `item` VALUES (394, 36000, 36000, 36000);
INSERT INTO `item` VALUES (393, 84000, 84000, 84000);
INSERT INTO `item` VALUES (392, 42000, 42000, 42000);
INSERT INTO `item` VALUES (391, 96000, 96000, 96000);
INSERT INTO `item` VALUES (390, 312000, 312000, 312000);
INSERT INTO `item` VALUES (389, 108000, 108000, 108000);
INSERT INTO `item` VALUES (388, 108000, 108000, 108000);
INSERT INTO `item` VALUES (387, 108000, 108000, 108000);
INSERT INTO `item` VALUES (386, 108000, 108000, 108000);
INSERT INTO `item` VALUES (385, 108000, 108000, 108000);
INSERT INTO `item` VALUES (384, 108000, 108000, 108000);
INSERT INTO `item` VALUES (383, 108000, 108000, 108000);
INSERT INTO `item` VALUES (382, 108000, 108000, 108000);
INSERT INTO `item` VALUES (381, 144000, 144000, 144000);
INSERT INTO `item` VALUES (380, 42000, 42000, 42000);
INSERT INTO `item` VALUES (379, 42000, 42000, 42000);
INSERT INTO `item` VALUES (378, 42000, 42000, 42000);
INSERT INTO `item` VALUES (377, 42000, 42000, 42000);
INSERT INTO `item` VALUES (376, 72000, 72000, 72000);
INSERT INTO `item` VALUES (375, 36000, 36000, 36000);
INSERT INTO `item` VALUES (374, 96000, 96000, 96000);
INSERT INTO `item` VALUES (373, 240000, 240000, 240000);
INSERT INTO `item` VALUES (372, 72000, 72000, 72000);
INSERT INTO `item` VALUES (371, 36000, 36000, 36000);
INSERT INTO `item` VALUES (370, 150000, 150000, 150000);
INSERT INTO `item` VALUES (369, 120000, 120000, 120000);
INSERT INTO `item` VALUES (368, 0, 0, 0);
INSERT INTO `item` VALUES (367, 0, 0, 0);
INSERT INTO `item` VALUES (366, 0, 0, 0);
INSERT INTO `item` VALUES (365, 0, 0, 0);
INSERT INTO `item` VALUES (364, 0, 0, 0);
INSERT INTO `item` VALUES (363, 0, 0, 0);
INSERT INTO `item` VALUES (362, 0, 0, 0);
INSERT INTO `item` VALUES (361, 0, 0, 0);
INSERT INTO `item` VALUES (360, 0, 0, 0);
INSERT INTO `item` VALUES (359, 0, 0, 0);
INSERT INTO `item` VALUES (358, 0, 0, 0);
INSERT INTO `item` VALUES (357, 0, 0, 0);
INSERT INTO `item` VALUES (356, 0, 0, 0);
INSERT INTO `item` VALUES (355, 0, 0, 0);
INSERT INTO `item` VALUES (354, 0, 0, 0);
INSERT INTO `item` VALUES (353, 0, 0, 0);
INSERT INTO `item` VALUES (352, 0, 0, 0);
INSERT INTO `item` VALUES (351, 0, 0, 0);
INSERT INTO `item` VALUES (350, 0, 0, 0);
INSERT INTO `item` VALUES (349, 0, 0, 0);
INSERT INTO `item` VALUES (348, 0, 0, 0);
INSERT INTO `item` VALUES (347, 0, 0, 0);
INSERT INTO `item` VALUES (346, 0, 0, 0);
INSERT INTO `item` VALUES (345, 0, 0, 0);
INSERT INTO `item` VALUES (344, 0, 0, 0);
INSERT INTO `item` VALUES (343, 0, 0, 0);
INSERT INTO `item` VALUES (342, 0, 0, 0);
INSERT INTO `item` VALUES (341, 0, 0, 0);
INSERT INTO `item` VALUES (340, 0, 0, 0);
INSERT INTO `item` VALUES (339, 0, 0, 0);
INSERT INTO `item` VALUES (338, 0, 0, 0);
INSERT INTO `item` VALUES (337, 0, 0, 0);
INSERT INTO `item` VALUES (336, 0, 0, 0);
INSERT INTO `item` VALUES (335, 0, 0, 0);
INSERT INTO `item` VALUES (334, 0, 0, 0);
INSERT INTO `item` VALUES (333, 0, 0, 0);
INSERT INTO `item` VALUES (332, 0, 0, 0);
INSERT INTO `item` VALUES (331, 0, 0, 0);
INSERT INTO `item` VALUES (330, 0, 0, 0);
INSERT INTO `item` VALUES (329, 0, 0, 0);
INSERT INTO `item` VALUES (328, 0, 0, 0);
INSERT INTO `item` VALUES (327, 0, 0, 0);
INSERT INTO `item` VALUES (326, 0, 0, 0);
INSERT INTO `item` VALUES (325, 0, 0, 0);
INSERT INTO `item` VALUES (324, 0, 0, 0);
INSERT INTO `item` VALUES (323, 36000, 36000, 36000);
INSERT INTO `item` VALUES (322, 36000, 36000, 36000);
INSERT INTO `item` VALUES (321, 36000, 36000, 36000);
INSERT INTO `item` VALUES (320, 36000, 36000, 36000);
INSERT INTO `item` VALUES (319, 36000, 36000, 36000);
INSERT INTO `item` VALUES (318, 72000, 72000, 72000);
INSERT INTO `item` VALUES (317, 24000, 24000, 24000);
INSERT INTO `item` VALUES (316, 60000, 60000, 60000);
INSERT INTO `item` VALUES (315, 60000, 60000, 60000);
INSERT INTO `item` VALUES (314, 72000, 72000, 72000);
INSERT INTO `item` VALUES (313, 96000, 96000, 96000);
INSERT INTO `item` VALUES (312, 48000, 48000, 48000);
INSERT INTO `item` VALUES (311, 36000, 36000, 36000);
INSERT INTO `item` VALUES (310, 84000, 84000, 84000);
INSERT INTO `item` VALUES (309, 108000, 108000, 108000);
INSERT INTO `item` VALUES (308, 0, 0, 0);
INSERT INTO `item` VALUES (307, 0, 0, 0);
INSERT INTO `item` VALUES (306, 0, 0, 0);
INSERT INTO `item` VALUES (305, 0, 0, 0);
INSERT INTO `item` VALUES (304, 0, 0, 0);
INSERT INTO `item` VALUES (303, 0, 0, 0);
INSERT INTO `item` VALUES (302, 0, 0, 0);
INSERT INTO `item` VALUES (301, 48000, 48000, 48000);
INSERT INTO `item` VALUES (300, 48000, 48000, 48000);
INSERT INTO `item` VALUES (299, 48000, 48000, 48000);
INSERT INTO `item` VALUES (298, 48000, 48000, 48000);
INSERT INTO `item` VALUES (297, 60000, 60000, 60000);
INSERT INTO `item` VALUES (296, 60000, 60000, 60000);
INSERT INTO `item` VALUES (295, 72000, 72000, 72000);
INSERT INTO `item` VALUES (294, 0, 0, 0);
INSERT INTO `item` VALUES (293, 0, 0, 0);
INSERT INTO `item` VALUES (292, 0, 0, 0);
INSERT INTO `item` VALUES (291, 0, 0, 0);
INSERT INTO `item` VALUES (290, 0, 0, 0);
INSERT INTO `item` VALUES (289, 0, 0, 0);
INSERT INTO `item` VALUES (288, 0, 0, 0);
INSERT INTO `item` VALUES (287, 0, 0, 0);
INSERT INTO `item` VALUES (286, 0, 0, 0);
INSERT INTO `item` VALUES (285, 0, 0, 0);
INSERT INTO `item` VALUES (284, 0, 0, 0);
INSERT INTO `item` VALUES (283, 60000, 60000, 60000);
INSERT INTO `item` VALUES (282, 72000, 72000, 72000);
INSERT INTO `item` VALUES (281, 60000, 60000, 60000);
INSERT INTO `item` VALUES (280, 48000, 48000, 48000);
INSERT INTO `item` VALUES (279, 72000, 72000, 72000);
INSERT INTO `item` VALUES (278, 72000, 72000, 72000);
INSERT INTO `item` VALUES (277, 108000, 108000, 108000);
INSERT INTO `item` VALUES (276, 90000, 90000, 90000);
INSERT INTO `item` VALUES (275, 0, 0, 0);
INSERT INTO `item` VALUES (274, 150000, 150000, 150000);
INSERT INTO `item` VALUES (273, 90000, 90000, 90000);
INSERT INTO `item` VALUES (272, 30000, 30000, 30000);
INSERT INTO `item` VALUES (271, 7200, 7200, 7200);
INSERT INTO `item` VALUES (270, 108000, 108000, 108000);
INSERT INTO `item` VALUES (269, 48000, 48000, 48000);
INSERT INTO `item` VALUES (268, 30000, 30000, 30000);
INSERT INTO `item` VALUES (267, 132000, 132000, 132000);
INSERT INTO `item` VALUES (266, 60000, 60000, 60000);
INSERT INTO `item` VALUES (265, 48000, 48000, 48000);
INSERT INTO `item` VALUES (264, 48000, 48000, 48000);
INSERT INTO `item` VALUES (263, 108000, 108000, 108000);
INSERT INTO `item` VALUES (262, 48000, 48000, 48000);
INSERT INTO `item` VALUES (261, 0, 0, 0);
INSERT INTO `item` VALUES (260, 48000, 48000, 48000);
INSERT INTO `item` VALUES (259, 48000, 48000, 48000);
INSERT INTO `item` VALUES (258, 48000, 48000, 48000);
INSERT INTO `item` VALUES (257, 48000, 48000, 48000);
INSERT INTO `item` VALUES (256, 0, 0, 0);
INSERT INTO `item` VALUES (255, 0, 0, 0);
INSERT INTO `item` VALUES (254, 0, 0, 0);
INSERT INTO `item` VALUES (253, 7200, 7200, 7200);
INSERT INTO `item` VALUES (252, 7200, 7200, 7200);
INSERT INTO `item` VALUES (251, 7200, 7200, 7200);
INSERT INTO `item` VALUES (250, 72000, 72000, 72000);
INSERT INTO `item` VALUES (249, 90000, 90000, 90000);
INSERT INTO `item` VALUES (248, 48000, 48000, 48000);
INSERT INTO `item` VALUES (247, 7200, 7200, 7200);
INSERT INTO `item` VALUES (246, 24000, 24000, 24000);
INSERT INTO `item` VALUES (245, 30000, 30000, 30000);
INSERT INTO `item` VALUES (244, 48000, 48000, 48000);
INSERT INTO `item` VALUES (243, 24000, 24000, 24000);
INSERT INTO `item` VALUES (242, 24000, 24000, 24000);
INSERT INTO `item` VALUES (241, 60000, 60000, 60000);
INSERT INTO `item` VALUES (240, 60000, 60000, 60000);
INSERT INTO `item` VALUES (239, 48000, 48000, 48000);
INSERT INTO `item` VALUES (238, 48000, 48000, 48000);
INSERT INTO `item` VALUES (237, 48000, 48000, 48000);
INSERT INTO `item` VALUES (236, 0, 0, 0);
INSERT INTO `item` VALUES (235, 0, 0, 0);
INSERT INTO `item` VALUES (234, 48000, 48000, 48000);
INSERT INTO `item` VALUES (233, 30000, 30000, 30000);
INSERT INTO `item` VALUES (232, 0, 0, 0);
INSERT INTO `item` VALUES (231, 0, 0, 0);
INSERT INTO `item` VALUES (230, 0, 0, 0);
INSERT INTO `item` VALUES (229, 7200, 7200, 7200);
INSERT INTO `item` VALUES (228, 7200, 7200, 7200);
INSERT INTO `item` VALUES (227, 30000, 30000, 30000);
INSERT INTO `item` VALUES (226, 0, 0, 0);
INSERT INTO `item` VALUES (225, 60000, 60000, 60000);
INSERT INTO `item` VALUES (224, 0, 0, 0);
INSERT INTO `item` VALUES (223, 60000, 60000, 60000);
INSERT INTO `item` VALUES (222, 48000, 48000, 48000);
INSERT INTO `item` VALUES (221, 30000, 30000, 30000);
INSERT INTO `item` VALUES (220, 60000, 60000, 60000);
INSERT INTO `item` VALUES (219, 60000, 60000, 60000);
INSERT INTO `item` VALUES (218, 240000, 240000, 240000);
INSERT INTO `item` VALUES (217, 108000, 108000, 108000);
INSERT INTO `item` VALUES (216, 30000, 30000, 30000);
INSERT INTO `item` VALUES (215, 30000, 30000, 30000);
INSERT INTO `item` VALUES (214, 48000, 48000, 48000);
INSERT INTO `item` VALUES (213, 30000, 30000, 30000);
INSERT INTO `item` VALUES (212, 0, 0, 0);
INSERT INTO `item` VALUES (211, 0, 0, 0);
INSERT INTO `item` VALUES (210, 0, 0, 0);
INSERT INTO `item` VALUES (209, 90000, 90000, 90000);
INSERT INTO `item` VALUES (208, 120000, 120000, 120000);
INSERT INTO `item` VALUES (207, 48000, 48000, 48000);
INSERT INTO `item` VALUES (206, 30000, 30000, 30000);
INSERT INTO `item` VALUES (205, 48000, 48000, 48000);
INSERT INTO `item` VALUES (204, 30000, 30000, 30000);
INSERT INTO `item` VALUES (203, 72000, 72000, 72000);
INSERT INTO `item` VALUES (202, 48000, 48000, 48000);
INSERT INTO `item` VALUES (201, 150000, 150000, 150000);
INSERT INTO `item` VALUES (200, 30000, 30000, 30000);
INSERT INTO `item` VALUES (199, 48000, 48000, 48000);
INSERT INTO `item` VALUES (198, 36000, 36000, 36000);
INSERT INTO `item` VALUES (197, 30000, 30000, 30000);
INSERT INTO `item` VALUES (196, 30000, 30000, 30000);
INSERT INTO `item` VALUES (195, 0, 0, 0);
INSERT INTO `item` VALUES (194, 48000, 48000, 48000);
INSERT INTO `item` VALUES (193, 90000, 90000, 90000);
INSERT INTO `item` VALUES (192, 72000, 72000, 72000);
INSERT INTO `item` VALUES (191, 72000, 72000, 72000);
INSERT INTO `item` VALUES (190, 72000, 72000, 72000);
INSERT INTO `item` VALUES (189, 108000, 108000, 108000);
INSERT INTO `item` VALUES (188, 108000, 108000, 108000);
INSERT INTO `item` VALUES (187, 0, 0, 0);
INSERT INTO `item` VALUES (186, 72000, 72000, 72000);
INSERT INTO `item` VALUES (185, 30000, 30000, 30000);
INSERT INTO `item` VALUES (184, 30000, 30000, 30000);
INSERT INTO `item` VALUES (183, 150000, 150000, 150000);
INSERT INTO `item` VALUES (182, 0, 0, 0);
INSERT INTO `item` VALUES (181, 0, 0, 0);
INSERT INTO `item` VALUES (180, 0, 0, 0);
INSERT INTO `item` VALUES (179, 0, 0, 0);
INSERT INTO `item` VALUES (178, 150000, 150000, 150000);
INSERT INTO `item` VALUES (177, 30000, 30000, 30000);
INSERT INTO `item` VALUES (176, 48000, 48000, 48000);
INSERT INTO `item` VALUES (175, 48000, 48000, 48000);
INSERT INTO `item` VALUES (174, 48000, 48000, 48000);
INSERT INTO `item` VALUES (173, 0, 0, 0);
INSERT INTO `item` VALUES (172, 108000, 108000, 108000);
INSERT INTO `item` VALUES (171, 108000, 108000, 108000);
INSERT INTO `item` VALUES (170, 30000, 30000, 30000);
INSERT INTO `item` VALUES (169, 90000, 90000, 90000);
INSERT INTO `item` VALUES (168, 48000, 48000, 48000);
INSERT INTO `item` VALUES (167, 30000, 30000, 30000);
INSERT INTO `item` VALUES (166, 36000, 36000, 36000);
INSERT INTO `item` VALUES (165, 240000, 240000, 240000);
INSERT INTO `item` VALUES (164, 0, 0, 0);
INSERT INTO `item` VALUES (163, 0, 0, 0);
INSERT INTO `item` VALUES (162, 0, 0, 0);
INSERT INTO `item` VALUES (161, 0, 0, 0);
INSERT INTO `item` VALUES (160, 0, 0, 0);
INSERT INTO `item` VALUES (159, 0, 0, 0);
INSERT INTO `item` VALUES (158, 0, 0, 0);
INSERT INTO `item` VALUES (157, 0, 0, 0);
INSERT INTO `item` VALUES (156, 0, 0, 0);
INSERT INTO `item` VALUES (155, 72000, 72000, 72000);
INSERT INTO `item` VALUES (154, 72000, 72000, 72000);
INSERT INTO `item` VALUES (153, 48000, 48000, 48000);
INSERT INTO `item` VALUES (152, 48000, 48000, 48000);
INSERT INTO `item` VALUES (151, 48000, 48000, 48000);
INSERT INTO `item` VALUES (150, 72000, 72000, 72000);
INSERT INTO `item` VALUES (149, 0, 0, 0);
INSERT INTO `item` VALUES (148, 0, 0, 0);
INSERT INTO `item` VALUES (147, 0, 0, 0);
INSERT INTO `item` VALUES (146, 36000, 36000, 36000);
INSERT INTO `item` VALUES (145, 36000, 36000, 36000);
INSERT INTO `item` VALUES (144, 45000, 45000, 45000);
INSERT INTO `item` VALUES (143, 60000, 60000, 60000);
INSERT INTO `item` VALUES (142, 60000, 60000, 60000);
INSERT INTO `item` VALUES (141, 0, 0, 0);
INSERT INTO `item` VALUES (140, 36000, 36000, 36000);
INSERT INTO `item` VALUES (139, 36000, 36000, 36000);
INSERT INTO `item` VALUES (138, 60000, 60000, 60000);
INSERT INTO `item` VALUES (137, 60000, 60000, 60000);
INSERT INTO `item` VALUES (136, 60000, 60000, 60000);
INSERT INTO `item` VALUES (135, 60000, 60000, 60000);
INSERT INTO `item` VALUES (134, 72000, 72000, 72000);
INSERT INTO `item` VALUES (133, 108000, 108000, 108000);
INSERT INTO `item` VALUES (132, 45000, 45000, 45000);
INSERT INTO `item` VALUES (131, 48000, 48000, 48000);
INSERT INTO `item` VALUES (130, 72000, 72000, 72000);
INSERT INTO `item` VALUES (129, 36000, 36000, 36000);
INSERT INTO `item` VALUES (128, 0, 0, 0);
INSERT INTO `item` VALUES (127, 0, 0, 0);
INSERT INTO `item` VALUES (126, 0, 0, 0);
INSERT INTO `item` VALUES (125, 108000, 108000, 108000);
INSERT INTO `item` VALUES (124, 36000, 36000, 36000);
INSERT INTO `item` VALUES (123, 72000, 72000, 72000);
INSERT INTO `item` VALUES (122, 108000, 108000, 108000);
INSERT INTO `item` VALUES (121, 0, 0, 0);
INSERT INTO `item` VALUES (120, 66000, 66000, 66000);
INSERT INTO `item` VALUES (119, 48000, 48000, 48000);
INSERT INTO `item` VALUES (118, 60000, 60000, 60000);
INSERT INTO `item` VALUES (117, 36000, 36000, 36000);
INSERT INTO `item` VALUES (116, 45000, 45000, 45000);
INSERT INTO `item` VALUES (115, 66000, 66000, 66000);
INSERT INTO `item` VALUES (114, 42000, 42000, 42000);
INSERT INTO `item` VALUES (113, 60000, 60000, 60000);
INSERT INTO `item` VALUES (112, 48000, 48000, 48000);
INSERT INTO `item` VALUES (111, 48000, 48000, 48000);
INSERT INTO `item` VALUES (110, 36000, 36000, 36000);
INSERT INTO `item` VALUES (109, 36000, 36000, 36000);
INSERT INTO `item` VALUES (108, 0, 0, 0);
INSERT INTO `item` VALUES (107, 48000, 48000, 48000);
INSERT INTO `item` VALUES (106, 48000, 48000, 48000);
INSERT INTO `item` VALUES (105, 48000, 48000, 48000);
INSERT INTO `item` VALUES (104, 45000, 45000, 45000);
INSERT INTO `item` VALUES (103, 0, 0, 0);
INSERT INTO `item` VALUES (102, 0, 0, 0);
INSERT INTO `item` VALUES (101, 42000, 42000, 42000);
INSERT INTO `item` VALUES (100, 42000, 42000, 42000);
INSERT INTO `item` VALUES (99, 0, 0, 0);
INSERT INTO `item` VALUES (98, 42000, 42000, 42000);
INSERT INTO `item` VALUES (97, 57000, 57000, 57000);
INSERT INTO `item` VALUES (96, 108000, 108000, 108000);
INSERT INTO `item` VALUES (95, 132000, 132000, 132000);
INSERT INTO `item` VALUES (94, 75000, 75000, 75000);
INSERT INTO `item` VALUES (93, 72000, 72000, 72000);
INSERT INTO `item` VALUES (92, 108000, 108000, 108000);
INSERT INTO `item` VALUES (91, 60000, 60000, 60000);
INSERT INTO `item` VALUES (90, 150000, 150000, 150000);
INSERT INTO `item` VALUES (89, 57000, 57000, 57000);
INSERT INTO `item` VALUES (88, 69000, 69000, 69000);
INSERT INTO `item` VALUES (87, 54000, 54000, 54000);
INSERT INTO `item` VALUES (86, 72000, 72000, 72000);
INSERT INTO `item` VALUES (85, 66000, 66000, 66000);
INSERT INTO `item` VALUES (84, 0, 0, 0);
INSERT INTO `item` VALUES (83, 0, 0, 0);
INSERT INTO `item` VALUES (82, 60000, 60000, 60000);
INSERT INTO `item` VALUES (81, 42000, 42000, 42000);
INSERT INTO `item` VALUES (80, 48000, 48000, 48000);
INSERT INTO `item` VALUES (79, 54000, 54000, 54000);
INSERT INTO `item` VALUES (78, 84000, 84000, 84000);
INSERT INTO `item` VALUES (77, 30000, 30000, 30000);
INSERT INTO `item` VALUES (76, 51000, 51000, 51000);
INSERT INTO `item` VALUES (75, 57000, 57000, 57000);
INSERT INTO `item` VALUES (74, 0, 0, 0);
INSERT INTO `item` VALUES (73, 45000, 45000, 45000);
INSERT INTO `item` VALUES (72, 87000, 87000, 87000);
INSERT INTO `item` VALUES (71, 57000, 57000, 57000);
INSERT INTO `item` VALUES (70, 72000, 72000, 72000);
INSERT INTO `item` VALUES (69, 72000, 72000, 72000);
INSERT INTO `item` VALUES (68, 54000, 54000, 54000);
INSERT INTO `item` VALUES (67, 66000, 66000, 66000);
INSERT INTO `item` VALUES (66, 55200, 55200, 55200);
INSERT INTO `item` VALUES (65, 49200, 49200, 49200);
INSERT INTO `item` VALUES (64, 46800, 46800, 46800);
INSERT INTO `item` VALUES (63, 36000, 36000, 36000);
INSERT INTO `item` VALUES (62, 36000, 36000, 36000);
INSERT INTO `item` VALUES (61, 51000, 51000, 51000);
INSERT INTO `item` VALUES (60, 33000, 33000, 33000);
INSERT INTO `item` VALUES (59, 45000, 45000, 45000);
INSERT INTO `item` VALUES (58, 45000, 45000, 45000);
INSERT INTO `item` VALUES (57, 36000, 36000, 36000);
INSERT INTO `item` VALUES (56, 24000, 24000, 24000);
INSERT INTO `item` VALUES (55, 27000, 27000, 27000);
INSERT INTO `item` VALUES (54, 42000, 42000, 42000);
INSERT INTO `item` VALUES (53, 150000, 150000, 150000);
INSERT INTO `item` VALUES (52, 24000, 24000, 24000);
INSERT INTO `item` VALUES (51, 22800, 22800, 22800);
INSERT INTO `item` VALUES (50, 0, 0, 0);
INSERT INTO `item` VALUES (49, 24000, 24000, 24000);
INSERT INTO `item` VALUES (48, 36000, 36000, 36000);
INSERT INTO `item` VALUES (47, 22800, 22800, 22800);
INSERT INTO `item` VALUES (46, 21600, 21600, 21600);
INSERT INTO `item` VALUES (45, 90000, 90000, 90000);
INSERT INTO `item` VALUES (44, 60000, 60000, 60000);
INSERT INTO `item` VALUES (43, 30000, 30000, 30000);
INSERT INTO `item` VALUES (42, 24000, 24000, 24000);
INSERT INTO `item` VALUES (41, 45000, 45000, 45000);
INSERT INTO `item` VALUES (40, 9000, 9000, 9000);
INSERT INTO `item` VALUES (39, 0, 0, 0);
INSERT INTO `item` VALUES (38, 27000, 27000, 27000);
INSERT INTO `item` VALUES (37, 25200, 25200, 25200);
INSERT INTO `item` VALUES (36, 0, 0, 0);
INSERT INTO `item` VALUES (35, 30000, 30000, 30000);
INSERT INTO `item` VALUES (34, 36000, 36000, 36000);
INSERT INTO `item` VALUES (33, 36000, 36000, 36000);
INSERT INTO `item` VALUES (32, 27000, 27000, 27000);
INSERT INTO `item` VALUES (31, 24000, 24000, 24000);
INSERT INTO `item` VALUES (30, 24000, 24000, 24000);
INSERT INTO `item` VALUES (29, 30000, 30000, 30000);
INSERT INTO `item` VALUES (28, 30000, 30000, 30000);
INSERT INTO `item` VALUES (27, 30000, 30000, 30000);
INSERT INTO `item` VALUES (26, 18000, 18000, 18000);
INSERT INTO `item` VALUES (25, 30000, 30000, 30000);
INSERT INTO `item` VALUES (24, 15000, 15000, 15000);
INSERT INTO `item` VALUES (23, 60000, 60000, 60000);
INSERT INTO `item` VALUES (22, 27000, 27000, 27000);
INSERT INTO `item` VALUES (21, 120000, 120000, 120000);
INSERT INTO `item` VALUES (20, 0, 0, 0);
INSERT INTO `item` VALUES (19, 25200, 25200, 25200);
INSERT INTO `item` VALUES (18, 22800, 22800, 22800);
INSERT INTO `item` VALUES (17, 24000, 24000, 24000);
INSERT INTO `item` VALUES (16, 21000, 21000, 21000);
INSERT INTO `item` VALUES (15, 7200, 7200, 7200);
INSERT INTO `item` VALUES (14, 21000, 21000, 21000);
INSERT INTO `item` VALUES (13, 24000, 24000, 24000);
INSERT INTO `item` VALUES (12, 22800, 22800, 22800);
INSERT INTO `item` VALUES (11, 33000, 33000, 33000);
INSERT INTO `item` VALUES (10, 9000, 9000, 9000);
INSERT INTO `item` VALUES (9, 21000, 21000, 21000);
INSERT INTO `item` VALUES (8, 36000, 36000, 36000);
INSERT INTO `item` VALUES (7, 30000, 30000, 30000);
INSERT INTO `item` VALUES (6, 18000, 18000, 18000);
INSERT INTO `item` VALUES (5, 24000, 24000, 24000);
INSERT INTO `item` VALUES (4, 36000, 36000, 36000);
INSERT INTO `item` VALUES (3, 7200, 7200, 7200);
INSERT INTO `item` VALUES (2, 7200, 7200, 7200);
INSERT INTO `item` VALUES (1, 12000, 12000, 12000);
INSERT INTO `item` VALUES (0, 0, 0, 0);
INSERT INTO `item` VALUES (131369, 0, 0, 0);
INSERT INTO `item` VALUES (131368, 0, 0, 0);
INSERT INTO `item` VALUES (131367, 0, 0, 0);
INSERT INTO `item` VALUES (131366, 0, 0, 0);
INSERT INTO `item` VALUES (131365, 0, 0, 0);
INSERT INTO `item` VALUES (131364, 0, 0, 0);
INSERT INTO `item` VALUES (131363, 0, 0, 0);
INSERT INTO `item` VALUES (131362, 0, 0, 0);
INSERT INTO `item` VALUES (131361, 0, 0, 0);
INSERT INTO `item` VALUES (131360, 0, 0, 0);
INSERT INTO `item` VALUES (131359, 0, 0, 0);
INSERT INTO `item` VALUES (131358, 0, 0, 0);
INSERT INTO `item` VALUES (131357, 0, 0, 0);
INSERT INTO `item` VALUES (131356, 0, 0, 0);
INSERT INTO `item` VALUES (131355, 0, 0, 0);
INSERT INTO `item` VALUES (131354, 0, 0, 0);
INSERT INTO `item` VALUES (131353, 0, 0, 0);
INSERT INTO `item` VALUES (131352, 0, 0, 0);
INSERT INTO `item` VALUES (131351, 0, 0, 0);
INSERT INTO `item` VALUES (131350, 0, 0, 0);
INSERT INTO `item` VALUES (131349, 0, 0, 0);
INSERT INTO `item` VALUES (131348, 0, 0, 0);
INSERT INTO `item` VALUES (131347, 0, 0, 0);
INSERT INTO `item` VALUES (131346, 0, 0, 0);
INSERT INTO `item` VALUES (131345, 0, 0, 0);
INSERT INTO `item` VALUES (131344, 0, 0, 0);
INSERT INTO `item` VALUES (131343, 0, 0, 0);
INSERT INTO `item` VALUES (131342, 0, 0, 0);
INSERT INTO `item` VALUES (131341, 0, 0, 0);
INSERT INTO `item` VALUES (131340, 0, 0, 0);
INSERT INTO `item` VALUES (131339, 0, 0, 0);
INSERT INTO `item` VALUES (131338, 0, 0, 0);
INSERT INTO `item` VALUES (131337, 0, 0, 0);
INSERT INTO `item` VALUES (131336, 0, 0, 0);
INSERT INTO `item` VALUES (131335, 0, 0, 0);
INSERT INTO `item` VALUES (131334, 0, 0, 0);
INSERT INTO `item` VALUES (131333, 0, 0, 0);
INSERT INTO `item` VALUES (131332, 0, 0, 0);
INSERT INTO `item` VALUES (131331, 0, 0, 0);
INSERT INTO `item` VALUES (131330, 0, 0, 0);
INSERT INTO `item` VALUES (131329, 0, 0, 0);
INSERT INTO `item` VALUES (131328, 0, 0, 0);
INSERT INTO `item` VALUES (131327, 0, 0, 0);
INSERT INTO `item` VALUES (131326, 0, 0, 0);
INSERT INTO `item` VALUES (131325, 0, 0, 0);
INSERT INTO `item` VALUES (131324, 0, 0, 0);
INSERT INTO `item` VALUES (131323, 0, 0, 0);
INSERT INTO `item` VALUES (131322, 0, 0, 0);
INSERT INTO `item` VALUES (131321, 0, 0, 0);
INSERT INTO `item` VALUES (131320, 0, 0, 0);
INSERT INTO `item` VALUES (131319, 0, 0, 0);
INSERT INTO `item` VALUES (131318, 0, 0, 0);
INSERT INTO `item` VALUES (131317, 0, 0, 0);
INSERT INTO `item` VALUES (131316, 0, 0, 0);
INSERT INTO `item` VALUES (131315, 0, 0, 0);
INSERT INTO `item` VALUES (131314, 0, 0, 0);
INSERT INTO `item` VALUES (131313, 0, 0, 0);
INSERT INTO `item` VALUES (131312, 0, 0, 0);
INSERT INTO `item` VALUES (131311, 0, 0, 0);
INSERT INTO `item` VALUES (131310, 0, 0, 0);
INSERT INTO `item` VALUES (131309, 0, 0, 0);
INSERT INTO `item` VALUES (131308, 0, 0, 0);
INSERT INTO `item` VALUES (131307, 0, 0, 0);
INSERT INTO `item` VALUES (131306, 0, 0, 0);
INSERT INTO `item` VALUES (131305, 0, 0, 0);
INSERT INTO `item` VALUES (131304, 0, 0, 0);
INSERT INTO `item` VALUES (131303, 0, 0, 0);
INSERT INTO `item` VALUES (131302, 0, 0, 0);
INSERT INTO `item` VALUES (131301, 0, 0, 0);
INSERT INTO `item` VALUES (131300, 0, 0, 0);
INSERT INTO `item` VALUES (131299, 0, 0, 0);
INSERT INTO `item` VALUES (131298, 0, 0, 0);
INSERT INTO `item` VALUES (131297, 0, 0, 0);
INSERT INTO `item` VALUES (131296, 0, 0, 0);
INSERT INTO `item` VALUES (131295, 0, 0, 0);
INSERT INTO `item` VALUES (131294, 0, 0, 0);
INSERT INTO `item` VALUES (131293, 0, 0, 0);
INSERT INTO `item` VALUES (131292, 0, 0, 0);
INSERT INTO `item` VALUES (131291, 0, 0, 0);
INSERT INTO `item` VALUES (131290, 0, 0, 0);
INSERT INTO `item` VALUES (131289, 0, 0, 0);
INSERT INTO `item` VALUES (131288, 0, 0, 0);
INSERT INTO `item` VALUES (131287, 0, 0, 0);
INSERT INTO `item` VALUES (131286, 0, 0, 0);
INSERT INTO `item` VALUES (131285, 0, 0, 0);
INSERT INTO `item` VALUES (131284, 0, 0, 0);
INSERT INTO `item` VALUES (131283, 0, 0, 0);
INSERT INTO `item` VALUES (131282, 0, 0, 0);
INSERT INTO `item` VALUES (131281, 0, 0, 0);
INSERT INTO `item` VALUES (131280, 0, 0, 0);
INSERT INTO `item` VALUES (131279, 0, 0, 0);
INSERT INTO `item` VALUES (131278, 0, 0, 0);
INSERT INTO `item` VALUES (131277, 0, 0, 0);
INSERT INTO `item` VALUES (131276, 0, 0, 0);
INSERT INTO `item` VALUES (131275, 0, 0, 0);
INSERT INTO `item` VALUES (131274, 0, 0, 0);
INSERT INTO `item` VALUES (131273, 0, 0, 0);
INSERT INTO `item` VALUES (131272, 0, 0, 0);
INSERT INTO `item` VALUES (131271, 0, 0, 0);
INSERT INTO `item` VALUES (131270, 0, 0, 0);
INSERT INTO `item` VALUES (131269, 0, 0, 0);
INSERT INTO `item` VALUES (131268, 0, 0, 0);
INSERT INTO `item` VALUES (131267, 0, 0, 0);
INSERT INTO `item` VALUES (131266, 0, 0, 0);
INSERT INTO `item` VALUES (131265, 0, 0, 0);
INSERT INTO `item` VALUES (131264, 0, 0, 0);
INSERT INTO `item` VALUES (131263, 0, 0, 0);
INSERT INTO `item` VALUES (131262, 0, 0, 0);
INSERT INTO `item` VALUES (131261, 0, 0, 0);
INSERT INTO `item` VALUES (131260, 0, 0, 0);
INSERT INTO `item` VALUES (131259, 28800, 28800, 28800);
INSERT INTO `item` VALUES (131258, 60000, 60000, 60000);
INSERT INTO `item` VALUES (131257, 24000, 24000, 24000);
INSERT INTO `item` VALUES (131256, 60000, 60000, 60000);
INSERT INTO `item` VALUES (131255, 60000, 60000, 60000);
INSERT INTO `item` VALUES (131254, 24000, 24000, 24000);
INSERT INTO `item` VALUES (131253, 24000, 24000, 24000);
INSERT INTO `item` VALUES (131252, 36000, 36000, 36000);
INSERT INTO `item` VALUES (131251, 36000, 36000, 36000);
INSERT INTO `item` VALUES (131250, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131249, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131248, 57000, 57000, 57000);
INSERT INTO `item` VALUES (131247, 216000, 216000, 216000);
INSERT INTO `item` VALUES (131246, 24000, 24000, 24000);
INSERT INTO `item` VALUES (131245, 36000, 36000, 36000);
INSERT INTO `item` VALUES (131244, 48000, 48000, 48000);
INSERT INTO `item` VALUES (131243, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131242, 24000, 24000, 24000);
INSERT INTO `item` VALUES (131241, 36000, 36000, 36000);
INSERT INTO `item` VALUES (131240, 24000, 24000, 24000);
INSERT INTO `item` VALUES (131239, 28800, 28800, 28800);
INSERT INTO `item` VALUES (131238, 48000, 48000, 48000);
INSERT INTO `item` VALUES (131237, 36000, 36000, 36000);
INSERT INTO `item` VALUES (131236, 24000, 24000, 24000);
INSERT INTO `item` VALUES (131235, 24000, 24000, 24000);
INSERT INTO `item` VALUES (131234, 36000, 36000, 36000);
INSERT INTO `item` VALUES (131233, 36000, 36000, 36000);
INSERT INTO `item` VALUES (131232, 36000, 36000, 36000);
INSERT INTO `item` VALUES (131231, 36000, 36000, 36000);
INSERT INTO `item` VALUES (131230, 48000, 48000, 48000);
INSERT INTO `item` VALUES (131229, 24000, 24000, 24000);
INSERT INTO `item` VALUES (131228, 57000, 57000, 57000);
INSERT INTO `item` VALUES (131227, 108000, 108000, 108000);
INSERT INTO `item` VALUES (131226, 36000, 36000, 36000);
INSERT INTO `item` VALUES (131225, 36000, 36000, 36000);
INSERT INTO `item` VALUES (131224, 0, 0, 0);
INSERT INTO `item` VALUES (131223, 36000, 36000, 36000);
INSERT INTO `item` VALUES (131222, 57000, 57000, 57000);
INSERT INTO `item` VALUES (131221, 57000, 57000, 57000);
INSERT INTO `item` VALUES (131220, 36000, 36000, 36000);
INSERT INTO `item` VALUES (131219, 36000, 36000, 36000);
INSERT INTO `item` VALUES (131218, 36000, 36000, 36000);
INSERT INTO `item` VALUES (131217, 90000, 90000, 90000);
INSERT INTO `item` VALUES (131216, 36000, 36000, 36000);
INSERT INTO `item` VALUES (131215, 36000, 36000, 36000);
INSERT INTO `item` VALUES (131214, 0, 0, 0);
INSERT INTO `item` VALUES (131213, 0, 0, 0);
INSERT INTO `item` VALUES (131212, 0, 0, 0);
INSERT INTO `item` VALUES (131211, 0, 0, 0);
INSERT INTO `item` VALUES (131210, 108000, 108000, 108000);
INSERT INTO `item` VALUES (131209, 108000, 108000, 108000);
INSERT INTO `item` VALUES (131208, 24000, 24000, 24000);
INSERT INTO `item` VALUES (131207, 36000, 36000, 36000);
INSERT INTO `item` VALUES (131206, 96000, 96000, 96000);
INSERT INTO `item` VALUES (131205, 0, 0, 0);
INSERT INTO `item` VALUES (131204, 0, 0, 0);
INSERT INTO `item` VALUES (131203, 18000, 18000, 18000);
INSERT INTO `item` VALUES (131202, 18000, 18000, 18000);
INSERT INTO `item` VALUES (131201, 18000, 18000, 18000);
INSERT INTO `item` VALUES (131200, 18000, 18000, 18000);
INSERT INTO `item` VALUES (131199, 18000, 18000, 18000);
INSERT INTO `item` VALUES (131198, 18000, 18000, 18000);
INSERT INTO `item` VALUES (131197, 0, 0, 0);
INSERT INTO `item` VALUES (131196, 0, 0, 0);
INSERT INTO `item` VALUES (131195, 0, 0, 0);
INSERT INTO `item` VALUES (131194, 0, 0, 0);
INSERT INTO `item` VALUES (131193, 0, 0, 0);
INSERT INTO `item` VALUES (131192, 0, 0, 0);
INSERT INTO `item` VALUES (131191, 0, 0, 0);
INSERT INTO `item` VALUES (131190, 0, 0, 0);
INSERT INTO `item` VALUES (131189, 72000, 72000, 72000);
INSERT INTO `item` VALUES (131188, 0, 0, 0);
INSERT INTO `item` VALUES (131187, 0, 0, 0);
INSERT INTO `item` VALUES (131186, 0, 0, 0);
INSERT INTO `item` VALUES (131185, 24000, 24000, 24000);
INSERT INTO `item` VALUES (131184, 72000, 72000, 72000);
INSERT INTO `item` VALUES (131183, 144000, 144000, 144000);
INSERT INTO `item` VALUES (131182, 60000, 60000, 60000);
INSERT INTO `item` VALUES (131181, 0, 0, 0);
INSERT INTO `item` VALUES (131180, 144000, 144000, 144000);
INSERT INTO `item` VALUES (131179, 216000, 216000, 216000);
INSERT INTO `item` VALUES (131178, 24000, 24000, 24000);
INSERT INTO `item` VALUES (131177, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131176, 60000, 60000, 60000);
INSERT INTO `item` VALUES (131175, 60000, 60000, 60000);
INSERT INTO `item` VALUES (131174, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131173, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131172, 144000, 144000, 144000);
INSERT INTO `item` VALUES (131171, 0, 0, 0);
INSERT INTO `item` VALUES (131170, 0, 0, 0);
INSERT INTO `item` VALUES (131169, 0, 0, 0);
INSERT INTO `item` VALUES (131168, 0, 0, 0);
INSERT INTO `item` VALUES (131167, 0, 0, 0);
INSERT INTO `item` VALUES (131166, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131165, 72000, 72000, 72000);
INSERT INTO `item` VALUES (131164, 72000, 72000, 72000);
INSERT INTO `item` VALUES (131163, 108000, 108000, 108000);
INSERT INTO `item` VALUES (131162, 144000, 144000, 144000);
INSERT INTO `item` VALUES (131161, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131160, 0, 0, 0);
INSERT INTO `item` VALUES (131159, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131158, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131157, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131156, 60000, 60000, 60000);
INSERT INTO `item` VALUES (131155, 90000, 90000, 90000);
INSERT INTO `item` VALUES (131154, 108000, 108000, 108000);
INSERT INTO `item` VALUES (131153, 60000, 60000, 60000);
INSERT INTO `item` VALUES (131152, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131151, 0, 0, 0);
INSERT INTO `item` VALUES (131150, 0, 0, 0);
INSERT INTO `item` VALUES (131149, 144000, 144000, 144000);
INSERT INTO `item` VALUES (131148, 60000, 60000, 60000);
INSERT INTO `item` VALUES (131147, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131146, 60000, 60000, 60000);
INSERT INTO `item` VALUES (131145, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131144, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131143, 15000, 15000, 15000);
INSERT INTO `item` VALUES (131142, 48000, 48000, 48000);
INSERT INTO `item` VALUES (131141, 0, 0, 0);
INSERT INTO `item` VALUES (131140, 48000, 48000, 48000);
INSERT INTO `item` VALUES (131139, 48000, 48000, 48000);
INSERT INTO `item` VALUES (131138, 0, 0, 0);
INSERT INTO `item` VALUES (131137, 0, 0, 0);
INSERT INTO `item` VALUES (131136, 120000, 120000, 120000);
INSERT INTO `item` VALUES (131135, 15000, 15000, 15000);
INSERT INTO `item` VALUES (131134, 15000, 15000, 15000);
INSERT INTO `item` VALUES (131133, 15000, 15000, 15000);
INSERT INTO `item` VALUES (131132, 6000, 6000, 6000);
INSERT INTO `item` VALUES (131131, 48000, 48000, 48000);
INSERT INTO `item` VALUES (131130, 6000, 6000, 6000);
INSERT INTO `item` VALUES (131129, 90000, 90000, 90000);
INSERT INTO `item` VALUES (131128, 60000, 60000, 60000);
INSERT INTO `item` VALUES (131127, 15000, 15000, 15000);
INSERT INTO `item` VALUES (131126, 0, 0, 0);
INSERT INTO `item` VALUES (131125, 7200, 7200, 7200);
INSERT INTO `item` VALUES (131124, 48000, 48000, 48000);
INSERT INTO `item` VALUES (131123, 144000, 144000, 144000);
INSERT INTO `item` VALUES (131122, 15000, 15000, 15000);
INSERT INTO `item` VALUES (131121, 15000, 15000, 15000);
INSERT INTO `item` VALUES (131120, 15000, 15000, 15000);
INSERT INTO `item` VALUES (131119, 15000, 15000, 15000);
INSERT INTO `item` VALUES (131118, 15000, 15000, 15000);
INSERT INTO `item` VALUES (131117, 15000, 15000, 15000);
INSERT INTO `item` VALUES (131116, 15000, 15000, 15000);
INSERT INTO `item` VALUES (131115, 15000, 15000, 15000);
INSERT INTO `item` VALUES (131114, 22800, 22800, 22800);
INSERT INTO `item` VALUES (131113, 0, 0, 0);
INSERT INTO `item` VALUES (131112, 108000, 108000, 108000);
INSERT INTO `item` VALUES (131111, 66000, 66000, 66000);
INSERT INTO `item` VALUES (131110, 48000, 48000, 48000);
INSERT INTO `item` VALUES (131109, 57000, 57000, 57000);
INSERT INTO `item` VALUES (131108, 28800, 28800, 28800);
INSERT INTO `item` VALUES (131107, 21600, 21600, 21600);
INSERT INTO `item` VALUES (131106, 144000, 144000, 144000);
INSERT INTO `item` VALUES (131105, 75000, 75000, 75000);
INSERT INTO `item` VALUES (131104, 75000, 75000, 75000);
INSERT INTO `item` VALUES (131103, 27600, 27600, 27600);
INSERT INTO `item` VALUES (131102, 33600, 33600, 33600);
INSERT INTO `item` VALUES (131101, 36000, 36000, 36000);
INSERT INTO `item` VALUES (131100, 36000, 36000, 36000);
INSERT INTO `item` VALUES (131099, 27000, 27000, 27000);
INSERT INTO `item` VALUES (131098, 9600, 9600, 9600);
INSERT INTO `item` VALUES (131097, 18000, 18000, 18000);
INSERT INTO `item` VALUES (131096, 24000, 24000, 24000);
INSERT INTO `item` VALUES (131095, 7200, 7200, 7200);
INSERT INTO `item` VALUES (131094, 72000, 72000, 72000);
INSERT INTO `item` VALUES (131093, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131092, 0, 0, 0);
INSERT INTO `item` VALUES (131091, 0, 0, 0);
INSERT INTO `item` VALUES (131090, 18000, 18000, 18000);
INSERT INTO `item` VALUES (131089, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131088, 30000, 30000, 30000);
INSERT INTO `item` VALUES (131087, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131086, 21000, 21000, 21000);
INSERT INTO `item` VALUES (131085, 18000, 18000, 18000);
INSERT INTO `item` VALUES (131084, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131083, 9000, 9000, 9000);
INSERT INTO `item` VALUES (131082, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131081, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131080, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131079, 18000, 18000, 18000);
INSERT INTO `item` VALUES (131078, 18000, 18000, 18000);
INSERT INTO `item` VALUES (131077, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131076, 12000, 12000, 12000);
INSERT INTO `item` VALUES (131075, 7200, 7200, 7200);
INSERT INTO `item` VALUES (131074, 9000, 9000, 9000);
INSERT INTO `item` VALUES (131073, 12000, 12000, 12000);
INSERT INTO `item` VALUES (205200, 42000, 42000, 42000);
INSERT INTO `item` VALUES (205199, 42000, 42000, 42000);
INSERT INTO `item` VALUES (205198, 42000, 42000, 42000);
INSERT INTO `item` VALUES (205197, 36000, 36000, 36000);
INSERT INTO `item` VALUES (205195, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205194, 36000, 36000, 36000);
INSERT INTO `item` VALUES (205193, 36000, 36000, 36000);
INSERT INTO `item` VALUES (205192, 36000, 36000, 36000);
INSERT INTO `item` VALUES (205191, 60000, 60000, 60000);
INSERT INTO `item` VALUES (205190, 36000, 36000, 36000);
INSERT INTO `item` VALUES (205189, 36000, 36000, 36000);
INSERT INTO `item` VALUES (205188, 36000, 36000, 36000);
INSERT INTO `item` VALUES (205187, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205186, 36000, 36000, 36000);
INSERT INTO `item` VALUES (205185, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205184, 36000, 36000, 36000);
INSERT INTO `item` VALUES (205183, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205182, 42000, 42000, 42000);
INSERT INTO `item` VALUES (205173, 30000, 30000, 30000);
INSERT INTO `item` VALUES (205171, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205169, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205168, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205167, 18000, 18000, 18000);
INSERT INTO `item` VALUES (205166, 30000, 30000, 30000);
INSERT INTO `item` VALUES (205165, 30000, 30000, 30000);
INSERT INTO `item` VALUES (205164, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205162, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205150, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205149, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205148, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205147, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205146, 60000, 60000, 60000);
INSERT INTO `item` VALUES (205145, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205144, 18000, 18000, 18000);
INSERT INTO `item` VALUES (205143, 30000, 30000, 30000);
INSERT INTO `item` VALUES (205141, 36000, 36000, 36000);
INSERT INTO `item` VALUES (205139, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205138, 60000, 60000, 60000);
INSERT INTO `item` VALUES (205137, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205134, 60000, 60000, 60000);
INSERT INTO `item` VALUES (205133, 60000, 60000, 60000);
INSERT INTO `item` VALUES (205132, 60000, 60000, 60000);
INSERT INTO `item` VALUES (205131, 60000, 60000, 60000);
INSERT INTO `item` VALUES (205130, 60000, 60000, 60000);
INSERT INTO `item` VALUES (205129, 60000, 60000, 60000);
INSERT INTO `item` VALUES (205128, 60000, 60000, 60000);
INSERT INTO `item` VALUES (205127, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205126, 30000, 30000, 30000);
INSERT INTO `item` VALUES (205125, 30000, 30000, 30000);
INSERT INTO `item` VALUES (205124, 30000, 30000, 30000);
INSERT INTO `item` VALUES (205078, 18000, 18000, 18000);
INSERT INTO `item` VALUES (205077, 18000, 18000, 18000);
INSERT INTO `item` VALUES (205076, 18000, 18000, 18000);
INSERT INTO `item` VALUES (205075, 18000, 18000, 18000);
INSERT INTO `item` VALUES (205074, 18000, 18000, 18000);
INSERT INTO `item` VALUES (205073, 18000, 18000, 18000);
INSERT INTO `item` VALUES (205072, 18000, 18000, 18000);
INSERT INTO `item` VALUES (205071, 18000, 18000, 18000);
INSERT INTO `item` VALUES (205064, 18000, 18000, 18000);
INSERT INTO `item` VALUES (205063, 18000, 18000, 18000);
INSERT INTO `item` VALUES (205060, 18000, 18000, 18000);
INSERT INTO `item` VALUES (205059, 18000, 18000, 18000);
INSERT INTO `item` VALUES (205058, 60000, 60000, 60000);
INSERT INTO `item` VALUES (205057, 60000, 60000, 60000);
INSERT INTO `item` VALUES (205056, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205055, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205054, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205053, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205025, 42000, 42000, 42000);
INSERT INTO `item` VALUES (205024, 42000, 42000, 42000);
INSERT INTO `item` VALUES (205023, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205022, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205021, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205020, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205019, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205018, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205014, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205013, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205012, 42000, 42000, 42000);
INSERT INTO `item` VALUES (205011, 42000, 42000, 42000);
INSERT INTO `item` VALUES (205010, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205009, 24000, 24000, 24000);
INSERT INTO `item` VALUES (205002, 18000, 18000, 18000);
INSERT INTO `item` VALUES (205001, 18000, 18000, 18000);
INSERT INTO `item` VALUES (205000, 18000, 18000, 18000);
INSERT INTO `item` VALUES (204999, 18000, 18000, 18000);
INSERT INTO `item` VALUES (204998, 18000, 18000, 18000);
INSERT INTO `item` VALUES (204997, 18000, 18000, 18000);
INSERT INTO `item` VALUES (204996, 18000, 18000, 18000);
INSERT INTO `item` VALUES (204995, 18000, 18000, 18000);
INSERT INTO `item` VALUES (204994, 18000, 18000, 18000);
INSERT INTO `item` VALUES (204993, 18000, 18000, 18000);
INSERT INTO `item` VALUES (204992, 18000, 18000, 18000);
INSERT INTO `item` VALUES (204991, 18000, 18000, 18000);
INSERT INTO `item` VALUES (204990, 42000, 42000, 42000);
INSERT INTO `item` VALUES (204989, 42000, 42000, 42000);
INSERT INTO `item` VALUES (204988, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204987, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204986, 18000, 18000, 18000);
INSERT INTO `item` VALUES (204985, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204984, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204983, 18000, 18000, 18000);
INSERT INTO `item` VALUES (204982, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204981, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204980, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204979, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204978, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204977, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204976, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204975, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204968, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204967, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204966, 42000, 42000, 42000);
INSERT INTO `item` VALUES (204965, 42000, 42000, 42000);
INSERT INTO `item` VALUES (204964, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204963, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204962, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204961, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204957, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204956, 60000, 60000, 60000);
INSERT INTO `item` VALUES (204955, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204954, 60000, 60000, 60000);
INSERT INTO `item` VALUES (204953, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204952, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204951, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204950, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204949, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204948, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204947, 42000, 42000, 42000);
INSERT INTO `item` VALUES (204946, 42000, 42000, 42000);
INSERT INTO `item` VALUES (204945, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204944, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204943, 60000, 60000, 60000);
INSERT INTO `item` VALUES (204942, 60000, 60000, 60000);
INSERT INTO `item` VALUES (204941, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204940, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204939, 60000, 60000, 60000);
INSERT INTO `item` VALUES (204938, 60000, 60000, 60000);
INSERT INTO `item` VALUES (204937, 60000, 60000, 60000);
INSERT INTO `item` VALUES (204936, 60000, 60000, 60000);
INSERT INTO `item` VALUES (204935, 60000, 60000, 60000);
INSERT INTO `item` VALUES (204934, 60000, 60000, 60000);
INSERT INTO `item` VALUES (204933, 42000, 42000, 42000);
INSERT INTO `item` VALUES (204932, 42000, 42000, 42000);
INSERT INTO `item` VALUES (204931, 60000, 60000, 60000);
INSERT INTO `item` VALUES (204930, 60000, 60000, 60000);
INSERT INTO `item` VALUES (204929, 42000, 42000, 42000);
INSERT INTO `item` VALUES (204928, 42000, 42000, 42000);
INSERT INTO `item` VALUES (204927, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204926, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204924, 36000, 36000, 36000);
INSERT INTO `item` VALUES (204923, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204922, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204920, 42000, 42000, 42000);
INSERT INTO `item` VALUES (204919, 42000, 42000, 42000);
INSERT INTO `item` VALUES (204916, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204915, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204914, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204913, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204912, 18000, 18000, 18000);
INSERT INTO `item` VALUES (204911, 36000, 36000, 36000);
INSERT INTO `item` VALUES (204910, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204909, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204908, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204907, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204906, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204905, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204903, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204902, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204900, 33000, 33000, 33000);
INSERT INTO `item` VALUES (204899, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204898, 42000, 42000, 42000);
INSERT INTO `item` VALUES (204897, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204896, 42000, 42000, 42000);
INSERT INTO `item` VALUES (204895, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204894, 42000, 42000, 42000);
INSERT INTO `item` VALUES (204893, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204892, 42000, 42000, 42000);
INSERT INTO `item` VALUES (204889, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204888, 33000, 33000, 33000);
INSERT INTO `item` VALUES (204887, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204886, 33000, 33000, 33000);
INSERT INTO `item` VALUES (204885, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204884, 42000, 42000, 42000);
INSERT INTO `item` VALUES (204883, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204882, 42000, 42000, 42000);
INSERT INTO `item` VALUES (204880, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204879, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204878, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204877, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204876, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204875, 42000, 42000, 42000);
INSERT INTO `item` VALUES (204874, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204873, 39000, 39000, 39000);
INSERT INTO `item` VALUES (204871, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204870, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204869, 36000, 36000, 36000);
INSERT INTO `item` VALUES (204868, 33000, 33000, 33000);
INSERT INTO `item` VALUES (204867, 27000, 27000, 27000);
INSERT INTO `item` VALUES (204866, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204865, 33000, 33000, 33000);
INSERT INTO `item` VALUES (204864, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204863, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204862, 27000, 27000, 27000);
INSERT INTO `item` VALUES (204861, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204859, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204858, 39000, 39000, 39000);
INSERT INTO `item` VALUES (204857, 33000, 33000, 33000);
INSERT INTO `item` VALUES (204856, 18000, 18000, 18000);
INSERT INTO `item` VALUES (204855, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204854, 15000, 15000, 15000);
INSERT INTO `item` VALUES (204853, 42000, 42000, 42000);
INSERT INTO `item` VALUES (204852, 36000, 36000, 36000);
INSERT INTO `item` VALUES (204851, 39000, 39000, 39000);
INSERT INTO `item` VALUES (204850, 36000, 36000, 36000);
INSERT INTO `item` VALUES (204849, 30000, 30000, 30000);
INSERT INTO `item` VALUES (204848, 30000, 30000, 30000);
INSERT INTO `item` VALUES (204847, 30000, 30000, 30000);
INSERT INTO `item` VALUES (204846, 36000, 36000, 36000);
INSERT INTO `item` VALUES (204845, 30000, 30000, 30000);
INSERT INTO `item` VALUES (204844, 18000, 18000, 18000);
INSERT INTO `item` VALUES (204843, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204841, 27000, 27000, 27000);
INSERT INTO `item` VALUES (204840, 36000, 36000, 36000);
INSERT INTO `item` VALUES (204839, 18000, 18000, 18000);
INSERT INTO `item` VALUES (204838, 33000, 33000, 33000);
INSERT INTO `item` VALUES (204837, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204836, 30000, 30000, 30000);
INSERT INTO `item` VALUES (204830, 27000, 27000, 27000);
INSERT INTO `item` VALUES (204829, 30000, 30000, 30000);
INSERT INTO `item` VALUES (204828, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204827, 30000, 30000, 30000);
INSERT INTO `item` VALUES (204822, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204821, 36000, 36000, 36000);
INSERT INTO `item` VALUES (204820, 18000, 18000, 18000);
INSERT INTO `item` VALUES (204819, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204818, 30000, 30000, 30000);
INSERT INTO `item` VALUES (204817, 18000, 18000, 18000);
INSERT INTO `item` VALUES (204816, 33000, 33000, 33000);
INSERT INTO `item` VALUES (204815, 36000, 36000, 36000);
INSERT INTO `item` VALUES (204814, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204813, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204812, 36000, 36000, 36000);
INSERT INTO `item` VALUES (204811, 21000, 21000, 21000);
INSERT INTO `item` VALUES (204810, 30000, 30000, 30000);
INSERT INTO `item` VALUES (204809, 25200, 25200, 25200);
INSERT INTO `item` VALUES (204808, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204807, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204806, 24000, 24000, 24000);
INSERT INTO `item` VALUES (204805, 27000, 27000, 27000);
INSERT INTO `item` VALUES (204801, 0, 0, 0);
INSERT INTO `item` VALUES (196613, 198000, 198000, 198000);
INSERT INTO `item` VALUES (196614, 198000, 198000, 198000);
INSERT INTO `item` VALUES (196619, 330000, 330000, 330000);
INSERT INTO `item` VALUES (196620, 330000, 330000, 330000);
INSERT INTO `item` VALUES (196609, 378000, 378000, 378000);
INSERT INTO `item` VALUES (196610, 378000, 378000, 378000);
INSERT INTO `item` VALUES (196611, 119400, 119400, 119400);
INSERT INTO `item` VALUES (196612, 119400, 119400, 119400);

-- ----------------------------
-- Table structure for level
-- ----------------------------
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level`  (
  `id_level` smallint(5) NOT NULL AUTO_INCREMENT,
  `level` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name_level` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `GPminimo` decimal(10, 0) NULL DEFAULT 0,
  `GPmaximo` decimal(10, 0) NULL DEFAULT 0,
  `Estado` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'A',
  PRIMARY KEY USING BTREE (`id_level`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for loginlog
-- ----------------------------
DROP TABLE IF EXISTS `loginlog`;
CREATE TABLE `loginlog`  (
  `ID` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Ip` int(10) NOT NULL DEFAULT 0,
  `Ip_V` int(10) NOT NULL DEFAULT 0,
  `Port` smallint(5) NOT NULL DEFAULT 0,
  `Port_V` smallint(5) NOT NULL DEFAULT 0,
  `Time` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `ServerIP` int(10) NOT NULL DEFAULT 0,
  `ServerPort` smallint(5) NOT NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of loginlog
-- ----------------------------
INSERT INTO `loginlog` VALUES ('pgaming', 251766976, 251766976, 8363, 8363, '2022-10-16 15:35:28', 1157736640, 8361);

-- ----------------------------
-- Table structure for logoutlog
-- ----------------------------
DROP TABLE IF EXISTS `logoutlog`;
CREATE TABLE `logoutlog`  (
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Ip` int(11) NOT NULL DEFAULT 0,
  `Ip_V` int(11) NOT NULL DEFAULT 0,
  `Port` smallint(5) NOT NULL DEFAULT 0,
  `Port_V` smallint(5) NOT NULL DEFAULT 0,
  `Time` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `ServerIP` int(11) NOT NULL DEFAULT 0,
  `ServerPort` smallint(5) NOT NULL DEFAULT 0,
  `Country` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT ''
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for logsite
-- ----------------------------
DROP TABLE IF EXISTS `logsite`;
CREATE TABLE `logsite`  (
  `modulo` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `usuario` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `arg1` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `arg2` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `horario` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `msg` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `No` int(11) NOT NULL DEFAULT 0,
  `Item1` int(11) NOT NULL DEFAULT 0,
  `Period1` int(11) NOT NULL DEFAULT 86400,
  `Volume1` int(11) NOT NULL DEFAULT 1,
  `Item2` int(11) NULL DEFAULT NULL,
  `Period2` int(11) NULL DEFAULT NULL,
  `Volume2` int(11) NULL DEFAULT NULL,
  `Item3` int(11) NULL DEFAULT NULL,
  `Period3` int(11) NULL DEFAULT NULL,
  `Volume3` int(11) NULL DEFAULT NULL,
  `Item4` int(11) NULL DEFAULT NULL,
  `Period4` int(11) NULL DEFAULT NULL,
  `Volume4` int(11) NULL DEFAULT NULL,
  `Item5` int(11) NULL DEFAULT NULL,
  `Period5` int(11) NULL DEFAULT NULL,
  `Volume5` int(11) NULL DEFAULT NULL,
  `PriceByGoldForW` int(11) NOT NULL DEFAULT 0,
  `PriceByGoldForM` int(11) NOT NULL DEFAULT 0,
  `PriceByGoldForI` int(11) NOT NULL DEFAULT 0,
  `PriceByCashForW` int(11) NOT NULL DEFAULT 0,
  `PriceByCashForM` int(11) NOT NULL DEFAULT 0,
  `PriceByCashForI` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`No`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (98790, 98790, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 500, 1500, 16000);
INSERT INTO `menu` VALUES (98789, 98789, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 600, 1800, 18000);
INSERT INTO `menu` VALUES (98771, 98771, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 60000, 300000, 0, 0, 0);
INSERT INTO `menu` VALUES (98768, 98768, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 400, 800, 8000);
INSERT INTO `menu` VALUES (98767, 98767, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 400, 800, 8000);
INSERT INTO `menu` VALUES (98766, 98766, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 400, 800, 8000);
INSERT INTO `menu` VALUES (98763, 98763, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 100000, 250000, 0, 0, 0);
INSERT INTO `menu` VALUES (98762, 98762, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (98761, 98761, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98760, 98760, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98759, 98759, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (98758, 98758, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98757, 98757, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98756, 98756, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98755, 98755, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (98754, 98754, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (98753, 98753, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (98752, 98752, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98751, 98751, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98750, 98750, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98749, 98749, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (98748, 98748, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98747, 98747, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (98746, 98746, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98745, 98745, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98744, 98744, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (98743, 98743, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98742, 98742, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (98741, 98741, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (98740, 98740, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (98739, 98739, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (98738, 98738, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (98728, 98728, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98727, 98727, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98725, 98725, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98724, 98724, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (98723, 98723, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (98722, 98722, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98721, 98721, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (98720, 98720, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98719, 98719, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (98718, 98718, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (98717, 98717, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (98716, 98716, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (98715, 98715, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (98714, 98714, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (98713, 98713, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (98712, 98712, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98711, 98711, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (98710, 98710, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98709, 98709, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (98708, 98708, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (98707, 98707, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98706, 98706, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98705, 98705, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98703, 98703, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (98702, 98702, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (98701, 98701, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98700, 98700, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (98699, 98699, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (98698, 98698, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (98697, 98697, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (98696, 98696, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98695, 98695, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 48000, 160000, 800, 1600, 16000);
INSERT INTO `menu` VALUES (98694, 98694, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 78000, 156000, 520000, 2600, 5200, 52000);
INSERT INTO `menu` VALUES (98693, 98693, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (98692, 98692, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (98691, 98691, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (98690, 98690, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (98689, 98689, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (98688, 98688, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (98687, 98687, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (98686, 98686, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (98685, 98685, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36000, 72000, 240000, 1200, 2400, 24000);
INSERT INTO `menu` VALUES (98679, 98679, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (98678, 98678, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 48000, 160000, 800, 1600, 16000);
INSERT INTO `menu` VALUES (98677, 98677, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 120000, 400000, 2000, 4000, 40000);
INSERT INTO `menu` VALUES (98676, 98676, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (98675, 98675, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (98674, 98674, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39000, 75000, 250000, 1250, 2500, 25000);
INSERT INTO `menu` VALUES (98673, 98673, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (98605, 98605, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98604, 98604, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98603, 98603, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98602, 98602, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98601, 98601, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98600, 98600, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98579, 98579, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4000, 6000, 10000, 200, 400, 1000);
INSERT INTO `menu` VALUES (98578, 98578, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120000, 240000, 800000, 4000, 8000, 80000);
INSERT INTO `menu` VALUES (98577, 98577, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 120000, 400000, 2000, 4000, 40000);
INSERT INTO `menu` VALUES (98576, 98576, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (98575, 98575, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98564, 98564, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120000, 240000, 800000, 4000, 8000, 80000);
INSERT INTO `menu` VALUES (98563, 98563, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120000, 240000, 800000, 4000, 8000, 80000);
INSERT INTO `menu` VALUES (98562, 98562, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98561, 98561, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98550, 98550, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98549, 98549, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (98548, 98548, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98547, 98547, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98546, 98546, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98545, 98545, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (98544, 98544, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (98543, 98543, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98542, 98542, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98541, 98541, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98538, 98538, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98537, 98537, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98533, 98533, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 180000, 360000, 1200000, 6000, 12000, 120000);
INSERT INTO `menu` VALUES (98531, 98531, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98529, 98529, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98526, 98526, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98525, 98525, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98524, 98524, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98523, 98523, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98522, 98522, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 120000, 400000, 2000, 4000, 40000);
INSERT INTO `menu` VALUES (98521, 98521, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (98519, 98519, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (98518, 98518, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98517, 98517, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98513, 98513, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (98511, 98511, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98510, 98510, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98509, 98509, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98508, 98508, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98507, 98507, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (98506, 98506, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98505, 98505, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54000, 105000, 350000, 1750, 3500, 35000);
INSERT INTO `menu` VALUES (98504, 98504, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (98503, 98503, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98502, 98502, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98501, 98501, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98500, 98500, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98498, 98498, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (98497, 98497, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (98496, 98496, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (98490, 98490, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33000, 66000, 220000, 1100, 2200, 22000);
INSERT INTO `menu` VALUES (98489, 98489, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98488, 98488, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98487, 98487, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98482, 98482, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98481, 98481, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98480, 98480, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98479, 98479, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98478, 98478, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98476, 98476, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (98475, 98475, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (98474, 98474, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98473, 98473, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33000, 66000, 220000, 1100, 2200, 22000);
INSERT INTO `menu` VALUES (98472, 98472, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98471, 98471, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (98470, 98470, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98469, 98469, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69000, 135000, 450000, 2250, 4500, 45000);
INSERT INTO `menu` VALUES (98457, 98457, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98456, 98456, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98455, 98455, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98454, 98454, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 39000, 130000, 700, 1300, 13000);
INSERT INTO `menu` VALUES (98450, 98450, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98449, 98449, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98448, 98448, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98447, 98447, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (98446, 98446, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (98444, 98444, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98443, 98443, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98436, 98436, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (98435, 98435, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98434, 98434, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 39000, 130000, 700, 1300, 13000);
INSERT INTO `menu` VALUES (98433, 98433, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98429, 98429, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33000, 66000, 220000, 1100, 2200, 22000);
INSERT INTO `menu` VALUES (98428, 98428, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98427, 98427, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 39000, 130000, 700, 1300, 13000);
INSERT INTO `menu` VALUES (98426, 98426, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33000, 66000, 220000, 1100, 2200, 22000);
INSERT INTO `menu` VALUES (98424, 98424, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (98423, 98423, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98422, 98422, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (98421, 98421, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98420, 98420, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98419, 98419, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (98418, 98418, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98417, 98417, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98416, 98416, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98415, 98415, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98413, 98413, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98411, 98411, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98410, 98410, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98409, 98409, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (98405, 98405, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98404, 98404, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 90000, 500, 900, 9000);
INSERT INTO `menu` VALUES (98401, 98401, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (98400, 98400, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33000, 66000, 220000, 1100, 2200, 22000);
INSERT INTO `menu` VALUES (98399, 98399, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33000, 66000, 220000, 1100, 2200, 22000);
INSERT INTO `menu` VALUES (98398, 98398, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 135000, 700, 1350, 13500);
INSERT INTO `menu` VALUES (98397, 98397, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 39000, 130000, 700, 1300, 13000);
INSERT INTO `menu` VALUES (98396, 98396, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33000, 66000, 220000, 1100, 2200, 22000);
INSERT INTO `menu` VALUES (98394, 98394, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45000, 90000, 300000, 1250, 2500, 25000);
INSERT INTO `menu` VALUES (98393, 98393, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (98392, 98392, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (98390, 98390, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (98389, 98389, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (98385, 98385, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (98382, 98382, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (98381, 98381, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 57000, 185000, 900, 1110, 11100);
INSERT INTO `menu` VALUES (98380, 98380, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98379, 98379, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (98378, 98378, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (98376, 98376, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 195000, 900, 1950, 19500);
INSERT INTO `menu` VALUES (98375, 98375, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48000, 96000, 320000, 1600, 3200, 32000);
INSERT INTO `menu` VALUES (98374, 98374, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 90000, 500, 900, 9000);
INSERT INTO `menu` VALUES (98373, 98373, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 132000, 700, 1300, 13000);
INSERT INTO `menu` VALUES (98372, 98372, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 132000, 700, 1300, 13000);
INSERT INTO `menu` VALUES (98371, 98371, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 85000, 500, 900, 8500);
INSERT INTO `menu` VALUES (98370, 98370, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (98369, 98369, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 92000, 500, 1000, 9200);
INSERT INTO `menu` VALUES (98368, 98368, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 68000, 400, 700, 6800);
INSERT INTO `menu` VALUES (98367, 98367, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 54000, 300, 600, 5400);
INSERT INTO `menu` VALUES (98366, 98366, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 54000, 300, 600, 5400);
INSERT INTO `menu` VALUES (98365, 98365, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98364, 98364, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (98363, 98363, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98362, 98362, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98361, 98361, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98360, 98360, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 48000, 300, 500, 4800);
INSERT INTO `menu` VALUES (98359, 98359, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54000, 105000, 350000, 1750, 3500, 35000);
INSERT INTO `menu` VALUES (98358, 98358, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (98357, 98357, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (98356, 98356, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (98355, 98355, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98353, 98353, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (98352, 98352, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (98351, 98351, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 46000, 300, 500, 4600);
INSERT INTO `menu` VALUES (98350, 98350, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (98349, 98349, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98348, 98348, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98347, 98347, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98346, 98346, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (98345, 98345, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54000, 105000, 350000, 1750, 3500, 35000);
INSERT INTO `menu` VALUES (98344, 98344, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98343, 98343, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 15000, 200, 400, 1500);
INSERT INTO `menu` VALUES (98340, 98340, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98339, 98339, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (98338, 98338, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (98337, 98337, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 48000, 300, 500, 4800);
INSERT INTO `menu` VALUES (98336, 98336, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (98335, 98335, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (98334, 98334, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (98333, 98333, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39000, 75000, 250000, 1250, 2500, 25000);
INSERT INTO `menu` VALUES (98332, 98332, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (98331, 98331, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (98330, 98330, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98329, 98329, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (98328, 98328, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (98327, 98327, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (98326, 98326, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (98325, 98325, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (98323, 98323, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98322, 98322, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98321, 98321, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (98320, 98320, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (98319, 98319, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (98318, 98318, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (98317, 98317, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (98315, 98315, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (98314, 98314, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98313, 98313, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (98312, 98312, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (98311, 98311, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98310, 98310, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (98309, 98309, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (98308, 98308, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (98307, 98307, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (98306, 98306, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 15000, 200, 400, 1500);
INSERT INTO `menu` VALUES (98305, 98305, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (33253, 33253, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 500, 1500, 16000);
INSERT INTO `menu` VALUES (33235, 33235, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 60000, 300000, 0, 0, 0);
INSERT INTO `menu` VALUES (33232, 33232, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 400, 800, 8000);
INSERT INTO `menu` VALUES (33231, 33231, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 400, 800, 8000);
INSERT INTO `menu` VALUES (33230, 33230, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 400, 800, 8000);
INSERT INTO `menu` VALUES (33227, 33227, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 100000, 250000, 0, 0, 0);
INSERT INTO `menu` VALUES (33226, 33226, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (33225, 33225, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (33224, 33224, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (33223, 33223, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (33222, 33222, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (33221, 33221, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (33220, 33220, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (33219, 33219, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (33218, 33218, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (33217, 33217, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (33216, 33216, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (33215, 33215, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (33214, 33214, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (33213, 33213, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (33212, 33212, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (33211, 33211, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (33210, 33210, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (33209, 33209, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (33208, 33208, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (33207, 33207, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (33206, 33206, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (33205, 33205, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (33204, 33204, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (33203, 33203, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (33202, 33202, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (33192, 33192, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (33191, 33191, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (33189, 33189, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (33188, 33188, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (33187, 33187, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (33186, 33186, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (33185, 33185, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (33184, 33184, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (33183, 33183, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (33182, 33182, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (33181, 33181, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (33180, 33180, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (33179, 33179, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (33178, 33178, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (33177, 33177, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (33176, 33176, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (33175, 33175, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (33174, 33174, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (33173, 33173, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (33172, 33172, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (33171, 33171, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (33170, 33170, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (33167, 33167, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (33166, 33166, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (33165, 33165, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (33164, 33164, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (33163, 33163, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (33162, 33162, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (33161, 33161, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (33160, 33160, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (33159, 33159, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 48000, 160000, 800, 1600, 16000);
INSERT INTO `menu` VALUES (33158, 33158, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 78000, 156000, 520000, 2600, 5200, 52000);
INSERT INTO `menu` VALUES (33157, 33157, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (33156, 33156, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (33155, 33155, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (33154, 33154, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (33153, 33153, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (33152, 33152, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (33151, 33151, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (33150, 33150, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (33149, 33149, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36000, 72000, 240000, 1200, 2400, 24000);
INSERT INTO `menu` VALUES (33143, 33143, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (33142, 33142, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 48000, 160000, 800, 1600, 16000);
INSERT INTO `menu` VALUES (33141, 33141, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 120000, 400000, 2000, 4000, 40000);
INSERT INTO `menu` VALUES (33140, 33140, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (33139, 33139, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (33137, 33137, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (33069, 33069, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (33068, 33068, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (33067, 33067, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (33066, 33066, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (33065, 33065, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (33064, 33064, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (33042, 33042, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39000, 75000, 250000, 1250, 2500, 25000);
INSERT INTO `menu` VALUES (33041, 33041, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (33040, 33040, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (33039, 33039, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (33028, 33028, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (33027, 33027, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (33026, 33026, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (33025, 33025, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (33014, 33014, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (33013, 33013, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (33012, 33012, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (33011, 33011, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (33010, 33010, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (33009, 33009, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (33008, 33008, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (33007, 33007, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (33006, 33006, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (33005, 33005, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (33002, 33002, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (33001, 33001, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32997, 32997, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (32995, 32995, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32993, 32993, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (32990, 32990, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32989, 32989, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32988, 32988, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (32987, 32987, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (32986, 32986, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 120000, 400000, 2000, 4000, 40000);
INSERT INTO `menu` VALUES (32985, 32985, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (32984, 32984, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32983, 32983, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32982, 32982, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32981, 32981, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32977, 32977, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (32975, 32975, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32974, 32974, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32973, 32973, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32972, 32972, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32971, 32971, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (32970, 32970, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32969, 32969, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39000, 75000, 250000, 1250, 2500, 25000);
INSERT INTO `menu` VALUES (32968, 32968, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32967, 32967, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32966, 32966, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (32965, 32965, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32964, 32964, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32962, 32962, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32961, 32961, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (32960, 32960, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (32957, 32957, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (32954, 32954, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (32953, 32953, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32952, 32952, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32951, 32951, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39000, 75000, 250000, 1250, 2500, 25000);
INSERT INTO `menu` VALUES (32946, 32946, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39000, 75000, 250000, 1250, 2500, 25000);
INSERT INTO `menu` VALUES (32945, 32945, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32944, 32944, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32943, 32943, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32942, 32942, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32940, 32940, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (32939, 32939, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (32938, 32938, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32937, 32937, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (32936, 32936, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32935, 32935, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32934, 32934, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (32933, 32933, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 120000, 400000, 2000, 4000, 40000);
INSERT INTO `menu` VALUES (32923, 32923, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (32922, 32922, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (32921, 32921, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32920, 32920, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32919, 32919, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32918, 32918, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (32914, 32914, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (32913, 32913, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (32912, 32912, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 75000, 400, 800, 7500);
INSERT INTO `menu` VALUES (32911, 32911, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (32910, 32910, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (32908, 32908, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (32907, 32907, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (32900, 32900, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 75000, 400, 800, 7500);
INSERT INTO `menu` VALUES (32899, 32899, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32898, 32898, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (32897, 32897, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (32893, 32893, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (32892, 32892, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (32891, 32891, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (32890, 32890, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (32888, 32888, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (32887, 32887, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32886, 32886, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (32885, 32885, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (32884, 32884, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 75000, 400, 800, 7500);
INSERT INTO `menu` VALUES (32883, 32883, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (32882, 32882, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (32881, 32881, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (32880, 32880, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32879, 32879, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32877, 32877, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (32875, 32875, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32874, 32874, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32873, 32873, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32872, 32872, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 75000, 400, 800, 7500);
INSERT INTO `menu` VALUES (32869, 32869, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (32868, 32868, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (32866, 32866, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (32865, 32865, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (32864, 32864, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (32863, 32863, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33000, 66000, 220000, 1100, 2200, 22000);
INSERT INTO `menu` VALUES (32862, 32862, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 39000, 125000, 600, 1250, 12500);
INSERT INTO `menu` VALUES (32861, 32861, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (32860, 32860, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (32858, 32858, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39000, 75000, 250000, 1250, 2500, 25000);
INSERT INTO `menu` VALUES (32857, 32857, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (32856, 32856, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 115000, 600, 1150, 11500);
INSERT INTO `menu` VALUES (32855, 32855, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 90000, 500, 900, 9000);
INSERT INTO `menu` VALUES (32854, 32854, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (32853, 32853, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (32850, 32850, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (32849, 32849, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (32848, 32848, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (32847, 32847, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 90000, 500, 900, 9000);
INSERT INTO `menu` VALUES (32846, 32846, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (32845, 32845, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32844, 32844, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 85000, 500, 900, 8500);
INSERT INTO `menu` VALUES (32843, 32843, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (32841, 32841, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 75000, 400, 800, 7500);
INSERT INTO `menu` VALUES (32840, 32840, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 145000, 700, 1450, 14500);
INSERT INTO `menu` VALUES (32839, 32839, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (32838, 32838, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (32837, 32837, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (32836, 32836, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 90000, 500, 900, 9000);
INSERT INTO `menu` VALUES (32835, 32835, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (32834, 32834, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 92000, 500, 1000, 9200);
INSERT INTO `menu` VALUES (32833, 32833, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 78000, 400, 800, 7800);
INSERT INTO `menu` VALUES (32832, 32832, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 82000, 500, 900, 8200);
INSERT INTO `menu` VALUES (32828, 32828, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (32827, 32827, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (32826, 32826, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (32825, 32825, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (32824, 32824, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (32823, 32823, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (32822, 32822, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (32821, 32821, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (32820, 32820, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (32819, 32819, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (32818, 32818, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 75000, 400, 800, 7500);
INSERT INTO `menu` VALUES (32817, 32817, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 38000, 200, 400, 3800);
INSERT INTO `menu` VALUES (32815, 32815, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 85000, 500, 900, 8500);
INSERT INTO `menu` VALUES (32814, 32814, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (32813, 32813, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 38000, 200, 400, 3800);
INSERT INTO `menu` VALUES (32812, 32812, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 36000, 200, 400, 3600);
INSERT INTO `menu` VALUES (32811, 32811, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (32810, 32810, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (32808, 32808, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 55000, 300, 600, 5500);
INSERT INTO `menu` VALUES (32807, 32807, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39000, 75000, 250000, 1250, 2500, 25000);
INSERT INTO `menu` VALUES (32806, 32806, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 75000, 400, 800, 7500);
INSERT INTO `menu` VALUES (32805, 32805, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 15000, 200, 400, 1500);
INSERT INTO `menu` VALUES (32802, 32802, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 75000, 400, 800, 7500);
INSERT INTO `menu` VALUES (32801, 32801, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (32800, 32800, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 68000, 400, 700, 6800);
INSERT INTO `menu` VALUES (32799, 32799, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (32798, 32798, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (32797, 32797, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (32796, 32796, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32795, 32795, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32794, 32794, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (32793, 32793, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (32792, 32792, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32791, 32791, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (32790, 32790, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32789, 32789, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (32788, 32788, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (32786, 32786, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (32785, 32785, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 42000, 300, 500, 4200);
INSERT INTO `menu` VALUES (32784, 32784, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 38000, 200, 400, 3800);
INSERT INTO `menu` VALUES (32783, 32783, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (32782, 32782, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (32781, 32781, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (32780, 32780, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (32779, 32779, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (32778, 32778, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 38000, 200, 400, 3800);
INSERT INTO `menu` VALUES (32777, 32777, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (32775, 32775, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (32774, 32774, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (32773, 32773, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (32772, 32772, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (32771, 32771, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (32770, 32770, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (32769, 32769, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (33254, 33254, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 600, 1800, 18000);
INSERT INTO `menu` VALUES (164027, 164027, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 48000, 0, 0, 0);
INSERT INTO `menu` VALUES (164026, 164026, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (164025, 164025, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (164024, 164024, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (164023, 164023, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (164022, 164022, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (164021, 164021, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (164020, 164020, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (164019, 164019, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (164018, 164018, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (164017, 164017, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (164016, 164016, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (164013, 164013, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (164011, 164011, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (164010, 164010, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (164009, 164009, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (164008, 164008, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (164007, 164007, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 48000, 300, 500, 4800);
INSERT INTO `menu` VALUES (164006, 164006, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (164005, 164005, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (164004, 164004, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (164003, 164003, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (164002, 164002, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (164001, 164001, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (164000, 164000, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (163999, 163999, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (163998, 163998, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (163997, 163997, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (163996, 163996, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (163994, 163994, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (163993, 163993, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (163991, 163991, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (163990, 163990, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (163989, 163989, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (163988, 163988, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (163987, 163987, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (163986, 163986, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (163985, 163985, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (163984, 163984, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (163983, 163983, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (163971, 163971, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (163970, 163970, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (163969, 163969, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (163968, 163968, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (163967, 163967, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (163966, 163966, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (163952, 163952, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (163951, 163951, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36000, 72000, 240000, 1200, 2400, 24000);
INSERT INTO `menu` VALUES (163950, 163950, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (163945, 163945, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (163943, 163943, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (163942, 163942, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (163941, 163941, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (163934, 163934, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (163929, 163929, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (163926, 163926, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (163925, 163925, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (163924, 163924, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (163923, 163923, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (163922, 163922, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (163921, 163921, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (163920, 163920, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (163917, 163917, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36000, 72000, 240000, 1200, 2400, 24000);
INSERT INTO `menu` VALUES (163915, 163915, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (163914, 163914, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (163913, 163913, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (163912, 163912, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (163911, 163911, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (163908, 163908, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (163907, 163907, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (163904, 163904, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (163903, 163903, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (163902, 163902, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (163901, 163901, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (163900, 163900, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4000, 6000, 10000, 200, 400, 1000);
INSERT INTO `menu` VALUES (163899, 163899, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (163898, 163898, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4000, 6000, 10000, 200, 400, 1000);
INSERT INTO `menu` VALUES (163897, 163897, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (163896, 163896, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (163895, 163895, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (163893, 163893, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (163891, 163891, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36000, 72000, 240000, 1200, 2400, 24000);
INSERT INTO `menu` VALUES (163886, 163886, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (163885, 163885, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (163884, 163884, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (163883, 163883, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (163880, 163880, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (163879, 163879, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (163878, 163878, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (163877, 163877, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (163876, 163876, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 48000, 300, 500, 4800);
INSERT INTO `menu` VALUES (163875, 163875, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 36000, 200, 400, 3600);
INSERT INTO `menu` VALUES (163874, 163874, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36000, 72000, 240000, 1200, 2400, 24000);
INSERT INTO `menu` VALUES (163873, 163873, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 39000, 125000, 600, 1250, 12500);
INSERT INTO `menu` VALUES (163872, 163872, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 39000, 125000, 600, 1250, 12500);
INSERT INTO `menu` VALUES (163871, 163871, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 46000, 300, 500, 4600);
INSERT INTO `menu` VALUES (163870, 163870, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 56000, 300, 600, 5600);
INSERT INTO `menu` VALUES (163869, 163869, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (163868, 163868, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (163867, 163867, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (163866, 163866, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 16000, 200, 400, 1600);
INSERT INTO `menu` VALUES (163865, 163865, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (163864, 163864, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (163863, 163863, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (163862, 163862, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (163861, 163861, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (163858, 163858, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (163857, 163857, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (163856, 163856, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (163855, 163855, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (163854, 163854, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (163853, 163853, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (163852, 163852, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (163851, 163851, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 15000, 200, 400, 1500);
INSERT INTO `menu` VALUES (163850, 163850, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (163849, 163849, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (163848, 163848, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (163847, 163847, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (163846, 163846, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (163845, 163845, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (163844, 163844, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (163843, 163843, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (163842, 163842, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 15000, 200, 400, 1500);
INSERT INTO `menu` VALUES (163841, 163841, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229955, 229955, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25000, 50000, 100000, 0, 0, 0);
INSERT INTO `menu` VALUES (229953, 229953, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229952, 229952, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229951, 229951, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (229950, 229950, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (229949, 229949, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (229948, 229948, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 90000, 500, 900, 9000);
INSERT INTO `menu` VALUES (229947, 229947, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 90000, 500, 900, 9000);
INSERT INTO `menu` VALUES (229946, 229946, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (229945, 229945, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (229944, 229944, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (229943, 229943, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (229942, 229942, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (229940, 229940, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (229939, 229939, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (229938, 229938, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229936, 229936, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (229935, 229935, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 90000, 500, 900, 9000);
INSERT INTO `menu` VALUES (229934, 229934, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 90000, 500, 900, 9000);
INSERT INTO `menu` VALUES (229933, 229933, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 90000, 500, 900, 9000);
INSERT INTO `menu` VALUES (229932, 229932, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (229931, 229931, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (229930, 229930, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229929, 229929, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229927, 229927, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229926, 229926, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229925, 229925, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229923, 229923, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (229922, 229922, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229921, 229921, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229920, 229920, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 48000, 160000, 800, 1600, 16000);
INSERT INTO `menu` VALUES (229919, 229919, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229918, 229918, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229917, 229917, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229916, 229916, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229915, 229915, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (229914, 229914, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (229913, 229913, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229912, 229912, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229911, 229911, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229910, 229910, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (229909, 229909, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (229908, 229908, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (229907, 229907, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (229905, 229905, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (229904, 229904, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229901, 229901, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (229900, 229900, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229899, 229899, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229898, 229898, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229897, 229897, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229896, 229896, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229895, 229895, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229894, 229894, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229893, 229893, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (229763, 229763, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229762, 229762, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229740, 229740, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229723, 229723, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (229721, 229721, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (229720, 229720, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (229714, 229714, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229709, 229709, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229708, 229708, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229707, 229707, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229706, 229706, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229705, 229705, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229704, 229704, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229703, 229703, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229702, 229702, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229701, 229701, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229700, 229700, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229691, 229691, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 48000, 160000, 800, 1600, 16000);
INSERT INTO `menu` VALUES (229676, 229676, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229675, 229675, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (229674, 229674, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229673, 229673, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229659, 229659, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (229657, 229657, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229654, 229654, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229653, 229653, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229652, 229652, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229651, 229651, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229650, 229650, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229649, 229649, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229648, 229648, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229647, 229647, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229645, 229645, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (229644, 229644, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (229642, 229642, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229641, 229641, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229639, 229639, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229638, 229638, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229637, 229637, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229636, 229636, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229633, 229633, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (229632, 229632, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (229631, 229631, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229630, 229630, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229629, 229629, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229628, 229628, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229626, 229626, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (229625, 229625, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (229624, 229624, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (229623, 229623, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (229622, 229622, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4000, 6000, 10000, 200, 400, 1000);
INSERT INTO `menu` VALUES (229621, 229621, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4000, 6000, 10000, 200, 400, 1000);
INSERT INTO `menu` VALUES (229620, 229620, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (229619, 229619, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (229618, 229618, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (229617, 229617, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (229616, 229616, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (229614, 229614, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (229613, 229613, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229612, 229612, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229609, 229609, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229608, 229608, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229607, 229607, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229605, 229605, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229604, 229604, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229603, 229603, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229602, 229602, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229601, 229601, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229600, 229600, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229599, 229599, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229598, 229598, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 90000, 500, 900, 9000);
INSERT INTO `menu` VALUES (229597, 229597, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229596, 229596, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229595, 229595, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (229594, 229594, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (229592, 229592, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (229590, 229590, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229589, 229589, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (229588, 229588, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (229587, 229587, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229586, 229586, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229584, 229584, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (229583, 229583, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4200, 8400, 28000, 200, 400, 2800);
INSERT INTO `menu` VALUES (229580, 229580, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (229579, 229579, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (229578, 229578, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229574, 229574, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 90000, 500, 900, 9000);
INSERT INTO `menu` VALUES (229573, 229573, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229572, 229572, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229559, 229559, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229558, 229558, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 82500, 500, 900, 8250);
INSERT INTO `menu` VALUES (229557, 229557, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 82500, 500, 900, 8250);
INSERT INTO `menu` VALUES (229556, 229556, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 82500, 500, 900, 8250);
INSERT INTO `menu` VALUES (229555, 229555, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 82500, 500, 900, 8250);
INSERT INTO `menu` VALUES (229554, 229554, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (229553, 229553, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229552, 229552, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229551, 229551, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229550, 229550, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229549, 229549, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 38000, 200, 400, 3800);
INSERT INTO `menu` VALUES (229548, 229548, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (229547, 229547, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 82500, 500, 900, 8250);
INSERT INTO `menu` VALUES (229545, 229545, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (229544, 229544, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 48000, 300, 500, 4800);
INSERT INTO `menu` VALUES (229543, 229543, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (229542, 229542, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (229541, 229541, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 72000, 400, 800, 7200);
INSERT INTO `menu` VALUES (229540, 229540, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 48000, 160000, 800, 1600, 16000);
INSERT INTO `menu` VALUES (229538, 229538, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 88000, 500, 900, 8800);
INSERT INTO `menu` VALUES (229537, 229537, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 172000, 800, 1720, 17200);
INSERT INTO `menu` VALUES (229536, 229536, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 62000, 400, 700, 6200);
INSERT INTO `menu` VALUES (229535, 229535, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229534, 229534, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229533, 229533, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229532, 229532, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229531, 229531, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229530, 229530, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229529, 229529, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229528, 229528, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229514, 229514, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 55000, 300, 600, 5500);
INSERT INTO `menu` VALUES (229513, 229513, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229512, 229512, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (229511, 229511, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (229510, 229510, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (229509, 229509, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229508, 229508, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (229507, 229507, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 65000, 400, 700, 6500);
INSERT INTO `menu` VALUES (229506, 229506, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 65000, 400, 700, 6500);
INSERT INTO `menu` VALUES (229505, 229505, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229504, 229504, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229503, 229503, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229502, 229502, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229501, 229501, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229500, 229500, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (229499, 229499, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (229498, 229498, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 48000, 300, 500, 4800);
INSERT INTO `menu` VALUES (229497, 229497, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 52000, 300, 600, 5200);
INSERT INTO `menu` VALUES (229496, 229496, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229495, 229495, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (229494, 229494, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (229493, 229493, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (229492, 229492, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229491, 229491, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (229490, 229490, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (229489, 229489, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 75000, 400, 800, 7500);
INSERT INTO `menu` VALUES (229488, 229488, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229486, 229486, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229485, 229485, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229484, 229484, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229483, 229483, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229482, 229482, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229481, 229481, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (229480, 229480, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (229479, 229479, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (229478, 229478, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (229477, 229477, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (229476, 229476, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229475, 229475, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (229474, 229474, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 75000, 400, 800, 7500);
INSERT INTO `menu` VALUES (229459, 229459, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229458, 229458, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (229457, 229457, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 65000, 400, 700, 6500);
INSERT INTO `menu` VALUES (229456, 229456, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (229455, 229455, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (229454, 229454, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (229453, 229453, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (229436, 229436, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (229435, 229435, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (229434, 229434, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (229433, 229433, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (229432, 229432, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (229431, 229431, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (229430, 229430, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229429, 229429, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229428, 229428, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (229427, 229427, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 65000, 400, 700, 6500);
INSERT INTO `menu` VALUES (229426, 229426, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (229425, 229425, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 55000, 300, 600, 5500);
INSERT INTO `menu` VALUES (229423, 229423, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (229422, 229422, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (229421, 229421, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (229420, 229420, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 24000, 200, 400, 2400);
INSERT INTO `menu` VALUES (229419, 229419, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 24000, 200, 400, 2400);
INSERT INTO `menu` VALUES (229418, 229418, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 32000, 200, 400, 3200);
INSERT INTO `menu` VALUES (229417, 229417, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (229416, 229416, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (229415, 229415, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (229414, 229414, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229413, 229413, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229412, 229412, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229411, 229411, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229410, 229410, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229409, 229409, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229408, 229408, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229407, 229407, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229406, 229406, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229405, 229405, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229404, 229404, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229403, 229403, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229402, 229402, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229401, 229401, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229400, 229400, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229399, 229399, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229398, 229398, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229397, 229397, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229396, 229396, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229395, 229395, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229394, 229394, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229393, 229393, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229392, 229392, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229391, 229391, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229390, 229390, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229389, 229389, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229388, 229388, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229387, 229387, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229386, 229386, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229385, 229385, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229384, 229384, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229383, 229383, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (229382, 229382, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (229381, 229381, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (229380, 229380, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (229379, 229379, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (229378, 229378, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (66022, 66022, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 600, 1800, 18000);
INSERT INTO `menu` VALUES (66021, 66021, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 500, 1500, 16000);
INSERT INTO `menu` VALUES (66002, 66002, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 60000, 300000, 0, 0, 0);
INSERT INTO `menu` VALUES (65999, 65999, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 400, 800, 8000);
INSERT INTO `menu` VALUES (65998, 65998, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 400, 800, 8000);
INSERT INTO `menu` VALUES (65995, 65995, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 100000, 250000, 0, 0, 0);
INSERT INTO `menu` VALUES (65994, 65994, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (65993, 65993, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65992, 65992, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65991, 65991, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (65990, 65990, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65989, 65989, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65988, 65988, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65987, 65987, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (65986, 65986, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (65985, 65985, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (65984, 65984, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65983, 65983, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65982, 65982, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65981, 65981, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (65980, 65980, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65979, 65979, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (65978, 65978, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65977, 65977, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65976, 65976, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (65975, 65975, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65974, 65974, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (65973, 65973, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (65972, 65972, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (65971, 65971, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (65970, 65970, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (65960, 65960, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65959, 65959, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65957, 65957, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65956, 65956, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (65955, 65955, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (65954, 65954, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65953, 65953, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (65952, 65952, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65951, 65951, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (65950, 65950, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (65949, 65949, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (65948, 65948, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (65947, 65947, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (65946, 65946, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (65945, 65945, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (65944, 65944, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65943, 65943, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (65942, 65942, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65941, 65941, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (65940, 65940, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (65939, 65939, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65938, 65938, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65937, 65937, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65935, 65935, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (65934, 65934, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (65933, 65933, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65932, 65932, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (65931, 65931, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (65930, 65930, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (65929, 65929, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (65928, 65928, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65927, 65927, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 48000, 160000, 800, 1600, 16000);
INSERT INTO `menu` VALUES (65926, 65926, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 78000, 156000, 520000, 2600, 5200, 52000);
INSERT INTO `menu` VALUES (65925, 65925, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (65924, 65924, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (65923, 65923, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (65922, 65922, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (65921, 65921, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (65920, 65920, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (65919, 65919, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (65918, 65918, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (65917, 65917, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36000, 72000, 240000, 1200, 2400, 24000);
INSERT INTO `menu` VALUES (65911, 65911, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (65910, 65910, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 48000, 160000, 800, 1600, 16000);
INSERT INTO `menu` VALUES (65909, 65909, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 120000, 400000, 2000, 4000, 40000);
INSERT INTO `menu` VALUES (65908, 65908, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (65907, 65907, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (65905, 65905, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (65837, 65837, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65836, 65836, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65835, 65835, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65834, 65834, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65833, 65833, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65832, 65832, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65811, 65811, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4000, 6000, 10000, 200, 400, 1000);
INSERT INTO `menu` VALUES (65810, 65810, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120000, 240000, 800000, 4000, 8000, 80000);
INSERT INTO `menu` VALUES (65809, 65809, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 120000, 400000, 2000, 4000, 40000);
INSERT INTO `menu` VALUES (65808, 65808, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (65807, 65807, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65796, 65796, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120000, 240000, 800000, 4000, 8000, 80000);
INSERT INTO `menu` VALUES (65795, 65795, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120000, 240000, 800000, 4000, 8000, 80000);
INSERT INTO `menu` VALUES (65794, 65794, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65793, 65793, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65782, 65782, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65781, 65781, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (65780, 65780, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65779, 65779, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65778, 65778, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65777, 65777, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (65776, 65776, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (65775, 65775, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65774, 65774, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65773, 65773, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65770, 65770, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65769, 65769, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65765, 65765, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 180000, 360000, 1200000, 6000, 12000, 120000);
INSERT INTO `menu` VALUES (65763, 65763, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65761, 65761, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65759, 65759, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65758, 65758, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65757, 65757, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65756, 65756, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65755, 65755, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65754, 65754, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 120000, 400000, 2000, 4000, 40000);
INSERT INTO `menu` VALUES (65753, 65753, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (65751, 65751, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (65750, 65750, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65749, 65749, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65745, 65745, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (65743, 65743, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65742, 65742, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65741, 65741, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65740, 65740, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65739, 65739, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (65738, 65738, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65737, 65737, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54000, 105000, 350000, 1750, 3500, 35000);
INSERT INTO `menu` VALUES (65736, 65736, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (65735, 65735, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65734, 65734, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65733, 65733, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65732, 65732, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65730, 65730, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (65729, 65729, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (65728, 65728, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (65722, 65722, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33000, 66000, 220000, 1100, 2200, 22000);
INSERT INTO `menu` VALUES (65721, 65721, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65720, 65720, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65719, 65719, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65714, 65714, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69000, 135000, 450000, 2250, 4500, 45000);
INSERT INTO `menu` VALUES (65713, 65713, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65712, 65712, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65711, 65711, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65710, 65710, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65708, 65708, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (65707, 65707, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (65706, 65706, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65705, 65705, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33000, 66000, 220000, 1100, 2200, 22000);
INSERT INTO `menu` VALUES (65704, 65704, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65703, 65703, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (65702, 65702, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65701, 65701, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69000, 135000, 450000, 2250, 4500, 45000);
INSERT INTO `menu` VALUES (65693, 65693, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65692, 65692, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65691, 65691, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65690, 65690, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 39000, 130000, 700, 1300, 13000);
INSERT INTO `menu` VALUES (65686, 65686, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65685, 65685, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65684, 65684, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65683, 65683, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (65682, 65682, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (65680, 65680, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65679, 65679, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65672, 65672, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (65671, 65671, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65670, 65670, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 39000, 130000, 700, 1300, 13000);
INSERT INTO `menu` VALUES (65669, 65669, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65665, 65665, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33000, 66000, 220000, 1100, 2200, 22000);
INSERT INTO `menu` VALUES (65664, 65664, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65663, 65663, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 39000, 130000, 700, 1300, 13000);
INSERT INTO `menu` VALUES (65662, 65662, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33000, 66000, 220000, 1100, 2200, 22000);
INSERT INTO `menu` VALUES (65660, 65660, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (65659, 65659, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65658, 65658, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (65657, 65657, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65656, 65656, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65655, 65655, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (65654, 65654, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65653, 65653, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65652, 65652, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65651, 65651, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65649, 65649, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65647, 65647, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65646, 65646, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65645, 65645, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (65641, 65641, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65640, 65640, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 90000, 500, 900, 9000);
INSERT INTO `menu` VALUES (65637, 65637, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (65636, 65636, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33000, 66000, 220000, 1100, 2200, 22000);
INSERT INTO `menu` VALUES (65635, 65635, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33000, 66000, 220000, 1100, 2200, 22000);
INSERT INTO `menu` VALUES (65634, 65634, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 135000, 700, 1350, 13500);
INSERT INTO `menu` VALUES (65633, 65633, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 39000, 130000, 700, 1300, 13000);
INSERT INTO `menu` VALUES (65632, 65632, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33000, 66000, 220000, 1100, 2200, 22000);
INSERT INTO `menu` VALUES (65630, 65630, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45000, 90000, 300000, 1250, 2500, 25000);
INSERT INTO `menu` VALUES (65629, 65629, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (65628, 65628, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (65626, 65626, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (65625, 65625, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (65621, 65621, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (65618, 65618, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (65617, 65617, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 57000, 185000, 900, 1110, 11100);
INSERT INTO `menu` VALUES (65616, 65616, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65615, 65615, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (65614, 65614, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (65612, 65612, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 195000, 900, 1950, 19500);
INSERT INTO `menu` VALUES (65611, 65611, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48000, 96000, 320000, 1600, 3200, 32000);
INSERT INTO `menu` VALUES (65610, 65610, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 90000, 500, 900, 9000);
INSERT INTO `menu` VALUES (65609, 65609, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 132000, 700, 1300, 13000);
INSERT INTO `menu` VALUES (65608, 65608, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39000, 75000, 250000, 1250, 2500, 25000);
INSERT INTO `menu` VALUES (65607, 65607, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 115000, 600, 1150, 11500);
INSERT INTO `menu` VALUES (65606, 65606, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 85000, 500, 900, 8500);
INSERT INTO `menu` VALUES (65605, 65605, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65604, 65604, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 92000, 500, 1000, 9200);
INSERT INTO `menu` VALUES (65603, 65603, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (65602, 65602, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 68000, 400, 700, 6800);
INSERT INTO `menu` VALUES (65601, 65601, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 54000, 300, 600, 5400);
INSERT INTO `menu` VALUES (65600, 65600, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65599, 65599, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (65598, 65598, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (65597, 65597, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65596, 65596, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (65595, 65595, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (65594, 65594, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65593, 65593, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65592, 65592, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 48000, 300, 500, 4800);
INSERT INTO `menu` VALUES (65591, 65591, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54000, 105000, 350000, 1750, 3500, 35000);
INSERT INTO `menu` VALUES (65590, 65590, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (65589, 65589, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65587, 65587, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (65586, 65586, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (65585, 65585, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 46000, 300, 500, 4600);
INSERT INTO `menu` VALUES (65584, 65584, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (65583, 65583, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (65582, 65582, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (65581, 65581, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65580, 65580, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65579, 65579, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65578, 65578, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 15000, 200, 400, 1500);
INSERT INTO `menu` VALUES (65576, 65576, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (65575, 65575, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (65573, 65573, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (65572, 65572, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65571, 65571, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 55000, 300, 600, 5500);
INSERT INTO `menu` VALUES (65570, 65570, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (65569, 65569, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (65568, 65568, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (65567, 65567, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65566, 65566, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (65565, 65565, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65564, 65564, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (65563, 65563, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (65562, 65562, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (65561, 65561, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (65560, 65560, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (65559, 65559, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (65558, 65558, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (65556, 65556, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65555, 65555, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65554, 65554, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 52000, 300, 600, 5200);
INSERT INTO `menu` VALUES (65553, 65553, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (65552, 65552, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (65551, 65551, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (65548, 65548, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (65547, 65547, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65546, 65546, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (65545, 65545, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (65544, 65544, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (65543, 65543, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (65542, 65542, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 18000, 200, 400, 1800);
INSERT INTO `menu` VALUES (65541, 65541, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (65540, 65540, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (65539, 65539, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (65538, 65538, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 15000, 200, 400, 1500);
INSERT INTO `menu` VALUES (65537, 65537, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (486, 486, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 600, 1800, 18000);
INSERT INTO `menu` VALUES (485, 485, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 500, 1500, 16000);
INSERT INTO `menu` VALUES (466, 466, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 60000, 300000, 0, 0, 0);
INSERT INTO `menu` VALUES (463, 463, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 400, 800, 8000);
INSERT INTO `menu` VALUES (462, 462, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 400, 800, 8000);
INSERT INTO `menu` VALUES (459, 459, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 100000, 250000, 0, 0, 0);
INSERT INTO `menu` VALUES (458, 458, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (457, 457, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (456, 456, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (455, 455, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (454, 454, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (453, 453, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (452, 452, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (451, 451, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (450, 450, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (449, 449, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (448, 448, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (447, 447, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (446, 446, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (445, 445, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (444, 444, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (443, 443, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (442, 442, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (441, 441, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (440, 440, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (439, 439, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (438, 438, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (437, 437, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (436, 436, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (435, 435, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (434, 434, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (424, 424, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (423, 423, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (421, 421, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (420, 420, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (419, 419, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (418, 418, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (417, 417, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (416, 416, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (415, 415, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (414, 414, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (413, 413, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (412, 412, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (411, 411, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (410, 410, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (409, 409, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (408, 408, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (407, 407, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (406, 406, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (405, 405, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (404, 404, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (403, 403, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (402, 402, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (399, 399, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (398, 398, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (397, 397, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (396, 396, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (395, 395, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (394, 394, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (393, 393, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (392, 392, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (391, 391, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 48000, 160000, 800, 1600, 16000);
INSERT INTO `menu` VALUES (390, 390, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 78000, 156000, 520000, 2600, 5200, 52000);
INSERT INTO `menu` VALUES (389, 389, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (388, 388, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (387, 387, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (386, 386, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (385, 385, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (384, 384, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (383, 383, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (382, 382, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (381, 381, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36000, 72000, 240000, 1200, 2400, 24000);
INSERT INTO `menu` VALUES (376, 376, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (375, 375, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (374, 374, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 48000, 160000, 800, 1600, 16000);
INSERT INTO `menu` VALUES (373, 373, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 120000, 400000, 2000, 4000, 40000);
INSERT INTO `menu` VALUES (372, 372, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (371, 371, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (369, 369, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (301, 301, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (300, 300, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (299, 299, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (298, 298, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (297, 297, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (296, 296, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (274, 274, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39000, 75000, 250000, 1250, 2500, 25000);
INSERT INTO `menu` VALUES (273, 273, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (272, 272, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (271, 271, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (260, 260, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (259, 259, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (258, 258, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (257, 257, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (246, 246, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (245, 245, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (244, 244, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (243, 243, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (242, 242, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (241, 241, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (240, 240, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (239, 239, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (238, 238, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (237, 237, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (234, 234, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (233, 233, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (229, 229, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (227, 227, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (225, 225, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (223, 223, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (222, 222, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (221, 221, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (220, 220, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (219, 219, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (218, 218, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 120000, 400000, 2000, 4000, 40000);
INSERT INTO `menu` VALUES (217, 217, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (216, 216, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (215, 215, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (214, 214, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (213, 213, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (209, 209, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (207, 207, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (206, 206, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (205, 205, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (204, 204, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (203, 203, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (202, 202, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (201, 201, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39000, 75000, 250000, 1250, 2500, 25000);
INSERT INTO `menu` VALUES (200, 200, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (199, 199, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (198, 198, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (197, 197, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (196, 196, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (194, 194, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (193, 193, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (192, 192, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (189, 189, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (186, 186, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (185, 185, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (184, 184, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (183, 183, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39000, 75000, 250000, 1250, 2500, 25000);
INSERT INTO `menu` VALUES (178, 178, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39000, 75000, 250000, 1250, 2500, 25000);
INSERT INTO `menu` VALUES (177, 177, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (176, 176, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (175, 175, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (174, 174, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (172, 172, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (171, 171, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (170, 170, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (169, 169, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (168, 168, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (167, 167, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (166, 166, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (165, 165, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 120000, 400000, 2000, 4000, 40000);
INSERT INTO `menu` VALUES (155, 155, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (154, 154, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (153, 153, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (152, 152, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (151, 151, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (150, 150, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (146, 146, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (145, 145, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (144, 144, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 75000, 400, 800, 7500);
INSERT INTO `menu` VALUES (143, 143, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (142, 142, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (140, 140, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (139, 139, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (132, 132, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 75000, 400, 800, 7500);
INSERT INTO `menu` VALUES (131, 131, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (130, 130, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (129, 129, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (125, 125, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (124, 124, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (123, 123, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (122, 122, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (120, 120, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (119, 119, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (118, 118, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (117, 117, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (116, 116, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 75000, 400, 800, 7500);
INSERT INTO `menu` VALUES (115, 115, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (114, 114, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (113, 113, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (112, 112, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (111, 111, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (109, 109, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (107, 107, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (106, 106, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (105, 105, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (104, 104, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 75000, 400, 800, 7500);
INSERT INTO `menu` VALUES (101, 101, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (100, 100, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (98, 98, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (97, 97, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (96, 96, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (95, 95, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33000, 66000, 220000, 1100, 2200, 22000);
INSERT INTO `menu` VALUES (94, 94, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 39000, 125000, 600, 1250, 12500);
INSERT INTO `menu` VALUES (93, 93, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (92, 92, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (90, 90, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39000, 75000, 250000, 1250, 2500, 25000);
INSERT INTO `menu` VALUES (89, 89, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (88, 88, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 115000, 600, 1150, 11500);
INSERT INTO `menu` VALUES (87, 87, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 90000, 500, 900, 9000);
INSERT INTO `menu` VALUES (86, 86, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (85, 85, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (82, 82, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (81, 81, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (80, 80, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (79, 79, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 90000, 500, 900, 9000);
INSERT INTO `menu` VALUES (78, 78, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 42000, 140000, 700, 1400, 14000);
INSERT INTO `menu` VALUES (77, 77, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (76, 76, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 85000, 500, 900, 8500);
INSERT INTO `menu` VALUES (75, 75, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (73, 73, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 75000, 400, 800, 7500);
INSERT INTO `menu` VALUES (72, 72, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 145000, 700, 1450, 14500);
INSERT INTO `menu` VALUES (71, 71, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (70, 70, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (69, 69, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (68, 68, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 90000, 500, 900, 9000);
INSERT INTO `menu` VALUES (67, 67, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (66, 66, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 92000, 500, 1000, 9200);
INSERT INTO `menu` VALUES (65, 65, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 82000, 500, 900, 8200);
INSERT INTO `menu` VALUES (64, 64, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 78000, 400, 800, 7800);
INSERT INTO `menu` VALUES (63, 63, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (61, 61, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 27000, 85000, 500, 900, 8500);
INSERT INTO `menu` VALUES (60, 60, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 55000, 300, 600, 5500);
INSERT INTO `menu` VALUES (59, 59, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 75000, 400, 800, 7500);
INSERT INTO `menu` VALUES (58, 58, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 75000, 400, 800, 7500);
INSERT INTO `menu` VALUES (57, 57, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (56, 56, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (55, 55, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (54, 54, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (53, 53, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39000, 75000, 250000, 1250, 2500, 25000);
INSERT INTO `menu` VALUES (52, 52, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (51, 51, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 38000, 200, 400, 3800);
INSERT INTO `menu` VALUES (49, 49, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (48, 48, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (47, 47, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 38000, 200, 400, 3800);
INSERT INTO `menu` VALUES (46, 46, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 36000, 200, 400, 3600);
INSERT INTO `menu` VALUES (45, 45, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (44, 44, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (43, 43, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (42, 42, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (41, 41, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 75000, 400, 800, 7500);
INSERT INTO `menu` VALUES (40, 40, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 15000, 200, 400, 1500);
INSERT INTO `menu` VALUES (38, 38, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (37, 37, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 42000, 300, 500, 4200);
INSERT INTO `menu` VALUES (35, 35, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (34, 34, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (33, 33, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (32, 32, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (31, 31, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (30, 30, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (29, 29, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (28, 28, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (27, 27, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (26, 26, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (25, 25, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (24, 24, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (23, 23, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (22, 22, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (21, 21, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (19, 19, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 42000, 300, 500, 4200);
INSERT INTO `menu` VALUES (18, 18, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 38000, 200, 400, 3800);
INSERT INTO `menu` VALUES (17, 17, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (16, 16, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (15, 15, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (14, 14, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (13, 13, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (12, 12, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 38000, 200, 400, 3800);
INSERT INTO `menu` VALUES (11, 11, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 55000, 300, 600, 5500);
INSERT INTO `menu` VALUES (10, 10, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 15000, 200, 400, 1500);
INSERT INTO `menu` VALUES (9, 9, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (8, 8, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (7, 7, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (6, 6, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (5, 5, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (4, 4, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (3, 3, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (2, 2, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (1, 1, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131259, 131259, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 48000, 0, 0, 0);
INSERT INTO `menu` VALUES (131258, 131258, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (131257, 131257, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (131256, 131256, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (131255, 131255, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (131254, 131254, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (131253, 131253, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (131252, 131252, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (131251, 131251, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (131250, 131250, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131249, 131249, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131248, 131248, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (131245, 131245, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (131243, 131243, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131242, 131242, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (131241, 131241, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (131240, 131240, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (131239, 131239, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 48000, 300, 500, 4800);
INSERT INTO `menu` VALUES (131238, 131238, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (131237, 131237, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (131236, 131236, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (131235, 131235, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (131234, 131234, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (131233, 131233, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (131232, 131232, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (131231, 131231, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (131230, 131230, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (131229, 131229, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (131228, 131228, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (131227, 131227, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (131226, 131226, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (131225, 131225, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (131223, 131223, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (131222, 131222, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (131221, 131221, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (131220, 131220, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (131219, 131219, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (131218, 131218, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (131217, 131217, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (131216, 131216, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (131215, 131215, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (131206, 131206, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 48000, 160000, 800, 1600, 16000);
INSERT INTO `menu` VALUES (131203, 131203, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (131202, 131202, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (131201, 131201, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (131200, 131200, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (131199, 131199, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (131198, 131198, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (131184, 131184, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (131183, 131183, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36000, 72000, 240000, 1200, 2400, 24000);
INSERT INTO `menu` VALUES (131182, 131182, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (131177, 131177, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131175, 131175, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (131174, 131174, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131173, 131173, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131166, 131166, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131161, 131161, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131159, 131159, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131158, 131158, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131157, 131157, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131156, 131156, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (131155, 131155, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (131154, 131154, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (131153, 131153, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (131152, 131152, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131149, 131149, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36000, 72000, 240000, 1200, 2400, 24000);
INSERT INTO `menu` VALUES (131147, 131147, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131146, 131146, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (131145, 131145, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131144, 131144, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131143, 131143, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (131140, 131140, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (131139, 131139, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (131136, 131136, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 60000, 200000, 1000, 2000, 20000);
INSERT INTO `menu` VALUES (131135, 131135, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (131134, 131134, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (131133, 131133, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (131132, 131132, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4000, 6000, 10000, 200, 400, 1000);
INSERT INTO `menu` VALUES (131131, 131131, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (131130, 131130, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4000, 6000, 10000, 200, 400, 1000);
INSERT INTO `menu` VALUES (131129, 131129, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 45000, 150000, 800, 1250, 15000);
INSERT INTO `menu` VALUES (131128, 131128, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (131127, 131127, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (131125, 131125, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (131123, 131123, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36000, 72000, 240000, 1200, 2400, 24000);
INSERT INTO `menu` VALUES (131118, 131118, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (131117, 131117, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (131116, 131116, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (131115, 131115, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (131112, 131112, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 54000, 180000, 900, 1800, 18000);
INSERT INTO `menu` VALUES (131111, 131111, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 33000, 110000, 600, 1100, 11000);
INSERT INTO `menu` VALUES (131110, 131110, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 24000, 80000, 400, 800, 8000);
INSERT INTO `menu` VALUES (131109, 131109, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 95000, 500, 1000, 9500);
INSERT INTO `menu` VALUES (131108, 131108, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 48000, 300, 500, 4800);
INSERT INTO `menu` VALUES (131107, 131107, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 36000, 200, 400, 3600);
INSERT INTO `menu` VALUES (131106, 131106, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36000, 72000, 240000, 1200, 2400, 24000);
INSERT INTO `menu` VALUES (131105, 131105, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 39000, 125000, 600, 1250, 12500);
INSERT INTO `menu` VALUES (131104, 131104, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21000, 39000, 125000, 600, 1250, 12500);
INSERT INTO `menu` VALUES (131103, 131103, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 46000, 300, 500, 4600);
INSERT INTO `menu` VALUES (131102, 131102, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 56000, 300, 600, 5600);
INSERT INTO `menu` VALUES (131101, 131101, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (131100, 131100, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (131099, 131099, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (131098, 131098, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 16000, 200, 400, 1600);
INSERT INTO `menu` VALUES (131097, 131097, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (131096, 131096, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (131095, 131095, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (131094, 131094, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 36000, 120000, 600, 1200, 12000);
INSERT INTO `menu` VALUES (131093, 131093, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131090, 131090, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (131089, 131089, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131088, 131088, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (131087, 131087, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131086, 131086, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (131085, 131085, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (131084, 131084, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131083, 131083, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 15000, 200, 400, 1500);
INSERT INTO `menu` VALUES (131082, 131082, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131081, 131081, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131080, 131080, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131079, 131079, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (131078, 131078, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (131077, 131077, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131076, 131076, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (131075, 131075, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 8000, 12000, 200, 400, 1200);
INSERT INTO `menu` VALUES (131074, 131074, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 15000, 200, 400, 1500);
INSERT INTO `menu` VALUES (131073, 131073, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 20000, 200, 400, 2000);
INSERT INTO `menu` VALUES (205200, 205200, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 400, 700, 7000);
INSERT INTO `menu` VALUES (205199, 205199, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 400, 700, 7000);
INSERT INTO `menu` VALUES (205198, 205198, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 400, 700, 7000);
INSERT INTO `menu` VALUES (205197, 205197, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 300, 600, 6000);
INSERT INTO `menu` VALUES (205195, 205195, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 200, 400, 4000);
INSERT INTO `menu` VALUES (205194, 205194, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 300, 600, 6000);
INSERT INTO `menu` VALUES (205193, 205193, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 300, 600, 6000);
INSERT INTO `menu` VALUES (205192, 205192, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 300, 600, 6000);
INSERT INTO `menu` VALUES (205191, 205191, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 500, 1000, 10000);
INSERT INTO `menu` VALUES (205190, 205190, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 300, 600, 6000);
INSERT INTO `menu` VALUES (205189, 205189, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 300, 600, 6000);
INSERT INTO `menu` VALUES (205188, 205188, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 300, 600, 6000);
INSERT INTO `menu` VALUES (205187, 205187, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 200, 400, 4000);
INSERT INTO `menu` VALUES (205186, 205186, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 300, 600, 6000);
INSERT INTO `menu` VALUES (205185, 205185, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 200, 400, 4000);
INSERT INTO `menu` VALUES (205184, 205184, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 300, 600, 6000);
INSERT INTO `menu` VALUES (205183, 205183, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 200, 400, 4000);
INSERT INTO `menu` VALUES (205182, 205182, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 400, 700, 7000);
INSERT INTO `menu` VALUES (205173, 205173, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (205171, 205171, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205169, 205169, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205168, 205168, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205167, 205167, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (205166, 205166, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (205165, 205165, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (205164, 205164, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205162, 205162, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205150, 205150, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205149, 205149, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205148, 205148, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205147, 205147, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205146, 205146, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (205145, 205145, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205144, 205144, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (205143, 205143, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (205141, 205141, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 300, 600, 6000);
INSERT INTO `menu` VALUES (205139, 205139, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205138, 205138, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (205137, 205137, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205134, 205134, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (205133, 205133, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (205132, 205132, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 500, 1000, 10000);
INSERT INTO `menu` VALUES (205131, 205131, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 500, 1000, 10000);
INSERT INTO `menu` VALUES (205130, 205130, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (205129, 205129, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (205128, 205128, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (205127, 205127, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205126, 205126, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (205125, 205125, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 300, 500, 5000);
INSERT INTO `menu` VALUES (205124, 205124, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 300, 500, 5000);
INSERT INTO `menu` VALUES (205078, 205078, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (205077, 205077, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (205076, 205076, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (205075, 205075, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (205074, 205074, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (205073, 205073, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (205072, 205072, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (205071, 205071, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (205064, 205064, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (205063, 205063, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (205060, 205060, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (205059, 205059, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (205058, 205058, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 500, 1000, 10000);
INSERT INTO `menu` VALUES (205057, 205057, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 500, 1000, 10000);
INSERT INTO `menu` VALUES (205056, 205056, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205055, 205055, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205054, 205054, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205053, 205053, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205025, 205025, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (205024, 205024, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (205023, 205023, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205022, 205022, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205021, 205021, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205020, 205020, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205019, 205019, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205018, 205018, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205014, 205014, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 200, 400, 4000);
INSERT INTO `menu` VALUES (205013, 205013, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 200, 400, 4000);
INSERT INTO `menu` VALUES (205012, 205012, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (205011, 205011, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (205010, 205010, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205009, 205009, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (205002, 205002, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (205001, 205001, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (205000, 205000, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (204999, 204999, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (204998, 204998, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (204997, 204997, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (204996, 204996, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (204995, 204995, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (204994, 204994, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (204993, 204993, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (204992, 204992, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (204991, 204991, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 200, 400, 3000);
INSERT INTO `menu` VALUES (204990, 204990, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (204989, 204989, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (204988, 204988, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204987, 204987, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204986, 204986, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (204985, 204985, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 200, 400, 4000);
INSERT INTO `menu` VALUES (204984, 204984, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204983, 204983, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 200, 400, 3000);
INSERT INTO `menu` VALUES (204982, 204982, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204981, 204981, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204980, 204980, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204979, 204979, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 200, 400, 4000);
INSERT INTO `menu` VALUES (204978, 204978, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204977, 204977, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204976, 204976, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204975, 204975, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204968, 204968, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204967, 204967, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204966, 204966, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (204965, 204965, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (204964, 204964, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204963, 204963, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204962, 204962, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204961, 204961, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204957, 204957, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204956, 204956, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (204955, 204955, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204954, 204954, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (204953, 204953, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204952, 204952, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204951, 204951, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204950, 204950, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204949, 204949, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204948, 204948, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204947, 204947, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (204946, 204946, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (204945, 204945, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204944, 204944, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204943, 204943, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 500, 1000, 10000);
INSERT INTO `menu` VALUES (204942, 204942, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 500, 1000, 10000);
INSERT INTO `menu` VALUES (204941, 204941, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204940, 204940, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204939, 204939, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (204938, 204938, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (204937, 204937, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 500, 1000, 10000);
INSERT INTO `menu` VALUES (204936, 204936, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (204935, 204935, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (204934, 204934, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (204933, 204933, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (204932, 204932, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (204931, 204931, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (204930, 204930, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 30000, 100000, 500, 1000, 10000);
INSERT INTO `menu` VALUES (204929, 204929, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (204928, 204928, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (204927, 204927, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204926, 204926, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204924, 204924, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (204923, 204923, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204922, 204922, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204920, 204920, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (204919, 204919, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (204916, 204916, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204915, 204915, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204914, 204914, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204913, 204913, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204912, 204912, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (204911, 204911, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (204910, 204910, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204909, 204909, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 200, 400, 4000);
INSERT INTO `menu` VALUES (204908, 204908, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204907, 204907, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204906, 204906, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204905, 204905, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204903, 204903, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204902, 204902, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204900, 204900, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 55000, 300, 600, 5500);
INSERT INTO `menu` VALUES (204899, 204899, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204898, 204898, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (204897, 204897, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204896, 204896, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (204895, 204895, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204894, 204894, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (204893, 204893, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204892, 204892, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (204889, 204889, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204888, 204888, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 300, 600, 5500);
INSERT INTO `menu` VALUES (204887, 204887, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204886, 204886, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 55000, 300, 600, 5500);
INSERT INTO `menu` VALUES (204885, 204885, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204884, 204884, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (204883, 204883, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204882, 204882, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (204880, 204880, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204879, 204879, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204878, 204878, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204877, 204877, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204876, 204876, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204875, 204875, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 70000, 400, 700, 7000);
INSERT INTO `menu` VALUES (204874, 204874, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204873, 204873, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 65000, 400, 700, 6500);
INSERT INTO `menu` VALUES (204871, 204871, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204870, 204870, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204869, 204869, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (204868, 204868, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 55000, 300, 600, 5500);
INSERT INTO `menu` VALUES (204867, 204867, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 300, 500, 4500);
INSERT INTO `menu` VALUES (204866, 204866, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204865, 204865, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 55000, 300, 600, 5500);
INSERT INTO `menu` VALUES (204864, 204864, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204863, 204863, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204862, 204862, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (204861, 204861, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204859, 204859, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204858, 204858, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 65000, 400, 700, 6500);
INSERT INTO `menu` VALUES (204857, 204857, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 55000, 300, 600, 5500);
INSERT INTO `menu` VALUES (204856, 204856, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (204855, 204855, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204854, 204854, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 25000, 200, 400, 2500);
INSERT INTO `menu` VALUES (204853, 204853, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 400, 700, 7000);
INSERT INTO `menu` VALUES (204852, 204852, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (204851, 204851, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 21000, 65000, 400, 700, 6500);
INSERT INTO `menu` VALUES (204850, 204850, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (204849, 204849, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (204848, 204848, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (204847, 204847, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (204846, 204846, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 300, 600, 6000);
INSERT INTO `menu` VALUES (204845, 204845, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (204844, 204844, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (204843, 204843, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204841, 204841, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (204840, 204840, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 300, 600, 6000);
INSERT INTO `menu` VALUES (204839, 204839, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (204838, 204838, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 55000, 300, 600, 5500);
INSERT INTO `menu` VALUES (204837, 204837, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204836, 204836, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (204830, 204830, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (204829, 204829, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (204828, 204828, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204827, 204827, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (204822, 204822, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204821, 204821, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 300, 600, 6000);
INSERT INTO `menu` VALUES (204820, 204820, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 30000, 200, 400, 3000);
INSERT INTO `menu` VALUES (204819, 204819, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204818, 204818, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (204817, 204817, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 200, 400, 3000);
INSERT INTO `menu` VALUES (204816, 204816, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 55000, 300, 600, 5500);
INSERT INTO `menu` VALUES (204815, 204815, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 18000, 60000, 300, 600, 6000);
INSERT INTO `menu` VALUES (204814, 204814, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204813, 204813, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204812, 204812, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 300, 600, 6000);
INSERT INTO `menu` VALUES (204811, 204811, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 35000, 200, 400, 3500);
INSERT INTO `menu` VALUES (204810, 204810, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 50000, 300, 500, 5000);
INSERT INTO `menu` VALUES (204809, 204809, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 42000, 300, 500, 4200);
INSERT INTO `menu` VALUES (204808, 204808, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204807, 204807, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204806, 204806, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 12000, 40000, 200, 400, 4000);
INSERT INTO `menu` VALUES (204805, 204805, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 15000, 45000, 300, 500, 4500);
INSERT INTO `menu` VALUES (204801, 204801, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 4000, 8000, 0);
INSERT INTO `menu` VALUES (196613, 196613, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1700, 3300, 33000);
INSERT INTO `menu` VALUES (196614, 196614, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1700, 3300, 33000);
INSERT INTO `menu` VALUES (196619, 196619, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2800, 5500, 55000);
INSERT INTO `menu` VALUES (196620, 196620, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2800, 5500, 55000);
INSERT INTO `menu` VALUES (196609, 196609, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 3200, 6300, 63000);
INSERT INTO `menu` VALUES (196610, 196610, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 3200, 6300, 63000);
INSERT INTO `menu` VALUES (196611, 196611, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1000, 2000, 19900);
INSERT INTO `menu` VALUES (196612, 196612, 86400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1000, 2000, 19900);

-- ----------------------------
-- Table structure for mobilerecord
-- ----------------------------
DROP TABLE IF EXISTS `mobilerecord`;
CREATE TABLE `mobilerecord`  (
  `Win` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Lose` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Mobile` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT ''
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for moneyscoresave
-- ----------------------------
DROP TABLE IF EXISTS `moneyscoresave`;
CREATE TABLE `moneyscoresave`  (
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Money` int(10) NULL DEFAULT NULL,
  `Score` int(11) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`Id`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg`  (
  `id_msg` int(6) NOT NULL AUTO_INCREMENT,
  `idfrom` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `idto` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hora` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `assunto` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `msg` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `recebida` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`id_msg`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for msgqueue
-- ----------------------------
DROP TABLE IF EXISTS `msgqueue`;
CREATE TABLE `msgqueue`  (
  `SerialNo` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mutelog
-- ----------------------------
DROP TABLE IF EXISTS `mutelog`;
CREATE TABLE `mutelog`  (
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `StartTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `Duration` smallint(6) NOT NULL DEFAULT 0,
  `Reason` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Judge` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  INDEX `Id` USING BTREE(`Id`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for new_table
-- ----------------------------
DROP TABLE IF EXISTS `new_table`;
CREATE TABLE `new_table`  (
  `f_index` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `f_title` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `f_Content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `f_view_count` int(11) NOT NULL DEFAULT 0,
  `f_date` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  PRIMARY KEY USING BTREE (`f_index`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for news_post
-- ----------------------------
DROP TABLE IF EXISTS `news_post`;
CREATE TABLE `news_post`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `topic` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `detail` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(65) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Administrador',
  `login` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'admin',
  `email` varchar(65) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'No e-mail',
  `datetime` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `view` int(4) NOT NULL DEFAULT 0,
  `reply` int(4) NOT NULL DEFAULT 0,
  `grade` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '-5',
  `country` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '246',
  `Type` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci PACK_KEYS = 0 ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for news_reply
-- ----------------------------
DROP TABLE IF EXISTS `news_reply`;
CREATE TABLE `news_reply`  (
  `question_id` int(4) NOT NULL DEFAULT 0,
  `a_id` int(4) NOT NULL DEFAULT 0,
  `a_name` varchar(65) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `a_nick` varchar(65) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `a_answer` varchar(62) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `a_datetime` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `a_grade` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `a_login` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `a_email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `a_country` int(3) NOT NULL DEFAULT 0,
  INDEX `a_id` USING BTREE(`a_id`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for newstbl
-- ----------------------------
DROP TABLE IF EXISTS `newstbl`;
CREATE TABLE `newstbl`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` date NOT NULL DEFAULT '0001-01-01',
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for nicklog
-- ----------------------------
DROP TABLE IF EXISTS `nicklog`;
CREATE TABLE `nicklog`  (
  `No` int(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `OldNickName` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `NewNickName` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Date_Changed` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`No`, `Id`, `OldNickName`, `NewNickName`)
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for packet
-- ----------------------------
DROP TABLE IF EXISTS `packet`;
CREATE TABLE `packet`  (
  `SerialNo` int(11) NOT NULL AUTO_INCREMENT,
  `Receiver` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Sender` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Code` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Body` tinyblob NOT NULL,
  `Time` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  PRIMARY KEY USING BTREE (`SerialNo`),
  INDEX `Receiver` USING BTREE(`Receiver`)
) ENGINE = MyISAM AUTO_INCREMENT = 115 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for playlog
-- ----------------------------
DROP TABLE IF EXISTS `playlog`;
CREATE TABLE `playlog`  (
  `ServerIP` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `GameRoomID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GameRoomTitle` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `StartTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `EndTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `GameOption` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `WinTeamOrPlayer` tinyint(1) NOT NULL DEFAULT 0,
  `S0_ID` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `S0_TeamID` tinyint(4) NOT NULL DEFAULT 0,
  `S0_DeadTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `S0_DeadCause` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `S0_ScoreDelta` smallint(6) NOT NULL DEFAULT 0,
  `S0_MoneyDelta` int(11) NOT NULL DEFAULT 0,
  `S1_ID` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `S1_TeamID` tinyint(4) NOT NULL DEFAULT 0,
  `S1_DeadTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `S1_DeadCause` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `S1_ScoreDelta` smallint(6) NOT NULL DEFAULT 0,
  `S1_MoneyDelta` int(11) NOT NULL DEFAULT 0,
  `S2_ID` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `S2_TeamID` tinyint(4) NOT NULL DEFAULT 0,
  `S2_DeadTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `S2_DeadCause` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `S2_ScoreDelta` smallint(6) NOT NULL DEFAULT 0,
  `S2_MoneyDelta` int(11) NOT NULL DEFAULT 0,
  `S3_ID` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `S3_TeamID` tinyint(4) NOT NULL DEFAULT 0,
  `S3_DeadTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `S3_DeadCause` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `S3_ScoreDelta` smallint(6) NOT NULL DEFAULT 0,
  `S3_MoneyDelta` int(11) NOT NULL DEFAULT 0,
  `S4_ID` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `S4_TeamID` tinyint(4) NOT NULL DEFAULT 0,
  `S4_DeadTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `S4_DeadCause` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `S4_ScoreDelta` smallint(6) NOT NULL DEFAULT 0,
  `S4_MoneyDelta` int(11) NOT NULL DEFAULT 0,
  `S5_ID` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `S5_TeamID` tinyint(4) NOT NULL DEFAULT 0,
  `S5_DeadTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `S5_DeadCause` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `S5_ScoreDelta` smallint(6) NOT NULL DEFAULT 0,
  `S5_MoneyDelta` int(11) NOT NULL DEFAULT 0,
  `S6_ID` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `S6_TeamID` tinyint(4) NOT NULL DEFAULT 0,
  `S6_DeadTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `S6_DeadCause` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `S6_ScoreDelta` smallint(6) NOT NULL DEFAULT 0,
  `S6_MoneyDelta` int(11) NOT NULL DEFAULT 0,
  `S7_ID` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `S7_TeamID` tinyint(4) NOT NULL DEFAULT 0,
  `S7_DeadTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `S7_DeadCause` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `S7_ScoreDelta` smallint(6) NOT NULL DEFAULT 0,
  `S7_MoneyDelta` int(11) NOT NULL DEFAULT 0,
  INDEX `S0_ID` USING BTREE(`S0_ID`),
  INDEX `S1_ID` USING BTREE(`S1_ID`),
  INDEX `S2_ID` USING BTREE(`S2_ID`),
  INDEX `S3_ID` USING BTREE(`S3_ID`),
  INDEX `S4_ID` USING BTREE(`S4_ID`),
  INDEX `S5_ID` USING BTREE(`S5_ID`),
  INDEX `S6_ID` USING BTREE(`S6_ID`),
  INDEX `S7_ID` USING BTREE(`S7_ID`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for playrecord
-- ----------------------------
DROP TABLE IF EXISTS `playrecord`;
CREATE TABLE `playrecord`  (
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `NickName` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `KillCount` int(11) NOT NULL DEFAULT 1,
  `DoubleKillCount` int(11) NOT NULL DEFAULT 1
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for poll
-- ----------------------------
DROP TABLE IF EXISTS `poll`;
CREATE TABLE `poll`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Text` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Date` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `Author` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Cuenta` int(4) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`Id`)
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for priceerror
-- ----------------------------
DROP TABLE IF EXISTS `priceerror`;
CREATE TABLE `priceerror`  (
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Reason` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  INDEX `Id` USING BTREE(`Id`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rankcalcbreak
-- ----------------------------
DROP TABLE IF EXISTS `rankcalcbreak`;
CREATE TABLE `rankcalcbreak`  (
  `Id` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Rank` int(11) NOT NULL DEFAULT 0,
  `Grade` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`Id`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for rankmax
-- ----------------------------
DROP TABLE IF EXISTS `rankmax`;
CREATE TABLE `rankmax`  (
  `rankmax` decimal(65, 0) UNSIGNED NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for receiptbuy
-- ----------------------------
DROP TABLE IF EXISTS `receiptbuy`;
CREATE TABLE `receiptbuy`  (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MenuId` int(11) NULL DEFAULT NULL,
  `CashChecked` int(11) NULL DEFAULT NULL,
  `GoldChecked` int(11) NULL DEFAULT NULL,
  `Time` timestamp NULL DEFAULT NULL,
  `BuyType` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `ExpireType` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ReceiptGiftNo` int(11) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`No`),
  INDEX `Id` USING BTREE(`Id`)
) ENGINE = MyISAM AUTO_INCREMENT = 3114 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for receiptconsume
-- ----------------------------
DROP TABLE IF EXISTS `receiptconsume`;
CREATE TABLE `receiptconsume`  (
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Item` int(16) NULL DEFAULT 0,
  `Volume` int(11) NULL DEFAULT 0,
  `Recovered` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Refund` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Time` timestamp NULL DEFAULT NULL,
  `ExpireType` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `Expire` int(11) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for receiptgift
-- ----------------------------
DROP TABLE IF EXISTS `receiptgift`;
CREATE TABLE `receiptgift`  (
  `No` int(20) NOT NULL AUTO_INCREMENT,
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MenuId` int(10) UNSIGNED NULL DEFAULT 0,
  `Volume` int(11) NULL DEFAULT NULL,
  `Receiver` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ReceiverNick` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Time` timestamp NULL DEFAULT NULL,
  `Result` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Expiretype` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ConfirmTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`No`),
  INDEX `Id` USING BTREE(`Id`),
  INDEX `Receiver` USING BTREE(`Receiver`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for receiptgift2
-- ----------------------------
DROP TABLE IF EXISTS `receiptgift2`;
CREATE TABLE `receiptgift2`  (
  `No` int(11) NOT NULL DEFAULT 0,
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `MenuId` int(11) NOT NULL DEFAULT 0,
  `Volume` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Receiver` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `ReceiverNick` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ConfirmTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Result` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `ExpireType` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`No`, `Id`, `Receiver`, `ReceiverNick`),
  INDEX `Id` USING BTREE(`Id`),
  INDEX `Receiver` USING BTREE(`ReceiverNick`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for receiptsell
-- ----------------------------
DROP TABLE IF EXISTS `receiptsell`;
CREATE TABLE `receiptsell`  (
  `Id` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Prop` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `MoneyDelta` int(11) NOT NULL DEFAULT 0,
  `CashDelta` int(11) NOT NULL DEFAULT 0,
  `Time` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  INDEX `Id` USING BTREE(`Id`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for records
-- ----------------------------
DROP TABLE IF EXISTS `records`;
CREATE TABLE `records`  (
  `c_num` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Mask_Decimal` decimal(10, 0) NOT NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for registro
-- ----------------------------
DROP TABLE IF EXISTS `registro`;
CREATE TABLE `registro`  (
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `user` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Gender` smallint(2) NOT NULL DEFAULT 0,
  `NickName` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Password` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `FirstName` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `LastName` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Status` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `MuteTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `RestrictTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Authority` int(3) NOT NULL DEFAULT 1,
  `Authority2` int(3) NOT NULL DEFAULT 1,
  `AuthorityBackup` int(3) NULL DEFAULT NULL,
  `E_Mail` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Country` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `User_Level` int(3) NOT NULL DEFAULT 19,
  `Dia` int(3) NOT NULL DEFAULT 0,
  `Mes` int(3) NOT NULL DEFAULT 0,
  `Ano` int(3) NOT NULL DEFAULT 0,
  `Coupon1` int(4) NOT NULL DEFAULT 0,
  `Coupon2` int(4) NOT NULL DEFAULT 0,
  `Coupon3` int(4) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`Id`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for report_site
-- ----------------------------
DROP TABLE IF EXISTS `report_site`;
CREATE TABLE `report_site`  (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `ip` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `writer` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` datetime NULL DEFAULT NULL,
  `totalgrade` int(5) NULL DEFAULT NULL,
  `confirm` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  PRIMARY KEY USING BTREE (`no`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for restrict_table
-- ----------------------------
DROP TABLE IF EXISTS `restrict_table`;
CREATE TABLE `restrict_table`  (
  `Sn` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `StartTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `EndTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `Duration` smallint(6) NOT NULL DEFAULT 0,
  `ReaSon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Count` int(11) NOT NULL DEFAULT 0,
  `Judge` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `view` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`Sn`),
  INDEX `ID` USING BTREE(`ID`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for score_history
-- ----------------------------
DROP TABLE IF EXISTS `score_history`;
CREATE TABLE `score_history`  (
  `Id` char(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Admin` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `user` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `SeasonScore` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TotalScore` char(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Fecha` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT ''
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for sentip
-- ----------------------------
DROP TABLE IF EXISTS `sentip`;
CREATE TABLE `sentip`  (
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `SerialNo` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Ip` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`Id`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for servicestatus
-- ----------------------------
DROP TABLE IF EXISTS `servicestatus`;
CREATE TABLE `servicestatus`  (
  `SerialNo` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Time` time NOT NULL DEFAULT '00:00:00',
  `ServerIp` int(15) NOT NULL DEFAULT 0,
  `ServerPort` smallint(5) NOT NULL DEFAULT 0,
  `Status` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of servicestatus
-- ----------------------------
INSERT INTO `servicestatus` VALUES ('37851212', '14:39:50', 2147483647, 8361, 'S');
INSERT INTO `servicestatus` VALUES ('37851212', '14:31:24', 2147483647, 8361, 'T');
INSERT INTO `servicestatus` VALUES ('37851212', '14:30:09', 2147483647, 8361, 'S');
INSERT INTO `servicestatus` VALUES ('37851212', '15:35:59', 1157736640, 8361, 'T');
INSERT INTO `servicestatus` VALUES ('37851212', '15:33:50', 1157736640, 8361, 'S');
INSERT INTO `servicestatus` VALUES ('37851212', '12:06:42', 234989760, 8361, 'T');

-- ----------------------------
-- Table structure for stagerecord
-- ----------------------------
DROP TABLE IF EXISTS `stagerecord`;
CREATE TABLE `stagerecord`  (
  `Win` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Lose` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Stage` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tables_priv
-- ----------------------------
DROP TABLE IF EXISTS `tables_priv`;
CREATE TABLE `tables_priv`  (
  `Host` char(60) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Db` char(64) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `User` char(16) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Table_name` char(60) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Grantor` char(77) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`Host`, `Db`, `User`, `Table_name`),
  INDEX `Grantor` USING BTREE(`Grantor`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = 'Table privileges' ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for tbl_nick
-- ----------------------------
DROP TABLE IF EXISTS `tbl_nick`;
CREATE TABLE `tbl_nick`  (
  `column_nick` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tickets
-- ----------------------------
DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NickName` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `CountryGrade` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `signforum` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `Title` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Text` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Text2` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `Date` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `Author` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Comments` int(4) NOT NULL DEFAULT 0,
  `class` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `lastpost` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  PRIMARY KEY USING BTREE (`Id`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tickets2
-- ----------------------------
DROP TABLE IF EXISTS `tickets2`;
CREATE TABLE `tickets2`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NickName` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `CountryGrade` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `signforum` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Msg_Id` int(11) NOT NULL DEFAULT 0,
  `IP` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Author` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Title` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Comment` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Date` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  PRIMARY KEY USING BTREE (`Id`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci PACK_KEYS = 0 ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tickets_msg
-- ----------------------------
DROP TABLE IF EXISTS `tickets_msg`;
CREATE TABLE `tickets_msg`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_ticket` int(10) NULL DEFAULT 0,
  `usuario` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `msg` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for topdoadores
-- ----------------------------
DROP TABLE IF EXISTS `topdoadores`;
CREATE TABLE `topdoadores`  (
  `usuario` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `valor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of topdoadores
-- ----------------------------
INSERT INTO `topdoadores` VALUES ('KillerOwneD', '');

-- ----------------------------
-- Table structure for toprankers
-- ----------------------------
DROP TABLE IF EXISTS `toprankers`;
CREATE TABLE `toprankers`  (
  `NickName` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Guild` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Score` int(11) NULL DEFAULT NULL,
  `Rank` int(11) NULL DEFAULT NULL,
  `Grade` smallint(6) NULL DEFAULT NULL,
  `CountryGrade` smallint(6) NULL DEFAULT NULL,
  `Country` int(11) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for totalrank
-- ----------------------------
DROP TABLE IF EXISTS `totalrank`;
CREATE TABLE `totalrank`  (
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `NickName` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Score` int(11) NOT NULL DEFAULT 0,
  `Rank` int(11) NOT NULL DEFAULT 0,
  `Grade` int(11) NOT NULL DEFAULT 0,
  `Guild` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `MemberCount` smallint(6) NOT NULL DEFAULT 0,
  `GuildRank` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`Id`),
  INDEX `Guild` USING BTREE(`Guild`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `user` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Gender` smallint(2) NOT NULL DEFAULT 0,
  `NickName` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Password` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Status` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `MuteTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `RestrictTime` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `Authority` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `E_Mail` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Country` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '28',
  `User_Level` int(3) NOT NULL DEFAULT 0,
  `Authority2` int(3) NOT NULL DEFAULT 0,
  `signforum` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Resposta` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Pergunta` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `Estado` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Cidade` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Aviso1` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Aviso2` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Aviso3` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `foto` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `comentario` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY USING BTREE (`Id`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('thdung3', 'thdung3', 0, 'Picaso', '12345678', '1', '0001-01-01 00:00:01', '0001-01-01 00:00:01', '1', '111@gmail.com', '214', 1, 1, '', '', '0', '', '', '', '', '', '', '');
INSERT INTO `user` VALUES ('pgaming', 'pgaming', 0, 'pgaming', '123456', '1', '0001-01-01 00:00:01', '0001-01-01 00:00:01', '100', '123456@gmail.com', '214', 1, 100, '', '', '0', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for usercount
-- ----------------------------
DROP TABLE IF EXISTS `usercount`;
CREATE TABLE `usercount`  (
  `SerialNo` int(11) NOT NULL DEFAULT 0,
  `ServerIp` smallint(5) NOT NULL DEFAULT 0,
  `ServerPort` smallint(5) NOT NULL DEFAULT 0,
  `Time` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  `UserCount` int(10) NOT NULL DEFAULT 0,
  INDEX `Id` USING BTREE(`SerialNo`, `ServerIp`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of usercount
-- ----------------------------
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 16:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 16:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 16:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 16:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 16:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 16:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 16:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 16:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 16:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 16:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 16:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 15:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 15:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 15:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 15:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 15:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 15:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 15:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 15:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 15:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 15:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 15:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 15:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 14:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 14:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 14:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 14:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 14:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 14:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 14:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 14:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 14:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 14:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 14:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 14:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 13:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 13:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 13:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 13:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 13:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 13:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 13:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 13:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 13:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 13:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 13:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 13:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 12:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 12:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 12:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 12:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 12:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 12:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 12:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 12:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 12:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 12:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 12:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 12:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 11:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 11:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 11:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 11:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 11:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 11:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 11:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 11:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 11:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 11:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 11:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 11:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 10:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 10:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 10:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 10:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 10:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 10:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 10:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 10:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 10:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 10:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 10:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 10:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 09:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 09:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 09:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 09:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 09:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 09:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 09:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 09:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 09:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 09:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 09:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 09:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 08:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 08:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 08:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 08:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 08:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 08:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 08:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 08:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 08:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 08:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 08:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 08:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 07:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 07:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 07:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 07:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 07:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 07:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 07:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 07:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 07:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 07:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 07:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 07:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 06:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 06:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 06:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 06:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 06:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 06:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 06:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 06:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 06:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 06:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 06:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 06:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 05:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 05:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 05:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 05:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 05:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 05:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 05:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 05:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 05:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 05:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 05:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 05:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 04:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 04:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 04:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 04:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 04:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 04:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 04:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 04:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 04:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 04:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 04:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 04:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 03:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 03:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 03:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 03:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 03:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 03:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 03:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 03:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 03:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 03:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 03:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 03:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 02:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 02:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 02:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 02:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 02:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 02:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 02:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 02:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 02:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 02:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 02:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 02:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 01:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 01:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 01:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 01:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 01:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 01:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 01:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 01:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 01:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 01:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 01:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 01:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 00:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 00:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 00:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 00:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 00:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 00:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 00:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 00:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 00:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 00:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 00:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-09-01 00:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 23:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 23:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 23:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 23:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 23:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 23:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 23:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 23:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 23:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 23:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 23:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 23:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 22:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 22:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 22:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 22:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 22:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 22:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 22:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 22:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 22:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 22:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 22:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 22:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 21:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 21:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 21:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 21:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 21:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 21:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 21:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 21:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 21:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 21:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 21:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 21:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 20:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 20:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 20:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 20:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 20:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 20:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 20:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 20:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 20:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 20:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 20:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 20:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 19:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 19:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 19:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 19:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 19:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 19:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 19:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 19:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 19:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 19:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 19:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 19:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 18:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 18:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 18:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 18:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 18:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 18:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 18:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 18:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 18:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 18:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 18:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 18:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 17:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 17:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 17:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 17:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 17:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 17:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 17:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 17:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 17:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 17:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 17:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 17:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 16:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 16:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 16:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 16:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 16:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 16:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 16:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 16:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 16:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 16:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 16:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 16:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 15:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 15:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 15:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 15:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 15:39:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 15:34:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 15:29:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 15:24:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 15:19:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 15:14:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 15:09:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 15:04:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 14:59:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 14:54:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 14:49:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2023-08-31 14:44:50', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2022-10-16 12:02:14', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2022-10-16 11:57:14', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2022-10-16 11:52:14', 0);
INSERT INTO `usercount` VALUES (37851212, 32767, 8361, '2022-10-16 11:47:14', 0);

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario`  (
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `usuario` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Gender` smallint(2) NOT NULL DEFAULT 0,
  `NickName` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `senha` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Pergunta` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Resposta` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Status` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `MuteTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `RestrictTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Authority` int(3) NOT NULL DEFAULT 1,
  `Authority2` int(3) NOT NULL DEFAULT 1,
  `AuthorityBackup` int(3) NULL DEFAULT NULL,
  `E_Mail` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Country` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `User_Level` int(3) NOT NULL DEFAULT 19,
  `Dia` int(3) NOT NULL DEFAULT 0,
  `Mes` int(3) NOT NULL DEFAULT 0,
  `Ano` int(3) NOT NULL DEFAULT 0,
  `Coupon1` int(4) NOT NULL DEFAULT 0,
  `Coupon2` int(4) NOT NULL DEFAULT 0,
  `Coupon3` int(4) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`Id`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `senha` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `Expire` datetime NOT NULL DEFAULT '0001-01-01 00:00:01',
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vip
-- ----------------------------
DROP TABLE IF EXISTS `vip`;
CREATE TABLE `vip`  (
  `Id` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `dia` date NOT NULL DEFAULT '0001-01-01',
  `expira` date NOT NULL DEFAULT '0001-01-01',
  PRIMARY KEY USING BTREE (`Id`)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
