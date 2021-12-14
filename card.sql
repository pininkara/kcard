/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : card

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 14/12/2021 10:24:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `balance` int NULL DEFAULT NULL,
  `consume` int NULL DEFAULT NULL,
  `charge` int NULL DEFAULT NULL,
  `bankid` int NOT NULL,
  `bankpwd` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  CONSTRAINT `id` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (12, '李四', 602, 30, 2, 1024, 7777777);
INSERT INTO `student` VALUES (13, '王五', 150, 20, 300, 1026, 123756);
INSERT INTO `student` VALUES (14, '麻子', 200, 15, 400, 1027, 156975);
INSERT INTO `student` VALUES (15, '倪浩', 111, 10, 101, 1029, 159756);
INSERT INTO `student` VALUES (16, '张伟', 222, 22, 220, 1030, 175986);
INSERT INTO `student` VALUES (17, '宋江', 1000, 0, 1, 562, 222369);
INSERT INTO `student` VALUES (18, '李逵', 134, 12, 1000, 9563, 965333);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` int(1) UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (10, 'admin', 1);
INSERT INTO `user` VALUES (11, 'stu11', 0);
INSERT INTO `user` VALUES (12, 'stu12', 0);
INSERT INTO `user` VALUES (13, 'stu13', 0);
INSERT INTO `user` VALUES (14, 'stu14', 0);
INSERT INTO `user` VALUES (15, 'stu15', 0);
INSERT INTO `user` VALUES (16, 'stu16', 0);
INSERT INTO `user` VALUES (17, 'stu17', 0);
INSERT INTO `user` VALUES (18, 'stu18', 0);
INSERT INTO `user` VALUES (19, 'stu18', 0);
INSERT INTO `user` VALUES (20, 'stu20', 0);
INSERT INTO `user` VALUES (21, 'stu21', 0);
INSERT INTO `user` VALUES (22, 'stu22', 0);
INSERT INTO `user` VALUES (23, 'stu23', 0);
INSERT INTO `user` VALUES (24, 'stu24', 0);
INSERT INTO `user` VALUES (25, 'stu25', 0);
INSERT INTO `user` VALUES (26, 'stu26', 0);
INSERT INTO `user` VALUES (27, 'stu27', 0);
INSERT INTO `user` VALUES (28, 'stu28', 0);
INSERT INTO `user` VALUES (29, 'stu29', 0);
INSERT INTO `user` VALUES (30, 'stu30', 0);
INSERT INTO `user` VALUES (31, 'stu31', 0);
INSERT INTO `user` VALUES (32, 'stu32', 0);
INSERT INTO `user` VALUES (33, 'stu33', 0);

SET FOREIGN_KEY_CHECKS = 1;
