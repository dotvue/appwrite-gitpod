-- MariaDB dump 10.19  Distrib 10.7.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	10.7.6-MariaDB-1:10.7.6+maria~ubu2004

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `appwrite`
--

/*!40000 DROP DATABASE IF EXISTS `appwrite`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `appwrite` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `appwrite`;

--
-- Table structure for table `_1__metadata`
--

DROP TABLE IF EXISTS `_1__metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1__metadata` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(512) DEFAULT NULL,
  `attributes` mediumtext DEFAULT NULL,
  `indexes` mediumtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1__metadata`
--

LOCK TABLES `_1__metadata` WRITE;
/*!40000 ALTER TABLE `_1__metadata` DISABLE KEYS */;
INSERT INTO `_1__metadata` VALUES
(1,'audit','2022-10-14 00:58:47.308','2022-10-14 00:58:47.308','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','audit','[{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"event\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"resource\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"userAgent\",\"type\":\"string\",\"size\":65534,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"ip\",\"type\":\"string\",\"size\":45,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"location\",\"type\":\"string\",\"size\":45,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"time\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"data\",\"type\":\"string\",\"size\":16777216,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"]}]','[{\"$id\":\"index2\",\"type\":\"key\",\"attributes\":[\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index4\",\"type\":\"key\",\"attributes\":[\"userId\",\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index5\",\"type\":\"key\",\"attributes\":[\"resource\",\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index-time\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]}]'),
(2,'abuse','2022-10-14 00:58:47.316','2022-10-14 00:58:47.316','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','abuse','[{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"time\",\"type\":\"datetime\",\"size\":0,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"count\",\"type\":\"integer\",\"size\":11,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[]}]','[{\"$id\":\"unique1\",\"type\":\"unique\",\"attributes\":[\"key\",\"time\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index2\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[]}]'),
(3,'databases','2022-10-14 00:58:47.352','2022-10-14 00:58:47.352','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','databases','[{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[256],\"orders\":[\"ASC\"]}]'),
(4,'attributes','2022-10-14 00:58:47.361','2022-10-14 00:58:47.361','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','attributes','[{\"$id\":\"databaseInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"databaseId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"collectionInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"collectionId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"size\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"required\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"default\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"casting\"],\"default\":null,\"format\":\"\"},{\"$id\":\"signed\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"array\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"format\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"formatOptions\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\",\"range\",\"enum\"],\"default\":{},\"format\":\"\"},{\"$id\":\"filters\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_db_collection\",\"type\":\"key\",\"attributes\":[\"databaseInternalId\",\"collectionInternalId\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]}]'),
(5,'indexes','2022-10-14 00:58:47.369','2022-10-14 00:58:47.369','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','indexes','[{\"$id\":\"databaseInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"databaseId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"collectionInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"collectionId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"attributes\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"lengths\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"orders\",\"type\":\"string\",\"size\":4,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_db_collection\",\"type\":\"key\",\"attributes\":[\"databaseInternalId\",\"collectionInternalId\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]}]'),
(6,'projects','2022-10-14 00:58:47.382','2022-10-14 00:58:47.382','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','projects','[{\"$id\":\"teamInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"teamId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"description\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"logo\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"url\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"version\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalCountry\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalState\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalCity\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalAddress\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalTaxId\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"services\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":[],\"format\":\"\"},{\"$id\":\"auths\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":[],\"format\":\"\"},{\"$id\":\"authProviders\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\",\"encrypt\"],\"default\":[],\"format\":\"\"},{\"$id\":\"platforms\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryPlatforms\"],\"default\":null,\"format\":\"\"},{\"$id\":\"webhooks\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryWebhooks\"],\"default\":null,\"format\":\"\"},{\"$id\":\"keys\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryKeys\"],\"default\":null,\"format\":\"\"},{\"$id\":\"domains\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryDomains\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[128],\"orders\":[\"ASC\"]}]'),
(7,'platforms','2022-10-14 00:58:47.391','2022-10-14 00:58:47.391','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','platforms','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"store\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"hostname\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(8,'domains','2022-10-14 00:58:47.400','2022-10-14 00:58:47.400','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','domains','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"updated\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"domain\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"tld\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"registerable\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"verification\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"certificateId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(9,'keys','2022-10-14 00:58:47.407','2022-10-14 00:58:47.407','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','keys','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":0,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"scopes\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":512,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"expire\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"accessedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"sdks\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_accessedAt\",\"type\":\"key\",\"attributes\":[\"accessedAt\"],\"lengths\":[],\"orders\":[]}]'),
(10,'webhooks','2022-10-14 00:58:47.416','2022-10-14 00:58:47.416','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','webhooks','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"url\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"httpUser\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"httpPass\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"security\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"events\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"signatureKey\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(11,'users','2022-10-14 00:58:47.430','2022-10-14 00:58:47.430','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','users','[{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"email\",\"type\":\"string\",\"size\":320,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"phone\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"password\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"hash\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"argon2\",\"format\":\"\"},{\"$id\":\"hashOptions\",\"type\":\"string\",\"size\":65535,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":{\"memoryCost\":2048,\"timeCost\":4,\"threads\":3},\"format\":\"\"},{\"$id\":\"passwordUpdate\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"prefs\",\"type\":\"string\",\"size\":65535,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":{},\"format\":\"\"},{\"$id\":\"registration\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"emailVerification\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"phoneVerification\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"reset\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"sessions\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQuerySessions\"],\"default\":null,\"format\":\"\"},{\"$id\":\"tokens\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryTokens\"],\"default\":null,\"format\":\"\"},{\"$id\":\"memberships\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryMemberships\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[256],\"orders\":[\"ASC\"]},{\"$id\":\"_key_email\",\"type\":\"unique\",\"attributes\":[\"email\"],\"lengths\":[320],\"orders\":[\"ASC\"]},{\"$id\":\"_key_phone\",\"type\":\"unique\",\"attributes\":[\"phone\"],\"lengths\":[16],\"orders\":[\"ASC\"]},{\"$id\":\"_key_status\",\"type\":\"key\",\"attributes\":[\"status\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_passwordUpdate\",\"type\":\"key\",\"attributes\":[\"passwordUpdate\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_registration\",\"type\":\"key\",\"attributes\":[\"registration\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_emailVerification\",\"type\":\"key\",\"attributes\":[\"emailVerification\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_phoneVerification\",\"type\":\"key\",\"attributes\":[\"phoneVerification\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]}]'),
(12,'tokens','2022-10-14 00:58:47.439','2022-10-14 00:58:47.439','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','tokens','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"integer\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":512,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"expire\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"userAgent\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"ip\",\"type\":\"string\",\"size\":45,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(13,'sessions','2022-10-14 00:58:47.447','2022-10-14 00:58:47.447','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','sessions','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"provider\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerUid\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerAccessToken\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"providerAccessTokenExpiry\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"providerRefreshToken\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":512,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"expire\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"userAgent\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"ip\",\"type\":\"string\",\"size\":45,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"countryCode\",\"type\":\"string\",\"size\":2,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"osCode\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"osName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"osVersion\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientType\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientCode\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientVersion\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientEngine\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientEngineVersion\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deviceName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deviceBrand\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deviceModel\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_provider_providerUid\",\"type\":\"key\",\"attributes\":[\"provider\",\"providerUid\"],\"lengths\":[100,100],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(14,'teams','2022-10-14 00:58:47.460','2022-10-14 00:58:47.460','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','teams','[{\"$id\":\"name\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"total\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_total\",\"type\":\"key\",\"attributes\":[\"total\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(15,'memberships','2022-10-14 00:58:47.476','2022-10-14 00:58:47.476','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','memberships','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"teamInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"teamId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"roles\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"invited\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"joined\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"confirm\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_unique\",\"type\":\"unique\",\"attributes\":[\"teamInternalId\",\"userInternalId\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_team\",\"type\":\"key\",\"attributes\":[\"teamInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_userId\",\"type\":\"key\",\"attributes\":[\"userId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_teamId\",\"type\":\"key\",\"attributes\":[\"teamId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_invited\",\"type\":\"key\",\"attributes\":[\"invited\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_joined\",\"type\":\"key\",\"attributes\":[\"joined\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_confirm\",\"type\":\"key\",\"attributes\":[\"confirm\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(16,'functions','2022-10-14 00:58:47.493','2022-10-14 00:58:47.493','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','functions','[{\"$id\":\"execute\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"enabled\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"runtime\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deployment\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"vars\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryVariables\"],\"default\":null,\"format\":\"\"},{\"$id\":\"events\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"schedule\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"scheduleUpdatedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"schedulePrevious\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"scheduleNext\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"timeout\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[2048],\"orders\":[\"ASC\"]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[2048],\"orders\":[\"ASC\"]},{\"$id\":\"_key_enabled\",\"type\":\"key\",\"attributes\":[\"enabled\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_runtime\",\"type\":\"key\",\"attributes\":[\"runtime\"],\"lengths\":[2048],\"orders\":[\"ASC\"]},{\"$id\":\"_key_deployment\",\"type\":\"key\",\"attributes\":[\"deployment\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_schedule\",\"type\":\"key\",\"attributes\":[\"schedule\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_scheduleNext\",\"type\":\"key\",\"attributes\":[\"scheduleNext\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_schedulePrevious\",\"type\":\"key\",\"attributes\":[\"schedulePrevious\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_timeout\",\"type\":\"key\",\"attributes\":[\"timeout\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(17,'deployments','2022-10-14 00:58:47.508','2022-10-14 00:58:47.508','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','deployments','[{\"$id\":\"resourceId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"resourceType\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"buildId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"entrypoint\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"path\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"size\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"metadata\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksTotal\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksUploaded\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"activate\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":false,\"format\":\"\"}]','[{\"$id\":\"_key_resource\",\"type\":\"key\",\"attributes\":[\"resourceId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_resource_type\",\"type\":\"key\",\"attributes\":[\"resourceType\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_entrypoint\",\"type\":\"key\",\"attributes\":[\"entrypoint\"],\"lengths\":[2048],\"orders\":[\"ASC\"]},{\"$id\":\"_key_size\",\"type\":\"key\",\"attributes\":[\"size\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_buildId\",\"type\":\"key\",\"attributes\":[\"buildId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_activate\",\"type\":\"key\",\"attributes\":[\"activate\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(18,'builds','2022-10-14 00:58:47.516','2022-10-14 00:58:47.516','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','builds','[{\"$id\":\"startTime\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"endTime\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"duration\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deploymentId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"runtime\",\"type\":\"string\",\"size\":2048,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"processing\",\"format\":\"\"},{\"$id\":\"outputPath\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"stderr\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"stdout\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"sourceType\",\"type\":\"string\",\"size\":2048,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"local\",\"format\":\"\"},{\"$id\":\"source\",\"type\":\"string\",\"size\":2048,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"}]','[{\"$id\":\"_key_deployment\",\"type\":\"key\",\"attributes\":[\"deploymentId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(19,'executions','2022-10-14 00:58:47.531','2022-10-14 00:58:47.531','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','executions','[{\"$id\":\"functionId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deploymentId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"trigger\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"response\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"stderr\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"stdout\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"statusCode\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"duration\",\"type\":\"double\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_function\",\"type\":\"key\",\"attributes\":[\"functionId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_trigger\",\"type\":\"key\",\"attributes\":[\"trigger\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_status\",\"type\":\"key\",\"attributes\":[\"status\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_statusCode\",\"type\":\"key\",\"attributes\":[\"statusCode\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_duration\",\"type\":\"key\",\"attributes\":[\"duration\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(20,'certificates','2022-10-14 00:58:47.541','2022-10-14 00:58:47.541','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','certificates','[{\"$id\":\"domain\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"issueDate\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"renewDate\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"attempts\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"log\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"updated\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_domain\",\"type\":\"key\",\"attributes\":[\"domain\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(21,'buckets','2022-10-14 00:58:47.558','2022-10-14 00:58:47.558','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','buckets','[{\"$id\":\"enabled\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":128,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"fileSecurity\",\"type\":\"boolean\",\"size\":1,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"maximumFileSize\",\"type\":\"integer\",\"size\":8,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"allowedFileExtensions\",\"type\":\"string\",\"size\":64,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"compression\",\"type\":\"string\",\"size\":10,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"encryption\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"antivirus\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_fulltext_name\",\"type\":\"fulltext\",\"attributes\":[\"name\"],\"lengths\":[1024],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[2048],\"orders\":[\"ASC\"]},{\"$id\":\"_key_enabled\",\"type\":\"key\",\"attributes\":[\"enabled\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_fileSecurity\",\"type\":\"key\",\"attributes\":[\"fileSecurity\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_maximumFileSize\",\"type\":\"key\",\"attributes\":[\"maximumFileSize\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_encryption\",\"type\":\"key\",\"attributes\":[\"encryption\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_antivirus\",\"type\":\"key\",\"attributes\":[\"antivirus\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(22,'stats','2022-10-14 00:58:47.567','2022-10-14 00:58:47.567','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','stats','[{\"$id\":\"metric\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"value\",\"type\":\"integer\",\"size\":8,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"time\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"period\",\"type\":\"string\",\"size\":4,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"integer\",\"size\":1,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":0,\"format\":\"\"}]','[{\"$id\":\"_key_time\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]},{\"$id\":\"_key_period_time\",\"type\":\"key\",\"attributes\":[\"period\",\"time\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_metric_period_time\",\"type\":\"key\",\"attributes\":[\"metric\",\"period\",\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]}]'),
(23,'realtime','2022-10-14 00:58:47.574','2022-10-14 00:58:47.574','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','realtime','[{\"$id\":\"container\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"timestamp\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"value\",\"type\":\"string\",\"size\":16384,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_timestamp\",\"type\":\"key\",\"attributes\":[\"timestamp\"],\"lengths\":[],\"orders\":[\"DESC\"]}]'),
(24,'cache','2022-10-14 00:58:47.582','2022-10-14 00:58:47.582','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','cache','[{\"$id\":\"resource\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"accessedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"signature\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_accessedAt\",\"type\":\"key\",\"attributes\":[\"accessedAt\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_resource\",\"type\":\"key\",\"attributes\":[\"resource\"],\"lengths\":[],\"orders\":[]}]'),
(25,'variables','2022-10-14 00:58:47.594','2022-10-14 00:58:47.594','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','variables','[{\"$id\":\"functionInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"functionId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"value\",\"type\":\"string\",\"size\":8192,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_function\",\"type\":\"key\",\"attributes\":[\"functionInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_uniqueKey\",\"type\":\"unique\",\"attributes\":[\"functionInternalId\",\"key\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_key\",\"type\":\"key\",\"attributes\":[\"key\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]}]'),
(26,'database_1','2022-10-14 02:25:37.158','2022-10-14 02:25:37.158','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','database_1','[{\"$id\":\"databaseInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"databaseId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"enabled\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"documentSecurity\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"attributes\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryAttributes\"],\"default\":null,\"format\":\"\"},{\"$id\":\"indexes\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryIndexes\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[256],\"orders\":[\"ASC\"]},{\"$id\":\"_key_enabled\",\"type\":\"key\",\"attributes\":[\"enabled\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_documentSecurity\",\"type\":\"key\",\"attributes\":[\"documentSecurity\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(27,'database_1_collection_1','2022-10-14 02:25:46.483','2022-10-14 02:26:25.391','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','database_1_collection_1','[{\"$id\":\"name\",\"key\":\"name\",\"type\":\"string\",\"size\":30,\"required\":true,\"default\":null,\"signed\":true,\"array\":false,\"format\":\"\",\"formatOptions\":[],\"filters\":[]},{\"$id\":\"value\",\"key\":\"value\",\"type\":\"string\",\"size\":255,\"required\":true,\"default\":null,\"signed\":true,\"array\":false,\"format\":\"\",\"formatOptions\":[],\"filters\":[]},{\"$id\":\"desc\",\"key\":\"desc\",\"type\":\"string\",\"size\":255,\"required\":false,\"default\":null,\"signed\":true,\"array\":false,\"format\":\"\",\"formatOptions\":[],\"filters\":[]}]','[]'),
(28,'bucket_1','2022-10-14 02:28:05.415','2022-10-14 02:28:05.415','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','bucket_1','[{\"$id\":\"bucketId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"path\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"signature\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"mimeType\",\"type\":\"string\",\"size\":127,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"metadata\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":null,\"format\":\"\"},{\"$id\":\"sizeOriginal\",\"type\":\"integer\",\"size\":8,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"sizeActual\",\"type\":\"integer\",\"size\":8,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"algorithm\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"comment\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLVersion\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLCipher\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLTag\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLIV\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksTotal\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksUploaded\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[2048],\"orders\":[\"ASC\"]},{\"$id\":\"_key_bucket\",\"type\":\"key\",\"attributes\":[\"bucketId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[2048],\"orders\":[\"ASC\"]},{\"$id\":\"_key_signature\",\"type\":\"key\",\"attributes\":[\"signature\"],\"lengths\":[2048],\"orders\":[\"ASC\"]},{\"$id\":\"_key_mimeType\",\"type\":\"key\",\"attributes\":[\"mimeType\"],\"lengths\":[127],\"orders\":[\"ASC\"]},{\"$id\":\"_key_sizeOriginal\",\"type\":\"key\",\"attributes\":[\"sizeOriginal\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_chunksTotal\",\"type\":\"key\",\"attributes\":[\"chunksTotal\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_chunksUploaded\",\"type\":\"key\",\"attributes\":[\"chunksUploaded\"],\"lengths\":[],\"orders\":[\"ASC\"]}]');
/*!40000 ALTER TABLE `_1__metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1__metadata_perms`
--

DROP TABLE IF EXISTS `_1__metadata_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1__metadata_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1__metadata_perms`
--

LOCK TABLES `_1__metadata_perms` WRITE;
/*!40000 ALTER TABLE `_1__metadata_perms` DISABLE KEYS */;
INSERT INTO `_1__metadata_perms` VALUES
(5,'create','any','abuse'),
(8,'delete','any','abuse'),
(6,'read','any','abuse'),
(7,'update','any','abuse'),
(13,'create','any','attributes'),
(16,'delete','any','attributes'),
(14,'read','any','attributes'),
(15,'update','any','attributes'),
(1,'create','any','audit'),
(4,'delete','any','audit'),
(2,'read','any','audit'),
(3,'update','any','audit'),
(81,'create','any','buckets'),
(84,'delete','any','buckets'),
(82,'read','any','buckets'),
(83,'update','any','buckets'),
(109,'create','any','bucket_1'),
(112,'delete','any','bucket_1'),
(110,'read','any','bucket_1'),
(111,'update','any','bucket_1'),
(69,'create','any','builds'),
(72,'delete','any','builds'),
(70,'read','any','builds'),
(71,'update','any','builds'),
(93,'create','any','cache'),
(96,'delete','any','cache'),
(94,'read','any','cache'),
(95,'update','any','cache'),
(77,'create','any','certificates'),
(80,'delete','any','certificates'),
(78,'read','any','certificates'),
(79,'update','any','certificates'),
(9,'create','any','databases'),
(12,'delete','any','databases'),
(10,'read','any','databases'),
(11,'update','any','databases'),
(101,'create','any','database_1'),
(104,'delete','any','database_1'),
(102,'read','any','database_1'),
(103,'update','any','database_1'),
(105,'create','any','database_1_collection_1'),
(108,'delete','any','database_1_collection_1'),
(106,'read','any','database_1_collection_1'),
(107,'update','any','database_1_collection_1'),
(65,'create','any','deployments'),
(68,'delete','any','deployments'),
(66,'read','any','deployments'),
(67,'update','any','deployments'),
(29,'create','any','domains'),
(32,'delete','any','domains'),
(30,'read','any','domains'),
(31,'update','any','domains'),
(73,'create','any','executions'),
(76,'delete','any','executions'),
(74,'read','any','executions'),
(75,'update','any','executions'),
(61,'create','any','functions'),
(64,'delete','any','functions'),
(62,'read','any','functions'),
(63,'update','any','functions'),
(17,'create','any','indexes'),
(20,'delete','any','indexes'),
(18,'read','any','indexes'),
(19,'update','any','indexes'),
(33,'create','any','keys'),
(36,'delete','any','keys'),
(34,'read','any','keys'),
(35,'update','any','keys'),
(57,'create','any','memberships'),
(60,'delete','any','memberships'),
(58,'read','any','memberships'),
(59,'update','any','memberships'),
(25,'create','any','platforms'),
(28,'delete','any','platforms'),
(26,'read','any','platforms'),
(27,'update','any','platforms'),
(21,'create','any','projects'),
(24,'delete','any','projects'),
(22,'read','any','projects'),
(23,'update','any','projects'),
(89,'create','any','realtime'),
(92,'delete','any','realtime'),
(90,'read','any','realtime'),
(91,'update','any','realtime'),
(49,'create','any','sessions'),
(52,'delete','any','sessions'),
(50,'read','any','sessions'),
(51,'update','any','sessions'),
(85,'create','any','stats'),
(88,'delete','any','stats'),
(86,'read','any','stats'),
(87,'update','any','stats'),
(53,'create','any','teams'),
(56,'delete','any','teams'),
(54,'read','any','teams'),
(55,'update','any','teams'),
(45,'create','any','tokens'),
(48,'delete','any','tokens'),
(46,'read','any','tokens'),
(47,'update','any','tokens'),
(41,'create','any','users'),
(44,'delete','any','users'),
(42,'read','any','users'),
(43,'update','any','users'),
(97,'create','any','variables'),
(100,'delete','any','variables'),
(98,'read','any','variables'),
(99,'update','any','variables'),
(37,'create','any','webhooks'),
(40,'delete','any','webhooks'),
(38,'read','any','webhooks'),
(39,'update','any','webhooks');
/*!40000 ALTER TABLE `_1__metadata_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_abuse`
--

DROP TABLE IF EXISTS `_1_abuse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_abuse` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `count` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  UNIQUE KEY `unique1` (`key`,`time`),
  KEY `index2` (`time`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_abuse`
--

LOCK TABLES `_1_abuse` WRITE;
/*!40000 ALTER TABLE `_1_abuse` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_abuse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_abuse_perms`
--

DROP TABLE IF EXISTS `_1_abuse_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_abuse_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_abuse_perms`
--

LOCK TABLES `_1_abuse_perms` WRITE;
/*!40000 ALTER TABLE `_1_abuse_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_abuse_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_attributes`
--

DROP TABLE IF EXISTS `_1_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_attributes` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `databaseInternalId` varchar(255) DEFAULT NULL,
  `databaseId` varchar(255) DEFAULT NULL,
  `collectionInternalId` varchar(255) DEFAULT NULL,
  `collectionId` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `type` varchar(256) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `default` text DEFAULT NULL,
  `signed` tinyint(1) DEFAULT NULL,
  `array` tinyint(1) DEFAULT NULL,
  `format` varchar(64) DEFAULT NULL,
  `formatOptions` text DEFAULT NULL,
  `filters` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_db_collection` (`databaseInternalId`,`collectionInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_attributes`
--

LOCK TABLES `_1_attributes` WRITE;
/*!40000 ALTER TABLE `_1_attributes` DISABLE KEYS */;
INSERT INTO `_1_attributes` VALUES
(1,'1_1_name','2022-10-14 02:26:10.160','2022-10-14 02:26:10.211','[]','1','6348c8a122da8b9b7458','1','6348c8aa72a36c3985b2','name','string','available',30,1,NULL,1,0,'','[]','[]'),
(2,'1_1_value','2022-10-14 02:26:19.102','2022-10-14 02:26:19.158','[]','1','6348c8a122da8b9b7458','1','6348c8aa72a36c3985b2','value','string','available',255,1,NULL,1,0,'','[]','[]'),
(3,'1_1_desc','2022-10-14 02:26:25.278','2022-10-14 02:26:25.393','[]','1','6348c8a122da8b9b7458','1','6348c8aa72a36c3985b2','desc','string','available',255,0,NULL,1,0,'','[]','[]');
/*!40000 ALTER TABLE `_1_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_attributes_perms`
--

DROP TABLE IF EXISTS `_1_attributes_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_attributes_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_attributes_perms`
--

LOCK TABLES `_1_attributes_perms` WRITE;
/*!40000 ALTER TABLE `_1_attributes_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_attributes_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_audit`
--

DROP TABLE IF EXISTS `_1_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_audit` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `index2` (`event`),
  KEY `index4` (`userId`,`event`),
  KEY `index5` (`resource`,`event`),
  KEY `index-time` (`time`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_audit`
--

LOCK TABLES `_1_audit` WRITE;
/*!40000 ALTER TABLE `_1_audit` DISABLE KEYS */;
INSERT INTO `_1_audit` VALUES
(1,'6348b4535e7dfe8d5051','2022-10-14 00:58:59.387','2022-10-14 00:58:59.387','[]','6348b3f3c9b90289424c','function.create','function/63483ec2832951780cf7','AppwriteCLI/1.1.1 (Windows_NT Windows 10 Pro; x64)','192.168.126.203','','2022-10-14 00:58:59.386','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"63483ec2832951780cf7\",\"$createdAt\":\"2022-10-14T00:58:59.353+00:00\",\"$updatedAt\":\"2022-10-14T00:58:59.353+00:00\",\"execute\":[],\"name\":\"hello_node\",\"enabled\":true,\"runtime\":\"node-18.0\",\"deployment\":\"\",\"vars\":[],\"events\":[],\"schedule\":\"\",\"scheduleNext\":\"\",\"schedulePrevious\":\"\",\"timeout\":15}}'),
(2,'6348b4545f9fb193c63c','2022-10-14 00:59:00.391','2022-10-14 00:59:00.391','[]','6348b3f3c9b90289424c','deployment.create','function/63483ec2832951780cf7','AppwriteCLI/1.1.1 (Windows_NT Windows 10 Pro; x64)','192.168.217.199','','2022-10-14 00:59:00.391','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"6348b4540ffd297771ca\",\"$createdAt\":\"2022-10-14T00:59:00.067+00:00\",\"$updatedAt\":\"2022-10-14T00:59:00.067+00:00\",\"resourceId\":\"63483ec2832951780cf7\",\"resourceType\":\"functions\",\"entrypoint\":\"src\\/index.js\",\"size\":3006,\"buildId\":\"\",\"activate\":true,\"status\":\"\",\"buildStdout\":\"\",\"buildStderr\":\"\"}}'),
(3,'6348b45560ef28c79e4b','2022-10-14 00:59:01.397','2022-10-14 00:59:01.397','[]','6348b3f3c9b90289424c','function.create','function/63483ecfd7ed4d61e1f2','AppwriteCLI/1.1.1 (Windows_NT Windows 10 Pro; x64)','192.168.203.135','','2022-10-14 00:59:01.396','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"63483ecfd7ed4d61e1f2\",\"$createdAt\":\"2022-10-14T00:59:01.304+00:00\",\"$updatedAt\":\"2022-10-14T00:59:01.304+00:00\",\"execute\":[],\"name\":\"hello_python\",\"enabled\":true,\"runtime\":\"python-3.10\",\"deployment\":\"\",\"vars\":[],\"events\":[],\"schedule\":\"\",\"scheduleNext\":\"\",\"schedulePrevious\":\"\",\"timeout\":15}}'),
(4,'6348b45661f684d9b4ed','2022-10-14 00:59:02.401','2022-10-14 00:59:02.401','[]','6348b3f3c9b90289424c','deployment.create','function/63483ecfd7ed4d61e1f2','AppwriteCLI/1.1.1 (Windows_NT Windows 10 Pro; x64)','192.168.217.199','','2022-10-14 00:59:02.401','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"6348b45608273de14429\",\"$createdAt\":\"2022-10-14T00:59:02.035+00:00\",\"$updatedAt\":\"2022-10-14T00:59:02.035+00:00\",\"resourceId\":\"63483ecfd7ed4d61e1f2\",\"resourceType\":\"functions\",\"entrypoint\":\"src\\/index.py\",\"size\":2786,\"buildId\":\"\",\"activate\":true,\"status\":\"\",\"buildStdout\":\"\",\"buildStderr\":\"\"}}'),
(5,'6348b45762fa6584bd07','2022-10-14 00:59:03.405','2022-10-14 00:59:03.405','[]','6348b3f3c9b90289424c','function.create','function/63483eddbd1271748d75','AppwriteCLI/1.1.1 (Windows_NT Windows 10 Pro; x64)','192.168.203.135','','2022-10-14 00:59:03.405','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"63483eddbd1271748d75\",\"$createdAt\":\"2022-10-14T00:59:03.270+00:00\",\"$updatedAt\":\"2022-10-14T00:59:03.270+00:00\",\"execute\":[],\"name\":\"hello_dotnet\",\"enabled\":true,\"runtime\":\"dotnet-6.0\",\"deployment\":\"\",\"vars\":[],\"events\":[],\"schedule\":\"\",\"scheduleNext\":\"\",\"schedulePrevious\":\"\",\"timeout\":15}}'),
(6,'6348b4586427e5ec5ddc','2022-10-14 00:59:04.410','2022-10-14 00:59:04.410','[]','6348b3f3c9b90289424c','deployment.create','function/63483eddbd1271748d75','AppwriteCLI/1.1.1 (Windows_NT Windows 10 Pro; x64)','192.168.217.199','','2022-10-14 00:59:04.410','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"6348b458103ab2e8d87f\",\"$createdAt\":\"2022-10-14T00:59:04.067+00:00\",\"$updatedAt\":\"2022-10-14T00:59:04.067+00:00\",\"resourceId\":\"63483eddbd1271748d75\",\"resourceType\":\"functions\",\"entrypoint\":\"src\\/Index.cs\",\"size\":2922,\"buildId\":\"\",\"activate\":true,\"status\":\"\",\"buildStdout\":\"\",\"buildStderr\":\"\"}}'),
(7,'6348bea179ca8dc2adb6','2022-10-14 01:42:57.498','2022-10-14 01:42:57.498','[]','6348b3f3c9b90289424c','function.update','function/63483ecfd7ed4d61e1f2','AppwriteCLI/1.1.1 (Windows_NT Windows 10 Pro; x64)','192.168.203.135','','2022-10-14 01:42:57.498','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"63483ecfd7ed4d61e1f2\",\"$createdAt\":\"2022-10-14T00:59:01.304+00:00\",\"$updatedAt\":\"2022-10-14T01:42:57.292+00:00\",\"execute\":[],\"name\":\"hello_python\",\"enabled\":true,\"runtime\":\"python-3.10\",\"deployment\":\"6348b45608273de14429\",\"vars\":[],\"events\":[],\"schedule\":\"\",\"scheduleNext\":\"\",\"schedulePrevious\":\"\",\"timeout\":15}}'),
(8,'6348bea27aea782e5819','2022-10-14 01:42:58.503','2022-10-14 01:42:58.503','[]','6348b3f3c9b90289424c','deployment.create','function/63483ecfd7ed4d61e1f2','AppwriteCLI/1.1.1 (Windows_NT Windows 10 Pro; x64)','192.168.126.203','','2022-10-14 01:42:58.503','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"6348bea208e6aca51465\",\"$createdAt\":\"2022-10-14T01:42:58.041+00:00\",\"$updatedAt\":\"2022-10-14T01:42:58.041+00:00\",\"resourceId\":\"63483ecfd7ed4d61e1f2\",\"resourceType\":\"functions\",\"entrypoint\":\"src\\/index.py\",\"size\":3041,\"buildId\":\"\",\"activate\":true,\"status\":\"\",\"buildStdout\":\"\",\"buildStderr\":\"\"}}'),
(9,'6348bea37c55953f9542','2022-10-14 01:42:59.509','2022-10-14 01:42:59.509','[]','6348b3f3c9b90289424c','function.update','function/63483eddbd1271748d75','AppwriteCLI/1.1.1 (Windows_NT Windows 10 Pro; x64)','192.168.217.199','','2022-10-14 01:42:59.509','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"63483eddbd1271748d75\",\"$createdAt\":\"2022-10-14T00:59:03.270+00:00\",\"$updatedAt\":\"2022-10-14T01:42:59.250+00:00\",\"execute\":[],\"name\":\"hello_dotnet\",\"enabled\":true,\"runtime\":\"dotnet-6.0\",\"deployment\":\"6348b458103ab2e8d87f\",\"vars\":[],\"events\":[],\"schedule\":\"\",\"scheduleNext\":\"\",\"schedulePrevious\":\"\",\"timeout\":15}}'),
(10,'6348bea47d8ad6d23b60','2022-10-14 01:43:00.514','2022-10-14 01:43:00.514','[]','6348b3f3c9b90289424c','deployment.create','function/63483eddbd1271748d75','AppwriteCLI/1.1.1 (Windows_NT Windows 10 Pro; x64)','192.168.126.203','','2022-10-14 01:43:00.514','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"6348bea41cb01afabf38\",\"$createdAt\":\"2022-10-14T01:43:00.121+00:00\",\"$updatedAt\":\"2022-10-14T01:43:00.121+00:00\",\"resourceId\":\"63483eddbd1271748d75\",\"resourceType\":\"functions\",\"entrypoint\":\"src\\/Index.cs\",\"size\":2969,\"buildId\":\"\",\"activate\":true,\"status\":\"\",\"buildStdout\":\"\",\"buildStderr\":\"\"}}'),
(11,'6348c2a4daa51dfed021','2022-10-14 02:00:04.895','2022-10-14 02:00:04.895','[]','6348b3f3c9b90289424c','function.update','function/63483ecfd7ed4d61e1f2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','192.168.126.203','','2022-10-14 02:00:04.895','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"63483ecfd7ed4d61e1f2\",\"$createdAt\":\"2022-10-14T00:59:01.304+00:00\",\"$updatedAt\":\"2022-10-14T02:00:04.377+00:00\",\"execute\":[],\"name\":\"hello_python\",\"enabled\":true,\"runtime\":\"python-3.10\",\"deployment\":\"6348bea208e6aca51465\",\"vars\":[],\"events\":[],\"schedule\":\"*\\/5 * * * *\",\"scheduleNext\":\"2022-10-14T02:05:00.000+00:00\",\"schedulePrevious\":\"\",\"timeout\":15}}'),
(12,'6348c83e6839362b1898','2022-10-14 02:23:58.426','2022-10-14 02:23:58.426','[]','6348b3f3c9b90289424c','function.update','function/63483ecfd7ed4d61e1f2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','192.168.126.203','','2022-10-14 02:23:58.426','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"63483ecfd7ed4d61e1f2\",\"$createdAt\":\"2022-10-14T00:59:01.304+00:00\",\"$updatedAt\":\"2022-10-14T02:23:57.990+00:00\",\"execute\":[],\"name\":\"hello_python\",\"enabled\":true,\"runtime\":\"python-3.10\",\"deployment\":\"6348bea208e6aca51465\",\"vars\":[],\"events\":[],\"schedule\":\"*\\/30 * * * *\",\"scheduleNext\":\"2022-10-14T02:30:00.000+00:00\",\"schedulePrevious\":\"2022-10-14T02:20:00.138+00:00\",\"timeout\":15}}'),
(13,'6348c8a170b5fd4dbe03','2022-10-14 02:25:37.461','2022-10-14 02:25:37.461','[]','6348b3f3c9b90289424c','database.create','database/6348c8a122da8b9b7458','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','192.168.126.203','','2022-10-14 02:25:37.461','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"6348c8a122da8b9b7458\",\"name\":\"AdminCore\",\"$createdAt\":\"2022-10-14T02:25:37.142+00:00\",\"$updatedAt\":\"2022-10-14T02:25:37.142+00:00\"}}'),
(14,'6348c8ab7266143df1cd','2022-10-14 02:25:47.468','2022-10-14 02:25:47.468','[]','6348b3f3c9b90289424c','collection.create','database/6348c8a122da8b9b7458/collection/6348c8aa72a36c3985b2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','192.168.126.203','','2022-10-14 02:25:47.468','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"6348c8aa72a36c3985b2\",\"$createdAt\":\"2022-10-14T02:25:46.469+00:00\",\"$updatedAt\":\"2022-10-14T02:25:46.469+00:00\",\"$permissions\":[],\"databaseId\":\"6348c8a122da8b9b7458\",\"name\":\"sysconfig\",\"enabled\":true,\"documentSecurity\":false,\"attributes\":[],\"indexes\":[]}}'),
(15,'6348c8c2752b19b08d9a','2022-10-14 02:26:10.479','2022-10-14 02:26:10.479','[]','6348b3f3c9b90289424c','attribute.create','database/6348c8a122da8b9b7458/collection/6348c8aa72a36c3985b2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','192.168.126.203','','2022-10-14 02:26:10.479','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"key\":\"name\",\"type\":\"string\",\"status\":\"processing\",\"required\":true,\"array\":false,\"size\":30,\"default\":null}}'),
(16,'6348c8cb76de0c84c459','2022-10-14 02:26:19.486','2022-10-14 02:26:19.486','[]','6348b3f3c9b90289424c','attribute.create','database/6348c8a122da8b9b7458/collection/6348c8aa72a36c3985b2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','192.168.126.203','','2022-10-14 02:26:19.486','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"key\":\"value\",\"type\":\"string\",\"status\":\"processing\",\"required\":true,\"array\":false,\"size\":255,\"default\":null}}'),
(17,'6348c8d17826a3302f9e','2022-10-14 02:26:25.492','2022-10-14 02:26:25.492','[]','6348b3f3c9b90289424c','attribute.create','database/6348c8a122da8b9b7458/collection/6348c8aa72a36c3985b2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','192.168.126.203','','2022-10-14 02:26:25.492','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"key\":\"desc\",\"type\":\"string\",\"status\":\"processing\",\"required\":false,\"array\":false,\"size\":255,\"default\":null}}'),
(18,'6348c8f37b9b5cb22c69','2022-10-14 02:26:59.506','2022-10-14 02:26:59.506','[]','6348b3f3c9b90289424c','document.create','database/6348c8a122da8b9b7458/collection/6348c8aa72a36c3985b2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','192.168.126.203','','2022-10-14 02:26:59.506','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"name\":\"accessToken\",\"value\":\"at.98nq1sdy7pwk6uf2b9y98y5abo7d56cd-4g3og615wx-022refu-r1elvtuib\",\"desc\":\"\\u8424\\u77f3\\u4e91\\u8bbf\\u95ee\\u4ee4\\u724c\",\"$id\":\"6348c8f28901042e1c9a\",\"$permissions\":[],\"$createdAt\":\"2022-10-14T02:26:58.561+00:00\",\"$updatedAt\":\"2022-10-14T02:26:58.561+00:00\",\"$collectionId\":\"6348c8aa72a36c3985b2\",\"$databaseId\":\"6348c8a122da8b9b7458\"}}'),
(19,'6348c9017d7051213345','2022-10-14 02:27:13.513','2022-10-14 02:27:13.513','[]','6348b3f3c9b90289424c','document.create','database/6348c8a122da8b9b7458/collection/6348c8aa72a36c3985b2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','192.168.126.203','','2022-10-14 02:27:13.513','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"name\":\"R5ID\",\"value\":\"28340\",\"desc\":\"R5\\u7f51\\u4efb\\u52a1ID\",\"$id\":\"6348c9012aab0ee042c9\",\"$permissions\":[],\"$createdAt\":\"2022-10-14T02:27:13.174+00:00\",\"$updatedAt\":\"2022-10-14T02:27:13.174+00:00\",\"$collectionId\":\"6348c8aa72a36c3985b2\",\"$databaseId\":\"6348c8a122da8b9b7458\"}}'),
(20,'6348c90d7f762b2e76f0','2022-10-14 02:27:25.522','2022-10-14 02:27:25.522','[]','6348b3f3c9b90289424c','document.create','database/6348c8a122da8b9b7458/collection/6348c8aa72a36c3985b2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','192.168.126.203','','2022-10-14 02:27:25.521','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"name\":\"YJSID\",\"value\":\"151763\",\"desc\":\"\\u733f\\u6025\\u9001\\u4efb\\u52a1ID\",\"$id\":\"6348c90d1d4642180a85\",\"$permissions\":[],\"$createdAt\":\"2022-10-14T02:27:25.120+00:00\",\"$updatedAt\":\"2022-10-14T02:27:25.120+00:00\",\"$collectionId\":\"6348c8aa72a36c3985b2\",\"$databaseId\":\"6348c8a122da8b9b7458\"}}'),
(21,'6348c919815de37d9eee','2022-10-14 02:27:37.529','2022-10-14 02:27:37.529','[]','6348b3f3c9b90289424c','document.create','database/6348c8a122da8b9b7458/collection/6348c8aa72a36c3985b2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','192.168.126.203','','2022-10-14 02:27:37.529','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"name\":\"CMID\",\"value\":\"33874\",\"desc\":\"\\u7801\\u5e02\\u4efb\\u52a1ID\",\"$id\":\"6348c9190a24edfa3cfb\",\"$permissions\":[],\"$createdAt\":\"2022-10-14T02:27:37.041+00:00\",\"$updatedAt\":\"2022-10-14T02:27:37.041+00:00\",\"$collectionId\":\"6348c8aa72a36c3985b2\",\"$databaseId\":\"6348c8a122da8b9b7458\"}}'),
(22,'6348c935845860f96419','2022-10-14 02:28:05.542','2022-10-14 02:28:05.542','[]','6348b3f3c9b90289424c','bucket.create','bucket/6348c93561722db95312','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','192.168.126.203','','2022-10-14 02:28:05.541','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"6348c93561722db95312\",\"$createdAt\":\"2022-10-14T02:28:05.399+00:00\",\"$updatedAt\":\"2022-10-14T02:28:05.399+00:00\",\"$permissions\":[],\"fileSecurity\":false,\"name\":\"images\",\"enabled\":true,\"maximumFileSize\":30000000,\"allowedFileExtensions\":[],\"compression\":\"none\",\"encryption\":true,\"antivirus\":true}}'),
(23,'6348c94a86f4bd8f98f1','2022-10-14 02:28:26.552','2022-10-14 02:28:26.552','[]','6348b3f3c9b90289424c','file.create','file/6348c94a5e722948a217','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','192.168.126.203','','2022-10-14 02:28:26.552','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"6348c94a5e722948a217\",\"bucketId\":\"6348c93561722db95312\",\"$createdAt\":\"2022-10-14T02:28:26.390+00:00\",\"$updatedAt\":\"2022-10-14T02:28:26.390+00:00\",\"$permissions\":[\"read(\\\"user:6348b3f3c9b90289424c\\\")\",\"update(\\\"user:6348b3f3c9b90289424c\\\")\",\"delete(\\\"user:6348b3f3c9b90289424c\\\")\"],\"name\":\"huodong.jpg\",\"signature\":\"bcf0ac7ac4102077be43cfd4cd1e0301\",\"mimeType\":\"image\\/jpeg\",\"sizeOriginal\":24444,\"chunksTotal\":1,\"chunksUploaded\":1}}'),
(24,'6348c97d8baf544b6ddc','2022-10-14 02:29:17.572','2022-10-14 02:29:17.572','[]','6348b3f3c9b90289424c','user.create','user/6348c97d735128ccf38a','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','192.168.126.203','','2022-10-14 02:29:17.572','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"6348c97d735128ccf38a\",\"$createdAt\":\"2022-10-14T02:29:17.548+00:00\",\"$updatedAt\":\"2022-10-14T02:29:17.548+00:00\",\"name\":\"user\",\"password\":\"$argon2id$v=19$m=65536,t=4,p=3$R01INzRIeUxLdTNxY2NtaQ$10yNhWi1t5G6drBCkBcZr6wiP3WDNni3w+LM8CpmiAA\",\"hash\":\"argon2\",\"hashOptions\":{\"memoryCost\":2048,\"timeCost\":4,\"threads\":3},\"registration\":\"2022-10-14T02:29:17.548+00:00\",\"status\":true,\"passwordUpdate\":\"2022-10-14T02:29:17.548+00:00\",\"email\":\"user@qq.com\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"prefs\":[]}}'),
(25,'6348c9dc9416813c4f15','2022-10-14 02:30:52.606','2022-10-14 02:30:52.606','[]','6348b3f3c9b90289424c','user.create','user/6348c9db84936ef2e242','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','192.168.126.203','','2022-10-14 02:30:52.606','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"admin\",\"data\":{\"$id\":\"6348c9db84936ef2e242\",\"$createdAt\":\"2022-10-14T02:30:51.619+00:00\",\"$updatedAt\":\"2022-10-14T02:30:51.619+00:00\",\"name\":\"test\",\"password\":\"$argon2id$v=19$m=65536,t=4,p=3$LmJWcW9GT0o0cFZEWndVMQ$XJoE4NxJBOYYnaFprd7RgCy9aA9ymAKjQFxiLcyA\\/u8\",\"hash\":\"argon2\",\"hashOptions\":{\"memoryCost\":2048,\"timeCost\":4,\"threads\":3},\"registration\":\"2022-10-14T02:30:51.618+00:00\",\"status\":true,\"passwordUpdate\":\"2022-10-14T02:30:51.618+00:00\",\"email\":\"test@qa.com\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"prefs\":[]}}');
/*!40000 ALTER TABLE `_1_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_audit_perms`
--

DROP TABLE IF EXISTS `_1_audit_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_audit_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_audit_perms`
--

LOCK TABLES `_1_audit_perms` WRITE;
/*!40000 ALTER TABLE `_1_audit_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_audit_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_bucket_1`
--

DROP TABLE IF EXISTS `_1_bucket_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_bucket_1` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `bucketId` varchar(255) DEFAULT NULL,
  `name` varchar(2048) DEFAULT NULL,
  `path` varchar(2048) DEFAULT NULL,
  `signature` varchar(2048) DEFAULT NULL,
  `mimeType` varchar(127) DEFAULT NULL,
  `metadata` text DEFAULT NULL,
  `sizeOriginal` bigint(20) unsigned DEFAULT NULL,
  `sizeActual` bigint(20) unsigned DEFAULT NULL,
  `algorithm` varchar(255) DEFAULT NULL,
  `comment` varchar(2048) DEFAULT NULL,
  `openSSLVersion` varchar(64) DEFAULT NULL,
  `openSSLCipher` varchar(64) DEFAULT NULL,
  `openSSLTag` varchar(2048) DEFAULT NULL,
  `openSSLIV` varchar(2048) DEFAULT NULL,
  `chunksTotal` int(10) unsigned DEFAULT NULL,
  `chunksUploaded` int(10) unsigned DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_bucket` (`bucketId`),
  KEY `_key_name` (`name`(768)),
  KEY `_key_signature` (`signature`(768)),
  KEY `_key_mimeType` (`mimeType`),
  KEY `_key_sizeOriginal` (`sizeOriginal`),
  KEY `_key_chunksTotal` (`chunksTotal`),
  KEY `_key_chunksUploaded` (`chunksUploaded`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_bucket_1`
--

LOCK TABLES `_1_bucket_1` WRITE;
/*!40000 ALTER TABLE `_1_bucket_1` DISABLE KEYS */;
INSERT INTO `_1_bucket_1` VALUES
(1,'6348c94a5e722948a217','2022-10-14 02:28:26.390','2022-10-14 02:28:26.390','[\"read(\\\"user:6348b3f3c9b90289424c\\\")\",\"update(\\\"user:6348b3f3c9b90289424c\\\")\",\"delete(\\\"user:6348b3f3c9b90289424c\\\")\"]','6348c93561722db95312','huodong.jpg','/storage/uploads/app-6348b44744584cc229da/6348c93561722db95312/6348c94a5e722948a217.jpg','bcf0ac7ac4102077be43cfd4cd1e0301','image/jpeg','{\"content_type\":\"image\\/jpeg\"}',24444,32592,'none','','1','aes-128-gcm','08dd0a60a255929159a12146a34c2d28','036ca4f393ba7feca2e399ac',1,1,'6348c94a5e722948a217 huodong.jpg');
/*!40000 ALTER TABLE `_1_bucket_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_bucket_1_perms`
--

DROP TABLE IF EXISTS `_1_bucket_1_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_bucket_1_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_bucket_1_perms`
--

LOCK TABLES `_1_bucket_1_perms` WRITE;
/*!40000 ALTER TABLE `_1_bucket_1_perms` DISABLE KEYS */;
INSERT INTO `_1_bucket_1_perms` VALUES
(3,'delete','user:6348b3f3c9b90289424c','6348c94a5e722948a217'),
(1,'read','user:6348b3f3c9b90289424c','6348c94a5e722948a217'),
(2,'update','user:6348b3f3c9b90289424c','6348c94a5e722948a217');
/*!40000 ALTER TABLE `_1_bucket_1_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_buckets`
--

DROP TABLE IF EXISTS `_1_buckets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_buckets` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `fileSecurity` tinyint(1) DEFAULT NULL,
  `maximumFileSize` bigint(20) unsigned DEFAULT NULL,
  `allowedFileExtensions` longtext DEFAULT NULL,
  `compression` varchar(10) DEFAULT NULL,
  `encryption` tinyint(1) DEFAULT NULL,
  `antivirus` tinyint(1) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_enabled` (`enabled`),
  KEY `_key_name` (`name`),
  KEY `_key_fileSecurity` (`fileSecurity`),
  KEY `_key_maximumFileSize` (`maximumFileSize`),
  KEY `_key_encryption` (`encryption`),
  KEY `_key_antivirus` (`antivirus`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_name` (`name`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_buckets`
--

LOCK TABLES `_1_buckets` WRITE;
/*!40000 ALTER TABLE `_1_buckets` DISABLE KEYS */;
INSERT INTO `_1_buckets` VALUES
(1,'6348c93561722db95312','2022-10-14 02:28:05.399','2022-10-14 02:28:05.399','[]',1,'images',0,30000000,'[]','none',1,1,'6348c93561722db95312 images');
/*!40000 ALTER TABLE `_1_buckets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_buckets_perms`
--

DROP TABLE IF EXISTS `_1_buckets_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_buckets_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_buckets_perms`
--

LOCK TABLES `_1_buckets_perms` WRITE;
/*!40000 ALTER TABLE `_1_buckets_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_buckets_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_builds`
--

DROP TABLE IF EXISTS `_1_builds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_builds` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `startTime` datetime(3) DEFAULT NULL,
  `endTime` datetime(3) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `deploymentId` varchar(255) DEFAULT NULL,
  `runtime` varchar(2048) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL,
  `outputPath` varchar(2048) DEFAULT NULL,
  `stderr` mediumtext DEFAULT NULL,
  `stdout` mediumtext DEFAULT NULL,
  `sourceType` varchar(2048) DEFAULT NULL,
  `source` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_deployment` (`deploymentId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_builds`
--

LOCK TABLES `_1_builds` WRITE;
/*!40000 ALTER TABLE `_1_builds` DISABLE KEYS */;
INSERT INTO `_1_builds` VALUES
(1,'6348b4542173aaa8a867','2022-10-14 00:59:00.137','2022-10-14 00:59:02.752','[]','2022-10-14 00:59:00.137','2022-10-14 00:59:02.309',2,'6348b4540ffd297771ca','node-18.0','ready','/storage/builds/app-6348b44744584cc229da/6348b45649a93.gz','npm notice \nnpm notice New minor version of npm available! 8.6.0 -> 8.19.2\nnpm notice Changelog: <https://github.com/npm/cli/releases/tag/v8.19.2>\nnpm notice Run `npm install -g npm@8.19.2` to update!\nnpm notice \n','\nadded 9 packages, and audited 10 packages in 872ms\n\n1 package is looking for funding\n  run `npm fund` for details\n\nfound 0 vulnerabilities\n','Local','/storage/functions/app-6348b44744584cc229da/6348b4540ffd297771ca.gz'),
(2,'6348b456b9b6cc9c2b30','2022-10-14 00:59:02.760','2022-10-14 00:59:14.728','[]','2022-10-14 00:59:02.760','2022-10-14 00:59:13.529',11,'6348b45608273de14429','python-3.10','ready','/storage/builds/app-6348b44744584cc229da/6348b461715bc.gz','','Collecting appwrite\n  Downloading appwrite-1.1.0.tar.gz (13 kB)\n  Preparing metadata (setup.py): started\n  Preparing metadata (setup.py): finished with status \'done\'\nCollecting requests\n  Downloading requests-2.28.1-py3-none-any.whl (62 kB)\n     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 62.8/62.8 kB 6.7 MB/s eta 0:00:00\nCollecting certifi>=2017.4.17\n  Downloading certifi-2022.9.24-py3-none-any.whl (161 kB)\n     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 161.1/161.1 kB 19.3 MB/s eta 0:00:00\nCollecting charset-normalizer<3,>=2\n  Downloading charset_normalizer-2.1.1-py3-none-any.whl (39 kB)\nCollecting urllib3<1.27,>=1.21.1\n  Downloading urllib3-1.26.12-py2.py3-none-any.whl (140 kB)\n     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 140.4/140.4 kB 150.0 MB/s eta 0:00:00\nCollecting idna<4,>=2.5\n  Downloading idna-3.4-py3-none-any.whl (61 kB)\n     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 61.5/61.5 kB 147.0 MB/s eta 0:00:00\nUsing legacy \'setup.py install\' for appwrite, since package \'wheel\' is not installed.\nInstalling collected packages: urllib3, idna, charset-normalizer, certifi, requests, appwrite\n  Running setup.py install for appwrite: started\n  Running setup.py install for appwrite: finished with status \'done\'\nSuccessfully installed appwrite-1.1.0 certifi-2022.9.24 charset-normalizer-2.1.1 idna-3.4 requests-2.28.1 urllib3-1.26.12\nCollecting Flask==2.0.1\n  Downloading Flask-2.0.1-py3-none-any.whl (94 kB)\n     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 94.8/94.8 kB 8.6 MB/s eta 0:00:00\nCollecting Waitress==2.0.0\n  Downloading waitress-2.0.0-py3-none-any.whl (56 kB)\n     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 56.5/56.5 kB 131.2 MB/s eta 0:00:00\nCollecting click>=7.1.2\n  Downloading click-8.1.3-py3-none-any.whl (96 kB)\n     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 96.6/96.6 kB 182.5 MB/s eta 0:00:00\nCollecting itsdangerous>=2.0\n  Downloading itsdangerous-2.1.2-py3-none-any.whl (15 kB)\nCollecting Werkzeug>=2.0\n  Downloading Werkzeug-2.2.2-py3-none-any.whl (232 kB)\n     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 232.7/232.7 kB 56.3 MB/s eta 0:00:00\nCollecting Jinja2>=3.0\n  Downloading Jinja2-3.1.2-py3-none-any.whl (133 kB)\n     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 133.1/133.1 kB 217.4 MB/s eta 0:00:00\nCollecting MarkupSafe>=2.0\n  Downloading MarkupSafe-2.1.1-cp310-cp310-musllinux_1_1_x86_64.whl (29 kB)\nInstalling collected packages: Waitress, MarkupSafe, itsdangerous, click, Werkzeug, Jinja2, Flask\nSuccessfully installed Flask-2.0.1 Jinja2-3.1.2 MarkupSafe-2.1.1 Waitress-2.0.0 Werkzeug-2.2.2 click-8.1.3 itsdangerous-2.1.2\n','Local','/storage/functions/app-6348b44744584cc229da/6348b45608273de14429.gz'),
(3,'6348b462b66005b5dcb7','2022-10-14 00:59:14.747','2022-10-14 00:59:22.105','[]','2022-10-14 00:59:14.747','2022-10-14 00:59:20.538',6,'6348b458103ab2e8d87f','dotnet-6.0','ready','/storage/builds/app-6348b44744584cc229da/6348b46882e5a.gz','','MSBuild version 17.3.0+92e077650 for .NET\n  Determining projects to restore...\n  Restored /usr/local/src/DotNetRuntime.csproj (in 113 ms).\n/usr/local/src/Wrapper.cs(20,36): warning CS1998: This async method lacks \'await\' operators and will run synchronously. Consider using the \'await\' operator to await non-blocking API calls, or \'await Task.Run(...)\' to do CPU-bound work on a background thread. [/usr/local/src/DotNetRuntime.csproj]\n  DotNetRuntime -> /usr/local/src/bin/Release/net6.0/DotNetRuntime.dll\n  DotNetRuntime -> /usr/local/src/bin/Release/net6.0/publish/\n','Local','/storage/functions/app-6348b44744584cc229da/6348b458103ab2e8d87f.gz'),
(4,'6348bea214046c6ba8cb','2022-10-14 01:42:58.082','2022-10-14 01:43:08.158','[]','2022-10-14 01:42:58.081','2022-10-14 01:43:07.735',9,'6348bea208e6aca51465','python-3.10','ready','/storage/builds/app-6348b44744584cc229da/6348beaba810e.gz','','Collecting appwrite\n  Downloading appwrite-1.1.0.tar.gz (13 kB)\n  Preparing metadata (setup.py): started\n  Preparing metadata (setup.py): finished with status \'done\'\nCollecting requests\n  Downloading requests-2.28.1-py3-none-any.whl (62 kB)\n     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 62.8/62.8 kB 6.9 MB/s eta 0:00:00\nCollecting urllib3<1.27,>=1.21.1\n  Downloading urllib3-1.26.12-py2.py3-none-any.whl (140 kB)\n     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 140.4/140.4 kB 20.3 MB/s eta 0:00:00\nCollecting charset-normalizer<3,>=2\n  Downloading charset_normalizer-2.1.1-py3-none-any.whl (39 kB)\nCollecting certifi>=2017.4.17\n  Downloading certifi-2022.9.24-py3-none-any.whl (161 kB)\n     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 161.1/161.1 kB 227.6 MB/s eta 0:00:00\nCollecting idna<4,>=2.5\n  Downloading idna-3.4-py3-none-any.whl (61 kB)\n     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 61.5/61.5 kB 202.8 MB/s eta 0:00:00\nUsing legacy \'setup.py install\' for appwrite, since package \'wheel\' is not installed.\nInstalling collected packages: urllib3, idna, charset-normalizer, certifi, requests, appwrite\n  Running setup.py install for appwrite: started\n  Running setup.py install for appwrite: finished with status \'done\'\nSuccessfully installed appwrite-1.1.0 certifi-2022.9.24 charset-normalizer-2.1.1 idna-3.4 requests-2.28.1 urllib3-1.26.12\nCollecting Flask==2.0.1\n  Downloading Flask-2.0.1-py3-none-any.whl (94 kB)\n     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 94.8/94.8 kB 6.1 MB/s eta 0:00:00\nCollecting Waitress==2.0.0\n  Downloading waitress-2.0.0-py3-none-any.whl (56 kB)\n     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 56.5/56.5 kB 199.7 MB/s eta 0:00:00\nCollecting itsdangerous>=2.0\n  Downloading itsdangerous-2.1.2-py3-none-any.whl (15 kB)\nCollecting click>=7.1.2\n  Downloading click-8.1.3-py3-none-any.whl (96 kB)\n     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 96.6/96.6 kB 150.2 MB/s eta 0:00:00\nCollecting Jinja2>=3.0\n  Downloading Jinja2-3.1.2-py3-none-any.whl (133 kB)\n     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 133.1/133.1 kB 217.4 MB/s eta 0:00:00\nCollecting Werkzeug>=2.0\n  Downloading Werkzeug-2.2.2-py3-none-any.whl (232 kB)\n     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 232.7/232.7 kB 184.5 MB/s eta 0:00:00\nCollecting MarkupSafe>=2.0\n  Downloading MarkupSafe-2.1.1-cp310-cp310-musllinux_1_1_x86_64.whl (29 kB)\nInstalling collected packages: Waitress, MarkupSafe, itsdangerous, click, Werkzeug, Jinja2, Flask\nSuccessfully installed Flask-2.0.1 Jinja2-3.1.2 MarkupSafe-2.1.1 Waitress-2.0.0 Werkzeug-2.2.2 click-8.1.3 itsdangerous-2.1.2\n','Local','/storage/functions/app-6348b44744584cc229da/6348bea208e6aca51465.gz'),
(5,'6348beac28c90b558652','2022-10-14 01:43:08.167','2022-10-14 01:43:13.039','[]','2022-10-14 01:43:08.167','2022-10-14 01:43:12.485',4,'6348bea41cb01afabf38','dotnet-6.0','ready','/storage/builds/app-6348b44744584cc229da/6348beb0762b0.gz','','MSBuild version 17.3.0+92e077650 for .NET\n  Determining projects to restore...\n  Restored /usr/local/src/DotNetRuntime.csproj (in 134 ms).\n/usr/local/src/Wrapper.cs(22,36): warning CS1998: This async method lacks \'await\' operators and will run synchronously. Consider using the \'await\' operator to await non-blocking API calls, or \'await Task.Run(...)\' to do CPU-bound work on a background thread. [/usr/local/src/DotNetRuntime.csproj]\n  DotNetRuntime -> /usr/local/src/bin/Release/net6.0/DotNetRuntime.dll\n  DotNetRuntime -> /usr/local/src/bin/Release/net6.0/publish/\n','Local','/storage/functions/app-6348b44744584cc229da/6348bea41cb01afabf38.gz');
/*!40000 ALTER TABLE `_1_builds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_builds_perms`
--

DROP TABLE IF EXISTS `_1_builds_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_builds_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_builds_perms`
--

LOCK TABLES `_1_builds_perms` WRITE;
/*!40000 ALTER TABLE `_1_builds_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_builds_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_cache`
--

DROP TABLE IF EXISTS `_1_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_cache` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `accessedAt` datetime(3) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_accessedAt` (`accessedAt`),
  KEY `_key_resource` (`resource`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_cache`
--

LOCK TABLES `_1_cache` WRITE;
/*!40000 ALTER TABLE `_1_cache` DISABLE KEYS */;
INSERT INTO `_1_cache` VALUES
(2,'8cf80595351d507b193ed8f2dddc1111','2022-10-14 02:28:29.332','2022-10-14 02:28:29.332','[]','file/6348c94a5e722948a217','2022-10-14 02:28:29.332','7f33fe25776bc13f8619a6bec993f46a');
/*!40000 ALTER TABLE `_1_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_cache_perms`
--

DROP TABLE IF EXISTS `_1_cache_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_cache_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_cache_perms`
--

LOCK TABLES `_1_cache_perms` WRITE;
/*!40000 ALTER TABLE `_1_cache_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_cache_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_certificates`
--

DROP TABLE IF EXISTS `_1_certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_certificates` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `issueDate` datetime(3) DEFAULT NULL,
  `renewDate` datetime(3) DEFAULT NULL,
  `attempts` int(11) DEFAULT NULL,
  `log` text DEFAULT NULL,
  `updated` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_domain` (`domain`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_certificates`
--

LOCK TABLES `_1_certificates` WRITE;
/*!40000 ALTER TABLE `_1_certificates` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_certificates_perms`
--

DROP TABLE IF EXISTS `_1_certificates_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_certificates_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_certificates_perms`
--

LOCK TABLES `_1_certificates_perms` WRITE;
/*!40000 ALTER TABLE `_1_certificates_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_certificates_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_database_1`
--

DROP TABLE IF EXISTS `_1_database_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_database_1` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `databaseInternalId` varchar(255) DEFAULT NULL,
  `databaseId` varchar(255) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `documentSecurity` tinyint(1) DEFAULT NULL,
  `attributes` mediumtext DEFAULT NULL,
  `indexes` mediumtext DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_key_enabled` (`enabled`),
  KEY `_key_documentSecurity` (`documentSecurity`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_database_1`
--

LOCK TABLES `_1_database_1` WRITE;
/*!40000 ALTER TABLE `_1_database_1` DISABLE KEYS */;
INSERT INTO `_1_database_1` VALUES
(1,'6348c8aa72a36c3985b2','2022-10-14 02:25:46.469','2022-10-14 02:25:46.469','[]','1','6348c8a122da8b9b7458','sysconfig',1,0,NULL,NULL,'6348c8aa72a36c3985b2 sysconfig');
/*!40000 ALTER TABLE `_1_database_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_database_1_collection_1`
--

DROP TABLE IF EXISTS `_1_database_1_collection_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_database_1_collection_1` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_database_1_collection_1`
--

LOCK TABLES `_1_database_1_collection_1` WRITE;
/*!40000 ALTER TABLE `_1_database_1_collection_1` DISABLE KEYS */;
INSERT INTO `_1_database_1_collection_1` VALUES
(1,'6348c8f28901042e1c9a','2022-10-14 02:26:58.561','2022-10-14 02:26:58.561','[]','accessToken','at.98nq1sdy7pwk6uf2b9y98y5abo7d56cd-4g3og615wx-022refu-r1elvtuib','萤石云访问令牌'),
(2,'6348c9012aab0ee042c9','2022-10-14 02:27:13.174','2022-10-14 02:27:13.174','[]','R5ID','28340','R5网任务ID'),
(3,'6348c90d1d4642180a85','2022-10-14 02:27:25.120','2022-10-14 02:27:25.120','[]','YJSID','151763','猿急送任务ID'),
(4,'6348c9190a24edfa3cfb','2022-10-14 02:27:37.041','2022-10-14 02:27:37.041','[]','CMID','33874','码市任务ID');
/*!40000 ALTER TABLE `_1_database_1_collection_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_database_1_collection_1_perms`
--

DROP TABLE IF EXISTS `_1_database_1_collection_1_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_database_1_collection_1_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_database_1_collection_1_perms`
--

LOCK TABLES `_1_database_1_collection_1_perms` WRITE;
/*!40000 ALTER TABLE `_1_database_1_collection_1_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_database_1_collection_1_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_database_1_perms`
--

DROP TABLE IF EXISTS `_1_database_1_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_database_1_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_database_1_perms`
--

LOCK TABLES `_1_database_1_perms` WRITE;
/*!40000 ALTER TABLE `_1_database_1_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_database_1_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_databases`
--

DROP TABLE IF EXISTS `_1_databases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_databases` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_databases`
--

LOCK TABLES `_1_databases` WRITE;
/*!40000 ALTER TABLE `_1_databases` DISABLE KEYS */;
INSERT INTO `_1_databases` VALUES
(1,'6348c8a122da8b9b7458','2022-10-14 02:25:37.142','2022-10-14 02:25:37.142','[]','AdminCore','6348c8a122da8b9b7458 AdminCore');
/*!40000 ALTER TABLE `_1_databases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_databases_perms`
--

DROP TABLE IF EXISTS `_1_databases_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_databases_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_databases_perms`
--

LOCK TABLES `_1_databases_perms` WRITE;
/*!40000 ALTER TABLE `_1_databases_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_databases_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_deployments`
--

DROP TABLE IF EXISTS `_1_deployments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_deployments` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `resourceId` varchar(255) DEFAULT NULL,
  `resourceType` varchar(255) DEFAULT NULL,
  `buildId` varchar(255) DEFAULT NULL,
  `entrypoint` varchar(2048) DEFAULT NULL,
  `path` varchar(2048) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` text DEFAULT NULL,
  `chunksTotal` int(10) unsigned DEFAULT NULL,
  `chunksUploaded` int(10) unsigned DEFAULT NULL,
  `search` text DEFAULT NULL,
  `activate` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_resource` (`resourceId`),
  KEY `_key_resource_type` (`resourceType`),
  KEY `_key_entrypoint` (`entrypoint`(768)),
  KEY `_key_size` (`size`),
  KEY `_key_buildId` (`buildId`),
  KEY `_key_activate` (`activate`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_deployments`
--

LOCK TABLES `_1_deployments` WRITE;
/*!40000 ALTER TABLE `_1_deployments` DISABLE KEYS */;
INSERT INTO `_1_deployments` VALUES
(1,'6348b4540ffd297771ca','2022-10-14 00:59:00.067','2022-10-14 00:59:00.138','[\"read(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','63483ec2832951780cf7','functions','6348b4542173aaa8a867','src/index.js','/storage/functions/app-6348b44744584cc229da/6348b4540ffd297771ca.gz',3006,'{\"content_type\":\"application\\/gzip\"}',NULL,NULL,'6348b4540ffd297771ca src/index.js',1),
(2,'6348b45608273de14429','2022-10-14 00:59:02.035','2022-10-14 01:42:58.038','[\"read(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','63483ecfd7ed4d61e1f2','functions','6348b456b9b6cc9c2b30','src/index.py','/storage/functions/app-6348b44744584cc229da/6348b45608273de14429.gz',2786,'{\"content_type\":\"application\\/gzip\"}',NULL,NULL,'6348b45608273de14429 src/index.py',0),
(3,'6348b458103ab2e8d87f','2022-10-14 00:59:04.067','2022-10-14 01:43:00.119','[\"read(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','63483eddbd1271748d75','functions','6348b462b66005b5dcb7','src/Index.cs','/storage/functions/app-6348b44744584cc229da/6348b458103ab2e8d87f.gz',2922,'{\"content_type\":\"application\\/gzip\"}',NULL,NULL,'6348b458103ab2e8d87f src/Index.cs',0),
(4,'6348bea208e6aca51465','2022-10-14 01:42:58.041','2022-10-14 01:42:58.083','[\"read(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','63483ecfd7ed4d61e1f2','functions','6348bea214046c6ba8cb','src/index.py','/storage/functions/app-6348b44744584cc229da/6348bea208e6aca51465.gz',3041,'{\"content_type\":\"application\\/gzip\"}',NULL,NULL,'6348bea208e6aca51465 src/index.py',1),
(5,'6348bea41cb01afabf38','2022-10-14 01:43:00.121','2022-10-14 01:43:08.168','[\"read(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','63483eddbd1271748d75','functions','6348beac28c90b558652','src/Index.cs','/storage/functions/app-6348b44744584cc229da/6348bea41cb01afabf38.gz',2969,'{\"content_type\":\"application\\/gzip\"}',NULL,NULL,'6348bea41cb01afabf38 src/Index.cs',1);
/*!40000 ALTER TABLE `_1_deployments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_deployments_perms`
--

DROP TABLE IF EXISTS `_1_deployments_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_deployments_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_deployments_perms`
--

LOCK TABLES `_1_deployments_perms` WRITE;
/*!40000 ALTER TABLE `_1_deployments_perms` DISABLE KEYS */;
INSERT INTO `_1_deployments_perms` VALUES
(3,'delete','any','6348b4540ffd297771ca'),
(1,'read','any','6348b4540ffd297771ca'),
(2,'update','any','6348b4540ffd297771ca'),
(6,'delete','any','6348b45608273de14429'),
(4,'read','any','6348b45608273de14429'),
(5,'update','any','6348b45608273de14429'),
(9,'delete','any','6348b458103ab2e8d87f'),
(7,'read','any','6348b458103ab2e8d87f'),
(8,'update','any','6348b458103ab2e8d87f'),
(12,'delete','any','6348bea208e6aca51465'),
(10,'read','any','6348bea208e6aca51465'),
(11,'update','any','6348bea208e6aca51465'),
(15,'delete','any','6348bea41cb01afabf38'),
(13,'read','any','6348bea41cb01afabf38'),
(14,'update','any','6348bea41cb01afabf38');
/*!40000 ALTER TABLE `_1_deployments_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_domains`
--

DROP TABLE IF EXISTS `_1_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_domains` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `updated` datetime(3) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `tld` varchar(255) DEFAULT NULL,
  `registerable` varchar(255) DEFAULT NULL,
  `verification` tinyint(1) DEFAULT NULL,
  `certificateId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_domains`
--

LOCK TABLES `_1_domains` WRITE;
/*!40000 ALTER TABLE `_1_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_domains_perms`
--

DROP TABLE IF EXISTS `_1_domains_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_domains_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_domains_perms`
--

LOCK TABLES `_1_domains_perms` WRITE;
/*!40000 ALTER TABLE `_1_domains_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_domains_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_executions`
--

DROP TABLE IF EXISTS `_1_executions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_executions` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `functionId` varchar(255) DEFAULT NULL,
  `deploymentId` varchar(255) DEFAULT NULL,
  `trigger` varchar(128) DEFAULT NULL,
  `status` varchar(128) DEFAULT NULL,
  `response` mediumtext DEFAULT NULL,
  `stderr` mediumtext DEFAULT NULL,
  `stdout` mediumtext DEFAULT NULL,
  `statusCode` int(11) DEFAULT NULL,
  `duration` float DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_function` (`functionId`),
  KEY `_key_trigger` (`trigger`),
  KEY `_key_status` (`status`),
  KEY `_key_statusCode` (`statusCode`),
  KEY `_key_duration` (`duration`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_executions`
--

LOCK TABLES `_1_executions` WRITE;
/*!40000 ALTER TABLE `_1_executions` DISABLE KEYS */;
INSERT INTO `_1_executions` VALUES
(1,'6348b468e05cda9ad556','2022-10-14 00:59:20.919','2022-10-14 00:59:24.821','[\"read(\\\"user:6348b3f3c9b90289424c\\\")\"]','63483ec2832951780cf7','6348b4540ffd297771ca','http','completed','{\"areDevelopersAwesome\":true}','','',200,0.0613549,'63483ec2832951780cf7 6348b468e05cda9ad556'),
(2,'6348b473c673df38458f','2022-10-14 00:59:31.813','2022-10-14 00:59:37.343','[\"read(\\\"user:6348b3f3c9b90289424c\\\")\"]','63483eddbd1271748d75','6348b458103ab2e8d87f','http','completed','{\"areDevelopersAwesome\":true}','','',200,0.149459,'63483eddbd1271748d75 6348b473c673df38458f'),
(3,'6348b4809c313af9d732','2022-10-14 00:59:44.640','2022-10-14 00:59:47.873','[\"read(\\\"user:6348b3f3c9b90289424c\\\")\"]','63483ecfd7ed4d61e1f2','6348b45608273de14429','http','completed','{\"areDevelopersAwesome\":true}','','',200,0.00278711,'63483ecfd7ed4d61e1f2 6348b4809c313af9d732'),
(4,'6348bec738893771f5a1','2022-10-14 01:43:35.231','2022-10-14 01:43:38.072','[\"read(\\\"user:6348b3f3c9b90289424c\\\")\"]','63483ecfd7ed4d61e1f2','6348bea208e6aca51465','http','completed','{\"message\":\"Hello Open Runtimes 👋\",\"todo\":{\"completed\":false,\"id\":1,\"title\":\"delectus aut autem\",\"userId\":1}}','','',200,0.138635,'63483ecfd7ed4d61e1f2 6348bec738893771f5a1'),
(5,'6348bed4c1b18765c172','2022-10-14 01:43:48.793','2022-10-14 01:43:51.554','[\"read(\\\"user:6348b3f3c9b90289424c\\\")\"]','63483eddbd1271748d75','6348bea41cb01afabf38','http','completed','{\"message\":\"Hello Open Runtimes 👋\",\"variables\":{\"APPWRITE_FUNCTION_ID\":\"63483eddbd1271748d75\",\"APPWRITE_FUNCTION_NAME\":\"hello_dotnet\",\"APPWRITE_FUNCTION_DEPLOYMENT\":\"6348bea41cb01afabf38\",\"APPWRITE_FUNCTION_TRIGGER\":\"http\",\"APPWRITE_FUNCTION_PROJECT_ID\":\"6348b44744584cc229da\",\"APPWRITE_FUNCTION_RUNTIME_NAME\":\".NET\",\"APPWRITE_FUNCTION_RUNTIME_VERSION\":\"6.0\",\"APPWRITE_FUNCTION_EVENT\":\"\",\"APPWRITE_FUNCTION_EVENT_DATA\":\"\",\"APPWRITE_FUNCTION_DATA\":\"\",\"APPWRITE_FUNCTION_USER_ID\":\"6348b3f3c9b90289424c\",\"APPWRITE_FUNCTION_JWT\":\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VySWQiOiI2MzQ4YjNmM2M5YjkwMjg5NDI0YyIsInNlc3Npb25JZCI6IjYzNDhiM2Y0MzdjZjE5NWRlYTY2IiwiZXhwIjoxNjY1NzEyNzI4fQ.KaZOYjIXSsT7ceLdJCm2N781PJGyNeNaNG3YnGdwUmM\"},\"headers\":[],\"payload\":\"\"}','','',200,0.117058,'63483eddbd1271748d75 6348bed4c1b18765c172'),
(6,'6348bee1e3f0c64b5047','2022-10-14 01:44:01.933','2022-10-14 01:44:04.605','[\"read(\\\"user:6348b3f3c9b90289424c\\\")\"]','63483ec2832951780cf7','6348b4540ffd297771ca','http','completed','{\"areDevelopersAwesome\":true}','','',200,0.044008,'63483ec2832951780cf7 6348bee1e3f0c64b5047'),
(7,'6348c3ccd519e0331f0f','2022-10-14 02:05:00.873','2022-10-14 02:05:00.955','[]','63483ecfd7ed4d61e1f2','6348bea208e6aca51465','schedule','completed','{\"message\":\"Hello Open Runtimes 👋\",\"todo\":{\"completed\":false,\"id\":1,\"title\":\"delectus aut autem\",\"userId\":1}}','','',200,0.074966,'63483ecfd7ed4d61e1f2 6348c3ccd519e0331f0f'),
(8,'6348c4f8ebae9fc27a44','2022-10-14 02:10:00.965','2022-10-14 02:10:01.035','[]','63483ecfd7ed4d61e1f2','6348bea208e6aca51465','schedule','completed','{\"message\":\"Hello Open Runtimes 👋\",\"todo\":{\"completed\":false,\"id\":1,\"title\":\"delectus aut autem\",\"userId\":1}}','','',200,0.064467,'63483ecfd7ed4d61e1f2 6348c4f8ebae9fc27a44'),
(9,'6348c6240def42c934a3','2022-10-14 02:15:00.057','2022-10-14 02:15:00.117','[]','63483ecfd7ed4d61e1f2','6348bea208e6aca51465','schedule','completed','{\"message\":\"Hello Open Runtimes 👋\",\"todo\":{\"completed\":false,\"id\":1,\"title\":\"delectus aut autem\",\"userId\":1}}','','',200,0.0542181,'63483ecfd7ed4d61e1f2 6348c6240def42c934a3'),
(10,'6348c75022629af9ffd8','2022-10-14 02:20:00.140','2022-10-14 02:20:00.203','[]','63483ecfd7ed4d61e1f2','6348bea208e6aca51465','schedule','completed','{\"message\":\"Hello Open Runtimes 👋\",\"todo\":{\"completed\":false,\"id\":1,\"title\":\"delectus aut autem\",\"userId\":1}}','','',200,0.0586231,'63483ecfd7ed4d61e1f2 6348c75022629af9ffd8'),
(11,'6348c9a844d7db3b54d2','2022-10-14 02:30:00.282','2022-10-14 02:30:00.347','[]','63483ecfd7ed4d61e1f2','6348bea208e6aca51465','schedule','completed','{\"message\":\"Hello Open Runtimes 👋\",\"todo\":{\"completed\":false,\"id\":1,\"title\":\"delectus aut autem\",\"userId\":1}}','','',200,0.0608549,'63483ecfd7ed4d61e1f2 6348c9a844d7db3b54d2'),
(12,'6348d0b0f37a1c396a29','2022-10-14 03:00:00.997','2022-10-14 03:00:03.755','[]','63483ecfd7ed4d61e1f2','6348bea208e6aca51465','schedule','completed','{\"message\":\"Hello Open Runtimes 👋\",\"todo\":{\"completed\":false,\"id\":1,\"title\":\"delectus aut autem\",\"userId\":1}}','','',200,0.140109,'63483ecfd7ed4d61e1f2 6348d0b0f37a1c396a29');
/*!40000 ALTER TABLE `_1_executions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_executions_perms`
--

DROP TABLE IF EXISTS `_1_executions_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_executions_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_executions_perms`
--

LOCK TABLES `_1_executions_perms` WRITE;
/*!40000 ALTER TABLE `_1_executions_perms` DISABLE KEYS */;
INSERT INTO `_1_executions_perms` VALUES
(1,'read','user:6348b3f3c9b90289424c','6348b468e05cda9ad556'),
(2,'read','user:6348b3f3c9b90289424c','6348b473c673df38458f'),
(3,'read','user:6348b3f3c9b90289424c','6348b4809c313af9d732'),
(4,'read','user:6348b3f3c9b90289424c','6348bec738893771f5a1'),
(5,'read','user:6348b3f3c9b90289424c','6348bed4c1b18765c172'),
(6,'read','user:6348b3f3c9b90289424c','6348bee1e3f0c64b5047');
/*!40000 ALTER TABLE `_1_executions_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_functions`
--

DROP TABLE IF EXISTS `_1_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_functions` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `execute` longtext DEFAULT NULL,
  `name` varchar(2048) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `runtime` varchar(2048) DEFAULT NULL,
  `deployment` varchar(255) DEFAULT NULL,
  `vars` text DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `schedule` varchar(128) DEFAULT NULL,
  `scheduleUpdatedAt` datetime(3) DEFAULT NULL,
  `schedulePrevious` datetime(3) DEFAULT NULL,
  `scheduleNext` datetime(3) DEFAULT NULL,
  `timeout` int(11) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_name` (`name`(768)),
  KEY `_key_enabled` (`enabled`),
  KEY `_key_runtime` (`runtime`(768)),
  KEY `_key_deployment` (`deployment`),
  KEY `_key_schedule` (`schedule`),
  KEY `_key_scheduleNext` (`scheduleNext`),
  KEY `_key_schedulePrevious` (`schedulePrevious`),
  KEY `_key_timeout` (`timeout`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_functions`
--

LOCK TABLES `_1_functions` WRITE;
/*!40000 ALTER TABLE `_1_functions` DISABLE KEYS */;
INSERT INTO `_1_functions` VALUES
(1,'63483ec2832951780cf7','2022-10-14 00:58:59.353','2022-10-14 00:59:02.749','[]','[]','hello_node',1,'node-18.0','6348b4540ffd297771ca',NULL,'[]','','2022-10-14 00:58:59.353',NULL,NULL,15,'63483ec2832951780cf7 hello_node node-18.0'),
(2,'63483ecfd7ed4d61e1f2','2022-10-14 00:59:01.304','2022-10-14 03:00:00.993','[]','[]','hello_python',1,'python-3.10','6348bea208e6aca51465',NULL,'[]','*/30 * * * *','2022-10-14 02:23:57.990','2022-10-14 03:00:00.993','2022-10-14 03:30:00.000',15,'63483ecfd7ed4d61e1f2 hello_python python-3.10'),
(3,'63483eddbd1271748d75','2022-10-14 00:59:03.270','2022-10-14 01:43:13.036','[]','[]','hello_dotnet',1,'dotnet-6.0','6348bea41cb01afabf38',NULL,'[]','','2022-10-14 01:42:59.250',NULL,NULL,15,'63483eddbd1271748d75 hello_dotnet dotnet-6.0');
/*!40000 ALTER TABLE `_1_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_functions_perms`
--

DROP TABLE IF EXISTS `_1_functions_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_functions_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_functions_perms`
--

LOCK TABLES `_1_functions_perms` WRITE;
/*!40000 ALTER TABLE `_1_functions_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_functions_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_indexes`
--

DROP TABLE IF EXISTS `_1_indexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_indexes` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `databaseInternalId` varchar(255) DEFAULT NULL,
  `databaseId` varchar(255) DEFAULT NULL,
  `collectionInternalId` varchar(255) DEFAULT NULL,
  `collectionId` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `attributes` longtext DEFAULT NULL,
  `lengths` longtext DEFAULT NULL,
  `orders` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_db_collection` (`databaseInternalId`,`collectionInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_indexes`
--

LOCK TABLES `_1_indexes` WRITE;
/*!40000 ALTER TABLE `_1_indexes` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_indexes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_indexes_perms`
--

DROP TABLE IF EXISTS `_1_indexes_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_indexes_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_indexes_perms`
--

LOCK TABLES `_1_indexes_perms` WRITE;
/*!40000 ALTER TABLE `_1_indexes_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_indexes_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_keys`
--

DROP TABLE IF EXISTS `_1_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_keys` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` longtext DEFAULT NULL,
  `secret` varchar(512) DEFAULT NULL,
  `expire` datetime(3) DEFAULT NULL,
  `accessedAt` datetime(3) DEFAULT NULL,
  `sdks` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_key_accessedAt` (`accessedAt`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_keys`
--

LOCK TABLES `_1_keys` WRITE;
/*!40000 ALTER TABLE `_1_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_keys_perms`
--

DROP TABLE IF EXISTS `_1_keys_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_keys_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_keys_perms`
--

LOCK TABLES `_1_keys_perms` WRITE;
/*!40000 ALTER TABLE `_1_keys_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_keys_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_memberships`
--

DROP TABLE IF EXISTS `_1_memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_memberships` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `teamInternalId` varchar(255) DEFAULT NULL,
  `teamId` varchar(255) DEFAULT NULL,
  `roles` longtext DEFAULT NULL,
  `invited` datetime(3) DEFAULT NULL,
  `joined` datetime(3) DEFAULT NULL,
  `confirm` tinyint(1) DEFAULT NULL,
  `secret` varchar(256) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  UNIQUE KEY `_key_unique` (`teamInternalId`,`userInternalId`),
  KEY `_key_user` (`userInternalId`),
  KEY `_key_team` (`teamInternalId`),
  KEY `_key_userId` (`userId`),
  KEY `_key_teamId` (`teamId`),
  KEY `_key_invited` (`invited`),
  KEY `_key_joined` (`joined`),
  KEY `_key_confirm` (`confirm`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_memberships`
--

LOCK TABLES `_1_memberships` WRITE;
/*!40000 ALTER TABLE `_1_memberships` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_memberships_perms`
--

DROP TABLE IF EXISTS `_1_memberships_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_memberships_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_memberships_perms`
--

LOCK TABLES `_1_memberships_perms` WRITE;
/*!40000 ALTER TABLE `_1_memberships_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_memberships_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_platforms`
--

DROP TABLE IF EXISTS `_1_platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_platforms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `store` varchar(256) DEFAULT NULL,
  `hostname` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_platforms`
--

LOCK TABLES `_1_platforms` WRITE;
/*!40000 ALTER TABLE `_1_platforms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_platforms_perms`
--

DROP TABLE IF EXISTS `_1_platforms_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_platforms_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_platforms_perms`
--

LOCK TABLES `_1_platforms_perms` WRITE;
/*!40000 ALTER TABLE `_1_platforms_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_platforms_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_projects`
--

DROP TABLE IF EXISTS `_1_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_projects` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `teamInternalId` varchar(255) DEFAULT NULL,
  `teamId` varchar(255) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `version` varchar(16) DEFAULT NULL,
  `legalName` varchar(256) DEFAULT NULL,
  `legalCountry` varchar(256) DEFAULT NULL,
  `legalState` varchar(256) DEFAULT NULL,
  `legalCity` varchar(256) DEFAULT NULL,
  `legalAddress` varchar(256) DEFAULT NULL,
  `legalTaxId` varchar(256) DEFAULT NULL,
  `services` text DEFAULT NULL,
  `auths` text DEFAULT NULL,
  `authProviders` text DEFAULT NULL,
  `platforms` text DEFAULT NULL,
  `webhooks` text DEFAULT NULL,
  `keys` text DEFAULT NULL,
  `domains` text DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_projects`
--

LOCK TABLES `_1_projects` WRITE;
/*!40000 ALTER TABLE `_1_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_projects_perms`
--

DROP TABLE IF EXISTS `_1_projects_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_projects_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_projects_perms`
--

LOCK TABLES `_1_projects_perms` WRITE;
/*!40000 ALTER TABLE `_1_projects_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_projects_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_realtime`
--

DROP TABLE IF EXISTS `_1_realtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_realtime` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `container` varchar(255) DEFAULT NULL,
  `timestamp` datetime(3) DEFAULT NULL,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_timestamp` (`timestamp`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_realtime`
--

LOCK TABLES `_1_realtime` WRITE;
/*!40000 ALTER TABLE `_1_realtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_realtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_realtime_perms`
--

DROP TABLE IF EXISTS `_1_realtime_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_realtime_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_realtime_perms`
--

LOCK TABLES `_1_realtime_perms` WRITE;
/*!40000 ALTER TABLE `_1_realtime_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_realtime_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_sessions`
--

DROP TABLE IF EXISTS `_1_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_sessions` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `provider` varchar(128) DEFAULT NULL,
  `providerUid` varchar(2048) DEFAULT NULL,
  `providerAccessToken` text DEFAULT NULL,
  `providerAccessTokenExpiry` datetime(3) DEFAULT NULL,
  `providerRefreshToken` text DEFAULT NULL,
  `secret` varchar(512) DEFAULT NULL,
  `expire` datetime(3) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `countryCode` varchar(2) DEFAULT NULL,
  `osCode` varchar(256) DEFAULT NULL,
  `osName` varchar(256) DEFAULT NULL,
  `osVersion` varchar(256) DEFAULT NULL,
  `clientType` varchar(256) DEFAULT NULL,
  `clientCode` varchar(256) DEFAULT NULL,
  `clientName` varchar(256) DEFAULT NULL,
  `clientVersion` varchar(256) DEFAULT NULL,
  `clientEngine` varchar(256) DEFAULT NULL,
  `clientEngineVersion` varchar(256) DEFAULT NULL,
  `deviceName` varchar(256) DEFAULT NULL,
  `deviceBrand` varchar(256) DEFAULT NULL,
  `deviceModel` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_provider_providerUid` (`provider`(100),`providerUid`(100)),
  KEY `_key_user` (`userInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_sessions`
--

LOCK TABLES `_1_sessions` WRITE;
/*!40000 ALTER TABLE `_1_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_sessions_perms`
--

DROP TABLE IF EXISTS `_1_sessions_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_sessions_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_sessions_perms`
--

LOCK TABLES `_1_sessions_perms` WRITE;
/*!40000 ALTER TABLE `_1_sessions_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_sessions_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_stats`
--

DROP TABLE IF EXISTS `_1_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_stats` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `metric` varchar(255) DEFAULT NULL,
  `value` bigint(20) unsigned DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `period` varchar(4) DEFAULT NULL,
  `type` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_time` (`time`),
  KEY `_key_period_time` (`period`,`time`),
  KEY `_key_metric_period_time` (`metric`,`period`,`time`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=1277 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_stats`
--

LOCK TABLES `_1_stats` WRITE;
/*!40000 ALTER TABLE `_1_stats` DISABLE KEYS */;
INSERT INTO `_1_stats` VALUES
(1,'4b889ab720b6fc92f5a6767599a644f1','2022-10-14 00:59:44.356','2022-10-14 00:59:44.356','[]','project.$all.network.bandwidth',0,'2022-10-13 00:30:00.000','30m',0),
(2,'49bfb8252b2bb73ad65a8c44fccc8271','2022-10-14 00:59:44.358','2022-10-14 00:59:44.358','[]','project.$all.network.bandwidth',0,'2022-10-13 01:00:00.000','30m',0),
(3,'7aa7603dd4f457274f24fc8c44364118','2022-10-14 00:59:44.360','2022-10-14 01:38:53.227','[]','project.$all.network.bandwidth',0,'2022-10-13 01:30:00.000','30m',0),
(4,'08ad49240495b269995904e64a1740d9','2022-10-14 00:59:44.362','2022-10-14 01:38:53.231','[]','project.$all.network.bandwidth',0,'2022-10-13 02:00:00.000','30m',0),
(5,'a7efd2ebfc4972aeb6839d2bb0686acc','2022-10-14 00:59:44.364','2022-10-14 02:53:04.878','[]','project.$all.network.bandwidth',0,'2022-10-13 02:30:00.000','30m',0),
(6,'84bd77190bb34d4e25bb917006b36aa0','2022-10-14 00:59:44.365','2022-10-14 02:53:04.880','[]','project.$all.network.bandwidth',0,'2022-10-13 03:00:00.000','30m',0),
(7,'ddcfac3c54c5dcc6bce8da94f07eea17','2022-10-14 00:59:44.367','2022-10-14 02:53:04.882','[]','project.$all.network.bandwidth',0,'2022-10-13 03:30:00.000','30m',0),
(8,'ed90a6e9370dee43c0be7f2d040a5c1e','2022-10-14 00:59:44.369','2022-10-14 02:53:04.886','[]','project.$all.network.bandwidth',0,'2022-10-13 04:00:00.000','30m',0),
(9,'7c0817689180ca7f53a6142f1bf8d1af','2022-10-14 00:59:44.370','2022-10-14 02:53:04.909','[]','project.$all.network.bandwidth',0,'2022-10-13 04:30:00.000','30m',0),
(10,'04281b99105be1a6328ff4d6a9f6ca49','2022-10-14 00:59:44.372','2022-10-14 02:53:04.912','[]','project.$all.network.bandwidth',0,'2022-10-13 05:00:00.000','30m',0),
(11,'0de8c943f18f937d296cd81752375d79','2022-10-14 00:59:44.373','2022-10-14 02:53:04.914','[]','project.$all.network.bandwidth',0,'2022-10-13 05:30:00.000','30m',0),
(12,'4b16f8ffc0b7a93c1fbf69f0ed6b12f1','2022-10-14 00:59:44.375','2022-10-14 02:53:04.917','[]','project.$all.network.bandwidth',0,'2022-10-13 06:00:00.000','30m',0),
(13,'9a06c2424d853d7db7d3d4c8399adbf4','2022-10-14 00:59:44.376','2022-10-14 02:53:04.920','[]','project.$all.network.bandwidth',0,'2022-10-13 06:30:00.000','30m',0),
(14,'9c67d698eb53cbfc86adc57e6f3ef825','2022-10-14 00:59:44.377','2022-10-14 02:53:04.923','[]','project.$all.network.bandwidth',0,'2022-10-13 07:00:00.000','30m',0),
(15,'0f8e4f1c740226808cf4054cfebdf64e','2022-10-14 00:59:44.379','2022-10-14 02:53:04.926','[]','project.$all.network.bandwidth',0,'2022-10-13 07:30:00.000','30m',0),
(16,'6aa17172242a5e6a767b41a4a0e588d7','2022-10-14 00:59:44.381','2022-10-14 02:53:04.929','[]','project.$all.network.bandwidth',0,'2022-10-13 08:00:00.000','30m',0),
(17,'379d8a9e539f08307aa528deade7ce08','2022-10-14 00:59:44.382','2022-10-14 02:53:04.932','[]','project.$all.network.bandwidth',0,'2022-10-13 08:30:00.000','30m',0),
(18,'6cd23254345a47fc3d7d24f35619d2f9','2022-10-14 00:59:44.384','2022-10-14 02:53:04.934','[]','project.$all.network.bandwidth',0,'2022-10-13 09:00:00.000','30m',0),
(19,'59aa38cc05895b3598264f5dec94588f','2022-10-14 00:59:44.385','2022-10-14 02:53:04.937','[]','project.$all.network.bandwidth',0,'2022-10-13 09:30:00.000','30m',0),
(20,'8896e3567619cf050fa95ae85d72bc41','2022-10-14 00:59:44.387','2022-10-14 02:53:04.940','[]','project.$all.network.bandwidth',0,'2022-10-13 10:00:00.000','30m',0),
(21,'eb6522e35e8e3cae14626721075d63cd','2022-10-14 00:59:44.388','2022-10-14 02:53:04.943','[]','project.$all.network.bandwidth',0,'2022-10-13 10:30:00.000','30m',0),
(22,'bfdecb8a2bc66714ff0a4d3fadbb770c','2022-10-14 00:59:44.390','2022-10-14 02:53:04.946','[]','project.$all.network.bandwidth',0,'2022-10-13 11:00:00.000','30m',0),
(23,'4f70111ad51a8441f0a8c7fa1fc8c72b','2022-10-14 00:59:44.391','2022-10-14 02:53:04.948','[]','project.$all.network.bandwidth',0,'2022-10-13 11:30:00.000','30m',0),
(24,'6dd26cfb9e29c583f95c6f2ed4616435','2022-10-14 00:59:44.393','2022-10-14 02:53:04.951','[]','project.$all.network.bandwidth',0,'2022-10-13 12:00:00.000','30m',0),
(25,'143ae1cb807d2474eff556e94991de8b','2022-10-14 00:59:44.394','2022-10-14 02:53:04.953','[]','project.$all.network.bandwidth',0,'2022-10-13 12:30:00.000','30m',0),
(26,'8e07f90fbc4867220514293d19e70d71','2022-10-14 00:59:44.396','2022-10-14 02:53:04.956','[]','project.$all.network.bandwidth',0,'2022-10-13 13:00:00.000','30m',0),
(27,'7177b6b91151a8c4c3e50c5ee193e02b','2022-10-14 00:59:44.397','2022-10-14 02:53:04.959','[]','project.$all.network.bandwidth',0,'2022-10-13 13:30:00.000','30m',0),
(28,'14327ff4d4da52f6b58920bff598104c','2022-10-14 00:59:44.399','2022-10-14 02:53:04.962','[]','project.$all.network.bandwidth',0,'2022-10-13 14:00:00.000','30m',0),
(29,'ca10c2903c28c0881a6ea61d8434391c','2022-10-14 00:59:44.400','2022-10-14 02:53:04.964','[]','project.$all.network.bandwidth',0,'2022-10-13 14:30:00.000','30m',0),
(30,'c70c995facb13e47a2e318d299358f97','2022-10-14 00:59:44.401','2022-10-14 02:53:04.967','[]','project.$all.network.bandwidth',0,'2022-10-13 15:00:00.000','30m',0),
(31,'cf68193bf16f5201a8288025ce2b5fb1','2022-10-14 00:59:44.403','2022-10-14 02:53:04.969','[]','project.$all.network.bandwidth',0,'2022-10-13 15:30:00.000','30m',0),
(32,'c1ec377f84589866acb9f64fde8b59a7','2022-10-14 00:59:44.404','2022-10-14 02:53:04.972','[]','project.$all.network.bandwidth',0,'2022-10-13 16:00:00.000','30m',0),
(33,'8b36459ed994bb08cd4e12576b69f311','2022-10-14 00:59:44.405','2022-10-14 02:53:04.974','[]','project.$all.network.bandwidth',0,'2022-10-13 16:30:00.000','30m',0),
(34,'139c060284334059eea9b4534857cbbc','2022-10-14 00:59:44.407','2022-10-14 02:53:04.976','[]','project.$all.network.bandwidth',0,'2022-10-13 17:00:00.000','30m',0),
(35,'c3ed8a62e0349f278244785ca2e37b2d','2022-10-14 00:59:44.408','2022-10-14 02:53:04.978','[]','project.$all.network.bandwidth',0,'2022-10-13 17:30:00.000','30m',0),
(36,'1c0272492c20964694932f7254664ec5','2022-10-14 00:59:44.410','2022-10-14 02:53:04.980','[]','project.$all.network.bandwidth',0,'2022-10-13 18:00:00.000','30m',0),
(37,'7fe0be66ea4c5fbcb0aea50515f1aa59','2022-10-14 00:59:44.412','2022-10-14 02:53:04.983','[]','project.$all.network.bandwidth',0,'2022-10-13 18:30:00.000','30m',0),
(38,'581ae9ddee6a0abf438c6a1faa1ebf4f','2022-10-14 00:59:44.413','2022-10-14 02:53:04.984','[]','project.$all.network.bandwidth',0,'2022-10-13 19:00:00.000','30m',0),
(39,'da7770fc8834c06f2127fd4b933490e7','2022-10-14 00:59:44.414','2022-10-14 02:53:04.986','[]','project.$all.network.bandwidth',0,'2022-10-13 19:30:00.000','30m',0),
(40,'8d1c5d22a74ae0b0e7ffa8eaf10c36ce','2022-10-14 00:59:44.416','2022-10-14 02:53:04.989','[]','project.$all.network.bandwidth',0,'2022-10-13 20:00:00.000','30m',0),
(41,'2cecc88a303b45bf91428d316a36c1cc','2022-10-14 00:59:44.417','2022-10-14 02:53:04.991','[]','project.$all.network.bandwidth',0,'2022-10-13 20:30:00.000','30m',0),
(42,'fab675f8b258c5fe803d4a04451d4c52','2022-10-14 00:59:44.419','2022-10-14 02:53:04.993','[]','project.$all.network.bandwidth',0,'2022-10-13 21:00:00.000','30m',0),
(43,'65b30510513c4e8a5d54c244662acc0b','2022-10-14 00:59:44.421','2022-10-14 02:53:04.995','[]','project.$all.network.bandwidth',0,'2022-10-13 21:30:00.000','30m',0),
(44,'87550bb9962edc5207b520bcc748bbc4','2022-10-14 00:59:44.423','2022-10-14 02:53:04.997','[]','project.$all.network.bandwidth',0,'2022-10-13 22:00:00.000','30m',0),
(45,'1a04d3a508fc5e0802c93eabd855a266','2022-10-14 00:59:44.426','2022-10-14 02:53:05.009','[]','project.$all.network.bandwidth',0,'2022-10-13 22:30:00.000','30m',0),
(46,'3a78fcce0c046452f0b4923c8d28b868','2022-10-14 00:59:44.428','2022-10-14 02:53:05.011','[]','project.$all.network.bandwidth',0,'2022-10-13 23:00:00.000','30m',0),
(47,'009abd661381b557aa0488ca22aaf94b','2022-10-14 00:59:44.430','2022-10-14 02:53:05.014','[]','project.$all.network.bandwidth',0,'2022-10-13 23:30:00.000','30m',0),
(48,'e353bbd51a97b4e884014408bc14187a','2022-10-14 00:59:44.432','2022-10-14 02:53:05.017','[]','project.$all.network.bandwidth',0,'2022-10-14 00:00:00.000','30m',0),
(49,'42a93e9ea28178fdcc513daa54d3131d','2022-10-14 00:59:44.434','2022-10-14 02:53:05.019','[]','project.$all.network.bandwidth',0,'2022-10-14 00:30:00.000','30m',0),
(50,'6f3e9913c707d2286618f0b7520b4364','2022-10-14 00:59:44.440','2022-10-14 00:59:44.440','[]','project.$all.network.inbound',0,'2022-10-13 00:30:00.000','30m',0),
(51,'7206d6b8698f6f53f73cd8cf8b75fb47','2022-10-14 00:59:44.443','2022-10-14 00:59:44.443','[]','project.$all.network.inbound',0,'2022-10-13 01:00:00.000','30m',0),
(52,'7d271206da5e5daf0526a5f3fbd9d2cb','2022-10-14 00:59:44.445','2022-10-14 01:38:53.352','[]','project.$all.network.inbound',0,'2022-10-13 01:30:00.000','30m',0),
(53,'69f7ce84af0c9c6e7e5a01f6dc75259b','2022-10-14 00:59:44.447','2022-10-14 01:38:53.355','[]','project.$all.network.inbound',0,'2022-10-13 02:00:00.000','30m',0),
(54,'8861a5bd3c23c5c574a9a97f53e7c5c3','2022-10-14 00:59:44.449','2022-10-14 02:53:05.034','[]','project.$all.network.inbound',0,'2022-10-13 02:30:00.000','30m',0),
(55,'efef43c4cd1e5dad0a579b9108be855d','2022-10-14 00:59:44.450','2022-10-14 02:53:05.037','[]','project.$all.network.inbound',0,'2022-10-13 03:00:00.000','30m',0),
(56,'62fcd1dafbde508c8635d2497f39f72a','2022-10-14 00:59:44.452','2022-10-14 02:53:05.041','[]','project.$all.network.inbound',0,'2022-10-13 03:30:00.000','30m',0),
(57,'4a7d9e1be832f85f1d2747f2757addce','2022-10-14 00:59:44.454','2022-10-14 02:53:05.044','[]','project.$all.network.inbound',0,'2022-10-13 04:00:00.000','30m',0),
(58,'a746f9c0a016300d3ad0aad7a4565461','2022-10-14 00:59:44.455','2022-10-14 02:53:05.047','[]','project.$all.network.inbound',0,'2022-10-13 04:30:00.000','30m',0),
(59,'7f443c165dae9ed318b988a8f0571c1d','2022-10-14 00:59:44.456','2022-10-14 02:53:05.050','[]','project.$all.network.inbound',0,'2022-10-13 05:00:00.000','30m',0),
(60,'969399740d661bb8fd4f2f168bae82b7','2022-10-14 00:59:44.458','2022-10-14 02:53:05.054','[]','project.$all.network.inbound',0,'2022-10-13 05:30:00.000','30m',0),
(61,'0c7acf2bdf1b3146a01c76d4743c94dc','2022-10-14 00:59:44.459','2022-10-14 02:53:05.110','[]','project.$all.network.inbound',0,'2022-10-13 06:00:00.000','30m',0),
(62,'8a1ff215d44917f23e6ae39e5e184edc','2022-10-14 00:59:44.461','2022-10-14 02:53:05.116','[]','project.$all.network.inbound',0,'2022-10-13 06:30:00.000','30m',0),
(63,'9ec7d79025e806d3d9d1efb4e3de6ead','2022-10-14 00:59:44.462','2022-10-14 02:53:05.120','[]','project.$all.network.inbound',0,'2022-10-13 07:00:00.000','30m',0),
(64,'3fbcf6a6c954e94459be1ed1b79f1e8e','2022-10-14 00:59:44.464','2022-10-14 02:53:05.124','[]','project.$all.network.inbound',0,'2022-10-13 07:30:00.000','30m',0),
(65,'014c7351b0155e39e8160c172de3cae8','2022-10-14 00:59:44.465','2022-10-14 02:53:05.126','[]','project.$all.network.inbound',0,'2022-10-13 08:00:00.000','30m',0),
(66,'e7ecdd09933fe7370a1b423d3f7fa096','2022-10-14 00:59:44.467','2022-10-14 02:53:05.129','[]','project.$all.network.inbound',0,'2022-10-13 08:30:00.000','30m',0),
(67,'ea0e08c7d0cba4c818fb5997e91a0fc1','2022-10-14 00:59:44.468','2022-10-14 02:53:05.132','[]','project.$all.network.inbound',0,'2022-10-13 09:00:00.000','30m',0),
(68,'9fa2282b434d6fe3582ca7006c89f09c','2022-10-14 00:59:44.469','2022-10-14 02:53:05.135','[]','project.$all.network.inbound',0,'2022-10-13 09:30:00.000','30m',0),
(69,'7c8145a7c8330bf0bb295946b430d679','2022-10-14 00:59:44.471','2022-10-14 02:53:05.137','[]','project.$all.network.inbound',0,'2022-10-13 10:00:00.000','30m',0),
(70,'f5a8aeeabd8ff98736766eb5f0aa248b','2022-10-14 00:59:44.472','2022-10-14 02:53:05.140','[]','project.$all.network.inbound',0,'2022-10-13 10:30:00.000','30m',0),
(71,'0cc7eaebeccbea57db41cba49516b549','2022-10-14 00:59:44.473','2022-10-14 02:53:05.143','[]','project.$all.network.inbound',0,'2022-10-13 11:00:00.000','30m',0),
(72,'854f59fe087237d9c762821b00edacf7','2022-10-14 00:59:44.475','2022-10-14 02:53:05.146','[]','project.$all.network.inbound',0,'2022-10-13 11:30:00.000','30m',0),
(73,'3674fc8bed2b5c10c9f350a80025f464','2022-10-14 00:59:44.476','2022-10-14 02:53:05.148','[]','project.$all.network.inbound',0,'2022-10-13 12:00:00.000','30m',0),
(74,'461afb35cb89e2bb313b860ea9935001','2022-10-14 00:59:44.477','2022-10-14 02:53:05.151','[]','project.$all.network.inbound',0,'2022-10-13 12:30:00.000','30m',0),
(75,'bb520ec19313f51f3fdb45f9b06c655e','2022-10-14 00:59:44.478','2022-10-14 02:53:05.153','[]','project.$all.network.inbound',0,'2022-10-13 13:00:00.000','30m',0),
(76,'83d7fc6966b37e3ed968ce5c859c1c4d','2022-10-14 00:59:44.480','2022-10-14 02:53:05.156','[]','project.$all.network.inbound',0,'2022-10-13 13:30:00.000','30m',0),
(77,'69299963d638445f8ec9fa9c81618e30','2022-10-14 00:59:44.481','2022-10-14 02:53:05.158','[]','project.$all.network.inbound',0,'2022-10-13 14:00:00.000','30m',0),
(78,'3d2921b2615c8f8e45bf479157240fc0','2022-10-14 00:59:44.482','2022-10-14 02:53:05.160','[]','project.$all.network.inbound',0,'2022-10-13 14:30:00.000','30m',0),
(79,'00f4abb86bb1f6f746524345cdce3c2a','2022-10-14 00:59:44.483','2022-10-14 02:53:05.162','[]','project.$all.network.inbound',0,'2022-10-13 15:00:00.000','30m',0),
(80,'0eae679403073f89547405557a1b9f5e','2022-10-14 00:59:44.484','2022-10-14 02:53:05.165','[]','project.$all.network.inbound',0,'2022-10-13 15:30:00.000','30m',0),
(81,'b638b4990f6760488914ee7b3d41d434','2022-10-14 00:59:44.485','2022-10-14 02:53:05.167','[]','project.$all.network.inbound',0,'2022-10-13 16:00:00.000','30m',0),
(82,'cc8eedebafb84365037629de335ffc1b','2022-10-14 00:59:44.487','2022-10-14 02:53:05.170','[]','project.$all.network.inbound',0,'2022-10-13 16:30:00.000','30m',0),
(83,'61c87d91c902f65225b49899c5fa9a56','2022-10-14 00:59:44.488','2022-10-14 02:53:05.172','[]','project.$all.network.inbound',0,'2022-10-13 17:00:00.000','30m',0),
(84,'dc48bc69f724da9b9a1e6516cb0c4df2','2022-10-14 00:59:44.490','2022-10-14 02:53:05.175','[]','project.$all.network.inbound',0,'2022-10-13 17:30:00.000','30m',0),
(85,'7339120ac88373a91553618306396577','2022-10-14 00:59:44.491','2022-10-14 02:53:05.178','[]','project.$all.network.inbound',0,'2022-10-13 18:00:00.000','30m',0),
(86,'ffcf662714083553d76f11a95a1d94d5','2022-10-14 00:59:44.492','2022-10-14 02:53:05.180','[]','project.$all.network.inbound',0,'2022-10-13 18:30:00.000','30m',0),
(87,'e83fc7887522d55eecbaf0314714b8bc','2022-10-14 00:59:44.493','2022-10-14 02:53:05.183','[]','project.$all.network.inbound',0,'2022-10-13 19:00:00.000','30m',0),
(88,'83b492c83bfaaecddec3f9e03dd4df1a','2022-10-14 00:59:44.495','2022-10-14 02:53:05.185','[]','project.$all.network.inbound',0,'2022-10-13 19:30:00.000','30m',0),
(89,'285ecf9dd44bf40de3eab342d3d3fb8b','2022-10-14 00:59:44.496','2022-10-14 02:53:05.188','[]','project.$all.network.inbound',0,'2022-10-13 20:00:00.000','30m',0),
(90,'f309c42c6b5c3164feece824839d4111','2022-10-14 00:59:44.497','2022-10-14 02:53:05.190','[]','project.$all.network.inbound',0,'2022-10-13 20:30:00.000','30m',0),
(91,'55baf8e0342f8f30e4943bd21834c540','2022-10-14 00:59:44.498','2022-10-14 02:53:05.193','[]','project.$all.network.inbound',0,'2022-10-13 21:00:00.000','30m',0),
(92,'1e9de9a7dd3ea270b76c6eeec922a253','2022-10-14 00:59:44.500','2022-10-14 02:53:05.195','[]','project.$all.network.inbound',0,'2022-10-13 21:30:00.000','30m',0),
(93,'4c19239a9773de2cf87bbf50be278fbd','2022-10-14 00:59:44.501','2022-10-14 02:53:05.208','[]','project.$all.network.inbound',0,'2022-10-13 22:00:00.000','30m',0),
(94,'0f9d98662abdf05bf133721bb41b7667','2022-10-14 00:59:44.502','2022-10-14 02:53:05.211','[]','project.$all.network.inbound',0,'2022-10-13 22:30:00.000','30m',0),
(95,'9aa95fd089170d84d2f08f2346d95a3e','2022-10-14 00:59:44.503','2022-10-14 02:53:05.213','[]','project.$all.network.inbound',0,'2022-10-13 23:00:00.000','30m',0),
(96,'3a8f114c63323c52a5bc69e35f675f8d','2022-10-14 00:59:44.505','2022-10-14 02:53:05.216','[]','project.$all.network.inbound',0,'2022-10-13 23:30:00.000','30m',0),
(97,'b89b4f38a3c10076c708f2646d05960d','2022-10-14 00:59:44.506','2022-10-14 02:53:05.218','[]','project.$all.network.inbound',0,'2022-10-14 00:00:00.000','30m',0),
(98,'27ec8d0ac26bfc482c4ce9947d0033df','2022-10-14 00:59:44.507','2022-10-14 02:53:05.221','[]','project.$all.network.inbound',0,'2022-10-14 00:30:00.000','30m',0),
(99,'a3d76c8faf07181fe9888dfae5a0eeed','2022-10-14 00:59:44.510','2022-10-14 00:59:44.510','[]','project.$all.network.outbound',0,'2022-10-13 00:30:00.000','30m',0),
(100,'361ab22b9a1a3201bacf7763d66dc782','2022-10-14 00:59:44.512','2022-10-14 00:59:44.512','[]','project.$all.network.outbound',0,'2022-10-13 01:00:00.000','30m',0),
(101,'97cebbbe985cdbc0b41136fdc0c5b389','2022-10-14 00:59:44.513','2022-10-14 01:38:53.465','[]','project.$all.network.outbound',0,'2022-10-13 01:30:00.000','30m',0),
(102,'70f0f2824b46a12f9266150e99078fd2','2022-10-14 00:59:44.515','2022-10-14 01:38:53.468','[]','project.$all.network.outbound',0,'2022-10-13 02:00:00.000','30m',0),
(103,'28882dae11d26dfd32057f093baab7f2','2022-10-14 00:59:44.516','2022-10-14 02:53:05.235','[]','project.$all.network.outbound',0,'2022-10-13 02:30:00.000','30m',0),
(104,'472ac8801f44f5cb215cc6028d77ed4f','2022-10-14 00:59:44.517','2022-10-14 02:53:05.237','[]','project.$all.network.outbound',0,'2022-10-13 03:00:00.000','30m',0),
(105,'2d06c8f1c53235b62c2338c628b684fd','2022-10-14 00:59:44.518','2022-10-14 02:53:05.240','[]','project.$all.network.outbound',0,'2022-10-13 03:30:00.000','30m',0),
(106,'30289e55210e283c073304ba0a4f42c6','2022-10-14 00:59:44.520','2022-10-14 02:53:05.242','[]','project.$all.network.outbound',0,'2022-10-13 04:00:00.000','30m',0),
(107,'abfb3b3ff5d81a6577f517fbd997ab8c','2022-10-14 00:59:44.522','2022-10-14 02:53:05.244','[]','project.$all.network.outbound',0,'2022-10-13 04:30:00.000','30m',0),
(108,'356eab956887c9e93e7b7c27819f4609','2022-10-14 00:59:44.523','2022-10-14 02:53:05.247','[]','project.$all.network.outbound',0,'2022-10-13 05:00:00.000','30m',0),
(109,'3b13004a2ef150d526f62db220f53044','2022-10-14 00:59:44.525','2022-10-14 02:53:05.250','[]','project.$all.network.outbound',0,'2022-10-13 05:30:00.000','30m',0),
(110,'484b0f37a79874d71e89a64e8b0e98d4','2022-10-14 00:59:44.527','2022-10-14 02:53:05.252','[]','project.$all.network.outbound',0,'2022-10-13 06:00:00.000','30m',0),
(111,'a67d40bed2fac21425277c51930e72d3','2022-10-14 00:59:44.529','2022-10-14 02:53:05.254','[]','project.$all.network.outbound',0,'2022-10-13 06:30:00.000','30m',0),
(112,'7fa95ad5cf17d7445914d150c155256b','2022-10-14 00:59:44.530','2022-10-14 02:53:05.257','[]','project.$all.network.outbound',0,'2022-10-13 07:00:00.000','30m',0),
(113,'421f465e7f2ec6e5f2cf667bb3110942','2022-10-14 00:59:44.532','2022-10-14 02:53:05.260','[]','project.$all.network.outbound',0,'2022-10-13 07:30:00.000','30m',0),
(114,'509f5c51eb8b56ce212569a768d2c2d8','2022-10-14 00:59:44.533','2022-10-14 02:53:05.262','[]','project.$all.network.outbound',0,'2022-10-13 08:00:00.000','30m',0),
(115,'6b20ca607ae0dbda72128adb19e50f31','2022-10-14 00:59:44.535','2022-10-14 02:53:05.265','[]','project.$all.network.outbound',0,'2022-10-13 08:30:00.000','30m',0),
(116,'9fc7d0f7e53fa6d486b8d786ca807ca9','2022-10-14 00:59:44.537','2022-10-14 02:53:05.267','[]','project.$all.network.outbound',0,'2022-10-13 09:00:00.000','30m',0),
(117,'61296c34af58c14658550228a9d046a1','2022-10-14 00:59:44.539','2022-10-14 02:53:05.270','[]','project.$all.network.outbound',0,'2022-10-13 09:30:00.000','30m',0),
(118,'66f36483fca7668c5bf87726809de3fd','2022-10-14 00:59:44.540','2022-10-14 02:53:05.272','[]','project.$all.network.outbound',0,'2022-10-13 10:00:00.000','30m',0),
(119,'70a2a930205c81d06901200f40d207e9','2022-10-14 00:59:44.542','2022-10-14 02:53:05.274','[]','project.$all.network.outbound',0,'2022-10-13 10:30:00.000','30m',0),
(120,'9ef9f4eafdbd84212a31e111b9bcca56','2022-10-14 00:59:44.544','2022-10-14 02:53:05.276','[]','project.$all.network.outbound',0,'2022-10-13 11:00:00.000','30m',0),
(121,'77846cddb7427bed83a865a71883c12d','2022-10-14 00:59:44.546','2022-10-14 02:53:05.278','[]','project.$all.network.outbound',0,'2022-10-13 11:30:00.000','30m',0),
(122,'a7cf7c376a59ed73d8c71c5981bdd59e','2022-10-14 00:59:44.547','2022-10-14 02:53:05.281','[]','project.$all.network.outbound',0,'2022-10-13 12:00:00.000','30m',0),
(123,'c2ab53f86fb4221c66e5fddefb3149c8','2022-10-14 00:59:44.549','2022-10-14 02:53:05.283','[]','project.$all.network.outbound',0,'2022-10-13 12:30:00.000','30m',0),
(124,'2c918b6fc2e6714a9dd3248b38a82cd8','2022-10-14 00:59:44.550','2022-10-14 02:53:05.285','[]','project.$all.network.outbound',0,'2022-10-13 13:00:00.000','30m',0),
(125,'c003cce95d3f611fc898af67ed968765','2022-10-14 00:59:44.551','2022-10-14 02:53:05.288','[]','project.$all.network.outbound',0,'2022-10-13 13:30:00.000','30m',0),
(126,'b58a6d5ae74601e75cc91910125ce0a5','2022-10-14 00:59:44.553','2022-10-14 02:53:05.290','[]','project.$all.network.outbound',0,'2022-10-13 14:00:00.000','30m',0),
(127,'71b2fd4875d80d3b19a9c82b630b5d91','2022-10-14 00:59:44.554','2022-10-14 02:53:05.292','[]','project.$all.network.outbound',0,'2022-10-13 14:30:00.000','30m',0),
(128,'c7cba899d8be830cd5a16fadb4782750','2022-10-14 00:59:44.555','2022-10-14 02:53:05.294','[]','project.$all.network.outbound',0,'2022-10-13 15:00:00.000','30m',0),
(129,'313e346ea008e5359d0f04dbf7d7582b','2022-10-14 00:59:44.558','2022-10-14 02:53:05.296','[]','project.$all.network.outbound',0,'2022-10-13 15:30:00.000','30m',0),
(130,'18db89a90e39fba431c77b8a5d8e628b','2022-10-14 00:59:44.559','2022-10-14 02:53:05.299','[]','project.$all.network.outbound',0,'2022-10-13 16:00:00.000','30m',0),
(131,'4254267f4815134c639d1acd2c36dc78','2022-10-14 00:59:44.561','2022-10-14 02:53:05.301','[]','project.$all.network.outbound',0,'2022-10-13 16:30:00.000','30m',0),
(132,'7ff0a91f0963007870b8d03994eef926','2022-10-14 00:59:44.562','2022-10-14 02:53:05.303','[]','project.$all.network.outbound',0,'2022-10-13 17:00:00.000','30m',0),
(133,'73ee2af4a3672599f5cae3238dee4fc1','2022-10-14 00:59:44.564','2022-10-14 02:53:05.305','[]','project.$all.network.outbound',0,'2022-10-13 17:30:00.000','30m',0),
(134,'4c2d04610b23d188efe1c6d0533bcf9e','2022-10-14 00:59:44.565','2022-10-14 02:53:05.307','[]','project.$all.network.outbound',0,'2022-10-13 18:00:00.000','30m',0),
(135,'900790aa63788a2ed11ef319d06b08d0','2022-10-14 00:59:44.566','2022-10-14 02:53:05.310','[]','project.$all.network.outbound',0,'2022-10-13 18:30:00.000','30m',0),
(136,'c892e72d579b221f275962e99647b159','2022-10-14 00:59:44.568','2022-10-14 02:53:05.312','[]','project.$all.network.outbound',0,'2022-10-13 19:00:00.000','30m',0),
(137,'0a1d514b16ab6bd52aa50cae247debb8','2022-10-14 00:59:44.569','2022-10-14 02:53:05.314','[]','project.$all.network.outbound',0,'2022-10-13 19:30:00.000','30m',0),
(138,'2919fd00767b94151b912c5cb9ae95d8','2022-10-14 00:59:44.570','2022-10-14 02:53:05.316','[]','project.$all.network.outbound',0,'2022-10-13 20:00:00.000','30m',0),
(139,'a0108e8ca566805f888d73068710d460','2022-10-14 00:59:44.571','2022-10-14 02:53:05.319','[]','project.$all.network.outbound',0,'2022-10-13 20:30:00.000','30m',0),
(140,'65bbd7c5125a988777fd386430a8dcb0','2022-10-14 00:59:44.573','2022-10-14 02:53:05.322','[]','project.$all.network.outbound',0,'2022-10-13 21:00:00.000','30m',0),
(141,'5721a85a9f4d8c7d63c59b5921421954','2022-10-14 00:59:44.574','2022-10-14 02:53:05.324','[]','project.$all.network.outbound',0,'2022-10-13 21:30:00.000','30m',0),
(142,'a04fb1e2f7febabac2b85c4d7f4b15ed','2022-10-14 00:59:44.576','2022-10-14 02:53:05.326','[]','project.$all.network.outbound',0,'2022-10-13 22:00:00.000','30m',0),
(143,'a57220a42f97930162f6c71168492b99','2022-10-14 00:59:44.577','2022-10-14 02:53:05.328','[]','project.$all.network.outbound',0,'2022-10-13 22:30:00.000','30m',0),
(144,'92fb44f1044e9f46c82dc73687cbb639','2022-10-14 00:59:44.578','2022-10-14 02:53:05.331','[]','project.$all.network.outbound',0,'2022-10-13 23:00:00.000','30m',0),
(145,'6e2cdfda6e1c4a1b3c112c1d8f77faea','2022-10-14 00:59:44.580','2022-10-14 02:53:05.333','[]','project.$all.network.outbound',0,'2022-10-13 23:30:00.000','30m',0),
(146,'5397b893d4dd830fc77cb602e9d4fd39','2022-10-14 00:59:44.581','2022-10-14 02:53:05.335','[]','project.$all.network.outbound',0,'2022-10-14 00:00:00.000','30m',0),
(147,'eb5ed60f398486cc52e4fbd21130e275','2022-10-14 00:59:44.582','2022-10-14 02:53:05.338','[]','project.$all.network.outbound',0,'2022-10-14 00:30:00.000','30m',0),
(148,'17c3bbba6395f4f4766a8a795be824b4','2022-10-14 00:59:44.637','2022-10-14 00:59:44.637','[]','executions.$all.compute.total',0,'2022-10-13 00:30:00.000','30m',0),
(149,'b3f654becfac8f4ec9251fdc7bddc97c','2022-10-14 00:59:44.640','2022-10-14 00:59:44.640','[]','executions.$all.compute.total',0,'2022-10-13 01:00:00.000','30m',0),
(150,'6f3249fb1d170056d1287a149f9afbb3','2022-10-14 00:59:44.642','2022-10-14 01:38:53.627','[]','executions.$all.compute.total',0,'2022-10-13 01:30:00.000','30m',0),
(151,'ab9ac41bac32afb2a3b1b11d3bd0ff4a','2022-10-14 00:59:44.644','2022-10-14 01:38:53.629','[]','executions.$all.compute.total',0,'2022-10-13 02:00:00.000','30m',0),
(152,'efdd9fb6c11eff0abc77f6ceb31e61c5','2022-10-14 00:59:44.648','2022-10-14 02:53:05.435','[]','executions.$all.compute.total',0,'2022-10-13 02:30:00.000','30m',0),
(153,'084859ab619fce8dff5f677235788371','2022-10-14 00:59:44.650','2022-10-14 02:53:05.437','[]','executions.$all.compute.total',0,'2022-10-13 03:00:00.000','30m',0),
(154,'c22c01facfb4a72c63232201fa5aca40','2022-10-14 00:59:44.651','2022-10-14 02:53:05.440','[]','executions.$all.compute.total',0,'2022-10-13 03:30:00.000','30m',0),
(155,'bb9797eeb2813888f7b8bf191a224584','2022-10-14 00:59:44.653','2022-10-14 02:53:05.443','[]','executions.$all.compute.total',0,'2022-10-13 04:00:00.000','30m',0),
(156,'f86ec586c163d138658cd069e5f1e7c7','2022-10-14 00:59:44.654','2022-10-14 02:53:05.445','[]','executions.$all.compute.total',0,'2022-10-13 04:30:00.000','30m',0),
(157,'b00deacbaae1fa305f33f1d7ddbf9113','2022-10-14 00:59:44.656','2022-10-14 02:53:05.447','[]','executions.$all.compute.total',0,'2022-10-13 05:00:00.000','30m',0),
(158,'e906c109b54ce4657062438981f700bc','2022-10-14 00:59:44.657','2022-10-14 02:53:05.449','[]','executions.$all.compute.total',0,'2022-10-13 05:30:00.000','30m',0),
(159,'ccd6388bc0bffbc7361f8e9d59fc068c','2022-10-14 00:59:44.658','2022-10-14 02:53:05.451','[]','executions.$all.compute.total',0,'2022-10-13 06:00:00.000','30m',0),
(160,'a85e3ec58881699ce3f3788de967d4c4','2022-10-14 00:59:44.660','2022-10-14 02:53:05.453','[]','executions.$all.compute.total',0,'2022-10-13 06:30:00.000','30m',0),
(161,'c140174f78db1c33fbf24859beab96d3','2022-10-14 00:59:44.661','2022-10-14 02:53:05.455','[]','executions.$all.compute.total',0,'2022-10-13 07:00:00.000','30m',0),
(162,'8b3254b352e235821c18e1eea96dfd6c','2022-10-14 00:59:44.663','2022-10-14 02:53:05.457','[]','executions.$all.compute.total',0,'2022-10-13 07:30:00.000','30m',0),
(163,'33a47288e9ce36dba6524fe2f3d1b99a','2022-10-14 00:59:44.664','2022-10-14 02:53:05.459','[]','executions.$all.compute.total',0,'2022-10-13 08:00:00.000','30m',0),
(164,'ac4fac084e0cb32e1dccc16e2753f355','2022-10-14 00:59:44.665','2022-10-14 02:53:05.461','[]','executions.$all.compute.total',0,'2022-10-13 08:30:00.000','30m',0),
(165,'fe0d3bc9437f832f7066b8dff471ee58','2022-10-14 00:59:44.667','2022-10-14 02:53:05.462','[]','executions.$all.compute.total',0,'2022-10-13 09:00:00.000','30m',0),
(166,'2343d8af78a6da05052aa9ebe3aadb7b','2022-10-14 00:59:44.668','2022-10-14 02:53:05.464','[]','executions.$all.compute.total',0,'2022-10-13 09:30:00.000','30m',0),
(167,'67d0e32c512c6a3d946e5c41f05310db','2022-10-14 00:59:44.669','2022-10-14 02:53:05.466','[]','executions.$all.compute.total',0,'2022-10-13 10:00:00.000','30m',0),
(168,'fb11e952c335442412699f82d6b8486f','2022-10-14 00:59:44.671','2022-10-14 02:53:05.469','[]','executions.$all.compute.total',0,'2022-10-13 10:30:00.000','30m',0),
(169,'dad7ea6102765c9adb1aa80a44a30f07','2022-10-14 00:59:44.672','2022-10-14 02:53:05.470','[]','executions.$all.compute.total',0,'2022-10-13 11:00:00.000','30m',0),
(170,'f25a676725d43f5d4c84bec6335db12a','2022-10-14 00:59:44.673','2022-10-14 02:53:05.472','[]','executions.$all.compute.total',0,'2022-10-13 11:30:00.000','30m',0),
(171,'0599c10d6ae124a79165fba99acb0297','2022-10-14 00:59:44.674','2022-10-14 02:53:05.474','[]','executions.$all.compute.total',0,'2022-10-13 12:00:00.000','30m',0),
(172,'02848aa49f510106d16c408f2b3c5c52','2022-10-14 00:59:44.676','2022-10-14 02:53:05.476','[]','executions.$all.compute.total',0,'2022-10-13 12:30:00.000','30m',0),
(173,'b276e0f0da101ab3888f94ef93a3c3dc','2022-10-14 00:59:44.677','2022-10-14 02:53:05.477','[]','executions.$all.compute.total',0,'2022-10-13 13:00:00.000','30m',0),
(174,'828930b2a6b6297d7982291216c9c3b6','2022-10-14 00:59:44.678','2022-10-14 02:53:05.479','[]','executions.$all.compute.total',0,'2022-10-13 13:30:00.000','30m',0),
(175,'3ff0ba7b920aa20b833e96d134d97577','2022-10-14 00:59:44.679','2022-10-14 02:53:05.481','[]','executions.$all.compute.total',0,'2022-10-13 14:00:00.000','30m',0),
(176,'4c312fae97a17f0e042cbe6064c67ac8','2022-10-14 00:59:44.681','2022-10-14 02:53:05.483','[]','executions.$all.compute.total',0,'2022-10-13 14:30:00.000','30m',0),
(177,'511953fe2a47f82eeab930866446c96c','2022-10-14 00:59:44.682','2022-10-14 02:53:05.484','[]','executions.$all.compute.total',0,'2022-10-13 15:00:00.000','30m',0),
(178,'273340084a21c325c7f7ee2b1adbff8d','2022-10-14 00:59:44.683','2022-10-14 02:53:05.486','[]','executions.$all.compute.total',0,'2022-10-13 15:30:00.000','30m',0),
(179,'7571f63f687ec1f90027808f47d88004','2022-10-14 00:59:44.684','2022-10-14 02:53:05.487','[]','executions.$all.compute.total',0,'2022-10-13 16:00:00.000','30m',0),
(180,'afb29b13765ffa0eea26cc91590332ca','2022-10-14 00:59:44.685','2022-10-14 02:53:05.489','[]','executions.$all.compute.total',0,'2022-10-13 16:30:00.000','30m',0),
(181,'30d530c563cac507b4de4ba3a76d05e6','2022-10-14 00:59:44.687','2022-10-14 02:53:05.490','[]','executions.$all.compute.total',0,'2022-10-13 17:00:00.000','30m',0),
(182,'1528f32c08b54968bd011195c19e0416','2022-10-14 00:59:44.688','2022-10-14 02:53:05.492','[]','executions.$all.compute.total',0,'2022-10-13 17:30:00.000','30m',0),
(183,'5169859901ce0e04c027c8f7e1becf42','2022-10-14 00:59:44.689','2022-10-14 02:53:05.494','[]','executions.$all.compute.total',0,'2022-10-13 18:00:00.000','30m',0),
(184,'f450018ea143f8470417d9f62802acb9','2022-10-14 00:59:44.691','2022-10-14 02:53:05.496','[]','executions.$all.compute.total',0,'2022-10-13 18:30:00.000','30m',0),
(185,'6f6f37d667ec91e08e65a7bc8fc5194f','2022-10-14 00:59:44.692','2022-10-14 02:53:05.497','[]','executions.$all.compute.total',0,'2022-10-13 19:00:00.000','30m',0),
(186,'8e5e5e0cceaae84fe4dd82e9de6d2d8d','2022-10-14 00:59:44.693','2022-10-14 02:53:05.500','[]','executions.$all.compute.total',0,'2022-10-13 19:30:00.000','30m',0),
(187,'a345aea4a113ae1b68f11d7055704204','2022-10-14 00:59:44.695','2022-10-14 02:53:05.502','[]','executions.$all.compute.total',0,'2022-10-13 20:00:00.000','30m',0),
(188,'5f777733e40a3c470692cb297f841871','2022-10-14 00:59:44.696','2022-10-14 02:53:05.504','[]','executions.$all.compute.total',0,'2022-10-13 20:30:00.000','30m',0),
(189,'7e536bbddbafa41be5483221b6e7e950','2022-10-14 00:59:44.697','2022-10-14 02:53:05.506','[]','executions.$all.compute.total',0,'2022-10-13 21:00:00.000','30m',0),
(190,'0c1ab0d205e990411504c5f2683e3375','2022-10-14 00:59:44.699','2022-10-14 02:53:05.507','[]','executions.$all.compute.total',0,'2022-10-13 21:30:00.000','30m',0),
(191,'d643bc9e1f358ae87bdd07e09a980666','2022-10-14 00:59:44.700','2022-10-14 02:53:05.509','[]','executions.$all.compute.total',0,'2022-10-13 22:00:00.000','30m',0),
(192,'f53cb6a79c4370ed6e2b84cf67cd05c0','2022-10-14 00:59:44.702','2022-10-14 02:53:05.511','[]','executions.$all.compute.total',0,'2022-10-13 22:30:00.000','30m',0),
(193,'3c02559f477e5e21a6f6d21f3a0ab141','2022-10-14 00:59:44.704','2022-10-14 02:53:05.512','[]','executions.$all.compute.total',0,'2022-10-13 23:00:00.000','30m',0),
(194,'0cf7104eb6da058d35cf7b214afb548d','2022-10-14 00:59:44.705','2022-10-14 02:53:05.514','[]','executions.$all.compute.total',0,'2022-10-13 23:30:00.000','30m',0),
(195,'b74462c081c640cc3119234a97e0d8ca','2022-10-14 00:59:44.707','2022-10-14 02:53:05.516','[]','executions.$all.compute.total',0,'2022-10-14 00:00:00.000','30m',0),
(196,'c2a9e5657029d39a3743e72c582c9b69','2022-10-14 00:59:44.708','2022-10-14 02:53:05.517','[]','executions.$all.compute.total',3,'2022-10-14 00:30:00.000','30m',0),
(197,'e2d64b6bdd0327412d543339da3a1ecf','2022-10-14 00:59:44.712','2022-10-14 00:59:44.712','[]','builds.$all.compute.time',0,'2022-10-13 00:30:00.000','30m',0),
(198,'6c41553c52e3508813078c4a25c79ba4','2022-10-14 00:59:44.714','2022-10-14 00:59:44.714','[]','builds.$all.compute.time',0,'2022-10-13 01:00:00.000','30m',0),
(199,'a8b6e89e203676dfead0fcd5b28a3190','2022-10-14 00:59:44.716','2022-10-14 01:38:53.737','[]','builds.$all.compute.time',0,'2022-10-13 01:30:00.000','30m',0),
(200,'d563162a770b741f5663439053ae0d98','2022-10-14 00:59:44.717','2022-10-14 01:38:53.739','[]','builds.$all.compute.time',0,'2022-10-13 02:00:00.000','30m',0),
(201,'11307654fcb63e4ece8a0cffe870867c','2022-10-14 00:59:44.719','2022-10-14 02:53:05.529','[]','builds.$all.compute.time',0,'2022-10-13 02:30:00.000','30m',0),
(202,'cd3bd6d83b8d40add8f2b78096aeb270','2022-10-14 00:59:44.722','2022-10-14 02:53:05.530','[]','builds.$all.compute.time',0,'2022-10-13 03:00:00.000','30m',0),
(203,'6573c6b708a3d37cc7002fb592ed1548','2022-10-14 00:59:44.724','2022-10-14 02:53:05.532','[]','builds.$all.compute.time',0,'2022-10-13 03:30:00.000','30m',0),
(204,'15778073b54d429620248317329b44ea','2022-10-14 00:59:44.725','2022-10-14 02:53:05.534','[]','builds.$all.compute.time',0,'2022-10-13 04:00:00.000','30m',0),
(205,'508ce293122b0da581a6290b980a9a04','2022-10-14 00:59:44.727','2022-10-14 02:53:05.536','[]','builds.$all.compute.time',0,'2022-10-13 04:30:00.000','30m',0),
(206,'237be308cf86cde9174b46067a622af1','2022-10-14 00:59:44.729','2022-10-14 02:53:05.538','[]','builds.$all.compute.time',0,'2022-10-13 05:00:00.000','30m',0),
(207,'697b026f709ef0c37a04a93934d1c0ec','2022-10-14 00:59:44.732','2022-10-14 02:53:05.539','[]','builds.$all.compute.time',0,'2022-10-13 05:30:00.000','30m',0),
(208,'6575dce88c9e6af0d076ef75534786ca','2022-10-14 00:59:44.734','2022-10-14 02:53:05.541','[]','builds.$all.compute.time',0,'2022-10-13 06:00:00.000','30m',0),
(209,'c8287581397a96a50df9424e09d1552e','2022-10-14 00:59:44.736','2022-10-14 02:53:05.543','[]','builds.$all.compute.time',0,'2022-10-13 06:30:00.000','30m',0),
(210,'dded1cbf251bd5f16a42507df1e4899a','2022-10-14 00:59:44.738','2022-10-14 02:53:05.545','[]','builds.$all.compute.time',0,'2022-10-13 07:00:00.000','30m',0),
(211,'49249a85ba150f8be37b29421d88b466','2022-10-14 00:59:44.741','2022-10-14 02:53:05.547','[]','builds.$all.compute.time',0,'2022-10-13 07:30:00.000','30m',0),
(212,'ce9fdca4fc68d0b44be74c295887e2d4','2022-10-14 00:59:44.743','2022-10-14 02:53:05.548','[]','builds.$all.compute.time',0,'2022-10-13 08:00:00.000','30m',0),
(213,'c149df5ad9483ae1fd773a7535448af5','2022-10-14 00:59:44.744','2022-10-14 02:53:05.550','[]','builds.$all.compute.time',0,'2022-10-13 08:30:00.000','30m',0),
(214,'cd2e573dcc29c0c6edbd934b25c43c42','2022-10-14 00:59:44.746','2022-10-14 02:53:05.552','[]','builds.$all.compute.time',0,'2022-10-13 09:00:00.000','30m',0),
(215,'e5cbdb66eb2b6b1d19d0a3e84baf2c4b','2022-10-14 00:59:44.748','2022-10-14 02:53:05.554','[]','builds.$all.compute.time',0,'2022-10-13 09:30:00.000','30m',0),
(216,'e4d1729c6735943d9f7567e46a17341a','2022-10-14 00:59:44.749','2022-10-14 02:53:05.556','[]','builds.$all.compute.time',0,'2022-10-13 10:00:00.000','30m',0),
(217,'25c336cbe5b7752f647d89c6fc3cb385','2022-10-14 00:59:44.751','2022-10-14 02:53:05.557','[]','builds.$all.compute.time',0,'2022-10-13 10:30:00.000','30m',0),
(218,'b30fafc4e100c33a1de432eb3ad157de','2022-10-14 00:59:44.753','2022-10-14 02:53:05.559','[]','builds.$all.compute.time',0,'2022-10-13 11:00:00.000','30m',0),
(219,'1bf00f7aa7f09950fa3b0c15d568d029','2022-10-14 00:59:44.754','2022-10-14 02:53:05.561','[]','builds.$all.compute.time',0,'2022-10-13 11:30:00.000','30m',0),
(220,'69e264ae8ad96267cc4b5978f04bc654','2022-10-14 00:59:44.756','2022-10-14 02:53:05.563','[]','builds.$all.compute.time',0,'2022-10-13 12:00:00.000','30m',0),
(221,'5238178f585fd16150dd469146eaa9aa','2022-10-14 00:59:44.757','2022-10-14 02:53:05.565','[]','builds.$all.compute.time',0,'2022-10-13 12:30:00.000','30m',0),
(222,'8c8289bcb3ac57e089f76f70e2c4a8e9','2022-10-14 00:59:44.759','2022-10-14 02:53:05.567','[]','builds.$all.compute.time',0,'2022-10-13 13:00:00.000','30m',0),
(223,'d597accb65cf8d2ddadab5d46e87f2ec','2022-10-14 00:59:44.760','2022-10-14 02:53:05.568','[]','builds.$all.compute.time',0,'2022-10-13 13:30:00.000','30m',0),
(224,'d15786e99fd41ac20121a0689edb0082','2022-10-14 00:59:44.762','2022-10-14 02:53:05.570','[]','builds.$all.compute.time',0,'2022-10-13 14:00:00.000','30m',0),
(225,'168669fa338404c467ddee1e79b59e24','2022-10-14 00:59:44.763','2022-10-14 02:53:05.572','[]','builds.$all.compute.time',0,'2022-10-13 14:30:00.000','30m',0),
(226,'fb18b04d8ee89b49f0675b3a9eb010cf','2022-10-14 00:59:44.765','2022-10-14 02:53:05.573','[]','builds.$all.compute.time',0,'2022-10-13 15:00:00.000','30m',0),
(227,'dca1cf0a108be3629a031e983dc75430','2022-10-14 00:59:44.766','2022-10-14 02:53:05.575','[]','builds.$all.compute.time',0,'2022-10-13 15:30:00.000','30m',0),
(228,'180472cca4982cd9a84b472a28e26bb3','2022-10-14 00:59:44.767','2022-10-14 02:53:05.577','[]','builds.$all.compute.time',0,'2022-10-13 16:00:00.000','30m',0),
(229,'1eeb7222fb607eb5ccdb176abbb8dcde','2022-10-14 00:59:44.769','2022-10-14 02:53:05.579','[]','builds.$all.compute.time',0,'2022-10-13 16:30:00.000','30m',0),
(230,'e524eb107ddc9cfe8c02d123ff99155d','2022-10-14 00:59:44.771','2022-10-14 02:53:05.581','[]','builds.$all.compute.time',0,'2022-10-13 17:00:00.000','30m',0),
(231,'b5ab57a8098fedace845e17ad4f40cb6','2022-10-14 00:59:44.773','2022-10-14 02:53:05.583','[]','builds.$all.compute.time',0,'2022-10-13 17:30:00.000','30m',0),
(232,'37197f6b97919d6a11ee3619b607b21e','2022-10-14 00:59:44.774','2022-10-14 02:53:05.585','[]','builds.$all.compute.time',0,'2022-10-13 18:00:00.000','30m',0),
(233,'3bda9984b90f0bb3a2c044a4690ba407','2022-10-14 00:59:44.776','2022-10-14 02:53:05.587','[]','builds.$all.compute.time',0,'2022-10-13 18:30:00.000','30m',0),
(234,'b8ed1e061d44055ff4c48e3b19e993f5','2022-10-14 00:59:44.778','2022-10-14 02:53:05.589','[]','builds.$all.compute.time',0,'2022-10-13 19:00:00.000','30m',0),
(235,'83704b3a42202a127dd81762e3083855','2022-10-14 00:59:44.779','2022-10-14 02:53:05.591','[]','builds.$all.compute.time',0,'2022-10-13 19:30:00.000','30m',0),
(236,'77933111d732f045c8c9d79bd32890b2','2022-10-14 00:59:44.781','2022-10-14 02:53:05.593','[]','builds.$all.compute.time',0,'2022-10-13 20:00:00.000','30m',0),
(237,'237f39234ecefaed3ff03a5ed537aa10','2022-10-14 00:59:44.783','2022-10-14 02:53:05.595','[]','builds.$all.compute.time',0,'2022-10-13 20:30:00.000','30m',0),
(238,'4d24f8e33d4609ba24caea15a58ea2c4','2022-10-14 00:59:44.785','2022-10-14 02:53:05.598','[]','builds.$all.compute.time',0,'2022-10-13 21:00:00.000','30m',0),
(239,'b1485e4b30fae0ddea6f2781dd04ac72','2022-10-14 00:59:44.787','2022-10-14 02:53:05.599','[]','builds.$all.compute.time',0,'2022-10-13 21:30:00.000','30m',0),
(240,'99dafbab2a51a14df514a1e1c356022d','2022-10-14 00:59:44.789','2022-10-14 02:53:05.601','[]','builds.$all.compute.time',0,'2022-10-13 22:00:00.000','30m',0),
(241,'12190a8eceba8c575c7e9ca28de7d4de','2022-10-14 00:59:44.790','2022-10-14 02:53:05.603','[]','builds.$all.compute.time',0,'2022-10-13 22:30:00.000','30m',0),
(242,'12859a139e4b047cb4a596c4ed2cce0e','2022-10-14 00:59:44.792','2022-10-14 02:53:05.605','[]','builds.$all.compute.time',0,'2022-10-13 23:00:00.000','30m',0),
(243,'6449814f7ca5cfd64f6a1924a5f01ae0','2022-10-14 00:59:44.793','2022-10-14 02:53:05.607','[]','builds.$all.compute.time',0,'2022-10-13 23:30:00.000','30m',0),
(244,'9a4f92af70f175f4ada38975a8c0a649','2022-10-14 00:59:44.795','2022-10-14 02:53:05.609','[]','builds.$all.compute.time',0,'2022-10-14 00:00:00.000','30m',0),
(245,'ad935a8633292d7c8be814668a3b56ed','2022-10-14 00:59:44.796','2022-10-14 02:53:05.611','[]','builds.$all.compute.time',212,'2022-10-14 00:30:00.000','30m',0),
(246,'34b857d47539c43785af4c440a2455cc','2022-10-14 00:59:44.800','2022-10-14 00:59:44.800','[]','executions.$all.compute.time',0,'2022-10-13 00:30:00.000','30m',0),
(247,'40067426810f59cb62b14bb7ab5de04c','2022-10-14 00:59:44.804','2022-10-14 00:59:44.804','[]','executions.$all.compute.time',0,'2022-10-13 01:00:00.000','30m',0),
(248,'44b3a85b255eaed69e3aa313f569c1ee','2022-10-14 00:59:44.807','2022-10-14 01:38:53.843','[]','executions.$all.compute.time',0,'2022-10-13 01:30:00.000','30m',0),
(249,'726bb62805dc37bd0eef32c5ae8f4f4f','2022-10-14 00:59:44.809','2022-10-14 01:38:53.846','[]','executions.$all.compute.time',0,'2022-10-13 02:00:00.000','30m',0),
(250,'3c4709834fcda12a9f57c6c241a06d8c','2022-10-14 00:59:44.811','2022-10-14 02:53:05.645','[]','executions.$all.compute.time',0,'2022-10-13 02:30:00.000','30m',0),
(251,'9b4afbc9e70845bbe87dd63d23a4c188','2022-10-14 00:59:44.812','2022-10-14 02:53:05.647','[]','executions.$all.compute.time',0,'2022-10-13 03:00:00.000','30m',0),
(252,'8cd6c522ff9ddeb943d2f1e96043d302','2022-10-14 00:59:44.814','2022-10-14 02:53:05.650','[]','executions.$all.compute.time',0,'2022-10-13 03:30:00.000','30m',0),
(253,'9b5a32c3990a823ce61b3ed2f7fdce33','2022-10-14 00:59:44.816','2022-10-14 02:53:05.652','[]','executions.$all.compute.time',0,'2022-10-13 04:00:00.000','30m',0),
(254,'d262111b2c2bd12afbf57edde1c52e46','2022-10-14 00:59:44.817','2022-10-14 02:53:05.654','[]','executions.$all.compute.time',0,'2022-10-13 04:30:00.000','30m',0),
(255,'f193a5511b9ecffd8dad17967bcd5989','2022-10-14 00:59:44.821','2022-10-14 02:53:05.656','[]','executions.$all.compute.time',0,'2022-10-13 05:00:00.000','30m',0),
(256,'9ea4d6d2b98dba603b5464edf0e7d6cc','2022-10-14 00:59:44.824','2022-10-14 02:53:05.658','[]','executions.$all.compute.time',0,'2022-10-13 05:30:00.000','30m',0),
(257,'130cc850ded5b3e25d5651b066db4458','2022-10-14 00:59:44.829','2022-10-14 02:53:05.661','[]','executions.$all.compute.time',0,'2022-10-13 06:00:00.000','30m',0),
(258,'64666c91be933127660cd86e4bce4356','2022-10-14 00:59:44.832','2022-10-14 02:53:05.663','[]','executions.$all.compute.time',0,'2022-10-13 06:30:00.000','30m',0),
(259,'606c771476a06766c647824e4a973314','2022-10-14 00:59:44.834','2022-10-14 02:53:05.665','[]','executions.$all.compute.time',0,'2022-10-13 07:00:00.000','30m',0),
(260,'6d06a10a215d100b431853f5113cfb14','2022-10-14 00:59:44.836','2022-10-14 02:53:05.667','[]','executions.$all.compute.time',0,'2022-10-13 07:30:00.000','30m',0),
(261,'741009fdd54a6413ae443a18dd856347','2022-10-14 00:59:44.841','2022-10-14 02:53:05.670','[]','executions.$all.compute.time',0,'2022-10-13 08:00:00.000','30m',0),
(262,'f9ffd5476fcd92cea74d2486a6223b69','2022-10-14 00:59:44.843','2022-10-14 02:53:05.672','[]','executions.$all.compute.time',0,'2022-10-13 08:30:00.000','30m',0),
(263,'8859e94ecd4eb5c0dd44f8a6fc816dbc','2022-10-14 00:59:44.845','2022-10-14 02:53:05.675','[]','executions.$all.compute.time',0,'2022-10-13 09:00:00.000','30m',0),
(264,'646b69beb1f0ecf83004980d4a06633e','2022-10-14 00:59:44.848','2022-10-14 02:53:05.677','[]','executions.$all.compute.time',0,'2022-10-13 09:30:00.000','30m',0),
(265,'f2156ac884b4f6d016901a86d0f4fef0','2022-10-14 00:59:44.850','2022-10-14 02:53:05.678','[]','executions.$all.compute.time',0,'2022-10-13 10:00:00.000','30m',0),
(266,'416f148d59725a67d676e02c6b4af9ce','2022-10-14 00:59:44.851','2022-10-14 02:53:05.680','[]','executions.$all.compute.time',0,'2022-10-13 10:30:00.000','30m',0),
(267,'9d5df5c2c66e7db42f144f4c824f0717','2022-10-14 00:59:44.854','2022-10-14 02:53:05.683','[]','executions.$all.compute.time',0,'2022-10-13 11:00:00.000','30m',0),
(268,'56240738205458952ef120ebdb70777c','2022-10-14 00:59:44.857','2022-10-14 02:53:05.685','[]','executions.$all.compute.time',0,'2022-10-13 11:30:00.000','30m',0),
(269,'46770b4d421e99ceb8e8071051771dc5','2022-10-14 00:59:44.858','2022-10-14 02:53:05.687','[]','executions.$all.compute.time',0,'2022-10-13 12:00:00.000','30m',0),
(270,'0ffeec5d89bff844ab251bf881675735','2022-10-14 00:59:44.859','2022-10-14 02:53:05.689','[]','executions.$all.compute.time',0,'2022-10-13 12:30:00.000','30m',0),
(271,'3b71c79ab156a68bf0826322eb1f19f9','2022-10-14 00:59:44.861','2022-10-14 02:53:05.690','[]','executions.$all.compute.time',0,'2022-10-13 13:00:00.000','30m',0),
(272,'b10124b586eeb549782685671c585be8','2022-10-14 00:59:44.862','2022-10-14 02:53:05.692','[]','executions.$all.compute.time',0,'2022-10-13 13:30:00.000','30m',0),
(273,'477ae4e3ffd01530b71459c9085ca446','2022-10-14 00:59:44.864','2022-10-14 02:53:05.695','[]','executions.$all.compute.time',0,'2022-10-13 14:00:00.000','30m',0),
(274,'3491d53671260eb083c550f646f0164f','2022-10-14 00:59:44.865','2022-10-14 02:53:05.697','[]','executions.$all.compute.time',0,'2022-10-13 14:30:00.000','30m',0),
(275,'6221b305cf5f09e1471b70cab43ea79c','2022-10-14 00:59:44.867','2022-10-14 02:53:05.699','[]','executions.$all.compute.time',0,'2022-10-13 15:00:00.000','30m',0),
(276,'fcda05311563a5b7531bba98a45fce38','2022-10-14 00:59:44.870','2022-10-14 02:53:05.702','[]','executions.$all.compute.time',0,'2022-10-13 15:30:00.000','30m',0),
(277,'63f1ad6af6948dca5d11aeecd851d566','2022-10-14 00:59:44.872','2022-10-14 02:53:05.704','[]','executions.$all.compute.time',0,'2022-10-13 16:00:00.000','30m',0),
(278,'01795799697f99dcdbcb8a6135892dce','2022-10-14 00:59:44.874','2022-10-14 02:53:05.707','[]','executions.$all.compute.time',0,'2022-10-13 16:30:00.000','30m',0),
(279,'f84b12b3ad114485c4a00afa0df64612','2022-10-14 00:59:44.876','2022-10-14 02:53:05.710','[]','executions.$all.compute.time',0,'2022-10-13 17:00:00.000','30m',0),
(280,'eb6cffc85ce46e0ba8bdbd8bf52c64c2','2022-10-14 00:59:44.877','2022-10-14 02:53:05.712','[]','executions.$all.compute.time',0,'2022-10-13 17:30:00.000','30m',0),
(281,'458df0741a70cf906936b28dc0bba6cd','2022-10-14 00:59:44.879','2022-10-14 02:53:05.714','[]','executions.$all.compute.time',0,'2022-10-13 18:00:00.000','30m',0),
(282,'781bd9d2ee8912ab225b961ea44a76dc','2022-10-14 00:59:44.882','2022-10-14 02:53:05.717','[]','executions.$all.compute.time',0,'2022-10-13 18:30:00.000','30m',0),
(283,'8fd747cfe17aa03153468707d7d7e8fd','2022-10-14 00:59:44.884','2022-10-14 02:53:05.719','[]','executions.$all.compute.time',0,'2022-10-13 19:00:00.000','30m',0),
(284,'cee3113c0d817274e1e3ace9723943a7','2022-10-14 00:59:44.885','2022-10-14 02:53:05.722','[]','executions.$all.compute.time',0,'2022-10-13 19:30:00.000','30m',0),
(285,'5f18b99503bb5fe41f9d2cc4bb418c1a','2022-10-14 00:59:44.886','2022-10-14 02:53:05.723','[]','executions.$all.compute.time',0,'2022-10-13 20:00:00.000','30m',0),
(286,'535954b632cbcd17233fb4c75716b1d6','2022-10-14 00:59:44.890','2022-10-14 02:53:05.725','[]','executions.$all.compute.time',0,'2022-10-13 20:30:00.000','30m',0),
(287,'7834e6aa3702bda78eda99188f29647c','2022-10-14 00:59:44.891','2022-10-14 02:53:05.727','[]','executions.$all.compute.time',0,'2022-10-13 21:00:00.000','30m',0),
(288,'b30f5d0b830a66a63440f2947faadf53','2022-10-14 00:59:44.892','2022-10-14 02:53:05.729','[]','executions.$all.compute.time',0,'2022-10-13 21:30:00.000','30m',0),
(289,'46a36b037c50d6f31c6236af3afa8913','2022-10-14 00:59:44.893','2022-10-14 02:53:05.731','[]','executions.$all.compute.time',0,'2022-10-13 22:00:00.000','30m',0),
(290,'bf84324f9fdb7cb45689014173dd4625','2022-10-14 00:59:44.895','2022-10-14 02:53:05.733','[]','executions.$all.compute.time',0,'2022-10-13 22:30:00.000','30m',0),
(291,'8ebb939bf56ad0f2454dc67ddbca1d44','2022-10-14 00:59:44.897','2022-10-14 02:53:05.734','[]','executions.$all.compute.time',0,'2022-10-13 23:00:00.000','30m',0),
(292,'1ef2d9398210f7f5694ef102e5b41129','2022-10-14 00:59:44.898','2022-10-14 02:53:05.736','[]','executions.$all.compute.time',0,'2022-10-13 23:30:00.000','30m',0),
(293,'3b1b2dffa98067ea23b94446d0544963','2022-10-14 00:59:44.900','2022-10-14 02:53:05.738','[]','executions.$all.compute.time',0,'2022-10-14 00:00:00.000','30m',0),
(294,'e80f4964f8b7db0d85db3c75bef2b809','2022-10-14 00:59:44.902','2022-10-14 02:53:05.740','[]','executions.$all.compute.time',212,'2022-10-14 00:30:00.000','30m',0),
(295,'ced9b81a890614a34e85c6f52e5b21ee','2022-10-14 00:59:44.908','2022-10-14 00:59:44.908','[]','builds.$all.compute.total',0,'2022-10-13 00:30:00.000','30m',0),
(296,'27be2111a9e69cfa9ede2aa09f568a1c','2022-10-14 00:59:44.909','2022-10-14 00:59:44.909','[]','builds.$all.compute.total',0,'2022-10-13 01:00:00.000','30m',0),
(297,'3ea0945069492d1eb049558d8991b4f4','2022-10-14 00:59:44.911','2022-10-14 01:38:53.965','[]','builds.$all.compute.total',0,'2022-10-13 01:30:00.000','30m',0),
(298,'e27e18c2e58d9a1b2555dfef8e018a7c','2022-10-14 00:59:44.912','2022-10-14 01:38:53.967','[]','builds.$all.compute.total',0,'2022-10-13 02:00:00.000','30m',0),
(299,'21ce2864e815b768e29238f103d0ace3','2022-10-14 00:59:44.914','2022-10-14 02:53:05.754','[]','builds.$all.compute.total',0,'2022-10-13 02:30:00.000','30m',0),
(300,'b34e80b808b8fcadc1500d51e8cc1fae','2022-10-14 00:59:44.915','2022-10-14 02:53:05.756','[]','builds.$all.compute.total',0,'2022-10-13 03:00:00.000','30m',0),
(301,'2aa66ff897761fbd695b84796649e406','2022-10-14 00:59:44.917','2022-10-14 02:53:05.759','[]','builds.$all.compute.total',0,'2022-10-13 03:30:00.000','30m',0),
(302,'2e2576b32e357bfb7becce9c1b0ce67b','2022-10-14 00:59:44.918','2022-10-14 02:53:05.761','[]','builds.$all.compute.total',0,'2022-10-13 04:00:00.000','30m',0),
(303,'ae5dcb24291b58f45a55cd0ae95fd38f','2022-10-14 00:59:44.920','2022-10-14 02:53:05.764','[]','builds.$all.compute.total',0,'2022-10-13 04:30:00.000','30m',0),
(304,'f162b937122a67f527b51ff23163c5a1','2022-10-14 00:59:44.922','2022-10-14 02:53:05.767','[]','builds.$all.compute.total',0,'2022-10-13 05:00:00.000','30m',0),
(305,'ed33400423f31b2ab1ff5a74cc54b487','2022-10-14 00:59:44.926','2022-10-14 02:53:05.770','[]','builds.$all.compute.total',0,'2022-10-13 05:30:00.000','30m',0),
(306,'000ba30770ad7b7ea9abc541c634b961','2022-10-14 00:59:44.928','2022-10-14 02:53:05.773','[]','builds.$all.compute.total',0,'2022-10-13 06:00:00.000','30m',0),
(307,'d1fea889d399b931a314746b6bc8fdb8','2022-10-14 00:59:44.930','2022-10-14 02:53:05.777','[]','builds.$all.compute.total',0,'2022-10-13 06:30:00.000','30m',0),
(308,'58ff3904667249aea3cec9e7130e538e','2022-10-14 00:59:44.932','2022-10-14 02:53:05.781','[]','builds.$all.compute.total',0,'2022-10-13 07:00:00.000','30m',0),
(309,'f4143f46bcdc869dca530ef09b413c4f','2022-10-14 00:59:44.934','2022-10-14 02:53:05.784','[]','builds.$all.compute.total',0,'2022-10-13 07:30:00.000','30m',0),
(310,'cbc5fc136a6016a009d344a286ae4f06','2022-10-14 00:59:44.937','2022-10-14 02:53:05.787','[]','builds.$all.compute.total',0,'2022-10-13 08:00:00.000','30m',0),
(311,'99ac137b5a0578e6b2e73cfa7747b5fe','2022-10-14 00:59:44.939','2022-10-14 02:53:05.790','[]','builds.$all.compute.total',0,'2022-10-13 08:30:00.000','30m',0),
(312,'8c8ec4b4ecec1debbb7eb959f78ce2fd','2022-10-14 00:59:44.940','2022-10-14 02:53:05.792','[]','builds.$all.compute.total',0,'2022-10-13 09:00:00.000','30m',0),
(313,'1441c1813bbcdb60704daf69420b6ac7','2022-10-14 00:59:44.942','2022-10-14 02:53:05.795','[]','builds.$all.compute.total',0,'2022-10-13 09:30:00.000','30m',0),
(314,'9a07866c17cb5832ae7cc9c8b1bdcb19','2022-10-14 00:59:44.945','2022-10-14 02:53:05.797','[]','builds.$all.compute.total',0,'2022-10-13 10:00:00.000','30m',0),
(315,'9c876bd4faab76abe5ed753f196959cc','2022-10-14 00:59:44.947','2022-10-14 02:53:05.799','[]','builds.$all.compute.total',0,'2022-10-13 10:30:00.000','30m',0),
(316,'ab72cbbaf051e17b667c1de31f7569f1','2022-10-14 00:59:44.948','2022-10-14 02:53:05.802','[]','builds.$all.compute.total',0,'2022-10-13 11:00:00.000','30m',0),
(317,'7bf37fdeb2b05fd9e914dd79ea3b1a94','2022-10-14 00:59:44.950','2022-10-14 02:53:05.804','[]','builds.$all.compute.total',0,'2022-10-13 11:30:00.000','30m',0),
(318,'371d0ec40eb81d5d1560f1fc557667e3','2022-10-14 00:59:44.954','2022-10-14 02:53:05.806','[]','builds.$all.compute.total',0,'2022-10-13 12:00:00.000','30m',0),
(319,'1a9d006e2ee0c9f90d72828e97480bf4','2022-10-14 00:59:44.956','2022-10-14 02:53:05.808','[]','builds.$all.compute.total',0,'2022-10-13 12:30:00.000','30m',0),
(320,'50510748736195ffe3f903bc7b3749b5','2022-10-14 00:59:44.957','2022-10-14 02:53:05.810','[]','builds.$all.compute.total',0,'2022-10-13 13:00:00.000','30m',0),
(321,'92141faecb20414cbc4ce6c839cc2002','2022-10-14 00:59:44.958','2022-10-14 02:53:05.812','[]','builds.$all.compute.total',0,'2022-10-13 13:30:00.000','30m',0),
(322,'54b6bf13cd924faeb750ac8b42727207','2022-10-14 00:59:44.960','2022-10-14 02:53:05.814','[]','builds.$all.compute.total',0,'2022-10-13 14:00:00.000','30m',0),
(323,'787509c2ef6ae07f1888050d50790e7e','2022-10-14 00:59:44.962','2022-10-14 02:53:05.816','[]','builds.$all.compute.total',0,'2022-10-13 14:30:00.000','30m',0),
(324,'ffd19d16102f14033a73a700bcdd4559','2022-10-14 00:59:44.963','2022-10-14 02:53:05.817','[]','builds.$all.compute.total',0,'2022-10-13 15:00:00.000','30m',0),
(325,'1fef2d3144811a9a69cae37309484e87','2022-10-14 00:59:44.967','2022-10-14 02:53:05.820','[]','builds.$all.compute.total',0,'2022-10-13 15:30:00.000','30m',0),
(326,'12e72630177135142ff187dd297df123','2022-10-14 00:59:44.968','2022-10-14 02:53:05.823','[]','builds.$all.compute.total',0,'2022-10-13 16:00:00.000','30m',0),
(327,'70a918b514bf11fca3bfe8f13c3c019f','2022-10-14 00:59:44.969','2022-10-14 02:53:05.826','[]','builds.$all.compute.total',0,'2022-10-13 16:30:00.000','30m',0),
(328,'1fdd42f561f5fba0a1b1095606ae938b','2022-10-14 00:59:44.970','2022-10-14 02:53:05.829','[]','builds.$all.compute.total',0,'2022-10-13 17:00:00.000','30m',0),
(329,'e2a5be86f1bbc20189a0c8ce9b8567bc','2022-10-14 00:59:44.971','2022-10-14 02:53:05.831','[]','builds.$all.compute.total',0,'2022-10-13 17:30:00.000','30m',0),
(330,'6d9b1a7aa5b6ecef1007e1ee7fad7f7b','2022-10-14 00:59:44.973','2022-10-14 02:53:05.834','[]','builds.$all.compute.total',0,'2022-10-13 18:00:00.000','30m',0),
(331,'a7d4ebdbb19cbefe5e4ec76d69b30235','2022-10-14 00:59:44.975','2022-10-14 02:53:05.836','[]','builds.$all.compute.total',0,'2022-10-13 18:30:00.000','30m',0),
(332,'376dc150e202c9cb4141b4ffb591b2e7','2022-10-14 00:59:44.978','2022-10-14 02:53:05.838','[]','builds.$all.compute.total',0,'2022-10-13 19:00:00.000','30m',0),
(333,'12cd2a1e682ecc719645fec0bd32d8d4','2022-10-14 00:59:44.979','2022-10-14 02:53:05.841','[]','builds.$all.compute.total',0,'2022-10-13 19:30:00.000','30m',0),
(334,'f37b82d202d0d39c6b1b39e1d39e7ceb','2022-10-14 00:59:44.981','2022-10-14 02:53:05.843','[]','builds.$all.compute.total',0,'2022-10-13 20:00:00.000','30m',0),
(335,'8828dee4d67f5c687d1c5c726cfad02d','2022-10-14 00:59:44.983','2022-10-14 02:53:05.845','[]','builds.$all.compute.total',0,'2022-10-13 20:30:00.000','30m',0),
(336,'6fa5ed36ab545e14e2c48460edc975dd','2022-10-14 00:59:44.984','2022-10-14 02:53:05.848','[]','builds.$all.compute.total',0,'2022-10-13 21:00:00.000','30m',0),
(337,'689f7d5b1e460cda573a6fae47d694fd','2022-10-14 00:59:44.985','2022-10-14 02:53:05.850','[]','builds.$all.compute.total',0,'2022-10-13 21:30:00.000','30m',0),
(338,'dd22e877d6dff63e066485a0b9765388','2022-10-14 00:59:44.987','2022-10-14 02:53:05.852','[]','builds.$all.compute.total',0,'2022-10-13 22:00:00.000','30m',0),
(339,'4299615aa10766dce9e708bd475b38b2','2022-10-14 00:59:44.988','2022-10-14 02:53:05.854','[]','builds.$all.compute.total',0,'2022-10-13 22:30:00.000','30m',0),
(340,'bbf49478cafa4aefe62258c430203745','2022-10-14 00:59:44.989','2022-10-14 02:53:05.856','[]','builds.$all.compute.total',0,'2022-10-13 23:00:00.000','30m',0),
(341,'0f13256a391678bb74179a755d0a3949','2022-10-14 00:59:44.991','2022-10-14 02:53:05.857','[]','builds.$all.compute.total',0,'2022-10-13 23:30:00.000','30m',0),
(342,'7ce723d827d5570ac41c024f1754204a','2022-10-14 00:59:44.994','2022-10-14 02:53:05.859','[]','builds.$all.compute.total',0,'2022-10-14 00:00:00.000','30m',0),
(343,'9a626408f8950237738a47a4d59465dd','2022-10-14 00:59:44.996','2022-10-14 02:53:05.861','[]','builds.$all.compute.total',3,'2022-10-14 00:30:00.000','30m',0),
(344,'6c75b0fac2f8833b6550c45f8998b980','2022-10-14 00:59:45.004','2022-10-14 00:59:45.004','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 00:30:00.000','30m',0),
(345,'ec3f01cc9f72eabd859435480508dcc2','2022-10-14 00:59:45.006','2022-10-14 00:59:45.006','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 01:00:00.000','30m',0),
(346,'376c6bac6725e5d72e55e2a61edf76f4','2022-10-14 00:59:45.007','2022-10-14 01:38:54.171','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 01:30:00.000','30m',0),
(347,'c48a3c194b9fd70409f778db920e7064','2022-10-14 00:59:45.008','2022-10-14 01:38:54.173','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 02:00:00.000','30m',0),
(348,'5690fb8899d711a8fb5e9799218b840f','2022-10-14 00:59:45.009','2022-10-14 02:53:05.881','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 02:30:00.000','30m',0),
(349,'eb1001f90ae4792d93d248a280a452b0','2022-10-14 00:59:45.011','2022-10-14 02:53:05.883','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 03:00:00.000','30m',0),
(350,'6df9077b07c750f675534f7ceb0f6bb8','2022-10-14 00:59:45.015','2022-10-14 02:53:05.885','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 03:30:00.000','30m',0),
(351,'a277a282e1cdd0f45d604a0089ed05df','2022-10-14 00:59:45.019','2022-10-14 02:53:05.887','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 04:00:00.000','30m',0),
(352,'7321e36978a38cf951727d2c45f48beb','2022-10-14 00:59:45.021','2022-10-14 02:53:05.889','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 04:30:00.000','30m',0),
(353,'138609101ed2bc2c4971b36f7f1050b3','2022-10-14 00:59:45.023','2022-10-14 02:53:05.891','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 05:00:00.000','30m',0),
(354,'4ff378a671c6ed483f8335f70ddb9edb','2022-10-14 00:59:45.025','2022-10-14 02:53:05.893','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 05:30:00.000','30m',0),
(355,'a04f913c503e313f5c0a1b5f43ae80ea','2022-10-14 00:59:45.027','2022-10-14 02:53:05.895','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 06:00:00.000','30m',0),
(356,'963efb726aa6dea4c1759d23fa883961','2022-10-14 00:59:45.029','2022-10-14 02:53:05.897','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 06:30:00.000','30m',0),
(357,'5683ac0243b34c6fc77031b097b6f0f8','2022-10-14 00:59:45.033','2022-10-14 02:53:05.898','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 07:00:00.000','30m',0),
(358,'bc0e4647a81269aaeb78d079fa15d8c3','2022-10-14 00:59:45.035','2022-10-14 02:53:05.900','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 07:30:00.000','30m',0),
(359,'0596498ae08f9c6cd9c7a50eb2507962','2022-10-14 00:59:45.037','2022-10-14 02:53:05.902','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 08:00:00.000','30m',0),
(360,'3d3fd5089671757a96a2ff1ad28515aa','2022-10-14 00:59:45.040','2022-10-14 02:53:05.904','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 08:30:00.000','30m',0),
(361,'225dda26036863b3a603afec68139c64','2022-10-14 00:59:45.043','2022-10-14 02:53:05.906','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 09:00:00.000','30m',0),
(362,'2c371ca140ac509708f7cf9c25375b0a','2022-10-14 00:59:45.044','2022-10-14 02:53:05.907','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 09:30:00.000','30m',0),
(363,'93241c3f734a9ee2012ebc9e4720c11a','2022-10-14 00:59:45.046','2022-10-14 02:53:05.909','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 10:00:00.000','30m',0),
(364,'d7e3e1c50efe7c17e8e43e306e114c26','2022-10-14 00:59:45.047','2022-10-14 02:53:05.911','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 10:30:00.000','30m',0),
(365,'8a5e49f972762926f75d57c613aea458','2022-10-14 00:59:45.049','2022-10-14 02:53:05.913','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 11:00:00.000','30m',0),
(366,'a7d0532cdcb94b8e9f81b2cc94ca7073','2022-10-14 00:59:45.050','2022-10-14 02:53:05.915','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 11:30:00.000','30m',0),
(367,'487d0f62495ec04524f3bf2e4724ca82','2022-10-14 00:59:45.054','2022-10-14 02:53:05.918','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 12:00:00.000','30m',0),
(368,'3b34c4c66bada1ad91e545ef2ea1a4c2','2022-10-14 00:59:45.055','2022-10-14 02:53:05.920','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 12:30:00.000','30m',0),
(369,'394583ab4492561db070ee8ff6ff705d','2022-10-14 00:59:45.058','2022-10-14 02:53:05.922','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 13:00:00.000','30m',0),
(370,'ebc9269c7221fde9afff9a76cab08b8e','2022-10-14 00:59:45.060','2022-10-14 02:53:05.924','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 13:30:00.000','30m',0),
(371,'48614e3ff5db518dbea3762926c90593','2022-10-14 00:59:45.061','2022-10-14 02:53:05.927','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 14:00:00.000','30m',0),
(372,'1dfcf52f19a2c302f800e87d4201a8c9','2022-10-14 00:59:45.063','2022-10-14 02:53:05.929','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 14:30:00.000','30m',0),
(373,'3216d39d642602c72ae26191b44a8c81','2022-10-14 00:59:45.064','2022-10-14 02:53:05.930','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 15:00:00.000','30m',0),
(374,'674934723db959d5d0feee74409535e2','2022-10-14 00:59:45.066','2022-10-14 02:53:05.932','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 15:30:00.000','30m',0),
(375,'fa802479c1ae5e13299e4d97f0283e2e','2022-10-14 00:59:45.067','2022-10-14 02:53:05.934','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 16:00:00.000','30m',0),
(376,'26f693125727a9adb879401a0996fb37','2022-10-14 00:59:45.069','2022-10-14 02:53:05.936','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 16:30:00.000','30m',0),
(377,'4e48d6ee8ebc780da6b5507f427ecb5b','2022-10-14 00:59:45.070','2022-10-14 02:53:05.938','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 17:00:00.000','30m',0),
(378,'6b7e2f8aa31ba72092913ee8a89055e8','2022-10-14 00:59:45.071','2022-10-14 02:53:05.939','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 17:30:00.000','30m',0),
(379,'dc29d6bf63fe2da61cf8fec18b1ebcc0','2022-10-14 00:59:45.074','2022-10-14 02:53:05.941','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 18:00:00.000','30m',0),
(380,'d7a986e50d9876cdb0e2d5aa43d89398','2022-10-14 00:59:45.076','2022-10-14 02:53:05.943','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 18:30:00.000','30m',0),
(381,'90d9cf069e1d33b3908b67cd0ed8eca3','2022-10-14 00:59:45.077','2022-10-14 02:53:05.945','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 19:00:00.000','30m',0),
(382,'d61b9ae7b746854ff1840a62b663707b','2022-10-14 00:59:45.079','2022-10-14 02:53:05.947','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 19:30:00.000','30m',0),
(383,'5913520712af16fca98261389d9dca5d','2022-10-14 00:59:45.080','2022-10-14 02:53:05.949','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 20:00:00.000','30m',0),
(384,'6e855f0dab18cdbdb2dd309272bccf8c','2022-10-14 00:59:45.082','2022-10-14 02:53:05.951','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 20:30:00.000','30m',0),
(385,'1918ebd6f7f2ef5bed89be6f43b08217','2022-10-14 00:59:45.083','2022-10-14 02:53:05.954','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 21:00:00.000','30m',0),
(386,'9d697921aeb9b18b3a9a7d17b8d401c8','2022-10-14 00:59:45.084','2022-10-14 02:53:05.957','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 21:30:00.000','30m',0),
(387,'7584748113d2cbb9609bf64279923668','2022-10-14 00:59:45.086','2022-10-14 02:53:05.959','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 22:00:00.000','30m',0),
(388,'2fa9983178d624fa60a9a8bf5fcadaa4','2022-10-14 00:59:45.088','2022-10-14 02:53:05.961','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 22:30:00.000','30m',0),
(389,'630bd87bf02c13a7bf2b6bea76c708ac','2022-10-14 00:59:45.089','2022-10-14 02:53:05.963','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 23:00:00.000','30m',0),
(390,'b0c1cde54c4bb1d40218829b6d11676d','2022-10-14 00:59:45.091','2022-10-14 02:53:05.965','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-13 23:30:00.000','30m',0),
(391,'f73da1da3474295feee9c2e608d98acc','2022-10-14 00:59:45.093','2022-10-14 02:53:05.968','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-14 00:00:00.000','30m',0),
(392,'aca6785b54724a41e1d959773b7b5e7b','2022-10-14 00:59:45.094','2022-10-14 02:53:05.970','[]','executions.63483ec2832951780cf7.compute.total',1,'2022-10-14 00:30:00.000','30m',0),
(393,'45e4bbe6a7960cc8e6e60c4bd757c401','2022-10-14 00:59:45.098','2022-10-14 00:59:45.098','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 00:30:00.000','30m',0),
(394,'a52b122807785e0bc70b86b2b8a4c6d0','2022-10-14 00:59:45.101','2022-10-14 00:59:45.101','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 01:00:00.000','30m',0),
(395,'84272250bfd83747fb779251bb4e5195','2022-10-14 00:59:45.102','2022-10-14 01:38:54.729','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 01:30:00.000','30m',0),
(396,'ed5c990c7cfce0416f10a7ba6d2ba714','2022-10-14 00:59:45.104','2022-10-14 01:38:54.731','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 02:00:00.000','30m',0),
(397,'bdd604721c72b694fba911cf0582368b','2022-10-14 00:59:45.105','2022-10-14 02:53:06.230','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 02:30:00.000','30m',0),
(398,'c1f5509824d1feeee22073131d43db3b','2022-10-14 00:59:45.106','2022-10-14 02:53:06.232','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 03:00:00.000','30m',0),
(399,'33f8fcd9570a86adb8bb466e0411cba0','2022-10-14 00:59:45.108','2022-10-14 02:53:06.234','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 03:30:00.000','30m',0),
(400,'73dbeeb4ac7fedbee8f68c33c48226ff','2022-10-14 00:59:45.111','2022-10-14 02:53:06.236','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 04:00:00.000','30m',0),
(401,'6555ac05cbac2e56b3d1547277bffb68','2022-10-14 00:59:45.112','2022-10-14 02:53:06.238','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 04:30:00.000','30m',0),
(402,'db56f8526a0c79ed86077d6d100a41d7','2022-10-14 00:59:45.114','2022-10-14 02:53:06.240','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 05:00:00.000','30m',0),
(403,'749697a9797dbcdd4e9a6a4cf3d10acf','2022-10-14 00:59:45.115','2022-10-14 02:53:06.241','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 05:30:00.000','30m',0),
(404,'4ebab3bff96a6b0840319d63b1bb6118','2022-10-14 00:59:45.116','2022-10-14 02:53:06.243','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 06:00:00.000','30m',0),
(405,'2b9697489b85c61d77a88792976b6ebd','2022-10-14 00:59:45.118','2022-10-14 02:53:06.245','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 06:30:00.000','30m',0),
(406,'650f0efdc169cefb73162b815b4ceca9','2022-10-14 00:59:45.119','2022-10-14 02:53:06.246','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 07:00:00.000','30m',0),
(407,'d5beabaa62a710cb9068c88fe1c25ddc','2022-10-14 00:59:45.121','2022-10-14 02:53:06.248','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 07:30:00.000','30m',0),
(408,'90e119009b7f8a1112b695ea02abb0c1','2022-10-14 00:59:45.126','2022-10-14 02:53:06.249','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 08:00:00.000','30m',0),
(409,'38c31f3f9aacddb340893f1c102efe84','2022-10-14 00:59:45.128','2022-10-14 02:53:06.251','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 08:30:00.000','30m',0),
(410,'5c7410cd8b447e3f20a8aee8e2b86c7c','2022-10-14 00:59:45.133','2022-10-14 02:53:06.253','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 09:00:00.000','30m',0),
(411,'63bdacccabf0d24489096493f52cd394','2022-10-14 00:59:45.135','2022-10-14 02:53:06.255','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 09:30:00.000','30m',0),
(412,'9b4d6340a8000172393a40902e865e79','2022-10-14 00:59:45.137','2022-10-14 02:53:06.256','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 10:00:00.000','30m',0),
(413,'9f1205fdf5ecbde1cdc4077757d10da3','2022-10-14 00:59:45.138','2022-10-14 02:53:06.258','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 10:30:00.000','30m',0),
(414,'86366f1370017f320bb4a78d76771c26','2022-10-14 00:59:45.140','2022-10-14 02:53:06.260','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 11:00:00.000','30m',0),
(415,'9f8cb9ca803df37096842944e7ed9b75','2022-10-14 00:59:45.141','2022-10-14 02:53:06.262','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 11:30:00.000','30m',0),
(416,'22f703ea43d3882a046378b14c457809','2022-10-14 00:59:45.142','2022-10-14 02:53:06.263','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 12:00:00.000','30m',0),
(417,'490df7b539839c07283f9b6b5b91432e','2022-10-14 00:59:45.145','2022-10-14 02:53:06.265','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 12:30:00.000','30m',0),
(418,'3bc1609511191d0d417b5872c9a766d8','2022-10-14 00:59:45.146','2022-10-14 02:53:06.267','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 13:00:00.000','30m',0),
(419,'df911b5f2b22425cdb2fb839622d99b5','2022-10-14 00:59:45.149','2022-10-14 02:53:06.269','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 13:30:00.000','30m',0),
(420,'9fb5aaf57560d9c74b26ac7b9cfe848b','2022-10-14 00:59:45.151','2022-10-14 02:53:06.270','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 14:00:00.000','30m',0),
(421,'5791e73dae4daeb20dfa1c0e2a229646','2022-10-14 00:59:45.152','2022-10-14 02:53:06.272','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 14:30:00.000','30m',0),
(422,'41e6aa641ca63ec8ef64fdb52101aabe','2022-10-14 00:59:45.154','2022-10-14 02:53:06.274','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 15:00:00.000','30m',0),
(423,'e69da68ee645c93c16741808bb1688a5','2022-10-14 00:59:45.161','2022-10-14 02:53:06.275','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 15:30:00.000','30m',0),
(424,'2d93f94964000884400ffed7a04a50e8','2022-10-14 00:59:45.163','2022-10-14 02:53:06.277','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 16:00:00.000','30m',0),
(425,'0ce2d846414447cda73726ba594eddd4','2022-10-14 00:59:45.164','2022-10-14 02:53:06.279','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 16:30:00.000','30m',0),
(426,'3e4c7d201aad4a388517185c562818fe','2022-10-14 00:59:45.165','2022-10-14 02:53:06.280','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 17:00:00.000','30m',0),
(427,'a28e9fc1aa4f5b0da8cf1a470e2c0b0b','2022-10-14 00:59:45.166','2022-10-14 02:53:06.282','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 17:30:00.000','30m',0),
(428,'86f9b15f6f3573accd28cd8d65117e8c','2022-10-14 00:59:45.169','2022-10-14 02:53:06.284','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 18:00:00.000','30m',0),
(429,'91916b38ddd558e9bc63a3e5cbe5ba91','2022-10-14 00:59:45.170','2022-10-14 02:53:06.286','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 18:30:00.000','30m',0),
(430,'428a63a08c3231013f8b415e6dfa2abe','2022-10-14 00:59:45.171','2022-10-14 02:53:06.287','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 19:00:00.000','30m',0),
(431,'38cf5a698a5b0415581876d6cdbcf7c5','2022-10-14 00:59:45.172','2022-10-14 02:53:06.289','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 19:30:00.000','30m',0),
(432,'b9bd4ed5f37bd1b48b440cedcb2ad683','2022-10-14 00:59:45.174','2022-10-14 02:53:06.291','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 20:00:00.000','30m',0),
(433,'2d9a99354cf27a6c1c7b7bae34acbc44','2022-10-14 00:59:45.175','2022-10-14 02:53:06.293','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 20:30:00.000','30m',0),
(434,'0658e465dffc07bbc6940e953a7c781f','2022-10-14 00:59:45.178','2022-10-14 02:53:06.294','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 21:00:00.000','30m',0),
(435,'9f625dd1e2eb0e91e551302bb7e4637a','2022-10-14 00:59:45.180','2022-10-14 02:53:06.296','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 21:30:00.000','30m',0),
(436,'411902653b81be73588241c6fb314817','2022-10-14 00:59:45.182','2022-10-14 02:53:06.297','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 22:00:00.000','30m',0),
(437,'98373054a93c26ad8bdd3a1d2ef12796','2022-10-14 00:59:45.183','2022-10-14 02:53:06.299','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 22:30:00.000','30m',0),
(438,'dc4a73354ffa0f1c55dcd42503741040','2022-10-14 00:59:45.185','2022-10-14 02:53:06.301','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 23:00:00.000','30m',0),
(439,'e4737ed3fc40be3a56b32cbddf3495cf','2022-10-14 00:59:45.187','2022-10-14 02:53:06.303','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-13 23:30:00.000','30m',0),
(440,'6ebb3c1a149b10d154b17263d54b9a0e','2022-10-14 00:59:45.188','2022-10-14 02:53:06.305','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-14 00:00:00.000','30m',0),
(441,'e14eec8f211531d299cec4edae6b9da6','2022-10-14 00:59:45.190','2022-10-14 02:53:06.307','[]','builds.63483ec2832951780cf7.compute.total',1,'2022-10-14 00:30:00.000','30m',0),
(442,'4a12a69339704ef2a5774d594c6e8644','2022-10-14 00:59:45.191','2022-10-14 00:59:45.191','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 00:30:00.000','30m',0),
(443,'9b604b4d41125ba8a960eb32b0469719','2022-10-14 00:59:45.192','2022-10-14 00:59:45.192','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 01:00:00.000','30m',0),
(444,'316f1a1e83b7897ade3cfbc6a7407e30','2022-10-14 00:59:45.194','2022-10-14 01:38:54.824','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 01:30:00.000','30m',0),
(445,'f724c7b5056f401107086594bd6c50e0','2022-10-14 00:59:45.195','2022-10-14 01:38:54.825','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 02:00:00.000','30m',0),
(446,'4f1e4f76f5d430895d80294bbc0f108a','2022-10-14 00:59:45.198','2022-10-14 02:53:06.315','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 02:30:00.000','30m',0),
(447,'ba9fed554b00b74dde3443ec62c43007','2022-10-14 00:59:45.199','2022-10-14 02:53:06.317','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 03:00:00.000','30m',0),
(448,'c4fd1d47594e33fbf14e3bf6faee5182','2022-10-14 00:59:45.201','2022-10-14 02:53:06.319','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 03:30:00.000','30m',0),
(449,'5e2f2ffb7c2c29776bd9dac451d034df','2022-10-14 00:59:45.202','2022-10-14 02:53:06.321','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 04:00:00.000','30m',0),
(450,'b669bc65f68124a7ec86f26badf45148','2022-10-14 00:59:45.205','2022-10-14 02:53:06.323','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 04:30:00.000','30m',0),
(451,'738ca6cbe5c294067b87d797af874de4','2022-10-14 00:59:45.207','2022-10-14 02:53:06.325','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 05:00:00.000','30m',0),
(452,'8c4ff4301bd707e2819ccefcdde1c813','2022-10-14 00:59:45.208','2022-10-14 02:53:06.326','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 05:30:00.000','30m',0),
(453,'afc4aa5f9dfb0082a09eaa3051cd08b2','2022-10-14 00:59:45.210','2022-10-14 02:53:06.328','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 06:00:00.000','30m',0),
(454,'141c0539ef85c65469a0ef6381046026','2022-10-14 00:59:45.211','2022-10-14 02:53:06.330','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 06:30:00.000','30m',0),
(455,'7200352cf40378d3c00ac536d2a36ddd','2022-10-14 00:59:45.214','2022-10-14 02:53:06.332','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 07:00:00.000','30m',0),
(456,'9f2509985a71d237de0ce7ca1cfee87e','2022-10-14 00:59:45.216','2022-10-14 02:53:06.334','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 07:30:00.000','30m',0),
(457,'e8aab570700f1fe867c0903bb911e572','2022-10-14 00:59:45.218','2022-10-14 02:53:06.336','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 08:00:00.000','30m',0),
(458,'60cb7d8a0d0c68ce3a6f7879e68279e2','2022-10-14 00:59:45.220','2022-10-14 02:53:06.337','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 08:30:00.000','30m',0),
(459,'1ec1f6c667ea7eb62141c1047ce2f30e','2022-10-14 00:59:45.222','2022-10-14 02:53:06.339','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 09:00:00.000','30m',0),
(460,'047f4511a2b473d2c26d1c006b97cf4b','2022-10-14 00:59:45.224','2022-10-14 02:53:06.341','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 09:30:00.000','30m',0),
(461,'b9afa22e43626d6b56c3341bad8ace92','2022-10-14 00:59:45.226','2022-10-14 02:53:06.343','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 10:00:00.000','30m',0),
(462,'dc1d0515b9567e7f6075b3b99f6f0ff9','2022-10-14 00:59:45.231','2022-10-14 02:53:06.344','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 10:30:00.000','30m',0),
(463,'398531f22853e7cd087c6355dbb34e6d','2022-10-14 00:59:45.233','2022-10-14 02:53:06.346','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 11:00:00.000','30m',0),
(464,'f5ff8e27932b6896d3cbeeb9b4889227','2022-10-14 00:59:45.235','2022-10-14 02:53:06.348','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 11:30:00.000','30m',0),
(465,'953f0f76c32bcd2f72cf66f1ced0079c','2022-10-14 00:59:45.239','2022-10-14 02:53:06.350','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 12:00:00.000','30m',0),
(466,'9f652142291708d4467020c73e2d5025','2022-10-14 00:59:45.241','2022-10-14 02:53:06.351','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 12:30:00.000','30m',0),
(467,'e59ecd7aa864d58812242c3fc5f94794','2022-10-14 00:59:45.243','2022-10-14 02:53:06.353','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 13:00:00.000','30m',0),
(468,'f908b1ca6581e1f016787b560accb76d','2022-10-14 00:59:45.245','2022-10-14 02:53:06.355','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 13:30:00.000','30m',0),
(469,'7e861f3d2f7f20f1752ac29e276160ad','2022-10-14 00:59:45.246','2022-10-14 02:53:06.357','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 14:00:00.000','30m',0),
(470,'01d4513c0c6e7f697f6d5c1ef2ec3f42','2022-10-14 00:59:45.247','2022-10-14 02:53:06.359','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 14:30:00.000','30m',0),
(471,'333528a5a14f664f6e2bab3e62d6937b','2022-10-14 00:59:45.248','2022-10-14 02:53:06.361','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 15:00:00.000','30m',0),
(472,'84c20aaaa2e84106e72a698def829903','2022-10-14 00:59:45.252','2022-10-14 02:53:06.363','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 15:30:00.000','30m',0),
(473,'98f3dcb2ae2b4882380bd14a314c0d20','2022-10-14 00:59:45.253','2022-10-14 02:53:06.365','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 16:00:00.000','30m',0),
(474,'b5ce31b242315a975d8c6148af86e5d5','2022-10-14 00:59:45.256','2022-10-14 02:53:06.367','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 16:30:00.000','30m',0),
(475,'5afa4a90512819ff2ef3e67f14d1da78','2022-10-14 00:59:45.257','2022-10-14 02:53:06.369','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 17:00:00.000','30m',0),
(476,'7bcd727fa95d3dc72e66c1dc922094e9','2022-10-14 00:59:45.258','2022-10-14 02:53:06.370','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 17:30:00.000','30m',0),
(477,'2d3e27232616dbddb177686d001fb013','2022-10-14 00:59:45.261','2022-10-14 02:53:06.372','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 18:00:00.000','30m',0),
(478,'ce37e860d29c893a5dd5d91fec063788','2022-10-14 00:59:45.262','2022-10-14 02:53:06.374','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 18:30:00.000','30m',0),
(479,'fcfcdb85539954f7cacafa10fe4d0e1f','2022-10-14 00:59:45.263','2022-10-14 02:53:06.376','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 19:00:00.000','30m',0),
(480,'569e24405e7ea90f515bb841488e6aed','2022-10-14 00:59:45.265','2022-10-14 02:53:06.377','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 19:30:00.000','30m',0),
(481,'b01ed8e5a37e155825c3638cafbb3932','2022-10-14 00:59:45.266','2022-10-14 02:53:06.379','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 20:00:00.000','30m',0),
(482,'47103c020ad99ca29919c28e23f9da9f','2022-10-14 00:59:45.270','2022-10-14 02:53:06.380','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 20:30:00.000','30m',0),
(483,'7a03d3dea894804768f47c0171be8526','2022-10-14 00:59:45.272','2022-10-14 02:53:06.382','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 21:00:00.000','30m',0),
(484,'12228bbf191000638e36b119d416f50b','2022-10-14 00:59:45.274','2022-10-14 02:53:06.384','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 21:30:00.000','30m',0),
(485,'000be4bd10ec338f5c872a196d205870','2022-10-14 00:59:45.275','2022-10-14 02:53:06.386','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 22:00:00.000','30m',0),
(486,'b23e0c7abfde3de3dcc0bf9fb06be5d1','2022-10-14 00:59:45.276','2022-10-14 02:53:06.387','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 22:30:00.000','30m',0),
(487,'1dd27905d785b7fc53fb34e953d92bde','2022-10-14 00:59:45.277','2022-10-14 02:53:06.389','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 23:00:00.000','30m',0),
(488,'ab613c7c4a8e28e9543e3c1a66d59c03','2022-10-14 00:59:45.279','2022-10-14 02:53:06.391','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 23:30:00.000','30m',0),
(489,'3be2fc31ad5e71f4336e421fd20848f8','2022-10-14 00:59:45.280','2022-10-14 02:53:06.393','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-14 00:00:00.000','30m',0),
(490,'94713ec97278d9d7bc12306054cdfebf','2022-10-14 00:59:45.281','2022-10-14 02:53:06.394','[]','builds.63483ecfd7ed4d61e1f2.compute.total',1,'2022-10-14 00:30:00.000','30m',0),
(491,'9977688dea6023d4a2de6d4d4375daef','2022-10-14 00:59:45.282','2022-10-14 00:59:45.282','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 00:30:00.000','30m',0),
(492,'1461daa591cfe003e8af29ff64d57386','2022-10-14 00:59:45.286','2022-10-14 00:59:45.286','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 01:00:00.000','30m',0),
(493,'e6f789858efa9ac7e0813e4c109a545f','2022-10-14 00:59:45.287','2022-10-14 01:38:54.921','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 01:30:00.000','30m',0),
(494,'80cdce94206436c887d2acf17a742ad5','2022-10-14 00:59:45.288','2022-10-14 01:38:54.924','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 02:00:00.000','30m',0),
(495,'693b10b89772fc29bcf8df3d278c4b1f','2022-10-14 00:59:45.290','2022-10-14 02:53:06.402','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 02:30:00.000','30m',0),
(496,'487a206dcc3592b673ad98df98306511','2022-10-14 00:59:45.291','2022-10-14 02:53:06.404','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 03:00:00.000','30m',0),
(497,'363cd135a4761f5c4d2c764ba8eb8a68','2022-10-14 00:59:45.296','2022-10-14 02:53:06.406','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 03:30:00.000','30m',0),
(498,'5b0f645c8767a7d5b0a4d5775435ce3b','2022-10-14 00:59:45.298','2022-10-14 02:53:06.407','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 04:00:00.000','30m',0),
(499,'1c7809840e419cd5f28e708d3035f13d','2022-10-14 00:59:45.299','2022-10-14 02:53:06.409','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 04:30:00.000','30m',0),
(500,'1caae55055aec54218c8a15bf1a9e05f','2022-10-14 00:59:45.301','2022-10-14 02:53:06.410','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 05:00:00.000','30m',0),
(501,'006f196dafe063efc38293f181de6860','2022-10-14 00:59:45.303','2022-10-14 02:53:06.412','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 05:30:00.000','30m',0),
(502,'cf561451216dffa84eac9870cb53d6dc','2022-10-14 00:59:45.305','2022-10-14 02:53:06.414','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 06:00:00.000','30m',0),
(503,'6a19daac1f759b70510568ca7aa064e7','2022-10-14 00:59:45.307','2022-10-14 02:53:06.415','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 06:30:00.000','30m',0),
(504,'9aa978a96b333f3015444aa414da5599','2022-10-14 00:59:45.308','2022-10-14 02:53:06.417','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 07:00:00.000','30m',0),
(505,'839d8a078c98ae553cb49824a318d9f6','2022-10-14 00:59:45.310','2022-10-14 02:53:06.419','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 07:30:00.000','30m',0),
(506,'5e6897c3fa6f887a8e91a1da78ca52a0','2022-10-14 00:59:45.312','2022-10-14 02:53:06.420','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 08:00:00.000','30m',0),
(507,'f1851a548bf35e1877095036819efa4d','2022-10-14 00:59:45.313','2022-10-14 02:53:06.422','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 08:30:00.000','30m',0),
(508,'617dda1e859542c751c0f8c7e4e0a741','2022-10-14 00:59:45.315','2022-10-14 02:53:06.424','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 09:00:00.000','30m',0),
(509,'faba119f3b5cb5299f9fb9fe1a971480','2022-10-14 00:59:45.316','2022-10-14 02:53:06.425','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 09:30:00.000','30m',0),
(510,'cd16db084679c6a84d97f35553820654','2022-10-14 00:59:45.319','2022-10-14 02:53:06.427','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 10:00:00.000','30m',0),
(511,'3b07aab95d104f70a9834f3a01841cf6','2022-10-14 00:59:45.332','2022-10-14 02:53:06.428','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 10:30:00.000','30m',0),
(512,'5221d0af5aa4ab131cf7cee455a0ae51','2022-10-14 00:59:45.336','2022-10-14 02:53:06.430','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 11:00:00.000','30m',0),
(513,'473ae73f14c5c93fd1ca49b051c2b557','2022-10-14 00:59:45.337','2022-10-14 02:53:06.432','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 11:30:00.000','30m',0),
(514,'ec026b95cdd4162e4e0e3a84c6fe5052','2022-10-14 00:59:45.339','2022-10-14 02:53:06.434','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 12:00:00.000','30m',0),
(515,'42d63cdf008fcb5cd03651567983bdf0','2022-10-14 00:59:45.340','2022-10-14 02:53:06.436','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 12:30:00.000','30m',0),
(516,'e3697a3ca4a94b49b8a4c7a16a8f6d56','2022-10-14 00:59:45.342','2022-10-14 02:53:06.437','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 13:00:00.000','30m',0),
(517,'510dde1e8b3b774cdeb126d2f7706247','2022-10-14 00:59:45.343','2022-10-14 02:53:06.439','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 13:30:00.000','30m',0),
(518,'3ebf4dd232ebb8b4b4e2cf331f56d5ff','2022-10-14 00:59:45.344','2022-10-14 02:53:06.441','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 14:00:00.000','30m',0),
(519,'404f4bd114da3da5a70b824322307178','2022-10-14 00:59:45.346','2022-10-14 02:53:06.443','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 14:30:00.000','30m',0),
(520,'01cb5ea1bbf5328fcc368f1e91f3774e','2022-10-14 00:59:45.348','2022-10-14 02:53:06.445','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 15:00:00.000','30m',0),
(521,'c2cbcaddde3d8c66cec99dc8362e08f3','2022-10-14 00:59:45.350','2022-10-14 02:53:06.446','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 15:30:00.000','30m',0),
(522,'8c06a7cd1ff7b60b8337e10fe6071ed0','2022-10-14 00:59:45.352','2022-10-14 02:53:06.448','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 16:00:00.000','30m',0),
(523,'05819070f619a7d344df37d944bcda9b','2022-10-14 00:59:45.353','2022-10-14 02:53:06.450','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 16:30:00.000','30m',0),
(524,'9d1b2b8b4239d07b51029367c156bef1','2022-10-14 00:59:45.355','2022-10-14 02:53:06.452','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 17:00:00.000','30m',0),
(525,'4c293ef78ccfce972cb7793dfe2fe4e5','2022-10-14 00:59:45.356','2022-10-14 02:53:06.454','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 17:30:00.000','30m',0),
(526,'898de60fda5b18c3486caf4dbdd75827','2022-10-14 00:59:45.358','2022-10-14 02:53:06.455','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 18:00:00.000','30m',0),
(527,'b3090e5734cadb6c86ea4cf8f9a5b152','2022-10-14 00:59:45.359','2022-10-14 02:53:06.457','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 18:30:00.000','30m',0),
(528,'20d56912f9341d2c9037d9f9a7464b50','2022-10-14 00:59:45.361','2022-10-14 02:53:06.459','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 19:00:00.000','30m',0),
(529,'2483f532de6d027e55e19dd20d0f083d','2022-10-14 00:59:45.363','2022-10-14 02:53:06.460','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 19:30:00.000','30m',0),
(530,'d3eab051099f9e13c577f054cd8a5bc8','2022-10-14 00:59:45.364','2022-10-14 02:53:06.462','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 20:00:00.000','30m',0),
(531,'f62653279c87c70265aa8dcdc64d90fd','2022-10-14 00:59:45.366','2022-10-14 02:53:06.464','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 20:30:00.000','30m',0),
(532,'5395cc31968ce8ba244be61f793949eb','2022-10-14 00:59:45.367','2022-10-14 02:53:06.465','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 21:00:00.000','30m',0),
(533,'c7d4c91637056b37d6db0b63f4eef4df','2022-10-14 00:59:45.368','2022-10-14 02:53:06.467','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 21:30:00.000','30m',0),
(534,'9122a05f5bf1cf122c1506a9d76e8a6d','2022-10-14 00:59:45.370','2022-10-14 02:53:06.469','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 22:00:00.000','30m',0),
(535,'1adf49348a94aebebee07b5f2d3ef23e','2022-10-14 00:59:45.371','2022-10-14 02:53:06.470','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 22:30:00.000','30m',0),
(536,'4b8eeed556d8409b926307326e47b5d2','2022-10-14 00:59:45.372','2022-10-14 02:53:06.472','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 23:00:00.000','30m',0),
(537,'5fa5d6491e94f79e59d3252aaa2fa91c','2022-10-14 00:59:45.374','2022-10-14 02:53:06.474','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-13 23:30:00.000','30m',0),
(538,'e3a7d5012d87a643ba1bfc5d21224ef9','2022-10-14 00:59:45.375','2022-10-14 02:53:06.475','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-14 00:00:00.000','30m',0),
(539,'5035afd3721f3f0051ceb42987d5951c','2022-10-14 00:59:45.376','2022-10-14 02:53:06.477','[]','builds.63483eddbd1271748d75.compute.total',1,'2022-10-14 00:30:00.000','30m',0),
(540,'98f4f5455ff2945f9c2998f214853726','2022-10-14 00:59:45.380','2022-10-14 00:59:45.380','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 00:30:00.000','30m',0),
(541,'ecaf503a7e6a2bc1e48121069c661e04','2022-10-14 00:59:45.381','2022-10-14 00:59:45.381','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 01:00:00.000','30m',0),
(542,'fb7b2201d6d9b505f201f809b36ea3bc','2022-10-14 00:59:45.382','2022-10-14 01:38:55.016','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 01:30:00.000','30m',0),
(543,'0f75ff847305b5d4ea58a5c88c1eb526','2022-10-14 00:59:45.383','2022-10-14 01:38:55.019','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 02:00:00.000','30m',0),
(544,'b8e06b4293afbe21b0463cdb12635019','2022-10-14 00:59:45.385','2022-10-14 02:53:06.488','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 02:30:00.000','30m',0),
(545,'d5cd72ec5dfdead638f6ae9688ee73cb','2022-10-14 00:59:45.386','2022-10-14 02:53:06.489','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 03:00:00.000','30m',0),
(546,'7ae1b568d2b00a1c9509060996d0fde4','2022-10-14 00:59:45.387','2022-10-14 02:53:06.491','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 03:30:00.000','30m',0),
(547,'209c991a7b00e9874762f49f89a2d799','2022-10-14 00:59:45.389','2022-10-14 02:53:06.493','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 04:00:00.000','30m',0),
(548,'08e8ec1fa70c5e1304991371b4510b72','2022-10-14 00:59:45.390','2022-10-14 02:53:06.494','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 04:30:00.000','30m',0),
(549,'541f72f11e38c0eecc1d7d9ff1269fd4','2022-10-14 00:59:45.393','2022-10-14 02:53:06.496','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 05:00:00.000','30m',0),
(550,'015118d9fb452f1077460552c7c85d71','2022-10-14 00:59:45.394','2022-10-14 02:53:06.498','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 05:30:00.000','30m',0),
(551,'457baf8be02f5f77e57178c42728d5b9','2022-10-14 00:59:45.396','2022-10-14 02:53:06.500','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 06:00:00.000','30m',0),
(552,'12da4fe530478f4b30b8ff05655e06c7','2022-10-14 00:59:45.398','2022-10-14 02:53:06.502','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 06:30:00.000','30m',0),
(553,'ff6656daa73a935b865010161d46bf26','2022-10-14 00:59:45.399','2022-10-14 02:53:06.503','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 07:00:00.000','30m',0),
(554,'5ddd18de45b8630f8aa98ff293a8c628','2022-10-14 00:59:45.401','2022-10-14 02:53:06.505','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 07:30:00.000','30m',0),
(555,'81a9e51668d034479b60bfcd33d6946e','2022-10-14 00:59:45.402','2022-10-14 02:53:06.507','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 08:00:00.000','30m',0),
(556,'30150122b40c4c975dbab6861dcda841','2022-10-14 00:59:45.404','2022-10-14 02:53:06.508','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 08:30:00.000','30m',0),
(557,'6bc14b50301d3b12129e35e08d011ee8','2022-10-14 00:59:45.405','2022-10-14 02:53:06.510','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 09:00:00.000','30m',0),
(558,'c78726daf29e017834e281d142fb7f57','2022-10-14 00:59:45.407','2022-10-14 02:53:06.512','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 09:30:00.000','30m',0),
(559,'bbbc3577c6632c3f2b6c5e79d2abf294','2022-10-14 00:59:45.408','2022-10-14 02:53:06.514','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 10:00:00.000','30m',0),
(560,'e02b92755ca5a2b9d75949987da955e3','2022-10-14 00:59:45.410','2022-10-14 02:53:06.515','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 10:30:00.000','30m',0),
(561,'255b41a8c6ddf0add5a6d692134d47b7','2022-10-14 00:59:45.411','2022-10-14 02:53:06.517','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 11:00:00.000','30m',0),
(562,'bf62c04bb7d52ef9b46cbbf201b18ee0','2022-10-14 00:59:45.412','2022-10-14 02:53:06.519','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 11:30:00.000','30m',0),
(563,'b36774fd9348fac3f5f84c4898a834d5','2022-10-14 00:59:45.413','2022-10-14 02:53:06.521','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 12:00:00.000','30m',0),
(564,'3d7e2bff4a90c76df5c461c6ff3d7c80','2022-10-14 00:59:45.415','2022-10-14 02:53:06.522','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 12:30:00.000','30m',0),
(565,'b402982c0f315ec96f9bb74fc98b1588','2022-10-14 00:59:45.416','2022-10-14 02:53:06.524','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 13:00:00.000','30m',0),
(566,'5142fed30ec191533377f25e95906c25','2022-10-14 00:59:45.417','2022-10-14 02:53:06.526','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 13:30:00.000','30m',0),
(567,'a5bd19b8f4ab0d32bff466f270ec65ea','2022-10-14 00:59:45.419','2022-10-14 02:53:06.527','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 14:00:00.000','30m',0),
(568,'b9df111785bb585ee3bb9eaf64373e21','2022-10-14 00:59:45.421','2022-10-14 02:53:06.529','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 14:30:00.000','30m',0),
(569,'f2d4a97ec7c7c11dda6b81cd09c72bd7','2022-10-14 00:59:45.423','2022-10-14 02:53:06.530','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 15:00:00.000','30m',0),
(570,'c1a15db7bc94ca49976f3148c9f206e2','2022-10-14 00:59:45.425','2022-10-14 02:53:06.532','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 15:30:00.000','30m',0),
(571,'930f290c92f05ae125e03726800838d3','2022-10-14 00:59:45.427','2022-10-14 02:53:06.534','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 16:00:00.000','30m',0),
(572,'ce98d6a12d75e0825f4861bd7167414c','2022-10-14 00:59:45.430','2022-10-14 02:53:06.536','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 16:30:00.000','30m',0),
(573,'bdd752f875a64d56a706a2886c6b258d','2022-10-14 00:59:45.433','2022-10-14 02:53:06.538','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 17:00:00.000','30m',0),
(574,'bb447f969bd7376e2bc53fdb217af312','2022-10-14 00:59:45.435','2022-10-14 02:53:06.539','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 17:30:00.000','30m',0),
(575,'151c24a28bfaa379cdbc4f44182ed596','2022-10-14 00:59:45.437','2022-10-14 02:53:06.541','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 18:00:00.000','30m',0),
(576,'14fc6b9416e59903e488a2fbe97d6636','2022-10-14 00:59:45.439','2022-10-14 02:53:06.543','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 18:30:00.000','30m',0),
(577,'8e732c90a29b1fd4df009999fdc07aa0','2022-10-14 00:59:45.441','2022-10-14 02:53:06.545','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 19:00:00.000','30m',0),
(578,'5dc58da5b1af76531425de6c9e473290','2022-10-14 00:59:45.442','2022-10-14 02:53:06.546','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 19:30:00.000','30m',0),
(579,'af65cdf86ab9e83a06eed197dde8ba5e','2022-10-14 00:59:45.443','2022-10-14 02:53:06.548','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 20:00:00.000','30m',0),
(580,'bcad2246b1aa765be3986990c145d6e8','2022-10-14 00:59:45.445','2022-10-14 02:53:06.549','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 20:30:00.000','30m',0),
(581,'3d21633c87fe8b1718569dd6dfb60b66','2022-10-14 00:59:45.446','2022-10-14 02:53:06.551','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 21:00:00.000','30m',0),
(582,'1eda0d8939432dff7c589ac4983d5d24','2022-10-14 00:59:45.448','2022-10-14 02:53:06.553','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 21:30:00.000','30m',0),
(583,'9aae7f01a980e0dc81724bf169b3c841','2022-10-14 00:59:45.449','2022-10-14 02:53:06.558','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 22:00:00.000','30m',0),
(584,'9021cc86f1a4bf15193f7d2991108b03','2022-10-14 00:59:45.451','2022-10-14 02:53:06.560','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 22:30:00.000','30m',0),
(585,'94c1402b49d9258b9dd38c31ebe1b656','2022-10-14 00:59:45.452','2022-10-14 02:53:06.562','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 23:00:00.000','30m',0),
(586,'48561316e2dbca0415cead6745fa827b','2022-10-14 00:59:45.454','2022-10-14 02:53:06.564','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-13 23:30:00.000','30m',0),
(587,'6c3ad968257a56f4679d11bb51f0a52d','2022-10-14 00:59:45.455','2022-10-14 02:53:06.566','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-14 00:00:00.000','30m',0),
(588,'3c747b6802b33f3e70a8a95c874f416a','2022-10-14 00:59:45.457','2022-10-14 02:53:06.567','[]','executions.63483ec2832951780cf7.compute.time',61,'2022-10-14 00:30:00.000','30m',0),
(589,'7c6c793b264c6f8b7b2936891398edf4','2022-10-14 00:59:45.461','2022-10-14 00:59:45.461','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 00:30:00.000','30m',0),
(590,'499fc545b40cdc930372d1cd372a1996','2022-10-14 00:59:45.462','2022-10-14 00:59:45.462','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 01:00:00.000','30m',0),
(591,'cdbbec15ba39468e286a6f08154d4a97','2022-10-14 00:59:45.464','2022-10-14 01:38:55.256','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 01:30:00.000','30m',0),
(592,'f606ede83cbdcfb5d9b09e900e58b3f5','2022-10-14 00:59:45.465','2022-10-14 01:38:55.258','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 02:00:00.000','30m',0),
(593,'2b3cba61b47015ab25d9514003b69f2d','2022-10-14 00:59:45.467','2022-10-14 02:53:06.752','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 02:30:00.000','30m',0),
(594,'0ea283435acaf832962c96340617f13e','2022-10-14 00:59:45.468','2022-10-14 02:53:06.754','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 03:00:00.000','30m',0),
(595,'187f7029c16e265feacb5362b3f8dc54','2022-10-14 00:59:45.470','2022-10-14 02:53:06.756','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 03:30:00.000','30m',0),
(596,'176313e86770d4d999b164ba6f599530','2022-10-14 00:59:45.472','2022-10-14 02:53:06.758','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 04:00:00.000','30m',0),
(597,'199d3303bd5a1e6b4f47f2d60736d3ec','2022-10-14 00:59:45.473','2022-10-14 02:53:06.760','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 04:30:00.000','30m',0),
(598,'5d01fc68ac33d16cc9aabb0233fe9328','2022-10-14 00:59:45.474','2022-10-14 02:53:06.762','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 05:00:00.000','30m',0),
(599,'5fee3e1dbb3b0767bac6a6cbfe70f653','2022-10-14 00:59:45.475','2022-10-14 02:53:06.764','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 05:30:00.000','30m',0),
(600,'2e3b7e7e56e240329b147d0c90428c04','2022-10-14 00:59:45.477','2022-10-14 02:53:06.766','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 06:00:00.000','30m',0),
(601,'b0f9bc05e3a85a2531f754108ff6166e','2022-10-14 00:59:45.478','2022-10-14 02:53:06.768','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 06:30:00.000','30m',0),
(602,'08c4d6687a53cea21d32a697377a08b7','2022-10-14 00:59:45.480','2022-10-14 02:53:06.769','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 07:00:00.000','30m',0),
(603,'d225396de7de2548242c25acc96e7e72','2022-10-14 00:59:45.481','2022-10-14 02:53:06.771','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 07:30:00.000','30m',0),
(604,'bb47b9ae1ba1dc02b49c75e0d4652db7','2022-10-14 00:59:45.482','2022-10-14 02:53:06.773','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 08:00:00.000','30m',0),
(605,'015ae562362c91f76cac2d75ae273768','2022-10-14 00:59:45.484','2022-10-14 02:53:06.775','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 08:30:00.000','30m',0),
(606,'e55508426fbcfebcc342721a9f2b3f14','2022-10-14 00:59:45.485','2022-10-14 02:53:06.777','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 09:00:00.000','30m',0),
(607,'9673f7039129fb665fda5a7dfc75ae17','2022-10-14 00:59:45.486','2022-10-14 02:53:06.778','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 09:30:00.000','30m',0),
(608,'83ae4880e3c3594e6f4cf2a45b2cc946','2022-10-14 00:59:45.488','2022-10-14 02:53:06.780','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 10:00:00.000','30m',0),
(609,'7082baaa0dd488a1c7353a280697c52a','2022-10-14 00:59:45.489','2022-10-14 02:53:06.782','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 10:30:00.000','30m',0),
(610,'8773ef733881e646edbdc57ee82aaad8','2022-10-14 00:59:45.491','2022-10-14 02:53:06.784','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 11:00:00.000','30m',0),
(611,'f14f6dcdd99c99f3e125edfcd36168f0','2022-10-14 00:59:45.492','2022-10-14 02:53:06.786','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 11:30:00.000','30m',0),
(612,'ecc151e1f2c6ceff8f8619b5e5f595e9','2022-10-14 00:59:45.493','2022-10-14 02:53:06.787','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 12:00:00.000','30m',0),
(613,'5faa0b6d3a6ef2063aff367732b28a61','2022-10-14 00:59:45.495','2022-10-14 02:53:06.789','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 12:30:00.000','30m',0),
(614,'0821c5e792147e5eaeb8971382dc4941','2022-10-14 00:59:45.496','2022-10-14 02:53:06.791','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 13:00:00.000','30m',0),
(615,'f1ff22182707f1e76d47987a9d9795da','2022-10-14 00:59:45.497','2022-10-14 02:53:06.793','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 13:30:00.000','30m',0),
(616,'f7d140c8be80166b72e5be23ea93a178','2022-10-14 00:59:45.499','2022-10-14 02:53:06.794','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 14:00:00.000','30m',0),
(617,'65bbf4f294658d069f1d487c20a10188','2022-10-14 00:59:45.501','2022-10-14 02:53:06.796','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 14:30:00.000','30m',0),
(618,'0ffa210c612a1d2c87e51dd7b9d3dacc','2022-10-14 00:59:45.502','2022-10-14 02:53:06.798','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 15:00:00.000','30m',0),
(619,'88233fc42f644846d50850d5d2ffb632','2022-10-14 00:59:45.504','2022-10-14 02:53:06.799','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 15:30:00.000','30m',0),
(620,'a64e0f3b3c1df4a9912c4d3bdbd6d054','2022-10-14 00:59:45.505','2022-10-14 02:53:06.801','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 16:00:00.000','30m',0),
(621,'544735b81771f1f388997b97dfdce9c3','2022-10-14 00:59:45.506','2022-10-14 02:53:06.803','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 16:30:00.000','30m',0),
(622,'85ab84df113d425b988cd324b6bc7a03','2022-10-14 00:59:45.508','2022-10-14 02:53:06.805','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 17:00:00.000','30m',0),
(623,'d6a37582207016db682d07ff71026a75','2022-10-14 00:59:45.509','2022-10-14 02:53:06.806','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 17:30:00.000','30m',0),
(624,'48008065a2bb965c9e1891f7ebc7178e','2022-10-14 00:59:45.510','2022-10-14 02:53:06.808','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 18:00:00.000','30m',0),
(625,'a7897811632d7e00f89d042dc77ee4ed','2022-10-14 00:59:45.512','2022-10-14 02:53:06.810','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 18:30:00.000','30m',0),
(626,'9443b9bfdb76a7264906e36ec788cdb6','2022-10-14 00:59:45.514','2022-10-14 02:53:06.812','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 19:00:00.000','30m',0),
(627,'925a36d3b25b02e051f1dd17e9cb675e','2022-10-14 00:59:45.515','2022-10-14 02:53:06.814','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 19:30:00.000','30m',0),
(628,'ec3a7f1b302b0d5469fb95816b3ca0a2','2022-10-14 00:59:45.516','2022-10-14 02:53:06.815','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 20:00:00.000','30m',0),
(629,'b4bfad2f800154598a56da5834f827eb','2022-10-14 00:59:45.518','2022-10-14 02:53:06.817','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 20:30:00.000','30m',0),
(630,'6fa4b5b9c9ec0e0e3d561e10f45e2064','2022-10-14 00:59:45.519','2022-10-14 02:53:06.819','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 21:00:00.000','30m',0),
(631,'2a858336d2215c3d169c491044913345','2022-10-14 00:59:45.522','2022-10-14 02:53:06.821','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 21:30:00.000','30m',0),
(632,'1d938f781478d5353f991e2f57993351','2022-10-14 00:59:45.525','2022-10-14 02:53:06.823','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 22:00:00.000','30m',0),
(633,'d1d28ed2f5d98f0e7ff9549bc8acc910','2022-10-14 00:59:45.527','2022-10-14 02:53:06.825','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 22:30:00.000','30m',0),
(634,'9b0898f68a9de3aca475b8058ba932f6','2022-10-14 00:59:45.529','2022-10-14 02:53:06.826','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 23:00:00.000','30m',0),
(635,'79c64176ab99bcd8c7f58a9d8363c24e','2022-10-14 00:59:45.532','2022-10-14 02:53:06.828','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-13 23:30:00.000','30m',0),
(636,'7cde42a61f3a0cd3e241ce1704f43c4c','2022-10-14 00:59:45.534','2022-10-14 02:53:06.830','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-14 00:00:00.000','30m',0),
(637,'62eea43091ad7e4fce62df30db1e82ca','2022-10-14 00:59:45.537','2022-10-14 02:53:06.832','[]','builds.63483ec2832951780cf7.compute.time',2000,'2022-10-14 00:30:00.000','30m',0),
(638,'a2983a5819e9bd4715d1e44454c8b730','2022-10-14 00:59:45.539','2022-10-14 00:59:45.539','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 00:30:00.000','30m',0),
(639,'9b6281fbd9c520a0431fd54199f3b9d4','2022-10-14 00:59:45.541','2022-10-14 00:59:45.541','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 01:00:00.000','30m',0),
(640,'bbae9c82cfd98416cb7bbc8ad45ff302','2022-10-14 00:59:45.544','2022-10-14 01:38:55.350','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 01:30:00.000','30m',0),
(641,'b10826d8d43a600f33d822e53235646a','2022-10-14 00:59:45.545','2022-10-14 01:38:55.352','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 02:00:00.000','30m',0),
(642,'6da116e34cc0cfe825387f1207b2116c','2022-10-14 00:59:45.546','2022-10-14 02:53:06.840','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 02:30:00.000','30m',0),
(643,'bb076a008e4d5429e98e77cb48fc1c84','2022-10-14 00:59:45.548','2022-10-14 02:53:06.842','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 03:00:00.000','30m',0),
(644,'cbcc34af3dad15089d39edbb25146a1b','2022-10-14 00:59:45.550','2022-10-14 02:53:06.844','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 03:30:00.000','30m',0),
(645,'c4a8c2289ef6ede2f9b9c8d2a75014b0','2022-10-14 00:59:45.552','2022-10-14 02:53:06.846','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 04:00:00.000','30m',0),
(646,'2a9bdd7c2d4cd6efc421fab4b6a506ea','2022-10-14 00:59:45.553','2022-10-14 02:53:06.848','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 04:30:00.000','30m',0),
(647,'8f467e78420559553365b24bcda5b427','2022-10-14 00:59:45.555','2022-10-14 02:53:06.849','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 05:00:00.000','30m',0),
(648,'a66751a1af121024aa0023b5605ae859','2022-10-14 00:59:45.557','2022-10-14 02:53:06.851','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 05:30:00.000','30m',0),
(649,'c0888ae1729a46a0095b6e2b6b0fb3bd','2022-10-14 00:59:45.559','2022-10-14 02:53:06.853','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 06:00:00.000','30m',0),
(650,'e6081751e8194ba47fc9cd0b179ed1b0','2022-10-14 00:59:45.561','2022-10-14 02:53:06.855','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 06:30:00.000','30m',0),
(651,'58084b503edaaf6eefbb0adc757e2165','2022-10-14 00:59:45.563','2022-10-14 02:53:06.856','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 07:00:00.000','30m',0),
(652,'fad5526fef3590416e16e9aa675fa6f9','2022-10-14 00:59:45.564','2022-10-14 02:53:06.858','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 07:30:00.000','30m',0),
(653,'7a0a3516de4406db8b644db0007dbc88','2022-10-14 00:59:45.566','2022-10-14 02:53:06.860','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 08:00:00.000','30m',0),
(654,'7dadd482b8168e00951c87635f3bbf6c','2022-10-14 00:59:45.568','2022-10-14 02:53:06.861','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 08:30:00.000','30m',0),
(655,'22b5e2249e6507e442a64868218eb22c','2022-10-14 00:59:45.569','2022-10-14 02:53:06.863','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 09:00:00.000','30m',0),
(656,'c7633a17d4a03ff9b3eca3a87400c548','2022-10-14 00:59:45.570','2022-10-14 02:53:06.865','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 09:30:00.000','30m',0),
(657,'f09f1503fc462d65ccc1a280987365f4','2022-10-14 00:59:45.572','2022-10-14 02:53:06.867','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 10:00:00.000','30m',0),
(658,'f64860a5a68bcd603641fc2bba451e6e','2022-10-14 00:59:45.574','2022-10-14 02:53:06.869','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 10:30:00.000','30m',0),
(659,'3a2c36adaa102763257941535848b0d9','2022-10-14 00:59:45.575','2022-10-14 02:53:06.870','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 11:00:00.000','30m',0),
(660,'179bb98b7e877280d51bb342f32e2bf6','2022-10-14 00:59:45.576','2022-10-14 02:53:06.872','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 11:30:00.000','30m',0),
(661,'573920070d585f646135bd90501997b1','2022-10-14 00:59:45.578','2022-10-14 02:53:06.874','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 12:00:00.000','30m',0),
(662,'4737c09c7c53232eed23cbb14876b2ec','2022-10-14 00:59:45.580','2022-10-14 02:53:06.876','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 12:30:00.000','30m',0),
(663,'b0be7375958499a735d910f45c913170','2022-10-14 00:59:45.581','2022-10-14 02:53:06.878','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 13:00:00.000','30m',0),
(664,'d7f536c69124f2614db67699a490e8e2','2022-10-14 00:59:45.583','2022-10-14 02:53:06.879','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 13:30:00.000','30m',0),
(665,'d99cf0eb6e5745676854b149d27733ad','2022-10-14 00:59:45.585','2022-10-14 02:53:06.881','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 14:00:00.000','30m',0),
(666,'42a13dfd6cfb7a06530b99330a05e325','2022-10-14 00:59:45.586','2022-10-14 02:53:06.883','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 14:30:00.000','30m',0),
(667,'cd197d8a87aae35eed3c6e98adb31ea0','2022-10-14 00:59:45.588','2022-10-14 02:53:06.885','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 15:00:00.000','30m',0),
(668,'504a731d8bf823ed3f8fe97e8a4a60b0','2022-10-14 00:59:45.589','2022-10-14 02:53:06.887','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 15:30:00.000','30m',0),
(669,'460994c5d0181acfb6a5f977f8bfbbab','2022-10-14 00:59:45.590','2022-10-14 02:53:06.889','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 16:00:00.000','30m',0),
(670,'285ab24bd43822883f14d8d20744bc39','2022-10-14 00:59:45.591','2022-10-14 02:53:06.892','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 16:30:00.000','30m',0),
(671,'08ec68bcafdcdb920111d9605e9eb1d4','2022-10-14 00:59:45.593','2022-10-14 02:53:06.894','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 17:00:00.000','30m',0),
(672,'e8c82079c5764acf3c54cd8e7d257784','2022-10-14 00:59:45.594','2022-10-14 02:53:06.896','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 17:30:00.000','30m',0),
(673,'a54c660a8aa3f694be93bc5e237b3d3b','2022-10-14 00:59:45.595','2022-10-14 02:53:06.897','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 18:00:00.000','30m',0),
(674,'100d03d7e1be6c69d70692459f2c9c48','2022-10-14 00:59:45.596','2022-10-14 02:53:06.899','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 18:30:00.000','30m',0),
(675,'c352ad44acbfb736b4789c32385f5a0c','2022-10-14 00:59:45.597','2022-10-14 02:53:06.901','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 19:00:00.000','30m',0),
(676,'68dd2529fc5ff9c5d128fe9bd013c031','2022-10-14 00:59:45.599','2022-10-14 02:53:06.903','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 19:30:00.000','30m',0),
(677,'901e6f3e61d1cc48bc6f4fcafa6ba3e9','2022-10-14 00:59:45.600','2022-10-14 02:53:06.905','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 20:00:00.000','30m',0),
(678,'119250f9ccdfa4045051f4376530f59c','2022-10-14 00:59:45.601','2022-10-14 02:53:06.907','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 20:30:00.000','30m',0),
(679,'8478b4cde678cbdce2934a0c1583344d','2022-10-14 00:59:45.602','2022-10-14 02:53:06.909','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 21:00:00.000','30m',0),
(680,'e7a72617cdfc3a397bfdf8aaec987097','2022-10-14 00:59:45.603','2022-10-14 02:53:06.911','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 21:30:00.000','30m',0),
(681,'29f9b3b2c724834e95ec301d9bad58a5','2022-10-14 00:59:45.605','2022-10-14 02:53:06.913','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 22:00:00.000','30m',0),
(682,'72bc9974273fb5827d896f0c8ebe10af','2022-10-14 00:59:45.606','2022-10-14 02:53:06.915','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 22:30:00.000','30m',0),
(683,'8701a0ee42886a591a028296ec740ea1','2022-10-14 00:59:45.607','2022-10-14 02:53:06.917','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 23:00:00.000','30m',0),
(684,'99b18eef5975e8151d5aab8a4fdf0eca','2022-10-14 00:59:45.608','2022-10-14 02:53:06.919','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 23:30:00.000','30m',0),
(685,'9984ce80dbb3b34ff579452d11c237f7','2022-10-14 00:59:45.609','2022-10-14 02:53:06.920','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-14 00:00:00.000','30m',0),
(686,'f46d5873ad3b54c78d80d9904640d431','2022-10-14 00:59:45.610','2022-10-14 02:53:06.922','[]','builds.63483ecfd7ed4d61e1f2.compute.time',11000,'2022-10-14 00:30:00.000','30m',0),
(687,'12cbb0b37a9888c23561a1eded9d3766','2022-10-14 00:59:45.612','2022-10-14 00:59:45.612','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 00:30:00.000','30m',0),
(688,'dfbd7a975a3537894b2e1fe3312ce938','2022-10-14 00:59:45.614','2022-10-14 00:59:45.614','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 01:00:00.000','30m',0),
(689,'f88bca6a72765900a773c0a81933b937','2022-10-14 00:59:45.615','2022-10-14 01:38:55.454','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 01:30:00.000','30m',0),
(690,'1f4dac58ddd6b052aefbbae61454abeb','2022-10-14 00:59:45.617','2022-10-14 01:38:55.455','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 02:00:00.000','30m',0),
(691,'02dcbaeb25d4a5618c13afb0e0d1b8f0','2022-10-14 00:59:45.618','2022-10-14 02:53:06.931','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 02:30:00.000','30m',0),
(692,'cca9d371082b4f46b828a3644679bcdc','2022-10-14 00:59:45.619','2022-10-14 02:53:06.933','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 03:00:00.000','30m',0),
(693,'c09a9a89e4c76eb770367c5a37f3a1d5','2022-10-14 00:59:45.622','2022-10-14 02:53:06.935','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 03:30:00.000','30m',0),
(694,'931ab6918610481c91db5d34bb7de443','2022-10-14 00:59:45.624','2022-10-14 02:53:06.936','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 04:00:00.000','30m',0),
(695,'e3aa781511ba822d7dac9c89a223fb63','2022-10-14 00:59:45.626','2022-10-14 02:53:06.938','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 04:30:00.000','30m',0),
(696,'31c39523ebceecc75854a36007b08dfc','2022-10-14 00:59:45.628','2022-10-14 02:53:06.939','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 05:00:00.000','30m',0),
(697,'6d20549541d6b8974d95c9c6201a32e9','2022-10-14 00:59:45.629','2022-10-14 02:53:06.941','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 05:30:00.000','30m',0),
(698,'6e5f20ccaf01bfeb2dbd51be3c745609','2022-10-14 00:59:45.631','2022-10-14 02:53:06.943','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 06:00:00.000','30m',0),
(699,'8b379545072831e8a85f32b1614118c1','2022-10-14 00:59:45.633','2022-10-14 02:53:06.944','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 06:30:00.000','30m',0),
(700,'a545c340743d0a9db21dce785eb53bc9','2022-10-14 00:59:45.637','2022-10-14 02:53:06.946','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 07:00:00.000','30m',0),
(701,'ad0c474ddfe5d0621917e5d615eaeffc','2022-10-14 00:59:45.638','2022-10-14 02:53:06.947','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 07:30:00.000','30m',0),
(702,'896b83cd1e7ed7827bd12abb88e02197','2022-10-14 00:59:45.640','2022-10-14 02:53:06.949','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 08:00:00.000','30m',0),
(703,'0077a10f1519babf0d6a6ffbdf76e1ac','2022-10-14 00:59:45.642','2022-10-14 02:53:06.951','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 08:30:00.000','30m',0),
(704,'8343ef96e22e6fda9609d2d5666272ef','2022-10-14 00:59:45.643','2022-10-14 02:53:06.953','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 09:00:00.000','30m',0),
(705,'9dd335762b79668442f5fcdf75f099aa','2022-10-14 00:59:45.644','2022-10-14 02:53:06.954','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 09:30:00.000','30m',0),
(706,'b34c6e47970e2860362977152fc0fdc3','2022-10-14 00:59:45.646','2022-10-14 02:53:06.956','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 10:00:00.000','30m',0),
(707,'0cc0b874fcb6386716e0ff8529b1f60b','2022-10-14 00:59:45.647','2022-10-14 02:53:06.957','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 10:30:00.000','30m',0),
(708,'f602094e7ac2ac7677df8bb3118de30f','2022-10-14 00:59:45.649','2022-10-14 02:53:06.959','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 11:00:00.000','30m',0),
(709,'3be0cad96982f55098172b606c255229','2022-10-14 00:59:45.651','2022-10-14 02:53:06.961','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 11:30:00.000','30m',0),
(710,'fe04f31408ffc8ac4310b2ee522955a5','2022-10-14 00:59:45.652','2022-10-14 02:53:06.962','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 12:00:00.000','30m',0),
(711,'e06f3efcbbaa6ab4485dd03fdeffdc03','2022-10-14 00:59:45.654','2022-10-14 02:53:06.964','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 12:30:00.000','30m',0),
(712,'ffa9a1cacc725b6c03642e225e57b32c','2022-10-14 00:59:45.655','2022-10-14 02:53:06.966','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 13:00:00.000','30m',0),
(713,'5a94f9d7caf712cd31c726260e53e60d','2022-10-14 00:59:45.657','2022-10-14 02:53:06.967','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 13:30:00.000','30m',0),
(714,'0bd74dcc2c5667e1ae385614120ad6fb','2022-10-14 00:59:45.659','2022-10-14 02:53:06.969','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 14:00:00.000','30m',0),
(715,'fb189291e48e514d3be7e4f404971a72','2022-10-14 00:59:45.660','2022-10-14 02:53:06.970','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 14:30:00.000','30m',0),
(716,'37501f8833019cf49cac33f7a7b81a23','2022-10-14 00:59:45.661','2022-10-14 02:53:06.972','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 15:00:00.000','30m',0),
(717,'7d0e00568f8867c658c818b4304757aa','2022-10-14 00:59:45.663','2022-10-14 02:53:06.974','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 15:30:00.000','30m',0),
(718,'abd1fe447ba0b709faf1af1f603f107b','2022-10-14 00:59:45.664','2022-10-14 02:53:06.976','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 16:00:00.000','30m',0),
(719,'5ebd4e57b924ade6e25baa573efd21a1','2022-10-14 00:59:45.665','2022-10-14 02:53:06.977','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 16:30:00.000','30m',0),
(720,'49fccaf321857eb88d2518dafd9532f7','2022-10-14 00:59:45.667','2022-10-14 02:53:06.979','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 17:00:00.000','30m',0),
(721,'586adfcfc9ff585de57af8a0af1da291','2022-10-14 00:59:45.669','2022-10-14 02:53:06.981','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 17:30:00.000','30m',0),
(722,'3a52964d4b37de396c021af6175c0dc5','2022-10-14 00:59:45.670','2022-10-14 02:53:06.984','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 18:00:00.000','30m',0),
(723,'bb4e47edf1875c108e893a71f1550618','2022-10-14 00:59:45.671','2022-10-14 02:53:06.986','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 18:30:00.000','30m',0),
(724,'1c40251f7a4981434f9dd04394bbdb06','2022-10-14 00:59:45.673','2022-10-14 02:53:06.988','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 19:00:00.000','30m',0),
(725,'5c5f4202b6459172ecf3d7d13414be2f','2022-10-14 00:59:45.674','2022-10-14 02:53:06.991','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 19:30:00.000','30m',0),
(726,'defb0b2512f5d4e70ef74927f73d8343','2022-10-14 00:59:45.675','2022-10-14 02:53:06.993','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 20:00:00.000','30m',0),
(727,'cf67424abcb7e1db25eee89fc78fe656','2022-10-14 00:59:45.677','2022-10-14 02:53:06.995','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 20:30:00.000','30m',0),
(728,'e655b90ed30672deb8837bbde521c77f','2022-10-14 00:59:45.679','2022-10-14 02:53:06.997','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 21:00:00.000','30m',0),
(729,'2477e053f3b48f4192d8bf0eb44485da','2022-10-14 00:59:45.680','2022-10-14 02:53:06.999','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 21:30:00.000','30m',0),
(730,'b8fd1028e7c75757ecb3ed6448369939','2022-10-14 00:59:45.682','2022-10-14 02:53:07.001','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 22:00:00.000','30m',0),
(731,'84e8eb1eefae45735281f5779259607c','2022-10-14 00:59:45.684','2022-10-14 02:53:07.003','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 22:30:00.000','30m',0),
(732,'b2eaa571110f43af70a5f457f7eadce8','2022-10-14 00:59:45.685','2022-10-14 02:53:07.005','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 23:00:00.000','30m',0),
(733,'55d051dfcf8fd4c202b7b825a7a0c5f1','2022-10-14 00:59:45.687','2022-10-14 02:53:07.007','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-13 23:30:00.000','30m',0),
(734,'ab1a37053e7d29d34a3a441c8fff3848','2022-10-14 00:59:45.688','2022-10-14 02:53:07.009','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-14 00:00:00.000','30m',0),
(735,'e5b8e71c4b97d3364c073a711527e067','2022-10-14 00:59:45.690','2022-10-14 02:53:07.010','[]','builds.63483eddbd1271748d75.compute.time',6000,'2022-10-14 00:30:00.000','30m',0),
(736,'5273bfeae85ef619428b365759d0f0ed','2022-10-14 00:59:45.700','2022-10-14 00:59:45.906','[]','project.$all.compute.time',0,'2022-10-13 00:30:00.000','30m',0),
(737,'a2c2022cdba258c7f9bdd329a53061a5','2022-10-14 00:59:45.702','2022-10-14 00:59:45.908','[]','project.$all.compute.time',0,'2022-10-13 01:00:00.000','30m',0),
(738,'089b31f27d4e4fbcfed19a791e5f77f8','2022-10-14 00:59:45.703','2022-10-14 01:38:55.815','[]','project.$all.compute.time',0,'2022-10-13 01:30:00.000','30m',0),
(739,'6d8b45b4ca8e6ff371c5182806628575','2022-10-14 00:59:45.705','2022-10-14 01:38:55.818','[]','project.$all.compute.time',0,'2022-10-13 02:00:00.000','30m',0),
(740,'c76dbbf3da7e57213c16db892be69c33','2022-10-14 00:59:45.706','2022-10-14 02:53:07.190','[]','project.$all.compute.time',0,'2022-10-13 02:30:00.000','30m',0),
(741,'1c00e12880e62aae1c10865c9bf8abce','2022-10-14 00:59:45.708','2022-10-14 02:53:07.191','[]','project.$all.compute.time',0,'2022-10-13 03:00:00.000','30m',0),
(742,'ea404d3f21ae4a366a889d9a3ddb077b','2022-10-14 00:59:45.711','2022-10-14 02:53:07.193','[]','project.$all.compute.time',0,'2022-10-13 03:30:00.000','30m',0),
(743,'b9d59356ded74f232406605965bf9ff0','2022-10-14 00:59:45.712','2022-10-14 02:53:07.195','[]','project.$all.compute.time',0,'2022-10-13 04:00:00.000','30m',0),
(744,'717865f7d22990ef056f027582b8f8fd','2022-10-14 00:59:45.714','2022-10-14 02:53:07.196','[]','project.$all.compute.time',0,'2022-10-13 04:30:00.000','30m',0),
(745,'1552347f9567337c97867a666f6f7e82','2022-10-14 00:59:45.716','2022-10-14 02:53:07.198','[]','project.$all.compute.time',0,'2022-10-13 05:00:00.000','30m',0),
(746,'8f292e15f1f1c9a6b14e25a634753244','2022-10-14 00:59:45.718','2022-10-14 02:53:07.199','[]','project.$all.compute.time',0,'2022-10-13 05:30:00.000','30m',0),
(747,'7d13bdcb0e05c344f8ef33a3ce23658a','2022-10-14 00:59:45.719','2022-10-14 02:53:07.200','[]','project.$all.compute.time',0,'2022-10-13 06:00:00.000','30m',0),
(748,'fb74fbeda83cfb075ee976eedb357a39','2022-10-14 00:59:45.721','2022-10-14 02:53:07.202','[]','project.$all.compute.time',0,'2022-10-13 06:30:00.000','30m',0),
(749,'d5b9edd1693cd1000d93333f9854ddce','2022-10-14 00:59:45.724','2022-10-14 02:53:07.204','[]','project.$all.compute.time',0,'2022-10-13 07:00:00.000','30m',0),
(750,'fd2cc75cdab1a27eeb6ee571162d1e37','2022-10-14 00:59:45.726','2022-10-14 02:53:07.205','[]','project.$all.compute.time',0,'2022-10-13 07:30:00.000','30m',0),
(751,'b7707513da89168ac0b0d929ac07543c','2022-10-14 00:59:45.728','2022-10-14 02:53:07.207','[]','project.$all.compute.time',0,'2022-10-13 08:00:00.000','30m',0),
(752,'3ac5cc5b5a90768b9a681474ec343a86','2022-10-14 00:59:45.731','2022-10-14 02:53:07.208','[]','project.$all.compute.time',0,'2022-10-13 08:30:00.000','30m',0),
(753,'c4bb8a094cdf306e4c08329e74f0fe8e','2022-10-14 00:59:45.734','2022-10-14 02:53:07.210','[]','project.$all.compute.time',0,'2022-10-13 09:00:00.000','30m',0),
(754,'caef81755540e4b4e6f0c9c842627089','2022-10-14 00:59:45.736','2022-10-14 02:53:07.211','[]','project.$all.compute.time',0,'2022-10-13 09:30:00.000','30m',0),
(755,'f28e0a23ac926dd9f55f7a3686b5e33f','2022-10-14 00:59:45.739','2022-10-14 02:53:07.213','[]','project.$all.compute.time',0,'2022-10-13 10:00:00.000','30m',0),
(756,'844d367bf2369e029ac0b6bd259b8fb9','2022-10-14 00:59:45.741','2022-10-14 02:53:07.214','[]','project.$all.compute.time',0,'2022-10-13 10:30:00.000','30m',0),
(757,'aa6990c4f745a6eec8bd72ea61bee562','2022-10-14 00:59:45.744','2022-10-14 02:53:07.216','[]','project.$all.compute.time',0,'2022-10-13 11:00:00.000','30m',0),
(758,'6ee7be2f8914664ae65efeb2e4c8caec','2022-10-14 00:59:45.745','2022-10-14 02:53:07.218','[]','project.$all.compute.time',0,'2022-10-13 11:30:00.000','30m',0),
(759,'c7ddf15865b87e9f06d90ea604876b9f','2022-10-14 00:59:45.747','2022-10-14 02:53:07.220','[]','project.$all.compute.time',0,'2022-10-13 12:00:00.000','30m',0),
(760,'74ee1b46ce82537aa4ebd56172a3e569','2022-10-14 00:59:45.748','2022-10-14 02:53:07.221','[]','project.$all.compute.time',0,'2022-10-13 12:30:00.000','30m',0),
(761,'0610f2dda0808df6c9dd3bd2e974b6fb','2022-10-14 00:59:45.751','2022-10-14 02:53:07.223','[]','project.$all.compute.time',0,'2022-10-13 13:00:00.000','30m',0),
(762,'2d3e8edfde8e6c222d88931feb618fb5','2022-10-14 00:59:45.752','2022-10-14 02:53:07.225','[]','project.$all.compute.time',0,'2022-10-13 13:30:00.000','30m',0),
(763,'14458c302d281e5b21ddace4f9eb4a34','2022-10-14 00:59:45.754','2022-10-14 02:53:07.227','[]','project.$all.compute.time',0,'2022-10-13 14:00:00.000','30m',0),
(764,'4ad6113491317286d096a408a267d9cb','2022-10-14 00:59:45.756','2022-10-14 02:53:07.229','[]','project.$all.compute.time',0,'2022-10-13 14:30:00.000','30m',0),
(765,'c18e33d50cd20d02d2f4c4a9c0668874','2022-10-14 00:59:45.758','2022-10-14 02:53:07.231','[]','project.$all.compute.time',0,'2022-10-13 15:00:00.000','30m',0),
(766,'709be968c20a31e99fcee7bf555997c9','2022-10-14 00:59:45.760','2022-10-14 02:53:07.232','[]','project.$all.compute.time',0,'2022-10-13 15:30:00.000','30m',0),
(767,'8a3599bfb07c87d0c4d34cda406bd5d8','2022-10-14 00:59:45.761','2022-10-14 02:53:07.234','[]','project.$all.compute.time',0,'2022-10-13 16:00:00.000','30m',0),
(768,'a3fa7fac193061ce213951a9b0d078c2','2022-10-14 00:59:45.763','2022-10-14 02:53:07.236','[]','project.$all.compute.time',0,'2022-10-13 16:30:00.000','30m',0),
(769,'c602156bfe450989c651673f0964b323','2022-10-14 00:59:45.765','2022-10-14 02:53:07.238','[]','project.$all.compute.time',0,'2022-10-13 17:00:00.000','30m',0),
(770,'b73c2474ecdc4b3f9a3995cd20199625','2022-10-14 00:59:45.766','2022-10-14 02:53:07.240','[]','project.$all.compute.time',0,'2022-10-13 17:30:00.000','30m',0),
(771,'0081c58cb2a2e17a19482c680acbc8ed','2022-10-14 00:59:45.768','2022-10-14 02:53:07.241','[]','project.$all.compute.time',0,'2022-10-13 18:00:00.000','30m',0),
(772,'351f1736fdc05fce952b0fae1937b8e3','2022-10-14 00:59:45.769','2022-10-14 02:53:07.243','[]','project.$all.compute.time',0,'2022-10-13 18:30:00.000','30m',0),
(773,'4a2ed10e553ed93994bf8c61999df824','2022-10-14 00:59:45.771','2022-10-14 02:53:07.245','[]','project.$all.compute.time',0,'2022-10-13 19:00:00.000','30m',0),
(774,'9df2d47d0470b947f5cf639e87cdd8b0','2022-10-14 00:59:45.772','2022-10-14 02:53:07.246','[]','project.$all.compute.time',0,'2022-10-13 19:30:00.000','30m',0),
(775,'4ce99216af58f49659755293c2970ecb','2022-10-14 00:59:45.774','2022-10-14 02:53:07.248','[]','project.$all.compute.time',0,'2022-10-13 20:00:00.000','30m',0),
(776,'3d8f05cd12b880aa861cf693b84ce4d2','2022-10-14 00:59:45.776','2022-10-14 02:53:07.250','[]','project.$all.compute.time',0,'2022-10-13 20:30:00.000','30m',0),
(777,'cc405a35402f8ad09c504b0ad106ffe4','2022-10-14 00:59:45.778','2022-10-14 02:53:07.251','[]','project.$all.compute.time',0,'2022-10-13 21:00:00.000','30m',0),
(778,'c838653c92e61d13538f3024c26b2760','2022-10-14 00:59:45.780','2022-10-14 02:53:07.253','[]','project.$all.compute.time',0,'2022-10-13 21:30:00.000','30m',0),
(779,'21e92f49e8e81264b79c1e795ddd249f','2022-10-14 00:59:45.781','2022-10-14 02:53:07.255','[]','project.$all.compute.time',0,'2022-10-13 22:00:00.000','30m',0),
(780,'dd691eaf3bfaa2fb794a496a089714fc','2022-10-14 00:59:45.783','2022-10-14 02:53:07.257','[]','project.$all.compute.time',0,'2022-10-13 22:30:00.000','30m',0),
(781,'0f0190a8d853e82764de0215dff4e912','2022-10-14 00:59:45.784','2022-10-14 02:53:07.259','[]','project.$all.compute.time',0,'2022-10-13 23:00:00.000','30m',0),
(782,'873860892ae4e27fbbe0a3e7f6d167a7','2022-10-14 00:59:45.785','2022-10-14 02:53:07.260','[]','project.$all.compute.time',0,'2022-10-13 23:30:00.000','30m',0),
(783,'70da012295eef5782e37efb68e4d00b4','2022-10-14 00:59:45.787','2022-10-14 02:53:07.262','[]','project.$all.compute.time',0,'2022-10-14 00:00:00.000','30m',0),
(784,'e54daa9683a27368a7acc5f21cef502a','2022-10-14 00:59:45.788','2022-10-14 02:53:07.264','[]','project.$all.compute.time',6149,'2022-10-14 00:30:00.000','30m',0),
(785,'0c90d2e2f23995ac42facaa3f210ecd9','2022-10-14 01:00:16.020','2022-10-14 02:53:05.021','[]','project.$all.network.bandwidth',0,'2022-10-14 01:00:00.000','30m',0),
(786,'0127962b4c66be549bfe092d2aeac01a','2022-10-14 01:00:16.026','2022-10-14 02:53:05.223','[]','project.$all.network.inbound',0,'2022-10-14 01:00:00.000','30m',0),
(787,'8b99095813276d1afc2b5494b694c134','2022-10-14 01:00:16.049','2022-10-14 02:53:05.340','[]','project.$all.network.outbound',0,'2022-10-14 01:00:00.000','30m',0),
(788,'a36ae9d0859825c31d73509b427c0843','2022-10-14 01:00:16.124','2022-10-14 02:53:05.519','[]','executions.$all.compute.total',0,'2022-10-14 01:00:00.000','30m',0),
(789,'9a46ec101ec99e991ee922d55133cbca','2022-10-14 01:00:16.131','2022-10-14 02:53:05.613','[]','builds.$all.compute.time',0,'2022-10-14 01:00:00.000','30m',0),
(790,'938296558aba71c3ccd7c411b491e8f4','2022-10-14 01:00:16.137','2022-10-14 02:53:05.742','[]','executions.$all.compute.time',0,'2022-10-14 01:00:00.000','30m',0),
(791,'7c2eff4fb97e5bb3275f56b1ded7edb9','2022-10-14 01:00:16.143','2022-10-14 02:53:05.863','[]','builds.$all.compute.total',0,'2022-10-14 01:00:00.000','30m',0),
(792,'fbdc9e56804ff57cd934d82aeab9ab58','2022-10-14 01:00:16.156','2022-10-14 02:53:05.973','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-14 01:00:00.000','30m',0),
(793,'23dcf5a12f07a82cd6fd4d54ab8550c7','2022-10-14 01:00:16.158','2022-10-14 02:53:06.119','[]','executions.63483ecfd7ed4d61e1f2.compute.total',1,'2022-10-14 00:30:00.000','30m',0),
(794,'1d9fe5edc4ae5c91788f5a5487960bb8','2022-10-14 01:00:16.160','2022-10-14 02:53:06.121','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-14 01:00:00.000','30m',0),
(795,'761527715b0ceebd6c2238953e29d0ed','2022-10-14 01:00:16.161','2022-10-14 02:53:06.219','[]','executions.63483eddbd1271748d75.compute.total',1,'2022-10-14 00:30:00.000','30m',0),
(796,'6ee8b5ff27b42a58bafff1c849bedc28','2022-10-14 01:00:16.163','2022-10-14 02:53:06.220','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-14 01:00:00.000','30m',0),
(797,'7933395ae3257e71bd8964559e082be0','2022-10-14 01:00:16.169','2022-10-14 02:53:06.309','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-14 01:00:00.000','30m',0),
(798,'546f4995ba322c9f887dd471a4515717','2022-10-14 01:00:16.172','2022-10-14 02:53:06.396','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-14 01:00:00.000','30m',0),
(799,'54ff3d015f2d85cdbacbd958cb5185b8','2022-10-14 01:00:16.178','2022-10-14 02:53:06.479','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-14 01:00:00.000','30m',0),
(800,'fa78584a01f97152069bba0601e309bc','2022-10-14 01:00:16.184','2022-10-14 02:53:06.569','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-14 01:00:00.000','30m',0),
(801,'ce6b6c7542db9fb99a20f0fe77166e0e','2022-10-14 01:00:16.185','2022-10-14 02:53:06.655','[]','executions.63483ecfd7ed4d61e1f2.compute.time',2,'2022-10-14 00:30:00.000','30m',0),
(802,'12d586e427ce03f97eab1b50197d04c7','2022-10-14 01:00:16.187','2022-10-14 02:53:06.656','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-14 01:00:00.000','30m',0),
(803,'95b6a28aa302a721efdec5507c1807c0','2022-10-14 01:00:16.188','2022-10-14 02:53:06.741','[]','executions.63483eddbd1271748d75.compute.time',149,'2022-10-14 00:30:00.000','30m',0),
(804,'add67893c42684913e26f6e54b1f0958','2022-10-14 01:00:16.190','2022-10-14 02:53:06.743','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-14 01:00:00.000','30m',0),
(805,'5778b65e2d7795b23a70ae9ceb81f1fd','2022-10-14 01:00:16.196','2022-10-14 02:53:06.834','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-14 01:00:00.000','30m',0),
(806,'2c1e0052314028ad1e2273e375df6567','2022-10-14 01:00:16.200','2022-10-14 02:53:06.924','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-14 01:00:00.000','30m',0),
(807,'7f8982c955cd7b6f1bc6afae9b572b20','2022-10-14 01:00:16.204','2022-10-14 02:53:07.012','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-14 01:00:00.000','30m',0),
(808,'e02466b1160ab02ef9f4e75a9a0e9ebc','2022-10-14 01:00:16.218','2022-10-14 02:53:07.266','[]','project.$all.compute.time',0,'2022-10-14 01:00:00.000','30m',0),
(809,'6a2d51619b90f65625a26f47508899bf','2022-10-14 01:10:43.476','2022-10-14 01:25:43.720','[]','users.$all.count.total',0,'2022-10-14 01:00:00.000','30m',2),
(810,'4c90b35b6011523da4d9bac585d389df','2022-10-14 01:10:43.478','2022-10-14 02:53:04.350','[]','users.$all.count.total',2,'2022-10-14 00:00:00.000','1d',2),
(811,'0e7825f28b24735e63df29f539588e42','2022-10-14 01:10:43.481','2022-10-14 01:25:43.725','[]','databases.$all.count.total',0,'2022-10-14 01:00:00.000','30m',2),
(812,'30cd9e8ab7ca327608b361756014edc7','2022-10-14 01:10:43.484','2022-10-14 02:53:04.361','[]','databases.$all.count.total',1,'2022-10-14 00:00:00.000','1d',2),
(813,'c3c409ce3fb15d8081895b70e788f8a7','2022-10-14 01:10:43.486','2022-10-14 01:25:43.729','[]','collections.$all.count.total',0,'2022-10-14 01:00:00.000','30m',2),
(814,'16f033ad10ae73080595f253c4fc157c','2022-10-14 01:10:43.487','2022-10-14 02:53:04.416','[]','collections.$all.count.total',1,'2022-10-14 00:00:00.000','1d',2),
(815,'38b5781b0233f42e68e7a6069e81f21c','2022-10-14 01:10:43.488','2022-10-14 01:25:43.732','[]','documents.$all.count.total',0,'2022-10-14 01:00:00.000','30m',2),
(816,'472951d5453e2eb933cd1f284c0f682c','2022-10-14 01:10:43.490','2022-10-14 02:53:04.422','[]','documents.$all.count.total',4,'2022-10-14 00:00:00.000','1d',2),
(817,'a298cc42feafff303b996eb62297e0d9','2022-10-14 01:10:43.492','2022-10-14 01:25:43.736','[]','buckets.$all.count.total',0,'2022-10-14 01:00:00.000','30m',2),
(818,'f6918292956f1633a81af42c43a4d98e','2022-10-14 01:10:43.493','2022-10-14 02:53:04.429','[]','buckets.$all.count.total',1,'2022-10-14 00:00:00.000','1d',2),
(819,'7dae08b98a554585f629f12100cf0382','2022-10-14 01:10:43.496','2022-10-14 01:25:43.740','[]','files.$all.count.total',0,'2022-10-14 01:00:00.000','30m',2),
(820,'d0eac0a6a8fd4469e42372354f5a3704','2022-10-14 01:10:43.498','2022-10-14 02:53:04.448','[]','files.$all.count.total',1,'2022-10-14 00:00:00.000','1d',2),
(821,'e62e33b52d1aea3d87630a7bc967d824','2022-10-14 01:10:43.499','2022-10-14 01:25:43.744','[]','files.$all.storage.size',0,'2022-10-14 01:00:00.000','30m',2),
(822,'c89877e18f72fcb34fa77cbcc453287d','2022-10-14 01:10:43.500','2022-10-14 02:53:04.457','[]','files.$all.storage.size',24444,'2022-10-14 00:00:00.000','1d',2),
(823,'4f36884a4804272a2ef85f4ed4cec784','2022-10-14 01:10:43.502','2022-10-14 01:25:43.748','[]','deployments.$all.storage.size',8714,'2022-10-14 01:00:00.000','30m',2),
(824,'d6dcf92027bd3d635649e30f4c6f4f9a','2022-10-14 01:10:43.503','2022-10-14 02:53:04.463','[]','deployments.$all.storage.size',14724,'2022-10-14 00:00:00.000','1d',2),
(825,'6245ee782b9f438e0b9a62e402a8639d','2022-10-14 01:10:43.504','2022-10-14 01:25:43.751','[]','project.$all.storage.size',8714,'2022-10-14 01:00:00.000','30m',2),
(826,'f40ef297421811f6590e879300045e88','2022-10-14 01:10:43.505','2022-10-14 02:53:04.468','[]','project.$all.storage.size',39168,'2022-10-14 00:00:00.000','1d',2),
(827,'ff712379c10e20ae80369fc56795e176','2022-10-14 01:10:43.509','2022-10-14 02:53:04.474','[]','project.$all.network.requests',0,'2022-10-14 00:00:00.000','1d',2),
(828,'a3253348a0e46afff1e86ec2afab5b83','2022-10-14 01:10:43.512','2022-10-14 02:53:04.477','[]','project.$all.network.bandwidth',0,'2022-10-14 00:00:00.000','1d',2),
(829,'ebeec807953a6c952fd298d4db32e62d','2022-10-14 01:10:43.514','2022-10-14 02:53:04.511','[]','project.$all.network.inbound',0,'2022-10-14 00:00:00.000','1d',2),
(830,'b71fdda10c39265ef42f250a6fea6090','2022-10-14 01:10:43.516','2022-10-14 02:53:04.514','[]','project.$all.network.outbound',0,'2022-10-14 00:00:00.000','1d',2),
(831,'460686d39996a4a678d3322932764b3f','2022-10-14 01:10:43.517','2022-10-14 02:53:04.516','[]','project.$all.network.requests',0,'2022-10-01 00:00:00.000','1mo',2),
(832,'5b8d7ade14008d87256337ff9849ae64','2022-10-14 01:10:43.519','2022-10-14 02:53:04.519','[]','project.$all.network.bandwidth',0,'2022-10-01 00:00:00.000','1mo',2),
(833,'e5e478b68b5d8b427c32a33b85c946a2','2022-10-14 01:10:43.522','2022-10-14 02:53:04.522','[]','project.$all.network.inbound',0,'2022-10-01 00:00:00.000','1mo',2),
(834,'fdc2a8269838b3c1c858d602d4d591f0','2022-10-14 01:10:43.524','2022-10-14 02:53:04.524','[]','project.$all.network.outbound',0,'2022-10-01 00:00:00.000','1mo',2),
(835,'6cf10af2b844f9d689eb75de56e31a4c','2022-10-14 01:10:43.525','2022-10-14 02:53:04.527','[]','project.$all.compute.total',0,'2022-10-14 00:00:00.000','1d',2),
(836,'9021abd6a6139f4677e13624c639dc89','2022-10-14 01:10:43.527','2022-10-14 02:53:04.529','[]','project.$all.compute.total',0,'2022-10-01 00:00:00.000','1mo',2),
(837,'b291976b512edd9f6b8653164233449f','2022-10-14 01:10:43.529','2022-10-14 02:53:04.532','[]','project.$all.compute.time',10576,'2022-10-14 00:00:00.000','1d',2),
(838,'0b09e0685d641efc10193fe424ebcd74','2022-10-14 01:10:43.531','2022-10-14 02:53:04.535','[]','project.$all.compute.time',10576,'2022-10-01 00:00:00.000','1mo',2),
(839,'f431f59bdb511cd9b64cd1d06ea4e793','2022-10-14 01:10:43.533','2022-10-14 02:53:04.537','[]','executions.$all.compute.total',11,'2022-10-14 00:00:00.000','1d',2),
(840,'dc3ec0e1744aada93f6a735fe4c58d81','2022-10-14 01:10:43.535','2022-10-14 02:53:04.540','[]','executions.$all.compute.total',11,'2022-10-01 00:00:00.000','1mo',2),
(841,'b96f81c608cb63cfeb7a045ab797c7b4','2022-10-14 01:10:43.537','2022-10-14 02:53:04.543','[]','executions.$all.compute.success',0,'2022-10-14 00:00:00.000','1d',2),
(842,'ad08c8aa14391a162b4593a864332364','2022-10-14 01:10:43.539','2022-10-14 02:53:04.546','[]','executions.$all.compute.success',0,'2022-10-01 00:00:00.000','1mo',2),
(843,'fe55dcede96b608b579349aa1a3b7c87','2022-10-14 01:10:43.541','2022-10-14 02:53:04.549','[]','executions.$all.compute.failure',0,'2022-10-14 00:00:00.000','1d',2),
(844,'ff52495dc85b0e24c160d6ce4aa270f1','2022-10-14 01:10:43.543','2022-10-14 02:53:04.551','[]','executions.$all.compute.failure',0,'2022-10-01 00:00:00.000','1mo',2),
(845,'58f6dd53c16581ccfdf89e9f15aa3687','2022-10-14 01:10:43.545','2022-10-14 02:53:04.555','[]','executions.$all.compute.time',821,'2022-10-14 00:00:00.000','1d',2),
(846,'c9cb23f06fd5db4d921fcd1f1b48313a','2022-10-14 01:10:43.547','2022-10-14 02:53:04.558','[]','executions.$all.compute.time',821,'2022-10-01 00:00:00.000','1mo',2),
(847,'d72ddd59495876675d7399aaa8749779','2022-10-14 01:10:43.548','2022-10-14 02:53:04.561','[]','builds.$all.compute.total',5,'2022-10-14 00:00:00.000','1d',2),
(848,'45411ab2d2a7912c4a42436472c2237e','2022-10-14 01:10:43.550','2022-10-14 02:53:04.563','[]','builds.$all.compute.total',5,'2022-10-01 00:00:00.000','1mo',2),
(849,'cb955a90c78f910297c7a8379dea22f4','2022-10-14 01:10:43.551','2022-10-14 02:53:04.566','[]','builds.$all.compute.success',0,'2022-10-14 00:00:00.000','1d',2),
(850,'aef8ca05b232492978c48254cdea150b','2022-10-14 01:10:43.553','2022-10-14 02:53:04.569','[]','builds.$all.compute.success',0,'2022-10-01 00:00:00.000','1mo',2),
(851,'e3a20b83c390b0c189be4f7665ccdb1a','2022-10-14 01:10:43.554','2022-10-14 02:53:04.572','[]','builds.$all.compute.failure',0,'2022-10-14 00:00:00.000','1d',2),
(852,'1fc02a6036ca64a6aec483c371a5f4e8','2022-10-14 01:10:43.556','2022-10-14 02:53:04.575','[]','builds.$all.compute.failure',0,'2022-10-01 00:00:00.000','1mo',2),
(853,'60ec7f6ae4d64a12a0754f5b73bc328d','2022-10-14 01:10:43.558','2022-10-14 02:53:04.578','[]','builds.$all.compute.time',821,'2022-10-14 00:00:00.000','1d',2),
(854,'9785566718dea6e0de127d57acb1a509','2022-10-14 01:10:43.560','2022-10-14 02:53:04.581','[]','builds.$all.compute.time',821,'2022-10-01 00:00:00.000','1mo',2),
(855,'631048b453d899418659594233db1b17','2022-10-14 01:10:43.563','2022-10-14 02:53:04.609','[]','executions.63483ec2832951780cf7.compute.total',2,'2022-10-14 00:00:00.000','1d',2),
(856,'835654fc04daeb559b097fd7106e91c2','2022-10-14 01:10:43.565','2022-10-14 02:53:04.613','[]','executions.63483ec2832951780cf7.compute.total',2,'2022-10-01 00:00:00.000','1mo',2),
(857,'7933bb8bd0c721c3d6271ec098c16c2f','2022-10-14 01:10:43.567','2022-10-14 02:53:04.616','[]','executions.63483ec2832951780cf7.compute.success',0,'2022-10-14 00:00:00.000','1d',2),
(858,'6ad8b68395b81f1c9f7af4f1fa055f7c','2022-10-14 01:10:43.568','2022-10-14 02:53:04.619','[]','executions.63483ec2832951780cf7.compute.success',0,'2022-10-01 00:00:00.000','1mo',2),
(859,'d2e5e0bb29f66469ac95a8871aad6344','2022-10-14 01:10:43.569','2022-10-14 02:53:04.623','[]','executions.63483ec2832951780cf7.compute.failure',0,'2022-10-14 00:00:00.000','1d',2),
(860,'ec3c49ad6e7843648060c5373b9a185e','2022-10-14 01:10:43.571','2022-10-14 02:53:04.626','[]','executions.63483ec2832951780cf7.compute.failure',0,'2022-10-01 00:00:00.000','1mo',2),
(861,'4a3009657e3f6809197492921d2b87a8','2022-10-14 01:10:43.573','2022-10-14 02:53:04.629','[]','executions.63483ec2832951780cf7.compute.time',105,'2022-10-14 00:00:00.000','1d',2),
(862,'28fc339286cf3c2294c5d0dd2ac42cf3','2022-10-14 01:10:43.574','2022-10-14 02:53:04.632','[]','executions.63483ec2832951780cf7.compute.time',105,'2022-10-01 00:00:00.000','1mo',2),
(863,'fb480796eeb16f83491e9591c02e8de5','2022-10-14 01:10:43.575','2022-10-14 02:53:04.635','[]','builds.63483ec2832951780cf7.compute.total',1,'2022-10-14 00:00:00.000','1d',2),
(864,'0b20fa372aed770b417cc390474fd87e','2022-10-14 01:10:43.577','2022-10-14 02:53:04.638','[]','builds.63483ec2832951780cf7.compute.total',1,'2022-10-01 00:00:00.000','1mo',2),
(865,'37e278fb947bf0955f5691ae43617f7c','2022-10-14 01:10:43.578','2022-10-14 02:53:04.642','[]','builds.63483ec2832951780cf7.compute.success',0,'2022-10-14 00:00:00.000','1d',2),
(866,'de2d550fb6ef7876c0a3dd49b3aacc5c','2022-10-14 01:10:43.580','2022-10-14 02:53:04.646','[]','builds.63483ec2832951780cf7.compute.success',0,'2022-10-01 00:00:00.000','1mo',2),
(867,'4b59bcfa681d4af50f9b4ceddc08bf18','2022-10-14 01:10:43.582','2022-10-14 02:53:04.649','[]','builds.63483ec2832951780cf7.compute.failure',0,'2022-10-14 00:00:00.000','1d',2),
(868,'59d02577b5f5d11de4cb6158ee798537','2022-10-14 01:10:43.583','2022-10-14 02:53:04.653','[]','builds.63483ec2832951780cf7.compute.failure',0,'2022-10-01 00:00:00.000','1mo',2),
(869,'3a9fd16120ec1f69e0fc05c3f67e3fa3','2022-10-14 01:10:43.584','2022-10-14 02:53:04.656','[]','builds.63483ec2832951780cf7.compute.time',2000,'2022-10-14 00:00:00.000','1d',2),
(870,'f6150b21b557fda61fea6c0fc1ea77bd','2022-10-14 01:10:43.586','2022-10-14 02:53:04.659','[]','builds.63483ec2832951780cf7.compute.time',2000,'2022-10-01 00:00:00.000','1mo',2),
(871,'e626a078b720bce6aab5acc006ef096e','2022-10-14 01:10:43.588','2022-10-14 02:53:04.662','[]','executions.63483ecfd7ed4d61e1f2.compute.total',7,'2022-10-14 00:00:00.000','1d',2),
(872,'472d106bd93f82731dd1d46d6ac489b9','2022-10-14 01:10:43.590','2022-10-14 02:53:04.665','[]','executions.63483ecfd7ed4d61e1f2.compute.total',7,'2022-10-01 00:00:00.000','1mo',2),
(873,'66ab1696ec9461baa86edd025024ead8','2022-10-14 01:10:43.592','2022-10-14 02:53:04.668','[]','executions.63483ecfd7ed4d61e1f2.compute.success',0,'2022-10-14 00:00:00.000','1d',2),
(874,'113b0b71ee668e3643ee7b72b510bd38','2022-10-14 01:10:43.593','2022-10-14 02:53:04.709','[]','executions.63483ecfd7ed4d61e1f2.compute.success',0,'2022-10-01 00:00:00.000','1mo',2),
(875,'471c479ee016334e4580d2e1c585b00b','2022-10-14 01:10:43.595','2022-10-14 02:53:04.713','[]','executions.63483ecfd7ed4d61e1f2.compute.failure',0,'2022-10-14 00:00:00.000','1d',2),
(876,'4eb49cbda6b5fb9641ff5e3b789c2e66','2022-10-14 01:10:43.596','2022-10-14 02:53:04.716','[]','executions.63483ecfd7ed4d61e1f2.compute.failure',0,'2022-10-01 00:00:00.000','1mo',2),
(877,'65eee4ebbe671e22d8e0e5ac211b1162','2022-10-14 01:10:43.598','2022-10-14 02:53:04.720','[]','executions.63483ecfd7ed4d61e1f2.compute.time',450,'2022-10-14 00:00:00.000','1d',2),
(878,'8c3483a5f53be11307934160ed80a699','2022-10-14 01:10:43.600','2022-10-14 02:53:04.725','[]','executions.63483ecfd7ed4d61e1f2.compute.time',450,'2022-10-01 00:00:00.000','1mo',2),
(879,'fc86f6437d48a4534e8627281fccc5c8','2022-10-14 01:10:43.601','2022-10-14 02:53:04.728','[]','builds.63483ecfd7ed4d61e1f2.compute.total',2,'2022-10-14 00:00:00.000','1d',2),
(880,'8ec47e6ac858b57d0eea7556f34dd4c5','2022-10-14 01:10:43.603','2022-10-14 02:53:04.730','[]','builds.63483ecfd7ed4d61e1f2.compute.total',2,'2022-10-01 00:00:00.000','1mo',2),
(881,'8649a525205c052b2790d57466983aea','2022-10-14 01:10:43.605','2022-10-14 02:53:04.733','[]','builds.63483ecfd7ed4d61e1f2.compute.success',0,'2022-10-14 00:00:00.000','1d',2),
(882,'184d4634a1f7b6b643d303eae24b5437','2022-10-14 01:10:43.606','2022-10-14 02:53:04.735','[]','builds.63483ecfd7ed4d61e1f2.compute.success',0,'2022-10-01 00:00:00.000','1mo',2),
(883,'294d3508bf38a378615e4e6ef420fbfc','2022-10-14 01:10:43.608','2022-10-14 02:53:04.737','[]','builds.63483ecfd7ed4d61e1f2.compute.failure',0,'2022-10-14 00:00:00.000','1d',2),
(884,'10dfb402e196f87d8d12467fd441928e','2022-10-14 01:10:43.610','2022-10-14 02:53:04.740','[]','builds.63483ecfd7ed4d61e1f2.compute.failure',0,'2022-10-01 00:00:00.000','1mo',2),
(885,'0786082b84aac0b9708ea84a3f1243f3','2022-10-14 01:10:43.611','2022-10-14 02:53:04.743','[]','builds.63483ecfd7ed4d61e1f2.compute.time',20000,'2022-10-14 00:00:00.000','1d',2),
(886,'0d464a708440e49fc48e35fc57302ec5','2022-10-14 01:10:43.613','2022-10-14 02:53:04.745','[]','builds.63483ecfd7ed4d61e1f2.compute.time',20000,'2022-10-01 00:00:00.000','1mo',2),
(887,'670c1f9355881f9bfa68647656b902df','2022-10-14 01:10:43.614','2022-10-14 02:53:04.748','[]','executions.63483eddbd1271748d75.compute.total',2,'2022-10-14 00:00:00.000','1d',2),
(888,'ae8b7d80cdd526946ac4e9fe8ef70b96','2022-10-14 01:10:43.616','2022-10-14 02:53:04.750','[]','executions.63483eddbd1271748d75.compute.total',2,'2022-10-01 00:00:00.000','1mo',2),
(889,'563ca45ff68b0270e9e91685f9e7b965','2022-10-14 01:10:43.617','2022-10-14 02:53:04.753','[]','executions.63483eddbd1271748d75.compute.success',0,'2022-10-14 00:00:00.000','1d',2),
(890,'2094df5c6955e7bf294b80def77a6cd5','2022-10-14 01:10:43.619','2022-10-14 02:53:04.755','[]','executions.63483eddbd1271748d75.compute.success',0,'2022-10-01 00:00:00.000','1mo',2),
(891,'c85471bc9bf6b578449615934d918a11','2022-10-14 01:10:43.621','2022-10-14 02:53:04.758','[]','executions.63483eddbd1271748d75.compute.failure',0,'2022-10-14 00:00:00.000','1d',2),
(892,'270dbad652cb16ffcfaae751a44602e8','2022-10-14 01:10:43.622','2022-10-14 02:53:04.760','[]','executions.63483eddbd1271748d75.compute.failure',0,'2022-10-01 00:00:00.000','1mo',2),
(893,'57b6b5a48cf9d8400824223e19e5e829','2022-10-14 01:10:43.624','2022-10-14 02:53:04.762','[]','executions.63483eddbd1271748d75.compute.time',266,'2022-10-14 00:00:00.000','1d',2),
(894,'0190d494a561c98bfaa3aa11bf1fb9b9','2022-10-14 01:10:43.625','2022-10-14 02:53:04.765','[]','executions.63483eddbd1271748d75.compute.time',266,'2022-10-01 00:00:00.000','1mo',2),
(895,'5978df27b391614ae4c7746f7b34664f','2022-10-14 01:10:43.627','2022-10-14 02:53:04.767','[]','builds.63483eddbd1271748d75.compute.total',2,'2022-10-14 00:00:00.000','1d',2),
(896,'73d72464357093361067df3585d3f88f','2022-10-14 01:10:43.628','2022-10-14 02:53:04.770','[]','builds.63483eddbd1271748d75.compute.total',2,'2022-10-01 00:00:00.000','1mo',2),
(897,'c116c80b74e521f1b3da4352696dd11f','2022-10-14 01:10:43.630','2022-10-14 02:53:04.773','[]','builds.63483eddbd1271748d75.compute.success',0,'2022-10-14 00:00:00.000','1d',2),
(898,'a4f5f7d003c62ce7f2b02d0b6879d9c0','2022-10-14 01:10:43.631','2022-10-14 02:53:04.776','[]','builds.63483eddbd1271748d75.compute.success',0,'2022-10-01 00:00:00.000','1mo',2),
(899,'b90d219ed69aef9dc14134716947c7e9','2022-10-14 01:10:43.633','2022-10-14 02:53:04.778','[]','builds.63483eddbd1271748d75.compute.failure',0,'2022-10-14 00:00:00.000','1d',2),
(900,'eef9eb4b3c68c87497d76b437c5acf42','2022-10-14 01:10:43.634','2022-10-14 02:53:04.781','[]','builds.63483eddbd1271748d75.compute.failure',0,'2022-10-01 00:00:00.000','1mo',2),
(901,'940c30125a0cfe325ef35399f297a2ae','2022-10-14 01:10:43.636','2022-10-14 02:53:04.783','[]','builds.63483eddbd1271748d75.compute.time',10000,'2022-10-14 00:00:00.000','1d',2),
(902,'c63dbd5dafb544322a44349579704101','2022-10-14 01:10:43.638','2022-10-14 02:53:04.786','[]','builds.63483eddbd1271748d75.compute.time',10000,'2022-10-01 00:00:00.000','1mo',2),
(903,'78c27223708dc2a3b2f1f45b1b6a2d22','2022-10-14 01:10:43.639','2022-10-14 02:53:04.789','[]','databases.$all.requests.create',0,'2022-10-14 00:00:00.000','1d',2),
(904,'72e5c107da5a51018300608005519a08','2022-10-14 01:10:43.641','2022-10-14 02:53:04.810','[]','databases.$all.requests.create',0,'2022-10-01 00:00:00.000','1mo',2),
(905,'ead4ffb1767237e9772b9596072a75a6','2022-10-14 01:10:43.642','2022-10-14 02:53:04.813','[]','databases.$all.requests.read',0,'2022-10-14 00:00:00.000','1d',2),
(906,'1be28ffa1b7fa7e036359ea54cd32998','2022-10-14 01:10:43.643','2022-10-14 02:53:04.815','[]','databases.$all.requests.read',0,'2022-10-01 00:00:00.000','1mo',2),
(907,'72f9ec1b05ded388a388f893baf34b6d','2022-10-14 01:10:43.645','2022-10-14 02:53:04.818','[]','databases.$all.requests.update',0,'2022-10-14 00:00:00.000','1d',2),
(908,'531414c811a51fadb56c6c91fea4c3d3','2022-10-14 01:10:43.646','2022-10-14 02:53:04.820','[]','databases.$all.requests.update',0,'2022-10-01 00:00:00.000','1mo',2),
(909,'209d3d1a0ddc07d88fc95c8e097371fd','2022-10-14 01:10:43.647','2022-10-14 02:53:04.823','[]','databases.$all.requests.delete',0,'2022-10-14 00:00:00.000','1d',2),
(910,'6a8d9b66cee01d8a4a6aa109430d32cb','2022-10-14 01:10:43.649','2022-10-14 02:53:04.826','[]','databases.$all.requests.delete',0,'2022-10-01 00:00:00.000','1mo',2),
(911,'ca203a5fc2617b42b7ab611bde6ba78a','2022-10-14 01:10:43.650','2022-10-14 02:53:04.828','[]','collections.$all.requests.create',0,'2022-10-14 00:00:00.000','1d',2),
(912,'ba1c1c43a298279028c487f0194ab32f','2022-10-14 01:10:43.653','2022-10-14 02:53:04.831','[]','collections.$all.requests.create',0,'2022-10-01 00:00:00.000','1mo',2),
(913,'dee855f21c968c0b16fce1347e681684','2022-10-14 01:10:43.655','2022-10-14 02:53:04.833','[]','collections.$all.requests.read',0,'2022-10-14 00:00:00.000','1d',2),
(914,'69efb7a96d39ac7bef7ac99d70896635','2022-10-14 01:10:43.656','2022-10-14 02:53:04.836','[]','collections.$all.requests.read',0,'2022-10-01 00:00:00.000','1mo',2),
(915,'1a6df1ae1e815c397bf763785c87b63e','2022-10-14 01:10:43.657','2022-10-14 02:53:04.838','[]','collections.$all.requests.update',0,'2022-10-14 00:00:00.000','1d',2),
(916,'f618af44330050055a353f41b03673c1','2022-10-14 01:10:43.659','2022-10-14 02:53:04.841','[]','collections.$all.requests.update',0,'2022-10-01 00:00:00.000','1mo',2),
(917,'7120e4ceb8944224aab4094213b2ad10','2022-10-14 01:10:43.660','2022-10-14 02:53:04.843','[]','collections.$all.requests.delete',0,'2022-10-14 00:00:00.000','1d',2),
(918,'629ae22df266d8dd44ff0a53b08c610c','2022-10-14 01:10:43.661','2022-10-14 02:53:04.846','[]','collections.$all.requests.delete',0,'2022-10-01 00:00:00.000','1mo',2),
(919,'7f37d24692d269ed3bc9ede4e15e48b3','2022-10-14 01:10:43.662','2022-10-14 02:53:04.849','[]','documents.$all.requests.create',0,'2022-10-14 00:00:00.000','1d',2),
(920,'6c38b486731b4e34d6b2c793d88cfdc9','2022-10-14 01:10:43.664','2022-10-14 02:53:04.852','[]','documents.$all.requests.create',0,'2022-10-01 00:00:00.000','1mo',2),
(921,'eec2e0b9747ebce67cab7f0d4e6b40b4','2022-10-14 01:10:43.665','2022-10-14 02:53:04.855','[]','documents.$all.requests.read',0,'2022-10-14 00:00:00.000','1d',2),
(922,'832cfef04befbfa67aa9ed3bc3293d62','2022-10-14 01:10:43.666','2022-10-14 02:53:04.858','[]','documents.$all.requests.read',0,'2022-10-01 00:00:00.000','1mo',2),
(923,'0b22f94b679f6c894a100c535e0a3ef0','2022-10-14 01:10:43.668','2022-10-14 02:53:04.861','[]','documents.$all.requests.update',0,'2022-10-14 00:00:00.000','1d',2),
(924,'fb2637ffebd8a99ab8d553edefd1063e','2022-10-14 01:10:43.669','2022-10-14 02:53:04.864','[]','documents.$all.requests.update',0,'2022-10-01 00:00:00.000','1mo',2),
(925,'105ce1fbf51a1c5a0a4cb9f7b7d5935b','2022-10-14 01:10:43.670','2022-10-14 02:53:04.867','[]','documents.$all.requests.delete',0,'2022-10-14 00:00:00.000','1d',2),
(926,'451a2f01a285e19a8b30ac090ad8448e','2022-10-14 01:10:43.672','2022-10-14 02:53:04.870','[]','documents.$all.requests.delete',0,'2022-10-01 00:00:00.000','1mo',2),
(927,'9063ee2012a738c6d251caf8ea8d97d7','2022-10-14 01:10:43.674','2022-10-14 02:53:04.954','[]','buckets.$all.requests.create',0,'2022-10-14 00:00:00.000','1d',2),
(928,'e7141ec6d9ef0be29fdeb52bbb8fd7e0','2022-10-14 01:10:43.675','2022-10-14 02:53:04.957','[]','buckets.$all.requests.create',0,'2022-10-01 00:00:00.000','1mo',2),
(929,'bc60a4a28016ff57cc96b2ff7d4143da','2022-10-14 01:10:43.677','2022-10-14 02:53:04.960','[]','buckets.$all.requests.read',0,'2022-10-14 00:00:00.000','1d',2),
(930,'927d5599778b167870efe68ee08fbfae','2022-10-14 01:10:43.680','2022-10-14 02:53:04.962','[]','buckets.$all.requests.read',0,'2022-10-01 00:00:00.000','1mo',2),
(931,'de7f30fcba133158eefd4383cee536c1','2022-10-14 01:10:43.682','2022-10-14 02:53:04.965','[]','buckets.$all.requests.update',0,'2022-10-14 00:00:00.000','1d',2),
(932,'f2e3511991ec9be0b55913e34eb5cb38','2022-10-14 01:10:43.683','2022-10-14 02:53:04.967','[]','buckets.$all.requests.update',0,'2022-10-01 00:00:00.000','1mo',2),
(933,'94d861fc33e2777b51ebaf6f60720766','2022-10-14 01:10:43.685','2022-10-14 02:53:04.969','[]','buckets.$all.requests.delete',0,'2022-10-14 00:00:00.000','1d',2),
(934,'a354fde03099078d1756a7f85324e41e','2022-10-14 01:10:43.686','2022-10-14 02:53:04.972','[]','buckets.$all.requests.delete',0,'2022-10-01 00:00:00.000','1mo',2),
(935,'de7cacd2500533db53a1aa4de8cf5624','2022-10-14 01:10:43.688','2022-10-14 02:53:04.974','[]','files.$all.requests.create',0,'2022-10-14 00:00:00.000','1d',2),
(936,'bc1e7095571e7233cdf357db6fde3493','2022-10-14 01:10:43.689','2022-10-14 02:53:04.976','[]','files.$all.requests.create',0,'2022-10-01 00:00:00.000','1mo',2),
(937,'7398705e2d274228ea8f49e8436ac2d2','2022-10-14 01:10:43.691','2022-10-14 02:53:04.979','[]','files.$all.requests.read',0,'2022-10-14 00:00:00.000','1d',2),
(938,'e484df15a6fa47b0bd5928f1f34bca33','2022-10-14 01:10:43.692','2022-10-14 02:53:04.981','[]','files.$all.requests.read',0,'2022-10-01 00:00:00.000','1mo',2),
(939,'e968bab8e75f598829cf82602b252805','2022-10-14 01:10:43.693','2022-10-14 02:53:04.983','[]','files.$all.requests.update',0,'2022-10-14 00:00:00.000','1d',2),
(940,'cf861879fef8482c8fcbdd11ea9193e3','2022-10-14 01:10:43.695','2022-10-14 02:53:04.986','[]','files.$all.requests.update',0,'2022-10-01 00:00:00.000','1mo',2),
(941,'b0df9970610d7ea51a057d1e108df2e4','2022-10-14 01:10:43.696','2022-10-14 02:53:04.988','[]','files.$all.requests.delete',0,'2022-10-14 00:00:00.000','1d',2),
(942,'f5c9b02a64b90c43b4446b76fad0b4fb','2022-10-14 01:10:43.698','2022-10-14 02:53:04.991','[]','files.$all.requests.delete',0,'2022-10-01 00:00:00.000','1mo',2),
(943,'f55aea90b7c7f2755546af2126058499','2022-10-14 01:10:43.699','2022-10-14 02:53:05.020','[]','users.$all.requests.create',0,'2022-10-14 00:00:00.000','1d',2),
(944,'b6ab0fc56545778e4604e2d8ee228dce','2022-10-14 01:10:43.701','2022-10-14 02:53:05.022','[]','users.$all.requests.create',0,'2022-10-01 00:00:00.000','1mo',2),
(945,'35dc86e5b481faedd6e90cf3d751f390','2022-10-14 01:10:43.702','2022-10-14 02:53:05.025','[]','users.$all.requests.read',0,'2022-10-14 00:00:00.000','1d',2),
(946,'38a824fe2e5779872e5da724a2ca0bf4','2022-10-14 01:10:43.704','2022-10-14 02:53:05.027','[]','users.$all.requests.read',0,'2022-10-01 00:00:00.000','1mo',2),
(947,'c8da52e21c01cd2a1df1afc28d894577','2022-10-14 01:10:43.705','2022-10-14 02:53:05.029','[]','users.$all.requests.update',0,'2022-10-14 00:00:00.000','1d',2),
(948,'60fb8b33ffdaaee95e66e660b654e549','2022-10-14 01:10:43.706','2022-10-14 02:53:05.032','[]','users.$all.requests.update',0,'2022-10-01 00:00:00.000','1mo',2),
(949,'c2fe6c46ee2d1f4767f2959c2261728f','2022-10-14 01:10:43.708','2022-10-14 02:53:05.035','[]','users.$all.requests.delete',0,'2022-10-14 00:00:00.000','1d',2),
(950,'049e958e4bcfab6ef19401815847fded','2022-10-14 01:10:43.709','2022-10-14 02:53:05.038','[]','users.$all.requests.delete',0,'2022-10-01 00:00:00.000','1mo',2),
(951,'a2c900b7a9991f6e2c0078eca14cc845','2022-10-14 01:10:43.710','2022-10-14 02:53:05.043','[]','sessions.$all.requests.create',0,'2022-10-14 00:00:00.000','1d',2),
(952,'f75422fc071c4220c09e868d614fee16','2022-10-14 01:10:43.712','2022-10-14 02:53:05.046','[]','sessions.$all.requests.create',0,'2022-10-01 00:00:00.000','1mo',2),
(953,'f2ba696f0aecd5e8b7f91e82b49ec660','2022-10-14 01:10:43.713','2022-10-14 02:53:05.050','[]','sessions.$all.requests.delete',0,'2022-10-14 00:00:00.000','1d',2),
(954,'58195b88a48f63f71f96dbe64e777f8b','2022-10-14 01:10:43.715','2022-10-14 02:53:05.053','[]','sessions.$all.requests.delete',0,'2022-10-01 00:00:00.000','1mo',2),
(955,'3dfdfef76a87edebfd566ef14f922d81','2022-10-14 01:38:53.119','2022-10-14 01:53:53.483','[]','users.$all.count.total',0,'2022-10-14 01:30:00.000','30m',2),
(956,'d987d5278544d4b480acb700e071c565','2022-10-14 01:38:53.126','2022-10-14 01:53:53.486','[]','databases.$all.count.total',0,'2022-10-14 01:30:00.000','30m',2),
(957,'311e556d81432fae3b3dd3897b138faa','2022-10-14 01:38:53.132','2022-10-14 01:53:53.490','[]','collections.$all.count.total',0,'2022-10-14 01:30:00.000','30m',2),
(958,'0d78a9b869fce1299c0a1d0e9ca50643','2022-10-14 01:38:53.136','2022-10-14 01:53:53.494','[]','documents.$all.count.total',0,'2022-10-14 01:30:00.000','30m',2),
(959,'696b8a16298815957f7eb8393e19c06f','2022-10-14 01:38:53.141','2022-10-14 01:53:53.498','[]','buckets.$all.count.total',0,'2022-10-14 01:30:00.000','30m',2),
(960,'e9180a07d42efe3a5f92dda89f440afa','2022-10-14 01:38:53.145','2022-10-14 01:53:53.502','[]','files.$all.count.total',0,'2022-10-14 01:30:00.000','30m',2),
(961,'fbd8a1dfaf92b03dbe48561cd0683d62','2022-10-14 01:38:53.148','2022-10-14 01:53:53.505','[]','files.$all.storage.size',0,'2022-10-14 01:30:00.000','30m',2),
(962,'3e0ce37e559ea020affe32c3177008f9','2022-10-14 01:38:53.151','2022-10-14 01:53:53.509','[]','deployments.$all.storage.size',14724,'2022-10-14 01:30:00.000','30m',2),
(963,'6c75c63c79db19c5e0d9f2c8db201ef6','2022-10-14 01:38:53.155','2022-10-14 01:53:53.512','[]','project.$all.storage.size',14724,'2022-10-14 01:30:00.000','30m',2),
(964,'eb4880e011d225db32d95941bc6292f6','2022-10-14 01:38:53.348','2022-10-14 02:53:05.023','[]','project.$all.network.bandwidth',0,'2022-10-14 01:30:00.000','30m',0),
(965,'b16bc08890abe0ba81c25d1d432b601c','2022-10-14 01:38:53.461','2022-10-14 02:53:05.225','[]','project.$all.network.inbound',0,'2022-10-14 01:30:00.000','30m',0),
(966,'4ebb42a2a23cf1719a3a731bdc2551ae','2022-10-14 01:38:53.566','2022-10-14 02:53:05.342','[]','project.$all.network.outbound',0,'2022-10-14 01:30:00.000','30m',0),
(967,'9d27d0ae92f77bf3b79981fafdd7562f','2022-10-14 01:38:53.733','2022-10-14 02:53:05.521','[]','executions.$all.compute.total',3,'2022-10-14 01:30:00.000','30m',0),
(968,'6f69261c85daac8620b180287174f59b','2022-10-14 01:38:53.838','2022-10-14 02:53:05.614','[]','builds.$all.compute.time',299,'2022-10-14 01:30:00.000','30m',0),
(969,'4433174ede990feebf02ebbc6b2fa72d','2022-10-14 01:38:53.961','2022-10-14 02:53:05.744','[]','executions.$all.compute.time',299,'2022-10-14 01:30:00.000','30m',0),
(970,'cdee8e3171ece26f75142c7d724c0c72','2022-10-14 01:38:54.158','2022-10-14 02:53:05.866','[]','builds.$all.compute.total',2,'2022-10-14 01:30:00.000','30m',0),
(971,'4e90f6b23b82efe4614afbdc5099fcc5','2022-10-14 01:38:54.350','2022-10-14 02:53:05.975','[]','executions.63483ec2832951780cf7.compute.total',1,'2022-10-14 01:30:00.000','30m',0),
(972,'71f65582788d7b5467d5901b5869dab2','2022-10-14 01:38:54.352','2022-10-14 01:38:54.352','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 01:30:00.000','30m',0),
(973,'2d4be2194730e25161400e70807d0afa','2022-10-14 01:38:54.353','2022-10-14 01:38:54.353','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 02:00:00.000','30m',0),
(974,'ab3da92d0fbf23949ca6c78499ede53b','2022-10-14 01:38:54.354','2022-10-14 02:53:05.981','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 02:30:00.000','30m',0),
(975,'95c4f59f7e3ceb6e85b24e42b22451e0','2022-10-14 01:38:54.356','2022-10-14 02:53:05.983','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 03:00:00.000','30m',0),
(976,'bb9f7984fb3e89af747fc4fb0bf07889','2022-10-14 01:38:54.410','2022-10-14 02:53:05.985','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 03:30:00.000','30m',0),
(977,'1e7b9ccfe698fb518e1f7f719301a293','2022-10-14 01:38:54.412','2022-10-14 02:53:05.987','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 04:00:00.000','30m',0),
(978,'cd4bd7325acfad6701f28c65fa34c29e','2022-10-14 01:38:54.414','2022-10-14 02:53:05.989','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 04:30:00.000','30m',0),
(979,'a547f7dbabb29a6ced05a897c3b6f863','2022-10-14 01:38:54.416','2022-10-14 02:53:05.991','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 05:00:00.000','30m',0),
(980,'8b516774b5d923fe9af858bbc8d3abc0','2022-10-14 01:38:54.419','2022-10-14 02:53:05.993','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 05:30:00.000','30m',0),
(981,'5e0480acb206447b4dbe28f37385382f','2022-10-14 01:38:54.421','2022-10-14 02:53:05.995','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 06:00:00.000','30m',0),
(982,'e6a5708c15bd6a794fcb68a3fdb762d6','2022-10-14 01:38:54.423','2022-10-14 02:53:05.997','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 06:30:00.000','30m',0),
(983,'4ad6df2e6310f7998ae3811372da1211','2022-10-14 01:38:54.425','2022-10-14 02:53:05.999','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 07:00:00.000','30m',0),
(984,'851470682486c23bc18a10b7495f9dc1','2022-10-14 01:38:54.427','2022-10-14 02:53:06.001','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 07:30:00.000','30m',0),
(985,'d0200c5969ada84fb077c80b6c385bf9','2022-10-14 01:38:54.429','2022-10-14 02:53:06.004','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 08:00:00.000','30m',0),
(986,'7212389ea5a69120d886f0804526924a','2022-10-14 01:38:54.431','2022-10-14 02:53:06.006','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 08:30:00.000','30m',0),
(987,'11d2f50e7427cdbd6bb1032a8325ec9e','2022-10-14 01:38:54.433','2022-10-14 02:53:06.008','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 09:00:00.000','30m',0),
(988,'b236733c97e62e9aaa5c9cb380524d37','2022-10-14 01:38:54.435','2022-10-14 02:53:06.010','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 09:30:00.000','30m',0),
(989,'10e9d253086ce73b9594cc63d89b125d','2022-10-14 01:38:54.437','2022-10-14 02:53:06.013','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 10:00:00.000','30m',0),
(990,'f705142f63517896f4fdb8b8f16186ab','2022-10-14 01:38:54.438','2022-10-14 02:53:06.016','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 10:30:00.000','30m',0),
(991,'d18e7efed2ffd73e7cbe9ba2caa782ad','2022-10-14 01:38:54.440','2022-10-14 02:53:06.018','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 11:00:00.000','30m',0),
(992,'5606ac333ff8a3d013718534226b50ec','2022-10-14 01:38:54.442','2022-10-14 02:53:06.020','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 11:30:00.000','30m',0),
(993,'f7bc3635c2e1b84a872833780bdd1c2d','2022-10-14 01:38:54.444','2022-10-14 02:53:06.022','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 12:00:00.000','30m',0),
(994,'8ce23dd3fcd8f5a6d2ca95351f65de62','2022-10-14 01:38:54.446','2022-10-14 02:53:06.025','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 12:30:00.000','30m',0),
(995,'366924c4f303a02057733320ee15e905','2022-10-14 01:38:54.447','2022-10-14 02:53:06.027','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 13:00:00.000','30m',0),
(996,'cec3d481f263b92162772daf0333eea0','2022-10-14 01:38:54.449','2022-10-14 02:53:06.030','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 13:30:00.000','30m',0),
(997,'e750e6c725dd5fe197feb0a4f8034a0b','2022-10-14 01:38:54.451','2022-10-14 02:53:06.033','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 14:00:00.000','30m',0),
(998,'9771561964cf55bd4d5ee3064c2b494e','2022-10-14 01:38:54.453','2022-10-14 02:53:06.036','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 14:30:00.000','30m',0),
(999,'6e795f2d3052b394c0029bd560e7984f','2022-10-14 01:38:54.454','2022-10-14 02:53:06.038','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 15:00:00.000','30m',0),
(1000,'2dfd36a11369e7dc51485986e8aa000e','2022-10-14 01:38:54.456','2022-10-14 02:53:06.040','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 15:30:00.000','30m',0),
(1001,'32a0d39e7ef329171bc394ee1e100750','2022-10-14 01:38:54.458','2022-10-14 02:53:06.043','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 16:00:00.000','30m',0),
(1002,'5f05e91b517f1af7656747c08f529442','2022-10-14 01:38:54.459','2022-10-14 02:53:06.046','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 16:30:00.000','30m',0),
(1003,'0f50e5bd5d9d8e9b07172b91b1435e2e','2022-10-14 01:38:54.510','2022-10-14 02:53:06.049','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 17:00:00.000','30m',0),
(1004,'0d2110d35417dedf94681f2a09a3c9b1','2022-10-14 01:38:54.512','2022-10-14 02:53:06.052','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 17:30:00.000','30m',0),
(1005,'b4ba0cf0df1f8ab183eeccbb917fb387','2022-10-14 01:38:54.515','2022-10-14 02:53:06.055','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 18:00:00.000','30m',0),
(1006,'26eede37eb1855706579c1dbf1099730','2022-10-14 01:38:54.517','2022-10-14 02:53:06.058','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 18:30:00.000','30m',0),
(1007,'7d3b564bd4118065b45fbf76ae72e2c9','2022-10-14 01:38:54.520','2022-10-14 02:53:06.061','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 19:00:00.000','30m',0),
(1008,'45f5452e27b9422c4d09b70a7ee158e5','2022-10-14 01:38:54.522','2022-10-14 02:53:06.063','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 19:30:00.000','30m',0),
(1009,'cbf8dbb445724f62ab41d0b8def52dae','2022-10-14 01:38:54.524','2022-10-14 02:53:06.066','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 20:00:00.000','30m',0),
(1010,'c7a1efcef341605059026e256c344779','2022-10-14 01:38:54.526','2022-10-14 02:53:06.070','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 20:30:00.000','30m',0),
(1011,'4e93312e696ba8d091140da2416e566e','2022-10-14 01:38:54.528','2022-10-14 02:53:06.072','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 21:00:00.000','30m',0),
(1012,'42b70160abf4ac26afd652f939ec4e8f','2022-10-14 01:38:54.530','2022-10-14 02:53:06.075','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 21:30:00.000','30m',0),
(1013,'cff9a48ff1d3b36f5af3deb972692029','2022-10-14 01:38:54.532','2022-10-14 02:53:06.109','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 22:00:00.000','30m',0),
(1014,'ea454c23ee29630586696976a315226c','2022-10-14 01:38:54.534','2022-10-14 02:53:06.111','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 22:30:00.000','30m',0),
(1015,'36046a8eb698dbea70e5d0ccb9494ce8','2022-10-14 01:38:54.535','2022-10-14 02:53:06.113','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 23:00:00.000','30m',0),
(1016,'ddb3f751ff54a654ecdfff7144e8d867','2022-10-14 01:38:54.537','2022-10-14 02:53:06.115','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-13 23:30:00.000','30m',0),
(1017,'c03ba97efbe3312adbe371456e3d8939','2022-10-14 01:38:54.538','2022-10-14 02:53:06.117','[]','executions.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-14 00:00:00.000','30m',0),
(1018,'f99c28db2e0246429dfdc7df6b82014c','2022-10-14 01:38:54.545','2022-10-14 02:53:06.123','[]','executions.63483ecfd7ed4d61e1f2.compute.total',1,'2022-10-14 01:30:00.000','30m',0),
(1019,'1d9c02c33336f755f11d32ebcd01a306','2022-10-14 01:38:54.546','2022-10-14 01:38:54.546','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 01:30:00.000','30m',0),
(1020,'7a77f7481373ed8c7e5a724af26bbd94','2022-10-14 01:38:54.548','2022-10-14 01:38:54.548','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 02:00:00.000','30m',0),
(1021,'55a1f5992ad1486de7de4b05faba8f5a','2022-10-14 01:38:54.551','2022-10-14 02:53:06.130','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 02:30:00.000','30m',0),
(1022,'73d8253e0ae2c03b20e4c9a55e06abed','2022-10-14 01:38:54.553','2022-10-14 02:53:06.132','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 03:00:00.000','30m',0),
(1023,'faba3008bb0d463f2d7debbafc9f5d46','2022-10-14 01:38:54.609','2022-10-14 02:53:06.134','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 03:30:00.000','30m',0),
(1024,'2727d18981515fc8eab611ee3d3d6621','2022-10-14 01:38:54.611','2022-10-14 02:53:06.136','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 04:00:00.000','30m',0),
(1025,'723ae2edd972b18f29e8844cec989d5f','2022-10-14 01:38:54.613','2022-10-14 02:53:06.138','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 04:30:00.000','30m',0),
(1026,'c1e52774030281f7f2586e6ef94275d3','2022-10-14 01:38:54.615','2022-10-14 02:53:06.140','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 05:00:00.000','30m',0),
(1027,'c48e20e35dbee036fe68dbc433faa5eb','2022-10-14 01:38:54.617','2022-10-14 02:53:06.142','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 05:30:00.000','30m',0),
(1028,'e040d145b374bdaaf851df791d052d49','2022-10-14 01:38:54.619','2022-10-14 02:53:06.144','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 06:00:00.000','30m',0),
(1029,'05d30b88f4a781666d45d568fb384aaf','2022-10-14 01:38:54.620','2022-10-14 02:53:06.146','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 06:30:00.000','30m',0),
(1030,'9c522758af2eb363e5bacb0d91623c36','2022-10-14 01:38:54.622','2022-10-14 02:53:06.149','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 07:00:00.000','30m',0),
(1031,'eecbe8c9761ec8e9ea60aa9cca769829','2022-10-14 01:38:54.624','2022-10-14 02:53:06.152','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 07:30:00.000','30m',0),
(1032,'fbc5e6fb6276998318de6d0dc1a24251','2022-10-14 01:38:54.626','2022-10-14 02:53:06.154','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 08:00:00.000','30m',0),
(1033,'cd9755cc504cdbf8144f04407ce19abd','2022-10-14 01:38:54.627','2022-10-14 02:53:06.156','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 08:30:00.000','30m',0),
(1034,'6c16567b4a6c7087dd1e047efdaf9e6a','2022-10-14 01:38:54.629','2022-10-14 02:53:06.159','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 09:00:00.000','30m',0),
(1035,'5a17a3fbf5254e394a991de18b50cbe1','2022-10-14 01:38:54.630','2022-10-14 02:53:06.161','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 09:30:00.000','30m',0),
(1036,'7563068f173fc294ee1bffc6f042d74b','2022-10-14 01:38:54.632','2022-10-14 02:53:06.163','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 10:00:00.000','30m',0),
(1037,'b42419d267a844c59fcaced8df6d31eb','2022-10-14 01:38:54.633','2022-10-14 02:53:06.165','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 10:30:00.000','30m',0),
(1038,'199be112d015841314c021ded4b22a3a','2022-10-14 01:38:54.634','2022-10-14 02:53:06.167','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 11:00:00.000','30m',0),
(1039,'dc50aaef2b9ef1402ec1c44509a1bfa6','2022-10-14 01:38:54.636','2022-10-14 02:53:06.170','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 11:30:00.000','30m',0),
(1040,'c7312c6ab10d131463d7f29b3110a7ab','2022-10-14 01:38:54.638','2022-10-14 02:53:06.172','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 12:00:00.000','30m',0),
(1041,'22d236180317a45d3082f652a36f9d49','2022-10-14 01:38:54.639','2022-10-14 02:53:06.174','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 12:30:00.000','30m',0),
(1042,'44003d2f4e4b353ecfc034a41e7900f2','2022-10-14 01:38:54.641','2022-10-14 02:53:06.176','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 13:00:00.000','30m',0),
(1043,'b303cda59265f6ece957c5f0c64a5527','2022-10-14 01:38:54.642','2022-10-14 02:53:06.178','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 13:30:00.000','30m',0),
(1044,'ef201841110a90d5866a0cf75b791f76','2022-10-14 01:38:54.644','2022-10-14 02:53:06.180','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 14:00:00.000','30m',0),
(1045,'0dd72e5af2b2c5bdc780d22b8e01d9e6','2022-10-14 01:38:54.646','2022-10-14 02:53:06.182','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 14:30:00.000','30m',0),
(1046,'42f49a06ce814dac39995616d13a2fe0','2022-10-14 01:38:54.648','2022-10-14 02:53:06.184','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 15:00:00.000','30m',0),
(1047,'e25c6ddba2acc08d09e2550c2b361b58','2022-10-14 01:38:54.650','2022-10-14 02:53:06.186','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 15:30:00.000','30m',0),
(1048,'3d1bfd8fca728a596d064532638d2b4f','2022-10-14 01:38:54.651','2022-10-14 02:53:06.187','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 16:00:00.000','30m',0),
(1049,'d78db40dc67a843602003d2ba95f9726','2022-10-14 01:38:54.653','2022-10-14 02:53:06.189','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 16:30:00.000','30m',0),
(1050,'460f8d0192777c37cbb9be7c0d94263f','2022-10-14 01:38:54.654','2022-10-14 02:53:06.191','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 17:00:00.000','30m',0),
(1051,'ca57f19a54355c5f7d22cd27ec42e6ef','2022-10-14 01:38:54.656','2022-10-14 02:53:06.193','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 17:30:00.000','30m',0),
(1052,'27e2efabd051a8a351f0a050396be50a','2022-10-14 01:38:54.657','2022-10-14 02:53:06.195','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 18:00:00.000','30m',0),
(1053,'4a1834452de9ff52846ab1b1b8b70f26','2022-10-14 01:38:54.659','2022-10-14 02:53:06.197','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 18:30:00.000','30m',0),
(1054,'023fd0003ac9ddfe17c5d8a4af1493b3','2022-10-14 01:38:54.660','2022-10-14 02:53:06.199','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 19:00:00.000','30m',0),
(1055,'c503b6bb9b0363ce227b47c9f445b073','2022-10-14 01:38:54.661','2022-10-14 02:53:06.200','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 19:30:00.000','30m',0),
(1056,'9e63e141479475a523cbd682fa6c6b65','2022-10-14 01:38:54.663','2022-10-14 02:53:06.202','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 20:00:00.000','30m',0),
(1057,'831a41934a6d84244a2ab679e851e8c8','2022-10-14 01:38:54.664','2022-10-14 02:53:06.204','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 20:30:00.000','30m',0),
(1058,'46c3251c7e7c7400d06dfd051475632d','2022-10-14 01:38:54.708','2022-10-14 02:53:06.206','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 21:00:00.000','30m',0),
(1059,'012dd4a0ea0d3a592510086f2c797b8f','2022-10-14 01:38:54.710','2022-10-14 02:53:06.208','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 21:30:00.000','30m',0),
(1060,'a60b3fd1e548d2621c5222b2fba82934','2022-10-14 01:38:54.712','2022-10-14 02:53:06.210','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 22:00:00.000','30m',0),
(1061,'d1d5b9b1e2d290686e831f0c1221c1e5','2022-10-14 01:38:54.714','2022-10-14 02:53:06.211','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 22:30:00.000','30m',0),
(1062,'3b6e4973feab8d14be63ba9561691b95','2022-10-14 01:38:54.715','2022-10-14 02:53:06.213','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 23:00:00.000','30m',0),
(1063,'f90822718ceaae4f73731aef11c03307','2022-10-14 01:38:54.717','2022-10-14 02:53:06.215','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-13 23:30:00.000','30m',0),
(1064,'66a88abf5cf8801878a37028cd97ffc5','2022-10-14 01:38:54.719','2022-10-14 02:53:06.217','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-14 00:00:00.000','30m',0),
(1065,'5a7f661b1fec703e000513b57d09f7f7','2022-10-14 01:38:54.725','2022-10-14 02:53:06.222','[]','executions.63483eddbd1271748d75.compute.total',1,'2022-10-14 01:30:00.000','30m',0),
(1066,'c18ffb88e9eda69e13b3e9bc09763178','2022-10-14 01:38:54.822','2022-10-14 02:53:06.310','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-14 01:30:00.000','30m',0),
(1067,'c81fb648daf9147c67e3c0f6d27f2fe3','2022-10-14 01:38:54.919','2022-10-14 02:53:06.398','[]','builds.63483ecfd7ed4d61e1f2.compute.total',1,'2022-10-14 01:30:00.000','30m',0),
(1068,'cd3f9e2856bb50fbe269a33f015cc968','2022-10-14 01:38:55.011','2022-10-14 02:53:06.481','[]','builds.63483eddbd1271748d75.compute.total',1,'2022-10-14 01:30:00.000','30m',0),
(1069,'7a2832549933dfd5af66bbe0f4fcef53','2022-10-14 01:38:55.108','2022-10-14 02:53:06.571','[]','executions.63483ec2832951780cf7.compute.time',44,'2022-10-14 01:30:00.000','30m',0),
(1070,'02ccc78893575d341ff3be98e442f3c9','2022-10-14 01:38:55.110','2022-10-14 01:38:55.110','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 01:30:00.000','30m',0),
(1071,'6ee9a8e35fdac10fc63f04f771bd3736','2022-10-14 01:38:55.112','2022-10-14 01:38:55.112','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 02:00:00.000','30m',0),
(1072,'cf1ec4faa0ee8e38759c4ab3c5a4dfca','2022-10-14 01:38:55.113','2022-10-14 02:53:06.576','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 02:30:00.000','30m',0),
(1073,'f9b9efaf2b5c980c15aa5b6b6d0efeaa','2022-10-14 01:38:55.115','2022-10-14 02:53:06.578','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 03:00:00.000','30m',0),
(1074,'7f9cffa196ccd96e2b55d8c78715ae9d','2022-10-14 01:38:55.117','2022-10-14 02:53:06.579','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 03:30:00.000','30m',0),
(1075,'36a1f418e7bf5d780a2ff3b7ee4cd684','2022-10-14 01:38:55.119','2022-10-14 02:53:06.581','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 04:00:00.000','30m',0),
(1076,'b8e0f87c6e18e35b9189078028b77a60','2022-10-14 01:38:55.121','2022-10-14 02:53:06.583','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 04:30:00.000','30m',0),
(1077,'eda130a5794ae725c4448b626c378e45','2022-10-14 01:38:55.123','2022-10-14 02:53:06.585','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 05:00:00.000','30m',0),
(1078,'7fad1afc96cd61171c64d3178bd921e1','2022-10-14 01:38:55.124','2022-10-14 02:53:06.587','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 05:30:00.000','30m',0),
(1079,'f5530d388d164391147da879f7aa6b1b','2022-10-14 01:38:55.126','2022-10-14 02:53:06.588','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 06:00:00.000','30m',0),
(1080,'b813a9287edf12853eb1fe28f568f2b6','2022-10-14 01:38:55.128','2022-10-14 02:53:06.590','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 06:30:00.000','30m',0),
(1081,'6ef2e40a51da62cda2d8e0685fd3eea3','2022-10-14 01:38:55.130','2022-10-14 02:53:06.591','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 07:00:00.000','30m',0),
(1082,'75243ffb284f2d894dad00cf2d8577d6','2022-10-14 01:38:55.131','2022-10-14 02:53:06.593','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 07:30:00.000','30m',0),
(1083,'b02af9162317fcf6c9222bb36dccec90','2022-10-14 01:38:55.133','2022-10-14 02:53:06.595','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 08:00:00.000','30m',0),
(1084,'15f8aa2b8888ceff20c0997a62779e19','2022-10-14 01:38:55.134','2022-10-14 02:53:06.597','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 08:30:00.000','30m',0),
(1085,'b7f24f0ed888599dff360001e7ef6f05','2022-10-14 01:38:55.135','2022-10-14 02:53:06.598','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 09:00:00.000','30m',0),
(1086,'0dd3b35196e4dee56ede4f76f422379d','2022-10-14 01:38:55.137','2022-10-14 02:53:06.600','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 09:30:00.000','30m',0),
(1087,'3d46cb9b4a6af264bcd48992dbe83caf','2022-10-14 01:38:55.138','2022-10-14 02:53:06.602','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 10:00:00.000','30m',0),
(1088,'470efc316ea9ce0542ff08100a9a953a','2022-10-14 01:38:55.140','2022-10-14 02:53:06.604','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 10:30:00.000','30m',0),
(1089,'a42c22a1ac751a4266e51d4d6f1fa200','2022-10-14 01:38:55.141','2022-10-14 02:53:06.606','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 11:00:00.000','30m',0),
(1090,'9efd4bf8aa979f80f44d081046e14c36','2022-10-14 01:38:55.143','2022-10-14 02:53:06.608','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 11:30:00.000','30m',0),
(1091,'d3cb32f0c2c5803b506435e94d9a3f29','2022-10-14 01:38:55.144','2022-10-14 02:53:06.610','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 12:00:00.000','30m',0),
(1092,'551553201420587f993630df6dc1313e','2022-10-14 01:38:55.145','2022-10-14 02:53:06.612','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 12:30:00.000','30m',0),
(1093,'987884487c70f94f683146a2a7da6656','2022-10-14 01:38:55.147','2022-10-14 02:53:06.614','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 13:00:00.000','30m',0),
(1094,'e82328998b130fccc6e56f9c2319d2e5','2022-10-14 01:38:55.148','2022-10-14 02:53:06.616','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 13:30:00.000','30m',0),
(1095,'f3763181d4caa921760e00d53957c955','2022-10-14 01:38:55.150','2022-10-14 02:53:06.617','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 14:00:00.000','30m',0),
(1096,'943e99570437cd9d99e008cfdc64557a','2022-10-14 01:38:55.151','2022-10-14 02:53:06.619','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 14:30:00.000','30m',0),
(1097,'02e0451f28d582a0721f1b2fe64dd35f','2022-10-14 01:38:55.153','2022-10-14 02:53:06.621','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 15:00:00.000','30m',0),
(1098,'6494cb835a3d43897ae0c59b299b917c','2022-10-14 01:38:55.154','2022-10-14 02:53:06.623','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 15:30:00.000','30m',0),
(1099,'d8ac900ae0af16785f5d15788e2e9b1a','2022-10-14 01:38:55.155','2022-10-14 02:53:06.625','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 16:00:00.000','30m',0),
(1100,'4dd41bf931e450b0e43a0545f91679f5','2022-10-14 01:38:55.157','2022-10-14 02:53:06.626','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 16:30:00.000','30m',0),
(1101,'0be02beb5c3a879976749bb3e5026ecb','2022-10-14 01:38:55.158','2022-10-14 02:53:06.628','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 17:00:00.000','30m',0),
(1102,'55faadb2fe46011b5bf6c5b589a3831b','2022-10-14 01:38:55.159','2022-10-14 02:53:06.629','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 17:30:00.000','30m',0),
(1103,'192e749646bbedbdfa16980982af68d4','2022-10-14 01:38:55.161','2022-10-14 02:53:06.631','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 18:00:00.000','30m',0),
(1104,'a8919e4e0dae3fde3db4c5b75a19c389','2022-10-14 01:38:55.162','2022-10-14 02:53:06.633','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 18:30:00.000','30m',0),
(1105,'3d56fd573d79300b633360ae65362a60','2022-10-14 01:38:55.164','2022-10-14 02:53:06.635','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 19:00:00.000','30m',0),
(1106,'705182746d192bfcf3ca1ed9c196bdb8','2022-10-14 01:38:55.165','2022-10-14 02:53:06.637','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 19:30:00.000','30m',0),
(1107,'b737ac6c38dcc475e29156569b73f803','2022-10-14 01:38:55.167','2022-10-14 02:53:06.639','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 20:00:00.000','30m',0),
(1108,'ea2c947365463cc27ff2f8e07054a0b6','2022-10-14 01:38:55.168','2022-10-14 02:53:06.641','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 20:30:00.000','30m',0),
(1109,'2cc622805fe3f0a2e1bad54245b49076','2022-10-14 01:38:55.170','2022-10-14 02:53:06.643','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 21:00:00.000','30m',0),
(1110,'8bb1a1f8faee7242684239886df58a73','2022-10-14 01:38:55.171','2022-10-14 02:53:06.645','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 21:30:00.000','30m',0),
(1111,'4ecb6ce9fc64bc27691a8fef173e9b82','2022-10-14 01:38:55.173','2022-10-14 02:53:06.646','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 22:00:00.000','30m',0),
(1112,'2d92adff7e4abf6240a36add93fece4f','2022-10-14 01:38:55.174','2022-10-14 02:53:06.648','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 22:30:00.000','30m',0),
(1113,'69504099d89854207670c88a381563de','2022-10-14 01:38:55.175','2022-10-14 02:53:06.650','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 23:00:00.000','30m',0),
(1114,'a2a488b2a4ede6e0f79cb82320f9e977','2022-10-14 01:38:55.177','2022-10-14 02:53:06.651','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-13 23:30:00.000','30m',0),
(1115,'de060b3775b0ac4632859fa4c017fb2e','2022-10-14 01:38:55.178','2022-10-14 02:53:06.653','[]','executions.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-14 00:00:00.000','30m',0),
(1116,'7f61c1c234074fe8df05f8d1102ea47e','2022-10-14 01:38:55.183','2022-10-14 02:53:06.658','[]','executions.63483ecfd7ed4d61e1f2.compute.time',138,'2022-10-14 01:30:00.000','30m',0),
(1117,'b23d7a2283e6a096e8dd1c53ae90ea2e','2022-10-14 01:38:55.184','2022-10-14 01:38:55.184','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 01:30:00.000','30m',0),
(1118,'64cbbe32398385e8bfdbac391b9038c3','2022-10-14 01:38:55.185','2022-10-14 01:38:55.185','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 02:00:00.000','30m',0),
(1119,'bcbf9b45d424198644ac191292fe8c36','2022-10-14 01:38:55.186','2022-10-14 02:53:06.663','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 02:30:00.000','30m',0),
(1120,'a0bc2ff50692d859ed6e465fc8e24e26','2022-10-14 01:38:55.188','2022-10-14 02:53:06.665','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 03:00:00.000','30m',0),
(1121,'c0fa545f1bd1be894358fd45956f595c','2022-10-14 01:38:55.189','2022-10-14 02:53:06.667','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 03:30:00.000','30m',0),
(1122,'e59b6bf1650128a91b5fa4c81a8d406e','2022-10-14 01:38:55.190','2022-10-14 02:53:06.668','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 04:00:00.000','30m',0),
(1123,'7900c2d7f4573890496e42d4be24f197','2022-10-14 01:38:55.191','2022-10-14 02:53:06.670','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 04:30:00.000','30m',0),
(1124,'52b3f75d02366fd9eca5b64ab9e30313','2022-10-14 01:38:55.192','2022-10-14 02:53:06.672','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 05:00:00.000','30m',0),
(1125,'b33999e2dc7702a64386e7e35cd13512','2022-10-14 01:38:55.194','2022-10-14 02:53:06.673','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 05:30:00.000','30m',0),
(1126,'6eefb53838963945157a29b94c383638','2022-10-14 01:38:55.195','2022-10-14 02:53:06.675','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 06:00:00.000','30m',0),
(1127,'9c857161f3d35b75f3b8a7dcc43df32b','2022-10-14 01:38:55.196','2022-10-14 02:53:06.676','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 06:30:00.000','30m',0),
(1128,'de2e650fff94b6e78440aaab879dfdef','2022-10-14 01:38:55.197','2022-10-14 02:53:06.678','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 07:00:00.000','30m',0),
(1129,'987c4f6fb0e0cb104287b4fdde3e83e9','2022-10-14 01:38:55.199','2022-10-14 02:53:06.680','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 07:30:00.000','30m',0),
(1130,'0ec2dfccde88e163633733c960327b4d','2022-10-14 01:38:55.200','2022-10-14 02:53:06.681','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 08:00:00.000','30m',0),
(1131,'aa789117e32636e0e671112bcf89f2f9','2022-10-14 01:38:55.201','2022-10-14 02:53:06.683','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 08:30:00.000','30m',0),
(1132,'4c993a1548a71538330d39f80b6fb0b1','2022-10-14 01:38:55.203','2022-10-14 02:53:06.685','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 09:00:00.000','30m',0),
(1133,'f21a582de070fa8b9162fea1098c9814','2022-10-14 01:38:55.204','2022-10-14 02:53:06.686','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 09:30:00.000','30m',0),
(1134,'75de8b3c5e622366c1191a53919aeb74','2022-10-14 01:38:55.205','2022-10-14 02:53:06.688','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 10:00:00.000','30m',0),
(1135,'16f5bd01fc635b8eef882a0cedc4f51f','2022-10-14 01:38:55.207','2022-10-14 02:53:06.689','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 10:30:00.000','30m',0),
(1136,'24755b5a845d0513a37656e0737d55bc','2022-10-14 01:38:55.208','2022-10-14 02:53:06.691','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 11:00:00.000','30m',0),
(1137,'3b24657cf0cea94fd54166e28153fa30','2022-10-14 01:38:55.209','2022-10-14 02:53:06.693','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 11:30:00.000','30m',0),
(1138,'8a94a5b8bdb9aa52d2210f13de19cbca','2022-10-14 01:38:55.210','2022-10-14 02:53:06.695','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 12:00:00.000','30m',0),
(1139,'fde8173e160c6c7bd4a5a4ec756b6f67','2022-10-14 01:38:55.211','2022-10-14 02:53:06.697','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 12:30:00.000','30m',0),
(1140,'e5f083fd91f18a42edaa29e4a95a8f9c','2022-10-14 01:38:55.213','2022-10-14 02:53:06.698','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 13:00:00.000','30m',0),
(1141,'e73403146eb832191dd1997b306e7e9f','2022-10-14 01:38:55.214','2022-10-14 02:53:06.700','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 13:30:00.000','30m',0),
(1142,'4f232ec4fd904932762f520839f001df','2022-10-14 01:38:55.216','2022-10-14 02:53:06.702','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 14:00:00.000','30m',0),
(1143,'bae3011d2c12af8e0915bd05c43a7652','2022-10-14 01:38:55.217','2022-10-14 02:53:06.704','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 14:30:00.000','30m',0),
(1144,'fa8376373a7b10a6a814df9d9c7ab030','2022-10-14 01:38:55.218','2022-10-14 02:53:06.705','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 15:00:00.000','30m',0),
(1145,'8ddcced7d60022438b25e4149e1e2a0b','2022-10-14 01:38:55.220','2022-10-14 02:53:06.707','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 15:30:00.000','30m',0),
(1146,'6ff19841d43437bf97de03eaafecf114','2022-10-14 01:38:55.221','2022-10-14 02:53:06.709','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 16:00:00.000','30m',0),
(1147,'47d77c6fcdea626ad6ae641c17db203a','2022-10-14 01:38:55.223','2022-10-14 02:53:06.710','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 16:30:00.000','30m',0),
(1148,'f532a846b9d3805eef31de7e82234248','2022-10-14 01:38:55.224','2022-10-14 02:53:06.712','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 17:00:00.000','30m',0),
(1149,'a862790ee061916fd25d3e52f87b4c36','2022-10-14 01:38:55.226','2022-10-14 02:53:06.714','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 17:30:00.000','30m',0),
(1150,'2f3a27a15c2907641d39e5ac5f5e8280','2022-10-14 01:38:55.227','2022-10-14 02:53:06.716','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 18:00:00.000','30m',0),
(1151,'d32d220850a673e445c5f4c35322d7d6','2022-10-14 01:38:55.229','2022-10-14 02:53:06.718','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 18:30:00.000','30m',0),
(1152,'a5f9fa83331f99e1adbdc4d1d2ae9e1e','2022-10-14 01:38:55.230','2022-10-14 02:53:06.719','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 19:00:00.000','30m',0),
(1153,'c9e4ea5581b5952f77c5755767ee63a9','2022-10-14 01:38:55.232','2022-10-14 02:53:06.721','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 19:30:00.000','30m',0),
(1154,'372e7ec771eccd916ac343bfdf9ad771','2022-10-14 01:38:55.233','2022-10-14 02:53:06.724','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 20:00:00.000','30m',0),
(1155,'00ada784044df5759c1ebfabf1cf1a59','2022-10-14 01:38:55.235','2022-10-14 02:53:06.727','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 20:30:00.000','30m',0),
(1156,'a427da32c2738d3341e53103793e0c18','2022-10-14 01:38:55.236','2022-10-14 02:53:06.729','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 21:00:00.000','30m',0),
(1157,'00ac8eae9fa621ec6abe0fea7fb9480a','2022-10-14 01:38:55.238','2022-10-14 02:53:06.731','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 21:30:00.000','30m',0),
(1158,'552b90890514eb3e4fa2e197f1235826','2022-10-14 01:38:55.239','2022-10-14 02:53:06.733','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 22:00:00.000','30m',0),
(1159,'1e125f1ce09c84bba81437d19f7a6fa4','2022-10-14 01:38:55.241','2022-10-14 02:53:06.734','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 22:30:00.000','30m',0),
(1160,'2eab79e401718eb64df610f772bb026a','2022-10-14 01:38:55.242','2022-10-14 02:53:06.736','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 23:00:00.000','30m',0),
(1161,'0a074f2aa5cfadd516905898cc6bb64f','2022-10-14 01:38:55.244','2022-10-14 02:53:06.738','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-13 23:30:00.000','30m',0),
(1162,'3ec395f5a8e8603aca38bba2eb407cd9','2022-10-14 01:38:55.246','2022-10-14 02:53:06.740','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-14 00:00:00.000','30m',0),
(1163,'d1e5a3ff859f3248a1fb944878d7bd6d','2022-10-14 01:38:55.251','2022-10-14 02:53:06.745','[]','executions.63483eddbd1271748d75.compute.time',117,'2022-10-14 01:30:00.000','30m',0),
(1164,'eab8f64aa03f66992a1a4d7fdf55c485','2022-10-14 01:38:55.348','2022-10-14 02:53:06.836','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-14 01:30:00.000','30m',0),
(1165,'973ca21588d1c24a90dae379aecf5040','2022-10-14 01:38:55.452','2022-10-14 02:53:06.926','[]','builds.63483ecfd7ed4d61e1f2.compute.time',9000,'2022-10-14 01:30:00.000','30m',0),
(1166,'e5499fc6753effdbd271e1f6724e50a9','2022-10-14 01:38:55.559','2022-10-14 02:53:07.014','[]','builds.63483eddbd1271748d75.compute.time',4000,'2022-10-14 01:30:00.000','30m',0),
(1167,'1175cc29b098cc94decd3d938c449e4d','2022-10-14 01:38:55.687','2022-10-14 02:53:07.267','[]','project.$all.compute.time',4117,'2022-10-14 01:30:00.000','30m',0),
(1168,'bdd45497978c19fabdc5eb4835472515','2022-10-14 02:00:01.984','2022-10-14 02:53:05.026','[]','project.$all.network.bandwidth',0,'2022-10-14 02:00:00.000','30m',0),
(1169,'2f21a10a339ed548d4fe75c0e731a0fe','2022-10-14 02:00:01.988','2022-10-14 02:53:05.227','[]','project.$all.network.inbound',0,'2022-10-14 02:00:00.000','30m',0),
(1170,'ed74a50ee3a7d79c6cd773bab4ddccc8','2022-10-14 02:00:01.993','2022-10-14 02:53:05.344','[]','project.$all.network.outbound',0,'2022-10-14 02:00:00.000','30m',0),
(1171,'55e3e9619f899cc412269296db13bd7d','2022-10-14 02:00:02.093','2022-10-14 02:53:05.523','[]','executions.$all.compute.total',4,'2022-10-14 02:00:00.000','30m',0),
(1172,'1549fa9c743c8f267bd69e80951ae910','2022-10-14 02:00:02.100','2022-10-14 02:53:05.616','[]','builds.$all.compute.time',250,'2022-10-14 02:00:00.000','30m',0),
(1173,'0e751252370f6f5dc56be8efd744d07f','2022-10-14 02:00:02.106','2022-10-14 02:53:05.746','[]','executions.$all.compute.time',250,'2022-10-14 02:00:00.000','30m',0),
(1174,'61c1bdc77d34e8063042807f3e551d64','2022-10-14 02:00:02.132','2022-10-14 02:53:05.868','[]','builds.$all.compute.total',0,'2022-10-14 02:00:00.000','30m',0),
(1175,'d94a3791bad6d3ac101c356bdaa74c30','2022-10-14 02:00:02.167','2022-10-14 02:53:05.977','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-14 02:00:00.000','30m',0),
(1176,'55d303d49d209e35da83e8fcffec452b','2022-10-14 02:00:02.172','2022-10-14 02:53:06.126','[]','executions.63483ecfd7ed4d61e1f2.compute.total',4,'2022-10-14 02:00:00.000','30m',0),
(1177,'39c060da60541a482acebdcae0fa851d','2022-10-14 02:00:02.176','2022-10-14 02:53:06.224','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-14 02:00:00.000','30m',0),
(1178,'f6ba01fbbf789505b446920428a24a35','2022-10-14 02:00:02.182','2022-10-14 02:53:06.399','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-14 02:00:00.000','30m',0),
(1179,'005e0f3ff4cc742e5d5e73413f94529f','2022-10-14 02:00:02.187','2022-10-14 02:53:06.482','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-14 02:00:00.000','30m',0),
(1180,'b8b0e857cfbad0b60a5c343508b8eb12','2022-10-14 02:00:02.196','2022-10-14 02:53:06.573','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-14 02:00:00.000','30m',0),
(1181,'7ec211a273a770e0920c05e4bd47ac09','2022-10-14 02:00:02.201','2022-10-14 02:53:06.660','[]','executions.63483ecfd7ed4d61e1f2.compute.time',250,'2022-10-14 02:00:00.000','30m',0),
(1182,'ddbff30db2e5a3a9189f043084a3744c','2022-10-14 02:00:02.205','2022-10-14 02:53:06.747','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-14 02:00:00.000','30m',0),
(1183,'bddff8f265b231eda6aa04d604a5edb5','2022-10-14 02:00:02.211','2022-10-14 02:53:06.928','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-14 02:00:00.000','30m',0),
(1184,'44ce0ee4e0a7b02b9ddd66cd9b8ec8d8','2022-10-14 02:00:02.216','2022-10-14 02:53:07.016','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-14 02:00:00.000','30m',0),
(1185,'8bc684e3c214ddd67ebbeb3a4615833f','2022-10-14 02:00:02.259','2022-10-14 02:53:07.269','[]','project.$all.compute.time',0,'2022-10-14 02:00:00.000','30m',0),
(1186,'319bf474c90861450d2f8ee3fbd5aee1','2022-10-14 02:08:53.769','2022-10-14 02:23:54.040','[]','users.$all.count.total',0,'2022-10-14 02:00:00.000','30m',2),
(1187,'6f42b06c2df7b24ffef36560409b8f97','2022-10-14 02:08:53.772','2022-10-14 02:23:54.044','[]','databases.$all.count.total',0,'2022-10-14 02:00:00.000','30m',2),
(1188,'0265f34b1827fdd06ca8205325fe2c4e','2022-10-14 02:08:53.775','2022-10-14 02:23:54.047','[]','collections.$all.count.total',0,'2022-10-14 02:00:00.000','30m',2),
(1189,'03af8ae3d49943ac1041a753c26517a8','2022-10-14 02:08:53.778','2022-10-14 02:23:54.051','[]','documents.$all.count.total',0,'2022-10-14 02:00:00.000','30m',2),
(1190,'5d4218875087f9412cf7fd03c479d255','2022-10-14 02:08:53.781','2022-10-14 02:23:54.055','[]','buckets.$all.count.total',0,'2022-10-14 02:00:00.000','30m',2),
(1191,'eb81a80aabe011a13b344546ad727c31','2022-10-14 02:08:53.785','2022-10-14 02:23:54.060','[]','files.$all.count.total',0,'2022-10-14 02:00:00.000','30m',2),
(1192,'1d7b358886893aa28af9c91262f79b46','2022-10-14 02:08:53.787','2022-10-14 02:23:54.063','[]','files.$all.storage.size',0,'2022-10-14 02:00:00.000','30m',2),
(1193,'9ea1b866c63e9072be1ec25fca7f2d2e','2022-10-14 02:08:53.790','2022-10-14 02:23:54.067','[]','deployments.$all.storage.size',14724,'2022-10-14 02:00:00.000','30m',2),
(1194,'3efbd2da5c04a26918116c2a91cf2b50','2022-10-14 02:08:53.793','2022-10-14 02:23:54.070','[]','project.$all.storage.size',14724,'2022-10-14 02:00:00.000','30m',2),
(1195,'68fb826f8ddb17db2136810f0a4134af','2022-10-14 02:30:08.861','2022-10-14 03:00:08.584','[]','project.$all.network.bandwidth',0,'2022-10-14 02:30:00.000','30m',0),
(1196,'496194b61c936c7ed57ac46188d4670d','2022-10-14 02:30:08.867','2022-10-14 03:00:08.590','[]','project.$all.network.inbound',0,'2022-10-14 02:30:00.000','30m',0),
(1197,'006da7ca81afcda8c795f350c93e07d0','2022-10-14 02:30:08.873','2022-10-14 03:00:08.594','[]','project.$all.network.outbound',0,'2022-10-14 02:30:00.000','30m',0),
(1198,'aa1f7c94e09619d1e5bd410fb8c0dfe9','2022-10-14 02:30:08.929','2022-10-14 03:00:08.643','[]','executions.$all.compute.total',1,'2022-10-14 02:30:00.000','30m',0),
(1199,'cc62ee61a33390bc99a8678cd3fdb6e4','2022-10-14 02:30:08.934','2022-10-14 03:00:08.648','[]','builds.$all.compute.time',60,'2022-10-14 02:30:00.000','30m',0),
(1200,'571a88b64dfaa17d2955f2b367827341','2022-10-14 02:30:08.939','2022-10-14 03:00:08.653','[]','executions.$all.compute.time',60,'2022-10-14 02:30:00.000','30m',0),
(1201,'dc7a1809e6290df00b4188a405414db3','2022-10-14 02:30:08.951','2022-10-14 03:00:08.663','[]','executions.63483ecfd7ed4d61e1f2.compute.total',1,'2022-10-14 02:30:00.000','30m',0),
(1202,'b42c7853e822a8b5bc269d2a9a03d145','2022-10-14 02:30:08.957','2022-10-14 03:00:08.669','[]','executions.63483ecfd7ed4d61e1f2.compute.time',60,'2022-10-14 02:30:00.000','30m',0),
(1203,'c4d39c991f0b15ace81c64ba21b26102','2022-10-14 02:30:08.968','2022-10-14 03:00:08.679','[]','project.$all.compute.time',60,'2022-10-14 02:30:00.000','30m',0),
(1204,'cca91403d14e18878986581fd2b28a54','2022-10-14 02:38:54.317','2022-10-14 02:53:04.346','[]','users.$all.count.total',2,'2022-10-14 02:30:00.000','30m',2),
(1205,'30e4c021adfe48d02daa8cab62341074','2022-10-14 02:38:54.321','2022-10-14 02:53:04.357','[]','databases.$all.count.total',1,'2022-10-14 02:30:00.000','30m',2),
(1206,'a0955cc30c06c92a7fd96a94ca144d70','2022-10-14 02:38:54.325','2022-10-14 02:53:04.365','[]','collections.6348c8a122da8b9b7458.count.total',1,'2022-10-14 02:30:00.000','30m',2),
(1207,'c63c6731b1466904b3c8ee44409be0f3','2022-10-14 02:38:54.326','2022-10-14 02:53:04.368','[]','collections.6348c8a122da8b9b7458.count.total',1,'2022-10-14 00:00:00.000','1d',2),
(1208,'b0162e9820bac4e39d204ef855aa2cae','2022-10-14 02:38:54.329','2022-10-14 02:53:04.374','[]','documents.6348c8a122da8b9b7458/6348c8aa72a36c3985b2.count.total',4,'2022-10-14 02:30:00.000','30m',2),
(1209,'3ba888fdc4f0b2e93ebced1316898950','2022-10-14 02:38:54.330','2022-10-14 02:53:04.377','[]','documents.6348c8a122da8b9b7458/6348c8aa72a36c3985b2.count.total',4,'2022-10-14 00:00:00.000','1d',2),
(1210,'e125ff0970f4ed39d36523f6320acdb7','2022-10-14 02:38:54.332','2022-10-14 02:53:04.380','[]','documents.6348c8a122da8b9b7458.count.total',4,'2022-10-14 02:30:00.000','30m',2),
(1211,'33a298fc132bf4be2c2c630c3d42955c','2022-10-14 02:38:54.333','2022-10-14 02:53:04.411','[]','documents.6348c8a122da8b9b7458.count.total',4,'2022-10-14 00:00:00.000','1d',2),
(1212,'19484bec6265c17ea1ed735fd1251e03','2022-10-14 02:38:54.334','2022-10-14 02:53:04.413','[]','collections.$all.count.total',1,'2022-10-14 02:30:00.000','30m',2),
(1213,'e6bb1af116f944071b4fe4dee0b82846','2022-10-14 02:38:54.337','2022-10-14 02:53:04.419','[]','documents.$all.count.total',4,'2022-10-14 02:30:00.000','30m',2),
(1214,'13ad49ed63ef0621c5f8400ce004efba','2022-10-14 02:38:54.341','2022-10-14 02:53:04.426','[]','buckets.$all.count.total',1,'2022-10-14 02:30:00.000','30m',2),
(1215,'a13b2dd293bb2cb3ddc74a4dfbc04f66','2022-10-14 02:38:54.344','2022-10-14 02:53:04.433','[]','files.6348c93561722db95312.count.total',1,'2022-10-14 02:30:00.000','30m',2),
(1216,'ab361974a8b253033240a60649c6af7b','2022-10-14 02:38:54.345','2022-10-14 02:53:04.436','[]','files.6348c93561722db95312.count.total',1,'2022-10-14 00:00:00.000','1d',2),
(1217,'1e2c1636b173110d2ed535d6412d88d9','2022-10-14 02:38:54.347','2022-10-14 02:53:04.440','[]','files.6348c93561722db95312.storage.size',24444,'2022-10-14 02:30:00.000','30m',2),
(1218,'90867e1cde46e6f74563a0700dc446ba','2022-10-14 02:38:54.348','2022-10-14 02:53:04.443','[]','files.6348c93561722db95312.storage.size',24444,'2022-10-14 00:00:00.000','1d',2),
(1219,'f6f8bcfe138ac67a5567aeebab2edff3','2022-10-14 02:38:54.349','2022-10-14 02:53:04.445','[]','files.$all.count.total',1,'2022-10-14 02:30:00.000','30m',2),
(1220,'90761e90e8aed7978f24f528b1e85811','2022-10-14 02:38:54.353','2022-10-14 02:53:04.454','[]','files.$all.storage.size',24444,'2022-10-14 02:30:00.000','30m',2),
(1221,'e291eb6337974399a960d86819489499','2022-10-14 02:38:54.356','2022-10-14 02:53:04.461','[]','deployments.$all.storage.size',14724,'2022-10-14 02:30:00.000','30m',2),
(1222,'332cef589606bae875ec4279acb8ea04','2022-10-14 02:38:54.359','2022-10-14 02:53:04.466','[]','project.$all.storage.size',39168,'2022-10-14 02:30:00.000','30m',2),
(1223,'5c43333650f6e6f148e69d90f138f10b','2022-10-14 02:38:54.557','2022-10-14 02:53:04.873','[]','collections.6348c8a122da8b9b7458.requests.create',0,'2022-10-14 00:00:00.000','1d',2),
(1224,'a5125ec0fde62cfd07046456c2db814f','2022-10-14 02:38:54.559','2022-10-14 02:53:04.876','[]','collections.6348c8a122da8b9b7458.requests.create',0,'2022-10-01 00:00:00.000','1mo',2),
(1225,'e8d4ef4ecf3540d7632ac3b87f0960dd','2022-10-14 02:38:54.560','2022-10-14 02:53:04.878','[]','collections.6348c8a122da8b9b7458.requests.read',0,'2022-10-14 00:00:00.000','1d',2),
(1226,'96af3ec89c742fb0d71ddbc6c74c4d2f','2022-10-14 02:38:54.561','2022-10-14 02:53:04.880','[]','collections.6348c8a122da8b9b7458.requests.read',0,'2022-10-01 00:00:00.000','1mo',2),
(1227,'83aa0d131643f3a06952382986c6449b','2022-10-14 02:38:54.563','2022-10-14 02:53:04.882','[]','collections.6348c8a122da8b9b7458.requests.update',0,'2022-10-14 00:00:00.000','1d',2),
(1228,'8e54588da13fbf07f05066e8c97beee2','2022-10-14 02:38:54.564','2022-10-14 02:53:04.884','[]','collections.6348c8a122da8b9b7458.requests.update',0,'2022-10-01 00:00:00.000','1mo',2),
(1229,'0d1086f8faf8bc9e202811ef379c52f7','2022-10-14 02:38:54.565','2022-10-14 02:53:04.886','[]','collections.6348c8a122da8b9b7458.requests.delete',0,'2022-10-14 00:00:00.000','1d',2),
(1230,'cb9edc16563a27c9fd7221dfdf8375cc','2022-10-14 02:38:54.567','2022-10-14 02:53:04.908','[]','collections.6348c8a122da8b9b7458.requests.delete',0,'2022-10-01 00:00:00.000','1mo',2),
(1231,'46dda0d3a34e841e3735cb31297f1c4a','2022-10-14 02:38:54.568','2022-10-14 02:53:04.910','[]','documents.6348c8a122da8b9b7458.requests.create',0,'2022-10-14 00:00:00.000','1d',2),
(1232,'4162b15625b81616938e2c1985691b9c','2022-10-14 02:38:54.569','2022-10-14 02:53:04.913','[]','documents.6348c8a122da8b9b7458.requests.create',0,'2022-10-01 00:00:00.000','1mo',2),
(1233,'4c42aa487c1d7b04f201364e679b784e','2022-10-14 02:38:54.571','2022-10-14 02:53:04.916','[]','documents.6348c8a122da8b9b7458.requests.read',0,'2022-10-14 00:00:00.000','1d',2),
(1234,'a3104186eb2bccbedc71da080d83d81e','2022-10-14 02:38:54.573','2022-10-14 02:53:04.918','[]','documents.6348c8a122da8b9b7458.requests.read',0,'2022-10-01 00:00:00.000','1mo',2),
(1235,'9c247ec90024eaaa2d572694bd0f2dc8','2022-10-14 02:38:54.574','2022-10-14 02:53:04.920','[]','documents.6348c8a122da8b9b7458.requests.update',0,'2022-10-14 00:00:00.000','1d',2),
(1236,'366593002d8649e6cd9817cc05a61d3c','2022-10-14 02:38:54.576','2022-10-14 02:53:04.923','[]','documents.6348c8a122da8b9b7458.requests.update',0,'2022-10-01 00:00:00.000','1mo',2),
(1237,'94e09c1a1205d36ec3d02e1041656cde','2022-10-14 02:38:54.577','2022-10-14 02:53:04.926','[]','documents.6348c8a122da8b9b7458.requests.delete',0,'2022-10-14 00:00:00.000','1d',2),
(1238,'b463db5f9bec20df99d0959b42b53ea5','2022-10-14 02:38:54.579','2022-10-14 02:53:04.929','[]','documents.6348c8a122da8b9b7458.requests.delete',0,'2022-10-01 00:00:00.000','1mo',2),
(1239,'8b03131872909cbb542f040f7f55df54','2022-10-14 02:38:54.581','2022-10-14 02:53:04.933','[]','documents.6348c8a122da8b9b7458/6348c8aa72a36c3985b2.requests.create',0,'2022-10-14 00:00:00.000','1d',2),
(1240,'c6341227e61de00b73df859c0f9f746a','2022-10-14 02:38:54.583','2022-10-14 02:53:04.936','[]','documents.6348c8a122da8b9b7458/6348c8aa72a36c3985b2.requests.create',0,'2022-10-01 00:00:00.000','1mo',2),
(1241,'540219ba19ac2ca3250bf829ea8668a7','2022-10-14 02:38:54.584','2022-10-14 02:53:04.939','[]','documents.6348c8a122da8b9b7458/6348c8aa72a36c3985b2.requests.read',0,'2022-10-14 00:00:00.000','1d',2),
(1242,'2ef1feaf2227de2bcebe52047e57fb22','2022-10-14 02:38:54.586','2022-10-14 02:53:04.941','[]','documents.6348c8a122da8b9b7458/6348c8aa72a36c3985b2.requests.read',0,'2022-10-01 00:00:00.000','1mo',2),
(1243,'371d1539c65bae4e5fc4a8871f53eeb7','2022-10-14 02:38:54.587','2022-10-14 02:53:04.944','[]','documents.6348c8a122da8b9b7458/6348c8aa72a36c3985b2.requests.update',0,'2022-10-14 00:00:00.000','1d',2),
(1244,'11c6ff2866b7275a4494f1512fe3c0a9','2022-10-14 02:38:54.588','2022-10-14 02:53:04.947','[]','documents.6348c8a122da8b9b7458/6348c8aa72a36c3985b2.requests.update',0,'2022-10-01 00:00:00.000','1mo',2),
(1245,'8c955ac2777d9637c781584e42faefee','2022-10-14 02:38:54.590','2022-10-14 02:53:04.949','[]','documents.6348c8a122da8b9b7458/6348c8aa72a36c3985b2.requests.delete',0,'2022-10-14 00:00:00.000','1d',2),
(1246,'6f46214059c99934ebcf5808b962b8b3','2022-10-14 02:38:54.592','2022-10-14 02:53:04.952','[]','documents.6348c8a122da8b9b7458/6348c8aa72a36c3985b2.requests.delete',0,'2022-10-01 00:00:00.000','1mo',2),
(1247,'4e0881a7b4c079f7042f1493edd31da2','2022-10-14 02:38:54.627','2022-10-14 02:53:04.993','[]','files.6348c93561722db95312.requests.create',0,'2022-10-14 00:00:00.000','1d',2),
(1248,'48597ba9da3d4d56396338336ff7582f','2022-10-14 02:38:54.628','2022-10-14 02:53:04.995','[]','files.6348c93561722db95312.requests.create',0,'2022-10-01 00:00:00.000','1mo',2),
(1249,'deb9c6c597c0bfcb3118e3e07d25a01c','2022-10-14 02:38:54.630','2022-10-14 02:53:04.998','[]','files.6348c93561722db95312.requests.read',0,'2022-10-14 00:00:00.000','1d',2),
(1250,'21c7b5cbfe44066c4acb9b45f1e7c6ce','2022-10-14 02:38:54.631','2022-10-14 02:53:05.008','[]','files.6348c93561722db95312.requests.read',0,'2022-10-01 00:00:00.000','1mo',2),
(1251,'5727dbc21c17d52d02e911dfbb70d403','2022-10-14 02:38:54.633','2022-10-14 02:53:05.011','[]','files.6348c93561722db95312.requests.update',0,'2022-10-14 00:00:00.000','1d',2),
(1252,'c05e033412cc1683a2e83891b3a597e7','2022-10-14 02:38:54.635','2022-10-14 02:53:05.013','[]','files.6348c93561722db95312.requests.update',0,'2022-10-01 00:00:00.000','1mo',2),
(1253,'d941e07e209e391aa07c2650c32852a7','2022-10-14 02:38:54.636','2022-10-14 02:53:05.016','[]','files.6348c93561722db95312.requests.delete',0,'2022-10-14 00:00:00.000','1d',2),
(1254,'48717e2d774abb2dc18f66da8aabf386','2022-10-14 02:38:54.638','2022-10-14 02:53:05.018','[]','files.6348c93561722db95312.requests.delete',0,'2022-10-01 00:00:00.000','1mo',2),
(1255,'6b09f552060a3d83fbc54ddc3ec3ebb3','2022-10-14 02:53:05.870','2022-10-14 02:53:05.870','[]','builds.$all.compute.total',0,'2022-10-14 02:30:00.000','30m',0),
(1256,'82a76a6a9d31526a103cb25876c13e4f','2022-10-14 02:53:05.979','2022-10-14 02:53:05.979','[]','executions.63483ec2832951780cf7.compute.total',0,'2022-10-14 02:30:00.000','30m',0),
(1257,'5b8da06b2a92bc822d3caae079102b55','2022-10-14 02:53:06.226','2022-10-14 02:53:06.226','[]','executions.63483eddbd1271748d75.compute.total',0,'2022-10-14 02:30:00.000','30m',0),
(1258,'85d1993e7dff8c8a9f02938050f97f53','2022-10-14 02:53:06.312','2022-10-14 02:53:06.312','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-14 02:00:00.000','30m',0),
(1259,'277a1fb1dee5ba9cdc61556b34ccce0f','2022-10-14 02:53:06.314','2022-10-14 02:53:06.314','[]','builds.63483ec2832951780cf7.compute.total',0,'2022-10-14 02:30:00.000','30m',0),
(1260,'519631597a46c2be7be044a296039fb3','2022-10-14 02:53:06.401','2022-10-14 02:53:06.401','[]','builds.63483ecfd7ed4d61e1f2.compute.total',0,'2022-10-14 02:30:00.000','30m',0),
(1261,'c2ab1dbd22b076fd4c297a51662ae8fd','2022-10-14 02:53:06.484','2022-10-14 02:53:06.484','[]','builds.63483eddbd1271748d75.compute.total',0,'2022-10-14 02:30:00.000','30m',0),
(1262,'7bab6ca8720d022d7bce09b4ccc71f7a','2022-10-14 02:53:06.575','2022-10-14 02:53:06.575','[]','executions.63483ec2832951780cf7.compute.time',0,'2022-10-14 02:30:00.000','30m',0),
(1263,'fb47cd85b2873cf71631d065e7ceefe6','2022-10-14 02:53:06.748','2022-10-14 02:53:06.748','[]','executions.63483eddbd1271748d75.compute.time',0,'2022-10-14 02:30:00.000','30m',0),
(1264,'46e4e35da228276114da3d8cf23928b8','2022-10-14 02:53:06.838','2022-10-14 02:53:06.838','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-14 02:00:00.000','30m',0),
(1265,'7dc9ceb5ab7768ccfa4b76fcd835719e','2022-10-14 02:53:06.839','2022-10-14 02:53:06.839','[]','builds.63483ec2832951780cf7.compute.time',0,'2022-10-14 02:30:00.000','30m',0),
(1266,'9f5a51e869b058d16f37705cc01d66e6','2022-10-14 02:53:06.930','2022-10-14 02:53:06.930','[]','builds.63483ecfd7ed4d61e1f2.compute.time',0,'2022-10-14 02:30:00.000','30m',0),
(1267,'90dcead3ab73e23c3c7afe9f5405797b','2022-10-14 02:53:07.017','2022-10-14 02:53:07.017','[]','builds.63483eddbd1271748d75.compute.time',0,'2022-10-14 02:30:00.000','30m',0),
(1268,'9dcf4e8d48d84e265273bf95d48956c9','2022-10-14 03:00:08.586','2022-10-14 03:07:39.982','[]','project.$all.network.bandwidth',0,'2022-10-14 03:00:00.000','30m',0),
(1269,'15535569c6b9198a64325b84795ba3b2','2022-10-14 03:00:08.591','2022-10-14 03:07:39.986','[]','project.$all.network.inbound',0,'2022-10-14 03:00:00.000','30m',0),
(1270,'a42f412b5ecef104489ee14f3046b724','2022-10-14 03:00:08.596','2022-10-14 03:07:39.990','[]','project.$all.network.outbound',0,'2022-10-14 03:00:00.000','30m',0),
(1271,'1fd74c6a791ffb32f4db1abc03243db1','2022-10-14 03:00:08.645','2022-10-14 03:07:40.042','[]','executions.$all.compute.total',1,'2022-10-14 03:00:00.000','30m',0),
(1272,'4c4bb65e46cc61f0dcb1d1ea6ce36d91','2022-10-14 03:00:08.650','2022-10-14 03:07:40.046','[]','builds.$all.compute.time',140,'2022-10-14 03:00:00.000','30m',0),
(1273,'587eb73cc93e53fcd6ff7e3f68becba6','2022-10-14 03:00:08.655','2022-10-14 03:07:40.050','[]','executions.$all.compute.time',140,'2022-10-14 03:00:00.000','30m',0),
(1274,'dcfa691940c9a7d2d29bd19b4393531d','2022-10-14 03:00:08.665','2022-10-14 03:07:40.059','[]','executions.63483ecfd7ed4d61e1f2.compute.total',1,'2022-10-14 03:00:00.000','30m',0),
(1275,'42124d0cf85cff13fbed9cc3229aa9cf','2022-10-14 03:00:08.671','2022-10-14 03:07:40.064','[]','executions.63483ecfd7ed4d61e1f2.compute.time',140,'2022-10-14 03:00:00.000','30m',0),
(1276,'ce070a2c3db565a69bad88a78a67045b','2022-10-14 03:00:08.681','2022-10-14 03:07:40.074','[]','project.$all.compute.time',140,'2022-10-14 03:00:00.000','30m',0);
/*!40000 ALTER TABLE `_1_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_stats_perms`
--

DROP TABLE IF EXISTS `_1_stats_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_stats_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_stats_perms`
--

LOCK TABLES `_1_stats_perms` WRITE;
/*!40000 ALTER TABLE `_1_stats_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_stats_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_teams`
--

DROP TABLE IF EXISTS `_1_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_teams` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_key_total` (`total`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_teams`
--

LOCK TABLES `_1_teams` WRITE;
/*!40000 ALTER TABLE `_1_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_teams_perms`
--

DROP TABLE IF EXISTS `_1_teams_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_teams_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_teams_perms`
--

LOCK TABLES `_1_teams_perms` WRITE;
/*!40000 ALTER TABLE `_1_teams_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_teams_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_tokens`
--

DROP TABLE IF EXISTS `_1_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_tokens` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `secret` varchar(512) DEFAULT NULL,
  `expire` datetime(3) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_user` (`userInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_tokens`
--

LOCK TABLES `_1_tokens` WRITE;
/*!40000 ALTER TABLE `_1_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_tokens_perms`
--

DROP TABLE IF EXISTS `_1_tokens_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_tokens_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_tokens_perms`
--

LOCK TABLES `_1_tokens_perms` WRITE;
/*!40000 ALTER TABLE `_1_tokens_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_tokens_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_users`
--

DROP TABLE IF EXISTS `_1_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_users` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `hash` varchar(256) DEFAULT NULL,
  `hashOptions` text DEFAULT NULL,
  `passwordUpdate` datetime(3) DEFAULT NULL,
  `prefs` text DEFAULT NULL,
  `registration` datetime(3) DEFAULT NULL,
  `emailVerification` tinyint(1) DEFAULT NULL,
  `phoneVerification` tinyint(1) DEFAULT NULL,
  `reset` tinyint(1) DEFAULT NULL,
  `sessions` text DEFAULT NULL,
  `tokens` text DEFAULT NULL,
  `memberships` text DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  UNIQUE KEY `_key_email` (`email`),
  UNIQUE KEY `_key_phone` (`phone`),
  KEY `_key_name` (`name`),
  KEY `_key_status` (`status`),
  KEY `_key_passwordUpdate` (`passwordUpdate`),
  KEY `_key_registration` (`registration`),
  KEY `_key_emailVerification` (`emailVerification`),
  KEY `_key_phoneVerification` (`phoneVerification`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_users`
--

LOCK TABLES `_1_users` WRITE;
/*!40000 ALTER TABLE `_1_users` DISABLE KEYS */;
INSERT INTO `_1_users` VALUES
(1,'6348c97d735128ccf38a','2022-10-14 02:29:17.548','2022-10-14 02:29:17.548','[\"read(\\\"any\\\")\",\"update(\\\"user:6348c97d735128ccf38a\\\")\",\"delete(\\\"user:6348c97d735128ccf38a\\\")\"]','user','user@qq.com',NULL,1,'{\"data\":\"44rqtci\\/3RviGWvLsTy9YhjGne9N8qvpaXjLjI1Sv8zvuyAVLb16WIcs\\/ATv6Xt2f3dYgFTnon+djWerE+Ylz+dVIMIRuDSC+cXEM62VVvP6bSt1PCYxnioPNhx6hyJvUg==\",\"method\":\"aes-128-gcm\",\"iv\":\"20c1422ed61fe36bfe7280b3\",\"tag\":\"95bba0b8f71084889224f9915ff34bdb\",\"version\":\"1\"}','argon2','{\"memoryCost\":2048,\"timeCost\":4,\"threads\":3}','2022-10-14 02:29:17.548','{}','2022-10-14 02:29:17.548',0,0,0,NULL,NULL,NULL,'6348c97d735128ccf38a user@qq.com  user'),
(2,'6348c9db84936ef2e242','2022-10-14 02:30:51.619','2022-10-14 02:30:51.619','[\"read(\\\"any\\\")\",\"update(\\\"user:6348c9db84936ef2e242\\\")\",\"delete(\\\"user:6348c9db84936ef2e242\\\")\"]','test','test@qa.com',NULL,1,'{\"data\":\"e7ee2gtMLU9s5ZrN5gSHry06sz9w2\\/xf+gWiFmTzCHvBXzPzXS3xkCEuUDqQe8hCJp2niaf49kZ2BxBL3DLjkCcxIv9uKIZ1NH3ipFS5pZV7Fd1HNTmzpOaXneaIIkhB4w==\",\"method\":\"aes-128-gcm\",\"iv\":\"78a9648856ce5385fb144037\",\"tag\":\"0639b7a9dac0ccd9f9130f25afc8710a\",\"version\":\"1\"}','argon2','{\"memoryCost\":2048,\"timeCost\":4,\"threads\":3}','2022-10-14 02:30:51.618','{}','2022-10-14 02:30:51.618',0,0,0,NULL,NULL,NULL,'6348c9db84936ef2e242 test@qa.com  test');
/*!40000 ALTER TABLE `_1_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_users_perms`
--

DROP TABLE IF EXISTS `_1_users_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_users_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_users_perms`
--

LOCK TABLES `_1_users_perms` WRITE;
/*!40000 ALTER TABLE `_1_users_perms` DISABLE KEYS */;
INSERT INTO `_1_users_perms` VALUES
(3,'delete','user:6348c97d735128ccf38a','6348c97d735128ccf38a'),
(1,'read','any','6348c97d735128ccf38a'),
(2,'update','user:6348c97d735128ccf38a','6348c97d735128ccf38a'),
(6,'delete','user:6348c9db84936ef2e242','6348c9db84936ef2e242'),
(4,'read','any','6348c9db84936ef2e242'),
(5,'update','user:6348c9db84936ef2e242','6348c9db84936ef2e242');
/*!40000 ALTER TABLE `_1_users_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_variables`
--

DROP TABLE IF EXISTS `_1_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_variables` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `functionInternalId` varchar(255) DEFAULT NULL,
  `functionId` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(8192) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  UNIQUE KEY `_key_uniqueKey` (`functionInternalId`,`key`),
  KEY `_key_function` (`functionInternalId`),
  KEY `_key_key` (`key`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_variables`
--

LOCK TABLES `_1_variables` WRITE;
/*!40000 ALTER TABLE `_1_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_variables_perms`
--

DROP TABLE IF EXISTS `_1_variables_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_variables_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_variables_perms`
--

LOCK TABLES `_1_variables_perms` WRITE;
/*!40000 ALTER TABLE `_1_variables_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_variables_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_webhooks`
--

DROP TABLE IF EXISTS `_1_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_webhooks` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `httpUser` varchar(255) DEFAULT NULL,
  `httpPass` varchar(255) DEFAULT NULL,
  `security` tinyint(1) DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `signatureKey` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_webhooks`
--

LOCK TABLES `_1_webhooks` WRITE;
/*!40000 ALTER TABLE `_1_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_webhooks_perms`
--

DROP TABLE IF EXISTS `_1_webhooks_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_webhooks_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_webhooks_perms`
--

LOCK TABLES `_1_webhooks_perms` WRITE;
/*!40000 ALTER TABLE `_1_webhooks_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_webhooks_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console__metadata`
--

DROP TABLE IF EXISTS `_console__metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console__metadata` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(512) DEFAULT NULL,
  `attributes` mediumtext DEFAULT NULL,
  `indexes` mediumtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console__metadata`
--

LOCK TABLES `_console__metadata` WRITE;
/*!40000 ALTER TABLE `_console__metadata` DISABLE KEYS */;
INSERT INTO `_console__metadata` VALUES
(1,'audit','2022-10-14 00:55:42.921','2022-10-14 00:55:42.921','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','audit','[{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"event\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"resource\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"userAgent\",\"type\":\"string\",\"size\":65534,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"ip\",\"type\":\"string\",\"size\":45,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"location\",\"type\":\"string\",\"size\":45,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"time\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"data\",\"type\":\"string\",\"size\":16777216,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"]}]','[{\"$id\":\"index2\",\"type\":\"key\",\"attributes\":[\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index4\",\"type\":\"key\",\"attributes\":[\"userId\",\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index5\",\"type\":\"key\",\"attributes\":[\"resource\",\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index-time\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]}]'),
(2,'abuse','2022-10-14 00:55:42.933','2022-10-14 00:55:42.933','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','abuse','[{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"time\",\"type\":\"datetime\",\"size\":0,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"count\",\"type\":\"integer\",\"size\":11,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[]}]','[{\"$id\":\"unique1\",\"type\":\"unique\",\"attributes\":[\"key\",\"time\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index2\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[]}]'),
(3,'databases','2022-10-14 00:55:42.952','2022-10-14 00:55:42.952','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','databases','[{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[256],\"orders\":[\"ASC\"]}]'),
(4,'attributes','2022-10-14 00:55:42.965','2022-10-14 00:55:42.965','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','attributes','[{\"$id\":\"databaseInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"databaseId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"collectionInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"collectionId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"size\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"required\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"default\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"casting\"],\"default\":null,\"format\":\"\"},{\"$id\":\"signed\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"array\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"format\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"formatOptions\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\",\"range\",\"enum\"],\"default\":{},\"format\":\"\"},{\"$id\":\"filters\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_db_collection\",\"type\":\"key\",\"attributes\":[\"databaseInternalId\",\"collectionInternalId\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]}]'),
(5,'indexes','2022-10-14 00:55:42.978','2022-10-14 00:55:42.978','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','indexes','[{\"$id\":\"databaseInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"databaseId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"collectionInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"collectionId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"attributes\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"lengths\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"orders\",\"type\":\"string\",\"size\":4,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_db_collection\",\"type\":\"key\",\"attributes\":[\"databaseInternalId\",\"collectionInternalId\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]}]'),
(6,'projects','2022-10-14 00:55:42.996','2022-10-14 00:55:42.996','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','projects','[{\"$id\":\"teamInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"teamId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"description\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"logo\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"url\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"version\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalCountry\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalState\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalCity\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalAddress\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalTaxId\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"services\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":[],\"format\":\"\"},{\"$id\":\"auths\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":[],\"format\":\"\"},{\"$id\":\"authProviders\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\",\"encrypt\"],\"default\":[],\"format\":\"\"},{\"$id\":\"platforms\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryPlatforms\"],\"default\":null,\"format\":\"\"},{\"$id\":\"webhooks\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryWebhooks\"],\"default\":null,\"format\":\"\"},{\"$id\":\"keys\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryKeys\"],\"default\":null,\"format\":\"\"},{\"$id\":\"domains\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryDomains\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[128],\"orders\":[\"ASC\"]}]'),
(7,'platforms','2022-10-14 00:55:43.012','2022-10-14 00:55:43.012','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','platforms','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"store\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"hostname\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(8,'domains','2022-10-14 00:55:43.024','2022-10-14 00:55:43.024','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','domains','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"updated\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"domain\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"tld\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"registerable\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"verification\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"certificateId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(9,'keys','2022-10-14 00:55:43.036','2022-10-14 00:55:43.036','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','keys','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":0,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"scopes\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":512,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"expire\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"accessedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"sdks\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_accessedAt\",\"type\":\"key\",\"attributes\":[\"accessedAt\"],\"lengths\":[],\"orders\":[]}]'),
(10,'webhooks','2022-10-14 00:55:43.048','2022-10-14 00:55:43.048','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','webhooks','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"url\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"httpUser\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"httpPass\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"security\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"events\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"signatureKey\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(11,'users','2022-10-14 00:55:43.072','2022-10-14 00:55:43.072','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','users','[{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"email\",\"type\":\"string\",\"size\":320,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"phone\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"password\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"hash\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"argon2\",\"format\":\"\"},{\"$id\":\"hashOptions\",\"type\":\"string\",\"size\":65535,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":{\"memoryCost\":2048,\"timeCost\":4,\"threads\":3},\"format\":\"\"},{\"$id\":\"passwordUpdate\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"prefs\",\"type\":\"string\",\"size\":65535,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":{},\"format\":\"\"},{\"$id\":\"registration\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"emailVerification\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"phoneVerification\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"reset\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"sessions\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQuerySessions\"],\"default\":null,\"format\":\"\"},{\"$id\":\"tokens\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryTokens\"],\"default\":null,\"format\":\"\"},{\"$id\":\"memberships\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryMemberships\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[256],\"orders\":[\"ASC\"]},{\"$id\":\"_key_email\",\"type\":\"unique\",\"attributes\":[\"email\"],\"lengths\":[320],\"orders\":[\"ASC\"]},{\"$id\":\"_key_phone\",\"type\":\"unique\",\"attributes\":[\"phone\"],\"lengths\":[16],\"orders\":[\"ASC\"]},{\"$id\":\"_key_status\",\"type\":\"key\",\"attributes\":[\"status\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_passwordUpdate\",\"type\":\"key\",\"attributes\":[\"passwordUpdate\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_registration\",\"type\":\"key\",\"attributes\":[\"registration\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_emailVerification\",\"type\":\"key\",\"attributes\":[\"emailVerification\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_phoneVerification\",\"type\":\"key\",\"attributes\":[\"phoneVerification\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]}]'),
(12,'tokens','2022-10-14 00:55:43.085','2022-10-14 00:55:43.085','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','tokens','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"integer\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":512,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"expire\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"userAgent\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"ip\",\"type\":\"string\",\"size\":45,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(13,'sessions','2022-10-14 00:55:43.097','2022-10-14 00:55:43.097','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','sessions','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"provider\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerUid\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerAccessToken\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"providerAccessTokenExpiry\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"providerRefreshToken\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":512,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"expire\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"userAgent\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"ip\",\"type\":\"string\",\"size\":45,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"countryCode\",\"type\":\"string\",\"size\":2,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"osCode\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"osName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"osVersion\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientType\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientCode\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientVersion\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientEngine\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientEngineVersion\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deviceName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deviceBrand\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deviceModel\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_provider_providerUid\",\"type\":\"key\",\"attributes\":[\"provider\",\"providerUid\"],\"lengths\":[100,100],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(14,'teams','2022-10-14 00:55:43.113','2022-10-14 00:55:43.113','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','teams','[{\"$id\":\"name\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"total\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_total\",\"type\":\"key\",\"attributes\":[\"total\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(15,'memberships','2022-10-14 00:55:43.135','2022-10-14 00:55:43.135','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','memberships','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"teamInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"teamId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"roles\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"invited\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"joined\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"confirm\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_unique\",\"type\":\"unique\",\"attributes\":[\"teamInternalId\",\"userInternalId\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_team\",\"type\":\"key\",\"attributes\":[\"teamInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_userId\",\"type\":\"key\",\"attributes\":[\"userId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_teamId\",\"type\":\"key\",\"attributes\":[\"teamId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_invited\",\"type\":\"key\",\"attributes\":[\"invited\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_joined\",\"type\":\"key\",\"attributes\":[\"joined\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_confirm\",\"type\":\"key\",\"attributes\":[\"confirm\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(16,'functions','2022-10-14 00:55:43.158','2022-10-14 00:55:43.158','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','functions','[{\"$id\":\"execute\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"enabled\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"runtime\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deployment\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"vars\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryVariables\"],\"default\":null,\"format\":\"\"},{\"$id\":\"events\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"schedule\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"scheduleUpdatedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"schedulePrevious\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"scheduleNext\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"timeout\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[2048],\"orders\":[\"ASC\"]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[2048],\"orders\":[\"ASC\"]},{\"$id\":\"_key_enabled\",\"type\":\"key\",\"attributes\":[\"enabled\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_runtime\",\"type\":\"key\",\"attributes\":[\"runtime\"],\"lengths\":[2048],\"orders\":[\"ASC\"]},{\"$id\":\"_key_deployment\",\"type\":\"key\",\"attributes\":[\"deployment\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_schedule\",\"type\":\"key\",\"attributes\":[\"schedule\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_scheduleNext\",\"type\":\"key\",\"attributes\":[\"scheduleNext\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_schedulePrevious\",\"type\":\"key\",\"attributes\":[\"schedulePrevious\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_timeout\",\"type\":\"key\",\"attributes\":[\"timeout\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(17,'deployments','2022-10-14 00:55:43.177','2022-10-14 00:55:43.177','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','deployments','[{\"$id\":\"resourceId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"resourceType\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"buildId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"entrypoint\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"path\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"size\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"metadata\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksTotal\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksUploaded\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"activate\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":false,\"format\":\"\"}]','[{\"$id\":\"_key_resource\",\"type\":\"key\",\"attributes\":[\"resourceId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_resource_type\",\"type\":\"key\",\"attributes\":[\"resourceType\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_entrypoint\",\"type\":\"key\",\"attributes\":[\"entrypoint\"],\"lengths\":[2048],\"orders\":[\"ASC\"]},{\"$id\":\"_key_size\",\"type\":\"key\",\"attributes\":[\"size\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_buildId\",\"type\":\"key\",\"attributes\":[\"buildId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_activate\",\"type\":\"key\",\"attributes\":[\"activate\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(18,'builds','2022-10-14 00:55:43.188','2022-10-14 00:55:43.188','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','builds','[{\"$id\":\"startTime\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"endTime\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"duration\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deploymentId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"runtime\",\"type\":\"string\",\"size\":2048,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"processing\",\"format\":\"\"},{\"$id\":\"outputPath\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"stderr\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"stdout\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"sourceType\",\"type\":\"string\",\"size\":2048,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"local\",\"format\":\"\"},{\"$id\":\"source\",\"type\":\"string\",\"size\":2048,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"}]','[{\"$id\":\"_key_deployment\",\"type\":\"key\",\"attributes\":[\"deploymentId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(19,'executions','2022-10-14 00:55:43.207','2022-10-14 00:55:43.207','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','executions','[{\"$id\":\"functionId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deploymentId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"trigger\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"response\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"stderr\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"stdout\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"statusCode\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"duration\",\"type\":\"double\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_function\",\"type\":\"key\",\"attributes\":[\"functionId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_trigger\",\"type\":\"key\",\"attributes\":[\"trigger\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_status\",\"type\":\"key\",\"attributes\":[\"status\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_statusCode\",\"type\":\"key\",\"attributes\":[\"statusCode\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_duration\",\"type\":\"key\",\"attributes\":[\"duration\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(20,'certificates','2022-10-14 00:55:43.218','2022-10-14 00:55:43.218','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','certificates','[{\"$id\":\"domain\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"issueDate\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"renewDate\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"attempts\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"log\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"updated\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_domain\",\"type\":\"key\",\"attributes\":[\"domain\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(21,'buckets','2022-10-14 00:55:43.240','2022-10-14 00:55:43.240','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','buckets','[{\"$id\":\"enabled\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":128,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"fileSecurity\",\"type\":\"boolean\",\"size\":1,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"maximumFileSize\",\"type\":\"integer\",\"size\":8,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"allowedFileExtensions\",\"type\":\"string\",\"size\":64,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"compression\",\"type\":\"string\",\"size\":10,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"encryption\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"antivirus\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_fulltext_name\",\"type\":\"fulltext\",\"attributes\":[\"name\"],\"lengths\":[1024],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[2048],\"orders\":[\"ASC\"]},{\"$id\":\"_key_enabled\",\"type\":\"key\",\"attributes\":[\"enabled\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_fileSecurity\",\"type\":\"key\",\"attributes\":[\"fileSecurity\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_maximumFileSize\",\"type\":\"key\",\"attributes\":[\"maximumFileSize\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_encryption\",\"type\":\"key\",\"attributes\":[\"encryption\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_antivirus\",\"type\":\"key\",\"attributes\":[\"antivirus\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(22,'stats','2022-10-14 00:55:43.253','2022-10-14 00:55:43.253','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','stats','[{\"$id\":\"metric\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"value\",\"type\":\"integer\",\"size\":8,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"time\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"period\",\"type\":\"string\",\"size\":4,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"integer\",\"size\":1,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":0,\"format\":\"\"}]','[{\"$id\":\"_key_time\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]},{\"$id\":\"_key_period_time\",\"type\":\"key\",\"attributes\":[\"period\",\"time\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_metric_period_time\",\"type\":\"key\",\"attributes\":[\"metric\",\"period\",\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]}]'),
(23,'realtime','2022-10-14 00:55:43.263','2022-10-14 00:55:43.263','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','realtime','[{\"$id\":\"container\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"timestamp\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"value\",\"type\":\"string\",\"size\":16384,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_timestamp\",\"type\":\"key\",\"attributes\":[\"timestamp\"],\"lengths\":[],\"orders\":[\"DESC\"]}]'),
(24,'cache','2022-10-14 00:55:43.273','2022-10-14 00:55:43.273','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','cache','[{\"$id\":\"resource\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"accessedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"signature\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_accessedAt\",\"type\":\"key\",\"attributes\":[\"accessedAt\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_resource\",\"type\":\"key\",\"attributes\":[\"resource\"],\"lengths\":[],\"orders\":[]}]'),
(25,'variables','2022-10-14 00:55:43.291','2022-10-14 00:55:43.291','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','variables','[{\"$id\":\"functionInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"functionId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"value\",\"type\":\"string\",\"size\":8192,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_function\",\"type\":\"key\",\"attributes\":[\"functionInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_uniqueKey\",\"type\":\"unique\",\"attributes\":[\"functionInternalId\",\"key\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_key\",\"type\":\"key\",\"attributes\":[\"key\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]}]'),
(26,'bucket_1','2022-10-14 00:55:43.314','2022-10-14 00:55:43.314','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','bucket_1','[{\"$id\":\"bucketId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"path\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"signature\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"mimeType\",\"type\":\"string\",\"size\":127,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"metadata\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":null,\"format\":\"\"},{\"$id\":\"sizeOriginal\",\"type\":\"integer\",\"size\":8,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"sizeActual\",\"type\":\"integer\",\"size\":8,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"algorithm\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"comment\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLVersion\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLCipher\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLTag\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLIV\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksTotal\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksUploaded\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[2048],\"orders\":[\"ASC\"]},{\"$id\":\"_key_bucket\",\"type\":\"key\",\"attributes\":[\"bucketId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[2048],\"orders\":[\"ASC\"]},{\"$id\":\"_key_signature\",\"type\":\"key\",\"attributes\":[\"signature\"],\"lengths\":[2048],\"orders\":[\"ASC\"]},{\"$id\":\"_key_mimeType\",\"type\":\"key\",\"attributes\":[\"mimeType\"],\"lengths\":[127],\"orders\":[\"ASC\"]},{\"$id\":\"_key_sizeOriginal\",\"type\":\"key\",\"attributes\":[\"sizeOriginal\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_chunksTotal\",\"type\":\"key\",\"attributes\":[\"chunksTotal\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_chunksUploaded\",\"type\":\"key\",\"attributes\":[\"chunksUploaded\"],\"lengths\":[],\"orders\":[\"ASC\"]}]');
/*!40000 ALTER TABLE `_console__metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console__metadata_perms`
--

DROP TABLE IF EXISTS `_console__metadata_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console__metadata_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console__metadata_perms`
--

LOCK TABLES `_console__metadata_perms` WRITE;
/*!40000 ALTER TABLE `_console__metadata_perms` DISABLE KEYS */;
INSERT INTO `_console__metadata_perms` VALUES
(5,'create','any','abuse'),
(8,'delete','any','abuse'),
(6,'read','any','abuse'),
(7,'update','any','abuse'),
(13,'create','any','attributes'),
(16,'delete','any','attributes'),
(14,'read','any','attributes'),
(15,'update','any','attributes'),
(1,'create','any','audit'),
(4,'delete','any','audit'),
(2,'read','any','audit'),
(3,'update','any','audit'),
(81,'create','any','buckets'),
(84,'delete','any','buckets'),
(82,'read','any','buckets'),
(83,'update','any','buckets'),
(101,'create','any','bucket_1'),
(104,'delete','any','bucket_1'),
(102,'read','any','bucket_1'),
(103,'update','any','bucket_1'),
(69,'create','any','builds'),
(72,'delete','any','builds'),
(70,'read','any','builds'),
(71,'update','any','builds'),
(93,'create','any','cache'),
(96,'delete','any','cache'),
(94,'read','any','cache'),
(95,'update','any','cache'),
(77,'create','any','certificates'),
(80,'delete','any','certificates'),
(78,'read','any','certificates'),
(79,'update','any','certificates'),
(9,'create','any','databases'),
(12,'delete','any','databases'),
(10,'read','any','databases'),
(11,'update','any','databases'),
(65,'create','any','deployments'),
(68,'delete','any','deployments'),
(66,'read','any','deployments'),
(67,'update','any','deployments'),
(29,'create','any','domains'),
(32,'delete','any','domains'),
(30,'read','any','domains'),
(31,'update','any','domains'),
(73,'create','any','executions'),
(76,'delete','any','executions'),
(74,'read','any','executions'),
(75,'update','any','executions'),
(61,'create','any','functions'),
(64,'delete','any','functions'),
(62,'read','any','functions'),
(63,'update','any','functions'),
(17,'create','any','indexes'),
(20,'delete','any','indexes'),
(18,'read','any','indexes'),
(19,'update','any','indexes'),
(33,'create','any','keys'),
(36,'delete','any','keys'),
(34,'read','any','keys'),
(35,'update','any','keys'),
(57,'create','any','memberships'),
(60,'delete','any','memberships'),
(58,'read','any','memberships'),
(59,'update','any','memberships'),
(25,'create','any','platforms'),
(28,'delete','any','platforms'),
(26,'read','any','platforms'),
(27,'update','any','platforms'),
(21,'create','any','projects'),
(24,'delete','any','projects'),
(22,'read','any','projects'),
(23,'update','any','projects'),
(89,'create','any','realtime'),
(92,'delete','any','realtime'),
(90,'read','any','realtime'),
(91,'update','any','realtime'),
(49,'create','any','sessions'),
(52,'delete','any','sessions'),
(50,'read','any','sessions'),
(51,'update','any','sessions'),
(85,'create','any','stats'),
(88,'delete','any','stats'),
(86,'read','any','stats'),
(87,'update','any','stats'),
(53,'create','any','teams'),
(56,'delete','any','teams'),
(54,'read','any','teams'),
(55,'update','any','teams'),
(45,'create','any','tokens'),
(48,'delete','any','tokens'),
(46,'read','any','tokens'),
(47,'update','any','tokens'),
(41,'create','any','users'),
(44,'delete','any','users'),
(42,'read','any','users'),
(43,'update','any','users'),
(97,'create','any','variables'),
(100,'delete','any','variables'),
(98,'read','any','variables'),
(99,'update','any','variables'),
(37,'create','any','webhooks'),
(40,'delete','any','webhooks'),
(38,'read','any','webhooks'),
(39,'update','any','webhooks');
/*!40000 ALTER TABLE `_console__metadata_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_abuse`
--

DROP TABLE IF EXISTS `_console_abuse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_abuse` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `count` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  UNIQUE KEY `unique1` (`key`,`time`),
  KEY `index2` (`time`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_abuse`
--

LOCK TABLES `_console_abuse` WRITE;
/*!40000 ALTER TABLE `_console_abuse` DISABLE KEYS */;
INSERT INTO `_console_abuse` VALUES
(1,'6348b3926091a2de6bbf','2022-10-14 00:55:46.395','2022-10-14 00:55:46.395','[]','url:/v1/realtime,ip:192.168.126.203','2022-10-14 00:55:00.000',1),
(2,'6348b3e31647162e6168','2022-10-14 00:57:07.091','2022-10-14 00:57:25.612','[]','url:/v1/realtime,ip:192.168.217.199','2022-10-14 00:57:00.000',2),
(3,'6348b3f3c9287c9b40c7','2022-10-14 00:57:23.823','2022-10-14 00:57:23.823','[]','url:8080-dotvue-appwritegitpod-thlk8tb98ad.ws-us71.gitpod.io/v1/account,ip:192.168.126.203','2022-10-14 00:00:00.000',1),
(4,'6348b3f41d0c6af84b7c','2022-10-14 00:57:24.118','2022-10-14 00:58:30.847','[]','url:8080-dotvue-appwritegitpod-thlk8tb98ad.ws-us71.gitpod.io/v1/account/sessions/email,email:yivue@qq.com','2022-10-14 00:00:00.000',2),
(5,'6348b45bbba51a57a2d3','2022-10-14 00:59:07.768','2022-10-14 00:59:07.768','[]','url:/v1/realtime,ip:192.168.217.199','2022-10-14 00:59:00.000',1),
(6,'6348bdb14da336e07c85','2022-10-14 01:38:57.317','2022-10-14 01:38:57.317','[]','url:/v1/realtime,ip:192.168.217.199','2022-10-14 01:38:00.000',1),
(7,'6348bdb6503fb59f7d89','2022-10-14 01:39:02.328','2022-10-14 01:39:02.328','[]','url:/v1/realtime,ip:192.168.126.203','2022-10-14 01:39:00.000',1),
(8,'6348bdb6d8e39ac47185','2022-10-14 01:39:02.888','2022-10-14 01:39:02.888','[]','url:/v1/realtime,ip:192.168.217.199','2022-10-14 01:39:00.000',1),
(9,'6348c828a45eba8ff3b0','2022-10-14 02:23:36.673','2022-10-14 02:23:36.673','[]','url:/v1/realtime,ip:192.168.126.203','2022-10-14 02:23:00.000',1),
(10,'6348cf17665ae584bda8','2022-10-14 02:53:11.419','2022-10-14 02:53:11.419','[]','url:/v1/realtime,ip:192.168.217.199','2022-10-14 02:53:00.000',1),
(11,'6348cf186a552465feca','2022-10-14 02:53:12.435','2022-10-14 02:53:12.435','[]','url:/v1/realtime,ip:192.168.126.203','2022-10-14 02:53:00.000',1),
(12,'6348cfc448fd26effe82','2022-10-14 02:56:04.298','2022-10-14 02:56:04.298','[]','url:/v1/realtime,ip:192.168.126.203','2022-10-14 02:56:00.000',1),
(13,'6348cfc7731975b67419','2022-10-14 02:56:07.471','2022-10-14 02:56:07.471','[]','url:/v1/realtime,ip:192.168.217.199','2022-10-14 02:56:00.000',1);
/*!40000 ALTER TABLE `_console_abuse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_abuse_perms`
--

DROP TABLE IF EXISTS `_console_abuse_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_abuse_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_abuse_perms`
--

LOCK TABLES `_console_abuse_perms` WRITE;
/*!40000 ALTER TABLE `_console_abuse_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_abuse_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_attributes`
--

DROP TABLE IF EXISTS `_console_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_attributes` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `databaseInternalId` varchar(255) DEFAULT NULL,
  `databaseId` varchar(255) DEFAULT NULL,
  `collectionInternalId` varchar(255) DEFAULT NULL,
  `collectionId` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `type` varchar(256) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `default` text DEFAULT NULL,
  `signed` tinyint(1) DEFAULT NULL,
  `array` tinyint(1) DEFAULT NULL,
  `format` varchar(64) DEFAULT NULL,
  `formatOptions` text DEFAULT NULL,
  `filters` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_db_collection` (`databaseInternalId`,`collectionInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_attributes`
--

LOCK TABLES `_console_attributes` WRITE;
/*!40000 ALTER TABLE `_console_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_attributes_perms`
--

DROP TABLE IF EXISTS `_console_attributes_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_attributes_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_attributes_perms`
--

LOCK TABLES `_console_attributes_perms` WRITE;
/*!40000 ALTER TABLE `_console_attributes_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_attributes_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_audit`
--

DROP TABLE IF EXISTS `_console_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_audit` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `index2` (`event`),
  KEY `index4` (`userId`,`event`),
  KEY `index5` (`resource`,`event`),
  KEY `index-time` (`time`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_audit`
--

LOCK TABLES `_console_audit` WRITE;
/*!40000 ALTER TABLE `_console_audit` DISABLE KEYS */;
INSERT INTO `_console_audit` VALUES
(1,'6348b3f45242db717316','2022-10-14 00:57:24.336','2022-10-14 00:57:24.336','[]','6348b3f3c9b90289424c','user.create','user/6348b3f3c9b90289424c','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','192.168.126.203','','2022-10-14 00:57:24.307','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"default\",\"data\":{\"$id\":\"6348b3f3c9b90289424c\",\"$createdAt\":\"2022-10-14T00:57:23.931+00:00\",\"$updatedAt\":\"2022-10-14T00:57:23.931+00:00\",\"name\":\"yivue\",\"registration\":\"2022-10-14T00:57:23.931+00:00\",\"status\":true,\"passwordUpdate\":\"2022-10-14T00:57:23.931+00:00\",\"email\":\"yivue@qq.com\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"prefs\":[]}}'),
(2,'6348b3f553331f959356','2022-10-14 00:57:25.340','2022-10-14 00:57:25.340','[]','6348b3f3c9b90289424c','session.create','user/6348b3f3c9b90289424c','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','192.168.126.203','','2022-10-14 00:57:25.340','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"default\",\"data\":{\"$id\":\"6348b3f437cf195dea66\",\"$createdAt\":\"2022-10-14T00:57:24.546+00:00\",\"userId\":\"6348b3f3c9b90289424c\",\"expire\":\"2023-10-14T00:57:24.228+00:00\",\"provider\":\"email\",\"providerUid\":\"yivue@qq.com\",\"providerAccessToken\":\"\",\"providerAccessTokenExpiry\":\"\",\"providerRefreshToken\":\"\",\"ip\":\"192.168.126.203\",\"osCode\":\"WIN\",\"osName\":\"Windows\",\"osVersion\":\"10\",\"clientType\":\"browser\",\"clientCode\":\"PS\",\"clientName\":\"Microsoft Edge\",\"clientVersion\":\"106.0\",\"clientEngine\":\"Blink\",\"clientEngineVersion\":\"106.0.0.0\",\"deviceName\":\"desktop\",\"deviceBrand\":\"\",\"deviceModel\":\"\",\"countryCode\":\"--\",\"countryName\":\"\\u672a\\u77e5\",\"current\":true}}'),
(3,'6348b4375a687c8c536c','2022-10-14 00:58:31.370','2022-10-14 00:58:31.370','[]','6348b3f3c9b90289424c','session.create','user/6348b3f3c9b90289424c','AppwriteCLI/1.1.1 (Windows_NT Windows 10 Pro; x64)','192.168.126.203','','2022-10-14 00:58:31.370','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"default\",\"data\":{\"$id\":\"6348b436e353b6d27808\",\"$createdAt\":\"2022-10-14T00:58:31.235+00:00\",\"userId\":\"6348b3f3c9b90289424c\",\"expire\":\"2023-10-14T00:58:30.931+00:00\",\"provider\":\"email\",\"providerUid\":\"yivue@qq.com\",\"providerAccessToken\":\"\",\"providerAccessTokenExpiry\":\"\",\"providerRefreshToken\":\"\",\"ip\":\"192.168.126.203\",\"osCode\":\"WIN\",\"osName\":\"Windows\",\"osVersion\":\"10\",\"clientType\":\"desktop\",\"clientCode\":\"cli\",\"clientName\":\"Appwrite CLI\",\"clientVersion\":\"1.1.1\",\"clientEngine\":\"\",\"clientEngineVersion\":\"\",\"deviceName\":\"desktop\",\"deviceBrand\":\"\",\"deviceModel\":\"\",\"countryCode\":\"--\",\"countryName\":\"\\u672a\\u77e5\",\"current\":true}}'),
(4,'6348b4475c7e23506dc1','2022-10-14 00:58:47.378','2022-10-14 00:58:47.378','[]','6348b3f3c9b90289424c','team.create','team/6348b4466803f0d02432','AppwriteCLI/1.1.1 (Windows_NT Windows 10 Pro; x64)','192.168.126.203','','2022-10-14 00:58:47.378','{\"userName\":\"yivue\",\"userEmail\":\"yivue@qq.com\",\"mode\":\"default\",\"data\":{\"$id\":\"6348b4466803f0d02432\",\"$createdAt\":\"2022-10-14T00:58:46.426+00:00\",\"$updatedAt\":\"2022-10-14T00:58:46.426+00:00\",\"name\":\"AdminCore\",\"total\":1}}');
/*!40000 ALTER TABLE `_console_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_audit_perms`
--

DROP TABLE IF EXISTS `_console_audit_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_audit_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_audit_perms`
--

LOCK TABLES `_console_audit_perms` WRITE;
/*!40000 ALTER TABLE `_console_audit_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_audit_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_bucket_1`
--

DROP TABLE IF EXISTS `_console_bucket_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_bucket_1` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `bucketId` varchar(255) DEFAULT NULL,
  `name` varchar(2048) DEFAULT NULL,
  `path` varchar(2048) DEFAULT NULL,
  `signature` varchar(2048) DEFAULT NULL,
  `mimeType` varchar(127) DEFAULT NULL,
  `metadata` text DEFAULT NULL,
  `sizeOriginal` bigint(20) unsigned DEFAULT NULL,
  `sizeActual` bigint(20) unsigned DEFAULT NULL,
  `algorithm` varchar(255) DEFAULT NULL,
  `comment` varchar(2048) DEFAULT NULL,
  `openSSLVersion` varchar(64) DEFAULT NULL,
  `openSSLCipher` varchar(64) DEFAULT NULL,
  `openSSLTag` varchar(2048) DEFAULT NULL,
  `openSSLIV` varchar(2048) DEFAULT NULL,
  `chunksTotal` int(10) unsigned DEFAULT NULL,
  `chunksUploaded` int(10) unsigned DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_bucket` (`bucketId`),
  KEY `_key_name` (`name`(768)),
  KEY `_key_signature` (`signature`(768)),
  KEY `_key_mimeType` (`mimeType`),
  KEY `_key_sizeOriginal` (`sizeOriginal`),
  KEY `_key_chunksTotal` (`chunksTotal`),
  KEY `_key_chunksUploaded` (`chunksUploaded`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_bucket_1`
--

LOCK TABLES `_console_bucket_1` WRITE;
/*!40000 ALTER TABLE `_console_bucket_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_bucket_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_bucket_1_perms`
--

DROP TABLE IF EXISTS `_console_bucket_1_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_bucket_1_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_bucket_1_perms`
--

LOCK TABLES `_console_bucket_1_perms` WRITE;
/*!40000 ALTER TABLE `_console_bucket_1_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_bucket_1_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_buckets`
--

DROP TABLE IF EXISTS `_console_buckets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_buckets` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `fileSecurity` tinyint(1) DEFAULT NULL,
  `maximumFileSize` bigint(20) unsigned DEFAULT NULL,
  `allowedFileExtensions` longtext DEFAULT NULL,
  `compression` varchar(10) DEFAULT NULL,
  `encryption` tinyint(1) DEFAULT NULL,
  `antivirus` tinyint(1) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_enabled` (`enabled`),
  KEY `_key_name` (`name`),
  KEY `_key_fileSecurity` (`fileSecurity`),
  KEY `_key_maximumFileSize` (`maximumFileSize`),
  KEY `_key_encryption` (`encryption`),
  KEY `_key_antivirus` (`antivirus`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_name` (`name`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_buckets`
--

LOCK TABLES `_console_buckets` WRITE;
/*!40000 ALTER TABLE `_console_buckets` DISABLE KEYS */;
INSERT INTO `_console_buckets` VALUES
(1,'default','2022-10-14 00:55:43.294','2022-10-14 00:55:43.294','[\"create(\\\"any\\\")\",\"read(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]',1,'Default',1,30000000,'[]','gzip',1,1,'buckets Default');
/*!40000 ALTER TABLE `_console_buckets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_buckets_perms`
--

DROP TABLE IF EXISTS `_console_buckets_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_buckets_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_buckets_perms`
--

LOCK TABLES `_console_buckets_perms` WRITE;
/*!40000 ALTER TABLE `_console_buckets_perms` DISABLE KEYS */;
INSERT INTO `_console_buckets_perms` VALUES
(1,'create','any','default'),
(4,'delete','any','default'),
(2,'read','any','default'),
(3,'update','any','default');
/*!40000 ALTER TABLE `_console_buckets_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_builds`
--

DROP TABLE IF EXISTS `_console_builds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_builds` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `startTime` datetime(3) DEFAULT NULL,
  `endTime` datetime(3) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `deploymentId` varchar(255) DEFAULT NULL,
  `runtime` varchar(2048) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL,
  `outputPath` varchar(2048) DEFAULT NULL,
  `stderr` mediumtext DEFAULT NULL,
  `stdout` mediumtext DEFAULT NULL,
  `sourceType` varchar(2048) DEFAULT NULL,
  `source` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_deployment` (`deploymentId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_builds`
--

LOCK TABLES `_console_builds` WRITE;
/*!40000 ALTER TABLE `_console_builds` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_builds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_builds_perms`
--

DROP TABLE IF EXISTS `_console_builds_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_builds_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_builds_perms`
--

LOCK TABLES `_console_builds_perms` WRITE;
/*!40000 ALTER TABLE `_console_builds_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_builds_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_cache`
--

DROP TABLE IF EXISTS `_console_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_cache` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `accessedAt` datetime(3) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_accessedAt` (`accessedAt`),
  KEY `_key_resource` (`resource`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_cache`
--

LOCK TABLES `_console_cache` WRITE;
/*!40000 ALTER TABLE `_console_cache` DISABLE KEYS */;
INSERT INTO `_console_cache` VALUES
(1,'a0f3d023efca1d87009b18c4e513b566','2022-10-14 00:57:25.282','2022-10-14 00:57:25.282','[]','avatar/initials','2022-10-14 00:57:25.282','78e5d584c1da5c5604346afab8f8b124'),
(2,'b23f7a22f90cf80f6448dcf90278de9e','2022-10-14 02:27:47.521','2022-10-14 02:27:47.521','[]','avatar/initials','2022-10-14 02:27:47.521','17cadfe3222c3ba4aff010cca125b1a6'),
(3,'c32216daf142dd7729e616ca2027f059','2022-10-14 02:29:17.928','2022-10-14 02:29:17.928','[]','avatar/initials','2022-10-14 02:29:17.928','713f7a93f902258e6ad30559bdd56446'),
(4,'b013e69af1f3b298ca0a7ea18e1177d8','2022-10-14 02:30:52.009','2022-10-14 02:30:52.009','[]','avatar/initials','2022-10-14 02:30:52.009','fbcdce3fb077d0455951cd5688ab5a98');
/*!40000 ALTER TABLE `_console_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_cache_perms`
--

DROP TABLE IF EXISTS `_console_cache_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_cache_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_cache_perms`
--

LOCK TABLES `_console_cache_perms` WRITE;
/*!40000 ALTER TABLE `_console_cache_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_cache_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_certificates`
--

DROP TABLE IF EXISTS `_console_certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_certificates` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `issueDate` datetime(3) DEFAULT NULL,
  `renewDate` datetime(3) DEFAULT NULL,
  `attempts` int(11) DEFAULT NULL,
  `log` text DEFAULT NULL,
  `updated` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_domain` (`domain`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_certificates`
--

LOCK TABLES `_console_certificates` WRITE;
/*!40000 ALTER TABLE `_console_certificates` DISABLE KEYS */;
INSERT INTO `_console_certificates` VALUES
(1,'6348b39382aa7a126205','2022-10-14 00:55:47.535','2022-10-14 02:53:07.269','[]','8080-dotvue-appwritegitpod-thlk8tb98ad.ws-us71.gitpod.io',NULL,'2022-10-14 02:53:07.267',3,'Failed to issue a certificate with message: Saving debug log to /var/log/letsencrypt/letsencrypt.log\nSome challenges have failed.\nAsk for help or search for solutions at https://community.letsencrypt.org. See the logfile /var/log/letsencrypt/letsencrypt.log or re-run Certbot with -v for more details.\n','2022-10-14 02:53:07.267');
/*!40000 ALTER TABLE `_console_certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_certificates_perms`
--

DROP TABLE IF EXISTS `_console_certificates_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_certificates_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_certificates_perms`
--

LOCK TABLES `_console_certificates_perms` WRITE;
/*!40000 ALTER TABLE `_console_certificates_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_certificates_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_databases`
--

DROP TABLE IF EXISTS `_console_databases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_databases` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_databases`
--

LOCK TABLES `_console_databases` WRITE;
/*!40000 ALTER TABLE `_console_databases` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_databases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_databases_perms`
--

DROP TABLE IF EXISTS `_console_databases_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_databases_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_databases_perms`
--

LOCK TABLES `_console_databases_perms` WRITE;
/*!40000 ALTER TABLE `_console_databases_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_databases_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_deployments`
--

DROP TABLE IF EXISTS `_console_deployments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_deployments` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `resourceId` varchar(255) DEFAULT NULL,
  `resourceType` varchar(255) DEFAULT NULL,
  `buildId` varchar(255) DEFAULT NULL,
  `entrypoint` varchar(2048) DEFAULT NULL,
  `path` varchar(2048) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` text DEFAULT NULL,
  `chunksTotal` int(10) unsigned DEFAULT NULL,
  `chunksUploaded` int(10) unsigned DEFAULT NULL,
  `search` text DEFAULT NULL,
  `activate` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_resource` (`resourceId`),
  KEY `_key_resource_type` (`resourceType`),
  KEY `_key_entrypoint` (`entrypoint`(768)),
  KEY `_key_size` (`size`),
  KEY `_key_buildId` (`buildId`),
  KEY `_key_activate` (`activate`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_deployments`
--

LOCK TABLES `_console_deployments` WRITE;
/*!40000 ALTER TABLE `_console_deployments` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_deployments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_deployments_perms`
--

DROP TABLE IF EXISTS `_console_deployments_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_deployments_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_deployments_perms`
--

LOCK TABLES `_console_deployments_perms` WRITE;
/*!40000 ALTER TABLE `_console_deployments_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_deployments_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_domains`
--

DROP TABLE IF EXISTS `_console_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_domains` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `updated` datetime(3) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `tld` varchar(255) DEFAULT NULL,
  `registerable` varchar(255) DEFAULT NULL,
  `verification` tinyint(1) DEFAULT NULL,
  `certificateId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_domains`
--

LOCK TABLES `_console_domains` WRITE;
/*!40000 ALTER TABLE `_console_domains` DISABLE KEYS */;
INSERT INTO `_console_domains` VALUES
(1,'6348b3902cb86e11f90d','2022-10-14 00:55:44.183','2022-10-14 02:53:07.272','[]',NULL,NULL,'2022-10-14 02:53:07.272','8080-dotvue-appwritegitpod-thlk8tb98ad.ws-us71.gitpod.io','io','gitpod.io',0,'6348b39382aa7a126205');
/*!40000 ALTER TABLE `_console_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_domains_perms`
--

DROP TABLE IF EXISTS `_console_domains_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_domains_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_domains_perms`
--

LOCK TABLES `_console_domains_perms` WRITE;
/*!40000 ALTER TABLE `_console_domains_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_domains_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_executions`
--

DROP TABLE IF EXISTS `_console_executions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_executions` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `functionId` varchar(255) DEFAULT NULL,
  `deploymentId` varchar(255) DEFAULT NULL,
  `trigger` varchar(128) DEFAULT NULL,
  `status` varchar(128) DEFAULT NULL,
  `response` mediumtext DEFAULT NULL,
  `stderr` mediumtext DEFAULT NULL,
  `stdout` mediumtext DEFAULT NULL,
  `statusCode` int(11) DEFAULT NULL,
  `duration` float DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_function` (`functionId`),
  KEY `_key_trigger` (`trigger`),
  KEY `_key_status` (`status`),
  KEY `_key_statusCode` (`statusCode`),
  KEY `_key_duration` (`duration`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_executions`
--

LOCK TABLES `_console_executions` WRITE;
/*!40000 ALTER TABLE `_console_executions` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_executions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_executions_perms`
--

DROP TABLE IF EXISTS `_console_executions_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_executions_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_executions_perms`
--

LOCK TABLES `_console_executions_perms` WRITE;
/*!40000 ALTER TABLE `_console_executions_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_executions_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_functions`
--

DROP TABLE IF EXISTS `_console_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_functions` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `execute` longtext DEFAULT NULL,
  `name` varchar(2048) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `runtime` varchar(2048) DEFAULT NULL,
  `deployment` varchar(255) DEFAULT NULL,
  `vars` text DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `schedule` varchar(128) DEFAULT NULL,
  `scheduleUpdatedAt` datetime(3) DEFAULT NULL,
  `schedulePrevious` datetime(3) DEFAULT NULL,
  `scheduleNext` datetime(3) DEFAULT NULL,
  `timeout` int(11) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_name` (`name`(768)),
  KEY `_key_enabled` (`enabled`),
  KEY `_key_runtime` (`runtime`(768)),
  KEY `_key_deployment` (`deployment`),
  KEY `_key_schedule` (`schedule`),
  KEY `_key_scheduleNext` (`scheduleNext`),
  KEY `_key_schedulePrevious` (`schedulePrevious`),
  KEY `_key_timeout` (`timeout`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_functions`
--

LOCK TABLES `_console_functions` WRITE;
/*!40000 ALTER TABLE `_console_functions` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_functions_perms`
--

DROP TABLE IF EXISTS `_console_functions_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_functions_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_functions_perms`
--

LOCK TABLES `_console_functions_perms` WRITE;
/*!40000 ALTER TABLE `_console_functions_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_functions_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_indexes`
--

DROP TABLE IF EXISTS `_console_indexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_indexes` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `databaseInternalId` varchar(255) DEFAULT NULL,
  `databaseId` varchar(255) DEFAULT NULL,
  `collectionInternalId` varchar(255) DEFAULT NULL,
  `collectionId` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `attributes` longtext DEFAULT NULL,
  `lengths` longtext DEFAULT NULL,
  `orders` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_db_collection` (`databaseInternalId`,`collectionInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_indexes`
--

LOCK TABLES `_console_indexes` WRITE;
/*!40000 ALTER TABLE `_console_indexes` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_indexes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_indexes_perms`
--

DROP TABLE IF EXISTS `_console_indexes_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_indexes_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_indexes_perms`
--

LOCK TABLES `_console_indexes_perms` WRITE;
/*!40000 ALTER TABLE `_console_indexes_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_indexes_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_keys`
--

DROP TABLE IF EXISTS `_console_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_keys` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` longtext DEFAULT NULL,
  `secret` varchar(512) DEFAULT NULL,
  `expire` datetime(3) DEFAULT NULL,
  `accessedAt` datetime(3) DEFAULT NULL,
  `sdks` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_key_accessedAt` (`accessedAt`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_keys`
--

LOCK TABLES `_console_keys` WRITE;
/*!40000 ALTER TABLE `_console_keys` DISABLE KEYS */;
INSERT INTO `_console_keys` VALUES
(1,'6348ca0a235586a38f1e','2022-10-14 02:31:38.144','2022-10-14 02:31:38.144','[\"read(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','1','6348b44744584cc229da','admin','[\"users.read\",\"users.write\",\"teams.read\",\"teams.write\",\"databases.read\",\"databases.write\",\"collections.read\",\"collections.write\",\"attributes.read\",\"attributes.write\",\"indexes.read\",\"indexes.write\",\"documents.read\",\"documents.write\",\"files.read\",\"files.write\",\"buckets.read\",\"buckets.write\",\"functions.read\",\"functions.write\",\"execution.read\",\"execution.write\",\"locale.read\",\"avatars.read\",\"health.read\"]','{\"data\":\"lEqnrTicWJCftcmapiTgNrn8to2Pz+ODzUzeq+PbwrvgStNZcxMlgYIkhkMSMlAizrtSxEdPreo4547N1Z56fPnBYFgf2\\/0PE23kQGGPKoeBXY3yPGR4PPDyeRABk2n+sRS9R+iGG\\/eHMbTUAmra9gcUyaPxZPpxvv9d2NEgGTJGVFKtlVzmIrEOtmk4jT5lazRit7T4C7jB3wNoB1\\/5Z2SK3X8t6teOFJte5LL2aVScjgFpkiXjqxDW8eQACCSxekyvQNwKzws9n2EcySxKZCD48FEgFqIPi2X8l7p+EbYAHuURlVjH0mGKq+ykENrUVIicmJJ1F0sxgfw8zFaMPQ==\",\"method\":\"aes-128-gcm\",\"iv\":\"c9b5a120c7ba3921ad4a7462\",\"tag\":\"1d979b72f71ee9a234b5d4f5c5b49ff7\",\"version\":\"1\"}',NULL,NULL,'[]');
/*!40000 ALTER TABLE `_console_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_keys_perms`
--

DROP TABLE IF EXISTS `_console_keys_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_keys_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_keys_perms`
--

LOCK TABLES `_console_keys_perms` WRITE;
/*!40000 ALTER TABLE `_console_keys_perms` DISABLE KEYS */;
INSERT INTO `_console_keys_perms` VALUES
(3,'delete','any','6348ca0a235586a38f1e'),
(1,'read','any','6348ca0a235586a38f1e'),
(2,'update','any','6348ca0a235586a38f1e');
/*!40000 ALTER TABLE `_console_keys_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_memberships`
--

DROP TABLE IF EXISTS `_console_memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_memberships` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `teamInternalId` varchar(255) DEFAULT NULL,
  `teamId` varchar(255) DEFAULT NULL,
  `roles` longtext DEFAULT NULL,
  `invited` datetime(3) DEFAULT NULL,
  `joined` datetime(3) DEFAULT NULL,
  `confirm` tinyint(1) DEFAULT NULL,
  `secret` varchar(256) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  UNIQUE KEY `_key_unique` (`teamInternalId`,`userInternalId`),
  KEY `_key_user` (`userInternalId`),
  KEY `_key_team` (`teamInternalId`),
  KEY `_key_userId` (`userId`),
  KEY `_key_teamId` (`teamId`),
  KEY `_key_invited` (`invited`),
  KEY `_key_joined` (`joined`),
  KEY `_key_confirm` (`confirm`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_memberships`
--

LOCK TABLES `_console_memberships` WRITE;
/*!40000 ALTER TABLE `_console_memberships` DISABLE KEYS */;
INSERT INTO `_console_memberships` VALUES
(1,'6348b44668bf13001078','2022-10-14 00:58:46.429','2022-10-14 00:58:46.429','[\"read(\\\"user:6348b3f3c9b90289424c\\\")\",\"read(\\\"team:6348b4466803f0d02432\\\")\",\"update(\\\"user:6348b3f3c9b90289424c\\\")\",\"update(\\\"team:6348b4466803f0d02432\\/owner\\\")\",\"delete(\\\"user:6348b3f3c9b90289424c\\\")\",\"delete(\\\"team:6348b4466803f0d02432\\/owner\\\")\"]','1','6348b3f3c9b90289424c','1','6348b4466803f0d02432','[\"owner\"]','2022-10-14 00:58:46.429','2022-10-14 00:58:46.429',1,'{\"data\":\"\",\"method\":\"aes-128-gcm\",\"iv\":\"377a8b1f94c04aec3888ebb1\",\"tag\":\"1826262b22497a972eb4ccbc28240507\",\"version\":\"1\"}','6348b44668bf13001078 6348b3f3c9b90289424c');
/*!40000 ALTER TABLE `_console_memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_memberships_perms`
--

DROP TABLE IF EXISTS `_console_memberships_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_memberships_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_memberships_perms`
--

LOCK TABLES `_console_memberships_perms` WRITE;
/*!40000 ALTER TABLE `_console_memberships_perms` DISABLE KEYS */;
INSERT INTO `_console_memberships_perms` VALUES
(6,'delete','team:6348b4466803f0d02432/owner','6348b44668bf13001078'),
(5,'delete','user:6348b3f3c9b90289424c','6348b44668bf13001078'),
(2,'read','team:6348b4466803f0d02432','6348b44668bf13001078'),
(1,'read','user:6348b3f3c9b90289424c','6348b44668bf13001078'),
(4,'update','team:6348b4466803f0d02432/owner','6348b44668bf13001078'),
(3,'update','user:6348b3f3c9b90289424c','6348b44668bf13001078');
/*!40000 ALTER TABLE `_console_memberships_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_platforms`
--

DROP TABLE IF EXISTS `_console_platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_platforms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `store` varchar(256) DEFAULT NULL,
  `hostname` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_platforms`
--

LOCK TABLES `_console_platforms` WRITE;
/*!40000 ALTER TABLE `_console_platforms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_platforms_perms`
--

DROP TABLE IF EXISTS `_console_platforms_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_platforms_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_platforms_perms`
--

LOCK TABLES `_console_platforms_perms` WRITE;
/*!40000 ALTER TABLE `_console_platforms_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_platforms_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_projects`
--

DROP TABLE IF EXISTS `_console_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_projects` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `teamInternalId` varchar(255) DEFAULT NULL,
  `teamId` varchar(255) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `version` varchar(16) DEFAULT NULL,
  `legalName` varchar(256) DEFAULT NULL,
  `legalCountry` varchar(256) DEFAULT NULL,
  `legalState` varchar(256) DEFAULT NULL,
  `legalCity` varchar(256) DEFAULT NULL,
  `legalAddress` varchar(256) DEFAULT NULL,
  `legalTaxId` varchar(256) DEFAULT NULL,
  `services` text DEFAULT NULL,
  `auths` text DEFAULT NULL,
  `authProviders` text DEFAULT NULL,
  `platforms` text DEFAULT NULL,
  `webhooks` text DEFAULT NULL,
  `keys` text DEFAULT NULL,
  `domains` text DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_projects`
--

LOCK TABLES `_console_projects` WRITE;
/*!40000 ALTER TABLE `_console_projects` DISABLE KEYS */;
INSERT INTO `_console_projects` VALUES
(1,'6348b44744584cc229da','2022-10-14 00:58:47.280','2022-10-14 00:58:47.280','[\"read(\\\"team:6348b4466803f0d02432\\\")\",\"update(\\\"team:6348b4466803f0d02432\\/owner\\\")\",\"update(\\\"team:6348b4466803f0d02432\\/developer\\\")\",\"delete(\\\"team:6348b4466803f0d02432\\/owner\\\")\",\"delete(\\\"team:6348b4466803f0d02432\\/developer\\\")\"]','1','6348b4466803f0d02432','AdminCore','','','','1.0.3','','','','','','','{}','{\"limit\":0,\"emailPassword\":true,\"usersAuthMagicURL\":true,\"anonymous\":true,\"invites\":true,\"JWT\":true,\"phone\":true}','{\"data\":\"uS4=\",\"method\":\"aes-128-gcm\",\"iv\":\"c7f01ba4f0dd0dd27df6cbf7\",\"tag\":\"a0fbf96b27f68635d447ed6aee9bda2e\",\"version\":\"1\"}',NULL,NULL,NULL,NULL,'6348b44744584cc229da AdminCore');
/*!40000 ALTER TABLE `_console_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_projects_perms`
--

DROP TABLE IF EXISTS `_console_projects_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_projects_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_projects_perms`
--

LOCK TABLES `_console_projects_perms` WRITE;
/*!40000 ALTER TABLE `_console_projects_perms` DISABLE KEYS */;
INSERT INTO `_console_projects_perms` VALUES
(5,'delete','team:6348b4466803f0d02432/developer','6348b44744584cc229da'),
(4,'delete','team:6348b4466803f0d02432/owner','6348b44744584cc229da'),
(1,'read','team:6348b4466803f0d02432','6348b44744584cc229da'),
(3,'update','team:6348b4466803f0d02432/developer','6348b44744584cc229da'),
(2,'update','team:6348b4466803f0d02432/owner','6348b44744584cc229da');
/*!40000 ALTER TABLE `_console_projects_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_realtime`
--

DROP TABLE IF EXISTS `_console_realtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_realtime` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `container` varchar(255) DEFAULT NULL,
  `timestamp` datetime(3) DEFAULT NULL,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_timestamp` (`timestamp`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_realtime`
--

LOCK TABLES `_console_realtime` WRITE;
/*!40000 ALTER TABLE `_console_realtime` DISABLE KEYS */;
INSERT INTO `_console_realtime` VALUES
(1,'6348b3920966f7f06065','2022-10-14 00:55:46.039','2022-10-14 01:34:41.037','[]','6348b38ce7a15','2022-10-14 01:34:41.037','{\"console\":2}'),
(2,'6348bdb01b5f0468ae02','2022-10-14 01:38:56.112','2022-10-14 02:51:11.109','[]','6348bdaa97683','2022-10-14 02:51:11.109','{\"console\":2}'),
(3,'6348cf161e2852d03968','2022-10-14 02:53:10.124','2022-10-14 03:07:40.122','[]','6348cf1106f2e','2022-10-14 03:07:40.122','{\"console\":2}');
/*!40000 ALTER TABLE `_console_realtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_realtime_perms`
--

DROP TABLE IF EXISTS `_console_realtime_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_realtime_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_realtime_perms`
--

LOCK TABLES `_console_realtime_perms` WRITE;
/*!40000 ALTER TABLE `_console_realtime_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_realtime_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_sessions`
--

DROP TABLE IF EXISTS `_console_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_sessions` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `provider` varchar(128) DEFAULT NULL,
  `providerUid` varchar(2048) DEFAULT NULL,
  `providerAccessToken` text DEFAULT NULL,
  `providerAccessTokenExpiry` datetime(3) DEFAULT NULL,
  `providerRefreshToken` text DEFAULT NULL,
  `secret` varchar(512) DEFAULT NULL,
  `expire` datetime(3) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `countryCode` varchar(2) DEFAULT NULL,
  `osCode` varchar(256) DEFAULT NULL,
  `osName` varchar(256) DEFAULT NULL,
  `osVersion` varchar(256) DEFAULT NULL,
  `clientType` varchar(256) DEFAULT NULL,
  `clientCode` varchar(256) DEFAULT NULL,
  `clientName` varchar(256) DEFAULT NULL,
  `clientVersion` varchar(256) DEFAULT NULL,
  `clientEngine` varchar(256) DEFAULT NULL,
  `clientEngineVersion` varchar(256) DEFAULT NULL,
  `deviceName` varchar(256) DEFAULT NULL,
  `deviceBrand` varchar(256) DEFAULT NULL,
  `deviceModel` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_provider_providerUid` (`provider`(100),`providerUid`(100)),
  KEY `_key_user` (`userInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_sessions`
--

LOCK TABLES `_console_sessions` WRITE;
/*!40000 ALTER TABLE `_console_sessions` DISABLE KEYS */;
INSERT INTO `_console_sessions` VALUES
(1,'6348b3f437cf195dea66','2022-10-14 00:57:24.546','2022-10-14 00:57:24.546','[\"read(\\\"user:6348b3f3c9b90289424c\\\")\",\"update(\\\"user:6348b3f3c9b90289424c\\\")\",\"delete(\\\"user:6348b3f3c9b90289424c\\\")\"]','1','6348b3f3c9b90289424c','email','yivue@qq.com',NULL,NULL,NULL,'{\"data\":\"2rJ0In4AlnTRiJluF624HMI67KCKXENi\\/xLVjRi\\/jXF5XwyBWXsiQCrE+owUeyVR4qAnPw\\/5U5e4iKcY6nSPaw==\",\"method\":\"aes-128-gcm\",\"iv\":\"714ae7a29cf745e177bc862c\",\"tag\":\"c817f50bf8155e2c6588fc27080e72d3\",\"version\":\"1\"}','2023-10-14 00:57:24.228','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','192.168.126.203','--','WIN','Windows','10','browser','PS','Microsoft Edge','106.0','Blink','106.0.0.0','desktop','',''),
(2,'6348b436e353b6d27808','2022-10-14 00:58:31.235','2022-10-14 00:58:31.235','[\"read(\\\"user:6348b3f3c9b90289424c\\\")\",\"update(\\\"user:6348b3f3c9b90289424c\\\")\",\"delete(\\\"user:6348b3f3c9b90289424c\\\")\"]','1','6348b3f3c9b90289424c','email','yivue@qq.com',NULL,NULL,NULL,'{\"data\":\"OoaBKVgyT3qZFocgfN7Z\\/UAJiEy80POVv5sbILAk3J6lf2sKnL2Xn6mqXu1wzEhD3HiZ9r5E8dK6zgQXXaAVnw==\",\"method\":\"aes-128-gcm\",\"iv\":\"1a21ca6a160c7550842daab2\",\"tag\":\"7a2793d472dde688e44e305b539ef3f1\",\"version\":\"1\"}','2023-10-14 00:58:30.931','AppwriteCLI/1.1.1 (Windows_NT Windows 10 Pro; x64)','192.168.126.203','--','WIN','Windows','10','desktop','cli','Appwrite CLI','1.1.1','','','desktop','','');
/*!40000 ALTER TABLE `_console_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_sessions_perms`
--

DROP TABLE IF EXISTS `_console_sessions_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_sessions_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_sessions_perms`
--

LOCK TABLES `_console_sessions_perms` WRITE;
/*!40000 ALTER TABLE `_console_sessions_perms` DISABLE KEYS */;
INSERT INTO `_console_sessions_perms` VALUES
(3,'delete','user:6348b3f3c9b90289424c','6348b3f437cf195dea66'),
(1,'read','user:6348b3f3c9b90289424c','6348b3f437cf195dea66'),
(2,'update','user:6348b3f3c9b90289424c','6348b3f437cf195dea66'),
(6,'delete','user:6348b3f3c9b90289424c','6348b436e353b6d27808'),
(4,'read','user:6348b3f3c9b90289424c','6348b436e353b6d27808'),
(5,'update','user:6348b3f3c9b90289424c','6348b436e353b6d27808');
/*!40000 ALTER TABLE `_console_sessions_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_stats`
--

DROP TABLE IF EXISTS `_console_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_stats` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `metric` varchar(255) DEFAULT NULL,
  `value` bigint(20) unsigned DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `period` varchar(4) DEFAULT NULL,
  `type` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_time` (`time`),
  KEY `_key_period_time` (`period`,`time`),
  KEY `_key_metric_period_time` (`metric`,`period`,`time`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_stats`
--

LOCK TABLES `_console_stats` WRITE;
/*!40000 ALTER TABLE `_console_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_stats_perms`
--

DROP TABLE IF EXISTS `_console_stats_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_stats_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_stats_perms`
--

LOCK TABLES `_console_stats_perms` WRITE;
/*!40000 ALTER TABLE `_console_stats_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_stats_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_teams`
--

DROP TABLE IF EXISTS `_console_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_teams` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_key_total` (`total`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_teams`
--

LOCK TABLES `_console_teams` WRITE;
/*!40000 ALTER TABLE `_console_teams` DISABLE KEYS */;
INSERT INTO `_console_teams` VALUES
(1,'6348b4466803f0d02432','2022-10-14 00:58:46.426','2022-10-14 00:58:46.426','[\"read(\\\"team:6348b4466803f0d02432\\\")\",\"update(\\\"team:6348b4466803f0d02432\\/owner\\\")\",\"delete(\\\"team:6348b4466803f0d02432\\/owner\\\")\"]','AdminCore',1,'6348b4466803f0d02432 AdminCore');
/*!40000 ALTER TABLE `_console_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_teams_perms`
--

DROP TABLE IF EXISTS `_console_teams_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_teams_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_teams_perms`
--

LOCK TABLES `_console_teams_perms` WRITE;
/*!40000 ALTER TABLE `_console_teams_perms` DISABLE KEYS */;
INSERT INTO `_console_teams_perms` VALUES
(3,'delete','team:6348b4466803f0d02432/owner','6348b4466803f0d02432'),
(1,'read','team:6348b4466803f0d02432','6348b4466803f0d02432'),
(2,'update','team:6348b4466803f0d02432/owner','6348b4466803f0d02432');
/*!40000 ALTER TABLE `_console_teams_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_tokens`
--

DROP TABLE IF EXISTS `_console_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_tokens` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `secret` varchar(512) DEFAULT NULL,
  `expire` datetime(3) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_user` (`userInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_tokens`
--

LOCK TABLES `_console_tokens` WRITE;
/*!40000 ALTER TABLE `_console_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_tokens_perms`
--

DROP TABLE IF EXISTS `_console_tokens_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_tokens_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_tokens_perms`
--

LOCK TABLES `_console_tokens_perms` WRITE;
/*!40000 ALTER TABLE `_console_tokens_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_tokens_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_users`
--

DROP TABLE IF EXISTS `_console_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_users` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `hash` varchar(256) DEFAULT NULL,
  `hashOptions` text DEFAULT NULL,
  `passwordUpdate` datetime(3) DEFAULT NULL,
  `prefs` text DEFAULT NULL,
  `registration` datetime(3) DEFAULT NULL,
  `emailVerification` tinyint(1) DEFAULT NULL,
  `phoneVerification` tinyint(1) DEFAULT NULL,
  `reset` tinyint(1) DEFAULT NULL,
  `sessions` text DEFAULT NULL,
  `tokens` text DEFAULT NULL,
  `memberships` text DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  UNIQUE KEY `_key_email` (`email`),
  UNIQUE KEY `_key_phone` (`phone`),
  KEY `_key_name` (`name`),
  KEY `_key_status` (`status`),
  KEY `_key_passwordUpdate` (`passwordUpdate`),
  KEY `_key_registration` (`registration`),
  KEY `_key_emailVerification` (`emailVerification`),
  KEY `_key_phoneVerification` (`phoneVerification`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_users`
--

LOCK TABLES `_console_users` WRITE;
/*!40000 ALTER TABLE `_console_users` DISABLE KEYS */;
INSERT INTO `_console_users` VALUES
(1,'6348b3f3c9b90289424c','2022-10-14 00:57:23.931','2022-10-14 00:57:23.931','[\"read(\\\"any\\\")\",\"update(\\\"user:6348b3f3c9b90289424c\\\")\",\"delete(\\\"user:6348b3f3c9b90289424c\\\")\"]','yivue','yivue@qq.com',NULL,1,'{\"data\":\"FuNOYBaFFZtaXl\\/pZr5YHKQctWzx+KyzE0zylMHTN6aLGumYACUiId2QfNU9Q95nHBdLDF\\/byWwTXt7Vq3Ftyz86pLrYpcJLWeoQcBsaIXGtAJS7Y\\/32rNHL4mmxGaNgFw==\",\"method\":\"aes-128-gcm\",\"iv\":\"9b0ecb28d4ad11d302666365\",\"tag\":\"235911bd8300df6c23c50621af8ad270\",\"version\":\"1\"}','argon2','{\"memoryCost\":2048,\"timeCost\":4,\"threads\":3}','2022-10-14 00:57:23.931','{}','2022-10-14 00:57:23.931',0,NULL,0,NULL,NULL,NULL,'6348b3f3c9b90289424c yivue@qq.com yivue');
/*!40000 ALTER TABLE `_console_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_users_perms`
--

DROP TABLE IF EXISTS `_console_users_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_users_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_users_perms`
--

LOCK TABLES `_console_users_perms` WRITE;
/*!40000 ALTER TABLE `_console_users_perms` DISABLE KEYS */;
INSERT INTO `_console_users_perms` VALUES
(3,'delete','user:6348b3f3c9b90289424c','6348b3f3c9b90289424c'),
(1,'read','any','6348b3f3c9b90289424c'),
(2,'update','user:6348b3f3c9b90289424c','6348b3f3c9b90289424c');
/*!40000 ALTER TABLE `_console_users_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_variables`
--

DROP TABLE IF EXISTS `_console_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_variables` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `functionInternalId` varchar(255) DEFAULT NULL,
  `functionId` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(8192) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  UNIQUE KEY `_key_uniqueKey` (`functionInternalId`,`key`),
  KEY `_key_function` (`functionInternalId`),
  KEY `_key_key` (`key`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_variables`
--

LOCK TABLES `_console_variables` WRITE;
/*!40000 ALTER TABLE `_console_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_variables_perms`
--

DROP TABLE IF EXISTS `_console_variables_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_variables_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_variables_perms`
--

LOCK TABLES `_console_variables_perms` WRITE;
/*!40000 ALTER TABLE `_console_variables_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_variables_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_webhooks`
--

DROP TABLE IF EXISTS `_console_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_webhooks` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `httpUser` varchar(255) DEFAULT NULL,
  `httpPass` varchar(255) DEFAULT NULL,
  `security` tinyint(1) DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `signatureKey` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_webhooks`
--

LOCK TABLES `_console_webhooks` WRITE;
/*!40000 ALTER TABLE `_console_webhooks` DISABLE KEYS */;
INSERT INTO `_console_webhooks` VALUES
(1,'6348c9c5424a6c46efe7','2022-10-14 02:30:29.271','2022-10-14 02:30:29.271','[\"read(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','1','6348b44744584cc229da','飞书','https://open.feishu.cn/open-apis/bot/v2/hook/17a844ab-6cd7-403a-8015-e3cbb556ef8a','','{\"data\":\"\",\"method\":\"aes-128-gcm\",\"iv\":\"251b465df2fdebd35b27b1d8\",\"tag\":\"4c8bbd35dabc7d1fc4338ae794556e47\",\"version\":\"1\"}',1,'[\"users.*.create\"]','c41654b5bc1ad6d32ea55b09e4e713c3f7ddb18883914225271a1e2d0ac15106593a9aaf613488b7f33432d14dae86fa5c1b7b9668b250ed509900e665b822b9');
/*!40000 ALTER TABLE `_console_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_webhooks_perms`
--

DROP TABLE IF EXISTS `_console_webhooks_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_webhooks_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_index2` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_webhooks_perms`
--

LOCK TABLES `_console_webhooks_perms` WRITE;
/*!40000 ALTER TABLE `_console_webhooks_perms` DISABLE KEYS */;
INSERT INTO `_console_webhooks_perms` VALUES
(3,'delete','any','6348c9c5424a6c46efe7'),
(1,'read','any','6348c9c5424a6c46efe7'),
(2,'update','any','6348c9c5424a6c46efe7');
/*!40000 ALTER TABLE `_console_webhooks_perms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-14  3:07:44
