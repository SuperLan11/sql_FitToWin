-- MySQL dump 10.16  Distrib 10.1.32-MariaDB, for Linux (x86_64)
--
-- Host: ember-db    Database: ljohnson0663_db_FitToWin
-- ------------------------------------------------------
-- Server version	10.1.32-MariaDB

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
-- Table structure for table `CLOTHING`
--

DROP TABLE IF EXISTS `CLOTHING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLOTHING` (
  `PROD_ID` int(11) NOT NULL,
  `CLO_COLOR` varchar(10) DEFAULT NULL,
  `CLO_SIZE` varchar(4) NOT NULL,
  PRIMARY KEY (`PROD_ID`),
  CONSTRAINT `clo_fk` FOREIGN KEY (`PROD_ID`) REFERENCES `PRODUCT` (`PROD_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLOTHING`
--

LOCK TABLES `CLOTHING` WRITE;
/*!40000 ALTER TABLE `CLOTHING` DISABLE KEYS */;
INSERT INTO `CLOTHING` VALUES (100,'purple','12'),(101,'green','9'),(102,'maroon','11.5'),(103,'teal','13'),(104,'teal','14'),(105,'blue','9.5'),(106,'aqua','14'),(107,'yellow','11'),(108,'teal','13.5'),(109,'lime','12'),(110,'olive','10'),(111,'yellow','11'),(112,'navy','9'),(113,'yellow','12.5'),(114,'silver','10.5'),(115,'navy','M'),(116,'black','L'),(117,'purple','XS'),(118,'white','S'),(119,'lime','M'),(120,'fuchsia','XS'),(121,'green','XL'),(122,'gray','XS'),(123,'black','S'),(124,'olive','XL'),(125,'olive','XS'),(126,'gray','S'),(127,'aqua','M'),(128,'blue','S'),(129,'fuchsia','L');
/*!40000 ALTER TABLE `CLOTHING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER` (
  `CUS_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `CUS_FNAME` varchar(15) NOT NULL,
  `CUS_LNAME` varchar(30) NOT NULL,
  `CUS_EMAIL` varchar(256) DEFAULT NULL,
  `CUS_SEX` char(1) NOT NULL,
  `CUS_AGE` int(11) NOT NULL,
  `CUS_STREET` varchar(25) DEFAULT NULL,
  `CUS_CITY` varchar(40) DEFAULT NULL,
  `CUS_STATE` char(2) DEFAULT NULL,
  `CUS_ZIP` char(5) DEFAULT NULL,
  PRIMARY KEY (`CUS_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES (1,'Floyd','Swift','ndibbert@example.org','M',76,'Rogahn Isle','North Maximeport','MT','71618'),(2,'Kaycee','Bernier','geovanni16@example.com','M',81,'Borer Road','Winifredville','CO','50769'),(3,'Meta','Veum','wunsch.stacey@example.org','F',24,'Kreiger Mountain','Champlinton','CO','33510'),(4,'Gabriella','Zieme','ro\'keefe@example.com','M',21,'Kattie Spurs','South Serenashire','NJ','47051'),(5,'Crawford','Kutch','marianne80@example.org','F',40,'Gustave Flats','Brakusstad','SC','84732'),(6,'Estel','Willms','alison.bauch@example.net','F',44,'Corkery Islands','Carmineburgh','NH','88397'),(7,'Antonietta','Ziemann','george.schamberger@example.org','F',92,'Stroman Center','West Aglaeborough','AR','63640'),(8,'Kayley','Dach','gerardo99@example.org','M',23,'Alfredo Landing','West Clarkborough','MO','46942'),(9,'Daphnee','Beatty','linnie.schaefer@example.org','M',17,'Lubowitz River','Sisterville','OR','18650'),(10,'Braden','Waelchi','dusty70@example.com','F',69,'Strosin Lane','Luciusshire','KY','22402'),(11,'Miguel','Spencer','giuseppe47@example.net','M',60,'Rosenbaum Stravenue','Westleychester','ID','99505'),(12,'Lennie','Mann','tommie.veum@example.com','M',63,'Geo Village','Lake Naomie','NJ','20609'),(13,'Trenton','Purdy','murazik.gayle@example.org','F',54,'Stark Neck','Jamaalside','KS','58765'),(14,'Rossie','Carroll','abdiel13@example.net','F',57,'Victoria Vista','New Arnold','HI','30138'),(15,'Elvera','Runolfsson','schamberger.ofelia@example.net','M',70,'Crooks Forest','Dibberthaven','MD','54309'),(16,'Alta','Schmeler','eliezer84@example.org','M',89,'Josephine Manor','West Emmanuelbury','PA','43927'),(17,'Nyasia','Tromp','reichel.brennan@example.net','F',94,'Mario Burg','East Deondreville','GA','67422'),(18,'Dustin','Stroman','desmond27@example.org','F',31,'Margarette Keys','Marquardthaven','RI','85395'),(19,'Steve','Kozey','nkonopelski@example.net','F',65,'Koss Point','Pollichtown','MS','90371'),(20,'Augustine','Smitham','heichmann@example.com','F',32,'Feeney Run','New Genevieve','LA','65107'),(21,'Kiara','Beahan','bhills@example.org','M',90,'Friesen Expressway','West Elenora','WY','42670'),(22,'Jay','Crona','prowe@example.org','M',69,'Lockman Run','Gislasonstad','KY','86711'),(23,'Magnus','Bradtke','dgraham@example.net','F',36,'Graham Bridge','North Sibyl','UT','22689'),(24,'Wendell','Streich','sonny.weber@example.org','M',31,'Beryl Wall','Bernieville','AR','22907'),(25,'Adolf','Kohler','nwest@example.net','F',76,'Brendan Cove','East Dariantown','WY','28452'),(26,'Lonzo','Nolan','chasity.auer@example.org','F',52,'Herman Branch','Denesikville','FL','71414'),(27,'Shawn','Torphy','zcrona@example.com','F',16,'Jacynthe Plains','New Lorinefurt','LA','19088'),(28,'Alejandra','Altenwerth','urobel@example.net','M',79,'McKenzie Hill','Gailside','KY','58506'),(29,'Audie','Kessler','christiansen.eulalia@example.net','M',83,'D\'Amore Track','Lemketown','GA','37851'),(30,'Dillan','Watsica','francisca.weissnat@example.net','F',45,'Sauer Stravenue','East Madonna','MA','89047'),(31,'Clotilde','Rau','lesley.paucek@example.org','F',78,'Cooper Pass','East Kennedyton','NV','94411'),(32,'Una','Hodkiewicz','bettie.nienow@example.net','F',55,'Talia Plains','Langoshberg','MA','57783'),(33,'Rosanna','Koss','ankunding.allison@example.org','F',58,'Jacobson Squares','South Samantaburgh','KS','56531'),(34,'Dorothy','Kuhlman','wintheiser.reyes@example.com','F',92,'Hills Via','Lake Pink','OK','60329'),(35,'Adalberto','Cruickshank','ygrimes@example.com','M',39,'Feil Well','West Axel','MN','26154'),(36,'Bradly','Denesik','richie.vandervort@example.com','M',53,'Ritchie Spur','New Yvettemouth','ID','30310'),(37,'Monique','Friesen','wolff.marilie@example.com','M',26,'Fisher Flat','Haagport','IA','27368'),(38,'Shemar','Wilkinson','eheidenreich@example.com','F',18,'Antonio Cove','Bernierview','MO','76857'),(39,'Tanner','Mueller','cmurphy@example.com','M',53,'Jaylen Overpass','Dachside','NM','30413'),(40,'Damon','Walter','granville.mohr@example.com','M',65,'Chaya Station','East Heiditown','CA','59404'),(41,'Audie','Moen','malachi.haley@example.net','F',81,'Stiedemann Grove','East Scottie','CT','52903'),(42,'Leonardo','Waelchi','toy.rossie@example.net','F',23,'Frieda Court','New Dominiquemouth','MS','42344'),(43,'Jaycee','Raynor','bashirian.mackenzie@example.com','F',38,'Wendell Circles','Port Ephraimburgh','OR','45585'),(44,'Valentine','Bergnaum','ebert.allie@example.org','M',69,'Schmidt Canyon','Opalbury','NE','88331'),(45,'Kristin','Homenick','ldouglas@example.net','F',35,'Sunny Tunnel','Raulport','MN','58802'),(46,'Raul','Stanton','aurelia71@example.net','M',62,'Alan Shore','Millerfort','NH','51377'),(47,'Isabel','O\'Conner','magdalen.swaniawski@example.org','M',60,'Hudson Roads','Fayhaven','MN','61777'),(48,'Lilyan','Huels','hoppe.bailee@example.org','F',86,'Noemi Trail','West Lomatown','OH','38525'),(49,'Gerson','Runolfsson','michelle.orn@example.org','F',59,'Murphy Parkway','Denesikville','OR','38689'),(50,'Vita','McKenzie','dlubowitz@example.com','M',52,'Giovanny Pike','Lake Stacymouth','DE','89942'),(51,'Jordon','Skiles','vicente87@example.com','M',92,'Dulce Pines','East Rubyhaven','KS','53600'),(52,'Foster','Predovic','dustin67@example.net','F',41,'Conn Ferry','Bryceville','IL','96688'),(53,'Korbin','Jones','uschaden@example.org','F',92,'Huel Ranch','Kertzmannborough','NH','11772'),(54,'Baron','Schmidt','mstoltenberg@example.net','F',69,'Clifton Via','Lawrencetown','ND','74176'),(55,'Cindy','Bode','adams.vivienne@example.org','F',59,'Adella Corner','Gaylordtown','OH','83276'),(56,'Griffin','Shields','wbrekke@example.org','M',17,'Holden Viaduct','Schambergermouth','MI','23580'),(57,'Jennifer','Schumm','kim57@example.org','F',73,'Myrtis Crossing','West Spencer','OR','73165'),(58,'Freddie','Gutkowski','sauer.alize@example.net','F',77,'Treutel Path','Zboncakfurt','DC','32929'),(59,'Hermann','Swift','flabadie@example.net','M',22,'Broderick Skyway','Lake Gilbertmouth','NH','41307'),(60,'Josefa','Mann','antwon73@example.org','F',73,'Beahan Overpass','Hartmannville','NV','62733'),(61,'Colin','Stiedemann','sean08@example.net','M',56,'Pacocha Square','North Selena','NC','86669'),(62,'Colleen','Schuster','johns.aron@example.org','M',38,'Stamm Lodge','Bruenside','WY','63035'),(63,'Korbin','Steuber','nmarquardt@example.com','M',63,'Kautzer Valley','North Cortezport','NJ','48502'),(64,'Woodrow','Kassulke','justina.gulgowski@example.org','M',64,'Ryleigh Unions','New Austintown','KS','15651'),(65,'Romaine','Greenholt','labadie.ted@example.net','M',31,'Harrison Meadows','Jonesfort','RI','84626'),(66,'Mckenzie','Shields','ycummerata@example.org','M',95,'Danny Fields','Bryonbury','AL','88280'),(67,'Ceasar','Waelchi','adalberto.bins@example.com','F',38,'Schmidt Island','West Alejandrin','HI','25840'),(68,'Dedric','Ruecker','little.abdul@example.org','M',30,'Jane Highway','Coleville','OH','44004'),(69,'Andrew','Bahringer','kframi@example.net','F',99,'Luella Junction','Lake Dejatown','OK','62898'),(70,'Shanel','Batz','erin05@example.net','F',21,'Mayert Islands','North Westley','AR','92531'),(71,'Christa','Wehner','akozey@example.net','F',51,'Yost Meadows','Hamillhaven','NE','12645'),(72,'Susan','Macejkovic','quigley.chanel@example.com','M',68,'Padberg Drives','Port Jaron','NJ','37074'),(73,'Bartholome','Turcotte','lcorwin@example.net','M',39,'Adela Centers','Louisafort','NM','46045'),(74,'Pietro','Yundt','carmen.goldner@example.net','F',34,'Bartoletti Ways','Kuphalfort','NC','91971'),(75,'Santa','Reinger','gilberto.hamill@example.com','F',32,'Elena Street','West Saraihaven','WY','74140'),(76,'Eriberto','Hamill','raphaelle17@example.net','F',47,'Dare Lane','Port Oscarside','TN','39988'),(77,'Coleman','Rodriguez','langworth.haleigh@example.net','M',91,'Lesch Union','Kathrynfurt','AR','51015'),(78,'Jennifer','Wisozk','erik.harvey@example.com','M',38,'Bogisich Port','Lake Shyannfort','HI','16296'),(79,'Priscilla','Ward','britney.littel@example.com','F',98,'Weber Crossing','Swiftfort','DE','88316'),(80,'Freddie','Tillman','celestine48@example.com','F',92,'Jadon Loaf','Korychester','DE','78064'),(81,'Roberto','Schulist','smiller@example.net','F',51,'Isidro Mission','Port Nettieview','GA','15951'),(82,'Jordon','Moen','mckenzie.gwen@example.net','M',73,'Tessie Estate','East Terrance','SC','50397'),(83,'Breanna','Erdman','eheidenreich@example.com','F',20,'Von Islands','North Maudietown','PA','36231'),(84,'Javonte','Lesch','dhickle@example.org','F',94,'Crooks Port','Sarinashire','UT','18177'),(85,'Ora','Schmeler','javon44@example.com','F',61,'Clifton Estate','Daniellamouth','SD','32461'),(86,'Maynard','Daugherty','marlee.kihn@example.net','F',39,'Sydney Harbors','Lake Kayli','FL','73954'),(87,'Bernhard','Balistreri','king78@example.com','F',25,'Yundt Flats','Savannahshire','PA','18042'),(88,'Aidan','Friesen','waters.elian@example.com','M',85,'Jaylon Overpass','Lake Ethanberg','NY','87742'),(89,'Dalton','Hettinger','loy.blanda@example.com','F',75,'Stoltenberg Parks','New Liliana','IN','50689'),(90,'Sven','Klein','elouise40@example.com','F',98,'Wilfredo Passage','Lake Emily','IN','63054'),(91,'Deron','Schmidt','gino.mann@example.net','F',93,'Schumm Glens','Thoramouth','NV','47293'),(92,'Harry','Vandervort','gabrielle.hills@example.com','M',22,'Rowan View','West Murphyborough','GA','65348'),(93,'Alene','Williamson','tkerluke@example.net','F',37,'Williamson Stravenue','West Naomi','WA','18818'),(94,'Keeley','McLaughlin','ed95@example.net','F',89,'Towne Flat','Vernonfort','GA','57437'),(95,'Tess','Kshlerin','harrison62@example.com','F',87,'Jared Forges','South Nyah','MD','41243'),(96,'Ariane','McLaughlin','augustus.huels@example.net','M',59,'Homenick Forge','East Edison','DE','68224'),(97,'Linnea','Ruecker','kiara21@example.net','M',79,'Gottlieb Glens','Port Lawson','RI','19396'),(98,'Flo','Beier','harold15@example.com','M',54,'Lonie Camp','Meganeview','IA','25793'),(99,'Alysa','Muller','demario75@example.com','M',57,'Orlando Points','South Marty','IN','79677'),(100,'Brittany','Haley','nolan.purdy@example.org','F',95,'Heidenreich Parkways','Durganville','PA','60238'),(101,'Luna','Stamm','angelina06@example.org','F',49,'Roob Green','Schillerton','ID','55807'),(102,'Michel','Gottlieb','reichert.jordi@example.org','F',34,'Pasquale Green','Wittingside','NJ','64449'),(103,'Joel','Little','london46@example.net','M',35,'Morar Island','Daughertyton','MS','27917'),(104,'Ignacio','Corwin','moore.stone@example.net','M',64,'Seth Freeway','North Patsyville','CT','96339'),(105,'Camden','Schoen','hoeger.ephraim@example.com','M',17,'Maximus Vista','South Joanamouth','KS','32871');
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLOYEE` (
  `EMP_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `EMP_FNAME` varchar(15) NOT NULL,
  `EMP_LNAME` varchar(30) NOT NULL,
  `EMP_EMAIL` varchar(50) DEFAULT NULL,
  `EMP_PHONE` char(12) DEFAULT NULL,
  `EMP_HIREDATE` date DEFAULT NULL,
  `EMP_TITLE` varchar(20) DEFAULT NULL,
  `EMP_STATUS` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`EMP_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE`
--

LOCK TABLES `EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
INSERT INTO `EMPLOYEE` VALUES (1,'Cleve','Bergstrom','hickle.eveline@example.org','198-429-7409','1983-02-19','Assistant Manager','INACTIVE'),(2,'Audrey','Hermann','ziemann.vanessa@example.net','274.339.3381','1977-06-05','Manager','INACTIVE'),(3,'Janie','Schuster','andres.nitzsche@example.com','801.396.9513','1992-08-05','Manager','INACTIVE'),(4,'Evangeline','Gaylord','macey33@example.org','462-719-8285','1980-10-25','Stocker','INACTIVE'),(5,'Angelica','McGlynn','fredrick33@example.net','708-952-0181','2018-12-28','Manager','INACTIVE'),(6,'Devon','Kunde','markus26@example.org','+22(7)532555','1993-12-01','Assistant Manager','INACTIVE'),(7,'Vincent','Armstrong','kschmitt@example.com','955-076-9989','2011-07-16','Assistant Manager','INACTIVE'),(8,'Cole','Wintheiser','green.ewell@example.net','1-905-881-47','2008-05-09','Salesperson','INACTIVE'),(9,'Clinton','Mosciski','aturcotte@example.org','1-543-395-11','1978-07-05','Salesperson','ACTIVE'),(10,'Annamae','Hilpert','cynthia.borer@example.net','129-570-1615','2014-09-09','Salesperson','ACTIVE'),(11,'Clint','Stoltenberg','wisoky.ewald@example.net','(468)500-515','2005-03-03','Stocker','INACTIVE'),(12,'Isabel','Hansen','vhermann@example.com','029-399-8798','1995-10-05','Stocker','ACTIVE'),(13,'Nora','Gusikowski','bergstrom.aurelie@example.net','1-957-379-19','2019-06-06','Salesperson','ACTIVE'),(14,'Katherine','Russel','urempel@example.net','08747760760','1985-10-14','Manager','INACTIVE'),(15,'Jettie','Bode','little.malcolm@example.com','1-078-802-85','2022-05-01','Assistant Manager','INACTIVE'),(16,'Brenden','Ward','chuel@example.com','(064)170-715','1997-04-05','Salesperson','ACTIVE'),(17,'Brandi','Gutkowski','miller.jaylin@example.net','(132)581-278','1975-07-04','Stocker','ACTIVE'),(18,'Vilma','Osinski','edyth06@example.org','+70(8)385394','2006-05-08','Assistant Manager','INACTIVE'),(19,'Vidal','Kassulke','astroman@example.org','020.510.6576','1979-10-30','Stocker','ACTIVE'),(20,'Ellie','Wisozk','jprice@example.net','+71(9)309959','1976-01-31','Salesperson','INACTIVE'),(21,'Alaina','Kautzer','liza.reynolds@example.net','(002)954-177','1978-02-05','Salesperson','ACTIVE'),(22,'Norval','Blick','schroeder.laurel@example.com','938-595-8609','1994-07-18','Stocker','ACTIVE'),(23,'Blanca','Conn','devin10@example.net','(009)852-429','1994-07-30','Assistant Manager','ACTIVE'),(24,'Cameron','Adams','marco.lindgren@example.com','05295788346','1975-05-28','Manager','INACTIVE'),(25,'Talon','Bartoletti','lila.grimes@example.org','1-293-608-74','2017-08-26','Stocker','INACTIVE'),(26,'Titus','Konopelski','mroob@example.com','(536)554-820','2011-05-22','Stocker','ACTIVE'),(27,'Vince','Robel','wiza.makenzie@example.net','800.694.1340','2008-08-07','Assistant Manager','ACTIVE'),(28,'Emmie','Senger','letitia.cummings@example.net','09422213480','2013-07-15','Salesperson','INACTIVE'),(29,'Connor','Langworth','mklein@example.org','+67(8)289288','2003-10-15','Salesperson','INACTIVE'),(30,'Christiana','Heller','hauck.destiny@example.com','725-191-8466','2014-02-08','Manager','ACTIVE'),(31,'Shayna','Ziemann','bartoletti.marty@example.org','066-000-9999','1982-09-13','Salesperson','INACTIVE'),(32,'Cathy','Ondricka','kenyatta67@example.org','638-583-8692','2010-04-29','Manager','ACTIVE'),(33,'Jane','Terry','vandervort.aurelio@example.net','(513)168-619','1977-04-24','Assistant Manager','ACTIVE'),(34,'Dortha','Schoen','dallas36@example.net','1-176-522-03','1997-08-29','Salesperson','INACTIVE'),(35,'Emmitt','Dare','elyssa.mcclure@example.net','227-321-6605','2004-10-23','Manager','INACTIVE'),(36,'Dawn','Cremin','goodwin.florine@example.org','349.577.3617','2014-06-12','Salesperson','INACTIVE'),(37,'Pearline','Ruecker','zieme.angelita@example.com','328.602.3134','2000-01-30','Manager','INACTIVE'),(38,'Roberta','Schimmel','ibartell@example.org','840.374.3631','1972-02-05','Salesperson','INACTIVE'),(39,'Mariana','Marquardt','elvis.mcclure@example.org','1-168-303-29','2001-09-10','Manager','ACTIVE'),(40,'Ena','Wilkinson','cara.kilback@example.org','1-036-820-36','1974-01-30','Salesperson','INACTIVE'),(41,'Ruby','Dooley','idare@example.org','08472574710','1972-06-29','Salesperson','INACTIVE'),(42,'Werner','Osinski','kayley.pfeffer@example.com','1-636-208-63','1971-04-06','Salesperson','ACTIVE'),(43,'Sterling','Hirthe','marcos.casper@example.net','482-269-1101','2009-05-07','Stocker','ACTIVE'),(44,'Zaria','Cremin','qpagac@example.com','094.543.7541','1992-06-23','Stocker','INACTIVE'),(45,'Micheal','Leuschke','xemard@example.org','227-758-9616','1992-06-06','Assistant Manager','INACTIVE'),(46,'Virginia','Kshlerin','izabella27@example.com','312.161.6845','2012-05-13','Stocker','ACTIVE'),(47,'Amara','Pfannerstill','kuphal.ryder@example.org','+09(8)018051','2020-10-06','Stocker','INACTIVE'),(48,'Rene','Walsh','eliane.buckridge@example.net','809-306-9621','1993-05-24','Stocker','INACTIVE'),(49,'Zula','Kunde','clittel@example.org','092-074-8941','1997-01-23','Assistant Manager','INACTIVE'),(50,'Wilber','Greenfelder','treva35@example.org','+68(8)542772','1987-07-09','Assistant Manager','ACTIVE'),(51,'Katlyn','Jacobson','macey.kiehn@example.com','(209)244-699','1976-02-12','Assistant Manager','ACTIVE'),(52,'Warren','Harris','zstamm@example.net','369-176-0615','2015-05-15','Stocker','ACTIVE'),(53,'Roslyn','Green','rosie.spinka@example.net','(226)563-301','1993-01-28','Assistant Manager','INACTIVE'),(54,'Khalil','Fisher','lloyd.hane@example.com','1-835-884-19','2011-05-02','Manager','INACTIVE'),(55,'Della','Erdman','josianne47@example.net','(597)906-682','2001-12-12','Manager','INACTIVE'),(56,'Willa','Abshire','pgislason@example.net','002-350-1576','1999-08-24','Assistant Manager','INACTIVE'),(57,'Akeem','Kunze','bernier.baron@example.org','935.782.3577','2003-04-12','Manager','INACTIVE'),(58,'Antone','Goyette','cjacobs@example.com','(545)358-384','2007-07-26','Assistant Manager','INACTIVE'),(59,'Benjamin','Emmerich','tcorwin@example.com','(435)478-520','1976-12-15','Salesperson','INACTIVE'),(60,'Travon','Graham','rebeca.schumm@example.org','+31(0)957147','2003-09-13','Salesperson','ACTIVE'),(61,'Hilma','Kuhn','davis.theresa@example.net','(644)869-426','2018-03-17','Stocker','ACTIVE'),(62,'Jorge','Beier','balistreri.leonel@example.com','537.537.5734','1983-10-27','Salesperson','INACTIVE'),(63,'Rogelio','Kiehn','shayna59@example.org','1-915-952-20','2013-07-25','Stocker','INACTIVE'),(64,'Elva','Konopelski','breana.kirlin@example.net','577.682.9764','1982-10-21','Manager','ACTIVE'),(65,'Merle','Bahringer','gage60@example.org','1-976-256-91','2005-04-10','Manager','ACTIVE'),(66,'Olga','Feil','larson.felicity@example.org','+53(0)285375','1986-04-13','Assistant Manager','ACTIVE'),(67,'Laverna','Leuschke','murazik.adeline@example.org','1-217-085-08','1999-01-17','Assistant Manager','ACTIVE'),(68,'Xander','Johnson','rosina64@example.net','499.687.3697','1984-03-24','Assistant Manager','INACTIVE'),(69,'Aletha','McGlynn','keyshawn01@example.net','817-143-8045','1987-07-12','Manager','ACTIVE'),(70,'Ara','Konopelski','alittel@example.com','932.722.7958','1974-04-24','Salesperson','ACTIVE'),(71,'Emmalee','Kuhic','roy.tillman@example.org','1-400-985-15','1971-12-17','Stocker','ACTIVE'),(72,'Alex','Powlowski','beulah.paucek@example.net','1-705-234-40','1973-08-06','Assistant Manager','ACTIVE'),(73,'Evelyn','Goldner','dnienow@example.com','04803828207','2010-11-10','Manager','INACTIVE'),(74,'Hector','O\'Connell','cbosco@example.com','(349)988-621','1982-04-24','Assistant Manager','INACTIVE'),(75,'Rubie','Maggio','bkunze@example.com','723.060.5127','1975-07-09','Stocker','ACTIVE'),(76,'Dolly','Mertz','jschulist@example.org','1-194-435-56','1994-10-28','Salesperson','INACTIVE'),(77,'Maud','Wehner','marilyne64@example.com','807-289-5701','1979-03-23','Stocker','INACTIVE'),(78,'Joannie','Rogahn','rosie.sporer@example.org','083-814-0034','2021-10-21','Manager','ACTIVE'),(79,'Austin','Hettinger','watsica.elouise@example.org','570.352.2161','2010-01-11','Salesperson','INACTIVE'),(80,'Maia','Prohaska','mlabadie@example.org','429.431.8437','1993-09-12','Assistant Manager','INACTIVE'),(81,'Constance','Bailey','lubowitz.maybelle@example.com','1-131-006-15','2011-10-12','Salesperson','INACTIVE'),(82,'Demarcus','Bergstrom','farrell.edmond@example.org','936.714.0786','1993-09-18','Manager','ACTIVE'),(83,'Taryn','Schmidt','larson.andres@example.com','518-413-3226','2015-11-23','Salesperson','INACTIVE'),(84,'Vivianne','Legros','kenyatta.thiel@example.net','+00(6)499153','1993-08-17','Salesperson','INACTIVE'),(85,'Brent','Kerluke','palma29@example.org','334-591-1630','1973-11-13','Assistant Manager','INACTIVE'),(86,'Salma','Upton','cole.gianni@example.org','+51(6)515116','2019-01-10','Stocker','INACTIVE'),(87,'Taylor','Lynch','wilber09@example.com','(011)170-330','1993-07-29','Stocker','INACTIVE'),(88,'Connor','Halvorson','boyer.caleb@example.com','04699036524','1998-10-06','Salesperson','INACTIVE'),(89,'Junius','Skiles','audreanne88@example.org','1-500-123-96','2003-06-18','Stocker','INACTIVE'),(90,'Samanta','Wyman','terrell47@example.org','1-409-290-19','1973-06-20','Manager','INACTIVE'),(91,'Manuela','Runolfsdottir','alva89@example.net','1-843-551-17','2020-05-30','Manager','INACTIVE'),(92,'Evan','Schulist','solon24@example.com','(089)329-827','1988-09-02','Assistant Manager','ACTIVE'),(93,'Marquise','Effertz','marmstrong@example.org','+12(9)974552','1996-06-28','Salesperson','INACTIVE'),(94,'Nellie','Gleason','gskiles@example.com','1-350-835-73','2016-10-15','Stocker','INACTIVE'),(95,'Collin','Zemlak','gottlieb.gerhard@example.org','(794)288-356','2014-03-04','Assistant Manager','INACTIVE'),(96,'Eliza','Little','moriah.morissette@example.net','704.239.4913','2008-01-06','Salesperson','INACTIVE'),(97,'Keanu','Ledner','kcronin@example.org','986.897.2915','1981-08-10','Salesperson','ACTIVE'),(98,'Randall','Collier','vaughn.konopelski@example.com','1-117-060-53','2016-11-16','Assistant Manager','ACTIVE'),(99,'Vladimir','Pfannerstill','zkozey@example.net','1-168-406-00','1994-04-03','Manager','INACTIVE'),(100,'Dawson','Hintz','leora83@example.com','1-518-170-56','2006-06-29','Manager','INACTIVE'),(101,'Alyson','Satterfield','larkin.aurore@example.org','697-816-6903','1993-06-11','Manager','ACTIVE'),(102,'Bernie','Lesch','lockman.cora@example.net','+21(7)062261','2014-05-13','Assistant Manager','INACTIVE'),(103,'Vincenza','Kunze','gonzalo69@example.org','1-728-222-06','2021-07-30','Assistant Manager','ACTIVE'),(104,'Layne','Friesen','vallie.kunze@example.com','(703)654-498','1987-08-20','Salesperson','INACTIVE'),(105,'Arturo','Ullrich','kritchie@example.org','276-576-3984','1987-09-03','Salesperson','INACTIVE'),(106,'Abdul','Larkin','coy77@example.org','+00(5)518776','2022-05-06','Salesperson','INACTIVE'),(107,'Addison','Flatley','oweimann@example.org','702-066-1079','2018-10-21','Salesperson','ACTIVE'),(108,'Keenan','Rippin','sauer.lavonne@example.org','1-581-358-24','1972-10-16','Assistant Manager','INACTIVE'),(109,'Will','McClure','van88@example.com','079.347.2456','2019-12-16','Assistant Manager','INACTIVE'),(110,'Serena','Koepp','bergnaum.jacques@example.com','101-692-2249','1998-02-11','Stocker','INACTIVE'),(111,'Cali','Boehm','denesik.susan@example.net','871-107-6779','1986-04-14','Salesperson','ACTIVE'),(112,'Mabelle','Yost','ledner.isai@example.net','(031)722-479','2004-07-29','Manager','INACTIVE'),(113,'Dessie','Steuber','velva.daniel@example.com','186.380.7147','1994-04-06','Stocker','ACTIVE'),(114,'Pearlie','Rosenbaum','milford52@example.com','1-430-240-70','2019-03-02','Assistant Manager','ACTIVE'),(115,'Angelo','Turcotte','jayme92@example.com','467-456-8671','1982-09-22','Salesperson','INACTIVE');
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EQUIPMENT`
--

DROP TABLE IF EXISTS `EQUIPMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EQUIPMENT` (
  `PROD_ID` int(11) NOT NULL,
  `EQP_COLOR` varchar(10) DEFAULT NULL,
  `EQP_ISDIGITAL` tinyint(1) NOT NULL,
  `EQP_GRAMS` int(11) NOT NULL,
  PRIMARY KEY (`PROD_ID`),
  CONSTRAINT `eqp_fk` FOREIGN KEY (`PROD_ID`) REFERENCES `PRODUCT` (`PROD_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EQUIPMENT`
--

LOCK TABLES `EQUIPMENT` WRITE;
/*!40000 ALTER TABLE `EQUIPMENT` DISABLE KEYS */;
INSERT INTO `EQUIPMENT` VALUES (154,'blue',0,19251),(155,'white',1,5861),(156,'aqua',0,20240),(157,'yellow',1,4674),(158,'yellow',0,9631),(159,'blue',0,9207),(160,'yellow',1,19758),(161,'black',1,17111),(162,'silver',1,24446),(163,'aqua',0,24674),(164,'navy',1,2209),(165,'silver',1,18070),(166,'yellow',0,21645),(167,'navy',1,14148),(168,'yellow',1,18950),(169,'maroon',1,11201);
/*!40000 ALTER TABLE `EQUIPMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FOOD`
--

DROP TABLE IF EXISTS `FOOD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FOOD` (
  `PROD_ID` int(11) NOT NULL,
  `FOOD_FLAVOR` varchar(15) DEFAULT NULL,
  `FOOD_EXPIRE` date NOT NULL,
  `FOOD_GRAMS` int(11) NOT NULL,
  PRIMARY KEY (`PROD_ID`),
  CONSTRAINT `food_fk` FOREIGN KEY (`PROD_ID`) REFERENCES `PRODUCT` (`PROD_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOOD`
--

LOCK TABLES `FOOD` WRITE;
/*!40000 ALTER TABLE `FOOD` DISABLE KEYS */;
INSERT INTO `FOOD` VALUES (131,'Apple','1980-01-23',1836),(132,'Chocolate','1991-03-24',1894),(133,'Apple','1989-12-30',865),(134,'Apple','2010-05-02',1447),(135,'Grape','2013-04-05',901),(136,'Grape','1980-06-27',1576),(137,'Lemon','2015-02-22',1517),(138,'Lemon','2012-03-25',1299),(139,'Cherry','1976-10-21',720),(140,'Strawberry','2010-06-03',241),(141,'Strawberry','1980-02-19',1405),(142,'Cherry','2008-09-03',1979),(143,'Grape','1982-05-03',1032),(144,'Lemon','1992-03-01',809),(145,'Cherry','2004-07-31',1651),(146,'Orange','2018-06-26',853),(147,'Grape','2019-04-11',1722),(148,'Blueberry','1975-02-15',1020),(149,'Strawberry','1986-01-22',1336),(150,'Strawberry','2011-08-31',482),(151,'Lemon','2018-01-30',166),(152,'Apple','1990-11-22',1191),(153,'Grape','2020-03-06',325);
/*!40000 ALTER TABLE `FOOD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVENTORY`
--

DROP TABLE IF EXISTS `INVENTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INVENTORY` (
  `PROD_ID` int(11) NOT NULL,
  `INVEN_QOH` int(11) DEFAULT NULL,
  `INVEN_UPDATE` date DEFAULT NULL,
  PRIMARY KEY (`PROD_ID`),
  CONSTRAINT `inven_fk` FOREIGN KEY (`PROD_ID`) REFERENCES `PRODUCT` (`PROD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVENTORY`
--

LOCK TABLES `INVENTORY` WRITE;
/*!40000 ALTER TABLE `INVENTORY` DISABLE KEYS */;
INSERT INTO `INVENTORY` VALUES (100,7,'1983-01-04'),(101,13,'2014-09-11'),(102,15,'1999-08-25'),(103,1,'2012-09-02'),(104,4,'2005-04-07'),(105,6,'1980-02-16'),(106,14,'1972-07-27'),(107,2,'1988-06-19'),(108,5,'2022-04-08'),(109,20,'2021-04-21'),(110,7,'1994-04-12'),(111,18,'2003-02-25'),(112,1,'1973-02-21'),(113,7,'1978-10-12'),(114,9,'1995-08-25'),(115,8,'2002-09-20'),(116,20,'1999-10-09'),(117,13,'1988-09-01'),(118,3,'1976-11-10'),(119,14,'1975-04-09'),(120,8,'2011-11-30'),(121,9,'1973-08-22'),(122,16,'1972-03-20'),(123,18,'1983-08-11'),(124,0,'2010-09-09'),(125,3,'2021-11-01'),(126,14,'1994-09-01'),(127,10,'1978-04-08'),(128,19,'1972-06-29'),(129,5,'1987-10-10'),(130,8,'1986-01-06'),(131,16,'1993-11-10'),(132,15,'2018-07-11'),(133,9,'1978-06-26'),(134,6,'1997-06-18'),(135,4,'2010-05-03'),(136,15,'2022-06-15'),(137,10,'1987-03-14'),(138,1,'1998-02-16'),(139,4,'2010-04-17'),(140,6,'2014-08-16'),(141,7,'2009-07-20'),(142,8,'1980-06-20'),(143,16,'1971-12-13'),(144,14,'2021-11-28'),(145,5,'2013-10-24'),(146,8,'1979-07-07'),(147,4,'2000-07-30'),(148,4,'2010-10-03'),(149,6,'1995-12-22'),(150,13,'1995-11-17'),(151,10,'2009-07-28'),(152,20,'2008-08-01'),(153,17,'1982-11-12'),(154,4,'1973-12-24'),(155,9,'2003-06-30'),(156,3,'2005-05-26'),(157,20,'2014-11-22'),(158,1,'1972-08-05'),(159,16,'2019-04-17'),(160,14,'1995-08-24'),(161,20,'1987-06-24'),(162,6,'1995-04-02'),(163,19,'2009-06-04'),(164,7,'1988-02-01'),(165,2,'1996-08-11'),(166,6,'1982-04-06'),(167,16,'2010-02-19'),(168,3,'1977-02-24'),(169,8,'2006-10-01');
/*!40000 ALTER TABLE `INVENTORY` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ljohnson0663`@`%`*/ /*!50003 TRIGGER inven_reorder
BEFORE UPDATE ON INVENTORY
FOR EACH ROW
BEGIN
DECLARE
CUR_ID INT;
SELECT NEW.PROD_ID INTO CUR_ID;

IF(OLD.INVEN_QOH <> NEW.INVEN_QOH) THEN

IF(NEW.INVEN_QOH <= (SELECT PROD_MIN FROM PRODUCT WHERE PROD_ID = CUR_ID) AND (SELECT PROD_STATUS FROM PRODUCT WHERE PROD_ID = CUR_ID) <> 'DISCONTINUED') THEN
UPDATE PRODUCT SET PROD_REORDER = 1 WHERE PROD_ID = CUR_ID;
ELSE
UPDATE PRODUCT SET PROD_REORDER = 0 WHERE PROD_ID = CUR_ID;
END IF;

END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `INVOICE`
--

DROP TABLE IF EXISTS `INVOICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INVOICE` (
  `INV_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `CUS_NUM` int(11) DEFAULT NULL,
  `EMP_NUM` int(11) DEFAULT NULL,
  `INV_DATE` date DEFAULT NULL,
  PRIMARY KEY (`INV_NUM`),
  KEY `inv_fk1` (`CUS_NUM`),
  KEY `inv_fk2` (`EMP_NUM`),
  CONSTRAINT `inv_fk1` FOREIGN KEY (`CUS_NUM`) REFERENCES `CUSTOMER` (`CUS_NUM`),
  CONSTRAINT `inv_fk2` FOREIGN KEY (`EMP_NUM`) REFERENCES `EMPLOYEE` (`EMP_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVOICE`
--

LOCK TABLES `INVOICE` WRITE;
/*!40000 ALTER TABLE `INVOICE` DISABLE KEYS */;
INSERT INTO `INVOICE` VALUES (1,78,109,'2010-06-03'),(2,56,93,'2022-07-08'),(3,61,25,'1990-07-05'),(4,63,2,'1983-02-24'),(5,99,98,'1984-10-02'),(6,38,9,'1982-06-01'),(7,20,104,'2011-09-10'),(8,81,31,'2003-02-20'),(9,81,27,'1986-06-02'),(10,2,35,'1980-03-22'),(11,68,42,'1972-02-04'),(12,25,24,'1972-08-12'),(13,23,69,'2018-06-30'),(14,74,79,'2009-09-26'),(15,89,42,'1989-11-26'),(16,101,67,'2004-10-30'),(17,32,57,'1992-04-16'),(18,41,102,'1982-03-22'),(19,75,113,'1996-09-02'),(20,94,75,'2013-07-31'),(21,88,29,'1975-03-20'),(22,76,2,'1993-01-17'),(23,16,56,'1984-04-04'),(24,30,106,'1978-02-10'),(25,76,35,'1971-11-18'),(26,24,41,'1986-07-03'),(27,69,53,'1986-04-27'),(28,59,100,'1982-09-03'),(29,5,31,'2014-04-24'),(30,58,103,'1997-11-30'),(31,66,59,'1981-05-17'),(32,50,107,'1970-07-05'),(33,105,99,'2010-05-27'),(34,85,81,'1989-06-09'),(35,88,81,'2021-03-28'),(36,37,77,'2019-11-25'),(37,100,8,'1982-11-19'),(38,72,12,'2012-06-25'),(39,59,112,'1995-12-02'),(40,2,31,'1981-12-18'),(41,28,27,'1979-06-30'),(42,66,106,'2006-02-07'),(43,73,22,'1981-05-21'),(44,83,85,'2014-09-22'),(45,47,39,'2008-12-12'),(46,66,8,'2011-09-21'),(47,89,11,'2014-02-16'),(48,105,97,'1976-04-17'),(49,100,93,'2021-04-26'),(50,57,91,'2001-06-30'),(51,54,102,'1971-09-13'),(52,48,53,'1976-07-19'),(53,100,16,'2004-04-21'),(54,59,59,'1990-08-24'),(55,11,66,'1986-01-06'),(56,82,42,'1973-02-12'),(57,85,46,'2007-10-24'),(58,30,57,'2009-05-22'),(59,62,9,'1976-10-25'),(60,24,4,'2011-04-18'),(61,43,98,'1995-03-27'),(62,11,29,'2017-07-17'),(63,100,11,'2019-05-17'),(64,9,104,'1981-07-19'),(65,95,71,'2008-11-19'),(66,72,48,'1987-04-06'),(67,53,16,'1984-06-13'),(68,92,52,'2002-12-21'),(69,29,50,'1971-09-15'),(70,101,43,'1971-08-09'),(71,1,84,'2006-05-05'),(72,77,94,'1974-05-03'),(73,14,3,'1970-11-09'),(74,33,82,'2012-11-05'),(75,10,62,'1992-01-27'),(76,78,57,'2006-06-24'),(77,41,97,'2006-08-13'),(78,78,39,'1979-05-23'),(79,98,95,'2009-08-16'),(80,24,96,'1976-09-01'),(81,46,105,'1979-04-16'),(82,26,108,'2016-11-24'),(83,5,14,'2018-02-24'),(84,41,36,'1980-03-20'),(85,58,40,'2004-08-07'),(86,72,64,'1984-08-24'),(87,8,48,'2002-11-23'),(88,39,23,'2006-05-17'),(89,46,78,'2004-02-17'),(90,96,60,'2017-11-15'),(91,22,75,'1972-04-15'),(92,2,68,'1984-10-23'),(93,51,87,'2021-05-16'),(94,97,48,'1992-09-29'),(95,61,17,'1993-01-30'),(96,26,1,'2001-05-16'),(97,6,57,'1981-02-19'),(98,99,11,'1974-10-31'),(99,65,38,'2021-10-20'),(100,43,20,'1987-12-29'),(101,71,10,'1989-07-30'),(102,76,85,'2014-05-17'),(103,52,11,'1983-04-10'),(104,99,107,'2000-11-09'),(105,81,97,'1983-01-26'),(106,47,112,'2016-12-06'),(107,52,53,'2011-01-02'),(108,59,112,'2007-04-20'),(109,23,56,'1999-12-21'),(110,41,90,'1988-07-17'),(111,67,73,'2017-11-02'),(112,83,79,'1994-11-24'),(113,14,84,'1998-09-19'),(114,82,86,'1995-01-08'),(115,6,22,'2000-06-27'),(116,96,84,'1995-11-06'),(117,29,73,'1983-12-22'),(118,49,88,'2003-10-22'),(119,76,46,'2012-03-06'),(120,72,56,'2009-06-23'),(121,25,15,'1993-05-13'),(122,48,84,'1989-03-19'),(123,62,3,'2002-01-05'),(124,74,92,'1985-12-04'),(125,53,10,'2015-10-10'),(126,61,16,'1992-08-29'),(127,76,43,'2021-08-26'),(128,86,98,'2002-10-06'),(129,11,69,'2007-02-03'),(130,63,18,'1978-11-29'),(131,83,58,'2013-09-29'),(132,93,6,'2016-03-14'),(133,14,39,'1988-07-09'),(134,86,99,'2018-06-21'),(135,77,58,'2020-12-16'),(136,36,111,'1971-04-16'),(137,66,92,'1991-10-01'),(138,73,25,'2019-08-09'),(139,86,45,'1997-10-12'),(140,1,37,'1979-01-25'),(141,51,68,'1990-04-25'),(142,47,23,'1993-05-07'),(143,100,30,'1976-07-24'),(144,6,6,'1994-02-19'),(145,90,74,'1980-08-06'),(146,21,74,'1993-04-25'),(147,16,9,'2002-09-10'),(148,72,32,'1982-03-25'),(149,44,58,'2003-10-06'),(150,14,16,'2016-05-08'),(151,105,55,'1977-02-15'),(152,11,72,'1979-05-08'),(153,29,92,'1992-04-08'),(154,88,10,'1979-03-11'),(155,20,97,'1971-03-28'),(156,42,76,'2013-06-29'),(157,45,97,'1993-02-11'),(158,91,43,'1970-03-17'),(159,11,105,'1987-03-26'),(160,44,110,'2003-04-02'),(161,58,71,'2006-07-20'),(162,62,80,'1980-06-28'),(163,73,32,'1972-02-10'),(164,103,12,'1973-02-07'),(165,82,12,'2017-07-27'),(166,25,88,'1980-03-22'),(167,61,40,'2013-11-10'),(168,41,97,'2014-07-31'),(169,14,25,'1985-03-26'),(170,97,37,'2003-08-22'),(171,6,37,'2006-01-02'),(172,103,54,'1987-04-05'),(173,16,96,'1987-09-05'),(174,88,29,'1972-08-30'),(175,78,29,'1986-06-28'),(176,22,34,'2015-07-15'),(177,91,92,'1995-04-12'),(178,104,64,'2019-07-17'),(179,8,110,'1990-06-16'),(180,68,97,'2018-10-12'),(181,7,102,'2001-09-01'),(182,64,73,'2011-05-09'),(183,24,114,'1976-10-01'),(184,51,41,'1972-12-26'),(185,21,46,'2006-12-30'),(186,71,29,'2009-12-21'),(187,75,75,'1995-09-14'),(188,75,100,'2012-12-09'),(189,51,64,'2006-07-30'),(190,12,26,'1972-02-02'),(191,85,37,'1989-08-26'),(192,54,77,'1979-09-18'),(193,12,57,'2011-09-02'),(194,23,21,'2002-10-18'),(195,48,100,'2015-04-19'),(196,2,59,'1991-10-07'),(197,79,72,'1978-10-05'),(198,16,112,'2021-09-16'),(199,64,72,'1991-09-20'),(200,35,93,'1976-10-28'),(204,70,29,'2019-08-09'),(207,60,41,'2018-03-04'),(210,31,58,'2011-11-14'),(213,61,97,'1994-06-04'),(216,13,23,'2014-02-23'),(219,50,29,'2022-08-07');
/*!40000 ALTER TABLE `INVOICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVOICE_LINE`
--

DROP TABLE IF EXISTS `INVOICE_LINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INVOICE_LINE` (
  `INV_NUM` int(11) NOT NULL,
  `LINE_NUM` int(11) NOT NULL,
  `PROD_ID` int(11) DEFAULT NULL,
  `LINE_UNITS` int(11) NOT NULL,
  `LINE_UNIT_PRC` decimal(5,2) NOT NULL,
  PRIMARY KEY (`INV_NUM`,`LINE_NUM`),
  KEY `line_fk2` (`PROD_ID`),
  CONSTRAINT `line_fk1` FOREIGN KEY (`INV_NUM`) REFERENCES `INVOICE` (`INV_NUM`),
  CONSTRAINT `line_fk2` FOREIGN KEY (`PROD_ID`) REFERENCES `PRODUCT` (`PROD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVOICE_LINE`
--

LOCK TABLES `INVOICE_LINE` WRITE;
/*!40000 ALTER TABLE `INVOICE_LINE` DISABLE KEYS */;
INSERT INTO `INVOICE_LINE` VALUES (1,1,145,2,410.69),(1,2,138,9,491.19),(2,1,135,6,14.46),(2,2,153,9,299.26),(3,1,120,5,572.54),(3,2,135,2,526.47),(4,1,153,7,452.51),(4,2,163,3,503.24),(5,1,114,4,550.18),(5,2,127,4,555.81),(6,1,154,2,822.64),(6,2,141,4,577.64),(7,1,148,12,167.91),(7,2,123,9,495.04),(8,1,136,12,863.98),(8,2,165,6,144.07),(9,1,140,11,731.30),(9,2,130,1,679.78),(10,1,155,13,410.90),(10,2,131,4,304.83),(11,1,168,6,848.34),(11,2,144,3,320.26),(12,1,164,9,975.41),(12,2,116,11,807.59),(13,1,121,5,476.45),(13,2,131,14,990.25),(14,1,115,15,639.84),(14,2,146,7,602.43),(15,1,118,2,443.91),(15,2,105,3,563.22),(16,1,155,12,139.71),(16,2,114,8,883.95),(17,1,118,8,505.45),(17,2,155,5,84.49),(18,1,107,7,376.61),(18,2,166,4,360.02),(19,1,104,8,576.44),(19,2,145,12,358.70),(20,1,111,13,713.69),(20,2,127,9,758.63),(21,1,100,4,839.58),(21,2,156,13,926.66),(22,1,161,3,516.60),(22,2,101,12,780.96),(23,1,116,12,129.76),(23,2,102,12,753.69),(24,1,127,14,327.91),(24,2,155,14,708.93),(25,1,127,14,19.89),(25,2,163,12,743.36),(26,1,120,8,969.77),(26,2,123,13,238.20),(27,1,162,8,350.71),(27,2,166,1,658.65),(28,1,128,13,589.03),(28,2,123,11,399.02),(29,1,162,13,692.33),(29,2,165,3,562.64),(30,1,153,15,206.04),(30,2,119,14,818.58),(31,1,148,7,666.39),(31,2,165,15,731.73),(32,1,141,4,190.11),(32,2,131,10,93.64),(33,1,155,11,715.78),(33,2,136,11,689.68),(34,1,131,7,438.99),(34,2,169,15,177.95),(35,1,114,5,21.86),(35,2,134,4,602.25),(36,1,151,9,24.31),(36,2,112,5,560.21),(37,1,141,13,961.10),(37,2,115,10,110.02),(38,1,162,10,512.05),(38,2,157,12,980.31),(39,1,148,13,418.80),(39,2,146,11,916.41),(40,1,156,11,408.89),(40,2,102,14,268.78),(41,1,124,5,467.81),(41,2,142,15,864.86),(42,1,121,8,777.52),(42,2,146,5,346.38),(43,1,102,8,825.01),(43,2,167,2,366.41),(44,1,156,7,635.05),(44,2,164,8,538.25),(45,1,136,5,133.48),(45,2,123,6,886.44),(46,1,121,10,373.92),(46,2,102,6,863.90),(47,1,108,7,447.85),(47,2,141,14,140.21),(48,1,141,5,545.64),(48,2,122,4,587.55),(49,1,129,10,239.88),(49,2,168,13,497.69),(50,1,153,9,728.84),(50,2,146,12,863.28),(51,1,152,10,917.89),(51,2,150,8,639.52),(52,1,168,13,300.90),(52,2,115,8,509.65),(53,1,137,15,604.85),(53,2,154,11,69.32),(54,1,154,12,180.99),(54,2,166,10,373.58),(55,1,125,13,134.79),(55,2,100,8,923.99),(56,1,164,15,3.91),(56,2,148,9,254.53),(57,1,117,14,818.28),(57,2,108,15,257.76),(58,1,121,11,414.52),(58,2,163,8,50.09),(59,1,117,5,402.04),(59,2,106,9,381.61),(60,1,104,14,836.59),(60,2,110,8,892.33),(61,1,112,14,168.97),(61,2,105,5,220.00),(62,1,166,9,463.09),(62,2,102,5,576.06),(63,1,145,11,505.71),(63,2,142,7,328.83),(64,1,142,7,924.82),(64,2,168,4,106.45),(65,1,166,7,962.90),(65,2,133,1,546.75),(66,1,156,10,567.51),(66,2,110,4,85.85),(67,1,123,14,447.98),(67,2,110,5,901.57),(68,1,149,12,653.62),(68,2,137,12,964.43),(69,1,149,15,918.35),(69,2,167,3,381.61),(70,1,100,4,894.23),(70,2,159,2,818.77),(71,1,139,1,93.99),(71,2,136,10,946.70),(72,1,140,2,406.25),(72,2,104,5,660.88),(73,1,136,2,750.86),(73,2,121,1,678.35),(74,1,137,1,618.64),(74,2,138,11,184.28),(75,1,134,8,123.16),(75,2,160,11,453.64),(76,1,159,3,251.53),(76,2,158,8,985.39),(77,1,139,12,904.04),(77,2,160,6,939.09),(78,1,132,7,844.42),(78,2,143,14,519.74),(79,1,111,5,873.62),(79,2,130,13,248.17),(80,1,119,15,47.11),(80,2,137,14,725.56),(81,1,126,7,215.93),(81,2,108,13,809.24),(82,1,113,3,73.33),(82,2,161,14,64.83),(83,1,136,2,490.24),(83,2,135,15,471.15),(84,1,145,8,650.03),(84,2,111,5,337.96),(85,1,158,3,899.42),(85,2,167,3,76.69),(86,1,135,13,499.72),(86,2,161,12,473.68),(87,1,139,5,863.64),(87,2,160,11,43.23),(88,1,106,5,389.14),(88,2,106,14,171.36),(89,1,129,14,684.77),(89,2,113,4,202.65),(90,1,167,9,682.40),(90,2,157,6,656.98),(91,1,117,6,676.42),(91,2,111,2,573.10),(92,1,118,5,608.85),(92,2,142,5,695.51),(93,1,169,8,601.30),(93,2,154,7,578.35),(94,1,157,1,995.96),(94,2,159,13,543.65),(95,1,160,12,981.48),(95,2,140,14,565.31),(96,1,150,6,658.15),(96,2,133,4,324.52),(97,1,167,14,892.40),(97,2,145,10,864.90),(98,1,114,11,86.46),(98,2,150,5,213.04),(99,1,113,11,290.90),(99,2,118,5,95.44),(100,1,164,2,925.42),(100,2,125,8,856.97),(101,1,114,9,205.64),(102,1,158,3,646.00),(103,1,129,12,848.92),(104,1,135,10,138.06),(105,1,125,1,151.02),(106,1,119,3,88.20),(107,1,123,15,345.35),(108,1,164,6,574.41),(109,1,152,3,958.20),(110,1,134,8,744.96),(111,1,131,3,522.72),(112,1,160,15,715.39),(113,1,126,9,843.08),(114,1,167,3,705.71),(115,1,135,3,512.88),(116,1,115,8,641.77),(117,1,159,8,960.56),(118,1,105,11,364.91),(119,1,121,4,233.66),(120,1,102,6,909.72),(121,1,163,4,686.06),(122,1,139,7,706.49),(123,1,121,9,899.98),(124,1,147,2,708.35),(125,1,128,13,614.50),(126,1,112,4,834.90),(127,1,127,3,509.81),(128,1,104,4,343.17),(129,1,126,2,206.81),(130,1,145,10,196.26),(131,1,129,2,35.13),(132,1,140,5,431.72),(133,1,133,6,36.40),(134,1,159,6,930.46),(135,1,106,3,937.35),(136,1,158,15,268.68),(137,1,109,9,405.25),(138,1,130,4,349.91),(139,1,153,7,69.25),(140,1,161,9,408.22),(141,1,165,8,684.92),(142,1,114,9,9.13),(143,1,151,7,590.22),(144,1,121,5,283.65),(145,1,112,6,42.38),(146,1,117,10,867.32),(147,1,136,13,471.73),(148,1,101,13,238.50),(149,1,123,3,996.29),(150,1,158,2,814.30),(151,1,104,13,870.33),(152,1,116,4,426.82),(153,1,127,3,308.30),(154,1,126,4,191.90),(155,1,163,14,603.42),(156,1,155,1,472.65),(157,1,138,8,612.86),(158,1,121,11,747.60),(159,1,160,8,941.03),(160,1,165,9,759.49),(161,1,167,13,792.79),(162,1,119,1,195.40),(163,1,136,4,53.44),(164,1,131,7,301.39),(165,1,109,5,831.83),(166,1,142,13,691.01),(167,1,120,10,981.39),(168,1,118,3,461.57),(169,1,102,1,839.17),(170,1,103,14,779.70),(171,1,109,13,760.07),(172,1,167,11,347.36),(173,1,117,14,389.25),(174,1,161,12,685.85),(175,1,119,7,240.19),(176,1,130,2,232.06),(177,1,108,2,371.39),(178,1,156,4,369.67),(179,1,131,15,203.49),(180,1,131,13,254.84),(181,1,145,11,101.38),(182,1,136,1,387.70),(183,1,148,8,558.12),(184,1,102,3,874.48),(185,1,162,2,517.43),(186,1,141,3,623.90),(187,1,158,15,202.99),(188,1,131,6,314.93),(189,1,163,11,418.78),(190,1,148,15,772.90),(191,1,126,13,267.43),(192,1,160,11,337.96),(193,1,168,2,757.70),(194,1,162,5,364.20),(195,1,121,5,648.07),(196,1,107,6,790.67),(197,1,134,6,94.52),(198,1,141,15,992.16),(199,1,126,10,639.92),(200,1,137,6,473.22),(204,1,111,3,91.24),(204,2,138,6,32.01),(207,1,160,2,507.90),(210,1,127,4,28.33),(213,1,145,3,24.89),(216,1,133,2,47.09),(216,2,121,3,12.00),(216,3,155,1,14.50),(219,1,104,2,118.71),(219,2,147,4,6.12);
/*!40000 ALTER TABLE `INVOICE_LINE` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ljohnson0663`@`%`*/ /*!50003 TRIGGER line_insert
BEFORE INSERT ON INVOICE_LINE
FOR EACH ROW
BEGIN
DECLARE
CUR_INV INT;
SELECT NEW.INV_NUM INTO CUR_INV;
-- CUR_INV <> (SELECT INV_NUM FROM INVOICE_LINE ORDER BY INV_NUM DESC LIMIT 1)

IF((NEW.INV_NUM = 1 AND NEW.LINE_NUM = 1) OR CUR_INV NOT IN (SELECT DISTINCT INV_NUM FROM INVOICE_LINE) ) THEN
SET NEW.LINE_NUM = 1;
ELSE
SET NEW.LINE_NUM = (SELECT LINE_NUM FROM INVOICE_LINE WHERE INV_NUM = CUR_INV ORDER BY LINE_NUM DESC LIMIT 1) + 1;
END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `PRD_TYPE`
--

DROP TABLE IF EXISTS `PRD_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRD_TYPE` (
  `PRD_TYPE_CD` char(3) NOT NULL,
  `PRD_TYPE_DSCR` varchar(9) NOT NULL,
  PRIMARY KEY (`PRD_TYPE_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRD_TYPE`
--

LOCK TABLES `PRD_TYPE` WRITE;
/*!40000 ALTER TABLE `PRD_TYPE` DISABLE KEYS */;
INSERT INTO `PRD_TYPE` VALUES ('CLO','Clothing'),('EQP','Equipment'),('FOD','Food');
/*!40000 ALTER TABLE `PRD_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT` (
  `PROD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE_CD` char(3) DEFAULT NULL,
  `PROD_DESCRIPT` varchar(25) DEFAULT NULL,
  `PROD_CUR_PRC` decimal(5,2) NOT NULL,
  `PROD_BRAND` varchar(15) DEFAULT NULL,
  `PROD_STATUS` varchar(12) DEFAULT NULL,
  `PROD_MIN` int(11) DEFAULT NULL,
  `PROD_REORDER` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`PROD_ID`),
  KEY `prod_fk` (`TYPE_CD`),
  CONSTRAINT `prod_fk` FOREIGN KEY (`TYPE_CD`) REFERENCES `PRD_TYPE` (`PRD_TYPE_CD`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
INSERT INTO `PRODUCT` VALUES (100,'CLO','Running Shoes',153.00,'Leffler, O\'Conn','IN',9,1),(101,'CLO','Running Shoes',145.92,'Goldner Inc','DISCONTINUED',3,0),(102,'CLO','Running Shoes',157.56,'Boyer PLC','IN',5,0),(103,'CLO','Running Shoes',127.11,'Wilkinson-Reyno','DISCONTINUED',8,0),(104,'CLO','Running Shoes',118.71,'Feeney and Sons','DISCONTINUED',3,0),(105,'CLO','Running Shoes',140.30,'Leffler, Hermis','IN',5,0),(106,'CLO','Running Shoes',114.62,'Thompson, Hudso','IN',6,0),(107,'CLO','Running Shoes',55.57,'Konopelski-Kshl','DISCONTINUED',3,0),(108,'CLO','Running Shoes',97.60,'Nader, O\'Connel','DISCONTINUED',4,0),(109,'CLO','Running Shoes',92.92,'Waters Group','IN',8,0),(110,'CLO','Running Shoes',199.34,'Corwin, Buckrid','DISCONTINUED',5,0),(111,'CLO','Running Shoes',91.24,'Will Group','DISCONTINUED',7,0),(112,'CLO','Running Shoes',82.89,'Durgan and Sons','DISCONTINUED',8,0),(113,'CLO','Running Shoes',103.14,'Weber, Pouros a','IN',10,1),(114,'CLO','Running Shoes',139.34,'Hettinger Ltd','IN',10,1),(115,'CLO','Headband',122.18,'Sporer-Williams','IN',3,0),(116,'CLO','Hat',97.39,'Waelchi LLC','DISCONTINUED',9,0),(117,'CLO','Hoodie',57.14,'Morissette-Feen','IN',4,0),(118,'CLO','Hat',116.92,'Runolfsson-Abbo','IN',4,1),(119,'CLO','Running Shirt',140.12,'Farrell Ltd','IN',5,0),(120,'CLO','Running Shirt',78.15,'Jacobson Inc','DISCONTINUED',9,0),(121,'CLO','Running Pants',89.92,'Kub, Hane and P','IN',3,0),(122,'CLO','Running Socks',116.69,'Schroeder, Kess','IN',7,0),(123,'CLO','Bracelet',74.18,'McKenzie-Stehr','IN',6,0),(124,'CLO','Jacket',105.68,'Berge LLC','DISCONTINUED',8,0),(125,'CLO','Running Shirt',86.86,'Mueller, McKenz','IN',5,1),(126,'CLO','Hat',134.82,'Buckridge-Hoege','IN',6,0),(127,'CLO','Running Shorts',28.33,'Aufderhar-Kling','DISCONTINUED',5,0),(128,'CLO','Hat',116.28,'Wintheiser LLC','IN',4,0),(129,'CLO','Jacket',24.88,'Ernser, McKenzi','DISCONTINUED',7,0),(130,'FOD',' Granola Bar',43.41,'Stroman-Cronin','DISCONTINUED',5,0),(131,'FOD',' Running Wafers',11.65,'Bins-Graham','DISCONTINUED',15,0),(132,'FOD',' Running Wafers',15.88,'Becker and Sons','IN',4,0),(133,'FOD',' Granola Bar',47.09,'Bergnaum Inc','DISCONTINUED',15,0),(134,'FOD',' Running Wafers',5.58,'Towne-Cremin','IN',14,1),(135,'FOD',' Protein Bar',49.48,'Ernser-Johnson','DISCONTINUED',7,0),(136,'FOD',' Protein Bar',7.02,'Turcotte Group','DISCONTINUED',5,0),(137,'FOD',' Granola Bar',48.60,'Dach-Hackett','DISCONTINUED',10,0),(138,'FOD','Caffeinated Jelly Beans',32.01,'Stroman, Gutkow','DISCONTINUED',2,0),(139,'FOD','Caffeinated Jelly Beans',44.69,'O\'Connell, Wiso','DISCONTINUED',7,0),(140,'FOD',' Running Wafers',7.72,'Wilderman, Tran','DISCONTINUED',14,0),(141,'FOD',' Running Wafers',22.34,'Dooley, Murazik','IN',13,1),(142,'FOD','Caffeinated Jelly Beans',18.66,'Keebler-Jakubow','DISCONTINUED',4,0),(143,'FOD',' Running Wafers',34.93,'Lind Ltd','IN',10,0),(144,'FOD',' Protein Bar',21.35,'Watsica-West','IN',4,0),(145,'FOD',' Running Wafers',24.89,'Hartmann-Abshir','IN',9,1),(146,'FOD','Caffeinated Jelly Beans',36.74,'Strosin, Bauch ','DISCONTINUED',11,0),(147,'FOD',' Running Wafers',6.12,'Renner Inc','IN',4,1),(148,'FOD','Caffeinated Jelly Beans',11.19,'Leannon, Bednar','DISCONTINUED',5,0),(149,'FOD',' SaltStick',6.87,'Fisher-Conn','IN',13,1),(150,'FOD',' Running Gummies',36.94,'O\'Conner LLC','DISCONTINUED',14,0),(151,'FOD',' Running Wafers',32.49,'Crona LLC','DISCONTINUED',11,0),(152,'FOD',' Running Gummies',4.50,'Kunde-Hayes','IN',15,0),(153,'FOD',' SaltStick',20.69,'Hyatt LLC','DISCONTINUED',2,0),(154,'EQP',' Headlamp',402.68,'Harris and Sons','DISCONTINUED',2,0),(155,'EQP','Treadmill',794.31,'Kemmer Ltd','DISCONTINUED',3,0),(156,'EQP',' Headlamp',676.14,'Russel Group','IN',1,0),(157,'EQP','Treadmill',138.56,'Corwin, Kihn an','IN',2,0),(158,'EQP',' Foam Roller',773.41,'O\'Kon, Becker a','IN',3,1),(159,'EQP',' Foam Roller',264.44,'Stamm Ltd','DISCONTINUED',3,0),(160,'EQP',' Running Headphones',507.90,'Lockman, Mraz a','DISCONTINUED',2,0),(161,'EQP',' Running Watch',212.18,'Fay-Lemke','DISCONTINUED',1,0),(162,'EQP','Treadmill',722.30,'Beier PLC','IN',3,0),(163,'EQP',' Headlamp',934.68,'Cronin-Hoppe','DISCONTINUED',3,0),(164,'EQP',' Heart Monitor',398.42,'Kuvalis and Son','IN',3,0),(165,'EQP','Treadmill',246.84,'Bergstrom, Kuhl','DISCONTINUED',2,0),(166,'EQP',' Headlamp',848.00,'Thompson, Gorcz','DISCONTINUED',1,0),(167,'EQP',' Running Watch',606.15,'Champlin, Ortiz','DISCONTINUED',1,0),(168,'EQP',' Heart Monitor',849.90,'Carter, Wuckert','DISCONTINUED',2,0),(169,'EQP',' Heart Monitor',545.43,'Daniel-Barrows','IN',3,0);
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ljohnson0663`@`%`*/ /*!50003 TRIGGER prod_reorder
BEFORE UPDATE ON PRODUCT
FOR EACH ROW
BEGIN
DECLARE
CUR_ID INT;
SELECT NEW.PROD_ID INTO CUR_ID;
IF(OLD.PROD_MIN <> NEW.PROD_MIN) THEN

IF((SELECT INVEN_QOH FROM INVENTORY WHERE PROD_ID=CUR_ID) <= NEW.PROD_MIN AND NEW.PROD_STATUS <> 'DISCONTINUED') THEN
SET NEW.PROD_REORDER = 1;
ELSE
SET NEW.PROD_REORDER = 0;
END IF;

END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `SALARY_HISTORY`
--

DROP TABLE IF EXISTS `SALARY_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SALARY_HISTORY` (
  `EMP_NUM` int(11) NOT NULL,
  `SAL_NUM` int(11) NOT NULL,
  `SAL_AMOUNT` decimal(7,2) DEFAULT NULL,
  `SAL_FROM` date DEFAULT NULL,
  `SAL_END` date DEFAULT NULL,
  PRIMARY KEY (`EMP_NUM`,`SAL_NUM`),
  CONSTRAINT `sal_fk` FOREIGN KEY (`EMP_NUM`) REFERENCES `EMPLOYEE` (`EMP_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SALARY_HISTORY`
--

LOCK TABLES `SALARY_HISTORY` WRITE;
/*!40000 ALTER TABLE `SALARY_HISTORY` DISABLE KEYS */;
INSERT INTO `SALARY_HISTORY` VALUES (3,1,71566.58,'1995-03-01','1996-07-17'),(4,1,66759.77,'1994-08-25','2013-10-20'),(5,1,75987.84,'1998-03-30','2018-02-20'),(6,1,61327.79,'1975-12-11','2001-07-26'),(6,2,20681.06,'1979-08-02','2010-02-27'),(6,3,41562.00,'2019-01-01','2021-09-19'),(9,1,17828.90,'1975-10-07','1988-12-12'),(10,1,18205.63,'1996-04-09','2012-05-03'),(11,1,29970.39,'1998-04-04','2008-01-03'),(11,2,56087.07,'2002-01-16','2004-09-01'),(13,1,52451.26,'1977-10-05','2009-12-21'),(13,2,72598.84,'1982-11-16','1987-07-27'),(14,1,46596.49,'1995-08-09','2013-03-29'),(17,1,64975.86,'1981-10-21','1994-11-08'),(17,2,23792.79,'2006-10-24','2010-03-24'),(18,1,74283.13,'1996-08-03','2018-08-21'),(19,1,68478.05,'1981-01-10','1999-12-03'),(22,1,67610.87,'1979-09-11','2004-11-27'),(24,1,34756.61,'1971-03-24','2011-01-29'),(25,1,19933.89,'1970-07-02','1977-01-16'),(27,1,26897.42,'2008-09-09','2017-01-25'),(28,1,38856.12,'1977-02-28','2019-04-03'),(29,1,52770.70,'1972-06-30','1998-04-14'),(31,1,62580.14,'1990-12-08','2002-01-22'),(31,2,58338.40,'1985-02-11','2002-02-02'),(33,1,29717.06,'1991-01-10','1994-05-13'),(34,1,52895.18,'1992-11-11','2009-08-20'),(37,1,61481.42,'1975-09-19','2005-06-15'),(37,2,63065.47,'1995-10-10','2010-09-25'),(39,1,57892.80,'1971-03-29','1983-09-10'),(39,2,47388.88,'2001-03-18','2006-02-01'),(40,1,61790.38,'1971-06-16','2005-12-26'),(41,1,45472.00,'1999-07-26','2010-07-17'),(42,1,38344.26,'1991-03-20','2001-07-03'),(43,1,65951.31,'1975-01-04','1987-11-05'),(46,1,48416.91,'1993-08-09','1996-10-27'),(47,1,66455.42,'1978-10-21','1986-07-13'),(49,1,54403.30,'1975-09-30','2012-11-17'),(50,1,39551.59,'1970-08-26','1995-11-23'),(51,1,54279.18,'2001-12-10','2006-01-20'),(52,1,55950.23,'1987-12-10','2008-03-11'),(53,1,69609.63,'2001-12-08','2021-01-20'),(55,1,51903.09,'2000-03-28','2021-12-16'),(58,1,75726.52,'1975-09-18','1979-08-15'),(61,1,35971.73,'1974-10-24','2008-04-07'),(62,1,39604.48,'1984-09-07','1994-12-18'),(63,1,38702.35,'1970-09-13','2017-12-05'),(64,1,53942.87,'1977-10-10','2013-10-16'),(65,1,30987.07,'1970-02-09','2017-06-08'),(67,1,64427.61,'1979-11-20','2020-07-16'),(69,1,60858.81,'1979-07-20','2009-04-24'),(73,1,54408.48,'1976-09-21','2017-12-19'),(74,1,21310.39,'1977-03-15','2011-01-20'),(75,1,55546.45,'1995-12-11','2008-06-09'),(77,1,78562.42,'1982-09-07','1984-08-05'),(79,1,75256.30,'1970-12-30','2000-09-14'),(80,1,76633.26,'1995-07-23','2012-09-13'),(81,1,18496.35,'2005-02-18','2019-05-24'),(82,1,74573.25,'1978-09-28','1982-01-22'),(84,1,69876.65,'1988-09-14','2007-06-24'),(85,1,45954.32,'1981-02-07','1991-02-12'),(86,1,34970.48,'1970-12-20','2007-11-15'),(90,1,29582.53,'1997-12-30','2005-06-10'),(92,1,48111.62,'1976-06-21','2005-11-25'),(93,1,23840.02,'1971-02-20','2012-06-10'),(94,1,27483.62,'1978-01-27','2013-10-18'),(95,1,32729.32,'1998-01-12','2018-06-16'),(96,1,17137.29,'1973-10-21','2021-04-06'),(97,1,24937.26,'1988-04-27','2001-06-28'),(100,1,47677.86,'1991-06-05','1997-05-30'),(101,1,52248.91,'1993-06-26','2016-10-22'),(103,1,35414.24,'1973-10-21','1994-10-31'),(104,1,69416.77,'2006-06-27','2009-10-24'),(108,1,24375.95,'2017-05-05','2021-05-19'),(110,1,67660.89,'1993-05-27','2010-07-08'),(112,1,71205.22,'1974-05-02','2016-11-10'),(115,1,67866.37,'2011-04-12','2011-08-18');
/*!40000 ALTER TABLE `SALARY_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ljohnson0663`@`%`*/ /*!50003 TRIGGER sal_insert
BEFORE INSERT ON SALARY_HISTORY
FOR EACH ROW
BEGIN
DECLARE
CUR_EMP INT;
SELECT NEW.EMP_NUM INTO CUR_EMP;

IF((NEW.EMP_NUM <= 5 AND NEW.SAL_NUM = 1) OR CUR_EMP NOT IN (SELECT DISTINCT EMP_NUM FROM SALARY_HISTORY) ) THEN
SET NEW.SAL_NUM = 1;
ELSE
SET NEW.SAL_NUM = (SELECT SAL_NUM FROM SALARY_HISTORY WHERE EMP_NUM = CUR_EMP ORDER BY SAL_NUM DESC LIMIT 1) + 1;
END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `SUPPLIES`
--

DROP TABLE IF EXISTS `SUPPLIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SUPPLIES` (
  `SUP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `VEND_ID` int(11) DEFAULT NULL,
  `PROD_ID` int(11) DEFAULT NULL,
  `SUP_START` date NOT NULL,
  `SUP_END` date DEFAULT NULL,
  `SUP_STATUS` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`SUP_ID`),
  KEY `sup_fk1` (`VEND_ID`),
  KEY `sup_fK2` (`PROD_ID`),
  CONSTRAINT `sup_fK2` FOREIGN KEY (`PROD_ID`) REFERENCES `PRODUCT` (`PROD_ID`),
  CONSTRAINT `sup_fk1` FOREIGN KEY (`VEND_ID`) REFERENCES `VENDOR` (`VEND_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SUPPLIES`
--

LOCK TABLES `SUPPLIES` WRITE;
/*!40000 ALTER TABLE `SUPPLIES` DISABLE KEYS */;
INSERT INTO `SUPPLIES` VALUES (100,7,157,'2008-09-01','2011-11-06',0),(101,9,157,'1986-06-18','1996-04-29',0),(102,1,100,'2009-01-06','2018-07-22',0),(103,7,121,'1970-08-07','1989-06-23',0),(104,9,100,'1982-06-11','2004-11-25',0),(105,9,163,'2008-10-05','2015-02-18',0),(106,15,104,'1973-12-25','1985-11-17',0),(107,1,149,'1981-05-31','1995-05-26',0),(108,14,138,'2000-10-28','2013-09-15',0),(109,8,166,'1988-04-25','2007-05-11',0),(110,9,120,'1999-08-05','2017-08-28',0),(111,9,125,'1986-01-04','1990-09-03',0),(112,14,105,'1985-01-23','2008-02-01',0),(113,2,152,'1999-05-18','2022-05-03',0),(114,10,133,'1992-10-19','2002-01-01',0),(115,3,144,'1997-12-25','2011-04-22',0),(116,1,129,'2000-12-23','2021-08-23',0),(117,5,109,'1998-01-11','2016-03-18',0),(118,12,112,'2016-11-23','2019-06-15',0),(119,11,119,'1991-07-12','2016-02-21',0),(120,2,117,'1999-11-05','2010-08-08',0),(121,4,112,'1991-10-08','2018-12-08',0),(122,4,125,'1983-08-24','1989-08-14',0),(123,9,123,'2005-06-09','2020-04-09',0),(124,15,154,'2000-10-08','2008-12-17',0),(125,7,126,'2007-05-10','2013-06-10',0),(126,13,129,'1989-04-04','2001-06-29',0),(127,2,115,'1981-05-03','1993-03-21',0),(128,8,126,'1978-11-20','2014-09-17',0),(129,6,135,'1986-07-30','1996-09-05',0),(130,13,135,'2013-08-01','2021-11-18',0),(131,6,156,'1980-04-13','2018-04-08',0),(132,5,113,'2011-11-19','2012-09-13',0),(133,2,127,'2006-04-04','2017-02-06',0),(134,13,141,'2001-08-03','2004-02-17',0),(135,7,109,'1976-05-27','2006-08-04',0),(136,3,136,'1976-10-29','1979-04-26',0),(137,3,138,'1977-09-28','2001-07-26',0),(138,12,133,'2000-02-14','2003-06-01',0),(139,14,122,'1972-07-05','2014-11-15',0),(140,8,114,'2006-05-27','2022-04-26',0),(141,1,144,'2003-07-29','2018-03-10',0),(142,11,114,'1997-07-19','2014-12-09',0),(143,2,105,'1991-08-09','1996-05-17',0),(144,9,107,'1982-04-14','2022-02-02',0),(145,14,143,'1982-02-28','2007-07-04',0),(146,11,140,'2011-01-28','2014-11-22',0),(147,2,138,'1979-06-17','2022-02-27',0),(148,6,114,'1981-07-27','2007-11-29',0),(149,10,101,'1985-07-09','1987-03-16',0),(150,5,108,'1982-09-13','2009-08-21',0),(151,14,159,'1985-03-24','2006-09-07',0),(152,4,158,'1975-02-17','1992-10-20',0),(153,8,167,'1976-08-29','1977-06-17',0),(154,11,136,'1991-04-24','2008-04-03',0),(155,13,162,'1992-04-07','2013-10-15',0),(156,12,105,'1970-12-27','1998-10-07',0),(157,12,127,'1984-03-22','2000-08-06',0),(158,4,126,'1993-01-08','1994-10-20',0),(159,15,112,'1984-05-04','2002-12-18',0),(160,4,112,'1972-06-09','1996-04-21',0),(161,1,149,'1978-07-01','1999-04-07',0),(162,15,159,'2001-03-10','2011-05-10',0),(163,15,149,'1971-05-08','2003-08-20',0),(164,11,159,'1985-05-13','1998-12-10',0),(165,7,132,'1980-05-19','1986-11-11',0),(166,5,135,'1975-04-24','1987-06-19',0),(167,7,149,'2011-09-16','2021-11-03',0),(168,3,156,'1986-06-24','2004-12-08',0),(169,9,109,'2010-01-30','2013-09-09',0),(170,8,122,'1992-07-28','2009-09-20',0),(171,11,127,'1973-11-13','1977-12-22',0),(172,8,166,'1975-03-27','1986-07-19',0),(173,8,114,'2016-03-05','2022-03-19',0),(174,3,164,'1986-05-20','2013-12-12',0),(175,5,150,'2000-02-22','2000-03-03',0),(176,2,104,'1978-07-04','2010-10-15',0),(177,15,101,'1989-05-15','1999-09-30',0),(178,15,160,'1998-07-21','2013-12-14',0),(179,10,121,'2004-02-14','2008-01-03',0),(180,4,147,'1978-09-07','2006-10-03',0),(181,3,156,'1970-08-21','1997-03-30',0),(182,2,110,'1976-10-23','1985-01-23',0),(183,13,110,'1970-07-13','2000-07-20',0),(184,3,101,'1981-05-06','1996-09-12',0),(185,14,144,'1988-05-09','2008-05-29',0),(186,10,168,'1978-05-17','1982-12-27',0),(187,2,134,'1975-08-07','2016-03-19',0),(188,8,140,'1984-05-18','1987-06-24',0),(189,12,129,'2005-05-15','2012-06-26',0),(190,5,101,'1986-06-18','2014-05-14',0),(191,7,141,'1972-02-13','2009-02-28',0),(192,8,155,'1994-09-23','2021-05-17',0),(193,15,111,'2011-08-01','2014-12-03',0),(194,8,110,'1997-01-21','1997-09-22',0),(195,15,112,'1974-10-06','2000-06-14',0),(196,10,134,'1981-08-19','2006-01-24',0),(197,2,151,'1983-07-21','2001-12-20',0),(198,11,118,'1981-03-09','2013-06-20',0),(199,6,140,'1976-08-20','2019-11-02',0),(200,9,169,'2012-02-08','2015-06-19',0),(201,15,138,'1990-08-18','2021-04-01',0),(202,3,167,'2015-05-17','2018-07-29',0),(203,5,153,'1985-09-17','2016-04-06',0),(204,3,110,'2005-01-10','2018-11-09',0),(205,14,144,'2007-02-27','2017-06-22',0),(206,5,165,'1989-11-09','2019-03-05',0),(207,12,117,'1981-04-10','2013-08-16',0),(208,1,158,'1993-07-27','2022-04-29',0),(209,15,152,'1985-10-10','2003-08-21',0),(210,5,132,'1978-08-18','2000-07-30',0),(211,4,160,'2004-05-18','2011-06-10',0),(212,8,104,'1990-03-19','2015-06-27',0),(213,5,139,'1998-03-07','2002-12-04',0),(214,12,105,'1993-11-04','2014-09-06',0),(215,14,155,'1972-05-10','2020-01-31',0),(216,2,132,'1970-09-02','1979-04-12',0),(217,3,118,'1973-05-02','2007-10-17',0),(218,12,166,'2004-07-05','2006-06-25',0),(219,11,123,'2002-01-14','2007-01-16',0),(220,15,151,'1976-09-15','2002-09-13',0),(225,6,121,'1990-03-14','2009-09-09',0),(228,13,149,'2001-03-01','2019-12-03',0),(231,9,130,'2002-04-16','2009-09-13',0),(234,1,151,'1987-05-25','1996-10-06',0),(237,8,143,'2007-04-29','2015-11-12',0);
/*!40000 ALTER TABLE `SUPPLIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VENDOR`
--

DROP TABLE IF EXISTS `VENDOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VENDOR` (
  `VEND_ID` int(11) NOT NULL AUTO_INCREMENT,
  `VEND_NAME` varchar(15) DEFAULT NULL,
  `VEND_PHONE` char(12) DEFAULT NULL,
  `VEND_STREET` varchar(20) DEFAULT NULL,
  `VEND_CITY` varchar(15) DEFAULT NULL,
  `VEND_STATE` char(2) DEFAULT NULL,
  `VEND_ZIP` char(5) DEFAULT NULL,
  PRIMARY KEY (`VEND_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VENDOR`
--

LOCK TABLES `VENDOR` WRITE;
/*!40000 ALTER TABLE `VENDOR` DISABLE KEYS */;
INSERT INTO `VENDOR` VALUES (1,'Kehe','1-535-970-32','Aida Cape','East Lester','NC','12065'),(2,'Bob and Sons','1-010-315-16','Spencer Circles','Deckowside','PA','33846'),(3,'Meheadable','839-734-0282','Connelly Mountain','West Pedro','ME','69416'),(4,'Varbene','619-686-2068','Rogahn Inlet','South Tayaton','FL','47920'),(5,'Calaster','198.073.9002','Kemmer Viaduct','Port Trey','NC','72305'),(6,'Vintrue','(753)773-968','Harley Fall','Samanthaton','ID','51502'),(7,'Rocko\'s Wear','(561)775-597','Magdalen Plains','East Bethelview','IN','19241'),(8,'Evertune','1-440-770-18','Mosciski Mission','Lake Camrynton','ME','90291'),(9,'Hojobojo','576-315-5002','Gleason Valleys','Fredfurt','MT','83051'),(10,'Samus\'s Food','010.766.9526','Jerrold Isle','Port Reneview','OR','24547'),(11,'Hector\'s Vector','(164)867-742','Wellington Spurs','Kallieview','WV','45139'),(12,'Wobble Wares','1-697-564-28','Eladio Shore','New Benton','TX','74071'),(13,'Raren','1-107-354-84','Fisher Stravenue','West Hank','OK','17184'),(14,'Ferton','840.646.4211','Kuhn Corner','Lake Curtside','MN','50622'),(15,'Tecon','118.713.2902','Carroll Lodge','Port Maryside','AK','66523');
/*!40000 ALTER TABLE `VENDOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `inv_view`
--

DROP TABLE IF EXISTS `inv_view`;
/*!50001 DROP VIEW IF EXISTS `inv_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `inv_view` (
  `INV_NUM` tinyint NOT NULL,
  `CUS_NUM` tinyint NOT NULL,
  `EMP_NUM` tinyint NOT NULL,
  `INV_DATE` tinyint NOT NULL,
  `INV_TOTAL` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `line_view`
--

DROP TABLE IF EXISTS `line_view`;
/*!50001 DROP VIEW IF EXISTS `line_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `line_view` (
  `INV_NUM` tinyint NOT NULL,
  `LINE_NUM` tinyint NOT NULL,
  `PROD_ID` tinyint NOT NULL,
  `LINE_UNITS` tinyint NOT NULL,
  `LINE_UNIT_PRC` tinyint NOT NULL,
  `LINE_TOTAL` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `inv_view`
--

/*!50001 DROP TABLE IF EXISTS `inv_view`*/;
/*!50001 DROP VIEW IF EXISTS `inv_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ljohnson0663`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `inv_view` AS select `INVOICE`.`INV_NUM` AS `INV_NUM`,`INVOICE`.`CUS_NUM` AS `CUS_NUM`,`INVOICE`.`EMP_NUM` AS `EMP_NUM`,`INVOICE`.`INV_DATE` AS `INV_DATE`,sum((`INVOICE_LINE`.`LINE_UNITS` * `INVOICE_LINE`.`LINE_UNIT_PRC`)) AS `INV_TOTAL` from (`INVOICE` join `INVOICE_LINE` on((`INVOICE`.`INV_NUM` = `INVOICE_LINE`.`INV_NUM`))) group by `INVOICE`.`INV_NUM` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `line_view`
--

/*!50001 DROP TABLE IF EXISTS `line_view`*/;
/*!50001 DROP VIEW IF EXISTS `line_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ljohnson0663`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `line_view` AS select `INVOICE_LINE`.`INV_NUM` AS `INV_NUM`,`INVOICE_LINE`.`LINE_NUM` AS `LINE_NUM`,`INVOICE_LINE`.`PROD_ID` AS `PROD_ID`,`INVOICE_LINE`.`LINE_UNITS` AS `LINE_UNITS`,`INVOICE_LINE`.`LINE_UNIT_PRC` AS `LINE_UNIT_PRC`,(`INVOICE_LINE`.`LINE_UNITS` * `INVOICE_LINE`.`LINE_UNIT_PRC`) AS `LINE_TOTAL` from `INVOICE_LINE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-07 19:24:31
