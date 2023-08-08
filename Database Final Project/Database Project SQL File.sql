-- Creating database

CREATE DATABASE reugene2284_DB_FitFootwearCo;
USE reugene2284_DB_FitFootwearCo;
-- Table Structure for Database

-- BRAND TABLE
CREATE TABLE BRAND(
BrandID CHAR(4) NOT NULL PRIMARY KEY,
Brand_Name VARCHAR(20) NOT NULL,
Brand_Description VARCHAR(3000) NOT NULL,
Brand_AthleteRep VARCHAR(100), -- Name of endorsed athlete
Brand_Value DECIMAL(15,2) NOT NULL);

-- Inserting values into BRAND (-- Nike, Adidas, Puma, Champion, New balance,) Shoes needed in order, product, and inventory(needs to be 100+ rows)
INSERT INTO BRAND VALUES('0001','Nike','Nike is best known for its footwear, apparel, and equipment','Lebron James',1000000000.00);
INSERT INTO BRAND VALUES('0002','Puma','a German multinational corporation that designs and manufactures athletic and casual footwear, apparel and accessories','Lionel Messi',9000000000.00);
INSERT INTO BRAND VALUES('0003','Champion','a brand of clothing, specializing in sportswear owned and marketed by American apparel company Hanesbrands','Usain Bolt',6000000000.00);
INSERT INTO BRAND VALUES('0004','New Balance','Manufactured in the US for over 75 years and representing a limited portion of our US sales','Usain Bolt',7000000000.00);
INSERT INTO BRAND VALUES('0005','Adidas','German manufacturer of athletic shoes and apparel and sporting goods','Lionel Messi',2000000000.00);
INSERT INTO BRAND VALUES('0006','Converse','an American lifestyle brand that markets, distributes, and licenses footwear, apparel, and accessories','Lebron James',3000000000.00);
INSERT INTO BRAND VALUES('0007','Hoda',' leading Japanese manufacturer of motorcycles and a major producer of automobiles for the world market','Lionel Messi',2500000000.00);
INSERT INTO BRAND VALUES('0008','ON','helping a company present the image of itself and its products that it wants to present','Usain Bolt',7500000000.00);
INSERT INTO BRAND VALUES('0009','Reebok','designs, manufactures, distributes and sells fitness, running and CrossFit sportswear including clothing and accessories','Lebron James',6300000000.00);
INSERT INTO BRAND VALUES('0010','Under Armor',' creating state-of-the-art products engineered to make competitors better','Stephen Curry',7800000000.00);
INSERT INTO BRAND VALUES('0011','Skechers','designs, develops and markets a range of lifestyle and performance footwear','Lionel Messi',6200000000.00);
INSERT INTO BRAND VALUES('0012','Asics','Asics is best known for its sneakers but also produces other footwear such as sandals, as well as clothing','Jackie Kersee',25000000.00);


-- STORE TABLE
CREATE TABLE STORE(
StoreID INTEGER PRIMARY KEY AUTO_INCREMENT, -- insert 'NULL' into StoreID parameter
Store_Name VARCHAR(20) NOT NULL,
Store_Brand VARCHAR(20)  CHECK (Store_Brand >= 0),
Store_Address VARCHAR(100) NOT NULL,
Store_City VARCHAR(20) NOT NULL,
Store_State VARCHAR(2) NOT NULL,
Store_ZipCode INT(5) NOT NULL,
Store_Phone VARCHAR(20) NOT NULL);

-- Inserting values into STORE
INSERT INTO STORE VALUES(NULL,'Walmart','Nike','730 East Oak Street','Gainesville','FL','32432','845-123-1231');
INSERT INTO STORE VALUES(NULL,'Amazon','Adidas','130 County Road','Miami','FL','12841','827-123-1111');
INSERT INTO STORE VALUES(NULL,'Hibbet Sport','Champion','123 Dirt Roat','Curry Town','TX','32432','852-145-1245');
INSERT INTO STORE VALUES(NULL,'Foot Locker','Nike','730 East Oak Street','Gainesville','FL','32432','845-123-1231');
INSERT INTO STORE VALUES(NULL,'Dicks Sport','Puma','112 West Street','AlleyVille','OH','11121','545-53-2331');
INSERT INTO STORE VALUES(NULL,'Teams','Nike','123 West Port','Orlando','FL','32432','863-142-1623');
INSERT INTO STORE VALUES(NULL,'Walmart','New Balance','132 East West Street','Wauchula','FL','33873','863-123-1726');
-- Dummy data for STORE
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (1, '802', 'aut', 'laboriosam', 'North Erick', 'Ha', 0, '1-675-786-1517x47853');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (2, '382', 'consequatur', 'alias', 'Ladariusbury', 'Lo', 0, '+63(0)4513630274');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (3, '617', 'omnis', 'ut', 'Albinaton', 'Ne', 0, '518-530-9627');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (4, '308', 'placeat', 'et', 'East Brandon', 'Ne', 0, '(894)572-0496x489');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (6, '349', 'qui', 'necessitatibus', 'East Sigmundhaven', 'Wa', 0, '07086764620');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (7, '281', 'cum', 'in', 'Hanefort', 'Ar', 0, '247.364.5621');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (9, '315', 'ratione', 'magni', 'Lake Marlin', 'Wa', 0, '732-341-4632');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (10, '595', 'unde', 'quia', 'Bashirianfort', 'Wy', 0, '(030)042-7648x99859');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (12, '797', 'quia', 'harum', 'Cartwrightport', 'Wy', 0, '+10(5)7565361901');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (13, '746', 'quis', 'et', 'Gorczanymouth', 'Mi', 0, '679.836.0283x61736');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (15, '177', 'magni', 'vitae', 'Port Maeve', 'Ne', 0, '706-975-3390');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (16, '084', 'maxime', 'quisquam', 'Vincenzostad', 'No', 0, '04587679460');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (18, '392', 'deserunt', 'sed', 'Aidachester', 'Or', 0, '436.216.7769x0696');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (19, '482', 'laudantium', 'ad', 'Emardhaven', 'Ar', 0, '632-581-0199x81784');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (21, '989', 'officiis', 'incidunt', 'West Hilbertbury', 'Wy', 0, '053.030.8305x5957');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (22, '764', 'itaque', 'consectetur', 'Kiannabury', 'Ar', 0, '1-545-669-5648x6898');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (24, '793', 'in', 'veritatis', 'New Anibalton', 'Rh', 0, '324-774-6245');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (25, '928', 'consectetur', 'corrupti', 'North Marcelinamouth', 'No', 0, '1-098-075-6274x932');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (26, '634', 'dolor', 'sequi', 'Roobburgh', 'Il', 0, '(851)933-2328');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (27, '896', 'in', 'harum', 'Wymanside', 'Ar', 0, '+02(3)4532178054');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (28, '489', 'dolores', 'expedita', 'New Imogene', 'Ok', 0, '(445)455-6061');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (29, '293', 'voluptate', 'in', 'Port Ottilieland', 'Vi', 0, '751.647.4980');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (30, '416', 'totam', 'provident', 'Hiramchester', 'Lo', 0, '125-154-9891');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (31, '740', 'mollitia', 'minima', 'Richietown', 'Ar', 0, '(115)943-7713x76660');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (32, '823', 'autem', 'quisquam', 'Lake Hanna', 'Ne', 0, '05208491134');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (33, '119', 'doloribus', 'accusantium', 'New Mckennaside', 'Fl', 0, '173-947-4006x2407');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (34, '744', 'sint', 'dolorem', 'South Albertafort', 'Ne', 0, '(409)918-1759x983');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (35, '788', 'minima', 'dolorum', 'Audiechester', 'Il', 0, '447-122-6235');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (36, '857', 'at', 'maxime', 'Demarcoland', 'Io', 0, '1-040-443-5185');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (37, '464', 'provident', 'ut', 'Robertsberg', 'Vi', 0, '05980620483');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (38, '826', 'aut', 'repellat', 'South Donnell', 'Ut', 0, '554.170.7281');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (39, '573', 'veritatis', 'deleniti', 'West Verlafort', 'Ar', 0, '1-258-694-0032x653');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (40, '139', 'temporibus', 'et', 'North Emma', 'Ma', 0, '1-283-648-9187');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (41, '213', 'aut', 'fuga', 'Larkinmouth', 'Fl', 0, '283-297-2800');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (42, '698', 'tenetur', 'velit', 'Beierfurt', 'Ne', 0, '065.983.7441x8323');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (43, '828', 'vel', 'totam', 'Creolaburgh', 'Wi', 0, '1-466-103-9687');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (44, '063', 'inventore', 'tenetur', 'Zionberg', 'Ve', 0, '1-811-008-2291x8361');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (45, '573', 'expedita', 'dolores', 'East Virgil', 'Ok', 0, '(271)372-4698x24673');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (46, '063', 'eveniet', 'rerum', 'Port Taraville', 'Oh', 0, '648.755.6622x66420');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (47, '704', 'ut', 'et', 'Dennisport', 'Te', 0, '068.624.9844');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (48, '998', 'sunt', 'qui', 'Janessaview', 'Il', 0, '1-074-272-0895');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (49, '322', 'dolor', 'ab', 'Milfordbury', 'Mi', 0, '1-655-684-1977');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (50, '264', 'quo', 'similique', 'Erinfurt', 'Io', 0, '524.233.5423x1560');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (51, '939', 'placeat', 'reiciendis', 'North Edwinville', 'Di', 0, '(065)670-8477x13109');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (52, '611', 'praesentium', 'nobis', 'Port Masonberg', 'Lo', 0, '(680)362-4467x36702');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (53, '264', 'totam', 'accusantium', 'Feilport', 'Lo', 0, '105.243.5830x973');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (54, '360', 'molestiae', 'eum', 'West Genevieveshire', 'Il', 0, '(568)506-7662x05031');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (55, '603', 'ut', 'et', 'New Edyth', 'Ka', 0, '154-879-2961x9627');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (56, '397', 'suscipit', 'eos', 'Monahanmouth', 'Mi', 0, '055.034.9602');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (57, '420', 'consequatur', 'nihil', 'Hayesville', 'Ca', 0, '561.910.4787x8035');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (58, '573', 'saepe', 'ab', 'Lake Ezrachester', 'Mi', 0, '(728)680-2413');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (59, '736', 'libero', 'inventore', 'South Rupert', 'Il', 0, '(611)176-7860');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (60, '515', 'ut', 'cupiditate', 'Marjoryshire', 'Ut', 0, '483-607-2676');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (61, '038', 'voluptatem', 'minus', 'Gilbertbury', 'Ne', 0, '(922)052-3453x6717');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (62, '240', 'nobis', 'iure', 'New London', 'Mi', 0, '1-807-306-6714x3407');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (63, '144', 'soluta', 'officia', 'Jonesborough', 'Mi', 0, '887.721.6121');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (64, '512', 'dolorem', 'labore', 'Margieton', 'Ut', 0, '1-972-260-7171x259');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (65, '014', 'qui', 'enim', 'Lake Claudiashire', 'Io', 0, '(087)366-4313');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (66, '259', 'et', 'quibusdam', 'East Lizzietown', 'Id', 0, '902-224-6623');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (67, '075', 'a', 'est', 'Ariannaburgh', 'Rh', 0, '450.738.1785x452');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (68, '812', 'adipisci', 'fuga', 'Binston', 'Or', 0, '1-294-627-2347x422');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (69, '245', 'molestias', 'facere', 'Abbottberg', 'Mi', 0, '+49(4)2918377738');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (70, '196', 'et', 'sit', 'Port Cortezfort', 'Ve', 0, '1-853-806-0579');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (71, '508', 'molestiae', 'a', 'Funkbury', 'Mi', 0, '07197248960');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (72, '324', 'sapiente', 'assumenda', 'Port Bettyhaven', 'Wa', 0, '1-015-488-4055');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (73, '557', 'labore', 'officiis', 'Kaseytown', 'Ca', 0, '06937242957');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (74, '602', 'expedita', 'dolor', 'Pfefferfort', 'Ar', 0, '(538)179-2337');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (75, '800', 'quia', 'et', 'Lake Jaleel', 'So', 0, '07438692703');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (76, '110', 'numquam', 'eos', 'Rosendoland', 'Ca', 0, '1-957-288-4669');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (77, '348', 'rerum', 'ut', 'West Jesse', 'Ka', 0, '584-150-2102x214');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (78, '806', 'numquam', 'qui', 'Port Keven', 'Rh', 0, '1-893-771-1247x505');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (79, '618', 'ab', 'quasi', 'West Lutherfort', 'We', 0, '1-909-311-7271x3680');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (80, '424', 'officia', 'omnis', 'New Aronview', 'Id', 0, '(831)933-5567x982');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (81, '645', 'et', 'eos', 'North Jarred', 'In', 0, '(415)208-3623x55839');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (82, '530', 'ex', 'facere', 'Lake Angelicabury', 'Mo', 0, '1-615-362-1002x086');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (83, '965', 'quisquam', 'quia', 'North Lillian', 'Pe', 0, '550-917-6612x37345');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (84, '842', 'sapiente', 'in', 'West Evalyn', 'Di', 0, '(994)586-6991');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (85, '223', 'magni', 'distinctio', 'Dickitown', 'Mi', 0, '365-147-6175x715');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (86, '408', 'maiores', 'quo', 'Simfort', 'Mi', 0, '(262)313-9104');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (87, '821', 'incidunt', 'ipsa', 'Gaylordfurt', 'Io', 0, '241.766.5100');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (88, '795', 'mollitia', 'vel', 'New Inesside', 'No', 0, '278.468.7353');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (89, '485', 'necessitatibus', 'labore', 'Leschmouth', 'No', 0, '1-159-121-3359x849');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (90, '470', 'omnis', 'ducimus', 'Lake Yvonne', 'Fl', 0, '1-621-798-8893x183');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (91, '689', 'recusandae', 'quis', 'Blandaberg', 'Co', 0, '(297)449-7728x705');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (92, '749', 'et', 'nostrum', 'New Freemanberg', 'Wy', 0, '971.415.2486x355');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (93, '002', 'minima', 'omnis', 'South Jett', 'Ut', 0, '958-991-2493');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (94, '465', 'aliquam', 'consequuntur', 'South Alverta', 'Wa', 0, '476-774-2354x23774');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (95, '956', 'id', 'accusamus', 'South Alexandre', 'Co', 0, '906.715.2097x104');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (96, '388', 'asperiores', 'est', 'Torphyfort', 'Wi', 0, '1-938-479-9682');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (97, '924', 'recusandae', 'sapiente', 'Port Ericaland', 'Ka', 0, '00494110982');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (98, '474', 'in', 'et', 'Doylefurt', 'Pe', 0, '1-004-171-1285x77308');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (99, '692', 'id', 'sed', 'Uptonshire', 'Co', 0, '(285)008-2096x89546');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (100, '249', 'cupiditate', 'sed', 'Dietrichchester', 'No', 0, '865-616-1250x00572');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (101, '249', 'cupiditate', 'sed', 'Dietrichchester', 'No', 0, '865-616-1250x00572');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (102, '249', 'cupiditate', 'sed', 'Dietrichchester', 'No', 0, '865-616-1250x00572');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (103, '249', 'cupiditate', 'sed', 'Dietrichchester', 'No', 0, '865-616-1250x00572');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (104, '249', 'cupiditate', 'sed', 'Dietrichchester', 'No', 0, '865-616-1250x00572');
INSERT INTO `STORE` (`StoreID`, `Store_Name`, `Store_Brand`, `Store_Address`, `Store_City`, `Store_State`, `Store_ZipCode`, `Store_Phone`) VALUES (105, '249', 'cupiditate', 'sed', 'Dietrichchester', 'No', 0, '865-616-1250x00572');

