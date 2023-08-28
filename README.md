# Trang web Thuê Sân Bóng

## Giới thiệu
Trang web Thuê Sân Bóng cung cấp dịch vụ đặt sân bóng nhân tạo trực tuyến, giúp người chơi dễ dàng tìm và đặt sân theo thời gian và vị trí mong muốn.

## Chức năng chính
- Xem thông tin chi tiết về sân, bao gồm giá cả, tiện ích và hình ảnh.
- Đặt sân trực tuyến.

## Cấu hình
- Server: tomcat 9.0.71
- mysql-connector-j-8.0.32

## Cơ sở dữ liệu
create database footballfielddb;

use footballfielddb;

CREATE TABLE `football_field` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `contact` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `footballfielddb`.`football_field`
(`name`,
`address`,
`contact`)
VALUES
('Sân bóng nhân tạo Trung Hòa','Ngõ 55-57, đường Trần Phú, Hà Đông (trong trường Đại học Nghệ thuật Trung ương)','0962332538 - Anh Hoàng'),
('Sân bóng Đại học Y Hà Nội','Trường Đại học Y Hà Nội, Khương Thượng, Đống Đa, Hà Nội','085.865.8899'),
('Sân bóng Đại Bách khoa Hà Nội','A1 Lê Thanh Nghị, Bách Khoa, Hai Bà Trưng, Hà Nội','090.479.5885');

CREATE TABLE `service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uniform` int NOT NULL,
  `referee` int NOT NULL,
  `field_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `service_field_id_fk_idx` (`field_id`),
  CONSTRAINT `service_field_id_fk` FOREIGN KEY (`field_id`) REFERENCES `football_field` (`id`)
);

INSERT INTO `footballfielddb`.`service`
(`uniform`,
`referee`,
`field_id`)
VALUES
(300000,200000,1),
(310000,210000,2),
(320000,220000,3);

CREATE TABLE `time_slot` (
  `id` int NOT NULL AUTO_INCREMENT,
  `06$00_16$00` int NOT NULL,
  `16$00_17$30` int NOT NULL,
  `17$30_20$30` int NOT NULL,
  `20$30_22$00` int NOT NULL,
  `field_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id_fk_idx` (`field_id`),
  CONSTRAINT `field_id_fk` FOREIGN KEY (`field_id`) REFERENCES `football_field` (`id`)
);

INSERT INTO `footballfielddb`.`time_slot`
(`06$00_16$00`,
`16$00_17$30`,
`17$30_20$30`,
`20$30_22$00`,
`field_id`)
VALUES
(300000,600000,800000,400000,1),
(450000,500000,650000,500000,2),
(400000,600000,800000,600000,3);

CREATE TABLE `customer_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(200) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `number_team` int NOT NULL,
  `number_player` int NOT NULL,
  `times` double NOT NULL,
  `time_slot_fee` int NOT NULL,
  `uniform_fee` int NOT NULL DEFAULT '0',
  `referee_fee` int NOT NULL DEFAULT '0',
  `periodic` varchar(100) NOT NULL DEFAULT 'Không',
  `field_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_field_id_idx` (`field_id`),
  CONSTRAINT `customer_field_id` FOREIGN KEY (`field_id`) REFERENCES `football_field` (`id`)
);
