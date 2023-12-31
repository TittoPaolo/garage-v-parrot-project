-- MySQL dump 10.13  Distrib 8.1.0, for Win64 (x86_64)
--
-- Host: localhost    Database: garage_v_parrot
-- ------------------------------------------------------
-- Server version	8.1.0
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `rating` int NOT NULL,
  `comment` longtext NOT NULL,
  `moderation` int NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'User1',4,'This is the first comment.',0,'2023-11-08 13:27:38'),(2,'User2',5,'This is the second comment.',1,'2023-11-08 13:27:38'),(3,'User3',3,'This is the third comment.',0,'2023-11-08 13:27:38'),(4,'User4',5,'This is the fourth comment.',1,'2023-11-08 13:27:38'),(5,'User5',2,'This is the fifth comment.',0,'2023-11-14 14:28:54'),(6,'User6',5,'This is the sixth comment.',0,'2023-11-14 14:42:28'),(7,'User7',3,'This is the seventh comment.',0,'2023-11-14 15:15:37');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_account`
--

DROP TABLE IF EXISTS `users_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `type_utilisateur` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_account`
--

LOCK TABLES `users_account` WRITE;
/*!40000 ALTER TABLE `users_account` DISABLE KEYS */;
INSERT INTO `users_account` VALUES (1,'Parrot','Vincent','vincent@example.com','motdepasseadmin','Administrateur'),(2,'Smith','John','john@example.com','motdepasse1','Employe'),(3,'Doe','Jane','jane@example.com','motdepasse2','Employe'),(4,'Brown','Michael','michael@example.com','motdepasse3','Employe'),(5,'Johnson','Emily','emily@example.com','motdepasse4','Employe'),(6,'Wilson','David','david@example.com','motdepasse5','Employe'),(7,'Anderson','Sarah','sarah@example.com','motdepasse6','Employe'),(8,'Lee','James','james@example.com','motdepasse7','Employe'),(9,'Garcia','Linda','linda@example.com','motdepasse8','Employe'),(10,'Rodriguez','Daniel','daniel@example.com','motdepasse9','Employe'),(11,'Martinez','Susan','susan@example.com','motdepasse10','Employe');
/*!40000 ALTER TABLE `users_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voitures`
--

DROP TABLE IF EXISTS `voitures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voitures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marque` varchar(255) NOT NULL,
  `modele` varchar(255) NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `annee` int NOT NULL,
  `kilometrage` int NOT NULL,
  `couleur` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voitures`
--

LOCK TABLES `voitures` WRITE;
/*!40000 ALTER TABLE `voitures` DISABLE KEYS */;
INSERT INTO `voitures` VALUES (1,'Toyota','Camry',15000.00,2018,45000,'Noir','camry.jpg'),(2,'Honda','Civic',12000.00,2017,35000,'Rouge','civic.jpg'),(3,'Ford','Focus',11000.00,2019,30000,'Gris','focus.jpg'),(4,'Chevrolet','Malibu',13000.00,2018,40000,'Noir','malibu.jpg'),(5,'Nissan','Altima',14000.00,2019,35000,'Blanc','altima.jpg'),(6,'Volkswagen','Jetta',12500.00,2017,38000,'Gris Métalisé','jetta.jpg'),(7,'Hyundai','Elantra',11500.00,2018,42000,'Vert','elantra.jpg'),(8,'Kia','Optima',13500.00,2019,32000,'Bleu Foncé','optima.jpg'),(9,'Mazda','Mazda3',12750.00,2017,39000,'Rouge Foncé','mazda3.jpg'),(10,'Subaru','Impreza',11000.00,2018,46000,'Bleu Clair','impreza.jpg');
/*!40000 ALTER TABLE `voitures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-15 12:09:03
