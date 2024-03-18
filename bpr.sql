/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50739 (5.7.39)
 Source Host           : localhost:3306
 Source Schema         : bpr

 Target Server Type    : MySQL
 Target Server Version : 50739 (5.7.39)
 File Encoding         : 65001

 Date: 18/03/2024 12:30:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for deposito
-- ----------------------------
DROP TABLE IF EXISTS `deposito`;
CREATE TABLE `deposito` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nasabah_id` int(11) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `jangka_waktu` varchar(255) DEFAULT NULL,
  `jumlah_deposito` varchar(255) DEFAULT NULL,
  `bunga` varchar(255) DEFAULT NULL,
  `jatuh_tempo` date DEFAULT NULL,
  `perpanjangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nomor` varchar(255) DEFAULT NULL,
  `status_pencairan` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deposito
-- ----------------------------
BEGIN;
INSERT INTO `deposito` (`id`, `nasabah_id`, `jenis`, `jangka_waktu`, `jumlah_deposito`, `bunga`, `jatuh_tempo`, `perpanjangan`, `created_at`, `updated_at`, `tanggal`, `nomor`, `status_pencairan`) VALUES (3, 4, 'Deposito Berjangka', '12', '1000000', '6', '2024-09-16', NULL, '2024-03-16 10:28:38', '2024-03-16 13:28:54', '2024-03-16', 'BPR/OD/XX-565075', 0);
INSERT INTO `deposito` (`id`, `nasabah_id`, `jenis`, `jangka_waktu`, `jumlah_deposito`, `bunga`, `jatuh_tempo`, `perpanjangan`, `created_at`, `updated_at`, `tanggal`, `nomor`, `status_pencairan`) VALUES (5, 5, 'Deposito Berjangka', '6', '10000000', '6', '2024-09-01', NULL, '2024-03-16 13:29:13', '2024-03-16 13:53:16', '2024-01-16', 'BPR/OD/XX-352962', 0);
COMMIT;

-- ----------------------------
-- Table structure for nasabah
-- ----------------------------
DROP TABLE IF EXISTS `nasabah`;
CREATE TABLE `nasabah` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `jkel` varchar(255) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `pekerjaan` varchar(255) DEFAULT NULL,
  `nama_ahliwaris` varchar(255) DEFAULT NULL,
  `alamat_ahliwaris` text,
  `telp_ahliwaris` varchar(255) DEFAULT NULL,
  `norek` varchar(255) DEFAULT NULL,
  `pegawai_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nasabah
-- ----------------------------
BEGIN;
INSERT INTO `nasabah` (`id`, `nama`, `jkel`, `alamat`, `telp`, `tgl_lahir`, `pekerjaan`, `nama_ahliwaris`, `alamat_ahliwaris`, `telp_ahliwaris`, `norek`, `pegawai_id`) VALUES (4, 'Budi', 'L', 'vjhfdkj', 'r', '2000-01-01', 'r', 'r', 'r', 'r', '342546', 3);
INSERT INTO `nasabah` (`id`, `nama`, `jkel`, `alamat`, `telp`, `tgl_lahir`, `pekerjaan`, `nama_ahliwaris`, `alamat_ahliwaris`, `telp_ahliwaris`, `norek`, `pegawai_id`) VALUES (5, 'andi', 'L', 'kjk', 'jkjn', '2000-01-01', 'kjnjk', 'jknjk', 'nkjn', 'kjn', '5678', 3);
COMMIT;

-- ----------------------------
-- Table structure for pegawai
-- ----------------------------
DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE `pegawai` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `jkel` varchar(255) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pegawai
-- ----------------------------
BEGIN;
INSERT INTO `pegawai` (`id`, `nama`, `jkel`, `alamat`, `telp`, `user_id`, `tgl_lahir`, `jabatan`) VALUES (3, 'adi', 'L', 'jl s adam', '0987654345678', NULL, '1990-01-01', 'staff');
COMMIT;

