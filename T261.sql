/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t261`;
CREATE DATABASE IF NOT EXISTS `t261` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t261`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/minzuhunshayudingxitong/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/minzuhunshayudingxitong/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/minzuhunshayudingxitong/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-05-11 07:39:11'),
	(2, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-05-11 07:39:11'),
	(3, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-05-11 07:39:11'),
	(4, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-05-11 07:39:11'),
	(5, 'sheyingshi_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-05-11 07:39:11'),
	(6, 'sheyingshi_order_types', '订单类型', 1, '已预约', NULL, NULL, '2022-05-11 07:39:11'),
	(7, 'sheyingshi_order_types', '订单类型', 2, '取消预约', NULL, NULL, '2022-05-11 07:39:11'),
	(8, 'sheyingshi_order_types', '订单类型', 3, '已使用', NULL, NULL, '2022-05-11 07:39:11'),
	(9, 'sheyingshi_order_types', '订单类型', 4, '已用户确认', NULL, NULL, '2022-05-11 07:39:11'),
	(10, 'sheyingshi_order_types', '订单类型', 5, '已评价', NULL, NULL, '2022-05-11 07:39:12'),
	(11, 'paishedi_types', '拍摄地', 1, '拍摄地1', NULL, NULL, '2022-05-11 07:39:12'),
	(12, 'paishedi_types', '拍摄地', 2, '拍摄地2', NULL, NULL, '2022-05-11 07:39:12'),
	(13, 'paishedi_types', '拍摄地', 3, '拍摄地3', NULL, NULL, '2022-05-11 07:39:12'),
	(14, 'shijianduan_types', '时间段', 1, '08:00-09:00', NULL, NULL, '2022-05-11 07:39:12'),
	(15, 'shijianduan_types', '时间段', 2, '09:00-10:00', NULL, NULL, '2022-05-11 07:39:12'),
	(16, 'shijianduan_types', '时间段', 3, '10:00-11:00', NULL, NULL, '2022-05-11 07:39:12'),
	(17, 'shijianduan_types', '时间段', 4, '11:00-12:00', NULL, NULL, '2022-05-11 07:39:12'),
	(18, 'shijianduan_types', '时间段', 5, '14:00-15:00', NULL, NULL, '2022-05-11 07:39:12'),
	(19, 'shijianduan_types', '时间段', 6, '15:00-16:00', NULL, NULL, '2022-05-11 07:39:12'),
	(20, 'shijianduan_types', '时间段', 7, '16:00-17:00', NULL, NULL, '2022-05-11 07:39:12'),
	(21, 'shijianduan_types', '时间段', 8, '17:00-18:00', NULL, NULL, '2022-05-11 07:39:12'),
	(22, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-05-11 07:39:12'),
	(23, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-05-11 07:39:12'),
	(24, 'shangpin_types', '作品类型', 1, '作品类型1', NULL, NULL, '2022-05-11 07:39:12'),
	(25, 'shangpin_types', '作品类型', 2, '作品类型2', NULL, NULL, '2022-05-11 07:39:12'),
	(26, 'shangpin_types', '作品类型', 3, '作品类型3', NULL, NULL, '2022-05-11 07:39:12'),
	(27, 'shangpin_types', '作品类型', 4, '作品类型4', NULL, NULL, '2022-05-11 07:39:12'),
	(28, 'shangpin_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-05-11 07:39:12');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/minzuhunshayudingxitong/upload/gonggao1.jpg', 1, '2022-05-11 07:39:16', '公告详情1', '2022-05-11 07:39:16'),
	(2, '公告名称2', 'http://localhost:8080/minzuhunshayudingxitong/upload/gonggao2.jpg', 1, '2022-05-11 07:39:16', '公告详情2', '2022-05-11 07:39:16'),
	(3, '公告名称3', 'http://localhost:8080/minzuhunshayudingxitong/upload/gonggao3.jpg', 1, '2022-05-11 07:39:16', '公告详情3', '2022-05-11 07:39:16'),
	(4, '公告名称4', 'http://localhost:8080/minzuhunshayudingxitong/upload/gonggao4.jpg', 1, '2022-05-11 07:39:16', '公告详情4', '2022-05-11 07:39:16'),
	(5, '公告名称5', 'http://localhost:8080/minzuhunshayudingxitong/upload/gonggao5.jpg', 2, '2022-05-11 07:39:16', '<p>公告详情51111</p>', '2022-05-11 07:39:16');

DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE IF NOT EXISTS `shangpin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `sheyingshi_id` int DEFAULT NULL COMMENT '摄影师',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '作品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '作品编号  Search111 ',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '作品照片',
  `paishe_time` timestamp NULL DEFAULT NULL COMMENT '拍摄时间',
  `paishedi_types` int DEFAULT NULL COMMENT '拍摄地 Search111 ',
  `shangpin_types` int DEFAULT NULL COMMENT '作品类型 Search111',
  `shangpin_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `shangpin_content` text COMMENT '作品介绍 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='作品';

DELETE FROM `shangpin`;
INSERT INTO `shangpin` (`id`, `sheyingshi_id`, `shangpin_name`, `shangpin_uuid_number`, `shangpin_photo`, `paishe_time`, `paishedi_types`, `shangpin_types`, `shangpin_clicknum`, `shangpin_content`, `shangxia_types`, `shangpin_delete`, `insert_time`, `create_time`) VALUES
	(1, 3, '作品名称1', '165225475644254', 'http://localhost:8080/minzuhunshayudingxitong/upload/shangpin1.jpg', '2022-05-11 07:39:16', 1, 1, 350, '作品介绍1', 1, 1, '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(2, 1, '作品名称2', '165225475644238', 'http://localhost:8080/minzuhunshayudingxitong/upload/shangpin2.jpg', '2022-05-11 07:39:16', 3, 3, 436, '<p>作品介绍212是大多数的</p>', 1, 1, '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(3, 2, '作品名称3', '165225475644221', 'http://localhost:8080/minzuhunshayudingxitong/upload/shangpin3.jpg', '2022-05-11 07:39:16', 3, 1, 366, '作品介绍3', 1, 1, '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(4, 3, '作品名称4', '165225475644280', 'http://localhost:8080/minzuhunshayudingxitong/upload/shangpin4.jpg', '2022-05-11 07:39:16', 1, 3, 417, '作品介绍4', 1, 1, '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(5, 3, '作品名称5', '165225475644223', 'http://localhost:8080/minzuhunshayudingxitong/upload/shangpin5.jpg', '2022-05-11 07:39:16', 3, 4, 334, '作品介绍5', 1, 1, '2022-05-11 07:39:16', '2022-05-11 07:39:16');

DROP TABLE IF EXISTS `shangpin_collection`;
CREATE TABLE IF NOT EXISTS `shangpin_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int DEFAULT NULL COMMENT '作品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='作品收藏';

DELETE FROM `shangpin_collection`;
INSERT INTO `shangpin_collection` (`id`, `shangpin_id`, `yonghu_id`, `shangpin_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(2, 2, 2, 1, '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(3, 3, 2, 1, '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(4, 4, 2, 1, '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(5, 5, 3, 1, '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(6, 4, 1, 1, '2022-05-11 08:34:43', '2022-05-11 08:34:43'),
	(7, 2, 1, 1, '2022-05-11 08:35:03', '2022-05-11 08:35:03'),
	(8, 3, 1, 1, '2024-07-15 03:19:02', '2024-07-15 03:19:02');

DROP TABLE IF EXISTS `shangpin_liuyan`;
CREATE TABLE IF NOT EXISTS `shangpin_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int DEFAULT NULL COMMENT '作品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shangpin_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='作品留言';

DELETE FROM `shangpin_liuyan`;
INSERT INTO `shangpin_liuyan` (`id`, `shangpin_id`, `yonghu_id`, `shangpin_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '留言内容1', '2022-05-11 07:39:16', '回复信息1', '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(2, 2, 2, '留言内容2', '2022-05-11 07:39:16', '回复信息2', '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(3, 3, 3, '留言内容3', '2022-05-11 07:39:16', '回复信息3', '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(4, 4, 3, '留言内容4', '2022-05-11 07:39:16', '回复信息4', '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(5, 5, 1, '留言内容5', '2022-05-11 07:39:16', '回复信息5', '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(6, 2, 1, '的订单很好', '2022-05-11 08:35:07', '等底等高', '2022-05-11 08:39:42', '2022-05-11 08:35:07');

DROP TABLE IF EXISTS `sheyingshi`;
CREATE TABLE IF NOT EXISTS `sheyingshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `sheyingshi_uuid_number` varchar(200) DEFAULT NULL COMMENT '摄影师工号 Search111 ',
  `sheyingshi_name` varchar(200) DEFAULT NULL COMMENT '摄影师姓名 Search111 ',
  `sheyingshi_phone` varchar(200) DEFAULT NULL COMMENT '摄影师手机号',
  `sheyingshi_id_number` varchar(200) DEFAULT NULL COMMENT '摄影师身份证号',
  `sheyingshi_photo` varchar(200) DEFAULT NULL COMMENT '摄影师头像',
  `sheyingshi_shanchang` varchar(200) DEFAULT NULL COMMENT '摄影师擅长',
  `sheyingshi_dingjin` decimal(10,2) DEFAULT NULL COMMENT '摄影师预约定金',
  `sheyingshi_jiage` decimal(10,2) DEFAULT NULL COMMENT '摄影价格/次',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `sheyingshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sheyingshi_content` text COMMENT '摄影师详细介绍 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='摄影师';

DELETE FROM `sheyingshi`;
INSERT INTO `sheyingshi` (`id`, `username`, `password`, `sheyingshi_uuid_number`, `sheyingshi_name`, `sheyingshi_phone`, `sheyingshi_id_number`, `sheyingshi_photo`, `sheyingshi_shanchang`, `sheyingshi_dingjin`, `sheyingshi_jiage`, `sex_types`, `sheyingshi_email`, `sheyingshi_content`, `create_time`) VALUES
	(1, '摄影师1', '123456', '165225475646345', '摄影师姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/minzuhunshayudingxitong/upload/sheyingshi1.jpg', '摄影师擅长1', 456.94, 652.07, 2, '1@qq.com', '<p>摄影师详细介绍1宿舍</p>', '2022-05-11 07:39:16'),
	(2, '摄影师2', '123456', '165225475646360', '摄影师姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/minzuhunshayudingxitong/upload/sheyingshi2.jpg', '摄影师擅长2', 841.14, 794.98, 1, '2@qq.com', '摄影师详细介绍2', '2022-05-11 07:39:16'),
	(3, '摄影师3', '123456', '165225475646320', '摄影师姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/minzuhunshayudingxitong/upload/sheyingshi3.jpg', '摄影师擅长3', 608.01, 192.16, 1, '3@qq.com', '摄影师详细介绍3', '2022-05-11 07:39:16');

DROP TABLE IF EXISTS `sheyingshi_collection`;
CREATE TABLE IF NOT EXISTS `sheyingshi_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sheyingshi_id` int DEFAULT NULL COMMENT '摄影师',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `sheyingshi_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='摄影师收藏';

DELETE FROM `sheyingshi_collection`;
INSERT INTO `sheyingshi_collection` (`id`, `sheyingshi_id`, `yonghu_id`, `sheyingshi_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 3, 2, 1, '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(2, 3, 3, 1, '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(3, 2, 2, 1, '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(4, 1, 2, 1, '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(5, 3, 1, 1, '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(6, 1, 1, 1, '2024-07-15 03:19:08', '2024-07-15 03:19:08');

DROP TABLE IF EXISTS `sheyingshi_commentback`;
CREATE TABLE IF NOT EXISTS `sheyingshi_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sheyingshi_id` int DEFAULT NULL COMMENT '摄影师',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `sheyingshi_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='摄影师评价';

DELETE FROM `sheyingshi_commentback`;
INSERT INTO `sheyingshi_commentback` (`id`, `sheyingshi_id`, `yonghu_id`, `sheyingshi_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '评价内容1', '2022-05-11 07:39:16', '回复信息1', '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(2, 3, 3, '评价内容2', '2022-05-11 07:39:16', '回复信息2', '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(3, 2, 1, '评价内容3', '2022-05-11 07:39:16', '回复信息3', '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(4, 1, 2, '评价内容4', '2022-05-11 07:39:16', '回复信息4', '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(5, 1, 2, '评价内容5', '2022-05-11 07:39:16', '回复信息5', '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(6, 1, 1, '很好的体验', '2022-05-11 08:41:55', NULL, NULL, '2022-05-11 08:41:55'),
	(7, 2, 1, '风管风管和', '2022-05-11 08:42:37', NULL, NULL, '2022-05-11 08:42:37');

DROP TABLE IF EXISTS `sheyingshi_liuyan`;
CREATE TABLE IF NOT EXISTS `sheyingshi_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sheyingshi_id` int DEFAULT NULL COMMENT '摄影师',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `sheyingshi_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='摄影师留言';

DELETE FROM `sheyingshi_liuyan`;
INSERT INTO `sheyingshi_liuyan` (`id`, `sheyingshi_id`, `yonghu_id`, `sheyingshi_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '留言内容1', '2022-05-11 07:39:16', '回复信息1', '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(2, 1, 2, '留言内容2', '2022-05-11 07:39:16', '回复信息2', '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(3, 2, 2, '留言内容3', '2022-05-11 07:39:16', '回复信息3', '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(4, 2, 1, '留言内容4', '2022-05-11 07:39:16', '回复信息4', '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(5, 2, 1, '留言内容5', '2022-05-11 07:39:16', '回复信息5', '2022-05-11 07:39:16', '2022-05-11 07:39:16'),
	(6, 2, 1, 'DSDSH', '2022-05-11 08:19:16', NULL, NULL, '2022-05-11 08:19:16'),
	(7, 1, 1, 'ddd', '2022-05-11 08:34:52', '等底等高', '2022-05-11 08:39:57', '2022-05-11 08:34:52');

DROP TABLE IF EXISTS `sheyingshi_order`;
CREATE TABLE IF NOT EXISTS `sheyingshi_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sheyingshi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '预约流水号 Search111 ',
  `sheyingshi_id` int DEFAULT NULL COMMENT '摄影师',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `paishedi_types` int DEFAULT NULL COMMENT '拍摄地 Search111 ',
  `sheyingshi_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '定金',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `paishe_time` timestamp NULL DEFAULT NULL COMMENT '预约拍摄日期',
  `shijianduan_types` int DEFAULT NULL COMMENT '预约拍摄时间段 Search111 ',
  `sheyingshi_order_types` int DEFAULT NULL COMMENT '预约状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='摄影师预约';

DELETE FROM `sheyingshi_order`;
INSERT INTO `sheyingshi_order` (`id`, `sheyingshi_order_uuid_number`, `sheyingshi_id`, `yonghu_id`, `paishedi_types`, `sheyingshi_order_true_price`, `insert_time`, `paishe_time`, `shijianduan_types`, `sheyingshi_order_types`, `create_time`) VALUES
	(1, '1652256049559', 2, 1, 2, 841.14, '2022-05-11 08:00:50', '2022-05-18 16:00:00', 4, 2, '2022-05-11 08:00:50'),
	(2, '1652257171461', 2, 1, 3, 841.14, '2022-05-11 08:19:31', '2022-06-29 16:00:00', 5, 5, '2022-05-11 08:19:31'),
	(3, '1652257195106', 1, 1, 2, 456.94, '2022-05-11 08:19:55', '2022-05-27 16:00:00', 2, 5, '2022-05-11 08:19:55'),
	(4, '1652258055565', 3, 1, 2, 608.01, '2022-05-11 08:34:16', '2022-05-25 16:00:00', 3, 2, '2022-05-11 08:34:16');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'mhvb3wwxm79gjt712ub33r61nx23q3s9', '2022-05-11 07:42:02', '2024-07-15 04:17:04'),
	(2, 1, 'a1', 'yonghu', '用户', '3l1y05xyajgj76lxufj4jjpylmd4f4so', '2022-05-11 07:50:11', '2024-07-15 04:18:46'),
	(3, 1, 'a1', 'sheyingshi', '摄影师', '7tutup7cvlmd1b8rltetyt12ncpeod8i', '2022-05-11 08:39:12', '2024-07-15 04:18:18'),
	(4, 2, 'a2', 'sheyingshi', '摄影师', '6bbsibwf7l7zip0i8zvvag5w2fehoogm', '2022-05-11 08:40:12', '2022-05-11 09:40:12');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户唯一编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_uuid_number`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `create_time`) VALUES
	(1, '用户1', '123456', '165225475646061', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/minzuhunshayudingxitong/upload/yonghu1.jpg', 2, '1@qq.com', 10095.28, '2022-05-11 07:39:16'),
	(2, '用户2', '123456', '165225475646094', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/minzuhunshayudingxitong/upload/yonghu2.jpg', 2, '2@qq.com', 107.19, '2022-05-11 07:39:16'),
	(3, '用户3', '123456', '165225475646047', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/minzuhunshayudingxitong/upload/yonghu3.jpg', 2, '3@qq.com', 388.62, '2022-05-11 07:39:16');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
