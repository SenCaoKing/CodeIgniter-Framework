/*
Navicat MySQL Data Transfer

Source Server         : cga
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : native_php

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-03-29 23:02:47
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cat_id` tinyint(4) unsigned NOT NULL COMMENT '栏目ID',
  `title` varchar(50) NOT NULL COMMENT '文章标题',
  `content` text COMMENT '文章内容',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES ('1', '1', '测试标题1', '测试内容1', '1522247341');
INSERT INTO `cms_article` VALUES ('2', '3', '测试标题22', '测试内容22', '1522249086');
INSERT INTO `cms_article` VALUES ('3', '6', '标题3', '内容3', '1522332350');
INSERT INTO `cms_article` VALUES ('4', '7', '标题6', '内容6', '1522332962');
INSERT INTO `cms_article` VALUES ('5', '8', '水电费规划局可', '第三方的规范化个', '1522332975');
INSERT INTO `cms_article` VALUES ('6', '9', '申达股份很好吗', '大V方便把你们', '1522332986');
INSERT INTO `cms_article` VALUES ('7', '10', '的泛海国际', '方便过年回家，', '1522332995');
INSERT INTO `cms_article` VALUES ('8', '11', '工地干活放假', '功能还没那么', '1522333004');
INSERT INTO `cms_article` VALUES ('9', '12', '改版', '不错晕', '1522333012');
INSERT INTO `cms_article` VALUES ('10', '13', '刚放寒假，看', '非常那个号', '1522333022');
INSERT INTO `cms_article` VALUES ('11', '7', '招待费给你们66', '付过款666', '1522333030');

-- ----------------------------
-- Table structure for `cms_category`
-- ----------------------------
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category` (
  `cat_id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目ID',
  `cat_name` varchar(20) NOT NULL COMMENT '栏目名称',
  `sort_order` tinyint(20) NOT NULL COMMENT '栏目排序',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of cms_category
-- ----------------------------
INSERT INTO `cms_category` VALUES ('1', '测试栏目1', '1', '1522156841');
INSERT INTO `cms_category` VALUES ('3', '测试栏目2', '2', '1522160242');
INSERT INTO `cms_category` VALUES ('13', '测试13', '12', '1522246147');
INSERT INTO `cms_category` VALUES ('5', '测试栏目4', '4', '1522160608');
INSERT INTO `cms_category` VALUES ('6', '测试栏目5', '5', '1522160636');
INSERT INTO `cms_category` VALUES ('7', '测试栏目6', '6', '1522160669');
INSERT INTO `cms_category` VALUES ('8', '测试栏目7', '7', '1522160678');
INSERT INTO `cms_category` VALUES ('9', '测试栏目8', '8', '1522160714');
INSERT INTO `cms_category` VALUES ('10', '测试栏目9', '9', '1522160722');
INSERT INTO `cms_category` VALUES ('11', '测试栏目10', '10', '1522160730');
INSERT INTO `cms_category` VALUES ('12', '测试栏目11', '11', '1522160740');

-- ----------------------------
-- Table structure for `mvc_user`
-- ----------------------------
DROP TABLE IF EXISTS `mvc_user`;
CREATE TABLE `mvc_user` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL COMMENT '账号',
  `password` char(32) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mvc_user
-- ----------------------------

-- ----------------------------
-- Table structure for `sm_article`
-- ----------------------------
DROP TABLE IF EXISTS `sm_article`;
CREATE TABLE `sm_article` (
  `cat_id` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sm_article
-- ----------------------------
INSERT INTO `sm_article` VALUES ('1', '1', '1231', '12', '2010-08-27 10:07:56');
INSERT INTO `sm_article` VALUES ('1', '2', '2', '123', '2010-09-06 10:12:27');
INSERT INTO `sm_article` VALUES ('3', '3', 's', 'sdf', '2010-09-06 12:17:16');
INSERT INTO `sm_article` VALUES ('3', '4', 's', 'sdf', '2010-09-06 12:17:21');
INSERT INTO `sm_article` VALUES ('2', '5', 's', 'sdf', '2010-09-06 12:17:26');
INSERT INTO `sm_article` VALUES ('1', '6', 's', 'sdfsdf', '2010-09-06 12:17:31');
INSERT INTO `sm_article` VALUES ('1', '7', 'sdsf', 'ss', '2010-09-06 12:17:37');
INSERT INTO `sm_article` VALUES ('3', '8', 'ssdf', 'ss', '2010-09-06 12:17:47');
INSERT INTO `sm_article` VALUES ('3', '9', '中文标题', '测试内容', '2010-09-06 12:17:58');
INSERT INTO `sm_article` VALUES ('1', '10', '是', '士大夫', '2010-09-06 12:18:05');
INSERT INTO `sm_article` VALUES ('1', '11', '士大夫', '士大夫', '2010-09-06 12:18:17');
INSERT INTO `sm_article` VALUES ('3', '12', 'sdf', 'sdff', '2010-09-06 13:33:56');
INSERT INTO `sm_article` VALUES ('6', '13', '3而', '测试\r\n中文内容', '2010-09-06 14:39:09');

-- ----------------------------
-- Table structure for `sm_category`
-- ----------------------------
DROP TABLE IF EXISTS `sm_category`;
CREATE TABLE `sm_category` (
  `cat_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(20) NOT NULL DEFAULT '',
  `sort_order` tinyint(4) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sm_category
-- ----------------------------
INSERT INTO `sm_category` VALUES ('1', '测试用例', '1', '2010-08-25 17:44:47');
INSERT INTO `sm_category` VALUES ('2', '221', '2', '2010-09-06 10:38:57');
INSERT INTO `sm_category` VALUES ('3', 'sdf', '0', '2010-09-06 10:39:04');
INSERT INTO `sm_category` VALUES ('5', '2我', '2', '2010-09-06 14:19:24');
INSERT INTO `sm_category` VALUES ('6', '3', '3', '2010-09-06 14:19:27');
INSERT INTO `sm_category` VALUES ('7', '4', '4', '2010-09-06 14:19:32');
INSERT INTO `sm_category` VALUES ('8', '5', '5', '2010-09-06 14:19:36');
INSERT INTO `sm_category` VALUES ('9', '6', '6', '2010-09-06 14:19:40');
INSERT INTO `sm_category` VALUES ('10', '7', '7', '2010-09-06 14:19:45');
INSERT INTO `sm_category` VALUES ('11', '8', '8', '2010-09-06 14:19:51');
INSERT INTO `sm_category` VALUES ('12', '中文子测试', '10', '2010-09-06 14:20:11');
