-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm353i0
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ssm353i0`
--

/*!40000 DROP DATABASE IF EXISTS `ssm353i0`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm353i0` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm353i0`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2022-03-15 09:48:05',11,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2022-03-15 09:48:05',12,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2022-03-15 09:48:05',13,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2022-03-15 09:48:05',14,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2022-03-15 09:48:05',15,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2022-03-15 09:48:05',16,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussqiugouxinxi`
--

DROP TABLE IF EXISTS `discussqiugouxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussqiugouxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='求购信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussqiugouxinxi`
--

LOCK TABLES `discussqiugouxinxi` WRITE;
/*!40000 ALTER TABLE `discussqiugouxinxi` DISABLE KEYS */;
INSERT INTO `discussqiugouxinxi` VALUES (111,'2022-03-15 09:48:05',1,1,'用户名1','评论内容1','回复内容1'),(112,'2022-03-15 09:48:05',2,2,'用户名2','评论内容2','回复内容2'),(113,'2022-03-15 09:48:05',3,3,'用户名3','评论内容3','回复内容3'),(114,'2022-03-15 09:48:05',4,4,'用户名4','评论内容4','回复内容4'),(115,'2022-03-15 09:48:05',5,5,'用户名5','评论内容5','回复内容5'),(116,'2022-03-15 09:48:05',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussqiugouxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (101,'2022-03-15 09:48:05',1,1,'用户名1','评论内容1','回复内容1'),(102,'2022-03-15 09:48:05',2,2,'用户名2','评论内容2','回复内容2'),(103,'2022-03-15 09:48:05',3,3,'用户名3','评论内容3','回复内容3'),(104,'2022-03-15 09:48:05',4,4,'用户名4','评论内容4','回复内容4'),(105,'2022-03-15 09:48:05',5,5,'用户名5','评论内容5','回复内容5'),(106,'2022-03-15 09:48:05',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuan`
--

DROP TABLE IF EXISTS `huiyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='会员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuan`
--

LOCK TABLES `huiyuan` WRITE;
/*!40000 ALTER TABLE `huiyuan` DISABLE KEYS */;
INSERT INTO `huiyuan` VALUES (11,'2022-03-15 09:48:05','账号1','123456','姓名1',1,'男','13823888881','upload/huiyuan_zhaopian1.jpg',100),(12,'2022-03-15 09:48:05','账号2','123456','姓名2',2,'男','13823888882','upload/huiyuan_zhaopian2.jpg',100),(13,'2022-03-15 09:48:05','账号3','123456','姓名3',3,'男','13823888883','upload/huiyuan_zhaopian3.jpg',100),(14,'2022-03-15 09:48:05','账号4','123456','姓名4',4,'男','13823888884','upload/huiyuan_zhaopian4.jpg',100),(15,'2022-03-15 09:48:05','账号5','123456','姓名5',5,'男','13823888885','upload/huiyuan_zhaopian5.jpg',100),(16,'2022-03-15 09:48:05','账号6','123456','姓名6',6,'男','13823888886','upload/huiyuan_zhaopian6.jpg',100);
/*!40000 ALTER TABLE `huiyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maijia`
--

DROP TABLE IF EXISTS `maijia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maijia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiazhanghao` varchar(200) NOT NULL COMMENT '卖家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `maijiaxingming` varchar(200) NOT NULL COMMENT '卖家姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `maijiazhanghao` (`maijiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='卖家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maijia`
--

LOCK TABLES `maijia` WRITE;
/*!40000 ALTER TABLE `maijia` DISABLE KEYS */;
INSERT INTO `maijia` VALUES (21,'2022-03-15 09:48:05','卖家账号1','123456','卖家姓名1',1,'男','13823888881','773890001@qq.com','upload/maijia_zhaopian1.jpg',100),(22,'2022-03-15 09:48:05','卖家账号2','123456','卖家姓名2',2,'男','13823888882','773890002@qq.com','upload/maijia_zhaopian2.jpg',100),(23,'2022-03-15 09:48:05','卖家账号3','123456','卖家姓名3',3,'男','13823888883','773890003@qq.com','upload/maijia_zhaopian3.jpg',100),(24,'2022-03-15 09:48:05','卖家账号4','123456','卖家姓名4',4,'男','13823888884','773890004@qq.com','upload/maijia_zhaopian4.jpg',100),(25,'2022-03-15 09:48:05','卖家账号5','123456','卖家姓名5',5,'男','13823888885','773890005@qq.com','upload/maijia_zhaopian5.jpg',100),(26,'2022-03-15 09:48:05','卖家账号6','123456','卖家姓名6',6,'男','13823888886','773890006@qq.com','upload/maijia_zhaopian6.jpg',100);
/*!40000 ALTER TABLE `maijia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `logistics` longtext COMMENT '物流',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiugouxinxi`
--

DROP TABLE IF EXISTS `qiugouxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiugouxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jieshoujiawei` varchar(200) DEFAULT NULL COMMENT '接受价位',
  `xuqiushuliang` int(11) DEFAULT NULL COMMENT '需求数量',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='求购信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiugouxinxi`
--

LOCK TABLES `qiugouxinxi` WRITE;
/*!40000 ALTER TABLE `qiugouxinxi` DISABLE KEYS */;
INSERT INTO `qiugouxinxi` VALUES (51,'2022-03-15 09:48:05','标题1','商品名称1','商品分类1','upload/qiugouxinxi_tupian1.jpg','接受价位1',1,'2022-03-15','账号1','姓名1','手机1',1,1,'2022-03-15 17:48:05',1),(52,'2022-03-15 09:48:05','标题2','商品名称2','商品分类2','upload/qiugouxinxi_tupian2.jpg','接受价位2',2,'2022-03-15','账号2','姓名2','手机2',2,2,'2022-03-15 17:48:05',2),(53,'2022-03-15 09:48:05','标题3','商品名称3','商品分类3','upload/qiugouxinxi_tupian3.jpg','接受价位3',3,'2022-03-15','账号3','姓名3','手机3',3,3,'2022-03-15 17:48:05',3),(54,'2022-03-15 09:48:05','标题4','商品名称4','商品分类4','upload/qiugouxinxi_tupian4.jpg','接受价位4',4,'2022-03-15','账号4','姓名4','手机4',4,4,'2022-03-15 17:48:05',4),(55,'2022-03-15 09:48:05','标题5','商品名称5','商品分类5','upload/qiugouxinxi_tupian5.jpg','接受价位5',5,'2022-03-15','账号5','姓名5','手机5',5,5,'2022-03-15 17:48:05',5),(56,'2022-03-15 09:48:05','标题6','商品名称6','商品分类6','upload/qiugouxinxi_tupian6.jpg','接受价位6',6,'2022-03-15','账号6','姓名6','手机6',6,6,'2022-03-15 17:48:05',6);
/*!40000 ALTER TABLE `qiugouxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (31,'2022-03-15 09:48:05','商品分类1'),(32,'2022-03-15 09:48:05','商品分类2'),(33,'2022-03-15 09:48:05','商品分类3'),(34,'2022-03-15 09:48:05','商品分类4'),(35,'2022-03-15 09:48:05','商品分类5'),(36,'2022-03-15 09:48:05','商品分类6');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangjiariqi` date DEFAULT NULL COMMENT '上架日期',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float DEFAULT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (41,'2022-03-15 09:48:05','1111111111','商品名称1','商品分类1','品牌1','规格1','upload/shangpinxinxi_tupian1.jpg','2022-03-15','商品介绍1','卖家账号1',1,1,'2022-03-15 17:48:05',1,99.9,1,99),(42,'2022-03-15 09:48:05','2222222222','商品名称2','商品分类2','品牌2','规格2','upload/shangpinxinxi_tupian2.jpg','2022-03-15','商品介绍2','卖家账号2',2,2,'2022-03-15 17:48:05',2,99.9,2,99),(43,'2022-03-15 09:48:05','3333333333','商品名称3','商品分类3','品牌3','规格3','upload/shangpinxinxi_tupian3.jpg','2022-03-15','商品介绍3','卖家账号3',3,3,'2022-03-15 17:48:05',3,99.9,3,99),(44,'2022-03-15 09:48:05','4444444444','商品名称4','商品分类4','品牌4','规格4','upload/shangpinxinxi_tupian4.jpg','2022-03-15','商品介绍4','卖家账号4',4,4,'2022-03-15 17:48:05',4,99.9,4,99),(45,'2022-03-15 09:48:05','5555555555','商品名称5','商品分类5','品牌5','规格5','upload/shangpinxinxi_tupian5.jpg','2022-03-15','商品介绍5','卖家账号5',5,5,'2022-03-15 17:48:05',5,99.9,5,99),(46,'2022-03-15 09:48:05','6666666666','商品名称6','商品分类6','品牌6','规格6','upload/shangpinxinxi_tupian6.jpg','2022-03-15','商品介绍6','卖家账号6',6,6,'2022-03-15 17:48:05',6,99.9,6,99);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-15 09:48:05');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-15 22:25:55
