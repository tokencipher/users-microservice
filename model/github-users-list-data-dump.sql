-- MySQL dump 10.13  Distrib 5.7.18, for macos10.12 (x86_64)
--
-- Host: localhost    Database: github_users_list
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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `node_id` varchar(255) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `html_url` varchar(255) DEFAULT NULL,
  `followers_url` varchar(255) DEFAULT NULL,
  `following_url` varchar(255) DEFAULT NULL,
  `gists_url` varchar(255) DEFAULT NULL,
  `starred_url` varchar(255) DEFAULT NULL,
  `subscriptions_url` varchar(255) DEFAULT NULL,
  `organizations_url` varchar(255) DEFAULT NULL,
  `repos_url` varchar(255) DEFAULT NULL,
  `events_url` varchar(255) DEFAULT NULL,
  `received_events_url` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `site_admin` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `gravatar_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'mojombo','Jojo','Alphonso',NULL,'https://avatars.githubusercontent.com/u/1?v=4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'superadmin',NULL,'$2b$10$zkKW0QqVZlEZ1jBO7m7ISufC8reJDeWWPcMNs6Q4B6QiAq5qSQXMK',NULL),(2,'defunkt','Roger','Pokitas',NULL,'https://avatars.githubusercontent.com/u/2?v=4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'developer',NULL,'$2b$10$I3AmLTLLKt3EhCf3HavzEuz3SVdwVNwddeNzh1u1iNKfCWvYQUpKe',NULL),(3,'jeff','Randy','Hendricks',NULL,'https://avatars.githubusercontent.com/u/3?v=4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'developer',NULL,'$2b$10$ujh98lofQOHTlU0QpcyH0e8aPjy3eyQwnUPihkZjMh5AxZZrWj3jS',NULL),(4,'wycats','Wesly','Kostenson',NULL,'https://avatars.githubusercontent.com/u/4?v=4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin',NULL,'$2b$10$3xKPZCkiyfSsluzCciEvweTdQfOHSeJWmn6R0De7YM423mxjK4QUK',NULL),(5,'ezmobius','Esmail','Braxton',NULL,'https://avatars.githubusercontent.com/u/5?v=4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin',NULL,'$2b$10$fUfBmkCPr2PTTjqq5aq7mequNR58Xh1fkliGWwAfi22r7pQiJsdqK',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role` enum('developer','admin','superadmin') NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'superadmin'),(2,'developer'),(3,'developer'),(4,'admin'),(5,'admin');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-19  9:28:54
