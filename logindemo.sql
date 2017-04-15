/*
Navicat MySQL Data Transfer

Source Server         : howen
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : logindemo

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-04-11 09:08:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for stu_info
-- ----------------------------
DROP TABLE IF EXISTS `stu_info`;
CREATE TABLE `stu_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stuname` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `nation` varchar(20) NOT NULL,
  `address` varchar(125) NOT NULL,
  `hobby` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`,`stuname`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_info
-- ----------------------------
INSERT INTO `stu_info` VALUES ('1', '????', '12', '?', '??', '????', '???');
INSERT INTO `stu_info` VALUES ('2', 'hiho', '23', 'hkj', 'hjkh', 'hkjh', 'iuo');
INSERT INTO `stu_info` VALUES ('3', 'jljl', '23', 'jkljl', 'jkljkl', 'jlkkj', 'jklj');
INSERT INTO `stu_info` VALUES ('4', 'jlkjl', '32', 'jklj', 'iipoi', 'iopio', 'uioip');
INSERT INTO `stu_info` VALUES ('5', 'poipi', '32', 'kljl', 'uop', 'opipo', 'uiio');
INSERT INTO `stu_info` VALUES ('6', 'ioppo', '23', 'lkkl', 'poip', 'nklj', 'jlkj');
INSERT INTO `stu_info` VALUES ('7', '???', '23', '?', '??', '??', '??');
INSERT INTO `stu_info` VALUES ('8', '??', '43', '?', '??', '??', '??');
INSERT INTO `stu_info` VALUES ('9', '?', '23', '?', '??', '??', '??');

-- ----------------------------
-- Table structure for userdetail
-- ----------------------------
DROP TABLE IF EXISTS `userdetail`;
CREATE TABLE `userdetail` (
  `name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(32) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userdetail
-- ----------------------------
INSERT INTO `userdetail` VALUES ('howen', '123654', '12', '970130669@qq.com');
INSERT INTO `userdetail` VALUES ('??', '123465', '12', '970130669@qq.com');
INSERT INTO `userdetail` VALUES ('??', '123654', '12', '970130669@qq.com');
INSERT INTO `userdetail` VALUES ('?', '123', '18', 'a');
INSERT INTO `userdetail` VALUES ('??', '123456', '12', '970130669@qq.com');
INSERT INTO `userdetail` VALUES ('?', 'fewafwef', '23', '970130669@qq.com');
INSERT INTO `userdetail` VALUES ('???', '123456', '12', '970130669@qq.com');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('3', 'fname1', 'lname1', '(000)000-0000', 'name1@gmail.com');
INSERT INTO `users` VALUES ('4', 'fname2', 'lname2', '(000)000-0000', 'name2@gmail.com');
INSERT INTO `users` VALUES ('5', 'fname3', 'lname3', '(000)000-0000', 'name3@gmail.com');
INSERT INTO `users` VALUES ('7', 'fname4', 'lname4', '(000)000-0000', 'name4@gmail.com');
INSERT INTO `users` VALUES ('8', 'fname5', 'lname5', '(000)000-0000', 'name5@gmail.com');
INSERT INTO `users` VALUES ('9', 'fname6', 'lname6', '(000)000-0000', 'name6@gmail.com');
INSERT INTO `users` VALUES ('10', 'fname7', 'lname7', '(000)000-0000', 'name7@gmail.com');
INSERT INTO `users` VALUES ('11', 'fname8', 'lname8', '(000)000-0000', 'name8@gmail.com');
INSERT INTO `users` VALUES ('12', 'fname9', 'lname9', '(000)000-0000', 'name9@gmail.com');
INSERT INTO `users` VALUES ('13', 'fname10', 'lname10', '(000)000-0000', 'name10@gmail.com');