-- ----------------------------
-- Table structure for pencairan
-- ----------------------------
DROP TABLE IF EXISTS `pencairan`;
CREATE TABLE `pencairan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deposito_id` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nasabah_id` int(11) DEFAULT NULL,
  `jumlah_deposito` int(11) DEFAULT NULL,
  `bunga` int(11) DEFAULT NULL,
  `jangka_waktu` int(11) DEFAULT NULL,
  `profit_bunga` int(11) DEFAULT NULL,
  `pajak` int(11) DEFAULT NULL,
  `total_pendapatan` int(11) DEFAULT NULL,
  `pencairan` int(11) DEFAULT NULL,
  `norek` varchar(255) DEFAULT NULL,
  `penerima` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pencairan
-- ----------------------------
BEGIN;
INSERT INTO `pencairan` (`id`, `deposito_id`, `tanggal`, `nominal`, `created_at`, `updated_at`, `nasabah_id`, `jumlah_deposito`, `bunga`, `jangka_waktu`, `profit_bunga`, `pajak`, `total_pendapatan`, `pencairan`, `norek`, `penerima`) VALUES (6, 5, '2024-03-17', NULL, '2024-03-17 12:04:22', '2024-03-17 12:04:22', 5, 10000000, 6, 6, 295890, 59178, 236712, 10236712, '32435', 'sdfdgf');
COMMIT;

-- ----------------------------
-- Table structure for role_users
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `role_users_user_id_role_id_unique` (`user_id`,`role_id`) USING BTREE,
  KEY `role_users_role_id_foreign` (`role_id`) USING BTREE,
  CONSTRAINT `role_users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of role_users
-- ----------------------------
BEGIN;
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (1, 1);
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'superadmin', '2020-12-23 23:17:35', '2020-12-23 23:17:35');
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'admin', '2024-01-06 12:07:58', '2024-01-06 12:07:58');
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'pegawai', '2024-01-06 12:08:01', '2024-01-06 12:08:01');
COMMIT;

-- ----------------------------
-- Table structure for sertifikat
-- ----------------------------
DROP TABLE IF EXISTS `sertifikat`;
CREATE TABLE `sertifikat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deposito_id` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nasabah_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sertifikat
-- ----------------------------
BEGIN;
INSERT INTO `sertifikat` (`id`, `deposito_id`, `tanggal`, `created_at`, `updated_at`, `nasabah_id`) VALUES (3, 3, '2024-03-16', '2024-03-16 12:37:22', '2024-03-16 12:38:01', 5);
COMMIT;

-- ----------------------------
-- Table structure for setoran
-- ----------------------------
DROP TABLE IF EXISTS `setoran`;
CREATE TABLE `setoran` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deposito_id` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nasabah_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setoran
-- ----------------------------
BEGIN;
INSERT INTO `setoran` (`id`, `deposito_id`, `tanggal`, `nominal`, `created_at`, `updated_at`, `nasabah_id`) VALUES (1, 3, '2024-03-16', 10000, '2024-03-16 12:04:44', '2024-03-16 12:04:58', 5);
INSERT INTO `setoran` (`id`, `deposito_id`, `tanggal`, `nominal`, `created_at`, `updated_at`, `nasabah_id`) VALUES (2, 3, '2024-03-16', 10000, '2024-03-16 12:06:08', '2024-03-16 12:06:08', 5);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(255) NOT NULL,
  `password_superadmin` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `api_token` varchar(255) DEFAULT NULL,
  `last_session` varchar(255) DEFAULT NULL,
  `change_password` int(1) unsigned DEFAULT '0' COMMENT '0: belum, 1: sudah',
  `nama_kelompok` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_username_unique` (`username`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `password_superadmin`, `remember_token`, `created_at`, `updated_at`, `api_token`, `last_session`, `change_password`, `nama_kelompok`) VALUES (1, 'superadmin', NULL, 'superadmin', '2022-11-07 00:40:59', '$2y$10$E9xG1OtIFvBRbHqlwHCC3u48vO5eBf2OQ9wFNpi.qKOAzVqNDUdW2', NULL, NULL, '2022-11-07 00:40:59', '2022-11-06 16:40:59', '$2y$10$tjMANlV25IUwvKuPxEODW.3qE3zPSKjwhmgTcZUgsPDZRGcpgGAN.', NULL, 0, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
