-- MariaDB dump 10.19  Distrib 10.9.2-MariaDB, for Linux (x86_64)
--
-- Host: ember-db    Database: reugene2284_DB_FitFootwearCo
-- ------------------------------------------------------
-- Server version	10.1.32-MariaDB

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
-- Table structure for table `BASKETBALL_SHOES`
--

DROP TABLE IF EXISTS `BASKETBALL_SHOES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BASKETBALL_SHOES` (
  `ProductID` char(4) NOT NULL,
  `Bas_Material` varchar(100) NOT NULL,
  `Bas_AnkleSupportLevel` varchar(20) NOT NULL,
  `Bas_Weight` char(10) NOT NULL,
  `Bas_Durability` varchar(15) NOT NULL,
  PRIMARY KEY (`ProductID`),
  CONSTRAINT `BASKETBALL_SHOES_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `PRODUCT` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BASKETBALL_SHOES`
--

LOCK TABLES `BASKETBALL_SHOES` WRITE;
/*!40000 ALTER TABLE `BASKETBALL_SHOES` DISABLE KEYS */;
INSERT INTO `BASKETBALL_SHOES` VALUES
('0013','Thin Knit','High','13 oz','High'),
('1000','Leather','Medium','15 oz','High'),
('1023','Leather','Low','12 oz','Meidum'),
('1234','Leather','Medium','16 oz','Medium'),
('2038','polymer','Medium','14 oz','Medium'),
('2378','polyurethane','High','13 oz','High'),
('4321','polyurethane','Low','12 oz','High'),
('5412','polyurethane','Medium','17 oz','Low');
/*!40000 ALTER TABLE `BASKETBALL_SHOES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BRAND`
--

DROP TABLE IF EXISTS `BRAND`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BRAND` (
  `BrandID` char(4) NOT NULL,
  `Brand_Name` varchar(20) NOT NULL,
  `Brand_Description` varchar(3000) NOT NULL,
  `Brand_AthleteRep` varchar(100) DEFAULT NULL,
  `Brand_Value` decimal(15,2) NOT NULL,
  PRIMARY KEY (`BrandID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BRAND`
--

LOCK TABLES `BRAND` WRITE;
/*!40000 ALTER TABLE `BRAND` DISABLE KEYS */;
INSERT INTO `BRAND` VALUES
('0001','Nike','Nike is best known for its footwear, apparel, and equipment','Lebron James',1000000000.00),
('0002','Puma','a German multinational corporation that designs and manufactures athletic and casual footwear, apparel and accessories','Lionel Messi',9000000000.00),
('0003','Champion','a brand of clothing, specializing in sportswear owned and marketed by American apparel company Hanesbrands','Usain Bolt',6000000000.00),
('0004','New Balance','Manufactured in the US for over 75 years and representing a limited portion of our US sales','Usain Bolt',7000000000.00),
('0005','Adidas','German manufacturer of athletic shoes and apparel and sporting goods','Lionel Messi',2000000000.00),
('0006','Converse','an American lifestyle brand that markets, distributes, and licenses footwear, apparel, and accessories','Lebron James',3000000000.00),
('0007','Hoda',' leading Japanese manufacturer of motorcycles and a major producer of automobiles for the world market','Lionel Messi',2500000000.00),
('0008','ON','helping a company present the image of itself and its products that it wants to present','Usain Bolt',7500000000.00),
('0009','Reebok','designs, manufactures, distributes and sells fitness, running and CrossFit sportswear including clothing and accessories','Lebron James',6300000000.00),
('0010','Under Armor',' creating state-of-the-art products engineered to make competitors better','Stephen Curry',7800000000.00),
('0011','Skechers','designs, develops and markets a range of lifestyle and performance footwear','Lionel Messi',6200000000.00),
('0012','Asics','Asics is best known for its sneakers but also produces other footwear such as sandals, as well as clothing','Jackie Kersee',25000000.00);
/*!40000 ALTER TABLE `BRAND` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CRM`
--

DROP TABLE IF EXISTS `CRM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CRM` (
  `CRM_ID` char(4) NOT NULL,
  `CustomerID` int(5) NOT NULL,
  `EmployeeID` int(5) NOT NULL,
  `Interaction_date` date DEFAULT NULL,
  `Interaction_Type` varchar(100) NOT NULL,
  `Interation_Details` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CRM_ID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `CRM_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `CUSTOMER` (`CustomerID`),
  CONSTRAINT `CRM_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `EMPLOYEE` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CRM`
--

LOCK TABLES `CRM` WRITE;
/*!40000 ALTER TABLE `CRM` DISABLE KEYS */;
INSERT INTO `CRM` VALUES
('0001',1001,26,'2023-01-15','Email','question regarding Order'),
('0002',1013,27,'2022-01-25','Email','Order status inquiry'),
('0003',1124,27,'2022-01-25','Phone Call','Product information request'),
('0004',1124,27,'2023-01-15','Video Chat','Order cancellation'),
('0005',1002,26,'2023-01-15','Video Chat','Return or exchange reques'),
('0006',1124,26,'2023-05-10','Phone Call','Billing discrepancy'),
('0007',1003,26,'2023-05-10','Phone Call','Account balance inquiry'),
('0008',1124,27,'2023-05-10','Video Chat','Payment issue'),
('0009',1124,27,'2023-06-01','Phone Call','Shipping delay'),
('0010',1013,26,'2023-06-01','Email','Address change/update'),
('0011',1003,26,'2023-01-01','Phone Call','Complaint about product quality'),
('0012',1014,27,'2023-01-01','Email','Request for a refund'),
('0013',1002,26,'2023-08-08','Video Chat','Technical support for a product/service'),
('0014',1124,27,'2023-08-08','Phone Call','Assistance with online account access'),
('0015',1026,26,'2023-08-08','Video Chat','Loyalty program inquiry'),
('0016',1011,27,'2022-09-01','Email','Subscription management'),
('0017',1025,26,'2022-09-01','Phone Call','Lost or missing item from the order'),
('0018',1002,27,'2022-09-01','Video Chat','Pricing inquiry'),
('0019',1014,27,'2023-12-01','Email','Request for product recommendations'),
('0020',1013,27,'2023-12-01','Phone Call','Problem with website functionality'),
('0099',1003,26,'2023-09-11','Video Chat','Request for a warranty claim'),
('0111',1011,27,'2023-09-11','Phone Call','Assistance with installation or setup'),
('1001',1012,27,'2023-12-24','Phone Call','Assistance with order tracking'),
('1010',1019,26,'2023-11-03','Video Chat','Return policy clarification'),
('1011',1018,26,'2023-12-24','Email','Assistance with account closure'),
('1021',1020,26,'2023-09-10','Email','Request for product availability'),
('1110',1018,27,'2023-11-03','Phone Call','Request for a product demonstration'),
('1111',1001,26,'2023-12-01','Video Chat','Request for an invoice or receipt'),
('1121',1021,26,'2023-09-10','Phone Call','Assistance with gift card usage'),
('1131',1001,26,'2022-12-11','Video Chat','Request for order modification'),
('1134',1022,27,'2022-12-11','Phone Call','Request for a catalog or brochure'),
('1135',1012,26,'2022-12-11','Video Chat','Problem with a promotion code'),
('1136',1023,27,'2022-12-11','Phone Call','Assistance with a bulk or wholesale order');
/*!40000 ALTER TABLE `CRM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER` (
  `CustomerID` int(5) NOT NULL,
  `Cus_FName` varchar(20) NOT NULL,
  `Cus_LName` varchar(20) NOT NULL,
  `Cus_Email` varchar(100) NOT NULL,
  `Cus_Address` varchar(100) NOT NULL,
  `Cus_City` varchar(50) NOT NULL,
  `Cus_State` varchar(2) NOT NULL,
  `Cus_ZipCode` int(5) NOT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `UniqueCus` (`Cus_FName`,`Cus_LName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES
(3,'Giovani','Windler','aklein@example.com','Error consectetur voluptatem architecto aut.','North Nicklausshire','Ar',0),
(14,'Kevon','Gerhold','dallin17@example.net','Autem cupiditate dignissimos aut voluptate.','West Ralph','Al',0),
(23,'Meredith','Schulist','nikolaus.lela@example.net','Ipsa asperiores quia est tempora quis.','Garthville','Fl',0),
(29,'Althea','Ledner','ray98@example.org','Velit repudiandae reiciendis repudiandae.','Helmermouth','Ke',0),
(38,'Francesca','Bruen','clarabelle.braun@example.org','Magnam sit voluptas placeat et facere.','Lake Westleymouth','Mi',0),
(54,'Yadira','Medhurst','tabshire@example.net','Corporis cum tempore aliquid quia quis quia corporis.','Batzshire','Ar',0),
(61,'Jude','Bahringer','ghauck@example.org','Temporibus dolores eveniet fuga aliquid velit non.','North Ashleigh','Al',0),
(64,'Raina','Beatty','ehettinger@example.com','Non pariatur cupiditate voluptatem est tempore.','Kathrynton','Ve',0),
(65,'Kailey','Doyle','hdare@example.net','Voluptatum ut omnis blanditiis non.','East Melba','Io',0),
(67,'Jaleel','Zboncak','mylene.brekke@example.com','Non reprehenderit molestiae accusamus commodi minus.','Sauerbury','Ma',0),
(116,'Cindy','Morissette','ratke.jessika@example.org','Quibusdam qui quis delectus est aut.','West Alta','Io',0),
(132,'Archibald','Goodwin','koby.konopelski@example.com','Soluta iure culpa repudiandae reprehenderit facilis et veritatis.','Port Dusty','Id',0),
(142,'Electa','Ebert','shields.adrienne@example.net','Voluptatibus corporis et ut facilis.','Lake Adrienne','So',0),
(155,'Lawson','Marks','pgreen@example.org','Sed et laboriosam est eos sit.','South Alison','Mi',0),
(159,'Earnest','Monahan','talia.smith@example.org','Occaecati omnis laboriosam atque cumque facilis cumque.','South Loraville','Ne',0),
(165,'Katarina','Roberts','sylvia19@example.com','Repellendus tempora in non consequuntur ipsa.','Floyport','De',0),
(167,'Eliane','Lesch','little.cameron@example.net','Dolore soluta ea eius et esse et quia.','Kaleyside','Ve',0),
(176,'Maximillia','O\'Connell','stark.bria@example.net','Sit qui laborum eum sit.','North Ebba','Lo',0),
(189,'Selmer','Jacobs','jeanette.funk@example.org','Consequatur qui animi molestiae.','South Kyraberg','Mi',0),
(200,'Gust','Nikolaus','lisa28@example.net','Cupiditate id nam quaerat blanditiis nihil enim reprehenderit.','Mayerttown','Mi',0),
(211,'Jennifer','Greenholt','antonietta10@example.com','Eum explicabo ea assumenda laborum.','Brandynmouth','In',0),
(219,'Patsy','Gerlach','bradtke.zachary@example.net','Qui ullam inventore molestiae nihil corporis.','Bayleefurt','So',0),
(224,'Kyra','Tromp','cole.shanny@example.org','Voluptatem voluptates dignissimos voluptates.','Bettieburgh','Ok',0),
(241,'Gordon','O\'Reilly','malvina09@example.com','Porro qui voluptas ipsum similique id cumque saepe.','East Lucinda','Ma',0),
(242,'Billy','Ernser','dibbert.valentine@example.net','Animi impedit cum esse nulla dolorem occaecati.','New Elvie','Ma',0),
(250,'Rosemarie','Beier','berenice10@example.net','Explicabo exercitationem in commodi quo velit.','Lake Maximillianchester','Mi',0),
(251,'Clifton','Cassin','angelina.sauer@example.net','Corporis consequatur officia quidem est autem aut.','East Keeley','Ma',0),
(254,'Ines','Crist','carmstrong@example.net','Dicta velit dolorem quia voluptatem et cupiditate.','Lake Karli','Ar',0),
(255,'Madge','Towne','antonio.sawayn@example.com','Sint aut deleniti consectetur modi distinctio dolore eos.','East Heather','Wy',0),
(267,'Jaren','Weimann','kirlin.georgette@example.net','Iusto sint atque laboriosam.','Lake Kip','Co',0),
(276,'Jaden','Klein','bsipes@example.net','Ipsa qui voluptatem ipsa quasi.','Mannmouth','Wa',0),
(283,'Louisa','Boyer','satterfield.halie@example.com','Architecto sed quia nostrum odio.','Fisherfort','So',0),
(316,'Rhoda','Miller','pablo29@example.com','Natus voluptatem voluptatem id architecto et.','East Juliusburgh','Ma',0),
(330,'Tyrique','Yundt','apacocha@example.net','Architecto nostrum et distinctio nam.','Lake Ednamouth','So',0),
(340,'Nelson','Conroy','haley.skye@example.org','Mollitia aut in rem rem eligendi labore molestias.','Abbyport','Ar',0),
(347,'Carmela','Harber','kennedy06@example.com','Ut enim ea quis nihil.','Lake Teaganfort','Mi',0),
(352,'Lonie','Stamm','tlindgren@example.com','Voluptas est maiores est.','Port Krystal','Ne',0),
(383,'Adrienne','Moen','ashton.sawayn@example.net','Veniam error cumque repudiandae aut et temporibus beatae.','West Hassan','Oh',0),
(387,'Mike','Anderson','quinton.schaden@example.net','Magnam quia sapiente dicta quam rem est.','South Robynstad','Ma',0),
(404,'Kiara','Wyman','markus94@example.org','Cumque et aut aliquid quo nemo beatae aspernatur.','Steuberborough','So',0),
(413,'Rachel','Grant','royce.bogan@example.com','Corporis non aliquid dolores dolorum est.','Nolanside','Or',0),
(419,'Marcelle','Gaylord','kreichel@example.com','Architecto et sunt reiciendis qui aperiam aperiam cum.','McGlynnchester','Mi',0),
(421,'Jan','Stiedemann','littel.reese@example.com','Non ut ullam omnis voluptatem.','Keithland','Ne',0),
(434,'Constantin','Runte','elda.leffler@example.org','Libero quis ex quis et.','Taliaview','Ne',0),
(437,'Amelie','Kovacek','raven.toy@example.net','Odio officiis distinctio doloremque.','New Lesliefurt','Ut',0),
(453,'Cecile','Harber','wilfrid03@example.org','Alias placeat nulla nam quam sed.','Christiansenton','Ne',0),
(457,'Tyler','Little','cremin.arlie@example.com','Ipsum aut ratione voluptatem qui numquam.','Vivianneville','Ne',0),
(459,'Flossie','Stehr','zemlak.gardner@example.com','Aut cupiditate suscipit saepe ab maiores qui.','East Jadenhaven','Fl',0),
(462,'Crystal','Sipes','catherine.morar@example.net','Officia fugiat laudantium maxime beatae sed labore.','Port Tyler','Ar',0),
(468,'Rodrick','Shanahan','kelton.o\'hara@example.org','Maxime molestiae modi maxime quibusdam.','Dibbertmouth','Mi',0),
(489,'Pearline','Cremin','block.elyssa@example.com','Eaque ab voluptatem dolor itaque tempore.','Buckridgeburgh','Fl',0),
(505,'Rocio','Wintheiser','sydni56@example.com','Consequuntur at aliquam maiores inventore velit.','Luellaborough','Ma',0),
(513,'Lois','Olson','deanna.ondricka@example.net','Eaque qui cupiditate molestiae et nihil omnis.','West Tania','Co',0),
(525,'Merlin','Sawayn','franecki.maude@example.net','Harum molestiae magni blanditiis corrupti laborum nostrum ut.','Veumborough','Ar',0),
(527,'Aron','Parker','ines.schamberger@example.com','Temporibus non odio molestiae rerum iusto dolorum.','Lake Felipemouth','Ne',0),
(534,'Nelle','Ledner','hparker@example.org','Quo nihil tempore soluta.','West Sallyshire','Ke',0),
(542,'Gabriel','Schimmel','rippin.garth@example.net','Doloribus voluptatem at rerum.','Faheyside','Te',0),
(545,'Bertrand','Reichel','ovon@example.com','Quia perspiciatis eligendi suscipit in.','East Stephanie','No',0),
(559,'Evangeline','Upton','kuvalis.chesley@example.org','Eveniet quas id et est.','Balistreribury','Di',0),
(579,'Baylee','Kirlin','ullrich.michele@example.com','Voluptas eaque quidem explicabo excepturi nostrum dolores.','Percivalshire','Wi',0),
(580,'Virgil','Wilkinson','zrogahn@example.com','Quisquam reiciendis voluptatem quia.','Nikolauschester','Ne',0),
(583,'Geovanni','Graham','troy82@example.org','Sed earum consequatur iure ad nobis illo.','West Palmaview','Mi',0),
(585,'Leonardo','Yundt','rdaugherty@example.com','Delectus aut labore labore delectus voluptatem et voluptas.','West Whitneymouth','Mo',0),
(594,'Burnice','Robel','everardo.yundt@example.com','Porro non quidem nisi voluptatem in sunt quis.','Cynthiastad','Ne',0),
(607,'Clare','Ankunding','katelin58@example.net','Aut nesciunt rerum reiciendis ipsum rerum dolor.','South Connorburgh','Wa',0),
(615,'Kyra','Renner','bogisich.jadon@example.org','Sed ullam debitis quas qui quis vero doloribus.','North Earline','Ne',0),
(622,'Kianna','Reilly','cassandra.schaden@example.net','Sed sint praesentium voluptatem sapiente eos ut.','South Annabelle','Co',0),
(630,'Jessy','Baumbach','alberta89@example.com','Asperiores unde sapiente ipsam ea est porro.','New Daijatown','De',0),
(636,'Jessie','Mayer','cecile.kreiger@example.org','Beatae harum sapiente cum dolorum.','East Wendy','Di',0),
(637,'Hollie','Murray','wisozk.billie@example.net','Consequatur reiciendis fugit facere.','Boscoshire','Ne',0),
(648,'Mariah','Hayes','fschimmel@example.com','Ad voluptatem voluptas nulla.','Gleasonstad','Co',0),
(650,'Bessie','Renner','beer.alaina@example.org','Recusandae ex rerum et quae quos.','Westonfort','Ar',0),
(656,'Zane','Kunde','valerie.thompson@example.org','Placeat labore assumenda molestiae eaque porro.','South Ervin','No',0),
(664,'Robb','Stoltenberg','winston64@example.com','Error nam dicta asperiores animi sint eum nostrum.','Port Patsytown','Di',0),
(671,'Garett','Mills','ritchie.novella@example.net','Nulla laboriosam exercitationem impedit fugiat pariatur ab.','West Clarabelleborough','Ge',0),
(678,'Palma','Mante','cale.sanford@example.org','Atque doloremque asperiores consequuntur maiores quo eius enim.','North Eunice','Mi',0),
(682,'Lily','O\'Conner','roxane.goyette@example.net','Optio sequi neque nihil.','North Tomburgh','Ka',0),
(718,'Bobby','Adams','cvolkman@example.com','Id reprehenderit sed perspiciatis impedit magnam.','Kassulketown','Ma',0),
(723,'Rhea','Gusikowski','laurie.goldner@example.net','Omnis dolorem esse quam numquam amet distinctio.','New Garthfurt','Al',0),
(728,'Lue','Dare','daisy.beier@example.net','Omnis sequi id dolor assumenda.','Port Zariashire','Ke',0),
(730,'Keyon','Beier','davis.greta@example.com','Rerum aliquid libero a nihil.','Jonesbury','Ve',0),
(743,'Madge','Weber','hbraun@example.net','Et vel praesentium blanditiis ratione ad neque.','Spencerstad','Co',0),
(746,'Brenden','Bartoletti','jakayla.jacobson@example.org','Quos repudiandae repellendus autem unde et ex libero.','New Gillianfurt','Ne',0),
(764,'Retta','Hoppe','wunsch.dejah@example.org','Velit unde qui corporis velit vero incidunt voluptas et.','Alfonzostad','Mi',0),
(768,'Greg','Smitham','rick.gulgowski@example.org','Vitae fugit dolor a nihil deserunt eum delectus exercitationem.','North Nicklaus','Wi',0),
(769,'Candelario','Abernathy','kathlyn90@example.org','Est rerum totam earum est.','Mosciskibury','Di',0),
(772,'Sallie','Torphy','annamarie.goldner@example.org','Et quo voluptatum sit necessitatibus.','Eulaliaville','Pe',0),
(776,'Emily','Hodkiewicz','carolyn.jacobi@example.net','Eveniet molestias nostrum sunt doloribus voluptates et eos.','Shanahanfort','Lo',0),
(780,'Georgianna','Harber','breanna69@example.net','Aut aut nobis qui dolore quaerat incidunt ut.','Jacobsonport','So',0),
(794,'Yasmine','Zboncak','pharber@example.net','Numquam nobis aut tenetur nihil id commodi.','Greysonland','Te',0),
(805,'Chad','Metz','hyman13@example.net','Aperiam ipsam et laudantium culpa sint.','North Alexiefurt','Ne',0),
(817,'Cordelia','Prosacco','emery.legros@example.com','Nemo mollitia eos et esse hic numquam ipsam.','New Aglaeland','Di',0),
(831,'Ethel','Kessler','emard.marty@example.com','Unde nihil laudantium earum quam ab nisi.','Lake Burley','Ma',0),
(837,'Arvid','Bradtke','josiah10@example.net','Sit voluptatem vitae atque autem tenetur omnis.','Parkermouth','Di',0),
(851,'Katheryn','Schuppe','noelia40@example.net','Eos consequatur velit libero officiis quia est.','Port Kaia','Co',0),
(853,'Chris','Hintz','durward.wintheiser@example.org','Expedita quidem laboriosam voluptatem velit enim accusantium et.','Murazikville','Ca',0),
(855,'Earnest','Hane','vkassulke@example.org','Facere a qui quisquam placeat labore excepturi.','Blickberg','In',0),
(861,'Cassie','Rolfson','cayla35@example.net','Qui consectetur unde sit.','Olaftown','Pe',0),
(862,'Heloise','McCullough','jillian.white@example.org','Qui molestias necessitatibus omnis ipsam qui et.','South Brookbury','Ma',0),
(878,'Ashly','DuBuque','haskell.schroeder@example.org','Minima numquam corrupti ut voluptatibus perferendis quis modi.','Port Wallacehaven','Mo',0),
(880,'Sarina','Lindgren','amber.swift@example.net','In eum non qui iure culpa.','East Clark','Ne',0),
(883,'Kennith','Doyle','femmerich@example.net','Non assumenda est ipsam enim illo accusamus est.','O\'Konport','Oh',0),
(892,'Reba','Nienow','cparisian@example.net','Recusandae ipsa at laudantium doloremque vero est animi.','South Rudy','Wi',0),
(902,'Koby','Lynch','marcia.lesch@example.com','Quo animi nemo et nemo asperiores ea.','Stefaniechester','Ge',0),
(908,'Graham','Hirthe','gschowalter@example.com','Explicabo vel animi in architecto fuga.','Fritschhaven','Ca',0),
(916,'Krystel','Hintz','howard.collins@example.com','Voluptatem ut maiores sed.','Dooleychester','In',0),
(920,'Marianne','Runolfsson','hyman83@example.net','Expedita dignissimos officiis a qui sunt corrupti quasi.','Eladiohaven','Mi',0),
(925,'Janis','Braun','amina.halvorson@example.org','Corporis aliquam vel fugiat omnis dignissimos molestiae nesciunt.','Lake Rickie','Ne',0),
(933,'Gladys','Carter','davis.furman@example.com','Minima expedita labore dolorum assumenda reprehenderit asperiores eum.','Port Christophetown','Ha',0),
(946,'Hettie','Oberbrunner','jacobi.carley@example.net','Perferendis voluptates voluptas quidem ut molestiae at.','Calistaborough','Mo',0),
(953,'Kaden','Effertz','marquardt.hermann@example.com','In dignissimos et quis nostrum.','Fadelland','Mi',0),
(964,'Floyd','Rice','jacobs.kameron@example.net','Deserunt a quasi dolorem commodi ut fugiat temporibus.','Langoshmouth','Te',0),
(979,'Modesto','Daniel','ugoyette@example.com','Dicta animi nisi qui rerum a.','Bartonport','No',0),
(983,'Cynthia','Greenfelder','willie.green@example.net','Iste nihil dolores non ut nemo libero laborum.','Ovaville','Ne',0),
(985,'Mandy','Paucek','mohamed.bauch@example.org','Et adipisci recusandae impedit aut eum sed.','South Rowanchester','Ut',0),
(1001,'Ella','King','AKing@yahoo.com','732 East Oak Street','Wauchula','FL',33873),
(1002,'Luka','Sweeney','LSweeney@gmail.com','3139 Chicago Avenue','Fresno','CA',93721),
(1003,'Aitana','Olsen','AOlsen@hotmail.com','4060 Diamond Street','Charlotte','NC',28202),
(1011,'Leland','Gibbs','LGibbs@yahoo.com','3618 Bedford Street','Stamford','CO',6995),
(1012,'Mylah','Sanchez','MSanchez@gmail.com','3005 Williams Lane','Wichita','KA',67214),
(1013,'Etta','Carter','ECarter@google.com','1839 Carolyns Circle','Dallas','TX',75202),
(1014,'Julian','Garcia','JGarcia@gmail.com','353 Emeral Dreams Drive','Nelson','IL',61058),
(1015,'Tyler','Palacios','TPalacios@google.com','2494 Bruce Street','Riverside','CA',92501),
(1016,'Adele','Torres','ATorres@hotmail.com','3264 Cardinal Lane','Decatur','IL',62522),
(1017,'Amelia','Silva','ASilva@hotmail.com','4295 Cambridge Court','Scranton','AK',72863),
(1018,'Jada','Wilkins','JWilkins@google.com','1399 Settlers Lane','Tampa','FL',33609),
(1019,'Amir','Harmon','AHarmon@gmail.com','259 Patterson Road','Brooklyn','NY',11201),
(1020,'Ryan','Morris','RMorris@gmail.com','4099 College View','Carbondale','IL',62901),
(1021,'Vivian','Arroyo','VArroyo@hotmail.com','1346 Florence Street','Tyler','TX',75757),
(1022,'Silas','Monroe','SMonroe@apple.com','4049 Lauren Drive','Madison','WI',53718),
(1023,'Molly','Hansen','MHansen@gmail.com','816 Charmaine Lane','Peoria','IL',61651),
(1025,'Opal','Novak','ONovak@apple.com','942 Heavens Way','HustonVille','KY',40437),
(1026,'Ayan','Ray','ARyan@apple.com','2785 Golf Course Drive','Channelview','TX',77530),
(1124,'Kannon','Pearson','KPearson@apple.com','2428 Don Jackson Lane','Keaau','HI',96749);
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER_REVIEW`
--

DROP TABLE IF EXISTS `CUSTOMER_REVIEW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER_REVIEW` (
  `ReviewID` int(3) NOT NULL,
  `CustomerID` int(5) NOT NULL,
  `ProductID` char(4) NOT NULL,
  `Cus_Rating` varchar(200) DEFAULT NULL,
  `Cus_ReviewDate` date DEFAULT NULL,
  PRIMARY KEY (`ReviewID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `CUSTOMER_REVIEW_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `CUSTOMER` (`CustomerID`),
  CONSTRAINT `CUSTOMER_REVIEW_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `PRODUCT` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER_REVIEW`
--

LOCK TABLES `CUSTOMER_REVIEW` WRITE;
/*!40000 ALTER TABLE `CUSTOMER_REVIEW` DISABLE KEYS */;
INSERT INTO `CUSTOMER_REVIEW` VALUES
(101,14,'1111','Good','2022-01-01'),
(102,29,'1000','Good','2023-08-13'),
(103,1124,'1111','Average','2023-08-13'),
(104,1026,'1024','Okay','2023-07-28'),
(105,1025,'2128','Excellent','2023-07-28'),
(106,1023,'1111','Average','2023-04-04'),
(109,1021,'1000','Good','2023-04-05'),
(111,3,'0013','Excellent','2023-01-01'),
(113,1022,'1010','Good','2023-04-05'),
(118,1020,'1234','Good','2023-04-08'),
(119,1019,'1111','Good','2023-06-01'),
(121,1018,'0013','Excellent','2023-06-01'),
(123,23,'1000','Excellent','2023-01-01'),
(127,1001,'2128','Excellent','2023-04-08'),
(132,1003,'2008','Average','2023-09-01'),
(133,983,'1001','Okay','2022-08-12'),
(138,1002,'2038','Average','2023-06-04'),
(142,1018,'0013','Excellent','2022-08-12'),
(143,1014,'1011','Good','2023-09-07'),
(145,1012,'0013','Good','2023-06-04'),
(146,1016,'2038','Average','2023-03-03'),
(147,1015,'2128','Okay','2023-03-03'),
(148,1013,'2038','Excellent','2023-06-07'),
(184,1017,'0013','Excellent','2023-09-08'),
(199,985,'1001','Good','2023-09-07');
/*!40000 ALTER TABLE `CUSTOMER_REVIEW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLOYEE` (
  `EmployeeID` int(11) NOT NULL AUTO_INCREMENT,
  `Emp_FName` varchar(20) NOT NULL,
  `Emp_LName` varchar(20) NOT NULL,
  `Emp_Position` varchar(50) NOT NULL,
  `Emp_HireDate` date NOT NULL,
  `Emp_Salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE`
--

LOCK TABLES `EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
INSERT INTO `EMPLOYEE` VALUES
(1,'189','597','ea','1970-03-14',9.00),
(2,'822','282','ad','2004-11-29',9.00),
(3,'537','768','impedit','1987-01-21',9.00),
(4,'280','132','libero','1988-09-30',7.00),
(5,'James','Green','Commercial','2015-02-20',50000.00),
(6,'046','741','at','2005-07-16',7.00),
(7,'193','480','ut','1971-10-14',9.00),
(8,'Olive','Willy','Sales','2017-05-12',50000.00),
(9,'829','176','neque','1985-04-26',6.00),
(10,'466','066','quam','1976-10-22',9.00),
(11,'Cassy','Brown','CRM','2020-12-01',45000.00),
(12,'309','267','qui','1978-11-12',6.00),
(13,'569','003','maxime','1994-02-19',9.00),
(14,'James','Smithson','General Manager','2014-09-12',80000.00),
(15,'232','407','nesciunt','1978-01-14',0.00),
(16,'840','293','repellat','1981-04-27',7.00),
(17,'Bob','Rose','Assistant Manager','2017-06-25',65000.00),
(18,'334','404','vero','1973-11-02',1.00),
(19,'549','631','soluta','2020-07-29',4.00),
(20,'Gabriel','Casey','Data Collection Specialist','2020-12-01',48000.00),
(21,'102','609','qui','2000-12-27',2.00),
(22,'653','350','autem','2009-04-17',8.00),
(23,'Oakley','James','Sales','2018-02-01',35000.00),
(24,'325','159','et','2012-10-28',8.00),
(25,'859','130','eos','2009-03-19',9.00),
(26,'Ally','Gibson','Customer Service','2015-02-20',33000.00),
(27,'997','471','facere','1991-05-02',9.00),
(28,'762','932','fuga','1995-09-07',8.00),
(29,'Gabby','Charles','Customer Service','2016-12-21',30000.00),
(30,'778','320','voluptatibus','1972-06-13',5.00),
(31,'287','504','esse','1995-01-26',9.00),
(32,'Robert','Green','Commercial','2019-03-14',20000.00),
(33,'620','767','rerum','1983-10-27',7.00),
(34,'500','499','quisquam','2000-12-15',7.00),
(35,'Nick','Rosen','IT','2015-11-12',55000.00),
(36,'289','099','laborum','2018-08-30',3.00),
(37,'479','796','quas','1998-11-08',5.00),
(38,'490','305','suscipit','2019-04-12',6.00),
(39,'882','928','non','1997-08-30',7.00),
(40,'769','753','provident','2005-10-13',5.00),
(41,'897','680','odio','2022-11-23',1.00),
(42,'368','317','fugiat','2010-09-25',3.00),
(43,'029','386','omnis','1988-04-24',1.00),
(44,'900','426','quis','2015-03-18',2.00),
(45,'051','660','ab','1998-02-07',1.00),
(46,'596','895','et','1988-10-27',0.00),
(47,'166','540','cumque','2019-08-28',0.00),
(48,'201','329','vel','2012-11-30',6.00),
(49,'581','071','enim','2007-08-27',4.00),
(50,'109','095','facere','2015-06-13',3.00),
(51,'562','244','quia','1983-03-02',9.00),
(52,'113','780','unde','2010-11-03',4.00),
(53,'170','779','atque','1974-02-16',8.00),
(54,'674','145','dignissimos','1993-07-27',9.00),
(55,'794','563','eos','1998-11-05',3.00),
(56,'249','133','quos','1991-01-18',0.00),
(57,'050','641','nihil','1989-02-14',4.00),
(58,'469','555','voluptatem','2018-07-13',4.00),
(59,'719','554','veniam','2003-03-27',1.00),
(60,'644','945','voluptas','1973-12-30',8.00),
(61,'618','012','voluptatem','1981-02-16',8.00),
(62,'225','548','laborum','1971-06-25',3.00),
(63,'117','996','ipsum','1978-03-28',0.00),
(64,'994','377','dicta','1994-01-28',2.00),
(65,'053','975','omnis','2022-11-23',7.00),
(66,'269','889','rerum','2015-04-19',2.00),
(67,'654','522','cumque','2015-09-04',2.00),
(68,'630','146','ut','1985-12-26',3.00),
(69,'703','737','nesciunt','1976-09-29',0.00),
(70,'908','359','aut','1991-03-05',7.00),
(71,'798','440','qui','1996-06-20',5.00),
(72,'818','782','ut','1970-06-08',7.00),
(73,'450','041','veritatis','1977-12-29',0.00),
(74,'541','124','eos','2001-09-28',0.00),
(75,'734','142','dolorem','1982-10-18',9.00),
(76,'931','692','aliquam','1972-09-04',9.00),
(77,'868','164','molestiae','2021-02-07',9.00),
(78,'604','484','aut','1979-07-03',3.00),
(79,'364','421','qui','1971-03-10',5.00),
(80,'000','111','dolor','1972-12-04',7.00),
(81,'149','712','sit','2014-08-02',5.00),
(82,'723','497','molestias','1994-09-30',6.00),
(83,'561','402','eum','1980-05-11',9.00),
(84,'936','965','laborum','1984-12-31',1.00),
(85,'935','184','culpa','2001-03-27',7.00),
(86,'580','770','eligendi','1972-04-26',3.00),
(87,'647','613','sapiente','2003-06-17',6.00),
(88,'811','216','ducimus','1974-04-11',9.00),
(89,'610','683','eius','2001-09-25',2.00),
(90,'220','884','placeat','2009-09-30',1.00),
(91,'711','512','possimus','2010-04-17',4.00),
(92,'887','873','possimus','1976-09-26',8.00),
(93,'853','636','facere','1994-03-30',4.00),
(94,'448','880','quam','2009-01-28',6.00),
(95,'104','649','voluptas','1990-01-13',2.00),
(96,'321','848','qui','1990-03-09',8.00),
(97,'318','136','explicabo','2011-12-26',9.00),
(98,'366','411','laborum','2023-07-21',2.00),
(99,'507','300','illo','2011-05-27',5.00),
(100,'022','841','dolorem','1989-08-16',5.00),
(101,'351','310','ratione','2017-01-10',4.00),
(102,'626','947','vel','2004-10-27',6.00),
(103,'278','152','non','2018-06-06',7.00),
(104,'657','866','recusandae','2008-04-18',2.00),
(105,'357','851','dolorum','2021-05-11',4.00),
(106,'324','078','est','1984-11-04',1.00),
(107,'534','842','fugit','1972-01-27',3.00),
(108,'126','054','deleniti','1977-07-27',5.00),
(109,'933','398','a','1973-06-30',0.00),
(110,'299','131','ad','1971-01-12',5.00);
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVENTORY`
--

DROP TABLE IF EXISTS `INVENTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INVENTORY` (
  `InventoryID` int(11) NOT NULL AUTO_INCREMENT,
  `StoreID` int(3) NOT NULL,
  `ProductID` char(4) NOT NULL,
  `Inv_Transaction` int(3) DEFAULT NULL,
  `Inv_Quantity` int(5) NOT NULL,
  PRIMARY KEY (`InventoryID`),
  KEY `StoreID` (`StoreID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `INVENTORY_ibfk_1` FOREIGN KEY (`StoreID`) REFERENCES `STORE` (`StoreID`),
  CONSTRAINT `INVENTORY_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `PRODUCT` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVENTORY`
--

LOCK TABLES `INVENTORY` WRITE;
/*!40000 ALTER TABLE `INVENTORY` DISABLE KEYS */;
INSERT INTO `INVENTORY` VALUES
(5,66,'0012',3,150),
(8,1,'0013',2,100),
(11,75,'1000',3,130),
(14,80,'1001',1,100),
(17,105,'1010',3,100),
(20,103,'1011',1,100),
(23,100,'1023',2,100),
(26,95,'1024',1,200),
(29,98,'1111',1,100),
(32,77,'1234',2,120),
(35,60,'1308',1,150),
(38,50,'1456',1,150),
(41,55,'1541',2,100),
(44,33,'2008',1,100),
(47,30,'2011',2,150),
(50,25,'2038',1,100),
(53,20,'2118',1,200),
(56,16,'2128',1,150),
(59,8,'2368',1,100),
(62,20,'2378',1,130),
(65,23,'2698',1,180),
(68,17,'4321',3,200),
(71,11,'5412',1,501);
/*!40000 ALTER TABLE `INVENTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVOICE`
--

DROP TABLE IF EXISTS `INVOICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INVOICE` (
  `InvoiceID` int(5) NOT NULL,
  `CustomerID` int(5) NOT NULL,
  `Customer_Name` varchar(200) NOT NULL,
  `OrderID` int(4) NOT NULL,
  `Order_Date` date NOT NULL,
  `Invoice_Date` date NOT NULL,
  `Total_Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`InvoiceID`),
  UNIQUE KEY `UNIQUE_INFO` (`InvoiceID`,`CustomerID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `OrderID` (`OrderID`),
  CONSTRAINT `INVOICE_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `CUSTOMER` (`CustomerID`),
  CONSTRAINT `INVOICE_ibfk_2` FOREIGN KEY (`OrderID`) REFERENCES `PRODUCT_ORDER` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVOICE`
--

LOCK TABLES `INVOICE` WRITE;
/*!40000 ALTER TABLE `INVOICE` DISABLE KEYS */;
INSERT INTO `INVOICE` VALUES
(10001,1018,'Jada Wilkins',2038,'2021-11-27','2021-11-29',110.00),
(10009,1015,'Tyler Palacios',1025,'2023-08-02','2023-08-05',159.99),
(10011,1017,'Amelia Silva',1035,'2023-02-15','2023-02-19',189.00),
(10012,1012,'Mylah Sanchez',2023,'2022-08-15','2022-08-18',50.99),
(10013,1023,'Molly Hansen',3017,'2023-04-11','2023-04-15',160.00),
(10101,1001,'Ella King',1001,'2022-12-29','2023-01-01',50.99),
(10201,1003,'Aitana Olsen',1013,'2023-11-01','2023-11-02',153.97),
(10231,3,'Giovani Windler',3002,'2022-12-29','2023-01-01',139.99),
(11011,1026,'Ayan Ray',1097,'2023-01-01','2023-01-02',139.99),
(11111,1022,'Silas Monroe',4025,'2023-01-02','2023-01-03',109.99),
(12012,1014,'Julian Garcia',1023,'2022-12-24','2022-12-29',139.99),
(12201,1019,'Amir Harmon',1164,'2022-06-08','2022-06-09',90.00),
(12222,1025,'Opal Novak',4029,'2023-08-02','2023-08-05',139.00),
(12601,1020,'Ryab Morris',3038,'2022-12-24','2022-12-27',139.99),
(13018,1003,'Aitana Olsen',1013,'2022-08-16','2022-08-18',153.97),
(13333,1021,'Vivian Arroyo',4048,'2023-06-05','2023-06-07',220.00),
(14937,1011,'Leland Gibbs',1111,'2023-08-02','2023-08-11',135.00),
(16501,1002,'Luka Sweeney',1191,'2021-12-21','2021-12-25',250.00);
/*!40000 ALTER TABLE `INVOICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `INVOICE_TOTAL`
--

DROP TABLE IF EXISTS `INVOICE_TOTAL`;
/*!50001 DROP VIEW IF EXISTS `INVOICE_TOTAL`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `INVOICE_TOTAL` AS SELECT
 1 AS `SUM(Total_Price)` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT` (
  `ProductID` char(4) NOT NULL,
  `BrandID` char(4) NOT NULL,
  `Product_Name` varchar(100) NOT NULL,
  `Product_Size` varchar(50) NOT NULL,
  `Product_Color` varchar(50) NOT NULL,
  `Product_Gender` varchar(10) NOT NULL,
  `Product_Price` decimal(10,2) NOT NULL,
  `Product_Type` char(2) DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `BrandID` (`BrandID`),
  CONSTRAINT `PRODUCT_ibfk_1` FOREIGN KEY (`BrandID`) REFERENCES `BRAND` (`BrandID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
INSERT INTO `PRODUCT` VALUES
('0012','0010','UA Magnetico Elite 3','6-18','Light Red','M',250.00,'SC'),
('0013','0001','Nike KD Trey 5','10-20','Orange','M',153.97,'BS'),
('1000','0001','Nike Dunk High','5-20','Navy Blue','M/F',135.00,'BS'),
('1001','0002','Puma Future Play','7-14','White and Orange','M/F',50.99,'SC'),
('1010','0011','Slip-Ins Ultra Flex','3-15','Black','M',90.00,'RS'),
('1011','0008','Cloud 5','5-15','Green and White','M/F',139.99,'RS'),
('1023','0003','Clout Tech 2','6-16','White','M',80.00,'BS'),
('1024','0004','Fresh Foam X 1090v12','6-12','Green and White','M',159.99,'RS'),
('1111','0006','Run Star Legacy','2-12','Light Brown','F',84.97,'RS'),
('1234','0012','GELHOOP V15','6-16','White-Red Logo','M',189.00,'BS'),
('1308','0012','Gel-Excite 9','6-15','Black and White','M/F',59.95,'RS'),
('1456','0003','Reflex Core Knit','7-19','Black and White','M',80.00,'RS'),
('1541','0009','Neon Court Trainer','6-13','Pink','F',139.00,'RS'),
('2008','0002','Deviate Nitro 2','3-16','Orange','M/F',160.00,'RS'),
('2011','0005','Goletto VIII','8-14','Black and White','M/F',44.99,'SC'),
('2038','0008','Cloudnova','7-14','White','M/F',159.99,'BS'),
('2118','0004','FuelCell Propel v4','5-16','Blue and White','M/F',109.99,'RS'),
('2128','0010','Unisex UA Shadow Pro','5-15','Black','M/F',220.00,'SC'),
('2368','0011','Cessnock Work','2-16','Black','M/F',90.00,'RS'),
('2378','0009','Unisex The Blast','5-16','Grey and Black','M/F',150.00,'BS'),
('2698','0007','Bondi 8','5-15','Black','M/F',164.95,'RS'),
('4321','0005','Trae Young 2.0','6-18','Light-Blue and White','M',84.97,'BS'),
('5412','0001','Nike Air Force 1','8-15','White','M/F',110.00,'BS');
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT_ORDER`
--

DROP TABLE IF EXISTS `PRODUCT_ORDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT_ORDER` (
  `OrderID` int(4) NOT NULL,
  `CustomerID` int(5) NOT NULL,
  `ProductID` char(4) NOT NULL,
  `Order_Date` date NOT NULL,
  `Order_Quantity` int(3) DEFAULT NULL,
  `Order_Amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `ProductID` (`ProductID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `PRODUCT_ORDER_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `PRODUCT` (`ProductID`),
  CONSTRAINT `PRODUCT_ORDER_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `CUSTOMER` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_ORDER`
--

LOCK TABLES `PRODUCT_ORDER` WRITE;
/*!40000 ALTER TABLE `PRODUCT_ORDER` DISABLE KEYS */;
INSERT INTO `PRODUCT_ORDER` VALUES
(1001,1001,'1001','2022-12-29',1,50.99),
(1013,1003,'0013','2022-08-16',1,153.97),
(1023,1014,'1011','2022-12-24',1,139.99),
(1025,1015,'1024','2023-08-02',1,159.99),
(1026,1016,'1308','2023-01-01',1,59.95),
(1035,1017,'1234','2023-02-15',1,189.00),
(1097,1026,'1541','2023-01-01',1,139.00),
(1111,1011,'1000','2023-08-02',1,135.00),
(1164,1019,'2368','2022-06-08',1,90.00),
(1191,1002,'0012','2021-12-21',1,250.00),
(2012,1013,'1011','2023-11-01',1,139.99),
(2023,1012,'1001','2022-08-15',1,50.99),
(2038,1018,'5412','2021-11-27',1,110.00),
(3002,3,'1011','2022-12-29',1,139.99),
(3017,1023,'2008','2023-04-11',1,160.00),
(3038,1020,'1011','2022-12-24',1,139.99),
(4025,1022,'2118','2023-01-02',1,109.99),
(4029,1025,'1541','2023-08-02',1,139.00),
(4048,1021,'2128','2023-06-05',1,220.00);
/*!40000 ALTER TABLE `PRODUCT_ORDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT_VENDOR`
--

DROP TABLE IF EXISTS `PRODUCT_VENDOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT_VENDOR` (
  `VendorID` int(3) NOT NULL,
  `Ven_Name` varchar(100) NOT NULL,
  `Ven_Phone` varchar(20) NOT NULL,
  `Ven_Address` varchar(100) NOT NULL,
  `Ven_City` varchar(100) NOT NULL,
  `Ven_State` char(2) NOT NULL,
  `Ven_ZipCode` int(5) NOT NULL,
  `Ven_Order` int(9) DEFAULT NULL,
  PRIMARY KEY (`VendorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_VENDOR`
--

LOCK TABLES `PRODUCT_VENDOR` WRITE;
/*!40000 ALTER TABLE `PRODUCT_VENDOR` DISABLE KEYS */;
INSERT INTO `PRODUCT_VENDOR` VALUES
(123,'Comfort Soles Shoe Emporium','555-678-1234','1234 Elm Street','Springfield','IL',62701,100),
(146,'Walk in Style Shoes','444-666-1111','2345 Birch Court','Houston','TX',77001,55),
(149,'The Shoe Haven','777-555-9999','7890 Cedar Drive','Miami','FL',33101,45),
(156,'StepUp Shoe Store','123-567-8901','9012 Maple Lane','Los Angeles','CA',90001,50),
(158,'Trendy Feet Footwear Boutique','888-456-7890','5678 Oak Avenue','New York','NY',10001,60),
(163,'Soothing Steps Shoe Boutique','666-444-2222','4567 Aspen Lane',' Denver','CO',80201,250),
(165,'Happy Feet Footwear Co.','999-333-8888','6789 Willow Street','Seattle','WA',98101,150),
(167,'Urban Kicks Shoe Outlet','222-777-5555','0123 Juniper Avenue','Boston','MA',2101,200),
(188,'Stylish Soles Shoe Gallery','111-999-3333','8901 Sycamore Road','Dallas','TX',75201,100),
(189,'Sole Mates Shoe Shop','333-222-4444','3456 Pine Road','Chicago','IL',60601,80),
(251,'012','(657)375-3805x70458','3608 Jean Port Suite 064','West Alfredport','Ne',0,336),
(252,'688','(752)194-8229x0690','858 Hegmann Radial','Kohlermouth','So',0,45),
(253,'201','839.985.1587x667','786 Gina Passage','Bradtkefort','De',0,9405),
(254,'773','(566)735-9498x747','7427 Upton Islands','Lake Sabrina','So',0,10081277),
(255,'388','879.023.4773','7082 Kuhic Fort Suite 366','Kassulkeville','Mi',0,782169062),
(256,'742','(514)275-8864x3293','040 Langosh Lodge','Jerryshire','Ge',0,25076),
(257,'057','788.993.1241','20414 Zieme Summit','Osinskishire','Io',0,92499),
(258,'339','+18(1)2749213653','213 Altenwerth Road Apt. 975','East Melissa','Al',0,87538),
(259,'431','688.480.3846','866 Blick Station Apt. 161','West Cortezland','No',0,312719765),
(260,'876','(566)774-2441','93570 Estelle Loop','Port Lynn','Id',0,95722),
(261,'517','242.069.6051','1060 Ralph Wells Apt. 222','West Cydneyburgh','Ar',0,9508),
(262,'816','(442)702-5745','407 Hilpert Drives Suite 429','South Price','We',0,668),
(263,'078','769.088.2485x29771','36929 Walter Brook','Raymundofurt','Ma',0,605),
(264,'455','1-137-279-5941x072','87524 Mac Port Suite 914','New Levi','Ar',0,417),
(265,'014','1-252-620-6672x0377','17220 Fadel Spring','Port Camrynton','Io',0,94955790),
(266,'739','(788)209-1303x53150','078 Streich Fork Suite 801','Port Luciousberg','Ha',0,88264711),
(267,'654','763.623.5803x9147','18516 Casper Mews','Lillaberg','Ve',0,2500),
(268,'729','1-055-956-6645','3688 Jaqueline Squares','Swaniawskiburgh','Ne',0,53),
(269,'545','376-440-6808','46179 Langosh Ridges','North Doug','Ma',0,9677),
(270,'240','+56(3)0715318837','2437 Garret Ferry Apt. 118','Gerardfurt','Ar',0,875379),
(271,'016','902-864-5313x7667','3089 Adrienne Island','West Lucastown','So',0,64),
(272,'696','1-725-710-5063x21430','2782 Rickie Keys','North Lonnie','Oh',0,64486),
(273,'758','01606560314','480 Corwin Mission','Schmelerview','Ne',0,396437),
(274,'554','+37(6)9791518783','20586 Magnus Square','East Cathyton','Te',0,625915147),
(275,'764','(746)628-1430','357 Meta Bridge','Terrillmouth','De',0,78825),
(276,'933','07625241261','87988 Gilberto Loaf','Keeblershire','Ne',0,84102559),
(277,'620','629.910.0905x3314','61283 Jamey Villages','North Israeltown','Ma',0,91),
(278,'784','110-366-9690x5113','01686 Malinda Glens','New Ernie','Di',0,47735414),
(279,'662','(771)629-0668x090','34488 Dane Ranch','Jeromeshire','Wy',0,187748020),
(280,'942','(129)893-9957x628','44200 Macejkovic Coves','Lake Erlingmouth','No',0,527),
(281,'864','895.056.0674x0995','59431 Lubowitz Street Apt. 463','Port Paulville','Wa',0,21644624),
(282,'735','+84(4)7717899700','53305 Noe Run','Johnstonville','Io',0,2396329),
(283,'209','+20(5)6196375918','238 Nikko Lock Suite 326','Port Kaleigh','Vi',0,544),
(284,'514','1-987-144-8864x54376','018 Eudora Springs Suite 992','East Wileymouth','Ne',0,5015962),
(285,'121','227.660.5644','9075 Keshawn Stravenue','Port Laneview','Ut',0,640082977),
(286,'373','967.035.8965','22880 Weissnat Flats Apt. 197','Henrietteburgh','Di',0,20833),
(287,'616','1-640-543-5923','10541 Gaylord Field Apt. 099','New Tremaineberg','Ha',0,7063466),
(288,'886','1-286-921-8716','2740 Joesph Shoals Apt. 453','West Isabell','Ne',0,984),
(289,'546','239.298.6043x499','559 Norval Fort Apt. 328','Johnsontown','Fl',0,7659207),
(290,'331','765.639.1545','37629 Celestine Canyon Apt. 830','West Deborahville','Ne',0,35302872),
(291,'219','+47(4)9112556656','914 Upton Coves','Selenaview','Te',0,76301910),
(292,'441','382-870-8726','70607 Greenfelder Views','New Alexie','Wa',0,54668),
(293,'123','835-617-9849','6951 Carter Gateway','North Nadia','Rh',0,620896834),
(294,'806','(459)271-0541','67178 Wiegand Gardens','Port Thaddeus','Co',0,30805),
(295,'602','01758055061','025 Trycia Ford Apt. 500','East Ward','Co',0,9324832),
(296,'009','(239)318-7367','257 Schmeler Freeway','Stantonside','Ma',0,39122737),
(297,'165','1-852-414-9715','829 Madilyn Roads Apt. 267','West Ally','Te',0,3395475),
(298,'977','1-484-694-8783','7523 Goodwin Cape Suite 750','Lowellport','Ve',0,32696498),
(299,'179','1-653-776-5111x585','8645 Kayli Avenue','Lake Merlin','Wi',0,73303245),
(300,'571','(588)326-6993x7381','2244 Wiegand Harbor','East Heath','Al',0,119971),
(301,'889','222-089-9647x8152','542 Shaylee Burgs','Bogantown','Ne',0,4861021),
(302,'608','(373)358-9529x205','7845 Elna Junction','Schadenchester','Ne',0,7963254),
(303,'874','+32(5)1174923465','9826 Romaguera Port','Kiehnbury','Ne',0,34574),
(304,'897','1-228-216-2340x0452','12086 Mante Lock Suite 986','Myraberg','Ha',0,9757),
(305,'996','1-355-828-5016x35188','47053 Yolanda Causeway','Lake Elyssamouth','Ca',0,98094),
(306,'781','1-110-633-5510x2507','53288 Carmela Knoll Suite 621','Hauckside','Ne',0,97),
(307,'143','192-738-7561','438 Keebler Causeway','North Lenore','Ar',0,857272294),
(308,'871','134.917.8932','170 Herminio Place','South Freeda','Te',0,56),
(309,'125','1-812-694-8966x1594','034 Mante Run','Lake Americachester','We',0,450),
(310,'086','913-624-2570x29220','2287 Jaiden Garden','Adelinebury','Wi',0,4513),
(311,'674','(637)897-4445x42987','712 Celestino Village Suite 020','North Anahi','Co',0,85),
(312,'915','1-724-861-4287x5701','52062 Kautzer Fords Apt. 745','Jerdehaven','Ar',0,48510),
(313,'058','1-460-447-4067x60025','022 Alvena Branch Suite 905','West Sophia','Ok',0,741),
(314,'668','(056)302-1864x87186','548 Johns Corner','Kertzmannberg','Ca',0,86),
(315,'869','(038)485-0161','10709 Bernier Keys Apt. 501','Kaciside','Ar',0,536831033),
(316,'150','1-216-774-0371x095','172 Bernita Road','Nikolauston','De',0,9383142),
(317,'774','652-418-2842','9738 Buddy Mall','North Maximo','Io',0,35518011),
(318,'349','1-917-373-9181x405','67089 Quitzon Junctions Apt. 115','South Rene','Mo',0,77427614),
(319,'985','667-459-9247','615 Stephan Creek Suite 679','North Melvinaberg','Ok',0,69),
(320,'388','(660)258-7333x38784','701 Murphy Skyway Apt. 004','North Maud','Ne',0,71142033),
(321,'526','(276)146-7393','002 Gertrude Square Apt. 839','New Gracie','Ne',0,459),
(322,'600','+30(5)0646091930','146 Malika Port Apt. 895','Port Delbertshire','Ne',0,33507249),
(323,'041','1-304-124-7108x3708','08814 Flavie Viaduct Suite 940','West Madgeberg','Ca',0,4190),
(324,'127','1-049-247-9995x603','998 Ryann Fork','Vonport','Co',0,7121),
(325,'645','385.348.7718x45160','12120 Barrows Brooks Suite 486','Binsville','Ut',0,618366628),
(326,'168','396.378.8544x14281','42401 Feil Turnpike','East Patience','Ma',0,930),
(327,'370','1-265-920-5729x5973','1631 Carol Shoals','North Marilie','Ut',0,92287),
(328,'947','031.042.4259x068','29979 Pollich Junctions','Eichmannville','So',0,54014),
(329,'751','(356)575-7995','18071 Williamson Ville Suite 849','East Betty','Ha',0,6144),
(330,'471','1-246-300-7536x048','076 Graham Vista','North Elroy','No',0,663191242),
(331,'156','620.927.3371','043 Caroline Crossing Apt. 982','Amyburgh','Mi',0,5448538),
(332,'824','947-273-4768x63467','3800 Kohler Branch Suite 630','Josueburgh','Rh',0,3458),
(333,'509','1-407-148-2689x081','857 Krystel Knolls','New Dariusburgh','Ok',0,9432022),
(334,'519','058.157.8887x38685','44425 Wolf Dam','Fredyhaven','Io',0,99004),
(335,'975','02723677344','49552 Doyle Port','Barbaraborough','We',0,49584239),
(336,'253','751.505.6205','4853 Earline Isle Apt. 196','Linniemouth','Ne',0,220655),
(337,'231','025-558-9948x846','90828 Weimann Canyon','Daneborough','Ge',0,817),
(338,'410','492.241.6659','884 Ladarius Port','Lake Terenceshire','Al',0,1415),
(339,'429','(263)601-1857x8888','9018 Thea Views Apt. 722','New Caterinaland','Mi',0,7459427),
(340,'499','07013501570','521 Green Court Suite 422','North Camille','Fl',0,94778894),
(341,'841','1-460-103-4889x8832','124 Monique Coves Apt. 835','New Devenbury','So',0,525187),
(342,'310','1-909-977-9376x033','38863 McLaughlin Turnpike','Jimmiestad','Vi',0,897944293),
(343,'444','907-934-2280x395','585 Thompson Extension','Destinbury','Te',0,2452),
(344,'515','01843434499','8796 Justus Terrace Apt. 198','East Ewell','Wa',0,14487),
(345,'616','808.208.1771x59591','247 Oberbrunner Junction','Emiliamouth','Ma',0,687908858),
(346,'746','+94(3)9169610588','8999 Kobe Meadows Suite 088','Rathview','Io',0,747807327),
(347,'924','1-481-422-4678','1851 Hickle Rapid Suite 177','South Pinkieton','Di',0,60387259),
(348,'341','313-372-8401x00713','3611 Wilford Points','Jevonland','Vi',0,57716775),
(349,'610','+20(8)6663364920','37821 Thiel Lights Suite 574','Mohammedmouth','In',0,89393624),
(350,'807','611-974-4316x1292','3120 Murray Glen Suite 030','Kalebmouth','No',0,16782039),
(351,'410','(770)609-9158x555','67400 Annamarie Station','Handbury','Al',0,267),
(352,'908','+30(2)5391607308','28118 Ondricka Stream Suite 412','West Conorburgh','Wi',0,78380708),
(353,'835','1-933-612-9799','60422 Kub Crest Apt. 272','Nicolehaven','Ha',0,41697647),
(354,'932','1-456-979-8560x3270','2488 Brando Gardens','Lake Janick','Ma',0,92090),
(355,'424','1-751-056-5879x35740','59909 Tracy Walks Apt. 496','Legroston','Ne',0,695361),
(356,'702','243-493-4816','391 Bergnaum Crescent','Lesterfurt','Ne',0,413743),
(357,'890','915-502-0642','616 Roob Cove Apt. 071','Langtown','Ke',0,1382),
(358,'747','915-251-4052x3644','25459 Gerhold Motorway','New Margarettefort','Ne',0,371),
(359,'078','+97(7)9363588840','741 Gladys Heights','Port Fred','De',0,372746379),
(360,'774','08780821698','544 Koch Ports','East Turnerside','Ar',0,944330),
(361,'682','800-963-9549x855','0588 Conner Street','Melissabury','Io',0,9081111),
(362,'520','(687)744-7532x49504','35461 Nathan Rapid','South Urbanborough','Mo',0,2241),
(363,'240','006-486-8820x264','32197 Kyleigh Walks Apt. 745','Lake Jaidamouth','Mi',0,51184103),
(364,'946','1-032-693-6293x7640','61727 Jennie Rest','Bartshire','Rh',0,176193),
(365,'146','1-445-644-4894x566','2854 Dessie Centers','Maciebury','Pe',0,10967593),
(366,'883','875.379.7453','28812 Harber Ferry','Lake Dougfort','Ne',0,708241),
(367,'644','799.333.3318','980 Hyatt Shores','Lake Erlingfort','Il',0,378),
(368,'290','(344)283-4393x8631','970 Nathanael Gardens','New Rafaela','Ne',0,58614),
(369,'901','1-136-009-7653','697 Dana Drives Apt. 407','Port Hilbert','De',0,414874754),
(370,'409','963-640-1021x290','9571 Chloe Locks','South Jewelshire','Ma',0,271575),
(371,'906','03728231199','30417 Mayer Loaf Suite 763','Lake Jason','Ma',0,62),
(372,'781','(467)441-5830x0042','2066 Colten Burg Suite 514','Zboncakberg','We',0,59613),
(373,'838','943-051-0570x1063','206 Matteo Coves Suite 454','West Randal','Id',0,2333),
(374,'508','+98(1)8113488082','0958 Devante Forges','New Deltafort','Wy',0,56),
(375,'441','393-292-0262','20130 Sawayn Ridges','Lake Ellis','Ha',0,89710),
(376,'426','1-527-393-6453x8632','9412 Rippin Ridges','Alfonzohaven','Al',0,54095508),
(377,'328','(567)038-1060x440','832 O\'Connell Path Apt. 724','North Loraineside','Or',0,914),
(378,'723','(175)707-0370x935','03603 Daniel Junctions Apt. 205','Freidabury','Ar',0,9227025),
(379,'567','855.135.9197x9380','8791 Cordelia Station','North Melyssa','Vi',0,634459),
(380,'879','1-917-479-3186','085 Luna Prairie Suite 393','Saraimouth','Wa',0,60),
(381,'960','1-205-946-8526x55967','8411 Robert Expressway','Muellerstad','Ne',0,8886),
(382,'916','04939486902','0581 Nienow Fall','Jaylanport','Or',0,479300296),
(383,'605','354.354.3831x2287','85312 Farrell Ferry','Kianaburgh','Ut',0,121271778),
(384,'135','020-250-6422','7005 Jamil Turnpike','Walshchester','Ca',0,189388128),
(385,'973','(700)239-5814','949 Myra Viaduct Apt. 377','West Noemieville','No',0,54092),
(386,'114','421-688-2381x1376','887 Vince Bridge Suite 676','Timothyshire','Mi',0,74920006),
(387,'408','641-101-8995','59645 Annamarie Mission Apt. 001','Hoppehaven','Id',0,33892),
(388,'758','06993525942','546 Anabelle Port Apt. 609','South Rudolphport','Ma',0,84390563);
/*!40000 ALTER TABLE `PRODUCT_VENDOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ProductInfo`
--

DROP TABLE IF EXISTS `ProductInfo`;
/*!50001 DROP VIEW IF EXISTS `ProductInfo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ProductInfo` AS SELECT
 1 AS `ProductID`,
  1 AS `Product_Name`,
  1 AS `Product_Gender`,
  1 AS `Product_Type` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `RUNNING_SHOES`
--

DROP TABLE IF EXISTS `RUNNING_SHOES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RUNNING_SHOES` (
  `ProductID` char(4) NOT NULL,
  `Run_Material` varchar(100) NOT NULL,
  `Run_Stability` varchar(15) NOT NULL,
  `Run_HeelToToeDrop` varchar(20) NOT NULL,
  `Run_Weight` char(10) NOT NULL,
  PRIMARY KEY (`ProductID`),
  CONSTRAINT `RUNNING_SHOES_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `PRODUCT` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RUNNING_SHOES`
--

LOCK TABLES `RUNNING_SHOES` WRITE;
/*!40000 ALTER TABLE `RUNNING_SHOES` DISABLE KEYS */;
INSERT INTO `RUNNING_SHOES` VALUES
('1010','Polyster','High','High','12 oz'),
('1011','Polyster','Medium','High','10 oz'),
('1024','EVA','High','Medium','11 oz'),
('1111','cotton','Medium','High','9 oz'),
('1308','jacquard mesh upper','High','High','10 oz'),
('1456','Knit upper','High','High','11 oz'),
('1541','Synthetics','High','Low','14 oz'),
('2008','carbon composite plated','High','High','9.2 oz'),
('2118','thermoplastic elastomer polyurethane','High','High','10.7 oz'),
('2368','Skech-Knit mesh','Medium','Low','9 oz'),
('2698','vegan and recycled materials','Low','Medium','10.8 oz');
/*!40000 ALTER TABLE `RUNNING_SHOES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SOCCER_CLEATS`
--

DROP TABLE IF EXISTS `SOCCER_CLEATS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SOCCER_CLEATS` (
  `ProductID` char(4) NOT NULL,
  `Soc_Material` varchar(100) NOT NULL,
  `Soc_StudType` varchar(20) NOT NULL,
  `Soc_CleatType` varchar(20) NOT NULL,
  `Soc_TractionLevel` varchar(10) NOT NULL,
  PRIMARY KEY (`ProductID`),
  CONSTRAINT `SOCCER_CLEATS_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `PRODUCT` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SOCCER_CLEATS`
--

LOCK TABLES `SOCCER_CLEATS` WRITE;
/*!40000 ALTER TABLE `SOCCER_CLEATS` DISABLE KEYS */;
INSERT INTO `SOCCER_CLEATS` VALUES
('0012','Auxetic','Turf','FG','High'),
('1001','leather','Indoor','AG','Medium'),
('2011','Rubber','Firm','FG','High'),
('2128','leather','Turf','AG','High');
/*!40000 ALTER TABLE `SOCCER_CLEATS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STORE`
--

DROP TABLE IF EXISTS `STORE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STORE` (
  `StoreID` int(11) NOT NULL AUTO_INCREMENT,
  `Store_Name` varchar(20) NOT NULL,
  `Store_Brand` varchar(20) DEFAULT NULL,
  `Store_Address` varchar(100) NOT NULL,
  `Store_City` varchar(20) NOT NULL,
  `Store_State` varchar(2) NOT NULL,
  `Store_ZipCode` int(5) NOT NULL,
  `Store_Phone` varchar(20) NOT NULL,
  PRIMARY KEY (`StoreID`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STORE`
--

LOCK TABLES `STORE` WRITE;
/*!40000 ALTER TABLE `STORE` DISABLE KEYS */;
INSERT INTO `STORE` VALUES
(1,'802','aut','laboriosam','North Erick','Ha',0,'1-675-786-1517x47853'),
(2,'382','consequatur','alias','Ladariusbury','Lo',0,'+63(0)4513630274'),
(3,'617','omnis','ut','Albinaton','Ne',0,'518-530-9627'),
(4,'308','placeat','et','East Brandon','Ne',0,'(894)572-0496x489'),
(5,'Walmart','Nike','730 East Oak Street','Gainesville','FL',32432,'845-123-1231'),
(6,'349','qui','necessitatibus','East Sigmundhaven','Wa',0,'07086764620'),
(7,'281','cum','in','Hanefort','Ar',0,'247.364.5621'),
(8,'Amazon','Adidas','130 County Road','Miami','FL',12841,'827-123-1111'),
(9,'315','ratione','magni','Lake Marlin','Wa',0,'732-341-4632'),
(10,'595','unde','quia','Bashirianfort','Wy',0,'(030)042-7648x99859'),
(11,'Hibbet Sport','Champion','123 Dirt Roat','Curry Town','TX',32432,'852-145-1245'),
(12,'797','quia','harum','Cartwrightport','Wy',0,'+10(5)7565361901'),
(13,'746','quis','et','Gorczanymouth','Mi',0,'679.836.0283x61736'),
(14,'Foot Locker','Nike','730 East Oak Street','Gainesville','FL',32432,'845-123-1231'),
(15,'177','magni','vitae','Port Maeve','Ne',0,'706-975-3390'),
(16,'084','maxime','quisquam','Vincenzostad','No',0,'04587679460'),
(17,'Dicks Sport','Puma','112 West Street','AlleyVille','OH',11121,'545-53-2331'),
(18,'392','deserunt','sed','Aidachester','Or',0,'436.216.7769x0696'),
(19,'482','laudantium','ad','Emardhaven','Ar',0,'632-581-0199x81784'),
(20,'Teams','Nike','123 West Port','Orlando','FL',32432,'863-142-1623'),
(21,'989','officiis','incidunt','West Hilbertbury','Wy',0,'053.030.8305x5957'),
(22,'764','itaque','consectetur','Kiannabury','Ar',0,'1-545-669-5648x6898'),
(23,'Walmart','New Balance','132 East West Street','Wauchula','FL',33873,'863-123-1726'),
(24,'793','in','veritatis','New Anibalton','Rh',0,'324-774-6245'),
(25,'928','consectetur','corrupti','North Marcelinamouth','No',0,'1-098-075-6274x932'),
(26,'634','dolor','sequi','Roobburgh','Il',0,'(851)933-2328'),
(27,'896','in','harum','Wymanside','Ar',0,'+02(3)4532178054'),
(28,'489','dolores','expedita','New Imogene','Ok',0,'(445)455-6061'),
(29,'293','voluptate','in','Port Ottilieland','Vi',0,'751.647.4980'),
(30,'416','totam','provident','Hiramchester','Lo',0,'125-154-9891'),
(31,'740','mollitia','minima','Richietown','Ar',0,'(115)943-7713x76660'),
(32,'823','autem','quisquam','Lake Hanna','Ne',0,'05208491134'),
(33,'119','doloribus','accusantium','New Mckennaside','Fl',0,'173-947-4006x2407'),
(34,'744','sint','dolorem','South Albertafort','Ne',0,'(409)918-1759x983'),
(35,'788','minima','dolorum','Audiechester','Il',0,'447-122-6235'),
(36,'857','at','maxime','Demarcoland','Io',0,'1-040-443-5185'),
(37,'464','provident','ut','Robertsberg','Vi',0,'05980620483'),
(38,'826','aut','repellat','South Donnell','Ut',0,'554.170.7281'),
(39,'573','veritatis','deleniti','West Verlafort','Ar',0,'1-258-694-0032x653'),
(40,'139','temporibus','et','North Emma','Ma',0,'1-283-648-9187'),
(41,'213','aut','fuga','Larkinmouth','Fl',0,'283-297-2800'),
(42,'698','tenetur','velit','Beierfurt','Ne',0,'065.983.7441x8323'),
(43,'828','vel','totam','Creolaburgh','Wi',0,'1-466-103-9687'),
(44,'063','inventore','tenetur','Zionberg','Ve',0,'1-811-008-2291x8361'),
(45,'573','expedita','dolores','East Virgil','Ok',0,'(271)372-4698x24673'),
(46,'063','eveniet','rerum','Port Taraville','Oh',0,'648.755.6622x66420'),
(47,'704','ut','et','Dennisport','Te',0,'068.624.9844'),
(48,'998','sunt','qui','Janessaview','Il',0,'1-074-272-0895'),
(49,'322','dolor','ab','Milfordbury','Mi',0,'1-655-684-1977'),
(50,'264','quo','similique','Erinfurt','Io',0,'524.233.5423x1560'),
(51,'939','placeat','reiciendis','North Edwinville','Di',0,'(065)670-8477x13109'),
(52,'611','praesentium','nobis','Port Masonberg','Lo',0,'(680)362-4467x36702'),
(53,'264','totam','accusantium','Feilport','Lo',0,'105.243.5830x973'),
(54,'360','molestiae','eum','West Genevieveshire','Il',0,'(568)506-7662x05031'),
(55,'603','ut','et','New Edyth','Ka',0,'154-879-2961x9627'),
(56,'397','suscipit','eos','Monahanmouth','Mi',0,'055.034.9602'),
(57,'420','consequatur','nihil','Hayesville','Ca',0,'561.910.4787x8035'),
(58,'573','saepe','ab','Lake Ezrachester','Mi',0,'(728)680-2413'),
(59,'736','libero','inventore','South Rupert','Il',0,'(611)176-7860'),
(60,'515','ut','cupiditate','Marjoryshire','Ut',0,'483-607-2676'),
(61,'038','voluptatem','minus','Gilbertbury','Ne',0,'(922)052-3453x6717'),
(62,'240','nobis','iure','New London','Mi',0,'1-807-306-6714x3407'),
(63,'144','soluta','officia','Jonesborough','Mi',0,'887.721.6121'),
(64,'512','dolorem','labore','Margieton','Ut',0,'1-972-260-7171x259'),
(65,'014','qui','enim','Lake Claudiashire','Io',0,'(087)366-4313'),
(66,'259','et','quibusdam','East Lizzietown','Id',0,'902-224-6623'),
(67,'075','a','est','Ariannaburgh','Rh',0,'450.738.1785x452'),
(68,'812','adipisci','fuga','Binston','Or',0,'1-294-627-2347x422'),
(69,'245','molestias','facere','Abbottberg','Mi',0,'+49(4)2918377738'),
(70,'196','et','sit','Port Cortezfort','Ve',0,'1-853-806-0579'),
(71,'508','molestiae','a','Funkbury','Mi',0,'07197248960'),
(72,'324','sapiente','assumenda','Port Bettyhaven','Wa',0,'1-015-488-4055'),
(73,'557','labore','officiis','Kaseytown','Ca',0,'06937242957'),
(74,'602','expedita','dolor','Pfefferfort','Ar',0,'(538)179-2337'),
(75,'800','quia','et','Lake Jaleel','So',0,'07438692703'),
(76,'110','numquam','eos','Rosendoland','Ca',0,'1-957-288-4669'),
(77,'348','rerum','ut','West Jesse','Ka',0,'584-150-2102x214'),
(78,'806','numquam','qui','Port Keven','Rh',0,'1-893-771-1247x505'),
(79,'618','ab','quasi','West Lutherfort','We',0,'1-909-311-7271x3680'),
(80,'424','officia','omnis','New Aronview','Id',0,'(831)933-5567x982'),
(81,'645','et','eos','North Jarred','In',0,'(415)208-3623x55839'),
(82,'530','ex','facere','Lake Angelicabury','Mo',0,'1-615-362-1002x086'),
(83,'965','quisquam','quia','North Lillian','Pe',0,'550-917-6612x37345'),
(84,'842','sapiente','in','West Evalyn','Di',0,'(994)586-6991'),
(85,'223','magni','distinctio','Dickitown','Mi',0,'365-147-6175x715'),
(86,'408','maiores','quo','Simfort','Mi',0,'(262)313-9104'),
(87,'821','incidunt','ipsa','Gaylordfurt','Io',0,'241.766.5100'),
(88,'795','mollitia','vel','New Inesside','No',0,'278.468.7353'),
(89,'485','necessitatibus','labore','Leschmouth','No',0,'1-159-121-3359x849'),
(90,'470','omnis','ducimus','Lake Yvonne','Fl',0,'1-621-798-8893x183'),
(91,'689','recusandae','quis','Blandaberg','Co',0,'(297)449-7728x705'),
(92,'749','et','nostrum','New Freemanberg','Wy',0,'971.415.2486x355'),
(93,'002','minima','omnis','South Jett','Ut',0,'958-991-2493'),
(94,'465','aliquam','consequuntur','South Alverta','Wa',0,'476-774-2354x23774'),
(95,'956','id','accusamus','South Alexandre','Co',0,'906.715.2097x104'),
(96,'388','asperiores','est','Torphyfort','Wi',0,'1-938-479-9682'),
(97,'924','recusandae','sapiente','Port Ericaland','Ka',0,'00494110982'),
(98,'474','in','et','Doylefurt','Pe',0,'1-004-171-1285x77308'),
(99,'692','id','sed','Uptonshire','Co',0,'(285)008-2096x89546'),
(100,'249','cupiditate','sed','Dietrichchester','No',0,'865-616-1250x00572'),
(101,'249','cupiditate','sed','Dietrichchester','No',0,'865-616-1250x00572'),
(102,'249','cupiditate','sed','Dietrichchester','No',0,'865-616-1250x00572'),
(103,'249','cupiditate','sed','Dietrichchester','No',0,'865-616-1250x00572'),
(104,'249','cupiditate','sed','Dietrichchester','No',0,'865-616-1250x00572'),
(105,'249','cupiditate','sed','Dietrichchester','No',0,'865-616-1250x00572');
/*!40000 ALTER TABLE `STORE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SalesReport`
--

DROP TABLE IF EXISTS `SalesReport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SalesReport` (
  `ReportID` int(5) NOT NULL,
  `StoreID` int(3) NOT NULL,
  `Report_BegDate` date NOT NULL,
  `Report_EndDate` date NOT NULL,
  `Report_TotalSales` decimal(15,2) NOT NULL,
  PRIMARY KEY (`ReportID`),
  KEY `StoreID` (`StoreID`),
  CONSTRAINT `SalesReport_ibfk_1` FOREIGN KEY (`StoreID`) REFERENCES `STORE` (`StoreID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SalesReport`
--

LOCK TABLES `SalesReport` WRITE;
/*!40000 ALTER TABLE `SalesReport` DISABLE KEYS */;
INSERT INTO `SalesReport` VALUES
(10201,17,'2023-07-01','2023-07-30',450000.00),
(10212,8,'2023-07-01','2023-07-30',630000.00),
(10217,17,'2023-04-01','2023-04-30',450000.00),
(10239,11,'2023-05-01','2023-05-30',124000.00),
(10241,5,'2023-01-01','2023-01-30',9000000.00),
(10245,100,'2023-02-01','0000-00-00',1570000.00),
(10326,5,'2023-01-01','2023-01-01',5000000.00),
(10333,1,'2023-09-01','2023-09-30',50000.00),
(10444,2,'2023-09-01','2023-09-30',40000.00),
(10555,3,'2023-06-01','2023-06-30',4530000.00),
(10666,4,'2023-07-01','2023-07-30',4560000.00),
(10777,5,'2023-04-01','2023-04-30',4590000.00),
(14501,11,'2023-02-01','0000-00-00',1450000.00),
(100001,8,'2023-01-01','2023-01-30',140000.00),
(101001,9,'2023-05-01','2023-05-30',3000000.00);
/*!40000 ALTER TABLE `SalesReport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `INVOICE_TOTAL`
--

/*!50001 DROP VIEW IF EXISTS `INVOICE_TOTAL`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`reugene2284`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `INVOICE_TOTAL` AS select sum(`INVOICE`.`Total_Price`) AS `SUM(Total_Price)` from `INVOICE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ProductInfo`
--

/*!50001 DROP VIEW IF EXISTS `ProductInfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`reugene2284`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ProductInfo` AS select `PRODUCT`.`ProductID` AS `ProductID`,`PRODUCT`.`Product_Name` AS `Product_Name`,`PRODUCT`.`Product_Gender` AS `Product_Gender`,`PRODUCT`.`Product_Type` AS `Product_Type` from `PRODUCT` where (`PRODUCT`.`Product_Type` = 'SC') order by `PRODUCT`.`ProductID` */;
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

-- Dump completed on 2023-08-06 22:13:44
