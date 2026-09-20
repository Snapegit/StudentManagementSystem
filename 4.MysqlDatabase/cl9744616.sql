-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl9744616
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
-- Current Database: `cl9744616`
--

/*!40000 DROP DATABASE IF EXISTS `cl9744616`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl9744616` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl9744616`;

--
-- Table structure for table `banji`
--

DROP TABLE IF EXISTS `banji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `banji` (`banji`)
) ENGINE=InnoDB AUTO_INCREMENT=1707233644966 DEFAULT CHARSET=utf8 COMMENT='班级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banji`
--

LOCK TABLES `banji` WRITE;
/*!40000 ALTER TABLE `banji` DISABLE KEYS */;
INSERT INTO `banji` VALUES (91,'2024-02-06 15:22:42','班级1'),(92,'2024-02-06 15:22:42','班级2'),(93,'2024-02-06 15:22:42','班级3'),(94,'2024-02-06 15:22:42','班级4'),(95,'2024-02-06 15:22:42','班级5'),(96,'2024-02-06 15:22:42','班级6'),(1707233644965,'2024-02-06 15:34:04','201班');
/*!40000 ALTER TABLE `banji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bixiukecheng`
--

DROP TABLE IF EXISTS `bixiukecheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bixiukecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `kechengjianjie` longtext COMMENT '课程简介',
  `shangkeshijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707233779112 DEFAULT CHARSET=utf8 COMMENT='必修课程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bixiukecheng`
--

LOCK TABLES `bixiukecheng` WRITE;
/*!40000 ALTER TABLE `bixiukecheng` DISABLE KEYS */;
INSERT INTO `bixiukecheng` VALUES (101,'2024-02-06 15:22:42','课程名称1','班级1','课程简介1','上课时间1','2024-02-06 23:22:42','教师工号1','教师姓名1','学号1','学生姓名1'),(102,'2024-02-06 15:22:42','课程名称2','班级2','课程简介2','上课时间2','2024-02-06 23:22:42','教师工号2','教师姓名2','学号2','学生姓名2'),(103,'2024-02-06 15:22:42','课程名称3','班级3','课程简介3','上课时间3','2024-02-06 23:22:42','教师工号3','教师姓名3','学号3','学生姓名3'),(104,'2024-02-06 15:22:42','课程名称4','班级4','课程简介4','上课时间4','2024-02-06 23:22:42','教师工号4','教师姓名4','学号4','学生姓名4'),(105,'2024-02-06 15:22:42','课程名称5','班级5','课程简介5','上课时间5','2024-02-06 23:22:42','教师工号5','教师姓名5','学号5','学生姓名5'),(106,'2024-02-06 15:22:42','课程名称6','班级6','课程简介6','上课时间6','2024-02-06 23:22:42','教师工号6','教师姓名6','学号6','学生姓名6'),(1707233779111,'2024-02-06 15:36:18','数学','201班','内容','8.10','2024-02-06 23:36:05','2','2','1','1');
/*!40000 ALTER TABLE `bixiukecheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bixiukechengji`
--

DROP TABLE IF EXISTS `bixiukechengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bixiukechengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `chengji` double NOT NULL COMMENT '成绩',
  `chengjileixing` varchar(200) DEFAULT NULL COMMENT '成绩类型',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707233893111 DEFAULT CHARSET=utf8 COMMENT='必修课成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bixiukechengji`
--

LOCK TABLES `bixiukechengji` WRITE;
/*!40000 ALTER TABLE `bixiukechengji` DISABLE KEYS */;
INSERT INTO `bixiukechengji` VALUES (111,'2024-02-06 15:22:42','课程名称1',1,'考试成绩','学号1','学生姓名1','教师工号1','教师姓名1'),(112,'2024-02-06 15:22:42','课程名称2',2,'考试成绩','学号2','学生姓名2','教师工号2','教师姓名2'),(113,'2024-02-06 15:22:42','课程名称3',3,'考试成绩','学号3','学生姓名3','教师工号3','教师姓名3'),(114,'2024-02-06 15:22:42','课程名称4',4,'考试成绩','学号4','学生姓名4','教师工号4','教师姓名4'),(115,'2024-02-06 15:22:42','课程名称5',5,'考试成绩','学号5','学生姓名5','教师工号5','教师姓名5'),(116,'2024-02-06 15:22:42','课程名称6',6,'考试成绩','学号6','学生姓名6','教师工号6','教师姓名6'),(1707233893110,'2024-02-06 15:38:12','数学',80,'考试成绩','1','1','2','2');
/*!40000 ALTER TABLE `bixiukechengji` ENABLE KEYS */;
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
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `touxiang` longtext COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `pquestion` varchar(200) DEFAULT NULL COMMENT '密保问题',
  `panswer` varchar(200) DEFAULT NULL COMMENT '密保答案',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1707233675517 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (41,'2024-02-06 15:22:42','教师工号1','123456','教师姓名1','file/jiaoshiTouxiang1.jpg','19819881111','男','院系1','密保问题1','密保答案1'),(42,'2024-02-06 15:22:42','教师工号2','123456','教师姓名2','file/jiaoshiTouxiang2.jpg','19819881112','男','院系2','密保问题2','密保答案2'),(43,'2024-02-06 15:22:42','教师工号3','123456','教师姓名3','file/jiaoshiTouxiang3.jpg','19819881113','男','院系3','密保问题3','密保答案3'),(44,'2024-02-06 15:22:42','教师工号4','123456','教师姓名4','file/jiaoshiTouxiang4.jpg','19819881114','男','院系4','密保问题4','密保答案4'),(45,'2024-02-06 15:22:42','教师工号5','123456','教师姓名5','file/jiaoshiTouxiang5.jpg','19819881115','男','院系5','密保问题5','密保答案5'),(46,'2024-02-06 15:22:42','教师工号6','123456','教师姓名6','file/jiaoshiTouxiang6.jpg','19819881116','男','院系6','密保问题6','密保答案6'),(1707233675516,'2024-02-06 15:34:35','2','2','2','file/1707233664284.jpg','13645645645','男','数学','2','2');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaoqinxinxi`
--

DROP TABLE IF EXISTS `kaoqinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaoqinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `kaoqinriqi` date NOT NULL COMMENT '考勤日期',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kaoqinleixing` varchar(200) DEFAULT NULL COMMENT '考勤类型',
  `dijizhou` varchar(200) DEFAULT NULL COMMENT '第几周',
  `dijijie` varchar(200) DEFAULT NULL COMMENT '第几节',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707233913951 DEFAULT CHARSET=utf8 COMMENT='考勤信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaoqinxinxi`
