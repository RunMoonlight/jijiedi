/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : jijiedi

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2019-09-19 00:21:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for agree_oppose
-- ----------------------------
DROP TABLE IF EXISTS `agree_oppose`;
CREATE TABLE `agree_oppose` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT '用户Id(哪个用户赞同、回答)',
  `answer_id` int(11) DEFAULT NULL COMMENT '哪个回答Id(用户对哪个问题反对/赞同)',
  `agr_opp` char(1) DEFAULT NULL COMMENT '1赞同/0反对',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agree_oppose
-- ----------------------------

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT '回答者id',
  `topic_id` int(11) DEFAULT NULL COMMENT '话题Id（用于这个人在该领域下有多少个回答）',
  `ques_id` int(11) DEFAULT NULL COMMENT '问题id',
  `answer_content` varchar(255) DEFAULT NULL COMMENT '内容',
  `photo` varchar(255) DEFAULT NULL COMMENT '照片',
  `anonymity` char(2) DEFAULT NULL COMMENT '匿名（1是/0否）',
  `comment_numb` int(11) DEFAULT NULL COMMENT '评论次数',
  `report_numb` int(11) DEFAULT NULL COMMENT '举报次数',
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------

-- ----------------------------
-- Table structure for attentionquestion
-- ----------------------------
DROP TABLE IF EXISTS `attentionquestion`;
CREATE TABLE `attentionquestion` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ques_id` int(11) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attentionquestion
-- ----------------------------

-- ----------------------------
-- Table structure for att_ques_comment
-- ----------------------------
DROP TABLE IF EXISTS `att_ques_comment`;
CREATE TABLE `att_ques_comment` (
  `id` int(11) NOT NULL,
  `ques_id` int(11) DEFAULT NULL COMMENT '问题Id',
  `commentator_id` int(11) DEFAULT NULL COMMENT '评论人Id',
  `comment_content` varchar(2550) DEFAULT NULL COMMENT '评论内容',
  `praise_numb` int(11) DEFAULT NULL COMMENT '赞次数',
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of att_ques_comment
-- ----------------------------

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `id` int(11) NOT NULL,
  `favorites_id` int(11) DEFAULT NULL COMMENT '收藏夹Id',
  `user_id` int(11) DEFAULT NULL COMMENT '收藏者Id',
  `answer_id` int(11) DEFAULT NULL COMMENT '回答问题Id',
  `ques_name` varchar(255) DEFAULT NULL COMMENT '问题名称',
  `answer_content` varchar(2555) DEFAULT NULL COMMENT '回答问题内容',
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collect
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `ques_id` int(11) DEFAULT NULL COMMENT '问题Id',
  `answer_id` int(11) DEFAULT NULL COMMENT '回答Id（评论的哪个回答）',
  `commentator_id` int(11) DEFAULT NULL COMMENT '评论人Id',
  `cpmment_content` varchar(2555) DEFAULT NULL COMMENT '评论内容',
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for favorites
-- ----------------------------
DROP TABLE IF EXISTS `favorites`;
CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `favorites_name` varchar(255) DEFAULT NULL COMMENT '收藏夹名称',
  `describe` varchar(255) DEFAULT NULL COMMENT '收藏夹描述',
  `public` char(2) DEFAULT NULL COMMENT '公开（1是/0否）',
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of favorites
-- ----------------------------

-- ----------------------------
-- Table structure for favorites_comment
-- ----------------------------
DROP TABLE IF EXISTS `favorites_comment`;
CREATE TABLE `favorites_comment` (
  `id` int(11) NOT NULL,
  `favorites_id` int(11) DEFAULT NULL COMMENT '收藏夹Id',
  `user_id` int(11) DEFAULT NULL COMMENT '评论者id',
  `comment_content` varchar(2555) DEFAULT NULL COMMENT '评论内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of favorites_comment
-- ----------------------------

-- ----------------------------
-- Table structure for industry
-- ----------------------------
DROP TABLE IF EXISTS `industry`;
CREATE TABLE `industry` (
  `id` int(11) NOT NULL,
  `indu_class_id` int(11) DEFAULT NULL COMMENT '行业类别Id',
  `indu_name` varchar(255) DEFAULT NULL COMMENT '行业名称',
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of industry
-- ----------------------------

-- ----------------------------
-- Table structure for indu_class
-- ----------------------------
DROP TABLE IF EXISTS `indu_class`;
CREATE TABLE `indu_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indu_class_name` varchar(32) DEFAULT NULL COMMENT '行业类别名称',
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indu_class
-- ----------------------------

-- ----------------------------
-- Table structure for inviter
-- ----------------------------
DROP TABLE IF EXISTS `inviter`;
CREATE TABLE `inviter` (
  `id` int(11) NOT NULL,
  `ques_id` int(11) DEFAULT NULL COMMENT '问题Id',
  `inviter_id` int(11) DEFAULT NULL COMMENT '邀请人Id',
  `Invitee_id` int(11) DEFAULT NULL COMMENT '被邀请的人，Id',
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inviter
-- ----------------------------

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL COMMENT '话题Id(多个话题之间用·隔开) ',
  `ques_name` varchar(255) DEFAULT NULL COMMENT '问题名称',
  `ques_describe` varchar(255) DEFAULT NULL COMMENT '问题描述',
  `photo` varchar(255) DEFAULT NULL COMMENT '图片',
  `answer_numb` int(11) DEFAULT NULL COMMENT '回答次数',
  `attention_numb` int(11) DEFAULT NULL COMMENT '关注次数',
  `browse_numb` int(11) DEFAULT NULL COMMENT '浏览次数',
  `anonymity` char(255) DEFAULT NULL COMMENT '匿名（1是/0否）',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(32) NOT NULL COMMENT '邮箱',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `name` varchar(10) DEFAULT NULL COMMENT '名字',
  `gender` varchar(2) DEFAULT NULL COMMENT '性别(1为男，0为女)',
  `photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `autograph` varchar(255) DEFAULT NULL COMMENT '一句话简介（干什么的）',
  `privacy_protection` char(2) DEFAULT NULL COMMENT '隐私保护（1是/0否）',
  `praise_numb` int(11) DEFAULT NULL COMMENT '赞次数',
  `thank_numb` int(11) DEFAULT NULL COMMENT '感谢次数',
  `question_numb` int(11) DEFAULT NULL COMMENT '提问次数',
  `answer_numb` int(11) DEFAULT NULL COMMENT '回答次数',
  `collect_numb` int(11) DEFAULT NULL COMMENT '收藏次数',
  `edit_numb` int(11) DEFAULT NULL COMMENT '编辑次数',
  `attention_numb` int(11) DEFAULT NULL COMMENT '关注了几人(数量)',
  `follower_numb` int(11) DEFAULT NULL COMMENT '关注该用户的人(数量)',
  `concern_topic_numb` int(11) DEFAULT NULL COMMENT '关注话题个数',
  `personality_url` varchar(255) DEFAULT NULL COMMENT '个性网址',
  `email_activate` char(2) DEFAULT NULL COMMENT '邮箱激活(1.是，0否)',
  `forbidden` char(2) DEFAULT NULL COMMENT '禁用（1是，0否）',
  `forbidden_time` date DEFAULT NULL COMMENT '禁用时间',
  `role` char(2) DEFAULT NULL COMMENT '角色（1管理员，2次要管理员，3用户）',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '358812885@qq.com', '123', '123', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2019-09-15', '1', '2019-09-15');
