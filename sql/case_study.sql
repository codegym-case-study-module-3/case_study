/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80040
 Source Host           : localhost:3306
 Source Schema         : module3_case_study

 Target Server Type    : MySQL
 Target Server Version : 80040
 File Encoding         : 65001

 Date: 08/01/2025 20:58:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` enum('admin','user','admin master') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'user',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, 'admin123@gmail.com', '123456789', 'admin master');
INSERT INTO `account` VALUES (2, 'user@gmail.com', '123456789', 'user');
INSERT INTO `account` VALUES (4, 'hoang123@gmail.com', '123456789', 'user');
INSERT INTO `account` VALUES (5, 'hoang123456@gmail.com', '123456789', 'user');
INSERT INTO `account` VALUES (6, 'loc@gmail.com', 'locvip62', 'user');
INSERT INTO `account` VALUES (7, 'hoang2@gmail.com', '123456789', 'user');
INSERT INTO `account` VALUES (8, 'hoang4@gmail.com', '123456789', 'user');
INSERT INTO `account` VALUES (9, 'hoang5@gmail.com', '123456789', 'user');
INSERT INTO `account` VALUES (10, 'hoang6@gmail.com', '123456789', 'user');
INSERT INTO `account` VALUES (11, 'hoang7@gmail.com', '123456789', 'user');
INSERT INTO `account` VALUES (12, 'hoang8@gmail.com', '123456789', 'user');
INSERT INTO `account` VALUES (13, 'hoang9@gmail.com', '123456789', 'user');
INSERT INTO `account` VALUES (14, 'hoang10@gmail.com', '123456789', 'user');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1, 1, '2025-01-07 17:09:58');
INSERT INTO `cart` VALUES (2, 2, '2025-01-07 17:10:01');
INSERT INTO `cart` VALUES (3, 3, '2025-01-07 17:10:17');
INSERT INTO `cart` VALUES (4, 4, '2025-01-07 19:37:02');
INSERT INTO `cart` VALUES (5, 5, '2025-01-07 19:51:53');
INSERT INTO `cart` VALUES (6, 6, '2025-01-07 19:52:39');
INSERT INTO `cart` VALUES (7, 7, '2025-01-07 19:53:44');
INSERT INTO `cart` VALUES (8, 8, '2025-01-07 19:56:15');
INSERT INTO `cart` VALUES (9, 9, '2025-01-07 19:58:01');
INSERT INTO `cart` VALUES (10, 10, '2025-01-07 19:59:04');
INSERT INTO `cart` VALUES (11, 11, '2025-01-07 20:00:17');
INSERT INTO `cart` VALUES (12, 12, '2025-01-07 20:00:38');

-- ----------------------------
-- Table structure for cartitem
-- ----------------------------
DROP TABLE IF EXISTS `cartitem`;
CREATE TABLE `cartitem`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `cart_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cart_id`(`cart_id` ASC) USING BTREE,
  INDEX `product_id`(`product_id` ASC) USING BTREE,
  CONSTRAINT `cartitem_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `cartitem_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cartitem
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'Laptop', NULL, '2024-12-30 20:47:04');
INSERT INTO `category` VALUES (2, 'PC', NULL, '2024-12-30 20:47:12');
INSERT INTO `category` VALUES (3, 'Bàn phím', NULL, '2024-12-30 20:47:27');
INSERT INTO `category` VALUES (4, 'Tai nghe', NULL, '2024-12-30 20:47:34');
INSERT INTO `category` VALUES (5, 'Chuột', NULL, '2024-12-30 20:47:49');
INSERT INTO `category` VALUES (6, 'Màn hình', NULL, '2025-01-01 14:31:37');

-- ----------------------------
-- Table structure for orderdetails
-- ----------------------------
DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_id`(`order_id` ASC) USING BTREE,
  INDEX `product_id`(`product_id` ASC) USING BTREE,
  CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderdetails
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `status` int NOT NULL,
  `total_price` decimal(10, 2) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_chk_1` CHECK (`status` in (1,2,3,4))
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `price` decimal(10, 2) NOT NULL,
  `stock` int NULL DEFAULT 0,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `category_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `category_id`(`category_id` ASC) USING BTREE,
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'Laptop Lenovo V14 G4 IRU 83A000BHVN', NULL, 13790000.00, 30, 'resources\\images\\20241230205000.png', 1, '2024-12-30 20:50:31');
INSERT INTO `products` VALUES (2, 'Laptop Acer Aspire 3 A315 58 54M5', NULL, 8490000.00, 20, 'resources\\images\\20250103190500.png', 1, '2025-01-03 19:06:03');
INSERT INTO `products` VALUES (3, 'Laptop gaming ASUS TUF Gaming F15 FX507VU LP315W', NULL, 25790000.00, 20, 'resources\\images\\20250103194300.png', 1, '2025-01-03 19:42:40');
INSERT INTO `products` VALUES (4, 'Laptop gaming Lenovo LOQ 15IAX9 83GS001SVN', NULL, 16990000.00, 30, 'resources\\images\\20250103194400.png', 1, '2025-01-03 19:44:29');
INSERT INTO `products` VALUES (5, 'Laptop gaming MSI Katana 15 B13VEK 252VN', NULL, 28990000.00, 20, 'resources\\images\\20250103194500.png', 1, '2025-01-03 19:46:14');
INSERT INTO `products` VALUES (6, 'Laptop Gaming Acer Nitro 5 AN515 45 R6EV', NULL, 13990000.00, 10, 'resources\\images\\20250103194600.png', 1, '2025-01-03 19:46:39');
INSERT INTO `products` VALUES (7, 'Laptop gaming Acer Nitro 5 AN515 46 R6QR', NULL, 20990000.00, 15, 'resources\\images\\20250103194700.png', 1, '2025-01-03 19:48:03');
INSERT INTO `products` VALUES (8, 'Laptop gaming MSI Katana 15 B13VFK 676VN', NULL, 27990000.00, 24, 'resources\\images\\20250103194800.png', 1, '2025-01-03 19:48:58');
INSERT INTO `products` VALUES (9, 'Laptop gaming MSI Thin 15 B13UC 2044VN', NULL, 19490000.00, 31, 'resources\\images\\20250103194900.png', 1, '2025-01-03 19:49:44');
INSERT INTO `products` VALUES (10, 'Laptop Lenovo V14 G4 IRU 83A0000TVN', NULL, 9990000.00, 12, 'resources\\images\\20250103195000.png', 1, '2025-01-03 19:50:32');
INSERT INTO `products` VALUES (11, 'Bàn phím Logitech G Pro X 60 Light Speed White', NULL, 3690000.00, 22, 'resources\\images\\20250106195000.png', 3, '2025-01-06 12:54:08');
INSERT INTO `products` VALUES (12, 'Bàn phím Vortex 8700 MultiX Summer Silver Switch', NULL, 2490000.00, 12, 'resources\\images\\20250106194000.png', 3, '2025-01-06 12:54:08');
INSERT INTO `products` VALUES (13, 'Bàn phím Leopold FC750R Bluetooth Blue Grey - Red MX2A Switch', NULL, 2840000.00, 17, 'resources\\images\\20250106195100.png', 3, '2025-01-06 12:54:08');
INSERT INTO `products` VALUES (14, 'Bàn phím Razer Huntsman V3 Pro TKL', NULL, 4890000.00, 76, 'resources\\images\\20250106195200.png', 3, '2025-01-06 12:54:08');
INSERT INTO `products` VALUES (15, 'Bàn phím cơ Corsair K100 RGB Midnight Gold-OPX RF (CH-912A21A-NA)', NULL, 4990000.00, 22, 'resources\\images\\20250106195300.png', 3, '2025-01-06 12:54:08');
INSERT INTO `products` VALUES (16, 'Bàn phím Bluetooth Rapoo Ralemo Pre 5 RA Xanh', NULL, 450000.00, 44, 'resources\\images\\20250106195410.png', 3, '2025-01-06 12:54:08');
INSERT INTO `products` VALUES (17, 'Bàn phím DareU Không dây EK98 Pro RGB Trắng Dream Switch', NULL, 1290000.00, 66, 'resources\\images\\20250106195420.png', 3, '2025-01-06 12:54:08');
INSERT INTO `products` VALUES (18, 'Bàn phím cơ DareU EK75 Full White Dream switch', NULL, 650000.00, 12, 'resources\\images\\20250106195230.png', 3, '2025-01-06 12:54:08');
INSERT INTO `products` VALUES (19, 'Bàn phím cơ AKKO 5075B Plus Horizon SP Akko Switch V3 Cream Yellow Pro', NULL, 1290000.00, 33, 'resources\\images\\20250106195220.png', 3, '2025-01-06 12:54:08');
INSERT INTO `products` VALUES (20, 'Bàn phím Rapoo V500 Pro Multimode TKL Red Switch', NULL, 890000.00, 22, 'resources\\images\\20250106195130.png', 3, '2025-01-06 12:54:08');
INSERT INTO `products` VALUES (21, 'Chuột Logitech G102 LightSync White', NULL, 390000.00, 15, 'resources\\images\\20250106193801.png', 5, '2025-01-06 12:43:57');
INSERT INTO `products` VALUES (22, 'Chuột DareU LM106G Black', NULL, 100000.00, 15, 'resources\\images\\20250106194601.png', 5, '2025-01-06 12:48:20');
INSERT INTO `products` VALUES (23, 'Chuột Razer DeathAdder Essential (RZ01-03850100-R3M1)', NULL, 400000.00, 20, 'resources\\images\\20250106195101.png', 5, '2025-01-06 12:52:19');
INSERT INTO `products` VALUES (24, 'Chuột không dây MonsGeek D1 Pink', NULL, 120000.00, 25, 'resources\\images\\20250106200001.png', 5, '2025-01-06 13:01:14');
INSERT INTO `products` VALUES (25, 'Chuột Razer Basilisk V3 35K', NULL, 2190000.00, 10, 'resources\\images\\20250106200401.png', 5, '2025-01-06 13:05:11');
INSERT INTO `products` VALUES (26, 'Màn hình ACER KG240Y M5 24\" IPS 180Hz chuyên game', NULL, 2390000.00, 15, 'resources\\images\\20250106211100.png', 6, '2025-01-06 21:11:33');
INSERT INTO `products` VALUES (27, 'Màn hình AOC Q24G4E 24\" IPS 2K 180Hz G-Sync chuyên game', NULL, 4190000.00, 21, 'resources\\images\\20250106211200.png', 6, '2025-01-06 21:12:07');
INSERT INTO `products` VALUES (28, 'Màn hình Viewsonic VA2432A-H 24\" IPS 120Hz viền mỏng', NULL, 2490000.00, 22, 'resources\\images\\20250106211300.png', 6, '2025-01-06 21:14:41');
INSERT INTO `products` VALUES (29, 'Màn hình cong ViewSonic VX2719-PC-MHD 27\" VA 240Hz chuyên game', NULL, 3350000.00, 23, 'resources\\images\\20250106211400.png', 6, '2025-01-06 21:15:07');
INSERT INTO `products` VALUES (30, 'Màn hình ViewSonic VX2479A-HD-PRO 24\" IPS 240Hz 1ms chuyên game', NULL, 3890000.00, 32, 'resources\\images\\20250106211500.png', 6, '2025-01-06 21:15:59');