--

LOCK TABLES `kaoqinxinxi` WRITE;
/*!40000 ALTER TABLE `kaoqinxinxi` DISABLE KEYS */;
INSERT INTO `kaoqinxinxi` VALUES (131,'2024-02-06 15:22:42','学号1','学生姓名1','班级1','2024-02-06','课程名称1','出勤','第几周1','第几节1','教师姓名1','教师工号1'),(132,'2024-02-06 15:22:42','学号2','学生姓名2','班级2','2024-02-06','课程名称2','出勤','第几周2','第几节2','教师姓名2','教师工号2'),(133,'2024-02-06 15:22:42','学号3','学生姓名3','班级3','2024-02-06','课程名称3','出勤','第几周3','第几节3','教师姓名3','教师工号3'),(134,'2024-02-06 15:22:42','学号4','学生姓名4','班级4','2024-02-06','课程名称4','出勤','第几周4','第几节4','教师姓名4','教师工号4'),(135,'2024-02-06 15:22:42','学号5','学生姓名5','班级5','2024-02-06','课程名称5','出勤','第几周5','第几节5','教师姓名5','教师工号5'),(136,'2024-02-06 15:22:42','学号6','学生姓名6','班级6','2024-02-06','课程名称6','出勤','第几周6','第几节6','教师姓名6','教师工号6'),(1707233913950,'2024-02-06 15:38:33','1','1','201班','2024-02-07','数学','出勤','2','2','2','2');
/*!40000 ALTER TABLE `kaoqinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-02-06 15:22:42','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"}],\"fontClass\":\"icon-common25\",\"menu\":\"管理员管理\",\"unicode\":\"&#xee09;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"考勤信息\",\"menuJump\":\"列表\",\"tableName\":\"kaoqinxinxi\"}],\"fontClass\":\"icon-common21\",\"menu\":\"考勤信息管理\",\"unicode\":\"&#xee03;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"必修课程\",\"menuJump\":\"列表\",\"tableName\":\"bixiukecheng\"},{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"必修课成绩\",\"menuJump\":\"列表\",\"tableName\":\"bixiukechengji\"}],\"fontClass\":\"icon-common27\",\"menu\":\"必修课程管理\",\"unicode\":\"&#xee2c;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导入\"],\"menu\":\"学生\",\"menuJump\":\"列表\",\"tableName\":\"xuesheng\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导入\"],\"menu\":\"教师\",\"menuJump\":\"列表\",\"tableName\":\"jiaoshi\"},{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"班级\",\"menuJump\":\"列表\",\"tableName\":\"banji\"}],\"fontClass\":\"icon-user2\",\"menu\":\"用户\",\"unicode\":\"&#xef98;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"选修课程\",\"menuJump\":\"列表\",\"tableName\":\"xuanxiukecheng\"},{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"学生选课\",\"menuJump\":\"列表\",\"tableName\":\"xueshengxuanke\"},{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"选修课成绩\",\"menuJump\":\"列表\",\"tableName\":\"xuanxiukechengji\"}],\"fontClass\":\"icon-common15\",\"menu\":\"选修课信息\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"请假申请\",\"menuJump\":\"列表\",\"tableName\":\"qingjiashenqing\"}],\"fontClass\":\"icon-common50\",\"menu\":\"请假申请管理\",\"unicode\":\"&#xef96;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"评教信息\",\"menuJump\":\"列表\",\"tableName\":\"pingjiaoxinxi\"}],\"fontClass\":\"icon-common17\",\"menu\":\"评价信息管理\",\"unicode\":\"&#xedfe;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common4\",\"menu\":\"公告信息管理\",\"unicode\":\"&#xedab;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"选课\"],\"menu\":\"选修课程\",\"menuJump\":\"列表\",\"tableName\":\"xuanxiukecheng\"}],\"menu\":\"课程信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"查看\"],\"menu\":\"学生选课\",\"menuJump\":\"列表\",\"tableName\":\"xueshengxuanke\"},{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\"],\"menu\":\"选修课成绩\",\"menuJump\":\"列表\",\"tableName\":\"xuanxiukechengji\"}],\"fontClass\":\"icon-common15\",\"menu\":\"选修课信息\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"查看\"],\"menu\":\"考勤信息\",\"menuJump\":\"列表\",\"tableName\":\"kaoqinxinxi\"}],\"fontClass\":\"icon-common21\",\"menu\":\"考勤信息管理\",\"unicode\":\"&#xee03;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"请假申请\",\"menuJump\":\"列表\",\"tableName\":\"qingjiashenqing\"}],\"fontClass\":\"icon-common50\",\"menu\":\"请假申请管理\",\"unicode\":\"&#xef96;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\"],\"menu\":\"必修课程\",\"menuJump\":\"列表\",\"tableName\":\"bixiukecheng\"},{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"查看\"],\"menu\":\"必修课成绩\",\"menuJump\":\"列表\",\"tableName\":\"bixiukechengji\"}],\"fontClass\":\"icon-common27\",\"menu\":\"必修课程管理\",\"unicode\":\"&#xee2c;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"评教信息\",\"menuJump\":\"列表\",\"tableName\":\"pingjiaoxinxi\"}],\"fontClass\":\"icon-common17\",\"menu\":\"评价信息管理\",\"unicode\":\"&#xedfe;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"选课\"],\"menu\":\"选修课程\",\"menuJump\":\"列表\",\"tableName\":\"xuanxiukecheng\"}],\"menu\":\"课程信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"否\",\"roleName\":\"学生\",\"tableName\":\"xuesheng\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"选修课程\",\"menuJump\":\"列表\",\"tableName\":\"xuanxiukecheng\"},{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"查看\",\"成绩\",\"删除\"],\"menu\":\"学生选课\",\"menuJump\":\"列表\",\"tableName\":\"xueshengxuanke\"},{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"选修课成绩\",\"menuJump\":\"列表\",\"tableName\":\"xuanxiukechengji\"}],\"fontClass\":\"icon-common15\",\"menu\":\"选修课信息\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"必修课成绩\",\"menuJump\":\"列表\",\"tableName\":\"bixiukechengji\"},{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"成绩\",\"删除\"],\"menu\":\"必修课程\",\"menuJump\":\"列表\",\"tableName\":\"bixiukecheng\"}],\"fontClass\":\"icon-common27\",\"menu\":\"必修课程管理\",\"unicode\":\"&#xee2c;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"考勤信息\",\"menuJump\":\"列表\",\"tableName\":\"kaoqinxinxi\"}],\"fontClass\":\"icon-common21\",\"menu\":\"考勤信息管理\",\"unicode\":\"&#xee03;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"评教信息\",\"menuJump\":\"列表\",\"tableName\":\"pingjiaoxinxi\"}],\"fontClass\":\"icon-common17\",\"menu\":\"评价信息管理\",\"unicode\":\"&#xedfe;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"选课\"],\"menu\":\"选修课程\",\"menuJump\":\"列表\",\"tableName\":\"xuanxiukecheng\"}],\"menu\":\"课程信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"教师\",\"tableName\":\"jiaoshi\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707233865675 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (121,'2024-02-06 15:22:42','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(122,'2024-02-06 15:22:42','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(123,'2024-02-06 15:22:42','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(124,'2024-02-06 15:22:42','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(125,'2024-02-06 15:22:42','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(126,'2024-02-06 15:22:42','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。'),(1707233865674,'2024-02-06 15:37:45','考试通知','简述','file/1707233859378.png','<p>详情</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pingjiaoxinxi`
--

DROP TABLE IF EXISTS `pingjiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pingjiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `pingjianeirong` longtext NOT NULL COMMENT '评价内容',
  `pingfen` varchar(200) NOT NULL COMMENT '评分',
  `pingjiashijian` datetime DEFAULT NULL COMMENT '评价时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707233985490 DEFAULT CHARSET=utf8 COMMENT='评教信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pingjiaoxinxi`
--

LOCK TABLES `pingjiaoxinxi` WRITE;
/*!40000 ALTER TABLE `pingjiaoxinxi` DISABLE KEYS */;
INSERT INTO `pingjiaoxinxi` VALUES (151,'2024-02-06 15:22:42','教师工号1','教师姓名1','课程名称1','评价内容1','1','2024-02-06 23:22:42','学号1','学生姓名1'),(152,'2024-02-06 15:22:42','教师工号2','教师姓名2','课程名称2','评价内容2','1','2024-02-06 23:22:42','学号2','学生姓名2'),(153,'2024-02-06 15:22:42','教师工号3','教师姓名3','课程名称3','评价内容3','1','2024-02-06 23:22:42','学号3','学生姓名3'),(154,'2024-02-06 15:22:42','教师工号4','教师姓名4','课程名称4','评价内容4','1','2024-02-06 23:22:42','学号4','学生姓名4'),(155,'2024-02-06 15:22:42','教师工号5','教师姓名5','课程名称5','评价内容5','1','2024-02-06 23:22:42','学号5','学生姓名5'),(156,'2024-02-06 15:22:42','教师工号6','教师姓名6','课程名称6','评价内容6','1','2024-02-06 23:22:42','学号6','学生姓名6'),(1707233985489,'2024-02-06 15:39:45','2','2','数学','内容','3','2024-02-06 23:39:36','1','1');
/*!40000 ALTER TABLE `pingjiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qingjiashenqing`
--

DROP TABLE IF EXISTS `qingjiashenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qingjiashenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `qingjiariqi` date NOT NULL COMMENT '请假日期',
  `qingjiayuanyin` longtext NOT NULL COMMENT '请假原因',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707233742110 DEFAULT CHARSET=utf8 COMMENT='请假申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qingjiashenqing`
--

LOCK TABLES `qingjiashenqing` WRITE;
/*!40000 ALTER TABLE `qingjiashenqing` DISABLE KEYS */;
INSERT INTO `qingjiashenqing` VALUES (141,'2024-02-06 15:22:42','学号1','学生姓名1','2024-02-06','请假原因1','是',''),(142,'2024-02-06 15:22:42','学号2','学生姓名2','2024-02-06','请假原因2','是',''),(143,'2024-02-06 15:22:42','学号3','学生姓名3','2024-02-06','请假原因3','是',''),(144,'2024-02-06 15:22:42','学号4','学生姓名4','2024-02-06','请假原因4','是',''),(145,'2024-02-06 15:22:42','学号5','学生姓名5','2024-02-06','请假原因5','是',''),(146,'2024-02-06 15:22:42','学号6','学生姓名6','2024-02-06','请假原因6','是',''),(1707233742109,'2024-02-06 15:35:41','1','1','2024-02-07','请假原因','是','同意');
/*!40000 ALTER TABLE `qingjiashenqing` ENABLE KEYS */;
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
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='我的收藏';
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','z8prjvzy9ow1h4aijmkwki7s9azf3um5','2024-02-06 15:32:42','2024-02-06 16:40:22'),(2,1707233675516,'2','jiaoshi','教师','dgr0j5tqilnmu8oau61ds50nxu6gtpri','2024-02-06 15:35:02','2024-02-06 16:39:53'),(3,1707233634778,'1','xuesheng','学生','7ownwbhkhvtw6b0u17vmt3vdb7hjfj9b','2024-02-06 15:35:17','2024-02-06 16:38:46');
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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-02-06 15:22:42','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuanxiukecheng`
--

DROP TABLE IF EXISTS `xuanxiukecheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuanxiukecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengfengmian` longtext COMMENT '课程封面',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `kechengjianjie` longtext COMMENT '课程简介',
  `shangkeshijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `reversetime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707233824399 DEFAULT CHARSET=utf8 COMMENT='选修课程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuanxiukecheng`
