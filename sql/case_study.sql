CREATE DATABASE  IF NOT EXISTS `data_new_module_03` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `data_new_module_03`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: data_new_module_03
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
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'admin123@gmail.com','123456789','admin'),(2,'user@gmail.com','123456789','user'),(4,'hoang123@gmail.com','123456789','user'),(5,'hoang123456@gmail.com','123456789','user'),(6,'loc@gmail.com','locvip62','user'),(7,'hoang2@gmail.com','123456789','user'),(8,'hoang4@gmail.com','123456789','user'),(9,'hoang5@gmail.com','123456789','user'),(10,'hoang6@gmail.com','123456789','user'),(11,'hoang7@gmail.com','123456789','user'),(12,'hoang8@gmail.com','123456789','user'),(13,'hoang9@gmail.com','123456789','user'),(14,'hoang10@gmail.com','123456789','user'),(15,'adminmaster@gmail.com','123456','admin master'),(16,'admin@gmail.com','123456','admin');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,'2025-01-07 10:09:58'),(2,2,'2025-01-07 10:10:01'),(3,3,'2025-01-07 10:10:17'),(4,4,'2025-01-07 12:37:02'),(5,5,'2025-01-07 12:51:53'),(6,6,'2025-01-07 12:52:39'),(7,7,'2025-01-07 12:53:44'),(8,8,'2025-01-07 12:56:15'),(9,9,'2025-01-07 12:58:01'),(10,10,'2025-01-07 12:59:04'),(11,11,'2025-01-07 13:00:17'),(12,12,'2025-01-07 13:00:38');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cartitem`
--

LOCK TABLES `cartitem` WRITE;
/*!40000 ALTER TABLE `cartitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Laptop',NULL,'2024-12-30 13:47:04'),(2,'PC',NULL,'2024-12-30 13:47:12'),(3,'Bàn phím',NULL,'2024-12-30 13:47:27'),(4,'Tai nghe',NULL,'2024-12-30 13:47:34'),(5,'Chuột',NULL,'2024-12-30 13:47:49'),(6,'Màn hình',NULL,'2025-01-01 07:31:37');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Laptop Lenovo V14 G4 IRU 83A000BHVN',NULL,13790000.00,30,'resources\\images\\20241230205000.png',1,'2024-12-30 13:50:31'),(2,'Laptop Acer Aspire 3 A315 58 54M5',NULL,8490000.00,20,'resources\\images\\20250103190500.png',1,'2025-01-03 12:06:03'),(3,'Laptop gaming ASUS TUF Gaming F15 FX507VU LP315W',NULL,25790000.00,20,'resources\\images\\20250103194300.png',1,'2025-01-03 12:42:40'),(4,'Laptop gaming Lenovo LOQ 15IAX9 83GS001SVN',NULL,16990000.00,30,'resources\\images\\20250103194400.png',1,'2025-01-03 12:44:29'),(5,'Laptop gaming MSI Katana 15 B13VEK 252VN',NULL,28990000.00,20,'resources\\images\\20250103194500.png',1,'2025-01-03 12:46:14'),(6,'Laptop Gaming Acer Nitro 5 AN515 45 R6EV',NULL,13990000.00,10,'resources\\images\\20250103194600.png',1,'2025-01-03 12:46:39'),(7,'Laptop gaming Acer Nitro 5 AN515 46 R6QR',NULL,20990000.00,15,'resources\\images\\20250103194700.png',1,'2025-01-03 12:48:03'),(8,'Laptop gaming MSI Katana 15 B13VFK 676VN',NULL,27990000.00,24,'resources\\images\\20250103194800.png',1,'2025-01-03 12:48:58'),(9,'Laptop gaming MSI Thin 15 B13UC 2044VN',NULL,19490000.00,31,'resources\\images\\20250103194900.png',1,'2025-01-03 12:49:44'),(10,'Laptop Lenovo V14 G4 IRU 83A0000TVN',NULL,9990000.00,12,'resources\\images\\20250103195000.png',1,'2025-01-03 12:50:32'),(11,'Bàn phím Logitech G Pro X 60 Light Speed White',NULL,3690000.00,22,'resources\\images\\20250106195000.png',3,'2025-01-06 05:54:08'),(12,'Bàn phím Vortex 8700 MultiX Summer Silver Switch',NULL,2490000.00,12,'resources\\images\\20250106194000.png',3,'2025-01-06 05:54:08'),(13,'Bàn phím Leopold FC750R Bluetooth Blue Grey - Red MX2A Switch',NULL,2840000.00,17,'resources\\images\\20250106195100.png',3,'2025-01-06 05:54:08'),(14,'Bàn phím Razer Huntsman V3 Pro TKL',NULL,4890000.00,76,'resources\\images\\20250106195200.png',3,'2025-01-06 05:54:08'),(15,'Bàn phím cơ Corsair K100 RGB Midnight Gold-OPX RF (CH-912A21A-NA)',NULL,4990000.00,22,'resources\\images\\20250106195300.png',3,'2025-01-06 05:54:08'),(16,'Bàn phím Bluetooth Rapoo Ralemo Pre 5 RA Xanh',NULL,450000.00,44,'resources\\images\\20250106195410.png',3,'2025-01-06 05:54:08'),(17,'Bàn phím DareU Không dây EK98 Pro RGB Trắng Dream Switch',NULL,1290000.00,66,'resources\\images\\20250106195420.png',3,'2025-01-06 05:54:08'),(18,'Bàn phím cơ DareU EK75 Full White Dream switch',NULL,650000.00,12,'resources\\images\\20250106195230.png',3,'2025-01-06 05:54:08'),(19,'Bàn phím cơ AKKO 5075B Plus Horizon SP Akko Switch V3 Cream Yellow Pro',NULL,1290000.00,33,'resources\\images\\20250106195220.png',3,'2025-01-06 05:54:08'),(20,'Bàn phím Rapoo V500 Pro Multimode TKL Red Switch',NULL,890000.00,22,'resources\\images\\20250106195130.png',3,'2025-01-06 05:54:08'),(21,'Chuột Logitech G102 LightSync White',NULL,390000.00,15,'resources\\images\\20250106193801.png',5,'2025-01-06 05:43:57'),(22,'Chuột DareU LM106G Black',NULL,100000.00,15,'resources\\images\\20250106194601.png',5,'2025-01-06 05:48:20'),(23,'Chuột Razer DeathAdder Essential (RZ01-03850100-R3M1)',NULL,400000.00,20,'resources\\images\\20250106195101.png',5,'2025-01-06 05:52:19'),(24,'Chuột không dây MonsGeek D1 Pink',NULL,120000.00,25,'resources\\images\\20250106200001.png',5,'2025-01-06 06:01:14'),(25,'Chuột Razer Basilisk V3 35K',NULL,2190000.00,10,'resources\\images\\20250106200401.png',5,'2025-01-06 06:05:11'),(26,'Màn hình ACER KG240Y M5 24\" IPS 180Hz chuyên game',NULL,2390000.00,15,'resources\\images\\20250106211100.png',6,'2025-01-06 14:11:33'),(27,'Màn hình AOC Q24G4E 24\" IPS 2K 180Hz G-Sync chuyên game',NULL,4190000.00,21,'resources\\images\\20250106211200.png',6,'2025-01-06 14:12:07'),(28,'Màn hình Viewsonic VA2432A-H 24\" IPS 120Hz viền mỏng',NULL,2490000.00,22,'resources\\images\\20250106211300.png',6,'2025-01-06 14:14:41'),(29,'Màn hình cong ViewSonic VX2719-PC-MHD 27\" VA 240Hz chuyên game',NULL,3350000.00,23,'resources\\images\\20250106211400.png',6,'2025-01-06 14:15:07'),(30,'Màn hình ViewSonic VX2479A-HD-PRO 24\" IPS 240Hz 1ms chuyên game',NULL,3890000.00,32,'resources\\images\\20250106211500.png',6,'2025-01-06 14:15:59');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `productspecification`
--