-- ----------------------------
-- Table structure for productspecification
-- ----------------------------
DROP TABLE IF EXISTS `productspecification`;
CREATE TABLE `productspecification`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `name_info` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `text_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_id`(`product_id` ASC) USING BTREE,
  CONSTRAINT `productspecification_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 375 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productspecification
-- ----------------------------
INSERT INTO `productspecification` VALUES (1, 1, 'CPU', 'Intel® Core™ i5-13420H, 8C (4P + 4E) / 12T, P-core 2.1 / 4.6GHz, E-core 1.5 / 3.4GHz, 12MB');
INSERT INTO `productspecification` VALUES (2, 1, 'Ram', '16GB (2x8GB) DDR4 3200MHz onboard (Không nâng cấp)\r\n');
INSERT INTO `productspecification` VALUES (3, 1, 'Ổ cứng', '512GB SSD M.2 2242 PCIe® 4.0x4 NVMe® (Còn trống 1 khe 2.5\" HDD up to 1TB, Không kèm cáp Sata HDD)');
INSERT INTO `productspecification` VALUES (4, 1, 'Card đồ họa', 'Intel® UHD Graphics');
INSERT INTO `productspecification` VALUES (5, 1, 'Màn hình', '14\" FHD (1920x1080) IPS 300nits, Anti-glare, 45% NTSC');
INSERT INTO `productspecification` VALUES (6, 1, 'Cổng giao tiếp', '\"1x USB 2.0\n\"\r\n1x USB 3.2 Gen 1\r\n1x USB-C® 3.2 Gen 1 (support data transfer, Power Delivery 3.0 and DisplayPort™ 1.2)\r\n1x HDMI® 1.4b\r\n1x Headphone / microphone combo jack (3.5mm)\r\n1x Ethernet (RJ-45)\r\n1x Power connector');
INSERT INTO `productspecification` VALUES (7, 1, 'Bàn phím', 'Bàn phím tiêu chuẩn, không LED\r\n');
INSERT INTO `productspecification` VALUES (8, 1, 'Chuẩn LAN', '100/1000M');
INSERT INTO `productspecification` VALUES (9, 1, 'Chuẩn WIFI', 'Wi-Fi® 6, 11ax 2x2');
INSERT INTO `productspecification` VALUES (10, 1, 'Bluetooth', 'v5.1');
INSERT INTO `productspecification` VALUES (11, 1, 'Audio', 'Stereo speakers, 1.5W x2, Dolby® Audio\r\n');
INSERT INTO `productspecification` VALUES (12, 1, 'Bảo mật', 'MIL-STD-810H military test passed\r\nFirmware TPM 2.0 Enabled');
INSERT INTO `productspecification` VALUES (13, 1, 'Webcam', 'HD 720p with Privacy Shutter');
INSERT INTO `productspecification` VALUES (14, 1, 'Hệ điều hành', 'Windows 11 Home\r\n');
INSERT INTO `productspecification` VALUES (15, 1, 'Pin', 'Integrated 38Wh\r\n');
INSERT INTO `productspecification` VALUES (16, 1, 'Trọng lượng', '1.43 kg\r\n');
INSERT INTO `productspecification` VALUES (17, 1, 'Màu sắc', 'Iron Grey\r\n');
INSERT INTO `productspecification` VALUES (18, 1, 'Chất liệu', 'PC-ABS (Top), PC-ABS (Bottom)\r\n');
INSERT INTO `productspecification` VALUES (19, 1, 'Kích thước', '324.2 x 215.2 x 19.9 mm \r\n');
INSERT INTO `productspecification` VALUES (20, 2, 'CPU', 'Intel Core i5-1135G7 2.4GHz up to 4.2GHz 8MB');
INSERT INTO `productspecification` VALUES (21, 2, 'RAM', '8GB (4GB Onboard + 4GB) DDR4 2400MHz (1x SO-DIMM socket, up to 12GB SDRAM)');
INSERT INTO `productspecification` VALUES (22, 2, 'Ổ cứng', '512GB PCIe NVMe SSD (Còn trống 1 khe 2.5\" SATA)');
INSERT INTO `productspecification` VALUES (23, 2, 'Card đồ họa', 'Intel Iris Xe Graphics ');
INSERT INTO `productspecification` VALUES (24, 2, 'Màn hình', '15.6\" FHD (1920 x 1080), Acer ComfyView LED-backlit TFT LCD');
INSERT INTO `productspecification` VALUES (25, 2, 'Cổng giao tiếp', '2x USB 3.2 Gen 1 Type-A\r\n1x USB 2.0\r\n1x HDMI®2.0 port with HDCP support\r\n1x RJ45\r\n1x 3.5 mm headphone/speaker jack, supporting headsets with built-in microphone\r\n1x DC-in jack for AC adapter');
INSERT INTO `productspecification` VALUES (26, 2, 'Bàn phím', 'Không LED');
INSERT INTO `productspecification` VALUES (27, 2, 'Audio', 'Realtek High Definition');
INSERT INTO `productspecification` VALUES (28, 2, 'Đọc thẻ nhớ', 'None');
INSERT INTO `productspecification` VALUES (29, 2, 'Chuẩn LAN', 'Gigabit Ethernet');
INSERT INTO `productspecification` VALUES (30, 2, 'Wifi + Bluetooth', '802.11a/b/g/n/ac + BT v5.0');
INSERT INTO `productspecification` VALUES (31, 2, 'Webcam', '720p HD audio/video recording');
INSERT INTO `productspecification` VALUES (32, 2, 'Hệ điều hành', 'Windows 11 Home');
INSERT INTO `productspecification` VALUES (33, 2, 'Pin', '2 Cell 36.7 Whr');
INSERT INTO `productspecification` VALUES (34, 2, 'Trọng lượng', '1.7 kg');
INSERT INTO `productspecification` VALUES (35, 2, 'Màu sắc', 'Bạc');
INSERT INTO `productspecification` VALUES (36, 2, 'Chất liệu', 'Cover A, B, C, D: nhựa cứng Polycarbonate');
INSERT INTO `productspecification` VALUES (37, 2, 'Kích thước', '363 x 238.4 x 19.9 (mm)');
INSERT INTO `productspecification` VALUES (39, 3, 'CPU', 'Intel® Core™ i7-13620H Processor 2.4 GHz (24M  Cache, up to 4.9 GHz, 10 cores: 6 P-cores and 4 E-cores)');
INSERT INTO `productspecification` VALUES (40, 3, 'RAM', '16GB (2x8GB) DDR5 4800MHz (2x SO-DIMM socket, up to 32GB SDRAM)');
INSERT INTO `productspecification` VALUES (41, 3, 'Ổ cứng', '512GB PCIe® 4.0 NVMe™ M.2 SSD (2230) (Còn trống 1 khe SSD M.2 PCIE)');
INSERT INTO `productspecification` VALUES (42, 3, 'Card đồ họa', 'NVIDIA® GeForce RTX™ 4050 6GB GDDR6, Up to 2420MHz* at 140W (2370MHz Boost Clock+50MHz OC, 115W+25W Dynamic Boost)');
INSERT INTO `productspecification` VALUES (43, 3, 'Màn hình', '15.6\" FHD (1920 x 1080) IPS, 144Hz, Wide View, 250nits, Narrow Bezel, Non-Glare with 72% NTSC, 100% sRGB, 75.35% Adobe RGB, G-Sync');
INSERT INTO `productspecification` VALUES (44, 3, 'Cổng giao tiếp', '1x Thunderbolt™ 4 support DisplayPort™\r\n1x USB 3.2 Gen 2 Type-C support DisplayPort™ / power delivery / G-SYNC\r\n2x USB 3.2 Gen 1 Type-A\r\n1x RJ45 LAN port\r\n1x HDMI 2.1 FRL\r\n1x 3.5mm Combo Audio Jack\r\n');
INSERT INTO `productspecification` VALUES (45, 3, 'Audio', '2-speaker system, Dolby Atmos');
INSERT INTO `productspecification` VALUES (46, 3, 'Bàn phím', 'Backlit Chiclet Keyboard RGB');
INSERT INTO `productspecification` VALUES (47, 3, 'Chuẩn LAN', '10/100/1000/Gigabits Base T');
INSERT INTO `productspecification` VALUES (48, 3, 'Chuẩn WIFI', '802.11AX (2X2)');
INSERT INTO `productspecification` VALUES (49, 3, 'Bluetooth', 'v5.2');
INSERT INTO `productspecification` VALUES (50, 3, 'Webcam', 'HD 720p');
INSERT INTO `productspecification` VALUES (51, 3, 'Hệ điều hành', 'Windows 11 Home');
INSERT INTO `productspecification` VALUES (52, 3, 'Pin', '4 Cell 90WHr');
INSERT INTO `productspecification` VALUES (53, 3, 'Trọng lượng', '2.2 kg');
INSERT INTO `productspecification` VALUES (54, 3, 'Màu sắc', 'Jaeger Gray');
INSERT INTO `productspecification` VALUES (55, 3, 'Chất liệu', 'Vỏ nhựa cứng');
INSERT INTO `productspecification` VALUES (56, 3, 'Kích thước', '35.4 x 25.1 x 2.24 ~ 2.49 cm');
INSERT INTO `productspecification` VALUES (57, 4, 'CPU', 'Intel® Core™ i5-12450HX, 8C (4P + 4E) / 12T, P-core up to 4.4GHz, E-core up to 3.1GHz, 12MB');
INSERT INTO `productspecification` VALUES (58, 4, 'RAM', '12GB (1x12GB) DDR5-4800 SO-DIMM (2x SO-DIMM socket, up to 32GB SDRAM)');
INSERT INTO `productspecification` VALUES (59, 4, 'Ổ cứng', '512GB SSD M.2 2242 PCIe 4.0x4 NVMe (2 Slots: M.2 2242/M.2 2280 PCIe 4.0 x4)');
INSERT INTO `productspecification` VALUES (60, 4, 'Card đồ họa', 'NVIDIA® GeForce RTX™ 2050 4GB GDDR6, Boost Clock 1575MHz, TGP 65W');
INSERT INTO `productspecification` VALUES (61, 4, 'Màn hình', '15.6\" FHD (1920x1080) IPS 300nits Anti-glare, 100% sRGB, 144Hz, G-SYNC®');
INSERT INTO `productspecification` VALUES (62, 4, 'Cổng kết nối', '1x USB-C® (USB 10Gbps / USB 3.2 Gen 2), with PD 140W and DisplayPort™ 1.4\r\n3x USB-A (USB 5Gbps / USB 3.2 Gen 1)\r\n1x HDMI® 2.1, up to 8K/60Hz\r\n1x Ethernet (RJ-45)\r\n1x Headphone / microphone combo jack (3.5mm)\r\n1x Power connector\r\n');
INSERT INTO `productspecification` VALUES (63, 4, 'Bàn phím', 'White Backlit, English');
INSERT INTO `productspecification` VALUES (64, 4, 'Audio', 'Stereo speakers, 2W x2, optimized with Nahimic Audio');
INSERT INTO `productspecification` VALUES (65, 4, 'Chuẩn Lan', '100/1000M');
INSERT INTO `productspecification` VALUES (66, 4, 'Wifi + Bluetooth', 'Wi-Fi® 6, 11ax 2x2 + BT5.2');
INSERT INTO `productspecification` VALUES (67, 4, 'Webcam', 'FHD 1080p with E-shutter');
INSERT INTO `productspecification` VALUES (68, 4, 'Hệ điều hành    ', 'Windows® 11 Home Single Language, English');
INSERT INTO `productspecification` VALUES (69, 4, 'Pin', 'Integrated 60Wh (3 Cell)');
INSERT INTO `productspecification` VALUES (70, 4, 'Trọng lượng', '2.38 kg');
INSERT INTO `productspecification` VALUES (71, 4, 'Màu sắc', 'Luna Grey');
INSERT INTO `productspecification` VALUES (72, 4, 'Chất liệu', 'PC-ABS (Top), PC-ABS (Bottom)');
INSERT INTO `productspecification` VALUES (73, 4, 'Kích thước    ', '359.86 x 258.7 x 21.9-23.9 mm (14.17 x 10.19 x 0.86-0.94 inches)');
INSERT INTO `productspecification` VALUES (74, 5, 'CPU', 'Intel Core i7-13620H (3.6GHz~4.9GHz) 10 Cores 16 Threads');
INSERT INTO `productspecification` VALUES (75, 5, 'RAM', '8GB (1 x 8GB) DDR5 5200MHz (2x SO-DIMM socket, up to 64GB SDRAM)');
INSERT INTO `productspecification` VALUES (76, 5, 'Ổ cứng', '512GB NVMe PCIe Gen 4 SSD (2 slots, Nâng cấp cần gắn thêm linh kiện tại TTBH MSI)');
INSERT INTO `productspecification` VALUES (77, 5, 'VGA', 'NVIDIA GeForce RTX 4050 Laptop GPU 6GB GDDR6 ');
INSERT INTO `productspecification` VALUES (78, 5, 'Màn hình', '15.6\" FHD (1920x1080), 144Hz, IPS-Level');
INSERT INTO `productspecification` VALUES (79, 5, 'Cổng giao tiếp', '1x Type-C (USB3.2 Gen1 / DP)\r\n2x Type-A USB3.2 Gen1\r\n1x Type-A USB2.0\r\n1x HDMI™ 2.1 (8K @ 60Hz / 4K @ 120Hz)\r\n1x RJ45');
INSERT INTO `productspecification` VALUES (80, 5, 'Bàn phím', '4-Zone RGB Gaming Keyboard');
INSERT INTO `productspecification` VALUES (81, 5, 'Chuẩn LAN', 'Gigabit Ethernet');
INSERT INTO `productspecification` VALUES (82, 5, 'Chuẩn WIFI', '802.11 ax Wi-Fi 6 ');
INSERT INTO `productspecification` VALUES (83, 5, 'Bluetooth', 'v5.2');
INSERT INTO `productspecification` VALUES (84, 5, 'Audio', 'Nahimic Audio');
INSERT INTO `productspecification` VALUES (85, 5, 'Webcam', 'HD type (30fps@720p)');
INSERT INTO `productspecification` VALUES (86, 5, 'Hệ điều hành', 'Windows 11 Home');
INSERT INTO `productspecification` VALUES (87, 5, 'Pin', '3 cell, 53.5Whr');
INSERT INTO `productspecification` VALUES (88, 5, 'Trọng lượng', '2.25 kg');
INSERT INTO `productspecification` VALUES (89, 5, 'Màu sắc', 'Đen');
INSERT INTO `productspecification` VALUES (90, 5, 'Kích thước', '359 x 259 x 24.9 mm');
INSERT INTO `productspecification` VALUES (91, 6, 'CPU', 'Ryzen 5 5600H ( 3.30 GHz - 4.20 GHz, Hexa-core (6 Core) , Cache 16 MB )');
INSERT INTO `productspecification` VALUES (92, 6, 'RAM', '8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)');
INSERT INTO `productspecification` VALUES (93, 6, 'Ổ cứng', '512GB SSD M.2 PCIE (Còn trống 1 khe SSD M.2 PCIE và 1 khe 2.5\" SATA)');
INSERT INTO `productspecification` VALUES (94, 6, 'Card đồ họa', 'NVIDIA® GeForce® GTX 1650 4GB + AMD Radeon Graphics');
INSERT INTO `productspecification` VALUES (95, 6, 'Màn hình', '15.6\" FHD (1920 x 1080) IPS, 144Hz, Anti-Glare');
INSERT INTO `productspecification` VALUES (96, 6, 'Cổng giao tiếp', '3x USB 3.1 Gen 1\r\n1x USB 3.2 Gen 2 Type C\r\nRJ45');
INSERT INTO `productspecification` VALUES (97, 6, 'Ổ quang', 'None');
INSERT INTO `productspecification` VALUES (98, 6, 'Audio', 'Waves MaxxAudio, Acer TrueHarmony');
INSERT INTO `productspecification` VALUES (99, 6, 'Bàn phím', 'RGB 4 vùng');
INSERT INTO `productspecification` VALUES (100, 6, 'Đọc thẻ nhớ', 'None');
INSERT INTO `productspecification` VALUES (101, 6, 'Chuẩn LAN', '10/100/1000/Gigabits Base T');
INSERT INTO `productspecification` VALUES (102, 6, 'Chuẩn WIFI', '802.11AX (2x2)');
INSERT INTO `productspecification` VALUES (103, 6, 'Bluetooth', 'v5.0');
INSERT INTO `productspecification` VALUES (104, 6, 'Webcam', 'HD Webcam');
INSERT INTO `productspecification` VALUES (105, 6, 'Hệ điều hành', 'Windows 11 Home');
INSERT INTO `productspecification` VALUES (106, 6, 'Pin', '4 Cell 57.5WHr');
INSERT INTO `productspecification` VALUES (107, 6, 'Trọng lượng', '2.30 kg');
INSERT INTO `productspecification` VALUES (108, 6, 'Màu sắc', 'Đen');
INSERT INTO `productspecification` VALUES (109, 6, 'Kích thước', '363.4 x 255 x 23.9 mm');
INSERT INTO `productspecification` VALUES (110, 7, 'CPU', 'AMD Ryzen™ 7 6800H (3.2 GHz upto 4.7 GHz, 8 nhân 16 luồng, L2 Cache: 4MB, L3 Cache: 16MB)');
INSERT INTO `productspecification` VALUES (111, 7, 'Ram', '16GB (2x8GB) DDR5 4800MHz (2x SO-DIMM socket, up to 32GB SDRAM)');
INSERT INTO `productspecification` VALUES (112, 7, 'Ổ cứng', '512GB PCIe NVMe SED SSD (Còn trống 1 khe SSD M.2 PCIE, nâng cấp tối đa 2TB)');
INSERT INTO `productspecification` VALUES (113, 7, 'Card đồ họa', 'NVIDIA® GeForce RTX™ 3060 with 6 GB of dedicated GDDR6 VRAM');
INSERT INTO `productspecification` VALUES (114, 7, 'Màn hình', '15.6\" FHD (1920 x 1080) IPS 165Hz SlimBezel, 100% sRGB, Acer ComfyViewTM LED-backlit TFT LCD');
INSERT INTO `productspecification` VALUES (115, 7, 'Cổng giao tiếp', ' 2 x USB 3.2 Gen 2 ports with one featuring power-off USB charging\r\n1 x USB 3.2 Gen 1 port\r\n1 x USB Type-C™ port: USB 3.2 Gen 2 (up to 10 Gbps)\r\n• USB 3.2 Gen 2 (up to 10 Gbps)\r\n• DisplayPort over USB-C\r\n• USB charging 5 V; 3 A\r\n• DC-in port 20 V; 100 W\r\n1 x 3.5 mm headphone/speaker jack, supporting headsets with built-in microphone\r\n1 x DC-in jack for AC adapter\r\n1 x Ethernet (RJ-45) port\r\n1 x HDMI®2.1 port with HDCP support\r\n(Notes: HDMI2.1: Support 4K 120Hz HDR, 8K 60Hz HDR, VRR, G-sync compatible external monitor)');
INSERT INTO `productspecification` VALUES (116, 7, 'Audio', 'DTS® X:Ultra Audio, Acer TrueHarmony™');
INSERT INTO `productspecification` VALUES (117, 7, 'Bàn phím', 'RGB 4 Zone');
INSERT INTO `productspecification` VALUES (118, 7, 'Tản nhiệt', '2 quạt');
INSERT INTO `productspecification` VALUES (119, 7, 'Chuẩn LAN', 'Killer™ Ethernet E2600');
INSERT INTO `productspecification` VALUES (120, 7, 'Chuẩn WIFI', 'Wi-Fi 6E 802.11AX (2x2)');
INSERT INTO `productspecification` VALUES (121, 7, 'Bluetooth', 'Bluetooth® 5.2');
INSERT INTO `productspecification` VALUES (122, 7, 'Webcam', '720p HD video at 30 fps with Temporal Noise Reduction');
INSERT INTO `productspecification` VALUES (123, 7, 'Hệ điều hành', 'Windows 11 Home Single Language');
INSERT INTO `productspecification` VALUES (124, 7, 'Pin', '4 Cell 57WHr');
INSERT INTO `productspecification` VALUES (125, 7, 'Trọng lượng', '2.5 kg');
INSERT INTO `productspecification` VALUES (126, 7, 'Màu sắc', 'Obsidian black');
INSERT INTO `productspecification` VALUES (127, 7, 'Chất liệu', 'Cover A, B, C, D: nhựa cứng Polycarbonate');
INSERT INTO `productspecification` VALUES (128, 7, 'Kích thước', '360.4 x 271.09 x 25.9~26.9 (mm)');
INSERT INTO `productspecification` VALUES (129, 8, 'CPU', 'Intel Core i7-13620H (3.6GHz~4.9GHz) 10 Cores 16 Threads');
INSERT INTO `productspecification` VALUES (130, 8, 'RAM', '16GB (2 x 8GB) DDR5 5200MHz (2x SO-DIMM socket, up to 64GB SDRAM)');
INSERT INTO `productspecification` VALUES (131, 8, 'Ổ cứng', '1TB NVMe PCIe Gen 4 SSD (2 slots, Nâng cấp cần gắn thêm linh kiện tại TTBH MSI)');
INSERT INTO `productspecification` VALUES (132, 8, 'VGA', 'NVIDIA GeForce RTX 4060, GDDR6 8GB');
INSERT INTO `productspecification` VALUES (133, 8, 'Màn hình', '15.6\" FHD (1920x1080), 144Hz, IPS-Level, 45% NTSC');
INSERT INTO `productspecification` VALUES (134, 8, 'Cổng giao tiếp', '1x Type-C (USB3.2 Gen1 / DP)\r\n2x Type-A USB3.2 Gen1\r\n1x Type-A USB2.0\r\n1x HDMI™ 2.1 (8K @ 60Hz / 4K @ 120Hz)\r\n1x RJ45\r\n');
INSERT INTO `productspecification` VALUES (135, 8, 'Bàn phím', '4-Zone RGB Gaming Keyboard');
INSERT INTO `productspecification` VALUES (136, 8, 'Chuẩn LAN', 'Gigabit Ethernet');
INSERT INTO `productspecification` VALUES (137, 8, 'Chuẩn WIFI', '802.11 ax Wi-Fi 6 ');
INSERT INTO `productspecification` VALUES (138, 8, 'Bluetooth', 'v5.2');
INSERT INTO `productspecification` VALUES (139, 8, 'Audio', 'Nahimic Audio');
INSERT INTO `productspecification` VALUES (140, 8, 'Webcam', 'HD type (30fps@720p)');
INSERT INTO `productspecification` VALUES (141, 8, 'Hệ điều hành', 'Windows 11 Home');
INSERT INTO `productspecification` VALUES (142, 8, 'Pin', '3 cell, 53.5Whr');
INSERT INTO `productspecification` VALUES (143, 8, 'Trọng lượng', '2.2 kg');
INSERT INTO `productspecification` VALUES (144, 8, 'Màu sắc', 'Đen');
INSERT INTO `productspecification` VALUES (145, 8, 'Kích thước', '359 x 259 x 24.9 mm');
INSERT INTO `productspecification` VALUES (146, 9, 'CPU', 'Intel Core i7-13620H (3.6GHz~4.9GHz) 10 Nhân 16 Luồng');
INSERT INTO `productspecification` VALUES (147, 9, 'RAM', '16GB (2 x 8GB) DDR4 3200MHz (2x SO-DIMM socket, up to 64GB SDRAM)');
INSERT INTO `productspecification` VALUES (148, 9, 'Ổ cứng', 'SSD NVMe PCIe 512GB Gen4x4 (1 khe)');
INSERT INTO `productspecification` VALUES (149, 9, 'VGA', 'NVIDIA® GeForce RTX™ 3050 Laptop GPU\r\nUp to 1172.5MHz Boost Clock 45W Maximum Graphics Power with Dynamic Boost.\r\n');
INSERT INTO `productspecification` VALUES (150, 9, 'Màn hình', '15.6\" FHD (1920x1080), 144Hz, IPS-Level, 45% NTSC, 65% sRGB\r\n');
INSERT INTO `productspecification` VALUES (151, 9, 'Cổng giao tiếp', '1x Type-C (USB3.2 Gen1 / DP)\r\n3x Type-A USB3.2 Gen1\r\n1x HDMI™ (4K @ 30Hz)\r\n1x RJ45\r\n');
INSERT INTO `productspecification` VALUES (152, 9, 'Bàn phím', 'Single Backlit Keyboard (Blue)');
INSERT INTO `productspecification` VALUES (153, 9, 'Chuẩn LAN', '2x 2W Speaker');
INSERT INTO `productspecification` VALUES (154, 9, 'Chuẩn WIFI', 'Gigabit Ethernet');
INSERT INTO `productspecification` VALUES (155, 9, 'Bluetooth', '802.11 ax Wi-Fi 6E');
INSERT INTO `productspecification` VALUES (156, 9, 'Audio', 'v5.3');
INSERT INTO `productspecification` VALUES (157, 9, 'Webcam', 'HD type (30fps@720p)');
INSERT INTO `productspecification` VALUES (158, 9, 'Hệ điều hành', 'Windows 11 Home');
INSERT INTO `productspecification` VALUES (159, 9, 'Pin', '3-Cell 52.4 Battery (Whr)');
INSERT INTO `productspecification` VALUES (160, 9, 'Trọng lượng', '1.86 kg');
INSERT INTO `productspecification` VALUES (161, 9, 'Màu sắc', 'Cosmos Gray');
INSERT INTO `productspecification` VALUES (162, 9, 'Kích thước', '359 x 254 x 21.7 mm');
INSERT INTO `productspecification` VALUES (163, 10, 'CPU', 'Intel® Core™ i3-1315U, 6C (2P + 4E) / 8T, P-core 1.2 / 4.5GHz, E-core 0.9 / 3.3GHz, 10MB');
INSERT INTO `productspecification` VALUES (164, 10, 'Ram', '8GB (1x8GB) DDR4 3200MHz onboard (còn 1 slot, nâng cấp tối đa 16GB)');
INSERT INTO `productspecification` VALUES (165, 10, 'Ổ cứng', '512GB SSD M.2 2242 PCIe® 4.0x4 NVMe® (Còn trống 1 khe 2.5\" HDD up to 1TB, Không kèm cáp Sata HDD)');
INSERT INTO `productspecification` VALUES (166, 10, 'Card đồ họa', 'Intel® UHD Graphics');
INSERT INTO `productspecification` VALUES (167, 10, 'Màn hình', '14\" FHD (1920x1080) IPS 300nits, Anti-glare, 45% NTSC');
INSERT INTO `productspecification` VALUES (168, 10, 'Cổng giao tiếp', '1x USB 2.0\r\n1x USB 3.2 Gen 1\r\n1x USB-C® 3.2 Gen 1 (support data transfer, Power Delivery 3.0 and DisplayPort™ 1.2)\r\n1x HDMI® 1.4b\r\n1x Headphone / microphone combo jack (3.5mm)\r\n1x Ethernet (RJ-45)\r\n1x Power connector\r\n');
INSERT INTO `productspecification` VALUES (169, 10, 'Bàn phím', 'Bàn phím tiêu chuẩn, không LED');
INSERT INTO `productspecification` VALUES (170, 10, 'Chuẩn LAN', '100/1000M');
INSERT INTO `productspecification` VALUES (171, 10, 'Chuẩn WIFI', 'Wi-Fi® 6, 11ax 2x2');
INSERT INTO `productspecification` VALUES (172, 10, 'Bluetooth', 'v5.1');
INSERT INTO `productspecification` VALUES (173, 10, 'Audio', 'Stereo speakers, 1.5W x2, Dolby® Audio');
INSERT INTO `productspecification` VALUES (174, 10, 'Bảo mật', 'MIL-STD-810H military test passed\r\nFirmware TPM 2.0 Enabled\r\n');
INSERT INTO `productspecification` VALUES (175, 10, 'Webcam', 'HD 720p with Privacy Shutter');
INSERT INTO `productspecification` VALUES (176, 10, 'Hệ điều hành', 'Windows 11 Home');
INSERT INTO `productspecification` VALUES (177, 10, 'Pin', 'Integrated 38Wh');
INSERT INTO `productspecification` VALUES (178, 10, 'Trọng lượng', '1.43 kg');
INSERT INTO `productspecification` VALUES (179, 10, 'Màu sắc', 'Iron Grey');
INSERT INTO `productspecification` VALUES (180, 10, 'Chất liệu', 'PC-ABS (Top), PC-ABS (Bottom)');
INSERT INTO `productspecification` VALUES (181, 10, 'Kích thước', '324.2 x 215.2 x 19.9 mm ');
INSERT INTO `productspecification` VALUES (182, 11, 'Keycaps', 'PBT Plastic');
INSERT INTO `productspecification` VALUES (183, 11, 'Kích thước', 'Tenkeyless');
INSERT INTO `productspecification` VALUES (184, 11, 'Kết nối', 'Bluetooth');
INSERT INTO `productspecification` VALUES (185, 11, 'Switch', 'Gateron Brown');
INSERT INTO `productspecification` VALUES (186, 11, 'Trọng lượng', '950 g');
INSERT INTO `productspecification` VALUES (187, 11, 'Bảo hành', '1 năm');
INSERT INTO `productspecification` VALUES (188, 11, 'Layout', 'ISO');
INSERT INTO `productspecification` VALUES (189, 11, 'Hỗ trợ', 'Anti-Ghosting');
INSERT INTO `productspecification` VALUES (190, 11, 'Kiểu bàn phím', 'Cơ học');
INSERT INTO `productspecification` VALUES (191, 11, 'Thương hiệu', 'Logitech');
INSERT INTO `productspecification` VALUES (192, 12, 'Keycaps', 'PBT Plastic');
INSERT INTO `productspecification` VALUES (193, 12, 'Kích thước', 'Full-size');
INSERT INTO `productspecification` VALUES (194, 12, 'Kết nối', 'Có dây');
INSERT INTO `productspecification` VALUES (195, 12, 'Switch', 'Cherry MX Red');
INSERT INTO `productspecification` VALUES (196, 12, 'Trọng lượng', '1.2 kg');
INSERT INTO `productspecification` VALUES (197, 12, 'Bảo hành', '2 năm');
INSERT INTO `productspecification` VALUES (198, 12, 'Layout', 'ANSI');
INSERT INTO `productspecification` VALUES (199, 12, 'Hỗ trợ', 'N-Key Rollover');
INSERT INTO `productspecification` VALUES (200, 12, 'Kiểu bàn phím', 'Cơ học');
INSERT INTO `productspecification` VALUES (201, 12, 'Thương hiệu', 'Vortex');
INSERT INTO `productspecification` VALUES (202, 13, 'Keycaps', 'ABS Plastic');
INSERT INTO `productspecification` VALUES (203, 13, 'Kích thước', 'Tenkeyless');
INSERT INTO `productspecification` VALUES (204, 13, 'Kết nối', 'Bluetooth');
INSERT INTO `productspecification` VALUES (205, 13, 'Switch', 'Gateron Brown');
INSERT INTO `productspecification` VALUES (206, 13, 'Trọng lượng', '950 g');
INSERT INTO `productspecification` VALUES (207, 13, 'Bảo hành', '1 năm');
INSERT INTO `productspecification` VALUES (208, 13, 'Layout', 'ISO');
INSERT INTO `productspecification` VALUES (209, 13, 'Hỗ trợ', 'Anti-Ghosting');
INSERT INTO `productspecification` VALUES (210, 13, 'Kiểu bàn phím', 'Cơ học');
INSERT INTO `productspecification` VALUES (211, 13, 'Thương hiệu', 'Leopold');
INSERT INTO `productspecification` VALUES (212, 14, 'Keycaps', 'PBT Plastic');
INSERT INTO `productspecification` VALUES (213, 14, 'Kích thước', '60%');
INSERT INTO `productspecification` VALUES (214, 14, 'Kết nối', 'USB-C');
INSERT INTO `productspecification` VALUES (215, 14, 'Switch', 'Kalih Box White');
INSERT INTO `productspecification` VALUES (216, 14, 'Trọng lượng', '800 g');
INSERT INTO `productspecification` VALUES (217, 14, 'Bảo hành', '3 năm');
INSERT INTO `productspecification` VALUES (218, 14, 'Layout', 'ANSI');
INSERT INTO `productspecification` VALUES (219, 14, 'Hỗ trợ', 'NKRO');
INSERT INTO `productspecification` VALUES (220, 14, 'Kiểu bàn phím', 'Cơ học');
INSERT INTO `productspecification` VALUES (221, 14, 'Thương hiệu', 'Razer');
INSERT INTO `productspecification` VALUES (222, 15, 'Keycaps', 'PBT Plastic');
INSERT INTO `productspecification` VALUES (223, 15, 'Kích thước', 'Full-size');
INSERT INTO `productspecification` VALUES (224, 15, 'Kết nối', 'Bluetooth');
INSERT INTO `productspecification` VALUES (225, 15, 'Switch', 'Cherry MX Blue');
INSERT INTO `productspecification` VALUES (226, 15, 'Trọng lượng', '1.3 kg');
INSERT INTO `productspecification` VALUES (227, 15, 'Bảo hành', '2 năm');
INSERT INTO `productspecification` VALUES (228, 15, 'Layout', 'ISO');
INSERT INTO `productspecification` VALUES (229, 15, 'Hỗ trợ', 'Anti-Ghosting');
INSERT INTO `productspecification` VALUES (230, 15, 'Kiểu bàn phím', 'Cơ học');
INSERT INTO `productspecification` VALUES (231, 15, 'Thương hiệu', 'Corsair');
INSERT INTO `productspecification` VALUES (232, 16, 'Keycaps', 'ABS Plastic');
INSERT INTO `productspecification` VALUES (233, 16, 'Kích thước', '75%');
INSERT INTO `productspecification` VALUES (234, 16, 'Kết nối', 'USB-C');
INSERT INTO `productspecification` VALUES (235, 16, 'Switch', 'Gateron Black');
INSERT INTO `productspecification` VALUES (236, 16, 'Trọng lượng', '950 g');
INSERT INTO `productspecification` VALUES (237, 16, 'Bảo hành', '1 năm');
INSERT INTO `productspecification` VALUES (238, 16, 'Layout', 'ANSI');
INSERT INTO `productspecification` VALUES (239, 16, 'Hỗ trợ', 'N-Key Rollover');
INSERT INTO `productspecification` VALUES (240, 16, 'Kiểu bàn phím', 'Cơ học');
INSERT INTO `productspecification` VALUES (241, 16, 'Thương hiệu', 'Keychron');
INSERT INTO `productspecification` VALUES (242, 17, 'Keycaps', 'PBT Plastic');
INSERT INTO `productspecification` VALUES (243, 17, 'Kích thước', 'Tenkeyless');
INSERT INTO `productspecification` VALUES (244, 17, 'Kết nối', 'Có dây');
INSERT INTO `productspecification` VALUES (245, 17, 'Switch', 'Cherry MX Silent Red');
INSERT INTO `productspecification` VALUES (246, 17, 'Trọng lượng', '1.1 kg');
INSERT INTO `productspecification` VALUES (247, 17, 'Bảo hành', '2 năm');
INSERT INTO `productspecification` VALUES (248, 17, 'Layout', 'ISO');
INSERT INTO `productspecification` VALUES (249, 17, 'Hỗ trợ', 'Anti-Ghosting');
INSERT INTO `productspecification` VALUES (250, 17, 'Kiểu bàn phím', 'Cơ học');
INSERT INTO `productspecification` VALUES (251, 17, 'Thương hiệu', 'HyperX');
INSERT INTO `productspecification` VALUES (252, 18, 'Keycaps', 'ABS Plastic');
INSERT INTO `productspecification` VALUES (253, 18, 'Kích thước', 'Full-size');
INSERT INTO `productspecification` VALUES (254, 18, 'Kết nối', 'Bluetooth');
INSERT INTO `productspecification` VALUES (255, 18, 'Switch', 'Gateron Green');
INSERT INTO `productspecification` VALUES (256, 18, 'Trọng lượng', '1.4 kg');
INSERT INTO `productspecification` VALUES (257, 18, 'Bảo hành', '1 năm');
INSERT INTO `productspecification` VALUES (258, 18, 'Layout', 'ANSI');
INSERT INTO `productspecification` VALUES (259, 18, 'Hỗ trợ', 'NKRO');
INSERT INTO `productspecification` VALUES (260, 18, 'Kiểu bàn phím', 'Cơ học');
INSERT INTO `productspecification` VALUES (261, 18, 'Thương hiệu', 'SteelSeries');
INSERT INTO `productspecification` VALUES (262, 19, 'Keycaps', 'PBT Plastic');
INSERT INTO `productspecification` VALUES (263, 19, 'Kích thước', '65%');
INSERT INTO `productspecification` VALUES (264, 19, 'Kết nối', 'USB-C');
INSERT INTO `productspecification` VALUES (265, 19, 'Switch', 'Cherry MX Brown');
INSERT INTO `productspecification` VALUES (266, 19, 'Trọng lượng', '1.2 kg');
INSERT INTO `productspecification` VALUES (267, 19, 'Bảo hành', '2 năm');
INSERT INTO `productspecification` VALUES (268, 19, 'Layout', 'ANSI');
INSERT INTO `productspecification` VALUES (269, 19, 'Hỗ trợ', 'N-Key Rollover');
INSERT INTO `productspecification` VALUES (270, 19, 'Kiểu bàn phím', 'Cơ học');
INSERT INTO `productspecification` VALUES (271, 19, 'Thương hiệu', 'Corsair');
INSERT INTO `productspecification` VALUES (272, 20, 'Keycaps', 'ABS Plastic');
INSERT INTO `productspecification` VALUES (273, 20, 'Kích thước', '60%');
INSERT INTO `productspecification` VALUES (274, 20, 'Kết nối', 'Có dây');
INSERT INTO `productspecification` VALUES (275, 20, 'Switch', 'Outemu Red');
INSERT INTO `productspecification` VALUES (276, 20, 'Trọng lượng', '850 g');
INSERT INTO `productspecification` VALUES (277, 20, 'Bảo hành', '1 năm');
INSERT INTO `productspecification` VALUES (278, 20, 'Layout', 'ANSI');
INSERT INTO `productspecification` VALUES (279, 20, 'Hỗ trợ', 'Anti-Ghosting');
INSERT INTO `productspecification` VALUES (280, 20, 'Kiểu bàn phím', 'Cơ học');
INSERT INTO `productspecification` VALUES (281, 20, 'Thương hiệu', 'Redragon');
INSERT INTO `productspecification` VALUES (282, 21, 'Switch', 'Omron');
INSERT INTO `productspecification` VALUES (283, 21, 'IPS', '200');
INSERT INTO `productspecification` VALUES (284, 21, 'Độ dài dây (cm)', '210');
INSERT INTO `productspecification` VALUES (285, 21, 'LED', 'RGB Lightsync');
INSERT INTO `productspecification` VALUES (286, 21, 'Tuổi thọ', '50 triệu lần nhấn');
INSERT INTO `productspecification` VALUES (287, 22, 'Switch', 'Omron');
INSERT INTO `productspecification` VALUES (288, 22, 'IPS', '200');
INSERT INTO `productspecification` VALUES (289, 22, 'Độ dài dây (cm)', '210');
INSERT INTO `productspecification` VALUES (290, 22, 'LED', 'RGB Lightsync');
INSERT INTO `productspecification` VALUES (291, 22, 'Tuổi thọ', '50 triệu lần nhấn');
INSERT INTO `productspecification` VALUES (292, 23, 'Kiểu cầm', 'Ergonomic / Công thái học');
INSERT INTO `productspecification` VALUES (293, 23, 'Trọng lượng', '96g');
INSERT INTO `productspecification` VALUES (294, 23, 'Thương hiệu', 'Razer');
INSERT INTO `productspecification` VALUES (295, 23, 'Số nút', '5 nút có thể lập trình');
INSERT INTO `productspecification` VALUES (296, 23, 'Bảo hành', '12 tháng');
INSERT INTO `productspecification` VALUES (297, 24, 'Thiết kế tối giản', 'Plug & Play');
INSERT INTO `productspecification` VALUES (298, 24, 'Thương hiệu', 'MonsGeek');
INSERT INTO `productspecification` VALUES (299, 24, 'Kết nối', '2.4Ghz / 1000 CPI / 3 nút bấm');
INSERT INTO `productspecification` VALUES (300, 24, 'Bảo hành', '12 tháng');
INSERT INTO `productspecification` VALUES (301, 24, 'Trọng lượng', '84g');
INSERT INTO `productspecification` VALUES (302, 25, 'Bảo hành', '24 tháng');
INSERT INTO `productspecification` VALUES (303, 25, 'Cảm biến', 'Cảm biến quang học Focus Pro 35K Gen-2');
INSERT INTO `productspecification` VALUES (304, 25, 'Cáp', 'Cáp Razer™ Speedflex');
INSERT INTO `productspecification` VALUES (305, 25, 'Thương hiệu', 'Razer');
INSERT INTO `productspecification` VALUES (306, 25, 'Vòng đời nhấp chuột', '90 triệu lần nhấp');
INSERT INTO `productspecification` VALUES (307, 26, 'Phụ kiện trong hộp', 'Dây nguồn; dây HDMI; dây DisplayPort (optional)');
INSERT INTO `productspecification` VALUES (308, 26, 'Công nghệ chống giật; xé màn hình', 'AMD Freesync Premium');
INSERT INTO `productspecification` VALUES (309, 26, 'Kích thước', '24 inch');
INSERT INTO `productspecification` VALUES (310, 26, 'Cổng kết nối', '2 x HDMI (2.0) ; 1 x DisplayPort (1.4)');
INSERT INTO `productspecification` VALUES (311, 26, 'Tỷ lệ khung hình', '16:09');
INSERT INTO `productspecification` VALUES (312, 26, 'Treo tường VESA', '75 x 75 mm');
INSERT INTO `productspecification` VALUES (313, 26, 'Bảo hành', '36 tháng');
INSERT INTO `productspecification` VALUES (314, 26, 'Tần số quét', '180Hz');
INSERT INTO `productspecification` VALUES (315, 26, 'Thương hiệu', 'Acer');
INSERT INTO `productspecification` VALUES (316, 26, 'Tấm nền', 'IPS');
INSERT INTO `productspecification` VALUES (317, 26, 'Độ sáng', '250 cd/m²');
INSERT INTO `productspecification` VALUES (318, 26, 'Độ phân giải', 'Full HD (1920 x 1080)');
INSERT INTO `productspecification` VALUES (319, 26, 'Màu sắc hiển thị', '16.7 triệu màu sắc; 99% sRGB');
INSERT INTO `productspecification` VALUES (320, 26, 'Độ tương phản', '1000:1 / 100.000.000:1');
INSERT INTO `productspecification` VALUES (321, 26, 'Thời gian phản hồi', '1ms (VRB) - 4ms (GtG)');
INSERT INTO `productspecification` VALUES (322, 26, 'Góc nhìn', '178° / 178°');
INSERT INTO `productspecification` VALUES (323, 27, 'Tần số quét', '180 Hz');
INSERT INTO `productspecification` VALUES (324, 27, 'Kiểu màn hình', 'Phẳng');
INSERT INTO `productspecification` VALUES (325, 27, 'Tương thích VESA', '100 x 100 mm');
INSERT INTO `productspecification` VALUES (326, 27, 'Cổng kết nối', '2 x HDMI™ (2.0); 1 x DisplayPort (1.4)');
INSERT INTO `productspecification` VALUES (327, 27, 'Kích thước', '24 inch');
INSERT INTO `productspecification` VALUES (328, 27, 'Khử nhấp nháy', 'Có');
INSERT INTO `productspecification` VALUES (329, 27, 'Thời gian phản hồi', '1ms');
INSERT INTO `productspecification` VALUES (330, 27, 'Phụ kiện trong hộp', 'Dây nguồn; dây HDMI (optional); dây DisplayPort (optional)');
INSERT INTO `productspecification` VALUES (331, 27, 'Không gian màu', 'sRGB 122%; DCI-P3 96%; Delta E<2; 1.07B');
INSERT INTO `productspecification` VALUES (332, 27, 'Bảo hành', '36 tháng');
INSERT INTO `productspecification` VALUES (333, 27, 'Độ phân giải', '2K (2560 x 1440)');
INSERT INTO `productspecification` VALUES (334, 27, 'Tấm nền', 'Fast IPS');
INSERT INTO `productspecification` VALUES (335, 27, 'Độ sáng (Typ.)', '350 cd;m²');
INSERT INTO `productspecification` VALUES (336, 28, 'Không gian màu', '105% sRGB');
INSERT INTO `productspecification` VALUES (337, 28, 'Khử nhấp nháy', 'Có');
INSERT INTO `productspecification` VALUES (338, 28, 'Tương thích VESA', '75 x 75 mm');
INSERT INTO `productspecification` VALUES (339, 28, 'Phụ kiện trong hộp', 'Dây nguồn; dây HDMI (optional); dây DisplayPort (optional)');
INSERT INTO `productspecification` VALUES (340, 28, 'Độ phân giải', 'Full HD (1920 x 1080)');
INSERT INTO `productspecification` VALUES (341, 28, 'Tấm nền', 'IPS');
INSERT INTO `productspecification` VALUES (342, 28, 'Bảo hành', '36 tháng');
INSERT INTO `productspecification` VALUES (343, 28, 'Kiểu màn hình', 'Phẳng');
INSERT INTO `productspecification` VALUES (344, 28, 'Thời gian phản hồi', '1ms');
INSERT INTO `productspecification` VALUES (345, 28, 'Tần số quét', '120 Hz');
INSERT INTO `productspecification` VALUES (346, 28, 'Cổng kết nối', '1 x HDMI™;1 x VGA');
INSERT INTO `productspecification` VALUES (347, 28, 'Kích thước', '24 inch');
INSERT INTO `productspecification` VALUES (348, 28, 'Độ sáng (Typ.)', '250 cd/m²');
INSERT INTO `productspecification` VALUES (349, 29, 'Cổng kết nối', '2 x HDMI™;1 x Display Port');
INSERT INTO `productspecification` VALUES (350, 29, 'Kích thước', '27 inch');
INSERT INTO `productspecification` VALUES (351, 29, 'Độ phân giải', 'Full HD (1920 x 1080)');
INSERT INTO `productspecification` VALUES (352, 29, 'Độ sáng (Typ.)', '250 cd/m²');
INSERT INTO `productspecification` VALUES (353, 29, 'Tần số quét', '240 Hz');
INSERT INTO `productspecification` VALUES (354, 29, 'Tương thích VESA', '75 x 75 mm');
INSERT INTO `productspecification` VALUES (355, 29, 'Phụ kiện trong hộp', 'Dây nguồn; dây HDMI (optional); dây DisplayPort (optional)');
INSERT INTO `productspecification` VALUES (356, 29, 'Thời gian phản hồi', '1ms');
INSERT INTO `productspecification` VALUES (357, 29, 'Không gian màu', '104% sRGB');
INSERT INTO `productspecification` VALUES (358, 29, 'Tấm nền', 'VA');
INSERT INTO `productspecification` VALUES (359, 29, 'Kiểu màn hình', 'Cong');
INSERT INTO `productspecification` VALUES (360, 29, 'Bảo hành', '36 tháng');
INSERT INTO `productspecification` VALUES (361, 29, 'Khử nhấp nháy', 'Có');
INSERT INTO `productspecification` VALUES (362, 30, 'Không gian màu', '102% sRGB');
INSERT INTO `productspecification` VALUES (363, 30, 'Phụ kiện trong hộp', 'Dây nguồn; dây HDMI (optional); dây DisplayPort (optional)');
INSERT INTO `productspecification` VALUES (364, 30, 'Bảo hành', '36 tháng');
INSERT INTO `productspecification` VALUES (365, 30, 'Độ sáng (Typ.)', '250 cd/m²');
INSERT INTO `productspecification` VALUES (366, 30, 'Thời gian phản hồi', '1ms');
INSERT INTO `productspecification` VALUES (367, 30, 'Khử nhấp nháy', 'Có');
INSERT INTO `productspecification` VALUES (368, 30, 'Kích thước', '24 inch');
INSERT INTO `productspecification` VALUES (369, 30, 'Tần số quét', '240 Hz');
INSERT INTO `productspecification` VALUES (370, 30, 'Tương thích VESA', '100 x 100 mm');
INSERT INTO `productspecification` VALUES (371, 30, 'Độ phân giải', 'Full HD (1920 x 1080)');
INSERT INTO `productspecification` VALUES (372, 30, 'Kiểu màn hình', 'Phẳng');
INSERT INTO `productspecification` VALUES (373, 30, 'Cổng kết nối', '1 x HDMI™;1 x Display Port');
INSERT INTO `productspecification` VALUES (374, 30, 'Tấm nền', 'IPS');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_of_birth` date NULL DEFAULT NULL,
  `gender` enum('male','female','other') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone_number` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `account_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'hoang', '1979-01-01', 'male', '0123456789', 'ha noi', '2025-01-06 18:56:54', 2);