-- EMPLOYEE TABLE
CREATE TABLE EMPLOYEE(
  EmployeeID INTEGER AUTO_INCREMENT PRIMARY KEY, -- auto surrogate key
  Emp_FName VARCHAR(20) NOT NULL,
  Emp_LName VARCHAR(20) NOT NULL,
  Emp_Position VARCHAR(50) NOT NULL,
  Emp_HireDate DATE NOT NULL,
  Emp_Salary DECIMAL(10,2)
);

-- Inserting values into EMPLOYEE
INSERT INTO EMPLOYEE VALUES(NULL,'James','Green','Commercial','2015-02-20','50000.00');
INSERT INTO EMPLOYEE VALUES(NULL,'Olive','Willy','Sales','2017-05-12','50000.00');
INSERT INTO EMPLOYEE VALUES(NULL,'Cassy','Brown','CRM','2020-12-01','45000.00');
INSERT INTO EMPLOYEE VALUES(NULL,'James','Smithson','General Manager','2014-09-12','80000.00');
INSERT INTO EMPLOYEE VALUES(NULL,'Bob','Rose','Assistant Manager','2017-06-25','65000.00');
INSERT INTO EMPLOYEE VALUES(NULL,'Gabriel','Casey','Data Collection Specialist','2020-12-01','48000.00');
INSERT INTO EMPLOYEE VALUES(NULL,'Oakley','James','Sales','2018-02-01','35000.00');
INSERT INTO EMPLOYEE VALUES(NULL,'Ally','Gibson','Customer Service','2015-02-20','33000.00');
INSERT INTO EMPLOYEE VALUES(NULL,'Gabby','Charles','Customer Service','2016-12-21','30000.00');
INSERT INTO EMPLOYEE VALUES(NULL,'Robert','Green','Commercial','2019-03-14','20000.00');
INSERT INTO EMPLOYEE VALUES(NULL,'Nick','Rosen','IT','2015-11-12','55000.00');

