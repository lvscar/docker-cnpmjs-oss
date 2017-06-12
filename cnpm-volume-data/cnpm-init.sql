-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: cnpmjs_test
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `dist_dir`
--

DROP TABLE IF EXISTS `dist_dir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dist_dir` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `gmt_create` datetime NOT NULL COMMENT 'create time',
  `gmt_modified` datetime NOT NULL COMMENT 'modified time',
  `name` varchar(200) NOT NULL COMMENT 'dir name',
  `parent` varchar(200) NOT NULL DEFAULT '/' COMMENT 'parent dir',
  `date` varchar(20) DEFAULT NULL COMMENT '02-May-2014 01:06',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`parent`,`name`),
  KEY `gmt_modified` (`gmt_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='dist dir info';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dist_dir`
--

LOCK TABLES `dist_dir` WRITE;
/*!40000 ALTER TABLE `dist_dir` DISABLE KEYS */;
/*!40000 ALTER TABLE `dist_dir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dist_file`
--

DROP TABLE IF EXISTS `dist_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dist_file` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `gmt_create` datetime NOT NULL COMMENT 'create time',
  `gmt_modified` datetime NOT NULL COMMENT 'modified time',
  `name` varchar(100) NOT NULL COMMENT 'file name',
  `parent` varchar(200) NOT NULL DEFAULT '/' COMMENT 'parent dir',
  `date` varchar(20) DEFAULT NULL COMMENT '02-May-2014 01:06',
  `size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'file size',
  `sha1` varchar(40) DEFAULT NULL COMMENT 'sha1 hex value',
  `url` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fullname` (`parent`,`name`),
  KEY `gmt_modified` (`gmt_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='dist file info';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dist_file`
--

LOCK TABLES `dist_file` WRITE;
/*!40000 ALTER TABLE `dist_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `dist_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloads`
--

DROP TABLE IF EXISTS `downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `downloads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `gmt_create` datetime NOT NULL COMMENT 'create time',
  `gmt_modified` datetime NOT NULL COMMENT 'modified time',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'module name',
  `date` int(10) unsigned NOT NULL COMMENT 'YYYYMM format',
  `d01` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '01 download count',
  `d02` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '02 download count',
  `d03` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '03 download count',
  `d04` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '04 download count',
  `d05` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '05 download count',
  `d06` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '06 download count',
  `d07` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '07 download count',
  `d08` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '08 download count',
  `d09` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '09 download count',
  `d10` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '10 download count',
  `d11` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '11 download count',
  `d12` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '12 download count',
  `d13` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '13 download count',
  `d14` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '14 download count',
  `d15` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '15 download count',
  `d16` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '16 download count',
  `d17` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '17 download count',
  `d18` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '18 download count',
  `d19` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '19 download count',
  `d20` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '20 download count',
  `d21` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '21 download count',
  `d22` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '22 download count',
  `d23` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '23 download count',
  `d24` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '24 download count',
  `d25` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '25 download count',
  `d26` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '26 download count',
  `d27` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '27 download count',
  `d28` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '28 download count',
  `d29` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '29 download count',
  `d30` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '30 download count',
  `d31` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '31 download count',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_date` (`name`,`date`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='module download total info';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloads`
--

LOCK TABLES `downloads` WRITE;
/*!40000 ALTER TABLE `downloads` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `gmt_create` datetime NOT NULL COMMENT 'create time',
  `gmt_modified` datetime NOT NULL COMMENT 'modified time',
  `author` varchar(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'module name',
  `version` varchar(30) NOT NULL COMMENT 'module version',
  `description` longtext,
  `package` longtext COMMENT 'package.json',
  `dist_shasum` varchar(100) DEFAULT NULL,
  `dist_tarball` varchar(2048) DEFAULT NULL,
  `dist_size` int(10) unsigned NOT NULL DEFAULT '0',
  `publish_time` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`version`),
  KEY `gmt_modified` (`gmt_modified`),
  KEY `publish_time` (`publish_time`),
  KEY `author` (`author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='module info';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_abbreviated`
--

DROP TABLE IF EXISTS `module_abbreviated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_abbreviated` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `gmt_create` datetime NOT NULL COMMENT 'create time',
  `gmt_modified` datetime NOT NULL COMMENT 'modified time',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'module name',
  `version` varchar(30) NOT NULL COMMENT 'module version',
  `package` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'the abbreviated metadata',
  `publish_time` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`version`),
  KEY `gmt_modified` (`gmt_modified`),
  KEY `publish_time` (`publish_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='module abbreviated info';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_abbreviated`
--

LOCK TABLES `module_abbreviated` WRITE;
/*!40000 ALTER TABLE `module_abbreviated` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_abbreviated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_deps`
--

DROP TABLE IF EXISTS `module_deps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_deps` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `gmt_create` datetime NOT NULL COMMENT 'create time',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'module name',
  `deps` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'which module depend on this module',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_deps` (`name`,`deps`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='module deps';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_deps`
--

LOCK TABLES `module_deps` WRITE;
/*!40000 ALTER TABLE `module_deps` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_deps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_keyword`
--

DROP TABLE IF EXISTS `module_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_keyword` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `gmt_create` datetime NOT NULL COMMENT 'create time',
  `keyword` varchar(100) NOT NULL COMMENT 'keyword',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'module name',
  `description` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword_module_name` (`keyword`,`name`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='module keyword';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_keyword`
--

LOCK TABLES `module_keyword` WRITE;
/*!40000 ALTER TABLE `module_keyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_log`
--

DROP TABLE IF EXISTS `module_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `gmt_create` datetime NOT NULL COMMENT 'create time',
  `gmt_modified` datetime NOT NULL COMMENT 'modified time',
  `username` varchar(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'module name',
  `log` longtext,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='module sync log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_log`
--

LOCK TABLES `module_log` WRITE;
/*!40000 ALTER TABLE `module_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_maintainer`
--

DROP TABLE IF EXISTS `module_maintainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_maintainer` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `gmt_create` datetime NOT NULL COMMENT 'create time',
  `user` varchar(100) NOT NULL COMMENT 'user name',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'module name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_module_name` (`user`,`name`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='private module maintainers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_maintainer`
--

LOCK TABLES `module_maintainer` WRITE;
/*!40000 ALTER TABLE `module_maintainer` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_maintainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_star`
--

DROP TABLE IF EXISTS `module_star`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_star` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `gmt_create` datetime NOT NULL COMMENT 'create time',
  `user` varchar(100) NOT NULL COMMENT 'user name',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'module name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_module_name` (`user`,`name`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='module star';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_star`
--

LOCK TABLES `module_star` WRITE;
/*!40000 ALTER TABLE `module_star` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_star` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_unpublished`
--

DROP TABLE IF EXISTS `module_unpublished`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_unpublished` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `gmt_create` datetime NOT NULL COMMENT 'create time',
  `gmt_modified` datetime NOT NULL COMMENT 'modified time',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'module name',
  `package` longtext COMMENT 'base info: tags, time, maintainers, description, versions',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `gmt_modified` (`gmt_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='module unpublished info';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_unpublished`
--

LOCK TABLES `module_unpublished` WRITE;
/*!40000 ALTER TABLE `module_unpublished` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_unpublished` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npm_module_maintainer`
--

DROP TABLE IF EXISTS `npm_module_maintainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npm_module_maintainer` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `gmt_create` datetime NOT NULL COMMENT 'create time',
  `user` varchar(100) NOT NULL COMMENT 'user name',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'module name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_module_name` (`user`,`name`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='npm original module maintainers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npm_module_maintainer`
--

LOCK TABLES `npm_module_maintainer` WRITE;
/*!40000 ALTER TABLE `npm_module_maintainer` DISABLE KEYS */;
/*!40000 ALTER TABLE `npm_module_maintainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_readme`
--

DROP TABLE IF EXISTS `package_readme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_readme` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `gmt_create` datetime NOT NULL COMMENT 'create time',
  `gmt_modified` datetime NOT NULL COMMENT 'modified time',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'module name',
  `readme` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'the latest version readme',
  `version` varchar(30) NOT NULL COMMENT 'module version',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `gmt_modified` (`gmt_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='package latest readme';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_readme`
--

LOCK TABLES `package_readme` WRITE;
/*!40000 ALTER TABLE `package_readme` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_readme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `gmt_create` datetime NOT NULL COMMENT 'create time',
  `gmt_modified` datetime NOT NULL COMMENT 'modified time',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'module name',
  `tag` varchar(30) NOT NULL COMMENT 'tag name',
  `version` varchar(30) NOT NULL COMMENT 'module version',
  `module_id` bigint(20) unsigned NOT NULL COMMENT 'module id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`tag`),
  KEY `gmt_modified` (`gmt_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='module tag';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total`
--

DROP TABLE IF EXISTS `total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `total` (
  `name` varchar(100) NOT NULL COMMENT 'total name',
  `gmt_modified` datetime NOT NULL COMMENT 'modified time',
  `module_delete` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'module delete count',
  `last_sync_time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'last timestamp sync from official registry',
  `last_exist_sync_time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'last timestamp sync exist packages from official registry',
  `sync_status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'system sync from official registry status',
  `need_sync_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'how many packages need to be sync',
  `success_sync_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'how many packages sync success at this time',
  `fail_sync_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'how many packages sync fail at this time',
  `left_sync_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'how many packages left to be sync',
  `last_sync_module` varchar(100) DEFAULT NULL COMMENT 'last sync success module name',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='total info';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total`
--

LOCK TABLES `total` WRITE;
/*!40000 ALTER TABLE `total` DISABLE KEYS */;
INSERT INTO `total` VALUES ('total','2017-06-08 09:29:42',0,0,0,0,0,0,0,0,NULL);
/*!40000 ALTER TABLE `total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `gmt_create` datetime NOT NULL COMMENT 'create time',
  `gmt_modified` datetime NOT NULL COMMENT 'modified time',
  `name` varchar(100) NOT NULL COMMENT 'user name',
  `salt` varchar(100) NOT NULL,
  `password_sha` varchar(100) NOT NULL COMMENT 'user password hash',
  `ip` varchar(64) NOT NULL COMMENT 'user last request ip',
  `roles` varchar(200) NOT NULL DEFAULT '[]',
  `rev` varchar(40) NOT NULL,
  `email` varchar(400) NOT NULL,
  `json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'json details',
  `npm_user` tinyint(1) DEFAULT '0' COMMENT 'user sync from npm or not, 1: true, other: false',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `gmt_modified` (`gmt_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='user base info';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-12  9:34:12