INSERT INTO `users` VALUES (2, 'hoang2', NULL, NULL, NULL, NULL, '2025-01-07 10:46:32', 4);
INSERT INTO `users` VALUES (3, 'hoang3', NULL, NULL, NULL, NULL, '2025-01-07 17:10:17', 5);
INSERT INTO `users` VALUES (4, 'loc', NULL, NULL, NULL, NULL, '2025-01-07 19:37:02', 6);
INSERT INTO `users` VALUES (5, 'hoang3', NULL, NULL, NULL, NULL, '2025-01-07 19:51:53', 7);
INSERT INTO `users` VALUES (6, 'hoang4', NULL, NULL, NULL, NULL, '2025-01-07 19:52:39', 8);
INSERT INTO `users` VALUES (7, 'hoang5', NULL, NULL, NULL, NULL, '2025-01-07 19:53:44', 9);
INSERT INTO `users` VALUES (8, 'hoang6', NULL, NULL, NULL, NULL, '2025-01-07 19:56:15', 10);
INSERT INTO `users` VALUES (9, 'test', NULL, NULL, NULL, NULL, '2025-01-07 19:58:01', 11);
INSERT INTO `users` VALUES (10, 'test', NULL, NULL, NULL, NULL, '2025-01-07 19:59:04', 12);
INSERT INTO `users` VALUES (11, 'dev test', NULL, NULL, NULL, NULL, '2025-01-07 20:00:17', 13);
INSERT INTO `users` VALUES (12, 'dev', NULL, NULL, NULL, NULL, '2025-01-07 20:00:38', 14);

SET FOREIGN_KEY_CHECKS = 1;
