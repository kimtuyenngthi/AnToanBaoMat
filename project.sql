/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100427
 Source Host           : localhost:3306
 Source Schema         : project

 Target Server Type    : MySQL
 Target Server Version : 100427
 File Encoding         : 65001

 Date: 26/06/2025 00:10:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `IdCat` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NameCat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `HideCat` int NULL DEFAULT NULL,
  PRIMARY KEY (`IdCat`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('BB', 'Bim Bim', 0);
INSERT INTO `category` VALUES ('BT', 'Bánh Tráng', 0);
INSERT INTO `category` VALUES ('CB', 'Combo', 0);
INSERT INTO `category` VALUES ('HAT', 'Hạt', 0);
INSERT INTO `category` VALUES ('KHO', 'Khô', 0);
INSERT INTO `category` VALUES ('TCS', 'Trái cây sấy', 0);

-- ----------------------------
-- Table structure for detailsinvoices
-- ----------------------------
DROP TABLE IF EXISTS `detailsinvoices`;
CREATE TABLE `detailsinvoices`  (
  `IddetailIn` int NOT NULL AUTO_INCREMENT,
  `IdIn` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Idpro` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Quantity` int NULL DEFAULT NULL,
  `Price` double NULL DEFAULT NULL,
  PRIMARY KEY (`IddetailIn`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of detailsinvoices
-- ----------------------------
INSERT INTO `detailsinvoices` VALUES (1, '1', '1', 1, 150000);
INSERT INTO `detailsinvoices` VALUES (2, '1', '2', 2, 240000);
INSERT INTO `detailsinvoices` VALUES (3, '1', '3', 1, 250000);
INSERT INTO `detailsinvoices` VALUES (4, '2', '1', 1, 150000);
INSERT INTO `detailsinvoices` VALUES (5, '2', '55', 1, 80000);
INSERT INTO `detailsinvoices` VALUES (6, '2', '11', 2, 240000);
INSERT INTO `detailsinvoices` VALUES (7, '3', '1', 2, 150000);
INSERT INTO `detailsinvoices` VALUES (8, '3', '65', 1, 300000);
INSERT INTO `detailsinvoices` VALUES (9, '3', '4', 1, 240000);
INSERT INTO `detailsinvoices` VALUES (10, '3', '43', 1, 58000);
INSERT INTO `detailsinvoices` VALUES (11, '3', '79', 1, 77000);
INSERT INTO `detailsinvoices` VALUES (12, '4', '1', 1, 150000);
INSERT INTO `detailsinvoices` VALUES (13, '4', '81', 1, 38000);
INSERT INTO `detailsinvoices` VALUES (14, '4', '68', 1, 70000);
INSERT INTO `detailsinvoices` VALUES (15, '4', '20', 1, 30000);
INSERT INTO `detailsinvoices` VALUES (16, '5', '3', 1, 250000);
INSERT INTO `detailsinvoices` VALUES (17, '5', '4', 1, 240000);
INSERT INTO `detailsinvoices` VALUES (18, '5', '85', 4, 95000);
INSERT INTO `detailsinvoices` VALUES (19, '5', '22', 3, 20000);
INSERT INTO `detailsinvoices` VALUES (20, '5', '55', 1, 80000);
INSERT INTO `detailsinvoices` VALUES (21, '5', '43', 1, 58000);
INSERT INTO `detailsinvoices` VALUES (22, '5', '12', 1, 250000);
INSERT INTO `detailsinvoices` VALUES (23, '5', '79', 2, 77000);
INSERT INTO `detailsinvoices` VALUES (24, '6', '1', 1, 150000);
INSERT INTO `detailsinvoices` VALUES (25, '7', '1', 2, 150000);
INSERT INTO `detailsinvoices` VALUES (26, '7', '2', 1, 240000);
INSERT INTO `detailsinvoices` VALUES (27, '8', '4', 1, 240000);
INSERT INTO `detailsinvoices` VALUES (28, '9', '11', 1, 240000);

-- ----------------------------
-- Table structure for doanhso
-- ----------------------------
DROP TABLE IF EXISTS `doanhso`;
CREATE TABLE `doanhso`  (
  `IdPro` int NULL DEFAULT NULL,
  `soluong` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of doanhso
-- ----------------------------
INSERT INTO `doanhso` VALUES (1, 25);
INSERT INTO `doanhso` VALUES (2, 3);
INSERT INTO `doanhso` VALUES (3, 2);
INSERT INTO `doanhso` VALUES (55, 2);
INSERT INTO `doanhso` VALUES (11, 3);
INSERT INTO `doanhso` VALUES (65, 1);
INSERT INTO `doanhso` VALUES (4, 8);
INSERT INTO `doanhso` VALUES (43, 2);
INSERT INTO `doanhso` VALUES (79, 3);
INSERT INTO `doanhso` VALUES (81, 1);
INSERT INTO `doanhso` VALUES (68, 1);
INSERT INTO `doanhso` VALUES (20, 1);
INSERT INTO `doanhso` VALUES (85, 4);
INSERT INTO `doanhso` VALUES (22, 3);
INSERT INTO `doanhso` VALUES (12, 1);
INSERT INTO `doanhso` VALUES (9, 2);

-- ----------------------------
-- Table structure for invoices
-- ----------------------------
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices`  (
  `IdInvoice` int NOT NULL AUTO_INCREMENT,
  `NameUs` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PayType` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `StatusIn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Total` double NULL DEFAULT NULL,
  `Exportdate` datetime NULL DEFAULT NULL,
  `Phone` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `IdUs` int NULL DEFAULT NULL,
  PRIMARY KEY (`IdInvoice`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of invoices
-- ----------------------------
INSERT INTO `invoices` VALUES (1, 'Mai Thi', 'Đồng Nai', 'Thanh toán khi nhận hàng', 'null', 880000, '2023-05-03 21:40:37', '5456', 2);
INSERT INTO `invoices` VALUES (3, 'Khắc Thuận', 'Long An', 'Thanh toán khi nhận hàng', 'null', 975000, '2023-05-03 21:43:18', '5456', 3);
INSERT INTO `invoices` VALUES (4, 'Thanh Lộc', 'Thanh Hóa', 'Thanh toán khi nhận hàng', 'null', 288000, '2023-05-03 21:44:47', '68223233', 5);
INSERT INTO `invoices` VALUES (5, 'Ngọc Trần', 'Long An', 'Thanh toán khi nhận hàng', 'null', 1472000, '2023-05-03 21:49:16', '54568787', 4);
INSERT INTO `invoices` VALUES (6, 'Khắc Nhuận', 'đăng hưng phước', 'Thanh toán khi nhận hàng', 'null', 150000, '2023-05-07 16:52:57', '0363347214', 3);
INSERT INTO `invoices` VALUES (7, 'Khắc Nhuận', 'đăng hưng phước', 'Thanh toán khi nhận hàng', 'null', 540000, '2023-05-07 16:56:14', '0363347214', 3);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int NOT NULL,
  `level` tinyint NULL DEFAULT NULL,
  `user` int NULL DEFAULT NULL,
  `src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp,
  `status` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `IdProduct` int NOT NULL AUTO_INCREMENT,
  `IdCategory` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `NameProduct` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Image` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PriceNew` int NULL DEFAULT NULL,
  `PriceOld` int NULL DEFAULT NULL,
  `QuantityStock` int NULL DEFAULT NULL,
  `Description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Isnew` int NULL DEFAULT NULL,
  `Discount` int NULL DEFAULT NULL,
  `HideProduct` int NULL DEFAULT 0,
  PRIMARY KEY (`IdProduct`) USING BTREE,
  INDEX `FK_IDLoai`(`IdCategory` ASC) USING BTREE,
  CONSTRAINT `FK_IDLoai` FOREIGN KEY (`IdCategory`) REFERENCES `category` (`IdCat`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'BB', 'Bánh đậu xanh', './image/bimbim/dauxanh.jpg', 15000, 25000, 52, 'Đậu xanh thơm bùi kết hợp với sữa béo ngậy, đậm vị đặc trưng', NULL, NULL, 0);
INSERT INTO `products` VALUES (2, 'BB', 'Đùi gà phô mai', './image/bimbim/duigaphomai.jpg', 30000, 450000, 19, 'Đùi gà vị phô mai thơm ngon khó cưỡng', NULL, NULL, 0);
INSERT INTO `products` VALUES (3, 'BT', 'Bánh tráng thập cẩm', './image/banhtrang/banhtrangthapcam.jpg', 15000, 30000, 30, 'Bánh tráng trộn kết hợp với nhiều loại topping tạo nên hương vị khó cưỡng', NULL, NULL, 0);
INSERT INTO `products` VALUES (4, 'BT', 'Bánh tráng cuộn lá dứa', './image/banhtrang/cuondua.jpg\"', 10000, 25000, 9, 'Bánh tráng với màu xanh của lá dứa đặc sắc với hương vị', 1, NULL, 0);
INSERT INTO `products` VALUES (5, 'HAT', 'Hạt Macca', './image/hat/macca.jpg', 59000, 80000, 15, 'Hạt macca thơm bùi béo ngậy, giúp bổ sung protein', NULL, NULL, 0);
INSERT INTO `products` VALUES (6, 'BB', 'Bánh que khoai', './image/bimbim/khoai.jpg', 25000, 35000, 20, 'Vị khoai bùi béo thơm ngon', 1, NULL, 0);
INSERT INTO `products` VALUES (7, 'BB', 'Nui sấy', './image/bimbim/nuichien.jpg', 25000, 50000, 30, 'Nui sấy giòn ngon khó cưỡng', NULL, NULL, 0);
INSERT INTO `products` VALUES (8, 'BB', 'Bánh tăm đậu hà lan', './image/bimbim/tamdau.jpg', 30000, 45000, 15, 'Vị bánh kết hợp với đậu hà lan ăn hoài khó dứt', 1, NULL, 0);
INSERT INTO `products` VALUES (9, 'BB', 'Bánh tam giác', './image/bimbim/tamgiac.jpg', 25000, 35000, 10, 'Giòn giòn quá ngon', NULL, NULL, 0);
INSERT INTO `products` VALUES (10, 'BT', 'Bánh tráng cuộn thập cẩm', './image/banhtrang/cuonthapcam.jpg', 15000, 20000, 15, 'Bánh tráng cuộn có tép khô và dầu hành rất ngon', NULL, NULL, 0);
INSERT INTO `products` VALUES (11, 'BT', 'Bánh tráng cuộn tôm', './image/banhtrang/cuontom.jpg', 20000, 30000, 13, NULL, 1, NULL, 0);
INSERT INTO `products` VALUES (12, 'BT', 'Bánh tráng lá dứa', './image/banhtrang/ladua.jpg', 15000, 20000, 15, NULL, NULL, NULL, 0);
INSERT INTO `products` VALUES (13, 'BT', 'Bánh tráng phô mai', './image/banhtrang/phomai.jpg', 15000, 20000, 15, NULL, NULL, NULL, 0);
INSERT INTO `products` VALUES (14, 'BT', 'Bánh tráng phô mai tôm', './image/banhtrang/phomai_tom.jpg', 20000, 30000, 13, NULL, NULL, NULL, 0);
INSERT INTO `products` VALUES (15, 'BT', 'Bánh tráng rong biển', './image/banhtrang/rongbien.jpg', 20000, 30000, 17, NULL, 1, NULL, 0);
INSERT INTO `products` VALUES (16, 'BT', 'Bánh tráng sợi sa tế', './image/banhtrang/soisatelongan.jpg', 25000, 40000, 19, NULL, 1, NULL, 0);

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review`  (
  `IdAccount` int NULL DEFAULT NULL,
  `Idproduct` int NULL DEFAULT NULL,
  `ContentReview` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dateReview` datetime NULL DEFAULT NULL,
  `NameID` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Score` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES (3, 1, 'đẹp', '2023-05-05 22:24:03', 'Khắc Nhuận', 4);
INSERT INTO `review` VALUES (3, 1, 'đẹp', '2023-05-05 22:24:22', 'Khắc Nhuận', 5);
INSERT INTO `review` VALUES (3, 1, 'đẹp', '2023-05-05 22:25:21', 'Khắc Nhuận', 5);
INSERT INTO `review` VALUES (3, 1, 'great', '2023-05-05 23:24:28', 'Khắc Nhuận', 5);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `IdUser` int NOT NULL,
  `NameUser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `EmailUs` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Pass` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Phone` int NULL DEFAULT NULL,
  `RegistrationDate` date NULL DEFAULT NULL,
  `RoleUs` int NULL DEFAULT NULL,
  `active` int NULL DEFAULT NULL,
  `Keyactive` int NULL DEFAULT NULL,
  `Manager` int NULL DEFAULT NULL,
  PRIMARY KEY (`IdUser`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Thúy Diễm', 'thuydiem@gmail.com', '1234', 123456789, '2022-12-01', 1, 1, NULL, 1);
INSERT INTO `users` VALUES (2, 'Mai Thi', 'maithi@gmail.com', '1122', 213654987, '2022-12-02', 0, 1, NULL, 0);
INSERT INTO `users` VALUES (3, 'Khắc Nhuận', 'khacnhuan@gmail.com', '3456', 321456978, '2022-12-03', 1, 1, NULL, 0);
INSERT INTO `users` VALUES (4, 'Ngọc Trân', 'ngoctran06@gmail.com', '0609', 522610243, '2022-12-04', NULL, 1, NULL, 1);
INSERT INTO `users` VALUES (5, 'Thanh Lộc', 'thanhloc@gmail.com', '1104', 675431204, '2022-12-05', 0, 1, NULL, 1);
INSERT INTO `users` VALUES (6, 'Kim Tuyet', 'thuydiem@gmail.com', '1234', 123756789, '2022-12-01', 0, 1, NULL, 0);
INSERT INTO `users` VALUES (12, 'Kim Tuyết', 'kimtuyet@gmail.com', '1206', 769965009, '2022-12-06', 1, 1, NULL, 0);

-- ----------------------------
-- Table structure for wishlist
-- ----------------------------
DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE `wishlist`  (
  `IdPro` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Image` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `NamePro` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PriceNew` int NULL DEFAULT NULL,
  `IdU` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wishlist
-- ----------------------------
INSERT INTO `wishlist` VALUES ('1', './image/dc2.jpg', 'Đại Dương', 150000, 3);
INSERT INTO `wishlist` VALUES ('4', './image/dc11.jpg', 'Đêm Trăng', 240000, 3);
INSERT INTO `wishlist` VALUES ('15', './image/dream9-min.jpg', 'Mộng hồng', 270000, 3);
INSERT INTO `wishlist` VALUES ('9', './image/dc10.jpg', 'Trời xanh', 250000, 12);

SET FOREIGN_KEY_CHECKS = 1;
