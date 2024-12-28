-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: healthnetstorage
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `appointment_id` bigint NOT NULL AUTO_INCREMENT,
  `patient_id` bigint NOT NULL,
  `doctor_id` bigint NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `is_pending` tinyint(1) NOT NULL,
  PRIMARY KEY (`appointment_id`),
  KEY `patient_id` (`patient_id`),
  KEY `doctor_id` (`doctor_id`),
  CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,1,1,'2023-01-10','08:00:00',0),(2,2,2,'2023-01-12','08:00:00',0),(3,3,3,'2023-01-12','08:30:00',0),(4,4,4,'2023-01-17','08:00:00',0),(5,5,5,'2023-01-17','08:30:00',0),(6,6,6,'2023-01-17','09:00:00',0),(7,7,7,'2023-01-23','08:00:00',0),(8,8,8,'2023-01-23','08:30:00',0),(9,9,9,'2023-01-24','08:00:00',0),(10,10,10,'2023-02-04','12:00:00',1),(11,11,11,'2023-02-09','12:00:00',1),(12,12,12,'2023-02-09','12:30:00',1),(13,13,13,'2023-02-15','18:00:00',1),(14,14,14,'2023-02-21','18:00:00',1),(15,15,15,'2023-02-21','18:30:00',1),(16,16,16,'2023-02-28','08:00:00',1),(17,17,17,'2023-03-02','10:00:00',1),(18,18,18,'2023-03-08','10:00:00',1),(19,19,19,'2023-03-13','11:30:00',1),(20,20,20,'2023-03-13','12:00:00',1);
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avalibility`
--

DROP TABLE IF EXISTS `avalibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avalibility` (
  `doctor_id` bigint NOT NULL,
  `Mon_startTime` time DEFAULT NULL,
  `Mon_endTime` time DEFAULT NULL,
  `Tue_startTime` time DEFAULT NULL,
  `Tue_endTime` time DEFAULT NULL,
  `Wed_startTime` time DEFAULT NULL,
  `Wed_endTime` time DEFAULT NULL,
  `Thu_startTime` time DEFAULT NULL,
  `Thu_endTime` time DEFAULT NULL,
  `Fri_startTime` time DEFAULT NULL,
  `Fri_endTime` time DEFAULT NULL,
  `Sat_startTime` time DEFAULT NULL,
  `Sat_endTime` time DEFAULT NULL,
  `Sun_startTime` time DEFAULT NULL,
  `Sun_endTime` time DEFAULT NULL,
  PRIMARY KEY (`doctor_id`),
  CONSTRAINT `avalibility_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avalibility`
--

LOCK TABLES `avalibility` WRITE;
/*!40000 ALTER TABLE `avalibility` DISABLE KEYS */;
INSERT INTO `avalibility` VALUES (1,'08:00:00','20:30:00','08:00:00','20:30:00','08:00:00','20:30:00','08:00:00','20:30:00','10:00:00','20:30:00',NULL,NULL,'12:00:00','18:30:00'),(2,'08:00:00','20:30:00','08:00:00','20:30:00','08:00:00','20:30:00','08:00:00','20:30:00','10:00:00','20:30:00','12:00:00','18:30:00',NULL,NULL),(3,'08:00:00','16:30:00','08:00:00','16:30:00','18:30:00','24:00:00','18:30:00','24:00:00','08:00:00','16:30:00','08:00:00','16:30:00',NULL,NULL),(4,'08:00:00','16:30:00','08:00:00','16:30:00','18:30:00','24:00:00','18:30:00','24:00:00','08:00:00','16:30:00','08:00:00','16:30:00',NULL,NULL),(5,'16:30:00','24:00:00','16:30:00','24:00:00','24:00:00','08:00:00',NULL,NULL,'20:30:00','08:30:00','16:30:00','24:00:00','12:00:00','18:30:00'),(6,'16:30:00','24:00:00','16:30:00','24:00:00','24:00:00','08:00:00',NULL,NULL,'20:30:00','08:30:00','16:30:00','24:00:00','12:00:00','18:30:00'),(7,'16:30:00','24:00:00','16:30:00','24:00:00','24:00:00','08:00:00',NULL,NULL,'20:30:00','08:30:00','16:30:00','24:00:00','18:30:00','24:00:00'),(8,'16:30:00','24:00:00','16:30:00','24:00:00','24:00:00','08:00:00',NULL,NULL,'20:30:00','08:30:00','16:30:00','24:00:00','18:30:00','24:00:00'),(9,'24:00:00','08:00:00','24:00:00','08:00:00',NULL,NULL,'24:00:00','08:00:00','24:00:00','08:00:00','24:00:00','08:00:00',NULL,NULL),(10,'24:00:00','08:00:00','24:00:00','08:00:00','24:00:00','08:00:00','24:00:00','08:00:00','24:00:00','08:00:00',NULL,NULL,'24:00:00','08:00:00');
/*!40000 ALTER TABLE `avalibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `department_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Cardiology'),(2,'Oncology'),(3,'Radiology'),(4,'Emergency'),(5,'Gynaecology'),(6,'Pediatrics');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doctor_id` bigint NOT NULL,
  `specialization` varchar(255) NOT NULL,
  PRIMARY KEY (`doctor_id`),
  CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Cardiology'),(2,'Cardiology'),(3,'Radiology'),(4,'Gynaecology'),(5,'Gynaecology'),(6,'Emergency'),(7,'Emergency'),(8,'Emergency'),(9,'Pediatrics'),(10,'Oncology');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventory_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `quantity` bigint NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `department_id` bigint NOT NULL,
  PRIMARY KEY (`inventory_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'Scalpel',34,'2025-12-30',1),(2,'Bandages',400,'2026-12-30',4),(3,'IV Bag',250,'2027-12-30',4),(4,'Gloves',300,'2025-12-30',5),(5,'Wheelchair',20,NULL,1),(6,'Ventilator',15,NULL,2),(7,'Oxygen Cylinder',25,'2027-12-30',1),(8,'X-Ray Machine',2,NULL,3),(9,'Thermometer',20,NULL,6),(10,'Medical Tape',40,'2029-12-30',4),(11,'Bandages',280,'2026-12-30',6),(12,'Gloves',400,'2025-12-30',4),(13,'Gloves',200,'2025-12-30',6),(14,'IV Bag',200,'2027-12-30',1),(15,'IV Bag',300,'2027-12-30',2),(16,'IV Bag',180,'2027-12-30',5),(17,'Thermometer',15,NULL,4),(18,'Thermometer',10,NULL,5),(19,'Oxygen Cylinder',30,'2027-12-30',2),(20,'Oxygen Cylinder',27,'2027-12-30',4),(21,'Ventilator',20,NULL,1),(22,'Ventilator',17,NULL,4);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_records`
--

DROP TABLE IF EXISTS `medical_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_records` (
  `record_id` bigint NOT NULL AUTO_INCREMENT,
  `department_id` bigint NOT NULL,
  `patient_id` bigint NOT NULL,
  `treatement_id` bigint NOT NULL,
  `diagnosis` varchar(255) NOT NULL,
  `bloodpressure` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `patient_id` (`patient_id`),
  KEY `department_id` (`department_id`),
  KEY `treatement_id` (`treatement_id`),
  CONSTRAINT `medical_records_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  CONSTRAINT `medical_records_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  CONSTRAINT `medical_records_ibfk_3` FOREIGN KEY (`treatement_id`) REFERENCES `treatement` (`treatement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_records`
--

LOCK TABLES `medical_records` WRITE;
/*!40000 ALTER TABLE `medical_records` DISABLE KEYS */;
INSERT INTO `medical_records` VALUES (1,1,28,5,'Hypertension','140/90','2024-01-10'),(2,1,32,12,'Heart Arrhythmia','130/85','2024-01-15'),(3,1,40,6,'Congestive Heart Failure','150/100','2023-12-22'),(4,1,34,3,'Atherosclerosis','160/95','2023-10-05'),(5,2,37,4,'Breast Cancer',NULL,'2023-09-17'),(6,2,43,7,'Leukemia',NULL,'2024-02-25'),(7,2,46,10,'Lung Cancer',NULL,'2023-08-19'),(8,2,50,2,'Lymphoma',NULL,'2024-03-08'),(9,3,30,1,'Fractured Bone',NULL,'2024-04-12'),(10,3,39,9,'Herniated Disc',NULL,'2023-05-29'),(11,3,45,8,'Torn Ligament',NULL,'2024-06-21'),(12,3,31,11,'Kidney Stones',NULL,'2023-07-15'),(13,4,27,5,'Acute Appendicitis',NULL,'2023-12-31'),(14,4,44,12,'Food Poisoning',NULL,'2024-01-09'),(15,4,33,6,'Head Injury',NULL,'2024-02-13'),(16,4,38,9,'Fractured Rib',NULL,'2024-02-24'),(17,5,36,4,'Pregnancy Complications',NULL,'2023-10-11'),(18,5,51,1,'Endometriosis',NULL,'2023-11-03'),(19,5,42,7,'Ovarian Cyst',NULL,'2023-09-30'),(20,5,47,3,'Uterine Fibroids',NULL,'2023-08-14'),(21,6,26,8,'Pediatric Asthma',NULL,'1975-01-07'),(22,6,52,6,'RSV Infection',NULL,'2023-05-10'),(23,6,29,10,'Childhood Obesity',NULL,'2003-09-22'),(24,6,35,2,'Pediatric Diabetes',NULL,'1997-03-25'),(25,1,48,11,'Angina','135/88','2024-04-10'),(26,2,41,4,'Prostate Cancer',NULL,'2024-02-28'),(27,2,53,5,'Colorectal Cancer',NULL,'2023-12-11'),(28,3,54,3,'Osteoporosis',NULL,'2023-08-09'),(29,4,55,9,'Severe Allergic Reaction',NULL,'2024-05-16'),(30,5,49,7,'Polycystic Ovary Syndrome',NULL,'2024-06-07');
/*!40000 ALTER TABLE `medical_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patient_id` bigint NOT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`patient_id`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (26,'74 KG','173 CM'),(27,'60 KG','175 CM'),(28,'85 KG','182 CM'),(29,'45 KG','140 CM'),(30,'73 KG','175 CM'),(31,'80 KG','178 CM'),(32,'90 KG','180 CM'),(33,'70 KG','175 CM'),(34,'95 KG','183 CM'),(35,'40 KG','145 CM'),(36,'60 KG','170 CM'),(37,'55 KG','160 CM'),(38,'67 KG','172 CM'),(39,'78 KG','179 CM'),(40,'92 KG','185 CM'),(41,'65 KG','168 CM'),(42,'58 KG','165 CM'),(43,'62 KG','160 CM'),(44,'73 KG','180 CM'),(45,'68 KG','175 CM'),(46,'55 KG','165 CM'),(47,'72 KG','170 CM'),(48,'85 KG','177 CM'),(49,'78 KG','160 CM'),(50,'90 KG','180 CM'),(51,'65 KG','162 CM'),(52,'70 KG','168 CM'),(53,'48 KG','158 CM'),(54,'50 KG','150 CM'),(55,'55 KG','160 CM');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `person_id` bigint NOT NULL AUTO_INCREMENT,
  `image` blob,
  `image_type` varchar(50) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `contact_info` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,NULL,NULL,'Dr. James Miller','Male',45,'1979-03-10','555-0192','123 Oak Street, Springfield'),(2,NULL,NULL,'Dr. Emily Clark','Female',39,'1985-06-21','555-0123','456 Maple Avenue, Springfield'),(3,NULL,NULL,'Dr. Robert Kim','Male',52,'1972-02-05','555-0345','789 Pine Road, Springfield'),(4,NULL,NULL,'Dr. Sarah Lee','Female',48,'1976-11-22','555-0678','321 Elm Street, Springfield'),(5,NULL,NULL,'Dr. Amanda Rivera','Female',37,'1987-07-15','555-0890','654 Cedar Lane, Springfield'),(6,NULL,NULL,'Dr. Richard Adams','Male',50,'1974-12-03','555-0923','135 Walnut Circle, Springfield'),(7,NULL,NULL,'Dr. Michael Brown','Male',42,'1982-09-11','555-0456','246 Spruce Street, Springfield'),(8,NULL,NULL,'Dr. Laura Davis','Female',35,'1989-05-30','555-0654','357 Oak Lane, Springfield'),(9,NULL,NULL,'Dr. John Wilson','Male',44,'1980-01-25','555-0789','468 Cherry Boulevard, Springfield'),(10,NULL,NULL,'Dr. Lisa White','Female',38,'1986-03-15','555-0981','579 Birch Street, Springfield'),(11,NULL,NULL,'Nancy Taylor','Female',31,'1993-08-18','555-1122','22 Park Avenue, Springfield'),(12,NULL,NULL,'Tom Harris','Male',36,'1988-04-09','555-1234','89 Hill Road, Springfield'),(13,NULL,NULL,'Ellen Scott','Female',29,'1995-10-11','555-1345','77 Forest Street, Springfield'),(14,NULL,NULL,'David Young','Male',42,'1982-07-23','555-1456','90 Ridge Drive, Springfield'),(15,NULL,NULL,'Maria Turner','Female',28,'1996-12-02','555-1567','33 Lake Avenue, Springfield'),(16,NULL,NULL,'Michael King','Male',40,'1984-06-30','555-1678','47 River Road, Springfield'),(17,NULL,NULL,'Linda Baker','Female',35,'1989-03-17','555-1789','105 Ocean Drive, Springfield'),(18,NULL,NULL,'Samuel Bell','Male',39,'1985-09-25','555-1890','55 Harbor Lane, Springfield'),(19,NULL,NULL,'Donna Foster','Female',34,'1990-05-05','555-1901','98 Grove Street, Springfield'),(20,NULL,NULL,'Brian Cox','Male',41,'1983-10-19','555-2012','15 Meadow Lane, Springfield'),(21,NULL,NULL,'Jessica Reed','Female',27,'1997-11-11','555-2123','78 Orchard Street, Springfield'),(22,NULL,NULL,'Eric Carter','Male',33,'1991-01-22','555-2234','63 Willow Drive, Springfield'),(23,NULL,NULL,'Deborah Morris','Female',38,'1986-08-29','555-2345','10 Ivy Road, Springfield'),(24,NULL,NULL,'Jason Rogers','Male',30,'1994-03-31','555-2456','52 Stone Avenue, Springfield'),(25,NULL,NULL,'Rebecca Phillips','Female',32,'1992-06-16','555-2567','66 Broad Street, Springfield'),(26,NULL,NULL,'Ethan Brooks','Male',50,'1974-02-20','555-2678','12 Elmwood Avenue, Springfield'),(27,NULL,NULL,'Sophia Carter','Female',29,'1995-10-14','555-2789','45 Maple Avenue, Springfield'),(28,NULL,NULL,'Liam Edwards','Male',36,'1988-04-01','555-2890','28 Pine Street, Springfield'),(29,NULL,NULL,'Olivia Watson','Female',27,'1997-06-22','555-2901','19 Main Street, Springfield'),(30,NULL,NULL,'Mason Thompson','Male',34,'1990-01-09','555-3012','75 Oak Road, Springfield'),(31,NULL,NULL,'Emma Roberts','Female',43,'1981-07-16','555-3123','87 Birch Lane, Springfield'),(32,NULL,NULL,'Noah Martin','Male',52,'1972-09-30','555-3234','53 Lake Street, Springfield'),(33,NULL,NULL,'Isabella Anderson','Female',46,'1978-03-12','555-3345','99 Riverside Drive, Springfield'),(34,NULL,NULL,'Logan Nelson','Male',38,'1986-11-05','555-3456','88 Poplar Street, Springfield'),(35,NULL,NULL,'Ava Hernandez','Female',33,'1991-12-17','555-3567','24 Holly Lane, Springfield'),(36,NULL,NULL,'Armina Perez','Female',27,'1997-08-30','555-3678','30 Redwood Road, Springfield'),(37,NULL,NULL,'Mia Collins','Female',35,'1989-04-23','555-3789','40 Evergreen Avenue, Springfield'),(38,NULL,NULL,'Benjamin Sanchez','Male',31,'1993-06-18','555-3890','60 Willow Street, Springfield'),(39,NULL,NULL,'Charlotte Howard','Female',41,'1983-02-07','555-3901','42 Aspen Court, Springfield'),(40,NULL,NULL,'James Young','Male',47,'1977-05-04','555-4012','71 Spruce Drive, Springfield'),(41,NULL,NULL,'Henry Baker','Male',39,'1985-11-13','555-4123','56 Forest Road, Springfield'),(42,NULL,NULL,'Maria Lee','Female',29,'1995-03-01','555-4234','22 Ridge Lane, Springfield'),(43,NULL,NULL,'Grace King','Female',37,'1987-09-06','555-4345','11 Meadow Lane, Springfield'),(44,NULL,NULL,'Alexander Scott','Male',32,'1992-12-09','555-4456','90 Park Road, Springfield'),(45,NULL,NULL,'Amelia Wright','Female',44,'1980-07-02','555-4567','83 Oakwood Drive, Springfield'),(46,NULL,NULL,'Evelyn Green','Female',48,'1976-10-10','555-4678','54 Grove Street, Springfield'),(47,NULL,NULL,'Michal Hughes','Female',51,'1973-05-20','555-4789','35 Cedar Lane, Springfield'),(48,NULL,NULL,'Abigail Campbell','Female',40,'1984-08-25','555-4890','68 Hill Street, Springfield'),(49,NULL,NULL,'Daniela Long','Female',28,'1996-02-14','555-4901','31 Broad Street, Springfield'),(50,NULL,NULL,'Chloe Brooks','Female',30,'1994-06-05','555-5012','64 Harbor Avenue, Springfield'),(51,NULL,NULL,'Victoria Murphy','Female',46,'1978-04-12','555-5123','49 Pinecrest Road, Springfield'),(52,NULL,NULL,'Samuel Bryant','Male',33,'1991-02-28','555-5234','23 Sycamore Avenue, Springfield'),(53,NULL,NULL,'Lily Foster','Female',29,'1995-09-15','555-5345','17 Elmwood Circle, Springfield'),(54,NULL,NULL,'David Edwards','Male',52,'1972-06-19','555-5456','88 Ash Lane, Springfield'),(55,NULL,NULL,'Zoe Harrison','Female',36,'1988-03-25','555-5567','34 Poplar Drive, Springfield');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` bigint NOT NULL,
  `proffession` varchar(255) NOT NULL,
  PRIMARY KEY (`staff_id`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (11,'Receptionist'),(12,'Nurse'),(13,'Lab Technician'),(14,'Pharmacist'),(15,'Administrative Assistant'),(16,'Medical Billing Specialist'),(17,'Medical Records Clerk'),(18,'Nurse'),(19,'Janitorial Staff'),(20,'Pharmacy Technician'),(21,'Radiology Technician'),(22,'Lab Assistant'),(23,'Healthcare Administrator'),(24,'Medical Transcriptionist'),(25,'Ward Clerk');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatement`
--

DROP TABLE IF EXISTS `treatement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatement` (
  `treatement_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `doctor_id` bigint NOT NULL,
  `department_id` bigint NOT NULL,
  PRIMARY KEY (`treatement_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `treatement_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`),
  CONSTRAINT `treatement_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatement`
--

LOCK TABLES `treatement` WRITE;
/*!40000 ALTER TABLE `treatement` DISABLE KEYS */;
INSERT INTO `treatement` VALUES (1,'Angioplasty',1,1),(2,'Cardiac Catheterization',2,1),(3,'Chemotherapy',10,2),(4,'Radiation Therapy',10,2),(5,'CT Scan',3,3),(6,'MRI Scan',3,3),(7,'Hysterectomy',4,4),(8,'Prenatal Care',5,4),(9,'Fracture Management',6,5),(10,'Stitching and Wound Care',7,5),(11,'CPR and Resuscitation',8,5),(12,'Pediatric Asthma Management',9,6);
/*!40000 ALTER TABLE `treatement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_authentication`
--

DROP TABLE IF EXISTS `user_authentication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_authentication` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `person_id` bigint DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `person_id` (`person_id`),
  CONSTRAINT `user_authentication_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_authentication`
--

LOCK TABLES `user_authentication` WRITE;
/*!40000 ALTER TABLE `user_authentication` DISABLE KEYS */;
INSERT INTO `user_authentication` VALUES ('abigail.campbell','$2a$06$5N.OZ0HJhfbXJoGX7l/xkezldi.HrOzdQfb5HN4BuR/4gOR1Md/ry','PATIENT',48),('alexander.scott','$2a$06$7SCPxmJs.IqgzFUG/A8M9..SWGI0DzADet1IEbkewtvmM41jKk0W6','PATIENT',44),('amanda.rivera','$2a$06$DFxVpFpUBHJ6WHFwMWoz7enenxcvnvkpriXF9P1c6sFlSAvvLzpne','DOCTOR',5),('amelia.wright','$2a$06$zzgfOX0.oLRcaIrE5rQvbOrqKMwJ8nFC.GrJZqHZ6UD3cf10914zi','PATIENT',45),('ava.hernandez','$2a$06$MlItnXph0yUjruZP/bWZQ.9JG.LlyRoJr33uKeJYbKcoAY/ffyON6','PATIENT',35),('benjamin.sanchez','$2a$06$VcR2CYRrGtSs4ZjwMGZAeudRhIGgm1jo1fdIZyj1w49ByjgtmsNUq','PATIENT',38),('brian.cox','$2a$06$Z1H4ddaRg0zldP4sUI/X3.UHGAfRCJBkvpi.KDuPS8VoYFVAJTIwe','STAFF',20),('century','$2a$06$OG2/ZfB4flLuwuaktQr9nea3OOKPGFQdj/FPdtFh0t0rmPSPLULhy','PATIENT',NULL),('charlotte.howard','$2a$06$ggpvgDOuSfZClgaa6HpFh.TQdc3NOQ6L0s4UuyVOR7XZRrtMVeORm','PATIENT',39),('chloe.brooks','$2a$06$U4rU9tGrxDgszeHdA9WB9ulbM4ZTMncXqcQ.Q4HNlt8HyTzivj0ea','PATIENT',50),('daniel.long','$2a$06$fHXmoXVmyLrwFVXhxRw63.PIs1SHupd2NUAzVx5CdRlcMJhcRdg4m','PATIENT',49),('david.edwards','$2a$06$Ed0R2xRUJP79ZypY3BkIc.ixU2N6IH/Ve6TGqbdBrpqTonW1hKMbK','PATIENT',54),('david.young','$2a$06$BdVaVMPFP5HojirZxXcvk.RvUEcMS1Ux./pzvB1QttJw56GxMTbiq','STAFF',14),('deborah.morris','$2a$06$R1i8HerKYEx9fWtuh2e4U.EfAx6o0N8HNXs0OXpuik8pLXPVXboOm','STAFF',23),('donna.foster','$2a$06$/GijeZY1FvU7sYYI3WJZreoiyYHC4zUlU7/LKkLMwwfvcVcGwyAfe','STAFF',19),('ella.baker','$2a$06$tQXr7pVIcUQXQyTI/.SKxOwSSaVuXnbY8xqJ6fEhop2W/.o/xoi1m','PATIENT',41),('ellen.scott','$2a$06$idNZ7TdZiYk1OTcVSaNnB.J1.9DuYUe6ZI0sIfYf85k9pD.6X9CXe','STAFF',13),('emily.clark','$2a$06$gWR58/peI4ft9PEb6an/pu2Sirz7yMsPVznfm/2L7KoIvx9CoCzYG','DOCTOR',2),('emma.roberts','$2a$06$88DM7Cx4LUbU5ZHwEkv6GOsue4ug1xh1lhHttTGIcHRuwtNkzoE9.','PATIENT',31),('eric.carter','$2a$06$NHjwDtJIENElWxPm7VEVfuNMflcck9ZbnoUDoUYmudnqkao/8DrJC','STAFF',22),('ethan.brooks','$2a$06$PY2.g3x7ckWHzmjlnKFmP.JvSJu5E7m8eefnBAzbu8uzric1fuAEG','PATIENT',26),('evelyn.green','$2a$06$p4aHOrCTsEz2OdTbnPge7OHIwfnuglnh9iPHN3cDnH3Q2lrAB7x8G','PATIENT',46),('grace.king','$2a$06$n2dw1faXK6Uqyhr.Bjy/rerx1uh5v4zQY9ZyPnT8uDXZViyZ9xN.u','PATIENT',43),('henry.lee','$2a$06$C8mST7jxS/Dx1JNS7WbOb.3XLJHnYeXaWlRfdoM3KMc18xm3Q1sJy','PATIENT',42),('isabella.anderson','$2a$06$2lwjJ.NnT2XDaA7vCO7doOIVkuZ4P0p2K9Z.LfDeSlW/WBPDuGkVq','PATIENT',33),('james.miller','$2a$06$QIw/N77pEYYk5meUHrzbH.zo/T4z1Dt3uHWURNW8tph61yNjL/yj2','DOCTOR',1),('james.young','$2a$06$lVDLDJdbnnKWCkw/K5QXf.jDsua5fUWgXGB5k7yevhONomaODmj0e','PATIENT',40),('jason.rogers','$2a$06$u0cdvm0H1aLAc1fTO8VzZuH.B7HFPv7S8Tt21usiDygxoutsP9U8G','STAFF',24),('jessica.reed','$2a$06$YZlYbvUyQRr15QWUH2YH7u.E5Z96UfgoEzB9G8nHEFEgZykICUOfC','STAFF',21),('john.wilson','$2a$06$y8x8a0bbrFFk/dkFNaXB0eMkpU8nIIrbVgro3eyc/nc1tip/xQylu','DOCTOR',9),('laura.davis','$2a$06$FuKnbCJiAoiruq80PZRG0u2K6iwuSWRucbsD2Y2icqUMWkmD8VuiK','DOCTOR',8),('liam.edwards','$2a$06$XVo9CUyB89VZcHSYk3VZruOk/HOcHaigs2/ZA3S83fG8PqgX4EDLu','PATIENT',28),('lily.foster','$2a$06$wrz3hcXL3zZf6FfJ/eESDeJ0T/GBbm9hqjJ3G9XJHB2p.u0hfLUjK','PATIENT',53),('linda.baker','$2a$06$QUTuIsvMUec9WKQ31xD9W.TDxlJs1rekW98O0vie0QMfeHrx4QeZG','STAFF',17),('lisa.white','$2a$06$mYNINi.w3AAe55V8Rrg.POmF9ePx74Jhg74Y5MIKeeIz85CjuXO3.','DOCTOR',10),('logan.nelson','$2a$06$38NnzIoZHncBmQr.crU7K.uXRX8C1taNLcbre1qxTQDyOlHHiodt6','PATIENT',34),('lucas.perez','$2a$06$OXNy5cBEwLjYGu/Jmvum0eNVHglFCC.a2MYS5UgHPPkXUJfAoyzKS','PATIENT',36),('maria.turner','$2a$06$Sx8tbvvu9RQD1Ju4Pav5Ne0iOc6iAvQDE0e7XYTh1ntEjRi9YAfm2','STAFF',15),('mason.thompson','$2a$06$zQkJ8HxoSaW09d6OSIXNBuBdN4A2GyY0ns/1P0rH3A.0HEc/O6tRm','PATIENT',30),('mia.collins','$2a$06$Doz6iB725AtRUHKTxf.y5.uZVBOYP1IvdQjmuNdhJ/MN2fpCFD1xW','PATIENT',37),('michael.brown','$2a$06$ReAyCcIa.eYCcJgbl/BPuedhBujW/bI8YBo9b8gc.A5MfL0nGlRfK','DOCTOR',7),('michael.hughes','$2a$06$1USs2AcN5zI2eV77xixnqeMPPmbTVa7MPjdYrJUSJDYs.t6gDtTUm','PATIENT',47),('michael.king','$2a$06$kEFAO2pu2tvEfT.kQakzBu2Ps9/uuZLxvEvYZ0jMDzYPjeL1EjoaC','STAFF',16),('nancy.taylor','$2a$06$JNbAdjao26w4Q1YA6E2JZeiXPN9VkfItzQIO8gzGSWUdwlf5EI30q','STAFF',11),('noah.martin','$2a$06$.Fz4Y0BKmkxIxj.P8SZm1.vPBHM8fYcIKmZcyu6XGGgV/9lmBBnIm','PATIENT',32),('olivia.watson','$2a$06$fysJaKRWVMkpgVYOb8WWy.xx2IXwlPLw.zcVNl1Ib/nxxft4L8wAS','PATIENT',29),('rebecca.phillips','$2a$06$/IxtpUquCTnC/opiCvUrtuJsZ9ncVYKzNdDjyVize.KzNZpKviOCa','STAFF',25),('richard.adams','$2a$06$HMOugf7MF0o2rxV7aprSY.q/1CaJEccpkd/LwIU6f4KVK0rRgaZg2','DOCTOR',6),('robert.kim','$2a$06$A7epX7x5rRXFvVeZ7stHxeT.j5P3vrgriq6yktxGeEJUjoDhQPmFC','DOCTOR',3),('samuel.bell','$2a$06$lqTsRG0WWeQN.31VaV7iJOzfknz3w7pDerec88QwAr2O5oHWKnaZe','STAFF',18),('samuel.bryant','$2a$06$jC4u3TupZY9d2WRskxiaROdJjTsJ0J49YcoY/NeKNn9tC9cJR/Rx6','PATIENT',52),('sarah.lee','$2a$06$Ic16lSYCSnqZnigFcEvDQ.SjYPvjFfTfSNGrSgcSehbLoaPM2KzoS','DOCTOR',4),('sophia.carter','$2a$06$wIrkFv1PNKkTuUCSEw2u2.mBHdLghcOvafw0MiPQnwW8/A4Em8ZuG','PATIENT',27),('tom.harris','$2a$06$LZX3th.yeYFWk/u./IcgjOp6tYHtfJCfb4gWaR6cTjHz4cGVK/hoG','STAFF',12),('victoria.murphy','$2a$06$a0vdugKsBxJuq9EceBaATukRPaVSXuk5p1LMMRSXhdNrdhLGoMFLO','PATIENT',51),('zoe.harrison','$2a$06$9ZCP6mcTD48QFr2z4cVt1.WJdPmBB615R0Vh7NEYfyIb1L5clMJXq','PATIENT',55);
/*!40000 ALTER TABLE `user_authentication` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-16 21:00:33