--

LOCK TABLES `xuanxiukecheng` WRITE;
/*!40000 ALTER TABLE `xuanxiukecheng` DISABLE KEYS */;
INSERT INTO `xuanxiukecheng` VALUES (51,'2024-02-06 15:22:42','课程名称1','file/xuanxiukechengKechengfengmian1.jpg,file/xuanxiukechengKechengfengmian2.jpg,file/xuanxiukechengKechengfengmian3.jpg','班级1','课程简介1','上课时间1','2024-02-06 23:22:42','教师工号1','教师姓名1',1,'2024-02-05 00:00:00'),(52,'2024-02-06 15:22:42','课程名称2','file/xuanxiukechengKechengfengmian2.jpg,file/xuanxiukechengKechengfengmian3.jpg,file/xuanxiukechengKechengfengmian4.jpg','班级2','课程简介2','上课时间2','2024-02-06 23:22:42','教师工号2','教师姓名2',2,'2024-02-07 00:00:00'),(53,'2024-02-06 15:22:42','课程名称3','file/xuanxiukechengKechengfengmian3.jpg,file/xuanxiukechengKechengfengmian4.jpg,file/xuanxiukechengKechengfengmian5.jpg','班级3','课程简介3','上课时间3','2024-02-06 23:22:42','教师工号3','教师姓名3',3,'2024-02-07 00:00:00'),(54,'2024-02-06 15:22:42','课程名称4','file/xuanxiukechengKechengfengmian4.jpg,file/xuanxiukechengKechengfengmian5.jpg,file/xuanxiukechengKechengfengmian6.jpg','班级4','课程简介4','上课时间4','2024-02-06 23:22:42','教师工号4','教师姓名4',4,'2024-02-07 00:00:00'),(55,'2024-02-06 15:22:42','课程名称5','file/xuanxiukechengKechengfengmian5.jpg,file/xuanxiukechengKechengfengmian6.jpg,file/xuanxiukechengKechengfengmian7.jpg','班级5','课程简介5','上课时间5','2024-02-06 23:22:42','教师工号5','教师姓名5',5,'2024-02-07 00:00:00'),(56,'2024-02-06 15:22:42','课程名称6','file/xuanxiukechengKechengfengmian6.jpg,file/xuanxiukechengKechengfengmian7.jpg,file/xuanxiukechengKechengfengmian8.jpg','班级6','课程简介6','上课时间6','2024-02-06 23:22:42','教师工号6','教师姓名6',6,'2024-02-07 00:00:00'),(1707233824398,'2024-02-06 15:37:03','音乐','file/1707233800429.png','201班','这个最近点击时间就是报名的倒计时','5.10','2024-02-06 23:36:26','2','2',0,'2024-02-07 00:00:00');
/*!40000 ALTER TABLE `xuanxiukecheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuanxiukechengji`
--

DROP TABLE IF EXISTS `xuanxiukechengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuanxiukechengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `chengji` double NOT NULL COMMENT '成绩',
  `chengjileixing` varchar(200) DEFAULT NULL COMMENT '成绩类型',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707234002462 DEFAULT CHARSET=utf8 COMMENT='选修课成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuanxiukechengji`
--

LOCK TABLES `xuanxiukechengji` WRITE;
/*!40000 ALTER TABLE `xuanxiukechengji` DISABLE KEYS */;
INSERT INTO `xuanxiukechengji` VALUES (81,'2024-02-06 15:22:42','课程名称1',1,'考试成绩','学号1','学生姓名1','教师工号1','教师姓名1'),(82,'2024-02-06 15:22:42','课程名称2',2,'考试成绩','学号2','学生姓名2','教师工号2','教师姓名2'),(83,'2024-02-06 15:22:42','课程名称3',3,'考试成绩','学号3','学生姓名3','教师工号3','教师姓名3'),(84,'2024-02-06 15:22:42','课程名称4',4,'考试成绩','学号4','学生姓名4','教师工号4','教师姓名4'),(85,'2024-02-06 15:22:42','课程名称5',5,'考试成绩','学号5','学生姓名5','教师工号5','教师姓名5'),(86,'2024-02-06 15:22:42','课程名称6',6,'考试成绩','学号6','学生姓名6','教师工号6','教师姓名6'),(1707234002461,'2024-02-06 15:40:02','音乐',85,'作业成绩','1','1','2','2');
/*!40000 ALTER TABLE `xuanxiukechengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `pquestion` varchar(200) DEFAULT NULL COMMENT '密保问题',
  `panswer` varchar(200) DEFAULT NULL COMMENT '密保答案',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1707233634779 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (31,'2024-02-06 15:22:42','学号1','123456','学生姓名1','file/xueshengTouxiang1.jpg','男','19819881111','班级1','密保问题1','密保答案1'),(32,'2024-02-06 15:22:42','学号2','123456','学生姓名2','file/xueshengTouxiang2.jpg','男','19819881112','班级2','密保问题2','密保答案2'),(33,'2024-02-06 15:22:42','学号3','123456','学生姓名3','file/xueshengTouxiang3.jpg','男','19819881113','班级3','密保问题3','密保答案3'),(34,'2024-02-06 15:22:42','学号4','123456','学生姓名4','file/xueshengTouxiang4.jpg','男','19819881114','班级4','密保问题4','密保答案4'),(35,'2024-02-06 15:22:42','学号5','123456','学生姓名5','file/xueshengTouxiang5.jpg','男','19819881115','班级5','密保问题5','密保答案5'),(36,'2024-02-06 15:22:42','学号6','123456','学生姓名6','file/xueshengTouxiang6.jpg','男','19819881116','班级6','密保问题6','密保答案6'),(1707233634778,'2024-02-06 15:33:54','1','1','1','file/1707233625861.jpeg','女','13645645645','201班','1','1');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengxuanke`
--

DROP TABLE IF EXISTS `xueshengxuanke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengxuanke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengjianjie` varchar(200) DEFAULT NULL COMMENT '课程简介',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xuankeshijian` datetime DEFAULT NULL COMMENT '选课时间',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707233945828 DEFAULT CHARSET=utf8 COMMENT='学生选课';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengxuanke`
--

LOCK TABLES `xueshengxuanke` WRITE;
/*!40000 ALTER TABLE `xueshengxuanke` DISABLE KEYS */;
INSERT INTO `xueshengxuanke` VALUES (71,'2024-02-06 15:22:42','课程名称1','课程简介1','教师工号1','教师姓名1','学号1','学生姓名1','班级1','2024-02-06 23:22:42',1,1),(72,'2024-02-06 15:22:42','课程名称2','课程简介2','教师工号2','教师姓名2','学号2','学生姓名2','班级2','2024-02-06 23:22:42',2,2),(73,'2024-02-06 15:22:42','课程名称3','课程简介3','教师工号3','教师姓名3','学号3','学生姓名3','班级3','2024-02-06 23:22:42',3,3),(74,'2024-02-06 15:22:42','课程名称4','课程简介4','教师工号4','教师姓名4','学号4','学生姓名4','班级4','2024-02-06 23:22:42',4,4),(75,'2024-02-06 15:22:42','课程名称5','课程简介5','教师工号5','教师姓名5','学号5','学生姓名5','班级5','2024-02-06 23:22:42',5,5),(76,'2024-02-06 15:22:42','课程名称6','课程简介6','教师工号6','教师姓名6','学号6','学生姓名6','班级6','2024-02-06 23:22:42',6,6),(1707233945827,'2024-02-06 15:39:05','音乐','这个最近点击时间就是报名的倒计时','2','2','1','1','201班','2024-02-06 23:39:03',1707233634778,1707233824398);
/*!40000 ALTER TABLE `xueshengxuanke` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-07 13:56:06