LOCK TABLES `productspecification` WRITE;
/*!40000 ALTER TABLE `productspecification` DISABLE KEYS */;
INSERT INTO `productspecification` VALUES (1,1,'CPU','Intel® Core™ i5-13420H, 8C (4P + 4E) / 12T, P-core 2.1 / 4.6GHz, E-core 1.5 / 3.4GHz, 12MB'),(2,1,'Ram','16GB (2x8GB) DDR4 3200MHz onboard (Không nâng cấp)\r\n'),(3,1,'Ổ cứng','512GB SSD M.2 2242 PCIe® 4.0x4 NVMe® (Còn trống 1 khe 2.5\" HDD up to 1TB, Không kèm cáp Sata HDD)'),(4,1,'Card đồ họa','Intel® UHD Graphics'),(5,1,'Màn hình','14\" FHD (1920x1080) IPS 300nits, Anti-glare, 45% NTSC'),(6,1,'Cổng giao tiếp','\"1x USB 2.0\n\"\r\n1x USB 3.2 Gen 1\r\n1x USB-C® 3.2 Gen 1 (support data transfer, Power Delivery 3.0 and DisplayPort™ 1.2)\r\n1x HDMI® 1.4b\r\n1x Headphone / microphone combo jack (3.5mm)\r\n1x Ethernet (RJ-45)\r\n1x Power connector'),(7,1,'Bàn phím','Bàn phím tiêu chuẩn, không LED\r\n'),(8,1,'Chuẩn LAN','100/1000M'),(9,1,'Chuẩn WIFI','Wi-Fi® 6, 11ax 2x2'),(10,1,'Bluetooth','v5.1'),(11,1,'Audio','Stereo speakers, 1.5W x2, Dolby® Audio\r\n'),(12,1,'Bảo mật','MIL-STD-810H military test passed\r\nFirmware TPM 2.0 Enabled'),(13,1,'Webcam','HD 720p with Privacy Shutter'),(14,1,'Hệ điều hành','Windows 11 Home\r\n'),(15,1,'Pin','Integrated 38Wh\r\n'),(16,1,'Trọng lượng','1.43 kg\r\n'),(17,1,'Màu sắc','Iron Grey\r\n'),(18,1,'Chất liệu','PC-ABS (Top), PC-ABS (Bottom)\r\n'),(19,1,'Kích thước','324.2 x 215.2 x 19.9 mm \r\n'),(20,2,'CPU','Intel Core i5-1135G7 2.4GHz up to 4.2GHz 8MB'),(21,2,'RAM','8GB (4GB Onboard + 4GB) DDR4 2400MHz (1x SO-DIMM socket, up to 12GB SDRAM)'),(22,2,'Ổ cứng','512GB PCIe NVMe SSD (Còn trống 1 khe 2.5\" SATA)'),(23,2,'Card đồ họa','Intel Iris Xe Graphics '),(24,2,'Màn hình','15.6\" FHD (1920 x 1080), Acer ComfyView LED-backlit TFT LCD'),(25,2,'Cổng giao tiếp','2x USB 3.2 Gen 1 Type-A\r\n1x USB 2.0\r\n1x HDMI®2.0 port with HDCP support\r\n1x RJ45\r\n1x 3.5 mm headphone/speaker jack, supporting headsets with built-in microphone\r\n1x DC-in jack for AC adapter'),(26,2,'Bàn phím','Không LED'),(27,2,'Audio','Realtek High Definition'),(28,2,'Đọc thẻ nhớ','None'),(29,2,'Chuẩn LAN','Gigabit Ethernet'),(30,2,'Wifi + Bluetooth','802.11a/b/g/n/ac + BT v5.0'),(31,2,'Webcam','720p HD audio/video recording'),(32,2,'Hệ điều hành','Windows 11 Home'),(33,2,'Pin','2 Cell 36.7 Whr'),(34,2,'Trọng lượng','1.7 kg'),(35,2,'Màu sắc','Bạc'),(36,2,'Chất liệu','Cover A, B, C, D: nhựa cứng Polycarbonate'),(37,2,'Kích thước','363 x 238.4 x 19.9 (mm)'),(39,3,'CPU','Intel® Core™ i7-13620H Processor 2.4 GHz (24M  Cache, up to 4.9 GHz, 10 cores: 6 P-cores and 4 E-cores)'),(40,3,'RAM','16GB (2x8GB) DDR5 4800MHz (2x SO-DIMM socket, up to 32GB SDRAM)'),(41,3,'Ổ cứng','512GB PCIe® 4.0 NVMe™ M.2 SSD (2230) (Còn trống 1 khe SSD M.2 PCIE)'),(42,3,'Card đồ họa','NVIDIA® GeForce RTX™ 4050 6GB GDDR6, Up to 2420MHz* at 140W (2370MHz Boost Clock+50MHz OC, 115W+25W Dynamic Boost)'),(43,3,'Màn hình','15.6\" FHD (1920 x 1080) IPS, 144Hz, Wide View, 250nits, Narrow Bezel, Non-Glare with 72% NTSC, 100% sRGB, 75.35% Adobe RGB, G-Sync'),(44,3,'Cổng giao tiếp','1x Thunderbolt™ 4 support DisplayPort™\r\n1x USB 3.2 Gen 2 Type-C support DisplayPort™ / power delivery / G-SYNC\r\n2x USB 3.2 Gen 1 Type-A\r\n1x RJ45 LAN port\r\n1x HDMI 2.1 FRL\r\n1x 3.5mm Combo Audio Jack\r\n'),(45,3,'Audio','2-speaker system, Dolby Atmos'),(46,3,'Bàn phím','Backlit Chiclet Keyboard RGB'),(47,3,'Chuẩn LAN','10/100/1000/Gigabits Base T'),(48,3,'Chuẩn WIFI','802.11AX (2X2)'),(49,3,'Bluetooth','v5.2'),(50,3,'Webcam','HD 720p'),(51,3,'Hệ điều hành','Windows 11 Home'),(52,3,'Pin','4 Cell 90WHr'),(53,3,'Trọng lượng','2.2 kg'),(54,3,'Màu sắc','Jaeger Gray'),(55,3,'Chất liệu','Vỏ nhựa cứng'),(56,3,'Kích thước','35.4 x 25.1 x 2.24 ~ 2.49 cm'),(57,4,'CPU','Intel® Core™ i5-12450HX, 8C (4P + 4E) / 12T, P-core up to 4.4GHz, E-core up to 3.1GHz, 12MB'),(58,4,'RAM','12GB (1x12GB) DDR5-4800 SO-DIMM (2x SO-DIMM socket, up to 32GB SDRAM)'),(59,4,'Ổ cứng','512GB SSD M.2 2242 PCIe 4.0x4 NVMe (2 Slots: M.2 2242/M.2 2280 PCIe 4.0 x4)'),(60,4,'Card đồ họa','NVIDIA® GeForce RTX™ 2050 4GB GDDR6, Boost Clock 1575MHz, TGP 65W'),(61,4,'Màn hình','15.6\" FHD (1920x1080) IPS 300nits Anti-glare, 100% sRGB, 144Hz, G-SYNC®'),(62,4,'Cổng kết nối','1x USB-C® (USB 10Gbps / USB 3.2 Gen 2), with PD 140W and DisplayPort™ 1.4\r\n3x USB-A (USB 5Gbps / USB 3.2 Gen 1)\r\n1x HDMI® 2.1, up to 8K/60Hz\r\n1x Ethernet (RJ-45)\r\n1x Headphone / microphone combo jack (3.5mm)\r\n1x Power connector\r\n'),(63,4,'Bàn phím','White Backlit, English'),(64,4,'Audio','Stereo speakers, 2W x2, optimized with Nahimic Audio'),(65,4,'Chuẩn Lan','100/1000M'),(66,4,'Wifi + Bluetooth','Wi-Fi® 6, 11ax 2x2 + BT5.2'),(67,4,'Webcam','FHD 1080p with E-shutter'),(68,4,'Hệ điều hành    ','Windows® 11 Home Single Language, English'),(69,4,'Pin','Integrated 60Wh (3 Cell)'),(70,4,'Trọng lượng','2.38 kg'),(71,4,'Màu sắc','Luna Grey'),(72,4,'Chất liệu','PC-ABS (Top), PC-ABS (Bottom)'),(73,4,'Kích thước    ','359.86 x 258.7 x 21.9-23.9 mm (14.17 x 10.19 x 0.86-0.94 inches)'),(74,5,'CPU','Intel Core i7-13620H (3.6GHz~4.9GHz) 10 Cores 16 Threads'),(75,5,'RAM','8GB (1 x 8GB) DDR5 5200MHz (2x SO-DIMM socket, up to 64GB SDRAM)'),(76,5,'Ổ cứng','512GB NVMe PCIe Gen 4 SSD (2 slots, Nâng cấp cần gắn thêm linh kiện tại TTBH MSI)'),(77,5,'VGA','NVIDIA GeForce RTX 4050 Laptop GPU 6GB GDDR6 '),(78,5,'Màn hình','15.6\" FHD (1920x1080), 144Hz, IPS-Level'),(79,5,'Cổng giao tiếp','1x Type-C (USB3.2 Gen1 / DP)\r\n2x Type-A USB3.2 Gen1\r\n1x Type-A USB2.0\r\n1x HDMI™ 2.1 (8K @ 60Hz / 4K @ 120Hz)\r\n1x RJ45'),(80,5,'Bàn phím','4-Zone RGB Gaming Keyboard'),(81,5,'Chuẩn LAN','Gigabit Ethernet'),(82,5,'Chuẩn WIFI','802.11 ax Wi-Fi 6 '),(83,5,'Bluetooth','v5.2'),(84,5,'Audio','Nahimic Audio'),(85,5,'Webcam','HD type (30fps@720p)'),(86,5,'Hệ điều hành','Windows 11 Home'),(87,5,'Pin','3 cell, 53.5Whr'),(88,5,'Trọng lượng','2.25 kg'),(89,5,'Màu sắc','Đen'),(90,5,'Kích thước','359 x 259 x 24.9 mm'),(91,6,'CPU','Ryzen 5 5600H ( 3.30 GHz - 4.20 GHz, Hexa-core (6 Core) , Cache 16 MB )'),(92,6,'RAM','8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)'),(93,6,'Ổ cứng','512GB SSD M.2 PCIE (Còn trống 1 khe SSD M.2 PCIE và 1 khe 2.5\" SATA)'),(94,6,'Card đồ họa','NVIDIA® GeForce® GTX 1650 4GB + AMD Radeon Graphics'),(95,6,'Màn hình','15.6\" FHD (1920 x 1080) IPS, 144Hz, Anti-Glare'),(96,6,'Cổng giao tiếp','3x USB 3.1 Gen 1\r\n1x USB 3.2 Gen 2 Type C\r\nRJ45'),(97,6,'Ổ quang','None'),(98,6,'Audio','Waves MaxxAudio, Acer TrueHarmony'),(99,6,'Bàn phím','RGB 4 vùng'),(100,6,'Đọc thẻ nhớ','None'),(101,6,'Chuẩn LAN','10/100/1000/Gigabits Base T'),(102,6,'Chuẩn WIFI','802.11AX (2x2)'),(103,6,'Bluetooth','v5.0'),(104,6,'Webcam','HD Webcam'),(105,6,'Hệ điều hành','Windows 11 Home'),(106,6,'Pin','4 Cell 57.5WHr'),(107,6,'Trọng lượng','2.30 kg'),(108,6,'Màu sắc','Đen'),(109,6,'Kích thước','363.4 x 255 x 23.9 mm'),(110,7,'CPU','AMD Ryzen™ 7 6800H (3.2 GHz upto 4.7 GHz, 8 nhân 16 luồng, L2 Cache: 4MB, L3 Cache: 16MB)'),(111,7,'Ram','16GB (2x8GB) DDR5 4800MHz (2x SO-DIMM socket, up to 32GB SDRAM)'),(112,7,'Ổ cứng','512GB PCIe NVMe SED SSD (Còn trống 1 khe SSD M.2 PCIE, nâng cấp tối đa 2TB)'),(113,7,'Card đồ họa','NVIDIA® GeForce RTX™ 3060 with 6 GB of dedicated GDDR6 VRAM'),(114,7,'Màn hình','15.6\" FHD (1920 x 1080) IPS 165Hz SlimBezel, 100% sRGB, Acer ComfyViewTM LED-backlit TFT LCD'),(115,7,'Cổng giao tiếp',' 2 x USB 3.2 Gen 2 ports with one featuring power-off USB charging\r\n1 x USB 3.2 Gen 1 port\r\n1 x USB Type-C™ port: USB 3.2 Gen 2 (up to 10 Gbps)\r\n• USB 3.2 Gen 2 (up to 10 Gbps)\r\n• DisplayPort over USB-C\r\n• USB charging 5 V; 3 A\r\n• DC-in port 20 V; 100 W\r\n1 x 3.5 mm headphone/speaker jack, supporting headsets with built-in microphone\r\n1 x DC-in jack for AC adapter\r\n1 x Ethernet (RJ-45) port\r\n1 x HDMI®2.1 port with HDCP support\r\n(Notes: HDMI2.1: Support 4K 120Hz HDR, 8K 60Hz HDR, VRR, G-sync compatible external monitor)'),(116,7,'Audio','DTS® X:Ultra Audio, Acer TrueHarmony™'),(117,7,'Bàn phím','RGB 4 Zone'),(118,7,'Tản nhiệt','2 quạt'),(119,7,'Chuẩn LAN','Killer™ Ethernet E2600'),(120,7,'Chuẩn WIFI','Wi-Fi 6E 802.11AX (2x2)'),(121,7,'Bluetooth','Bluetooth® 5.2'),(122,7,'Webcam','720p HD video at 30 fps with Temporal Noise Reduction'),(123,7,'Hệ điều hành','Windows 11 Home Single Language'),(124,7,'Pin','4 Cell 57WHr'),(125,7,'Trọng lượng','2.5 kg'),(126,7,'Màu sắc','Obsidian black'),(127,7,'Chất liệu','Cover A, B, C, D: nhựa cứng Polycarbonate'),(128,7,'Kích thước','360.4 x 271.09 x 25.9~26.9 (mm)'),(129,8,'CPU','Intel Core i7-13620H (3.6GHz~4.9GHz) 10 Cores 16 Threads'),(130,8,'RAM','16GB (2 x 8GB) DDR5 5200MHz (2x SO-DIMM socket, up to 64GB SDRAM)'),(131,8,'Ổ cứng','1TB NVMe PCIe Gen 4 SSD (2 slots, Nâng cấp cần gắn thêm linh kiện tại TTBH MSI)'),(132,8,'VGA','NVIDIA GeForce RTX 4060, GDDR6 8GB'),(133,8,'Màn hình','15.6\" FHD (1920x1080), 144Hz, IPS-Level, 45% NTSC'),(134,8,'Cổng giao tiếp','1x Type-C (USB3.2 Gen1 / DP)\r\n2x Type-A USB3.2 Gen1\r\n1x Type-A USB2.0\r\n1x HDMI™ 2.1 (8K @ 60Hz / 4K @ 120Hz)\r\n1x RJ45\r\n'),(135,8,'Bàn phím','4-Zone RGB Gaming Keyboard'),(136,8,'Chuẩn LAN','Gigabit Ethernet'),(137,8,'Chuẩn WIFI','802.11 ax Wi-Fi 6 '),(138,8,'Bluetooth','v5.2'),(139,8,'Audio','Nahimic Audio'),(140,8,'Webcam','HD type (30fps@720p)'),(141,8,'Hệ điều hành','Windows 11 Home'),(142,8,'Pin','3 cell, 53.5Whr'),(143,8,'Trọng lượng','2.2 kg'),(144,8,'Màu sắc','Đen'),(145,8,'Kích thước','359 x 259 x 24.9 mm'),(146,9,'CPU','Intel Core i7-13620H (3.6GHz~4.9GHz) 10 Nhân 16 Luồng'),(147,9,'RAM','16GB (2 x 8GB) DDR4 3200MHz (2x SO-DIMM socket, up to 64GB SDRAM)'),(148,9,'Ổ cứng','SSD NVMe PCIe 512GB Gen4x4 (1 khe)'),(149,9,'VGA','NVIDIA® GeForce RTX™ 3050 Laptop GPU\r\nUp to 1172.5MHz Boost Clock 45W Maximum Graphics Power with Dynamic Boost.\r\n'),(150,9,'Màn hình','15.6\" FHD (1920x1080), 144Hz, IPS-Level, 45% NTSC, 65% sRGB\r\n'),(151,9,'Cổng giao tiếp','1x Type-C (USB3.2 Gen1 / DP)\r\n3x Type-A USB3.2 Gen1\r\n1x HDMI™ (4K @ 30Hz)\r\n1x RJ45\r\n'),(152,9,'Bàn phím','Single Backlit Keyboard (Blue)'),(153,9,'Chuẩn LAN','2x 2W Speaker'),(154,9,'Chuẩn WIFI','Gigabit Ethernet'),(155,9,'Bluetooth','802.11 ax Wi-Fi 6E'),(156,9,'Audio','v5.3'),(157,9,'Webcam','HD type (30fps@720p)'),(158,9,'Hệ điều hành','Windows 11 Home'),(159,9,'Pin','3-Cell 52.4 Battery (Whr)'),(160,9,'Trọng lượng','1.86 kg'),(161,9,'Màu sắc','Cosmos Gray'),(162,9,'Kích thước','359 x 254 x 21.7 mm'),(163,10,'CPU','Intel® Core™ i3-1315U, 6C (2P + 4E) / 8T, P-core 1.2 / 4.5GHz, E-core 0.9 / 3.3GHz, 10MB'),(164,10,'Ram','8GB (1x8GB) DDR4 3200MHz onboard (còn 1 slot, nâng cấp tối đa 16GB)'),(165,10,'Ổ cứng','512GB SSD M.2 2242 PCIe® 4.0x4 NVMe® (Còn trống 1 khe 2.5\" HDD up to 1TB, Không kèm cáp Sata HDD)'),(166,10,'Card đồ họa','Intel® UHD Graphics'),(167,10,'Màn hình','14\" FHD (1920x1080) IPS 300nits, Anti-glare, 45% NTSC'),(168,10,'Cổng giao tiếp','1x USB 2.0\r\n1x USB 3.2 Gen 1\r\n1x USB-C® 3.2 Gen 1 (support data transfer, Power Delivery 3.0 and DisplayPort™ 1.2)\r\n1x HDMI® 1.4b\r\n1x Headphone / microphone combo jack (3.5mm)\r\n1x Ethernet (RJ-45)\r\n1x Power connector\r\n'),(169,10,'Bàn phím','Bàn phím tiêu chuẩn, không LED'),(170,10,'Chuẩn LAN','100/1000M'),(171,10,'Chuẩn WIFI','Wi-Fi® 6, 11ax 2x2'),(172,10,'Bluetooth','v5.1'),(173,10,'Audio','Stereo speakers, 1.5W x2, Dolby® Audio'),(174,10,'Bảo mật','MIL-STD-810H military test passed\r\nFirmware TPM 2.0 Enabled\r\n'),(175,10,'Webcam','HD 720p with Privacy Shutter'),(176,10,'Hệ điều hành','Windows 11 Home'),(177,10,'Pin','Integrated 38Wh'),(178,10,'Trọng lượng','1.43 kg'),(179,10,'Màu sắc','Iron Grey'),(180,10,'Chất liệu','PC-ABS (Top), PC-ABS (Bottom)'),(181,10,'Kích thước','324.2 x 215.2 x 19.9 mm '),(182,11,'Keycaps','PBT Plastic'),(183,11,'Kích thước','Tenkeyless'),(184,11,'Kết nối','Bluetooth'),(185,11,'Switch','Gateron Brown'),(186,11,'Trọng lượng','950 g'),(187,11,'Bảo hành','1 năm'),(188,11,'Layout','ISO'),(189,11,'Hỗ trợ','Anti-Ghosting'),(190,11,'Kiểu bàn phím','Cơ học'),(191,11,'Thương hiệu','Logitech'),(192,12,'Keycaps','PBT Plastic'),(193,12,'Kích thước','Full-size'),(194,12,'Kết nối','Có dây'),(195,12,'Switch','Cherry MX Red'),(196,12,'Trọng lượng','1.2 kg'),(197,12,'Bảo hành','2 năm'),(198,12,'Layout','ANSI'),(199,12,'Hỗ trợ','N-Key Rollover'),(200,12,'Kiểu bàn phím','Cơ học'),(201,12,'Thương hiệu','Vortex'),(202,13,'Keycaps','ABS Plastic'),(203,13,'Kích thước','Tenkeyless'),(204,13,'Kết nối','Bluetooth'),(205,13,'Switch','Gateron Brown'),(206,13,'Trọng lượng','950 g'),(207,13,'Bảo hành','1 năm'),(208,13,'Layout','ISO'),(209,13,'Hỗ trợ','Anti-Ghosting'),(210,13,'Kiểu bàn phím','Cơ học'),(211,13,'Thương hiệu','Leopold'),(212,14,'Keycaps','PBT Plastic'),(213,14,'Kích thước','60%'),(214,14,'Kết nối','USB-C'),(215,14,'Switch','Kalih Box White'),(216,14,'Trọng lượng','800 g'),(217,14,'Bảo hành','3 năm'),(218,14,'Layout','ANSI'),(219,14,'Hỗ trợ','NKRO'),(220,14,'Kiểu bàn phím','Cơ học'),(221,14,'Thương hiệu','Razer'),(222,15,'Keycaps','PBT Plastic'),(223,15,'Kích thước','Full-size'),(224,15,'Kết nối','Bluetooth'),(225,15,'Switch','Cherry MX Blue'),(226,15,'Trọng lượng','1.3 kg'),(227,15,'Bảo hành','2 năm'),(228,15,'Layout','ISO'),(229,15,'Hỗ trợ','Anti-Ghosting'),(230,15,'Kiểu bàn phím','Cơ học'),(231,15,'Thương hiệu','Corsair'),(232,16,'Keycaps','ABS Plastic'),(233,16,'Kích thước','75%'),(234,16,'Kết nối','USB-C'),(235,16,'Switch','Gateron Black'),(236,16,'Trọng lượng','950 g'),(237,16,'Bảo hành','1 năm'),(238,16,'Layout','ANSI'),(239,16,'Hỗ trợ','N-Key Rollover'),(240,16,'Kiểu bàn phím','Cơ học'),(241,16,'Thương hiệu','Keychron'),(242,17,'Keycaps','PBT Plastic'),(243,17,'Kích thước','Tenkeyless'),(244,17,'Kết nối','Có dây'),(245,17,'Switch','Cherry MX Silent Red'),(246,17,'Trọng lượng','1.1 kg'),(247,17,'Bảo hành','2 năm'),(248,17,'Layout','ISO'),(249,17,'Hỗ trợ','Anti-Ghosting'),(250,17,'Kiểu bàn phím','Cơ học'),(251,17,'Thương hiệu','HyperX'),(252,18,'Keycaps','ABS Plastic'),(253,18,'Kích thước','Full-size'),(254,18,'Kết nối','Bluetooth'),(255,18,'Switch','Gateron Green'),(256,18,'Trọng lượng','1.4 kg'),(257,18,'Bảo hành','1 năm'),(258,18,'Layout','ANSI'),(259,18,'Hỗ trợ','NKRO'),(260,18,'Kiểu bàn phím','Cơ học'),(261,18,'Thương hiệu','SteelSeries'),(262,19,'Keycaps','PBT Plastic'),(263,19,'Kích thước','65%'),(264,19,'Kết nối','USB-C'),(265,19,'Switch','Cherry MX Brown'),(266,19,'Trọng lượng','1.2 kg'),(267,19,'Bảo hành','2 năm'),(268,19,'Layout','ANSI'),(269,19,'Hỗ trợ','N-Key Rollover'),(270,19,'Kiểu bàn phím','Cơ học'),(271,19,'Thương hiệu','Corsair'),(272,20,'Keycaps','ABS Plastic'),(273,20,'Kích thước','60%'),(274,20,'Kết nối','Có dây'),(275,20,'Switch','Outemu Red'),(276,20,'Trọng lượng','850 g'),(277,20,'Bảo hành','1 năm'),(278,20,'Layout','ANSI'),(279,20,'Hỗ trợ','Anti-Ghosting'),(280,20,'Kiểu bàn phím','Cơ học'),(281,20,'Thương hiệu','Redragon'),(282,21,'Switch','Omron'),(283,21,'IPS','200'),(284,21,'Độ dài dây (cm)','210'),(285,21,'LED','RGB Lightsync'),(286,21,'Tuổi thọ','50 triệu lần nhấn'),(287,22,'Switch','Omron'),(288,22,'IPS','200'),(289,22,'Độ dài dây (cm)','210'),(290,22,'LED','RGB Lightsync'),(291,22,'Tuổi thọ','50 triệu lần nhấn'),(292,23,'Kiểu cầm','Ergonomic / Công thái học'),(293,23,'Trọng lượng','96g'),(294,23,'Thương hiệu','Razer'),(295,23,'Số nút','5 nút có thể lập trình'),(296,23,'Bảo hành','12 tháng'),(297,24,'Thiết kế tối giản','Plug & Play'),(298,24,'Thương hiệu','MonsGeek'),(299,24,'Kết nối','2.4Ghz / 1000 CPI / 3 nút bấm'),(300,24,'Bảo hành','12 tháng'),(301,24,'Trọng lượng','84g'),(302,25,'Bảo hành','24 tháng'),(303,25,'Cảm biến','Cảm biến quang học Focus Pro 35K Gen-2'),(304,25,'Cáp','Cáp Razer™ Speedflex'),(305,25,'Thương hiệu','Razer'),(306,25,'Vòng đời nhấp chuột','90 triệu lần nhấp'),(307,26,'Phụ kiện trong hộp','Dây nguồn; dây HDMI; dây DisplayPort (optional)'),(308,26,'Công nghệ chống giật; xé màn hình','AMD Freesync Premium'),(309,26,'Kích thước','24 inch'),(310,26,'Cổng kết nối','2 x HDMI (2.0) ; 1 x DisplayPort (1.4)'),(311,26,'Tỷ lệ khung hình','16:09'),(312,26,'Treo tường VESA','75 x 75 mm'),(313,26,'Bảo hành','36 tháng'),(314,26,'Tần số quét','180Hz'),(315,26,'Thương hiệu','Acer'),(316,26,'Tấm nền','IPS'),(317,26,'Độ sáng','250 cd/m²'),(318,26,'Độ phân giải','Full HD (1920 x 1080)'),(319,26,'Màu sắc hiển thị','16.7 triệu màu sắc; 99% sRGB'),(320,26,'Độ tương phản','1000:1 / 100.000.000:1'),(321,26,'Thời gian phản hồi','1ms (VRB) - 4ms (GtG)'),(322,26,'Góc nhìn','178° / 178°'),(323,27,'Tần số quét','180 Hz'),(324,27,'Kiểu màn hình','Phẳng'),(325,27,'Tương thích VESA','100 x 100 mm'),(326,27,'Cổng kết nối','2 x HDMI™ (2.0); 1 x DisplayPort (1.4)'),(327,27,'Kích thước','24 inch'),(328,27,'Khử nhấp nháy','Có'),(329,27,'Thời gian phản hồi','1ms'),(330,27,'Phụ kiện trong hộp','Dây nguồn; dây HDMI (optional); dây DisplayPort (optional)'),(331,27,'Không gian màu','sRGB 122%; DCI-P3 96%; Delta E<2; 1.07B'),(332,27,'Bảo hành','36 tháng'),(333,27,'Độ phân giải','2K (2560 x 1440)'),(334,27,'Tấm nền','Fast IPS'),(335,27,'Độ sáng (Typ.)','350 cd;m²'),(336,28,'Không gian màu','105% sRGB'),(337,28,'Khử nhấp nháy','Có'),(338,28,'Tương thích VESA','75 x 75 mm'),(339,28,'Phụ kiện trong hộp','Dây nguồn; dây HDMI (optional); dây DisplayPort (optional)'),(340,28,'Độ phân giải','Full HD (1920 x 1080)'),(341,28,'Tấm nền','IPS'),(342,28,'Bảo hành','36 tháng'),(343,28,'Kiểu màn hình','Phẳng'),(344,28,'Thời gian phản hồi','1ms'),(345,28,'Tần số quét','120 Hz'),(346,28,'Cổng kết nối','1 x HDMI™;1 x VGA'),(347,28,'Kích thước','24 inch'),(348,28,'Độ sáng (Typ.)','250 cd/m²'),(349,29,'Cổng kết nối','2 x HDMI™;1 x Display Port'),(350,29,'Kích thước','27 inch'),(351,29,'Độ phân giải','Full HD (1920 x 1080)'),(352,29,'Độ sáng (Typ.)','250 cd/m²'),(353,29,'Tần số quét','240 Hz'),(354,29,'Tương thích VESA','75 x 75 mm'),(355,29,'Phụ kiện trong hộp','Dây nguồn; dây HDMI (optional); dây DisplayPort (optional)'),(356,29,'Thời gian phản hồi','1ms'),(357,29,'Không gian màu','104% sRGB'),(358,29,'Tấm nền','VA'),(359,29,'Kiểu màn hình','Cong'),(360,29,'Bảo hành','36 tháng'),(361,29,'Khử nhấp nháy','Có'),(362,30,'Không gian màu','102% sRGB'),(363,30,'Phụ kiện trong hộp','Dây nguồn; dây HDMI (optional); dây DisplayPort (optional)'),(364,30,'Bảo hành','36 tháng'),(365,30,'Độ sáng (Typ.)','250 cd/m²'),(366,30,'Thời gian phản hồi','1ms'),(367,30,'Khử nhấp nháy','Có'),(368,30,'Kích thước','24 inch'),(369,30,'Tần số quét','240 Hz'),(370,30,'Tương thích VESA','100 x 100 mm'),(371,30,'Độ phân giải','Full HD (1920 x 1080)'),(372,30,'Kiểu màn hình','Phẳng'),(373,30,'Cổng kết nối','1 x HDMI™;1 x Display Port'),(374,30,'Tấm nền','IPS');
/*!40000 ALTER TABLE `productspecification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'hoang','1979-01-01','male','0123456789','ha noi','2025-01-06 11:56:54',2),(2,'hoang2',NULL,NULL,NULL,NULL,'2025-01-07 03:46:32',4),(3,'hoang3',NULL,NULL,NULL,NULL,'2025-01-07 10:10:17',5),(4,'loc',NULL,NULL,NULL,NULL,'2025-01-07 12:37:02',6),(5,'hoang3',NULL,NULL,NULL,NULL,'2025-01-07 12:51:53',7),(6,'hoang4',NULL,NULL,NULL,NULL,'2025-01-07 12:52:39',8),(7,'hoang5',NULL,NULL,NULL,NULL,'2025-01-07 12:53:44',9),(8,'hoang6',NULL,NULL,NULL,NULL,'2025-01-07 12:56:15',10),(9,'test',NULL,NULL,NULL,NULL,'2025-01-07 12:58:01',11),(10,'test',NULL,NULL,NULL,NULL,'2025-01-07 12:59:04',12),(11,'dev test',NULL,NULL,NULL,NULL,'2025-01-07 13:00:17',13),(12,'dev',NULL,NULL,NULL,NULL,'2025-01-07 13:00:38',14),(13,'Nguyễn Văn A','1990-01-15','male','0901234567','123 Đường ABC, Hà Nội','2025-01-08 01:31:16',1),(14,'Trần Thị B','1992-03-22','female','0912345678','456 Đường XYZ, Hồ Chí Minh','2025-01-08 01:31:16',2),(15,'Lê Minh C','1985-07-10','male','0933456789','789 Đường PQR, Đà Nẵng','2025-01-08 01:31:16',3),(16,'Phạm Thị D','1995-09-05','female','0944567890','101 Đường STU, Hải Phòng','2025-01-08 01:31:16',4),(17,'Hoàng Quốc E','1991-12-30','male','0955678901','202 Đường VWX, Cần Thơ','2025-01-08 01:31:16',5),(18,'Nguyễn Thị F','1993-04-25','female','0966789012','303 Đường YZA, Bình Dương','2025-01-08 01:31:16',6),(19,'Trần Đức G','1989-11-11','male','0977890123','404 Đường BCD, Vũng Tàu','2025-01-08 01:31:16',7),(20,'Lê Mai H','1997-06-17','female','0988901234','505 Đường EFG, Huế','2025-01-08 01:31:16',8),(21,'Phạm Minh I','2000-02-08','male','0999012345','606 Đường HIJ, Quảng Ninh','2025-01-08 01:31:16',9),(22,'Hoàng Thi K','1998-08-19','female','0901122334','707 Đường KLM, Bình Phước','2025-01-08 01:31:16',10);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-08 10:48:42
