/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50709
 Source Host           : localhost:3306
 Source Schema         : xiangmu

 Target Server Type    : MySQL
 Target Server Version : 50709
 File Encoding         : 65001

 Date: 18/02/2019 21:58:21
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `num` int(255) NULL DEFAULT NULL,
  `img1` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `price` int(255) NULL DEFAULT NULL,
  `names` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `good_id` int(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 30 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES (29, '白蓝色', 1, '../img/6379451-1j201805041503118037.jpg', 219, '凡客衬衫 易打理 领尖扣 男款 白蓝细格\n        ', 4);
INSERT INTO `car` VALUES (28, '白色', 1, '../img/6373824-1j201709151927089726.jpg', 2233, '凡客衬衫 易打理 领尖扣 男款 白色\n        ', 8);

-- ----------------------------
-- Table structure for liebiao
-- ----------------------------
DROP TABLE IF EXISTS `liebiao`;
CREATE TABLE `liebiao`  (
  `id` int(6) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `price` int(255) NULL DEFAULT NULL,
  `number` int(255) NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `xiaoliang` int(255) NULL DEFAULT NULL,
  `img1` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of liebiao
-- ----------------------------
INSERT INTO `liebiao` VALUES (1, '凡客衬衫 易打理 领尖扣 男款 藏青', 1111, 4322, '../img/6382340-1j201811021045315483.jpg', 212, '../img/6382340-1j201811021045315483.jpg', '藏青');
INSERT INTO `liebiao` VALUES (2, '凡客衬衫 易打理 领尖扣 男款 伽白色', 2, 67, '../img/6379524-1j201810241032525137.jpg', 2123, '../img/6379524-1j201810241032525137.jpg', '白色');
INSERT INTO `liebiao` VALUES (3, '凡客衬衫 易打理 领尖扣 男款 天蓝色', 1182, 45, '../img/6379454-1j201805041552269739.jpg', 333, '../img/6379454-1j201805041552269739.jpg', '天蓝色');
INSERT INTO `liebiao` VALUES (4, '凡客衬衫 易打理 领尖扣 男款 白蓝细格', 219, 882, '../img/6379451-1j201805041503118037.jpg', 2, '../img/6379451-1j201805041503118037.jpg', '白蓝色');
INSERT INTO `liebiao` VALUES (5, '凡客衬衫 易打理 领尖扣 男款 蓝白维西格', 120333, 47, '../img/6379452-1j201805041503168039.jpg', 333, '../img/6379452-1j201805041503168039.jpg', '蓝白色');
INSERT INTO `liebiao` VALUES (6, '凡客衬衫 易打理 领尖扣 男款 蓝白条', 121, 48, '../img/6379453-1j201805041503318044.jpg', 88, '../img/6379453-1j201805041503318044.jpg', '蓝白色');
INSERT INTO `liebiao` VALUES (7, '凡客衬衫 易打理 领尖扣 男款 蓝色', 1202, 493, '../img/6375106-1j201710131712143446.jpg', 55, '../img/6375106-1j201710131712143446.jpg', '蓝色');
INSERT INTO `liebiao` VALUES (8, '凡客衬衫 易打理 领尖扣 男款 白色', 2233, 503, '../img/6373824-1j201709151927089726.jpg', 77, '../img/6373824-1j201709151927089726.jpg', '白色');
INSERT INTO `liebiao` VALUES (9, '凡客衬衫 易打理 领尖扣 短袖 男款 姚木红', 175, 51, '../img/6375108-1j201711091723484831.jpg', 66, '../img/6375108-1j201711091723484831.jpg', '姚木红');
INSERT INTO `liebiao` VALUES (10, '凡客衬衫 易打理 领尖扣 短袖 男款 藏青', 12523, 2121, '../img/6377950-1j201709181637233065.jpg', 222, '../img/6377950-1j201709181637233065.jpg', '藏青');
INSERT INTO `liebiao` VALUES (11, '凡客衬衫 易打理 领尖扣 短袖 男款 伽白', 213, 35, '../img/6379520-1j201810191113415962.jpg', 889, '../img/6379520-1j201810191113415962.jpg', '白');
INSERT INTO `liebiao` VALUES (12, '凡客衬衫 易打理 领尖扣 短袖 男款 天蓝', 1272, 54, '../img/6377098-1j201710131712250946.jpg', 6646, '../img/6377098-1j201710131712250946.jpg', '天蓝色');
INSERT INTO `liebiao` VALUES (13, '凡客衬衫 易打理 宽松复古开领 男款1 蓝青宽条', 128, 554, '../img/6358705-1j201508281549043010.jpg', 57, '../img/6358705-1j201508281549043010.jpg', '藏青');
INSERT INTO `liebiao` VALUES (14, '凡客衬衫 易打理 宽松复古开领 男款1 绿宽条', 188, 1111, '../img/6379500-1j201810191113348773.jpg', 44, '../img/6379500-1j201810191113348773.jpg', '白色');
INSERT INTO `liebiao` VALUES (15, '凡客衬衫 易打理 宽松复古开领 男款1 桃木红宽条', 13011, 1444, '../img/6379523-1j201810191200399915.jpg', 4654, '../img/6379523-1j201810191200399915.jpg', '天蓝色');
INSERT INTO `liebiao` VALUES (16, '凡客衬衫 易打理 宽松复古开领 男款1 白宽条', 1312, 58, '../img/6379524-1j201810241032525137.jpg', 3422, '../img/6379524-1j201810241032525137.jpg', '白蓝色');
INSERT INTO `liebiao` VALUES (17, '凡客衬衫 易打理 宽松复古开领 男款1 藏青宽条', 159, 552, '../img/6379525-1j201805171431260227.jpg', 3332, '../img/6379525-1j201805171431260227.jpg', '蓝白色');
INSERT INTO `liebiao` VALUES (18, '凡客衬衫 易打理 宽松复古开领 男款1 驼色宽条', 1333, 60, '../img/6375106-1j201710131712143446.jpg', 5666, '../img/6375106-1j201710131712143446.jpg', '蓝白色');
INSERT INTO `liebiao` VALUES (19, '凡客衬衫 易打理 宽松复古开领 男款1 蓝青宽条', 166, 61, '../img/6379525-1j201805171431260227.jpg', 7555, '../img/6379525-1j201805171431260227.jpg', '蓝色');
INSERT INTO `liebiao` VALUES (20, '凡客衬衫 易打理 领尖扣 短袖 男款 姚木红', 26623, 4242, '../img/6379454-1j201805041552269739.jpg', 3322, '../img/6379454-1j201805041552269739.jpg', '白色');
INSERT INTO `liebiao` VALUES (21, '凡客衬衫 易打理 宽松复古开领 男款1 蓝青宽条', 1281, 554, '../img/6358705-1j201508281549043010.jpg', 57, '../img/6358705-1j201508281549043010.jpg', '姚木红');
INSERT INTO `liebiao` VALUES (22, '凡客衬衫 易打理 宽松复古开领 男款1 绿宽条', 1884, 1111, '../img/6379500-1j201810191113348773.jpg', 44, '../img/6379500-1j201810191113348773.jpg', '藏青');
INSERT INTO `liebiao` VALUES (23, '凡客衬衫 易打理 宽松复古开领 男款1 桃木红宽条', 130, 1444, '../img/6379523-1j201810191200399915.jpg', 4654, '../img/6379523-1j201810191200399915.jpg', '白');
INSERT INTO `liebiao` VALUES (24, '凡客衬衫 易打理 宽松复古开领 男款1 白宽条', 131, 58, '../img/6379524-1j201810241032525137.jpg', 3422, '../img/6379524-1j201810241032525137.jpg', '藏青');
INSERT INTO `liebiao` VALUES (25, '凡客衬衫 易打理 宽松复古开领 男款1 藏青宽条', 1592, 552, '../img/6379525-1j201805171431260227.jpg', 3332, '../img/6379525-1j201805171431260227.jpg', '白');
INSERT INTO `liebiao` VALUES (26, '凡客衬衫 易打理 宽松复古开领 男款1 驼色宽条', 133, 60, '../img/6375106-1j201710131712143446.jpg', 5666, '../img/6375106-1j201710131712143446.jpg', '天蓝色');
INSERT INTO `liebiao` VALUES (27, '凡客衬衫 易打理 宽松复古开领 男款1 蓝青宽条', 16622, 61, '../img/6379525-1j201805171431260227.jpg', 7555, '../img/6379525-1j201805171431260227.jpg', '天蓝色');

-- ----------------------------
-- Table structure for liuyan
-- ----------------------------
DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE `liuyan`  (
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of liuyan
-- ----------------------------
INSERT INTO `liuyan` VALUES ('很好衣服质量很好。', '18733294454', '2019-1-1');
INSERT INTO `liuyan` VALUES ('很好衣服质量很好。', NULL, NULL);
INSERT INTO `liuyan` VALUES ('很好衣服质量很好。', '很好衣服质量很好。', '很好衣服质量很好。');
INSERT INTO `liuyan` VALUES ('很好衣服质量很好。', '很好衣服质量很好。', '很好衣服质量很好。');
INSERT INTO `liuyan` VALUES ('很好衣服质量很好。', '很好衣服质量很好。', '很好衣服质量很好。');
INSERT INTO `liuyan` VALUES ('很好衣服质量很很好衣服质量很好。', NULL, NULL);
INSERT INTO `liuyan` VALUES ('很好衣服质量很好。', NULL, NULL);
INSERT INTO `liuyan` VALUES ('很好衣服质量很好。', NULL, NULL);

-- ----------------------------
-- Table structure for red
-- ----------------------------
DROP TABLE IF EXISTS `red`;
CREATE TABLE `red`  (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of red
-- ----------------------------
INSERT INTO `red` VALUES (1, '13288035636', 'Aa515253');
INSERT INTO `red` VALUES (19, 'aa', 'bb');
INSERT INTO `red` VALUES (20, '13266343247', 'nicaiw');
INSERT INTO `red` VALUES (21, '13266343246', 'nicaiwo');
INSERT INTO `red` VALUES (22, '18676525420', 'nicaiwo');
INSERT INTO `red` VALUES (23, '18676501520', 'nicaiwo');
INSERT INTO `red` VALUES (24, '13266343233', 'nicaiwo');
INSERT INTO `red` VALUES (25, '13266343111', 'nicaiwomima');
INSERT INTO `red` VALUES (26, '13266343111', 'nicaiwomima');
INSERT INTO `red` VALUES (27, '13266343111', 'nicaiwomima');
INSERT INTO `red` VALUES (28, '13266343111', 'nicaiwomima');
INSERT INTO `red` VALUES (29, '13266343111', 'nicaiwomima');
INSERT INTO `red` VALUES (30, '13266343111', 'nicaiwomima');

-- ----------------------------
-- Table structure for shouye
-- ----------------------------
DROP TABLE IF EXISTS `shouye`;
CREATE TABLE `shouye`  (
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `img1` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shouye
-- ----------------------------
INSERT INTO `shouye` VALUES ('../img/1.jpg', '../img/pc12.jpg');
INSERT INTO `shouye` VALUES ('../img/xhsm_05.jpg', '../img/pc-zzk-08.jpg');
INSERT INTO `shouye` VALUES ('../img/xhsm_15.jpg', '../img/xxk.jpg');
INSERT INTO `shouye` VALUES ('../img/xhsm_17.jpg', '../img/22.jpg');
INSERT INTO `shouye` VALUES ('../img/pcxp_17.jpg', '');
INSERT INTO `shouye` VALUES ('../img/xhsm_03.jpg', '');
INSERT INTO `shouye` VALUES ('../img/pcxp_15.jpg', NULL);
INSERT INTO `shouye` VALUES ('../img/pcxp_13.jpg', NULL);
INSERT INTO `shouye` VALUES ('../img/pcxp_11.jpg', NULL);
INSERT INTO `shouye` VALUES ('../img/3.jpg', NULL);
INSERT INTO `shouye` VALUES ('../img/3.jpg', NULL);
INSERT INTO `shouye` VALUES ('../img/2.jpg', NULL);

SET FOREIGN_KEY_CHECKS = 1;