-- Dummy data for EMPLOYEE
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (1, '189', '597', 'ea', '1970-03-14', '9.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (2, '822', '282', 'ad', '2004-11-29', '9.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (3, '537', '768', 'impedit', '1987-01-21', '9.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (4, '280', '132', 'libero', '1988-09-30', '7.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (6, '046', '741', 'at', '2005-07-16', '7.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (7, '193', '480', 'ut', '1971-10-14', '9.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (9, '829', '176', 'neque', '1985-04-26', '6.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (10, '466', '066', 'quam', '1976-10-22', '9.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (12, '309', '267', 'qui', '1978-11-12', '6.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (13, '569', '003', 'maxime', '1994-02-19', '9.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (15, '232', '407', 'nesciunt', '1978-01-14', '0.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (16, '840', '293', 'repellat', '1981-04-27', '7.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (18, '334', '404', 'vero', '1973-11-02', '1.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (19, '549', '631', 'soluta', '2020-07-29', '4.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (21, '102', '609', 'qui', '2000-12-27', '2.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (22, '653', '350', 'autem', '2009-04-17', '8.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (24, '325', '159', 'et', '2012-10-28', '8.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (25, '859', '130', 'eos', '2009-03-19', '9.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (27, '997', '471', 'facere', '1991-05-02', '9.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (28, '762', '932', 'fuga', '1995-09-07', '8.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (30, '778', '320', 'voluptatibus', '1972-06-13', '5.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (31, '287', '504', 'esse', '1995-01-26', '9.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (33, '620', '767', 'rerum', '1983-10-27', '7.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (34, '500', '499', 'quisquam', '2000-12-15', '7.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (36, '289', '099', 'laborum', '2018-08-30', '3.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (37, '479', '796', 'quas', '1998-11-08', '5.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (38, '490', '305', 'suscipit', '2019-04-12', '6.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (39, '882', '928', 'non', '1997-08-30', '7.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (40, '769', '753', 'provident', '2005-10-13', '5.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (41, '897', '680', 'odio', '2022-11-23', '1.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (42, '368', '317', 'fugiat', '2010-09-25', '3.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (43, '029', '386', 'omnis', '1988-04-24', '1.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (44, '900', '426', 'quis', '2015-03-18', '2.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (45, '051', '660', 'ab', '1998-02-07', '1.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (46, '596', '895', 'et', '1988-10-27', '0.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (47, '166', '540', 'cumque', '2019-08-28', '0.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (48, '201', '329', 'vel', '2012-11-30', '6.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (49, '581', '071', 'enim', '2007-08-27', '4.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (50, '109', '095', 'facere', '2015-06-13', '3.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (51, '562', '244', 'quia', '1983-03-02', '9.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (52, '113', '780', 'unde', '2010-11-03', '4.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (53, '170', '779', 'atque', '1974-02-16', '8.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (54, '674', '145', 'dignissimos', '1993-07-27', '9.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (55, '794', '563', 'eos', '1998-11-05', '3.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (56, '249', '133', 'quos', '1991-01-18', '0.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (57, '050', '641', 'nihil', '1989-02-14', '4.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (58, '469', '555', 'voluptatem', '2018-07-13', '4.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (59, '719', '554', 'veniam', '2003-03-27', '1.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (60, '644', '945', 'voluptas', '1973-12-30', '8.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (61, '618', '012', 'voluptatem', '1981-02-16', '8.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (62, '225', '548', 'laborum', '1971-06-25', '3.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (63, '117', '996', 'ipsum', '1978-03-28', '0.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (64, '994', '377', 'dicta', '1994-01-28', '2.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (65, '053', '975', 'omnis', '2022-11-23', '7.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (66, '269', '889', 'rerum', '2015-04-19', '2.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (67, '654', '522', 'cumque', '2015-09-04', '2.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (68, '630', '146', 'ut', '1985-12-26', '3.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (69, '703', '737', 'nesciunt', '1976-09-29', '0.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (70, '908', '359', 'aut', '1991-03-05', '7.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (71, '798', '440', 'qui', '1996-06-20', '5.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (72, '818', '782', 'ut', '1970-06-08', '7.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (73, '450', '041', 'veritatis', '1977-12-29', '0.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (74, '541', '124', 'eos', '2001-09-28', '0.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (75, '734', '142', 'dolorem', '1982-10-18', '9.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (76, '931', '692', 'aliquam', '1972-09-04', '9.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (77, '868', '164', 'molestiae', '2021-02-07', '9.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (78, '604', '484', 'aut', '1979-07-03', '3.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (79, '364', '421', 'qui', '1971-03-10', '5.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (80, '000', '111', 'dolor', '1972-12-04', '7.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (81, '149', '712', 'sit', '2014-08-02', '5.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (82, '723', '497', 'molestias', '1994-09-30', '6.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (83, '561', '402', 'eum', '1980-05-11', '9.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (84, '936', '965', 'laborum', '1984-12-31', '1.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (85, '935', '184', 'culpa', '2001-03-27', '7.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (86, '580', '770', 'eligendi', '1972-04-26', '3.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (87, '647', '613', 'sapiente', '2003-06-17', '6.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (88, '811', '216', 'ducimus', '1974-04-11', '9.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (89, '610', '683', 'eius', '2001-09-25', '2.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (90, '220', '884', 'placeat', '2009-09-30', '1.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (91, '711', '512', 'possimus', '2010-04-17', '4.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (92, '887', '873', 'possimus', '1976-09-26', '8.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (93, '853', '636', 'facere', '1994-03-30', '4.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (94, '448', '880', 'quam', '2009-01-28', '6.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (95, '104', '649', 'voluptas', '1990-01-13', '2.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (96, '321', '848', 'qui', '1990-03-09', '8.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (97, '318', '136', 'explicabo', '2011-12-26', '9.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (98, '366', '411', 'laborum', '2023-07-21', '2.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (99, '507', '300', 'illo', '2011-05-27', '5.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (100, '022', '841', 'dolorem', '1989-08-16', '5.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (101, '351', '310', 'ratione', '2017-01-10', '4.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (102, '626', '947', 'vel', '2004-10-27', '6.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (103, '278', '152', 'non', '2018-06-06', '7.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (104, '657', '866', 'recusandae', '2008-04-18', '2.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (105, '357', '851', 'dolorum', '2021-05-11', '4.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (106, '324', '078', 'est', '1984-11-04', '1.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (107, '534', '842', 'fugit', '1972-01-27', '3.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (108, '126', '054', 'deleniti', '1977-07-27', '5.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (109, '933', '398', 'a', '1973-06-30', '0.00');
INSERT INTO `EMPLOYEE` (`EmployeeID`, `Emp_FName`, `Emp_LName`, `Emp_Position`, `Emp_HireDate`, `Emp_Salary`) VALUES (110, '299', '131', 'ad', '1971-01-12', '5.00');      


CREATE TABLE CUSTOMER(
CustomerID INT(5) UNIQUE NOT NULL PRIMARY KEY,
Cus_FName VARCHAR(20) NOT NULL,
Cus_LName VARCHAR(20) NOT NULL,
Cus_Email VARCHAR(100) NOT NULL,
Cus_Address VARCHAR(100) NOT NULL,
Cus_City VARCHAR(50) NOT NULL,
Cus_State VARCHAR(2) NOT NULL,
Cus_ZipCode INT(5) NOT NULL);

-- Inserting values into CUSTOMER
INSERT INTO CUSTOMER VALUES('1001','Ella','King','AKing@yahoo.com','732 East Oak Street','Wauchula','FL','33873');
INSERT INTO CUSTOMER VALUES('1002','Luka','Sweeney','LSweeney@gmail.com','3139 Chicago Avenue','Fresno','CA','93721');
INSERT INTO CUSTOMER VALUES('1003','Aitana','Olsen','AOlsen@hotmail.com','4060 Diamond Street','Charlotte','NC','28202');
INSERT INTO CUSTOMER VALUES('1011','Leland','Gibbs','LGibbs@yahoo.com','3618 Bedford Street','Stamford','CO','06995');
INSERT INTO CUSTOMER VALUES('1012','Mylah','Sanchez','MSanchez@gmail.com','3005 Williams Lane','Wichita','KA','67214');
INSERT INTO CUSTOMER VALUES('1013','Etta','Carter','ECarter@google.com','1839 Carolyns Circle','Dallas','TX','75202');
INSERT INTO CUSTOMER VALUES('1014','Julian','Garcia','JGarcia@gmail.com','353 Emeral Dreams Drive','Nelson','IL','61058');
INSERT INTO CUSTOMER VALUES('1015','Tyler','Palacios','TPalacios@google.com','2494 Bruce Street','Riverside','CA','92501');
INSERT INTO CUSTOMER VALUES('1016','Adele','Torres','ATorres@hotmail.com','3264 Cardinal Lane','Decatur','IL','62522');
INSERT INTO CUSTOMER VALUES('1017','Amelia','Silva','ASilva@hotmail.com','4295 Cambridge Court','Scranton','AK','72863');
INSERT INTO CUSTOMER VALUES('1018','Jada','Wilkins','JWilkins@google.com','1399 Settlers Lane','Tampa','FL','33609');
INSERT INTO CUSTOMER VALUES('1019','Amir','Harmon','AHarmon@gmail.com','259 Patterson Road','Brooklyn','NY','11201');
INSERT INTO CUSTOMER VALUES('1020','Ryan','Morris','RMorris@gmail.com','4099 College View','Carbondale','IL','62901');
INSERT INTO CUSTOMER VALUES('1021','Vivian','Arroyo','VArroyo@hotmail.com','1346 Florence Street','Tyler','TX','75757');
INSERT INTO CUSTOMER VALUES('1022','Silas','Monroe','SMonroe@apple.com','4049 Lauren Drive','Madison','WI','53718');
INSERT INTO CUSTOMER VALUES('1023','Molly','Hansen','MHansen@gmail.com','816 Charmaine Lane','Peoria','IL','61651');
INSERT INTO CUSTOMER VALUES('1124','Kannon','Pearson','KPearson@apple.com','2428 Don Jackson Lane','Keaau','HI','96749');
INSERT INTO CUSTOMER VALUES('1025','Opal','Novak','ONovak@apple.com','942 Heavens Way','HustonVille','KY','40437');
INSERT INTO CUSTOMER VALUES('1026','Ayan','Ray','ARyan@apple.com','2785 Golf Course Drive','Channelview','TX','77530');

-- Dummy data for CUSTOMER
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (3, 'Giovani', 'Windler', 'aklein@example.com', 'Error consectetur voluptatem architecto aut.', 'North Nicklausshire', 'Ar', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (14, 'Kevon', 'Gerhold', 'dallin17@example.net', 'Autem cupiditate dignissimos aut voluptate.', 'West Ralph', 'Al', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (23, 'Meredith', 'Schulist', 'nikolaus.lela@example.net', 'Ipsa asperiores quia est tempora quis.', 'Garthville', 'Fl', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (29, 'Althea', 'Ledner', 'ray98@example.org', 'Velit repudiandae reiciendis repudiandae.', 'Helmermouth', 'Ke', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (38, 'Francesca', 'Bruen', 'clarabelle.braun@example.org', 'Magnam sit voluptas placeat et facere.', 'Lake Westleymouth', 'Mi', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (54, 'Yadira', 'Medhurst', 'tabshire@example.net', 'Corporis cum tempore aliquid quia quis quia corporis.', 'Batzshire', 'Ar', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (61, 'Jude', 'Bahringer', 'ghauck@example.org', 'Temporibus dolores eveniet fuga aliquid velit non.', 'North Ashleigh', 'Al', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (64, 'Raina', 'Beatty', 'ehettinger@example.com', 'Non pariatur cupiditate voluptatem est tempore.', 'Kathrynton', 'Ve', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (65, 'Kailey', 'Doyle', 'hdare@example.net', 'Voluptatum ut omnis blanditiis non.', 'East Melba', 'Io', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (67, 'Jaleel', 'Zboncak', 'mylene.brekke@example.com', 'Non reprehenderit molestiae accusamus commodi minus.', 'Sauerbury', 'Ma', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (116, 'Cindy', 'Morissette', 'ratke.jessika@example.org', 'Quibusdam qui quis delectus est aut.', 'West Alta', 'Io', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (132, 'Archibald', 'Goodwin', 'koby.konopelski@example.com', 'Soluta iure culpa repudiandae reprehenderit facilis et veritatis.', 'Port Dusty', 'Id', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (142, 'Electa', 'Ebert', 'shields.adrienne@example.net', 'Voluptatibus corporis et ut facilis.', 'Lake Adrienne', 'So', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (155, 'Lawson', 'Marks', 'pgreen@example.org', 'Sed et laboriosam est eos sit.', 'South Alison', 'Mi', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (159, 'Earnest', 'Monahan', 'talia.smith@example.org', 'Occaecati omnis laboriosam atque cumque facilis cumque.', 'South Loraville', 'Ne', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (165, 'Katarina', 'Roberts', 'sylvia19@example.com', 'Repellendus tempora in non consequuntur ipsa.', 'Floyport', 'De', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (167, 'Eliane', 'Lesch', 'little.cameron@example.net', 'Dolore soluta ea eius et esse et quia.', 'Kaleyside', 'Ve', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (176, 'Maximillia', 'O\'Connell', 'stark.bria@example.net', 'Sit qui laborum eum sit.', 'North Ebba', 'Lo', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (189, 'Selmer', 'Jacobs', 'jeanette.funk@example.org', 'Consequatur qui animi molestiae.', 'South Kyraberg', 'Mi', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (200, 'Gust', 'Nikolaus', 'lisa28@example.net', 'Cupiditate id nam quaerat blanditiis nihil enim reprehenderit.', 'Mayerttown', 'Mi', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (211, 'Jennifer', 'Greenholt', 'antonietta10@example.com', 'Eum explicabo ea assumenda laborum.', 'Brandynmouth', 'In', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (219, 'Patsy', 'Gerlach', 'bradtke.zachary@example.net', 'Qui ullam inventore molestiae nihil corporis.', 'Bayleefurt', 'So', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (224, 'Kyra', 'Tromp', 'cole.shanny@example.org', 'Voluptatem voluptates dignissimos voluptates.', 'Bettieburgh', 'Ok', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (241, 'Gordon', 'O\'Reilly', 'malvina09@example.com', 'Porro qui voluptas ipsum similique id cumque saepe.', 'East Lucinda', 'Ma', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (242, 'Billy', 'Ernser', 'dibbert.valentine@example.net', 'Animi impedit cum esse nulla dolorem occaecati.', 'New Elvie', 'Ma', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (250, 'Rosemarie', 'Beier', 'berenice10@example.net', 'Explicabo exercitationem in commodi quo velit.', 'Lake Maximillianchester', 'Mi', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (251, 'Clifton', 'Cassin', 'angelina.sauer@example.net', 'Corporis consequatur officia quidem est autem aut.', 'East Keeley', 'Ma', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (254, 'Ines', 'Crist', 'carmstrong@example.net', 'Dicta velit dolorem quia voluptatem et cupiditate.', 'Lake Karli', 'Ar', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (255, 'Madge', 'Towne', 'antonio.sawayn@example.com', 'Sint aut deleniti consectetur modi distinctio dolore eos.', 'East Heather', 'Wy', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (267, 'Jaren', 'Weimann', 'kirlin.georgette@example.net', 'Iusto sint atque laboriosam.', 'Lake Kip', 'Co', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (276, 'Jaden', 'Klein', 'bsipes@example.net', 'Ipsa qui voluptatem ipsa quasi.', 'Mannmouth', 'Wa', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (283, 'Louisa', 'Boyer', 'satterfield.halie@example.com', 'Architecto sed quia nostrum odio.', 'Fisherfort', 'So', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (316, 'Rhoda', 'Miller', 'pablo29@example.com', 'Natus voluptatem voluptatem id architecto et.', 'East Juliusburgh', 'Ma', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (330, 'Tyrique', 'Yundt', 'apacocha@example.net', 'Architecto nostrum et distinctio nam.', 'Lake Ednamouth', 'So', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (340, 'Nelson', 'Conroy', 'haley.skye@example.org', 'Mollitia aut in rem rem eligendi labore molestias.', 'Abbyport', 'Ar', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (347, 'Carmela', 'Harber', 'kennedy06@example.com', 'Ut enim ea quis nihil.', 'Lake Teaganfort', 'Mi', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (352, 'Lonie', 'Stamm', 'tlindgren@example.com', 'Voluptas est maiores est.', 'Port Krystal', 'Ne', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (383, 'Adrienne', 'Moen', 'ashton.sawayn@example.net', 'Veniam error cumque repudiandae aut et temporibus beatae.', 'West Hassan', 'Oh', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (387, 'Mike', 'Anderson', 'quinton.schaden@example.net', 'Magnam quia sapiente dicta quam rem est.', 'South Robynstad', 'Ma', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (404, 'Kiara', 'Wyman', 'markus94@example.org', 'Cumque et aut aliquid quo nemo beatae aspernatur.', 'Steuberborough', 'So', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (413, 'Rachel', 'Grant', 'royce.bogan@example.com', 'Corporis non aliquid dolores dolorum est.', 'Nolanside', 'Or', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (419, 'Marcelle', 'Gaylord', 'kreichel@example.com', 'Architecto et sunt reiciendis qui aperiam aperiam cum.', 'McGlynnchester', 'Mi', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (421, 'Jan', 'Stiedemann', 'littel.reese@example.com', 'Non ut ullam omnis voluptatem.', 'Keithland', 'Ne', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (434, 'Constantin', 'Runte', 'elda.leffler@example.org', 'Libero quis ex quis et.', 'Taliaview', 'Ne', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (437, 'Amelie', 'Kovacek', 'raven.toy@example.net', 'Odio officiis distinctio doloremque.', 'New Lesliefurt', 'Ut', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (453, 'Cecile', 'Harber', 'wilfrid03@example.org', 'Alias placeat nulla nam quam sed.', 'Christiansenton', 'Ne', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (457, 'Tyler', 'Little', 'cremin.arlie@example.com', 'Ipsum aut ratione voluptatem qui numquam.', 'Vivianneville', 'Ne', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (459, 'Flossie', 'Stehr', 'zemlak.gardner@example.com', 'Aut cupiditate suscipit saepe ab maiores qui.', 'East Jadenhaven', 'Fl', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (462, 'Crystal', 'Sipes', 'catherine.morar@example.net', 'Officia fugiat laudantium maxime beatae sed labore.', 'Port Tyler', 'Ar', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (468, 'Rodrick', 'Shanahan', 'kelton.o\'hara@example.org', 'Maxime molestiae modi maxime quibusdam.', 'Dibbertmouth', 'Mi', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (489, 'Pearline', 'Cremin', 'block.elyssa@example.com', 'Eaque ab voluptatem dolor itaque tempore.', 'Buckridgeburgh', 'Fl', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (505, 'Rocio', 'Wintheiser', 'sydni56@example.com', 'Consequuntur at aliquam maiores inventore velit.', 'Luellaborough', 'Ma', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (513, 'Lois', 'Olson', 'deanna.ondricka@example.net', 'Eaque qui cupiditate molestiae et nihil omnis.', 'West Tania', 'Co', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (525, 'Merlin', 'Sawayn', 'franecki.maude@example.net', 'Harum molestiae magni blanditiis corrupti laborum nostrum ut.', 'Veumborough', 'Ar', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (527, 'Aron', 'Parker', 'ines.schamberger@example.com', 'Temporibus non odio molestiae rerum iusto dolorum.', 'Lake Felipemouth', 'Ne', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (534, 'Nelle', 'Ledner', 'hparker@example.org', 'Quo nihil tempore soluta.', 'West Sallyshire', 'Ke', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (542, 'Gabriel', 'Schimmel', 'rippin.garth@example.net', 'Doloribus voluptatem at rerum.', 'Faheyside', 'Te', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (545, 'Bertrand', 'Reichel', 'ovon@example.com', 'Quia perspiciatis eligendi suscipit in.', 'East Stephanie', 'No', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (559, 'Evangeline', 'Upton', 'kuvalis.chesley@example.org', 'Eveniet quas id et est.', 'Balistreribury', 'Di', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (579, 'Baylee', 'Kirlin', 'ullrich.michele@example.com', 'Voluptas eaque quidem explicabo excepturi nostrum dolores.', 'Percivalshire', 'Wi', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (580, 'Virgil', 'Wilkinson', 'zrogahn@example.com', 'Quisquam reiciendis voluptatem quia.', 'Nikolauschester', 'Ne', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (583, 'Geovanni', 'Graham', 'troy82@example.org', 'Sed earum consequatur iure ad nobis illo.', 'West Palmaview', 'Mi', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (585, 'Leonardo', 'Yundt', 'rdaugherty@example.com', 'Delectus aut labore labore delectus voluptatem et voluptas.', 'West Whitneymouth', 'Mo', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (594, 'Burnice', 'Robel', 'everardo.yundt@example.com', 'Porro non quidem nisi voluptatem in sunt quis.', 'Cynthiastad', 'Ne', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (607, 'Clare', 'Ankunding', 'katelin58@example.net', 'Aut nesciunt rerum reiciendis ipsum rerum dolor.', 'South Connorburgh', 'Wa', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (615, 'Kyra', 'Renner', 'bogisich.jadon@example.org', 'Sed ullam debitis quas qui quis vero doloribus.', 'North Earline', 'Ne', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (622, 'Kianna', 'Reilly', 'cassandra.schaden@example.net', 'Sed sint praesentium voluptatem sapiente eos ut.', 'South Annabelle', 'Co', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (630, 'Jessy', 'Baumbach', 'alberta89@example.com', 'Asperiores unde sapiente ipsam ea est porro.', 'New Daijatown', 'De', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (636, 'Jessie', 'Mayer', 'cecile.kreiger@example.org', 'Beatae harum sapiente cum dolorum.', 'East Wendy', 'Di', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (637, 'Hollie', 'Murray', 'wisozk.billie@example.net', 'Consequatur reiciendis fugit facere.', 'Boscoshire', 'Ne', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (648, 'Mariah', 'Hayes', 'fschimmel@example.com', 'Ad voluptatem voluptas nulla.', 'Gleasonstad', 'Co', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (650, 'Bessie', 'Renner', 'beer.alaina@example.org', 'Recusandae ex rerum et quae quos.', 'Westonfort', 'Ar', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (656, 'Zane', 'Kunde', 'valerie.thompson@example.org', 'Placeat labore assumenda molestiae eaque porro.', 'South Ervin', 'No', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (664, 'Robb', 'Stoltenberg', 'winston64@example.com', 'Error nam dicta asperiores animi sint eum nostrum.', 'Port Patsytown', 'Di', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (671, 'Garett', 'Mills', 'ritchie.novella@example.net', 'Nulla laboriosam exercitationem impedit fugiat pariatur ab.', 'West Clarabelleborough', 'Ge', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (678, 'Palma', 'Mante', 'cale.sanford@example.org', 'Atque doloremque asperiores consequuntur maiores quo eius enim.', 'North Eunice', 'Mi', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (682, 'Lily', 'O\'Conner', 'roxane.goyette@example.net', 'Optio sequi neque nihil.', 'North Tomburgh', 'Ka', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (718, 'Bobby', 'Adams', 'cvolkman@example.com', 'Id reprehenderit sed perspiciatis impedit magnam.', 'Kassulketown', 'Ma', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (723, 'Rhea', 'Gusikowski', 'laurie.goldner@example.net', 'Omnis dolorem esse quam numquam amet distinctio.', 'New Garthfurt', 'Al', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (728, 'Lue', 'Dare', 'daisy.beier@example.net', 'Omnis sequi id dolor assumenda.', 'Port Zariashire', 'Ke', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (730, 'Keyon', 'Beier', 'davis.greta@example.com', 'Rerum aliquid libero a nihil.', 'Jonesbury', 'Ve', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (743, 'Madge', 'Weber', 'hbraun@example.net', 'Et vel praesentium blanditiis ratione ad neque.', 'Spencerstad', 'Co', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (746, 'Brenden', 'Bartoletti', 'jakayla.jacobson@example.org', 'Quos repudiandae repellendus autem unde et ex libero.', 'New Gillianfurt', 'Ne', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (764, 'Retta', 'Hoppe', 'wunsch.dejah@example.org', 'Velit unde qui corporis velit vero incidunt voluptas et.', 'Alfonzostad', 'Mi', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (768, 'Greg', 'Smitham', 'rick.gulgowski@example.org', 'Vitae fugit dolor a nihil deserunt eum delectus exercitationem.', 'North Nicklaus', 'Wi', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (769, 'Candelario', 'Abernathy', 'kathlyn90@example.org', 'Est rerum totam earum est.', 'Mosciskibury', 'Di', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (772, 'Sallie', 'Torphy', 'annamarie.goldner@example.org', 'Et quo voluptatum sit necessitatibus.', 'Eulaliaville', 'Pe', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (776, 'Emily', 'Hodkiewicz', 'carolyn.jacobi@example.net', 'Eveniet molestias nostrum sunt doloribus voluptates et eos.', 'Shanahanfort', 'Lo', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (780, 'Georgianna', 'Harber', 'breanna69@example.net', 'Aut aut nobis qui dolore quaerat incidunt ut.', 'Jacobsonport', 'So', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (794, 'Yasmine', 'Zboncak', 'pharber@example.net', 'Numquam nobis aut tenetur nihil id commodi.', 'Greysonland', 'Te', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (805, 'Chad', 'Metz', 'hyman13@example.net', 'Aperiam ipsam et laudantium culpa sint.', 'North Alexiefurt', 'Ne', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (817, 'Cordelia', 'Prosacco', 'emery.legros@example.com', 'Nemo mollitia eos et esse hic numquam ipsam.', 'New Aglaeland', 'Di', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (831, 'Ethel', 'Kessler', 'emard.marty@example.com', 'Unde nihil laudantium earum quam ab nisi.', 'Lake Burley', 'Ma', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (837, 'Arvid', 'Bradtke', 'josiah10@example.net', 'Sit voluptatem vitae atque autem tenetur omnis.', 'Parkermouth', 'Di', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (851, 'Katheryn', 'Schuppe', 'noelia40@example.net', 'Eos consequatur velit libero officiis quia est.', 'Port Kaia', 'Co', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (853, 'Chris', 'Hintz', 'durward.wintheiser@example.org', 'Expedita quidem laboriosam voluptatem velit enim accusantium et.', 'Murazikville', 'Ca', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (855, 'Earnest', 'Hane', 'vkassulke@example.org', 'Facere a qui quisquam placeat labore excepturi.', 'Blickberg', 'In', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (861, 'Cassie', 'Rolfson', 'cayla35@example.net', 'Qui consectetur unde sit.', 'Olaftown', 'Pe', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (862, 'Heloise', 'McCullough', 'jillian.white@example.org', 'Qui molestias necessitatibus omnis ipsam qui et.', 'South Brookbury', 'Ma', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (878, 'Ashly', 'DuBuque', 'haskell.schroeder@example.org', 'Minima numquam corrupti ut voluptatibus perferendis quis modi.', 'Port Wallacehaven', 'Mo', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (880, 'Sarina', 'Lindgren', 'amber.swift@example.net', 'In eum non qui iure culpa.', 'East Clark', 'Ne', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (883, 'Kennith', 'Doyle', 'femmerich@example.net', 'Non assumenda est ipsam enim illo accusamus est.', 'O\'Konport', 'Oh', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (892, 'Reba', 'Nienow', 'cparisian@example.net', 'Recusandae ipsa at laudantium doloremque vero est animi.', 'South Rudy', 'Wi', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (902, 'Koby', 'Lynch', 'marcia.lesch@example.com', 'Quo animi nemo et nemo asperiores ea.', 'Stefaniechester', 'Ge', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (908, 'Graham', 'Hirthe', 'gschowalter@example.com', 'Explicabo vel animi in architecto fuga.', 'Fritschhaven', 'Ca', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (916, 'Krystel', 'Hintz', 'howard.collins@example.com', 'Voluptatem ut maiores sed.', 'Dooleychester', 'In', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (920, 'Marianne', 'Runolfsson', 'hyman83@example.net', 'Expedita dignissimos officiis a qui sunt corrupti quasi.', 'Eladiohaven', 'Mi', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (925, 'Janis', 'Braun', 'amina.halvorson@example.org', 'Corporis aliquam vel fugiat omnis dignissimos molestiae nesciunt.', 'Lake Rickie', 'Ne', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (933, 'Gladys', 'Carter', 'davis.furman@example.com', 'Minima expedita labore dolorum assumenda reprehenderit asperiores eum.', 'Port Christophetown', 'Ha', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (946, 'Hettie', 'Oberbrunner', 'jacobi.carley@example.net', 'Perferendis voluptates voluptas quidem ut molestiae at.', 'Calistaborough', 'Mo', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (953, 'Kaden', 'Effertz', 'marquardt.hermann@example.com', 'In dignissimos et quis nostrum.', 'Fadelland', 'Mi', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (964, 'Floyd', 'Rice', 'jacobs.kameron@example.net', 'Deserunt a quasi dolorem commodi ut fugiat temporibus.', 'Langoshmouth', 'Te', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (979, 'Modesto', 'Daniel', 'ugoyette@example.com', 'Dicta animi nisi qui rerum a.', 'Bartonport', 'No', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (983, 'Cynthia', 'Greenfelder', 'willie.green@example.net', 'Iste nihil dolores non ut nemo libero laborum.', 'Ovaville', 'Ne', 0);
INSERT INTO `CUSTOMER` (`CustomerID`, `Cus_FName`, `Cus_LName`, `Cus_Email`, `Cus_Address`, `Cus_City`, `Cus_State`, `Cus_ZipCode`) VALUES (985, 'Mandy', 'Paucek', 'mohamed.bauch@example.org', 'Et adipisci recusandae impedit aut eum sed.', 'South Rowanchester', 'Ut', 0);

-- Composite Key
CREATE UNIQUE INDEX UniqueCus ON CUSTOMER (Cus_FName,Cus_LName); -- To avoid duplication while company is collecting data.


-- Supertype PRODUCT
CREATE TABLE PRODUCT(
ProductID CHAR(4) NOT NULL PRIMARY KEY,
BrandID CHAR(4) NOT NULL,
Product_Name VARCHAR(100) NOT NULL,
Product_Size VARCHAR(50) NOT NULL,
Product_Color VARCHAR(50) NOT NULL,
Product_Gender VARCHAR(10) NOT NULL,
Product_Price DECIMAL(10,2) NOT NULL,
Product_Type CHAR(2), -- "BS", "RS", "SS"
FOREIGN KEY (BrandID) REFERENCES BRAND(BrandID));


-- Inserting values into PRODUCT
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('1000','0001','Nike Dunk High','5-20','Navy Blue','M/F','135.00','BS');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('1001','0002','Puma Future Play','7-14','White and Orange','M/F','50.99','SC');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('1010','0011','Slip-Ins Ultra Flex','3-15','Black','M','90.00','RS');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('1111','0006','Run Star Legacy','2-12','Light Brown','F','84.97','RS');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('1023','0003','Clout Tech 2','6-16','White','M','80.00','BS');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('1541','0009','Neon Court Trainer','6-13','Pink','F','139.00','RS');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('1024','0004','Fresh Foam X 1090v12','6-12','Green and White','M','159.99','RS');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('0012','0010','UA Magnetico Elite 3','6-18','Light Red','M','250.00','SC');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('1308','0012','Gel-Excite 9','6-15','Black and White','M/F','59.95','RS');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('5412','0001','Nike Air Force 1','8-15','White','M/F','110.00','BS');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('1234','0012','GELHOOP V15','6-16','White-Red Logo','M','189.00','BS');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('4321','0005','Trae Young 2.0','6-18','Light-Blue and White','M','84.97','BS');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('2368','0011','Cessnock Work','2-16','Black','M/F','90.00','RS');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('1456','0003','Reflex Core Knit','7-19','Black and White','M','80.00','RS');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('1011','0008','Cloud 5','5-15','Green and White','M/F','139.99','RS');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('0013','0001','Nike KD Trey 5','10-20','Orange','M','153.97','BS');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('2008','0002','Deviate Nitro 2','3-16','Orange','M/F','160.00','RS');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('2128','0010','Unisex UA Shadow Pro','5-15','Black','M/F','220.00','SC');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('2698','0007','Bondi 8','5-15','Black','M/F','164.95','RS');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('2038','0008','Cloudnova','7-14','White','M/F','159.99','BS');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('2378','0009','Unisex The Blast','5-16','Grey and Black','M/F','150.00','BS');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('2118','0004','FuelCell Propel v4','5-16','Blue and White','M/F','109.99','RS');
INSERT INTO PRODUCT (ProductID, BrandID, Product_Name, Product_Size, Product_Color, Product_Gender, Product_Price,Product_Type) VALUES('2011','0005','Goletto VIII','8-14','Black and White','M/F','44.99','SC');

-- Suptypes for PRODUCT
-- use a select query to find all of BS and then complete table
CREATE TABLE BASKETBALL_SHOES(
ProductID CHAR(4) NOT NULL PRIMARY KEY,
Bas_Material VARCHAR(100) NOT NULL,
Bas_AnkleSupportLevel VARCHAR(20) NOT NULL, -- High, Medium, or Low
Bas_Weight CHAR(10) NOT NULL,
Bas_Durability VARCHAR(15) NOT NULL, -- High, Medium, or Low
FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID));


-- Inserting values into BASKETBALL_SHOES
INSERT INTO BASKETBALL_SHOES (ProductID,Bas_Material,Bas_AnkleSupportLevel,Bas_Weight,Bas_Durability) VALUES('0013','Thin Knit','High','13 oz','High');
INSERT INTO BASKETBALL_SHOES (ProductID,Bas_Material,Bas_AnkleSupportLevel,Bas_Weight,Bas_Durability) VALUES('1000','Leather','Medium','15 oz','High');
INSERT INTO BASKETBALL_SHOES (ProductID,Bas_Material,Bas_AnkleSupportLevel,Bas_Weight,Bas_Durability) VALUES('1023','Leather','Low','12 oz','Meidum');
INSERT INTO BASKETBALL_SHOES (ProductID,Bas_Material,Bas_AnkleSupportLevel,Bas_Weight,Bas_Durability) VALUES('1234','Leather','Medium','16 oz','Medium');
INSERT INTO BASKETBALL_SHOES (ProductID,Bas_Material,Bas_AnkleSupportLevel,Bas_Weight,Bas_Durability) VALUES('2038','polymer','Medium','14 oz','Medium');
INSERT INTO BASKETBALL_SHOES (ProductID,Bas_Material,Bas_AnkleSupportLevel,Bas_Weight,Bas_Durability) VALUES('2378','polyurethane','High','13 oz','High');
INSERT INTO BASKETBALL_SHOES (ProductID,Bas_Material,Bas_AnkleSupportLevel,Bas_Weight,Bas_Durability) VALUES('4321','polyurethane','Low','12 oz','High');
INSERT INTO BASKETBALL_SHOES (ProductID,Bas_Material,Bas_AnkleSupportLevel,Bas_Weight,Bas_Durability) VALUES('5412','polyurethane','Medium','17 oz','Low');

-- RUNNING_SHOES TABLE
CREATE TABLE RUNNING_SHOES(
ProductID CHAR(4) NOT NULL PRIMARY KEY,
Run_Material VARCHAR(100) NOT NULL,
Run_Stability VARCHAR(15) NOT NULL, -- -- High, Medium, or Low
Run_HeelToToeDrop VARCHAR(20) NOT NULL, -- Measure in mm
Run_Weight CHAR(10) NOT NULL,
FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID));

-- Inserting values into RUNNING_SHOES
INSERT INTO RUNNING_SHOES (ProductID, Run_Material, Run_Stability, Run_HeelToToeDrop,Run_Weight) VALUES('1010','Polyster','High','High','12 oz');
INSERT INTO RUNNING_SHOES (ProductID, Run_Material, Run_Stability, Run_HeelToToeDrop,Run_Weight) VALUES('1011','Polyster','Medium','High','10 oz');
INSERT INTO RUNNING_SHOES (ProductID, Run_Material, Run_Stability, Run_HeelToToeDrop,Run_Weight) VALUES('1024','EVA','High','Medium','11 oz');
INSERT INTO RUNNING_SHOES (ProductID, Run_Material, Run_Stability, Run_HeelToToeDrop,Run_Weight) VALUES('1111','cotton','Medium','High','9 oz');
INSERT INTO RUNNING_SHOES (ProductID, Run_Material, Run_Stability, Run_HeelToToeDrop,Run_Weight) VALUES('1308','jacquard mesh upper','High','High','10 oz');
INSERT INTO RUNNING_SHOES (ProductID, Run_Material, Run_Stability, Run_HeelToToeDrop,Run_Weight) VALUES('1456','Knit upper','High','High','11 oz');
INSERT INTO RUNNING_SHOES (ProductID, Run_Material, Run_Stability, Run_HeelToToeDrop,Run_Weight) VALUES('1541','Synthetics','High','Low','14 oz');
INSERT INTO RUNNING_SHOES (ProductID, Run_Material, Run_Stability, Run_HeelToToeDrop,Run_Weight) VALUES('2008','carbon composite plated','High','High','9.2 oz');
INSERT INTO RUNNING_SHOES (ProductID, Run_Material, Run_Stability, Run_HeelToToeDrop,Run_Weight) VALUES('2118','thermoplastic elastomer polyurethane','High','High','10.7 oz');
INSERT INTO RUNNING_SHOES (ProductID, Run_Material, Run_Stability, Run_HeelToToeDrop,Run_Weight) VALUES('2368','Skech-Knit mesh','Medium','Low','9 oz');
INSERT INTO RUNNING_SHOES (ProductID, Run_Material, Run_Stability, Run_HeelToToeDrop,Run_Weight) VALUES('2698','vegan and recycled materials','Low','Medium','10.8 oz');


-- SOCCER_CLEATS TABLE
CREATE TABLE SOCCER_CLEATS(
ProductID CHAR(4) NOT NULL PRIMARY KEY,
Soc_Material VARCHAR(100) NOT NULL,
Soc_StudType VARCHAR(20) NOT NULL, -- Types of spikes under the shoe
Soc_CleatType VARCHAR(20) NOT NULL, -- (Firm Ground cleat (FG) - made for natural grass) or (Artificial Grass/Ground cleats (AG) - made for artificial grass)
Soc_TractionLevel VARCHAR(10) NOT NULL, -- High, Medium, or Low
FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID));


-- Inserting values into PRODUCT_ORDER
INSERT INTO SOCCER_CLEATS (ProductID,Soc_Material,Soc_StudType,Soc_CleatType,Soc_TractionLevel) VALUES('0012','Auxetic','Turf','FG','High');
INSERT INTO SOCCER_CLEATS (ProductID,Soc_Material,Soc_StudType,Soc_CleatType,Soc_TractionLevel) VALUES('1001','leather','Indoor','AG','Medium');
INSERT INTO SOCCER_CLEATS (ProductID,Soc_Material,Soc_StudType,Soc_CleatType,Soc_TractionLevel) VALUES('2011','Rubber','Firm','FG','High');
INSERT INTO SOCCER_CLEATS (ProductID,Soc_Material,Soc_StudType,Soc_CleatType,Soc_TractionLevel) VALUES('2128','leather','Turf','AG','High');


-- INVENTORY TABLE
CREATE TABLE INVENTORY(
InventoryID INT AUTO_INCREMENT PRIMARY KEY,  -- Increments
StoreID INT(3) NOT NULL,
ProductID CHAR(4) NOT NULL,
Inv_Transaction INT(3),
Inv_Quantity INT(5) NOT NULL, 
FOREIGN KEY (StoreID) REFERENCES STORE(StoreID),
FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID));


-- Inserting values into INVENTORY

INSERT INTO INVENTORY VALUES(NULL,'66','0012','3','150');
INSERT INTO INVENTORY VALUES(NULL,'1','0013','2','100');
INSERT INTO INVENTORY VALUES(NULL,'75','1000','3','130');
INSERT INTO INVENTORY VALUES(NULL,'80','1001','1','100');
INSERT INTO INVENTORY VALUES(NULL,'105','1010','3','100');
INSERT INTO INVENTORY VALUES(NULL,'103','1011','1','100');
INSERT INTO INVENTORY VALUES(NULL,'100','1023','2','100');
INSERT INTO INVENTORY VALUES(NULL,'95','1024','1','200');
INSERT INTO INVENTORY VALUES(NULL,'98','1111','1','100');
INSERT INTO INVENTORY VALUES(NULL,'77','1234','2','120');
INSERT INTO INVENTORY VALUES(NULL,'60','1308','1','150');
INSERT INTO INVENTORY VALUES(NULL,'50','1456','1','150');
INSERT INTO INVENTORY VALUES(NULL,'55','1541','2','100');
INSERT INTO INVENTORY VALUES(NULL,'33','2008','1','100');
INSERT INTO INVENTORY VALUES(NULL,'30','2011','2','150');
INSERT INTO INVENTORY VALUES(NULL,'25','2038','1','100');
INSERT INTO INVENTORY VALUES(NULL,'20','2118','1','200');
INSERT INTO INVENTORY VALUES(NULL,'16','2128','1','150');
INSERT INTO INVENTORY VALUES(NULL,'8','2368','1','100');
INSERT INTO INVENTORY VALUES(NULL,'20','2378','1','130');
INSERT INTO INVENTORY VALUES(NULL,'23','2698','1','180');
INSERT INTO INVENTORY VALUES(NULL,'17','4321','3','200');
INSERT INTO INVENTORY VALUES(NULL,'11','5412','1','501');

 
-- PRODUCT_ORDER TABLE
CREATE TABLE PRODUCT_ORDER(
OrderID INT(4) NOT NULL PRIMARY KEY, -- starts with 1 as leading value for ID
CustomerID 	INT(5) NOT NULL, -- same as Customer ID
ProductID CHAR(4) NOT NULL,
Order_Date DATE NOT NULL,
Order_Quantity INT(3),
Order_Amount DECIMAL(10,2) NOT NULL,
FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID),
FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID));


-- Inserting values into PRODUCT_ORDER (make a few customers have same order date
INSERT INTO PRODUCT_ORDER(OrderID,CustomerID,ProductID,Order_Date,Order_Quantity,Order_Amount) VALUES('1001','1001','1001','2022-12-29','1','50.99');
INSERT INTO PRODUCT_ORDER(OrderID,CustomerID,ProductID,Order_Date,Order_Quantity,Order_Amount) VALUES('1191','1002','0012','2021-12-21','1','250.00');
INSERT INTO PRODUCT_ORDER(OrderID,CustomerID,ProductID,Order_Date,Order_Quantity,Order_Amount) VALUES('1013','1003','0013','2022-08-16','1','153.97');
INSERT INTO PRODUCT_ORDER(OrderID,CustomerID,ProductID,Order_Date,Order_Quantity,Order_Amount) VALUES('1111','1011','1000','2023-08-02','1','135.00');
INSERT INTO PRODUCT_ORDER(OrderID,CustomerID,ProductID,Order_Date,Order_Quantity,Order_Amount) VALUES('2023','1012','1001','2022-08-15','1','50.99');
INSERT INTO PRODUCT_ORDER(OrderID,CustomerID,ProductID,Order_Date,Order_Quantity,Order_Amount) VALUES('2012','1013','1011','2023-11-01','1','139.99');
INSERT INTO PRODUCT_ORDER(OrderID,CustomerID,ProductID,Order_Date,Order_Quantity,Order_Amount) VALUES('1023','1014','1011','2022-12-24','1','139.99');
INSERT INTO PRODUCT_ORDER(OrderID,CustomerID,ProductID,Order_Date,Order_Quantity,Order_Amount) VALUES('1025','1015','1024','2023-08-02','1','159.99');
INSERT INTO PRODUCT_ORDER(OrderID,CustomerID,ProductID,Order_Date,Order_Quantity,Order_Amount) VALUES('1026','1016','1308','2023-01-01','1','59.95');
INSERT INTO PRODUCT_ORDER(OrderID,CustomerID,ProductID,Order_Date,Order_Quantity,Order_Amount) VALUES('1035','1017','1234','2023-02-15','1','189.00');
INSERT INTO PRODUCT_ORDER(OrderID,CustomerID,ProductID,Order_Date,Order_Quantity,Order_Amount) VALUES('2038','1018','5412','2021-11-27','1','110.00');
INSERT INTO PRODUCT_ORDER(OrderID,CustomerID,ProductID,Order_Date,Order_Quantity,Order_Amount) VALUES('1164','1019','2368','2022-06-08','1','90.00');
INSERT INTO PRODUCT_ORDER(OrderID,CustomerID,ProductID,Order_Date,Order_Quantity,Order_Amount) VALUES('3038','1020','1011','2022-12-24','1','139.99');
INSERT INTO PRODUCT_ORDER(OrderID,CustomerID,ProductID,Order_Date,Order_Quantity,Order_Amount) VALUES('4048','1021','2128','2023-06-05','1','220.00');
INSERT INTO PRODUCT_ORDER(OrderID,CustomerID,ProductID,Order_Date,Order_Quantity,Order_Amount) VALUES('4025','1022','2118','2023-01-02','1','109.99');
INSERT INTO PRODUCT_ORDER(OrderID,CustomerID,ProductID,Order_Date,Order_Quantity,Order_Amount) VALUES('3017','1023','2008','2023-04-11','1','160.00');
INSERT INTO PRODUCT_ORDER(OrderID,CustomerID,ProductID,Order_Date,Order_Quantity,Order_Amount) VALUES('4029','1025','1541','2023-08-02','1','139.00');
INSERT INTO PRODUCT_ORDER(OrderID,CustomerID,ProductID,Order_Date,Order_Quantity,Order_Amount) VALUES('1097','1026','1541','2023-01-01','1','139.00');
INSERT INTO PRODUCT_ORDER(OrderID,CustomerID,ProductID,Order_Date,Order_Quantity,Order_Amount) VALUES('3002','3','1011','2022-12-29','1','139.99');


-- INVOICE TABLE
CREATE TABLE INVOICE(
InvoiceID INT(5) NOT NULL PRIMARY KEY,
CustomerID INT(5) NOT NULL,
Customer_Name VARCHAR(200) NOT NULL,
OrderID INT(4) NOT NULL,
Order_Date DATE NOT NULL, 
Invoice_Date DATE NOT NULL,
Total_Price DECIMAL(10,2) NOT NULL,
FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID),
FOREIGN KEY (OrderID) REFERENCES PRODUCT_ORDER(OrderID),
CONSTRAINT UNIQUE_INFO UNIQUE(InvoiceID, CustomerID));

-- Inserting values into INVOICE
INSERT INTO INVOICE VALUES('10101','1001','Ella King','1001','2022-12-29','2023-01-01','50.99');
INSERT INTO INVOICE VALUES('10231','3','Giovani Windler','3002','2022-12-29','2023-01-01','139.99');
INSERT INTO INVOICE VALUES('11011','1026','Ayan Ray','1097','2023-01-01','2023-01-02','139.99');
INSERT INTO INVOICE VALUES('11111','1022','Silas Monroe','4025','2023-01-02','2023-01-03','109.99');
INSERT INTO INVOICE VALUES('12012','1014','Julian Garcia','1023','2022-12-24','2022-12-29','139.99');
INSERT INTO INVOICE VALUES('13018','1003','Aitana Olsen','1013','2022-08-16','2022-08-18','153.97');
INSERT INTO INVOICE VALUES('10001','1018','Jada Wilkins','2038','2021-11-27','2021-11-29','110.00');
INSERT INTO INVOICE VALUES('12601','1020','Ryab Morris','3038','2022-12-24','2022-12-27','139.99');
INSERT INTO INVOICE VALUES('16501','1002','Luka Sweeney','1191','2021-12-21','2021-12-25','250.00');
INSERT INTO INVOICE VALUES('14937','1011','Leland Gibbs','1111','2023-08-02','2023-08-11','135.00');
INSERT INTO INVOICE VALUES('12201','1019','Amir Harmon','1164','2022-06-08','2022-06-09','90.00');
INSERT INTO INVOICE VALUES('12222','1025','Opal Novak','4029','2023-08-02','2023-08-05','139.00');
INSERT INTO INVOICE VALUES('13333','1021','Vivian Arroyo','4048','2023-06-05','2023-06-07','220.00');
INSERT INTO INVOICE VALUES('10201','1003','Aitana Olsen','1013','2023-11-01','2023-11-02','153.97');
INSERT INTO INVOICE VALUES('10009','1015','Tyler Palacios','1025','2023-08-02','2023-08-05','159.99');
INSERT INTO INVOICE VALUES('10011','1017','Amelia Silva','1035','2023-02-15','2023-02-19','189.00');
INSERT INTO INVOICE VALUES('10012','1012','Mylah Sanchez','2023','2022-08-15','2022-08-18','50.99');
INSERT INTO INVOICE VALUES('10013','1023','Molly Hansen','3017','2023-04-11','2023-04-15','160.00');

-- Creating a view to determine INVOICE total
CREATE VIEW INVOICE_TOTAL AS
SELECT SUM(Total_Price)
FROM INVOICE;


-- CRM TABLE
CREATE TABLE CRM(
CRM_ID CHAR(4) NOT NULL PRIMARY KEY,
CustomerID INT(5) NOT NULL,
EmployeeID INT(5) NOT NULL,
Interaction_date DATE,
Interaction_Type VARCHAR(100) NOT NULL, -- Email, Phone Call, Video Chat
Interation_Details VARCHAR(200),
FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID),
FOREIGN KEY (EmployeeID) REFERENces EMPLOYEE(EmployeeID));

-- Inserting values into CRM
INSERT INTO CRM VALUES('0001','1001','26','2023-01-15','Email','question regarding Order'); -- customer service employeeID 26, 29
INSERT INTO CRM VALUES('0002','1013','27','2022-01-25','Email','Order status inquiry');
INSERT INTO CRM VALUES('0003','1124','27','2022-01-25','Phone Call','Product information request');
INSERT INTO CRM VALUES('0004','1124','27','2023-01-15','Video Chat','Order cancellation');
INSERT INTO CRM VALUES('0005','1002','26','2023-01-15','Video Chat','Return or exchange reques');
INSERT INTO CRM VALUES('0006','1124','26','2023-05-10','Phone Call','Billing discrepancy');
INSERT INTO CRM VALUES('0007','1003','26','2023-05-10','Phone Call','Account balance inquiry');
INSERT INTO CRM VALUES('0008','1124','27','2023-05-10','Video Chat','Payment issue');
INSERT INTO CRM VALUES('0009','1124','27','2023-06-01','Phone Call','Shipping delay');
INSERT INTO CRM VALUES('0010','1013','26','2023-06-01','Email','Address change/update');
INSERT INTO CRM VALUES('0011','1003','26','2023-01-01','Phone Call','Complaint about product quality');
INSERT INTO CRM VALUES('0012','1014','27','2023-01-01','Email','Request for a refund');
INSERT INTO CRM VALUES('0013','1002','26','2023-08-08','Video Chat','Technical support for a product/service');
INSERT INTO CRM VALUES('0014','1124','27','2023-08-08','Phone Call','Assistance with online account access');
INSERT INTO CRM VALUES('0015','1026','26','2023-08-08','Video Chat','Loyalty program inquiry');
INSERT INTO CRM VALUES('0016','1011','27','2022-09-01','Email','Subscription management');
INSERT INTO CRM VALUES('0017','1025','26','2022-09-01','Phone Call','Lost or missing item from the order');
INSERT INTO CRM VALUES('0018','1002','27','2022-09-01','Video Chat','Pricing inquiry');
INSERT INTO CRM VALUES('0019','1014','27','2023-12-01','Email','Request for product recommendations');
INSERT INTO CRM VALUES('0020','1013','27','2023-12-01','Phone Call','Problem with website functionality');
INSERT INTO CRM VALUES('1111','1001','26','2023-12-01','Video Chat','Request for an invoice or receipt');
INSERT INTO CRM VALUES('1110','1018','27','2023-11-03','Phone Call','Request for a product demonstration');
INSERT INTO CRM VALUES('1010','1019','26','2023-11-03','Video Chat','Return policy clarification');
INSERT INTO CRM VALUES('1001','1012','27','2023-12-24','Phone Call','Assistance with order tracking');
INSERT INTO CRM VALUES('1011','1018','26','2023-12-24','Email','Assistance with account closure');
INSERT INTO CRM VALUES('0111','1011','27','2023-09-11','Phone Call','Assistance with installation or setup');
INSERT INTO CRM VALUES('0099','1003','26','2023-09-11','Video Chat','Request for a warranty claim');
INSERT INTO CRM VALUES('1021','1020','26','2023-09-10','Email','Request for product availability');
INSERT INTO CRM VALUES('1121','1021','26','2023-09-10','Phone Call','Assistance with gift card usage');
INSERT INTO CRM VALUES('1131','1001','26','2022-12-11','Video Chat','Request for order modification');
INSERT INTO CRM VALUES('1134','1022','27','2022-12-11','Phone Call','Request for a catalog or brochure');
INSERT INTO CRM VALUES('1135','1012','26','2022-12-11','Video Chat','Problem with a promotion code');
INSERT INTO CRM VALUES('1136','1023','27','2022-12-11','Phone Call','Assistance with a bulk or wholesale order');


-- CUSTOMER_REVIEW TABLE
CREATE TABLE CUSTOMER_REVIEW(
ReviewID INT(3) NOT NULL PRIMARY KEY, -- DO NOT START WITH ZERO
CustomerID INT(5)NOT NULL,
ProductID CHAR(4) NOT NULL,
Cus_Rating VARCHAR(200),
Cus_ReviewDate DATE,
FOREIGN KEY(CustomerID) REFERENCES CUSTOMER(CustomerID),
FOREIGN KEY(ProductID) REFERENCES PRODUCT(ProductID));

-- Inserting values into CUSTOMER_REVIEW
INSERT INTO CUSTOMER_REVIEW VALUES('111','3','0013','Excellent','2023-01-01');
INSERT INTO CUSTOMER_REVIEW VALUES('101','14','1111','Good','2022-01-01');
INSERT INTO CUSTOMER_REVIEW VALUES('123','23','1000','Excellent','2023-01-01');
INSERT INTO CUSTOMER_REVIEW VALUES('102','29','1000','Good','2023-08-13');
INSERT INTO CUSTOMER_REVIEW VALUES('103','1124','1111','Average','2023-08-13');
INSERT INTO CUSTOMER_REVIEW VALUES('104','1026','1024','Okay','2023-07-28');
INSERT INTO CUSTOMER_REVIEW VALUES('105','1025','2128','Excellent','2023-07-28');
INSERT INTO CUSTOMER_REVIEW VALUES('106','1023','1111','Average','2023-04-04');
INSERT INTO CUSTOMER_REVIEW VALUES('113','1022','1010','Good','2023-04-05');
INSERT INTO CUSTOMER_REVIEW VALUES('109','1021','1000','Good','2023-04-05');
INSERT INTO CUSTOMER_REVIEW VALUES('118','1020','1234','Good','2023-04-08');
INSERT INTO CUSTOMER_REVIEW VALUES('119','1019','1111','Good','2023-06-01');
INSERT INTO CUSTOMER_REVIEW VALUES('121','1018','0013','Excellent','2023-06-01');
INSERT INTO CUSTOMER_REVIEW VALUES('132','1003','2008','Average','2023-09-01');
INSERT INTO CUSTOMER_REVIEW VALUES('127','1001','2128','Excellent','2023-04-08');
INSERT INTO CUSTOMER_REVIEW VALUES('138','1002','2038','Average','2023-06-04');
INSERT INTO CUSTOMER_REVIEW VALUES('145','1012','0013','Good','2023-06-04');
INSERT INTO CUSTOMER_REVIEW VALUES('148','1013','2038','Excellent','2023-06-07');
INSERT INTO CUSTOMER_REVIEW VALUES('143','1014','1011','Good','2023-09-07');
INSERT INTO CUSTOMER_REVIEW VALUES('147','1015','2128','Okay','2023-03-03');
INSERT INTO CUSTOMER_REVIEW VALUES('146','1016','2038','Average','2023-03-03');
INSERT INTO CUSTOMER_REVIEW VALUES('184','1017','0013','Excellent','2023-09-08');
INSERT INTO CUSTOMER_REVIEW VALUES('142','1018','0013','Excellent','2022-08-12');
INSERT INTO CUSTOMER_REVIEW VALUES('133','983','1001','Okay','2022-08-12');
INSERT INTO CUSTOMER_REVIEW VALUES('199','985','1001','Good','2023-09-07');


-- PRODUCT_VENDOR TABLE
CREATE TABLE PRODUCT_VENDOR(
VendorID INT(3) PRIMARY KEY NOT NULL,
Ven_Name VARCHAR(100) NOT NULL,
Ven_Phone VARCHAR(20) NOT NULL,
Ven_Address VARCHAR(100) NOT NULL,
Ven_City VARCHAR(100) NOT NULL,
Ven_State CHAR(2) NOT NULL,
Ven_ZipCode INT(5) NOT NULL,
Ven_Order INT(9),
CHECK(Ven_Order >= 40)); -- Vendors must buy at least 40 products

-- Inserting values into PRODUCT_VENDOR
-- drop database reugene2284_DB_FitFootwearCo;
INSERT INTO PRODUCT_VENDOR VALUES('123','Comfort Soles Shoe Emporium','555-678-1234','1234 Elm Street','Springfield','IL','62701','100');
INSERT INTO PRODUCT_VENDOR VALUES('158','Trendy Feet Footwear Boutique','888-456-7890','5678 Oak Avenue','New York','NY','10001','60');
INSERT INTO PRODUCT_VENDOR VALUES('156','StepUp Shoe Store','123-567-8901','9012 Maple Lane','Los Angeles','CA','90001','50');
INSERT INTO PRODUCT_VENDOR VALUES('189','Sole Mates Shoe Shop','333-222-4444','3456 Pine Road','Chicago','IL','60601','80');
INSERT INTO PRODUCT_VENDOR VALUES('149','The Shoe Haven','777-555-9999','7890 Cedar Drive','Miami','FL','33101','45');
INSERT INTO PRODUCT_VENDOR VALUES('146','Walk in Style Shoes','444-666-1111','2345 Birch Court','Houston','TX','77001','55');
INSERT INTO PRODUCT_VENDOR VALUES('165','Happy Feet Footwear Co.','999-333-8888','6789 Willow Street','Seattle','WA','98101','150');
INSERT INTO PRODUCT_VENDOR VALUES('167','Urban Kicks Shoe Outlet','222-777-5555','0123 Juniper Avenue','Boston','MA','02101','200');
INSERT INTO PRODUCT_VENDOR VALUES('163','Soothing Steps Shoe Boutique','666-444-2222','4567 Aspen Lane',' Denver','CO','80201','250');
INSERT INTO PRODUCT_VENDOR VALUES('188','Stylish Soles Shoe Gallery','111-999-3333','8901 Sycamore Road','Dallas','TX','75201','100');

-- dummy data
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (251, '012', '(657)375-3805x70458', '3608 Jean Port Suite 064', 'West Alfredport', 'Ne', 0, 336);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (252, '688', '(752)194-8229x0690', '858 Hegmann Radial', 'Kohlermouth', 'So', 0, 45);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (253, '201', '839.985.1587x667', '786 Gina Passage', 'Bradtkefort', 'De', 0, 9405);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (254, '773', '(566)735-9498x747', '7427 Upton Islands', 'Lake Sabrina', 'So', 0, 10081277);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (255, '388', '879.023.4773', '7082 Kuhic Fort Suite 366', 'Kassulkeville', 'Mi', 0, 782169062);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (256, '742', '(514)275-8864x3293', '040 Langosh Lodge', 'Jerryshire', 'Ge', 0, 25076);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (257, '057', '788.993.1241', '20414 Zieme Summit', 'Osinskishire', 'Io', 0, 92499);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (258, '339', '+18(1)2749213653', '213 Altenwerth Road Apt. 975', 'East Melissa', 'Al', 0, 87538);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (259, '431', '688.480.3846', '866 Blick Station Apt. 161', 'West Cortezland', 'No', 0, 312719765);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (260, '876', '(566)774-2441', '93570 Estelle Loop', 'Port Lynn', 'Id', 0, 95722);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (261, '517', '242.069.6051', '1060 Ralph Wells Apt. 222', 'West Cydneyburgh', 'Ar', 0, 9508);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (262, '816', '(442)702-5745', '407 Hilpert Drives Suite 429', 'South Price', 'We', 0, 668);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (263, '078', '769.088.2485x29771', '36929 Walter Brook', 'Raymundofurt', 'Ma', 0, 605);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (264, '455', '1-137-279-5941x072', '87524 Mac Port Suite 914', 'New Levi', 'Ar', 0, 417);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (265, '014', '1-252-620-6672x0377', '17220 Fadel Spring', 'Port Camrynton', 'Io', 0, 94955790);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (266, '739', '(788)209-1303x53150', '078 Streich Fork Suite 801', 'Port Luciousberg', 'Ha', 0, 88264711);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (267, '654', '763.623.5803x9147', '18516 Casper Mews', 'Lillaberg', 'Ve', 0, 2500);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (268, '729', '1-055-956-6645', '3688 Jaqueline Squares', 'Swaniawskiburgh', 'Ne', 0, 53);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (269, '545', '376-440-6808', '46179 Langosh Ridges', 'North Doug', 'Ma', 0, 9677);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (270, '240', '+56(3)0715318837', '2437 Garret Ferry Apt. 118', 'Gerardfurt', 'Ar', 0, 875379);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (271, '016', '902-864-5313x7667', '3089 Adrienne Island', 'West Lucastown', 'So', 0, 64);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (272, '696', '1-725-710-5063x21430', '2782 Rickie Keys', 'North Lonnie', 'Oh', 0, 64486);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (273, '758', '01606560314', '480 Corwin Mission', 'Schmelerview', 'Ne', 0, 396437);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (274, '554', '+37(6)9791518783', '20586 Magnus Square', 'East Cathyton', 'Te', 0, 625915147);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (275, '764', '(746)628-1430', '357 Meta Bridge', 'Terrillmouth', 'De', 0, 78825);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (276, '933', '07625241261', '87988 Gilberto Loaf', 'Keeblershire', 'Ne', 0, 84102559);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (277, '620', '629.910.0905x3314', '61283 Jamey Villages', 'North Israeltown', 'Ma', 0, 91);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (278, '784', '110-366-9690x5113', '01686 Malinda Glens', 'New Ernie', 'Di', 0, 47735414);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (279, '662', '(771)629-0668x090', '34488 Dane Ranch', 'Jeromeshire', 'Wy', 0, 187748020);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (280, '942', '(129)893-9957x628', '44200 Macejkovic Coves', 'Lake Erlingmouth', 'No', 0, 527);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (281, '864', '895.056.0674x0995', '59431 Lubowitz Street Apt. 463', 'Port Paulville', 'Wa', 0, 21644624);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (282, '735', '+84(4)7717899700', '53305 Noe Run', 'Johnstonville', 'Io', 0, 2396329);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (283, '209', '+20(5)6196375918', '238 Nikko Lock Suite 326', 'Port Kaleigh', 'Vi', 0, 544);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (284, '514', '1-987-144-8864x54376', '018 Eudora Springs Suite 992', 'East Wileymouth', 'Ne', 0, 5015962);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (285, '121', '227.660.5644', '9075 Keshawn Stravenue', 'Port Laneview', 'Ut', 0, 640082977);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (286, '373', '967.035.8965', '22880 Weissnat Flats Apt. 197', 'Henrietteburgh', 'Di', 0, 20833);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (287, '616', '1-640-543-5923', '10541 Gaylord Field Apt. 099', 'New Tremaineberg', 'Ha', 0, 7063466);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (288, '886', '1-286-921-8716', '2740 Joesph Shoals Apt. 453', 'West Isabell', 'Ne', 0, 984);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (289, '546', '239.298.6043x499', '559 Norval Fort Apt. 328', 'Johnsontown', 'Fl', 0, 7659207);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (290, '331', '765.639.1545', '37629 Celestine Canyon Apt. 830', 'West Deborahville', 'Ne', 0, 35302872);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (291, '219', '+47(4)9112556656', '914 Upton Coves', 'Selenaview', 'Te', 0, 76301910);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (292, '441', '382-870-8726', '70607 Greenfelder Views', 'New Alexie', 'Wa', 0, 54668);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (293, '123', '835-617-9849', '6951 Carter Gateway', 'North Nadia', 'Rh', 0, 620896834);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (294, '806', '(459)271-0541', '67178 Wiegand Gardens', 'Port Thaddeus', 'Co', 0, 30805);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (295, '602', '01758055061', '025 Trycia Ford Apt. 500', 'East Ward', 'Co', 0, 9324832);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (296, '009', '(239)318-7367', '257 Schmeler Freeway', 'Stantonside', 'Ma', 0, 39122737);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (297, '165', '1-852-414-9715', '829 Madilyn Roads Apt. 267', 'West Ally', 'Te', 0, 3395475);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (298, '977', '1-484-694-8783', '7523 Goodwin Cape Suite 750', 'Lowellport', 'Ve', 0, 32696498);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (299, '179', '1-653-776-5111x585', '8645 Kayli Avenue', 'Lake Merlin', 'Wi', 0, 73303245);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (300, '571', '(588)326-6993x7381', '2244 Wiegand Harbor', 'East Heath', 'Al', 0, 119971);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (301, '889', '222-089-9647x8152', '542 Shaylee Burgs', 'Bogantown', 'Ne', 0, 4861021);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (302, '608', '(373)358-9529x205', '7845 Elna Junction', 'Schadenchester', 'Ne', 0, 7963254);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (303, '874', '+32(5)1174923465', '9826 Romaguera Port', 'Kiehnbury', 'Ne', 0, 34574);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (304, '897', '1-228-216-2340x0452', '12086 Mante Lock Suite 986', 'Myraberg', 'Ha', 0, 9757);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (305, '996', '1-355-828-5016x35188', '47053 Yolanda Causeway', 'Lake Elyssamouth', 'Ca', 0, 98094);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (306, '781', '1-110-633-5510x2507', '53288 Carmela Knoll Suite 621', 'Hauckside', 'Ne', 0, 97);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (307, '143', '192-738-7561', '438 Keebler Causeway', 'North Lenore', 'Ar', 0, 857272294);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (308, '871', '134.917.8932', '170 Herminio Place', 'South Freeda', 'Te', 0, 56);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (309, '125', '1-812-694-8966x1594', '034 Mante Run', 'Lake Americachester', 'We', 0, 450);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (310, '086', '913-624-2570x29220', '2287 Jaiden Garden', 'Adelinebury', 'Wi', 0, 4513);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (311, '674', '(637)897-4445x42987', '712 Celestino Village Suite 020', 'North Anahi', 'Co', 0, 85);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (312, '915', '1-724-861-4287x5701', '52062 Kautzer Fords Apt. 745', 'Jerdehaven', 'Ar', 0, 48510);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (313, '058', '1-460-447-4067x60025', '022 Alvena Branch Suite 905', 'West Sophia', 'Ok', 0, 741);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (314, '668', '(056)302-1864x87186', '548 Johns Corner', 'Kertzmannberg', 'Ca', 0, 86);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (315, '869', '(038)485-0161', '10709 Bernier Keys Apt. 501', 'Kaciside', 'Ar', 0, 536831033);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (316, '150', '1-216-774-0371x095', '172 Bernita Road', 'Nikolauston', 'De', 0, 9383142);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (317, '774', '652-418-2842', '9738 Buddy Mall', 'North Maximo', 'Io', 0, 35518011);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (318, '349', '1-917-373-9181x405', '67089 Quitzon Junctions Apt. 115', 'South Rene', 'Mo', 0, 77427614);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (319, '985', '667-459-9247', '615 Stephan Creek Suite 679', 'North Melvinaberg', 'Ok', 0, 69);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (320, '388', '(660)258-7333x38784', '701 Murphy Skyway Apt. 004', 'North Maud', 'Ne', 0, 71142033);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (321, '526', '(276)146-7393', '002 Gertrude Square Apt. 839', 'New Gracie', 'Ne', 0, 459);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (322, '600', '+30(5)0646091930', '146 Malika Port Apt. 895', 'Port Delbertshire', 'Ne', 0, 33507249);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (323, '041', '1-304-124-7108x3708', '08814 Flavie Viaduct Suite 940', 'West Madgeberg', 'Ca', 0, 4190);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (324, '127', '1-049-247-9995x603', '998 Ryann Fork', 'Vonport', 'Co', 0, 7121);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (325, '645', '385.348.7718x45160', '12120 Barrows Brooks Suite 486', 'Binsville', 'Ut', 0, 618366628);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (326, '168', '396.378.8544x14281', '42401 Feil Turnpike', 'East Patience', 'Ma', 0, 930);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (327, '370', '1-265-920-5729x5973', '1631 Carol Shoals', 'North Marilie', 'Ut', 0, 92287);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (328, '947', '031.042.4259x068', '29979 Pollich Junctions', 'Eichmannville', 'So', 0, 54014);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (329, '751', '(356)575-7995', '18071 Williamson Ville Suite 849', 'East Betty', 'Ha', 0, 6144);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (330, '471', '1-246-300-7536x048', '076 Graham Vista', 'North Elroy', 'No', 0, 663191242);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (331, '156', '620.927.3371', '043 Caroline Crossing Apt. 982', 'Amyburgh', 'Mi', 0, 5448538);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (332, '824', '947-273-4768x63467', '3800 Kohler Branch Suite 630', 'Josueburgh', 'Rh', 0, 3458);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (333, '509', '1-407-148-2689x081', '857 Krystel Knolls', 'New Dariusburgh', 'Ok', 0, 9432022);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (334, '519', '058.157.8887x38685', '44425 Wolf Dam', 'Fredyhaven', 'Io', 0, 99004);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (335, '975', '02723677344', '49552 Doyle Port', 'Barbaraborough', 'We', 0, 49584239);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (336, '253', '751.505.6205', '4853 Earline Isle Apt. 196', 'Linniemouth', 'Ne', 0, 220655);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (337, '231', '025-558-9948x846', '90828 Weimann Canyon', 'Daneborough', 'Ge', 0, 817);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (338, '410', '492.241.6659', '884 Ladarius Port', 'Lake Terenceshire', 'Al', 0, 1415);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (339, '429', '(263)601-1857x8888', '9018 Thea Views Apt. 722', 'New Caterinaland', 'Mi', 0, 7459427);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (340, '499', '07013501570', '521 Green Court Suite 422', 'North Camille', 'Fl', 0, 94778894);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (341, '841', '1-460-103-4889x8832', '124 Monique Coves Apt. 835', 'New Devenbury', 'So', 0, 525187);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (342, '310', '1-909-977-9376x033', '38863 McLaughlin Turnpike', 'Jimmiestad', 'Vi', 0, 897944293);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (343, '444', '907-934-2280x395', '585 Thompson Extension', 'Destinbury', 'Te', 0, 2452);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (344, '515', '01843434499', '8796 Justus Terrace Apt. 198', 'East Ewell', 'Wa', 0, 14487);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (345, '616', '808.208.1771x59591', '247 Oberbrunner Junction', 'Emiliamouth', 'Ma', 0, 687908858);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (346, '746', '+94(3)9169610588', '8999 Kobe Meadows Suite 088', 'Rathview', 'Io', 0, 747807327);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (347, '924', '1-481-422-4678', '1851 Hickle Rapid Suite 177', 'South Pinkieton', 'Di', 0, 60387259);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (348, '341', '313-372-8401x00713', '3611 Wilford Points', 'Jevonland', 'Vi', 0, 57716775);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (349, '610', '+20(8)6663364920', '37821 Thiel Lights Suite 574', 'Mohammedmouth', 'In', 0, 89393624);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (350, '807', '611-974-4316x1292', '3120 Murray Glen Suite 030', 'Kalebmouth', 'No', 0, 16782039);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (351, '410', '(770)609-9158x555', '67400 Annamarie Station', 'Handbury', 'Al', 0, 267);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (352, '908', '+30(2)5391607308', '28118 Ondricka Stream Suite 412', 'West Conorburgh', 'Wi', 0, 78380708);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (353, '835', '1-933-612-9799', '60422 Kub Crest Apt. 272', 'Nicolehaven', 'Ha', 0, 41697647);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (354, '932', '1-456-979-8560x3270', '2488 Brando Gardens', 'Lake Janick', 'Ma', 0, 92090);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (355, '424', '1-751-056-5879x35740', '59909 Tracy Walks Apt. 496', 'Legroston', 'Ne', 0, 695361);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (356, '702', '243-493-4816', '391 Bergnaum Crescent', 'Lesterfurt', 'Ne', 0, 413743);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (357, '890', '915-502-0642', '616 Roob Cove Apt. 071', 'Langtown', 'Ke', 0, 1382);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (358, '747', '915-251-4052x3644', '25459 Gerhold Motorway', 'New Margarettefort', 'Ne', 0, 371);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (359, '078', '+97(7)9363588840', '741 Gladys Heights', 'Port Fred', 'De', 0, 372746379);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (360, '774', '08780821698', '544 Koch Ports', 'East Turnerside', 'Ar', 0, 944330);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (361, '682', '800-963-9549x855', '0588 Conner Street', 'Melissabury', 'Io', 0, 9081111);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (362, '520', '(687)744-7532x49504', '35461 Nathan Rapid', 'South Urbanborough', 'Mo', 0, 2241);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (363, '240', '006-486-8820x264', '32197 Kyleigh Walks Apt. 745', 'Lake Jaidamouth', 'Mi', 0, 51184103);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (364, '946', '1-032-693-6293x7640', '61727 Jennie Rest', 'Bartshire', 'Rh', 0, 176193);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (365, '146', '1-445-644-4894x566', '2854 Dessie Centers', 'Maciebury', 'Pe', 0, 10967593);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (366, '883', '875.379.7453', '28812 Harber Ferry', 'Lake Dougfort', 'Ne', 0, 708241);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (367, '644', '799.333.3318', '980 Hyatt Shores', 'Lake Erlingfort', 'Il', 0, 378);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (368, '290', '(344)283-4393x8631', '970 Nathanael Gardens', 'New Rafaela', 'Ne', 0, 58614);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (369, '901', '1-136-009-7653', '697 Dana Drives Apt. 407', 'Port Hilbert', 'De', 0, 414874754);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (370, '409', '963-640-1021x290', '9571 Chloe Locks', 'South Jewelshire', 'Ma', 0, 271575);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (371, '906', '03728231199', '30417 Mayer Loaf Suite 763', 'Lake Jason', 'Ma', 0, 62);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (372, '781', '(467)441-5830x0042', '2066 Colten Burg Suite 514', 'Zboncakberg', 'We', 0, 59613);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (373, '838', '943-051-0570x1063', '206 Matteo Coves Suite 454', 'West Randal', 'Id', 0, 2333);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (374, '508', '+98(1)8113488082', '0958 Devante Forges', 'New Deltafort', 'Wy', 0, 56);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (375, '441', '393-292-0262', '20130 Sawayn Ridges', 'Lake Ellis', 'Ha', 0, 89710);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (376, '426', '1-527-393-6453x8632', '9412 Rippin Ridges', 'Alfonzohaven', 'Al', 0, 54095508);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (377, '328', '(567)038-1060x440', '832 O\'Connell Path Apt. 724', 'North Loraineside', 'Or', 0, 914);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (378, '723', '(175)707-0370x935', '03603 Daniel Junctions Apt. 205', 'Freidabury', 'Ar', 0, 9227025);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (379, '567', '855.135.9197x9380', '8791 Cordelia Station', 'North Melyssa', 'Vi', 0, 634459);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (380, '879', '1-917-479-3186', '085 Luna Prairie Suite 393', 'Saraimouth', 'Wa', 0, 60);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (381, '960', '1-205-946-8526x55967', '8411 Robert Expressway', 'Muellerstad', 'Ne', 0, 8886);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (382, '916', '04939486902', '0581 Nienow Fall', 'Jaylanport', 'Or', 0, 479300296);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (383, '605', '354.354.3831x2287', '85312 Farrell Ferry', 'Kianaburgh', 'Ut', 0, 121271778);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (384, '135', '020-250-6422', '7005 Jamil Turnpike', 'Walshchester', 'Ca', 0, 189388128);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (385, '973', '(700)239-5814', '949 Myra Viaduct Apt. 377', 'West Noemieville', 'No', 0, 54092);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (386, '114', '421-688-2381x1376', '887 Vince Bridge Suite 676', 'Timothyshire', 'Mi', 0, 74920006);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (387, '408', '641-101-8995', '59645 Annamarie Mission Apt. 001', 'Hoppehaven', 'Id', 0, 33892);
INSERT INTO `PRODUCT_VENDOR` (`VendorID`, `Ven_Name`, `Ven_Phone`, `Ven_Address`, `Ven_City`, `Ven_State`, `Ven_ZipCode`, `Ven_Order`) VALUES (388, '758', '06993525942', '546 Anabelle Port Apt. 609', 'South Rudolphport', 'Ma', 0, 84390563);


-- SalesReport TABLE
CREATE TABLE SalesReport(
ReportID INT(5) NOT NULL PRIMARY KEY,
StoreID INT(3) NOT NULL,
Report_BegDate DATE NOT NULL,
Report_EndDate DATE NOT NULL,
Report_TotalSales DECIMAL(15,2) NOT NULL,
FOREIGN KEY (StoreID) REFERENCES STORE(StoreID));

-- Inserting values into SalesReport (make up my own values for TotalSales
INSERT INTO SalesReport VALUES('100001','8','2023-01-01','2023-01-30','140000.00');
INSERT INTO SalesReport VALUES('101001','9','2023-05-01','2023-05-30','3000000.00');
INSERT INTO SalesReport VALUES('10201','17','2023-07-01','2023-07-30','450000.00');
INSERT INTO SalesReport VALUES('10212','8','2023-07-01','2023-07-30','630000.00');
INSERT INTO SalesReport VALUES('10241','5','2023-01-01','2023-01-30','9000000.00');
INSERT INTO SalesReport VALUES('14501','11','2023-02-01','2023-02-30','1450000.00');
INSERT INTO SalesReport VALUES('10326','5','2023-01-01','2023-01-01','5000000.00');
INSERT INTO SalesReport VALUES('10245','100','2023-02-01','2023-02-30','1570000.00');
INSERT INTO SalesReport VALUES('10239','11','2023-05-01','2023-05-30','124000.00');
INSERT INTO SalesReport VALUES('10333','1','2023-09-01','2023-09-30','50000.00');
INSERT INTO SalesReport VALUES('10444','2','2023-09-01','2023-09-30','40000.00');
INSERT INTO SalesReport VALUES('10555','3','2023-06-01','2023-06-30','4530000.00');
INSERT INTO SalesReport VALUES('10666','4','2023-07-01','2023-07-30','4560000.00');
INSERT INTO SalesReport VALUES('10777','5','2023-04-01','2023-04-30','4590000.00');
INSERT INTO SalesReport VALUES('10217','17','2023-04-01','2023-04-30','450000.00');





