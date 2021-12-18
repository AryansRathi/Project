-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: group5
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB

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
-- Table structure for table `Academic_tests`
--

DROP TABLE IF EXISTS `Academic_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Academic_tests` (
  `t_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `Type_of_Test` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`t_id`),
  CONSTRAINT `Academic_tests_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `Tests` (`t_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Academic_tests`
--

LOCK TABLES `Academic_tests` WRITE;
/*!40000 ALTER TABLE `Academic_tests` DISABLE KEYS */;
INSERT INTO `Academic_tests` VALUES (501,2001,'Academic GRE'),(502,2002,'Academic GMAT'),(503,2003,'Academic GMAT'),(504,2004,'Academic GRE'),(505,2005,'Academic GMAT'),(506,2006,'Academic GMAT'),(507,2007,'Academic GRE'),(508,2008,'Academic GRE'),(509,2009,'Academic GMAT'),(510,2010,'Academic GRE');
/*!40000 ALTER TABLE `Academic_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Admin_application`
--

DROP TABLE IF EXISTS `Admin_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Admin_application` (
  `A_id` int(11) NOT NULL,
  `U_id` int(11) NOT NULL,
  `D_id` int(11) NOT NULL,
  `Year_` int(11) DEFAULT NULL,
  `General_test` varchar(30) DEFAULT NULL,
  `Degree_seek` varchar(30) DEFAULT NULL,
  `SOP` varchar(30) DEFAULT NULL,
  `LOR` varchar(30) DEFAULT NULL,
  `Department` varchar(30) DEFAULT NULL,
  `MS_OR_PHD` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`U_id`),
  CONSTRAINT `Adm_uni_appl` FOREIGN KEY (`U_id`) REFERENCES `UNI` (`U_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admin_application`
--

LOCK TABLES `Admin_application` WRITE;
/*!40000 ALTER TABLE `Admin_application` DISABLE KEYS */;
INSERT INTO `Admin_application` VALUES (708,1,808,2021,'GRE','MS','one','three','mathematics',NULL),(709,2,809,2021,'MCAT','Phd','one','three','mathematics',NULL),(710,3,810,2021,'GRE','MS','one','three','mathematics',NULL),(711,4,811,2021,'GRE','MS','one','three','mathematics',NULL),(705,5,805,2021,'MCAT','MS','one','two','CS',NULL),(707,6,807,2021,'TOEFL','Phd','one','three','Nonlinear Dynamics',NULL),(702,7,802,2021,'GRE','Phd','one','three','mathematics',NULL),(706,8,806,2021,'GRE','MS','one','three','Chemistry',NULL),(704,9,804,2021,'GRE','MS','one','two','CS',NULL),(703,10,803,2021,'GRE','Phd','one','two','CS',NULL),(701,11,801,2021,'GRE','MS','one','three','mathematics',NULL);
/*!40000 ALTER TABLE `Admin_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Job_application`
--

DROP TABLE IF EXISTS `Job_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Job_application` (
  `job_id` int(11) NOT NULL,
  `U_id` int(11) NOT NULL,
  `D_id` int(11) NOT NULL,
  `Year_` int(11) DEFAULT NULL,
  `Prev_research` varchar(30) DEFAULT NULL,
  `recomendation` varchar(30) DEFAULT NULL,
  `teaching_experience` int(11) DEFAULT NULL,
  `Department` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`job_id`),
  KEY `job_uni_appl` (`U_id`),
  CONSTRAINT `job_uni_appl` FOREIGN KEY (`U_id`) REFERENCES `UNI` (`U_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Job_application`
--

LOCK TABLES `Job_application` WRITE;
/*!40000 ALTER TABLE `Job_application` DISABLE KEYS */;
INSERT INTO `Job_application` VALUES (1,7,210,2021,'link_12','Prof1',8,'mathematics'),(2,7,210,2021,'link_13','Prof1',8,'mathematics'),(300,1,200,2021,'link_1','Prof1',2,'mathematics'),(302,2,202,2021,'link_3','Prof1',5,'Chemistry'),(303,3,203,2021,'link_4','Prof1',6,'Physics'),(304,6,204,2021,'link_5','Prof1',7,'Oranics'),(305,8,205,2021,'link_6','Prof1',8,'BioChemistry'),(306,3,206,2021,'link_7','Prof1',2,'CS'),(307,5,207,2021,'link_8','Prof1',4,'mathematics'),(308,6,208,2021,'link_9','Prof1',7,'mathematics'),(309,7,209,2021,'link_10','Prof1',2,'mathematics'),(310,7,210,2021,'link_11','Prof1',8,'mathematics');
/*!40000 ALTER TABLE `Job_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Language_Tests`
--

DROP TABLE IF EXISTS `Language_Tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Language_Tests` (
  `t_id` int(11) NOT NULL,
  `I_id` int(11) NOT NULL,
  `Type_of_Test` varchar(20) DEFAULT NULL,
  `Test_ranking` int(11) NOT NULL,
  PRIMARY KEY (`t_id`),
  CONSTRAINT `Language_Tests_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `Tests` (`t_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Language_Tests`
--

LOCK TABLES `Language_Tests` WRITE;
/*!40000 ALTER TABLE `Language_Tests` DISABLE KEYS */;
INSERT INTO `Language_Tests` VALUES (501,3001,'Language TOEFL',1),(502,3002,'Language TOEFL',2),(503,3003,'Language TOEFL',1),(504,3004,'Language TOEFL',1),(505,3005,'Language TOEFL',2),(506,3006,'Language TOEFL',2),(507,3007,'Language TOEFL',1),(508,3008,'Language TOEFL',1),(509,3009,'Language TOEFL',1),(510,3010,'Language TOEFL',2);
/*!40000 ALTER TABLE `Language_Tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Professor_affiliations`
--

DROP TABLE IF EXISTS `Professor_affiliations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Professor_affiliations` (
  `PN_id` int(11) NOT NULL,
  `Other_universities` varchar(255) DEFAULT NULL,
  `Industry_Related_Projects` varchar(255) DEFAULT NULL,
  `International_Conferences` varchar(255) DEFAULT NULL,
  `OU_id` int(11) NOT NULL,
  PRIMARY KEY (`PN_id`,`OU_id`),
  CONSTRAINT `Professor_affiliations_ibfk_1` FOREIGN KEY (`PN_id`) REFERENCES `Professor_details` (`PN_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Professor_affiliations`
--

LOCK TABLES `Professor_affiliations` WRITE;
/*!40000 ALTER TABLE `Professor_affiliations` DISABLE KEYS */;
INSERT INTO `Professor_affiliations` VALUES (2,'Caltech','','International Conference in Robotic Simulations',7),(3,'Stanford University','','International Conference in Poverty Allevation',2),(3,'Paris School of Economics','Control in Chemical usage in industry','Nobel Memorial Prize in Economic Sciences',3),(4,'Max Planck Institute of Techonogy','Space simulations','',6),(6,'Massachusetts Institute of Technology','Open source contribution in Dukie Town','International Conference on Computer Vision',1),(7,'Massachusetts Institute of Technology','','International Conference in Genetic Engineering',1),(7,'Indian Institute of Technology','','',5),(8,'Kathmandu University','','International Conference on High Energy Physics',4),(9,'Indian Institute of Technology','Scalable quantum computing','',5),(10,'Stanford University','','International Conference in Artificial Intelligence',2);
/*!40000 ALTER TABLE `Professor_affiliations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Professor_details`
--

DROP TABLE IF EXISTS `Professor_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Professor_details` (
  `Prof_Name` varchar(255) NOT NULL,
  `Uni_Name` varchar(255) DEFAULT NULL,
  `PN_id` int(11) NOT NULL,
  `Country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PN_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Professor_details`
--

LOCK TABLES `Professor_details` WRITE;
/*!40000 ALTER TABLE `Professor_details` DISABLE KEYS */;
INSERT INTO `Professor_details` VALUES ('Prof. Dr. Peter Baumann','Jacobs University',1,'Germany'),('Prof. Dr. Andreas Birk','Jacobs University',2,'Germany'),('Prof. Dr. Esther Duflo','Massachusetts Institute of Technology',3,'USA'),('Prof. Dr. John Tsitsiklis','Massachusetts Institute of Technology',4,'USA'),('Prof. Dr. Andrew Ng','Stanford University',5,'USA'),('Prof. Dr. Francesco Maurelli','Jacobs University',6,'Germany'),('Prof. Dr. Bhadraman Tuladhar','Kathmandu University',7,'Nepal'),('Prof. Dr. James Kosov','St. Petersburg University',8,'Russia'),('Prof. Dr. Nicolai Riemann','ETH Zurich',9,'Switzerland'),('Prof. Dr. Ajay','Indian Institute of Technology',10,'India');
/*!40000 ALTER TABLE `Professor_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Professor_publishing`
--

DROP TABLE IF EXISTS `Professor_publishing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Professor_publishing` (
  `PN_id` int(11) NOT NULL,
  `colab_id` int(11) NOT NULL,
  `Pb_id` int(11) NOT NULL,
  `Papers_name` varchar(255) DEFAULT NULL,
  `collaborators_in_the_paper` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PN_id`,`colab_id`,`Pb_id`),
  CONSTRAINT `Professor_publishing_ibfk_1` FOREIGN KEY (`PN_id`) REFERENCES `Professor_details` (`PN_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Professor_publishing`
--

LOCK TABLES `Professor_publishing` WRITE;
/*!40000 ALTER TABLE `Professor_publishing` DISABLE KEYS */;
INSERT INTO `Professor_publishing` VALUES (1,1,1,'Array databases: concepts, standards, implementations.','D. Misev'),(1,2,1,'Array databases: concepts, standards, implementations.','V. Merticariu'),(1,3,1,'Array databases: concepts, standards, implementations.','B.H. Pham'),(3,4,2,'Poor economics: A radical rethinking of the way to fight global poverty','Abhijit Banerjee'),(9,8,4,'Recognition of inference pattern using Generative Adverserial Networks','R. Khurana'),(9,9,4,'Recognition of inference pattern using Generative Adverserial Networks','Max Quang'),(9,10,4,'Recognition of inference pattern using Generative Adverserial Networks','H. Dmytrivec'),(10,5,3,'Model for c-axis resistivity of cuprate superconductors','R Lal'),(10,6,3,'Model for c-axis resistivity of cuprate superconductors','RL Hota'),(10,7,3,'Model for c-axis resistivity of cuprate superconductors','SK Joshi');
/*!40000 ALTER TABLE `Professor_publishing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Research_Area`
--

DROP TABLE IF EXISTS `Research_Area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Research_Area` (
  `R_id` int(11) NOT NULL,
  `research_focus` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`R_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Research_Area`
--

LOCK TABLES `Research_Area` WRITE;
/*!40000 ALTER TABLE `Research_Area` DISABLE KEYS */;
/*!40000 ALTER TABLE `Research_Area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Test_Acceptance`
--

DROP TABLE IF EXISTS `Test_Acceptance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Test_Acceptance` (
  `t_id` int(11) NOT NULL,
  `U_ID` int(11) NOT NULL,
  `Mean_test_score` int(11) DEFAULT NULL,
  PRIMARY KEY (`t_id`,`U_ID`),
  KEY `U_ID` (`U_ID`),
  CONSTRAINT `Test_Acceptance_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `Tests` (`t_id`) ON DELETE CASCADE,
  CONSTRAINT `Test_Acceptance_ibfk_2` FOREIGN KEY (`U_ID`) REFERENCES `UNI` (`U_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Test_Acceptance`
--

LOCK TABLES `Test_Acceptance` WRITE;
/*!40000 ALTER TABLE `Test_Acceptance` DISABLE KEYS */;
/*!40000 ALTER TABLE `Test_Acceptance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tests`
--

DROP TABLE IF EXISTS `Tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tests` (
  `t_id` int(11) NOT NULL,
  `Name_of_Tests` varchar(20) DEFAULT NULL,
  `Country` varchar(20) DEFAULT NULL,
  `mean_test_score` float DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tests`
--

LOCK TABLES `Tests` WRITE;
/*!40000 ALTER TABLE `Tests` DISABLE KEYS */;
INSERT INTO `Tests` VALUES (501,'Academic','USA',50),(502,'LANGUAGE','CANADA',8),(503,'Academic','India',500),(504,'LANGUAGE','Germany',8),(505,'Academic','Switzerland',95),(506,'LANGUAGE','CANADA',8),(507,'Academic','USA',58),(508,'LANGUAGE','France',83),(509,'Academic','UK',51),(510,'LANGUAGE','CANADA',28);
/*!40000 ALTER TABLE `Tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UNI`
--

DROP TABLE IF EXISTS `UNI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UNI` (
  `Uni_Name` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `P_available` varchar(30) DEFAULT NULL,
  `National_R` int(11) DEFAULT NULL,
  `World_R` int(11) DEFAULT NULL,
  `Subject_R` int(11) DEFAULT NULL,
  `U_id` int(11) NOT NULL,
  PRIMARY KEY (`U_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UNI`
--

LOCK TABLES `UNI` WRITE;
/*!40000 ALTER TABLE `UNI` DISABLE KEYS */;
INSERT INTO `UNI` VALUES ('MIT','USA','gklf',34,35,36,1),('Stanford University','USA','kklk',40,41,42,2),('Paris School of Economics','France','khil',43,44,45,3),('Kathmandu University','Nepal','mmpc',37,38,39,4),('Indian Institute of Technology','India','lkjh',24,25,26,5),('Max Planck IT','Germany','gjkl',31,32,33,6),('Caltech','USA','mmkl',15,16,17,7),('ETH Zurich','Switzerland','ghjf',27,28,28,8),('University of Texas','USA','olko',21,22,23,9),('Hochshule','Germany','llki',18,19,20,10),('Jacobs University Bremen','Germany','xxyz',12,13,14,11);
/*!40000 ALTER TABLE `UNI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor_research_relation`
--

DROP TABLE IF EXISTS `professor_research_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor_research_relation` (
  `PN_id` int(11) NOT NULL,
  `R_id` int(11) NOT NULL,
  PRIMARY KEY (`PN_id`,`R_id`),
  KEY `R_id` (`R_id`),
  CONSTRAINT `professor_research_relation_ibfk_1` FOREIGN KEY (`PN_id`) REFERENCES `Professor_details` (`PN_id`) ON DELETE CASCADE,
  CONSTRAINT `professor_research_relation_ibfk_2` FOREIGN KEY (`R_id`) REFERENCES `Research_Area` (`R_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor_research_relation`
--

LOCK TABLES `professor_research_relation` WRITE;
/*!40000 ALTER TABLE `professor_research_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `professor_research_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_details` (
  `S_ID` int(11) NOT NULL,
  `App_id` int(11) NOT NULL,
  `Student_Name` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Funding_Received` int(11) DEFAULT NULL,
  `Prospective_Supervisor` varchar(100) DEFAULT NULL,
  `Uni_Applied_To` varchar(100) DEFAULT NULL,
  `Accepted_or_Rejected` varchar(100) DEFAULT NULL,
  `MS_OR_PHD` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`S_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_details`
--

LOCK TABLES `student_details` WRITE;
/*!40000 ALTER TABLE `student_details` DISABLE KEYS */;
INSERT INTO `student_details` VALUES (1,708,'Bivek Panthi','Nepal',100000,'','Massachusetts Institute of Technology','','PHD'),(2,709,'Bivek Chor','Nepal',50000,'','Stanford University','Rejected','MS'),(3,4,'Jack Rony','Germany',324523,'','Max Planck Institute of Technology','','PHD'),(5,707,'Mr. Shishir Sunar','Nepal',343344,'','Massachusetts Institute of Technology','','PHD'),(6,5,'Alla Malla','Mongolia',3423423,'Prof. Dr. James Kosov','St. Petersburg University','Accepted','PHD'),(7,2,'Allah Hamara','Mongolia',34654,'','Stanford University','','MS'),(8,701,'YouTube','USA',54645,'','Jacobs University Bremen','Accepted','MS'),(9,6,'Aryans PH','USA',20000,'Prof. Dr. Nicolai Reimann','ETH Zurich','Rejected','MS'),(10,3,'Chor Panthi','Germany',100,'Prof. Dr. Andreas Birk','Jacobs University Bremen','Accepted','MS');
/*!40000 ALTER TABLE `student_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-28 18:29:55
