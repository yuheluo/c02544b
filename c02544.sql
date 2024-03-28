/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : c02544

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 24/02/2024 09:05:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 5, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2024-02-21 00:34:52');
INSERT INTO `admin_menu` VALUES (2, 0, 6, 'Admin', 'fa-tasks', '', NULL, NULL, '2024-02-21 00:34:52');
INSERT INTO `admin_menu` VALUES (3, 2, 7, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2024-02-21 00:34:52');
INSERT INTO `admin_menu` VALUES (4, 2, 8, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2024-02-21 00:34:52');
INSERT INTO `admin_menu` VALUES (5, 2, 9, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2024-02-21 00:34:52');
INSERT INTO `admin_menu` VALUES (6, 2, 10, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2024-02-21 00:34:52');
INSERT INTO `admin_menu` VALUES (7, 2, 11, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2024-02-21 00:34:52');
INSERT INTO `admin_menu` VALUES (8, 0, 4, 'Goods category', 'fa-bars', 'goods-type-models', NULL, '2024-02-20 14:35:36', '2024-02-21 23:00:51');
INSERT INTO `admin_menu` VALUES (9, 0, 1, 'Goods information', 'fa-bars', 'goods-models', NULL, '2024-02-20 14:40:13', '2024-02-21 22:59:15');
INSERT INTO `admin_menu` VALUES (10, 0, 2, 'Order Information', 'fa-bars', 'order-models', NULL, '2024-02-20 23:08:33', '2024-02-21 22:59:26');
INSERT INTO `admin_menu` VALUES (11, 0, 3, 'Refund management', 'fa-bars', 'return-models', NULL, '2024-02-21 00:34:35', '2024-02-21 22:59:44');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 802 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-20 13:15:16', '2024-02-20 13:15:16');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-20 13:15:19', '2024-02-20 13:15:19');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 13:15:21', '2024-02-20 13:15:21');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 13:15:22', '2024-02-20 13:15:22');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 13:15:22', '2024-02-20 13:15:22');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 13:15:22', '2024-02-20 13:15:22');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 13:15:25', '2024-02-20 13:15:25');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 13:15:25', '2024-02-20 13:15:25');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 13:15:26', '2024-02-20 13:15:26');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 13:15:29', '2024-02-20 13:15:29');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-20 13:40:39', '2024-02-20 13:40:39');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 13:40:41', '2024-02-20 13:40:41');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 13:40:43', '2024-02-20 13:40:43');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 13:40:46', '2024-02-20 13:40:46');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-02-20 13:41:11', '2024-02-20 13:41:11');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-02-20 13:41:40', '2024-02-20 13:41:40');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-02-20 13:41:41', '2024-02-20 13:41:41');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-02-20 13:41:41', '2024-02-20 13:41:41');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-02-20 13:45:20', '2024-02-20 13:45:20');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-20 13:45:20', '2024-02-20 13:45:20');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 13:45:24', '2024-02-20 13:45:24');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-20 13:47:38', '2024-02-20 13:47:38');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 13:47:39', '2024-02-20 13:47:39');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 13:47:43', '2024-02-20 13:47:43');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 13:47:45', '2024-02-20 13:47:45');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"user\",\"name\":\"user\",\"permissions\":[\"1\",\"2\",\"3\",\"4\",\"5\",null],\"_token\":\"9DFSKEg7UcsCRBSDldoOtKTkd572x7HkYAuxGY1z\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/auth\\/roles\"}', '2024-02-20 13:47:56', '2024-02-20 13:47:56');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-02-20 13:47:56', '2024-02-20 13:47:56');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 13:48:03', '2024-02-20 13:48:03');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"user\",\"name\":\"user\",\"permissions\":[\"2\",\"3\",null],\"_token\":\"9DFSKEg7UcsCRBSDldoOtKTkd572x7HkYAuxGY1z\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/auth\\/roles\"}', '2024-02-20 13:48:12', '2024-02-20 13:48:12');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-02-20 13:48:12', '2024-02-20 13:48:12');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-02-20 13:48:14', '2024-02-20 13:48:14');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 13:50:48', '2024-02-20 13:50:48');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-20 13:58:46', '2024-02-20 13:58:46');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 13:58:50', '2024-02-20 13:58:50');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 13:58:53', '2024-02-20 13:58:53');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-02-20 13:59:33', '2024-02-20 13:59:33');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-02-20 13:59:37', '2024-02-20 13:59:37');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"Username\",\"name\":\"Name\",\"password\":\"Password\",\"password_confirmation\":\"Password\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"Vcu3C50mkYy1JaUkWs6YFTzvlczpGRkQHkcU13kB\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/auth\\/users\"}', '2024-02-20 13:59:45', '2024-02-20 13:59:45');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-02-20 13:59:45', '2024-02-20 13:59:45');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 14:04:05', '2024-02-20 14:04:05');
INSERT INTO `admin_operation_log` VALUES (41, 4, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-20 14:04:37', '2024-02-20 14:04:37');
INSERT INTO `admin_operation_log` VALUES (42, 4, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-20 14:04:56', '2024-02-20 14:04:56');
INSERT INTO `admin_operation_log` VALUES (43, 4, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 14:04:57', '2024-02-20 14:04:57');
INSERT INTO `admin_operation_log` VALUES (44, 4, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 14:12:45', '2024-02-20 14:12:45');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-20 14:17:26', '2024-02-20 14:17:26');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 14:17:28', '2024-02-20 14:17:28');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-20 14:27:54', '2024-02-20 14:27:54');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-20 14:34:51', '2024-02-20 14:34:51');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-20 14:34:57', '2024-02-20 14:34:57');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"goods-type\",\"icon\":\"fa-bars\",\"uri\":\"goods-type-models\",\"roles\":[null],\"permission\":null,\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\"}', '2024-02-20 14:35:36', '2024-02-20 14:35:36');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-20 14:35:36', '2024-02-20 14:35:36');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-20 14:35:39', '2024-02-20 14:35:39');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 14:35:40', '2024-02-20 14:35:40');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-20 14:35:59', '2024-02-20 14:35:59');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-20 14:36:19', '2024-02-20 14:36:19');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/goods-type-models/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 14:36:25', '2024-02-20 14:36:25');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/goods-type-models', 'POST', '127.0.0.1', '{\"name\":\"chandelier\",\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/goods-type-models\"}', '2024-02-20 14:36:35', '2024-02-20 14:36:35');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/goods-type-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 14:36:35', '2024-02-20 14:36:35');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/goods-type-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 14:37:00', '2024-02-20 14:37:00');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/goods-type-models', 'POST', '127.0.0.1', '{\"name\":\"chandelier\",\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\"}', '2024-02-20 14:37:13', '2024-02-20 14:37:13');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-20 14:37:13', '2024-02-20 14:37:13');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/goods-type-models/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 14:37:17', '2024-02-20 14:37:17');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/goods-type-models', 'POST', '127.0.0.1', '{\"name\":\"LED light\",\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/goods-type-models\"}', '2024-02-20 14:37:22', '2024-02-20 14:37:22');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-20 14:37:22', '2024-02-20 14:37:22');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/goods-type-models/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 14:37:30', '2024-02-20 14:37:30');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/goods-type-models', 'POST', '127.0.0.1', '{\"name\":\"spotlight\",\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/goods-type-models\"}', '2024-02-20 14:37:32', '2024-02-20 14:37:32');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-20 14:37:32', '2024-02-20 14:37:32');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 14:37:33', '2024-02-20 14:37:33');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 14:37:36', '2024-02-20 14:37:36');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8}]\"}', '2024-02-20 14:37:46', '2024-02-20 14:37:46');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 14:37:46', '2024-02-20 14:37:46');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-20 14:37:48', '2024-02-20 14:37:48');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 14:37:48', '2024-02-20 14:37:48');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 14:40:03', '2024-02-20 14:40:03');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 14:40:05', '2024-02-20 14:40:05');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"goods\",\"icon\":\"fa-bars\",\"uri\":\"goods-models\",\"roles\":[null],\"permission\":null,\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\"}', '2024-02-20 14:40:13', '2024-02-20 14:40:13');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-20 14:40:13', '2024-02-20 14:40:13');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-20 14:40:15', '2024-02-20 14:40:15');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 14:40:16', '2024-02-20 14:40:16');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/goods-models/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 14:40:19', '2024-02-20 14:40:19');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/goods-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 14:41:05', '2024-02-20 14:41:05');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/goods-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 14:43:37', '2024-02-20 14:43:37');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/goods-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 14:45:29', '2024-02-20 14:45:29');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/goods-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 14:45:43', '2024-02-20 14:45:43');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/goods-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 14:45:51', '2024-02-20 14:45:51');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/goods-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 14:45:53', '2024-02-20 14:45:53');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/goods-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 14:46:13', '2024-02-20 14:46:13');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/goods-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 14:46:21', '2024-02-20 14:46:21');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/goods-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 14:46:30', '2024-02-20 14:46:30');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/goods-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 14:46:42', '2024-02-20 14:46:42');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/goods-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 14:46:47', '2024-02-20 14:46:47');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/goods-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 14:46:58', '2024-02-20 14:46:58');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/goods-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 14:48:01', '2024-02-20 14:48:01');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/goods-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 14:48:16', '2024-02-20 14:48:16');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/goods-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 14:48:44', '2024-02-20 14:48:44');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/goods-models', 'POST', '127.0.0.1', '{\"name\":\"\\u5546\\u54c1\\u540d\\u79f0\",\"supplier\":\"\\u4f9b\\u5e94\\u5546\\u4fe1\\u606f\",\"inventory_quantity\":\"2222\",\"type_id\":\"2\",\"status\":\"on\",\"price\":\"22\",\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\"}', '2024-02-20 14:48:57', '2024-02-20 14:48:57');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 14:48:57', '2024-02-20 14:48:57');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 14:49:17', '2024-02-20 14:49:17');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 14:49:20', '2024-02-20 14:49:20');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 14:49:21', '2024-02-20 14:49:21');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 14:49:21', '2024-02-20 14:49:21');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 14:49:21', '2024-02-20 14:49:21');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 14:49:21', '2024-02-20 14:49:21');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 14:49:53', '2024-02-20 14:49:53');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 14:50:15', '2024-02-20 14:50:15');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:50:34', '2024-02-20 22:50:34');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/goods-models/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 22:50:40', '2024-02-20 22:50:40');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/goods-models', 'POST', '127.0.0.1', '{\"name\":\"\\u5546\\u54c1\\u540d\\u79f0\",\"supplier\":\"\\u4f9b\\u5e94\\u5546\\u4fe1\\u606f\",\"inventory_quantity\":\"222\",\"type_id\":\"2\",\"status\":\"off\",\"price\":\"22\",\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/goods-models\"}', '2024-02-20 22:50:49', '2024-02-20 22:50:49');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:50:49', '2024-02-20 22:50:49');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:54:18', '2024-02-20 22:54:18');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:54:33', '2024-02-20 22:54:33');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:54:42', '2024-02-20 22:54:42');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:55:25', '2024-02-20 22:55:25');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:55:26', '2024-02-20 22:55:26');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-20 22:56:05', '2024-02-20 22:56:05');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:56:06', '2024-02-20 22:56:06');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:56:10', '2024-02-20 22:56:10');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:56:24', '2024-02-20 22:56:24');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:56:29', '2024-02-20 22:56:29');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:57:08', '2024-02-20 22:57:08');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:57:08', '2024-02-20 22:57:08');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:57:09', '2024-02-20 22:57:09');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:57:09', '2024-02-20 22:57:09');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:57:09', '2024-02-20 22:57:09');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:57:16', '2024-02-20 22:57:16');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:57:34', '2024-02-20 22:57:34');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:57:41', '2024-02-20 22:57:41');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:57:42', '2024-02-20 22:57:42');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:57:42', '2024-02-20 22:57:42');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:58:24', '2024-02-20 22:58:24');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:58:40', '2024-02-20 22:58:40');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:59:01', '2024-02-20 22:59:01');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:59:13', '2024-02-20 22:59:13');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:59:30', '2024-02-20 22:59:30');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:59:37', '2024-02-20 22:59:37');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 22:59:46', '2024-02-20 22:59:46');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 23:00:03', '2024-02-20 23:00:03');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 23:00:13', '2024-02-20 23:00:13');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 23:00:18', '2024-02-20 23:00:18');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 23:00:54', '2024-02-20 23:00:54');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 23:01:07', '2024-02-20 23:01:07');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 23:02:38', '2024-02-20 23:02:38');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/goods-models/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 23:02:41', '2024-02-20 23:02:41');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 23:02:43', '2024-02-20 23:02:43');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 23:03:36', '2024-02-20 23:03:36');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/goods-models/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 23:03:37', '2024-02-20 23:03:37');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/goods-models', 'POST', '127.0.0.1', '{\"name\":\"\\u5546\\u54c1\\u540d\\u79f0\",\"supplier\":\"\\u4f9b\\u5e94\\u5546\\u4fe1\\u606f\",\"inventory_quantity\":\"555\",\"type_id\":\"3\",\"status\":\"off\",\"price\":\"23\",\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/goods-models\"}', '2024-02-20 23:03:43', '2024-02-20 23:03:43');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 23:03:44', '2024-02-20 23:03:44');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 23:03:45', '2024-02-20 23:03:45');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 23:05:44', '2024-02-20 23:05:44');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 23:06:10', '2024-02-20 23:06:10');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 23:06:16', '2024-02-20 23:06:16');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 23:06:29', '2024-02-20 23:06:29');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 23:06:58', '2024-02-20 23:06:58');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 23:08:27', '2024-02-20 23:08:27');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8ba2\\u5355\\u4fe1\\u606f\",\"icon\":\"fa-bars\",\"uri\":\"order-models\",\"roles\":[null],\"permission\":null,\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\"}', '2024-02-20 23:08:33', '2024-02-20 23:08:33');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-20 23:08:33', '2024-02-20 23:08:33');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 23:08:35', '2024-02-20 23:08:35');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 23:08:37', '2024-02-20 23:08:37');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 23:08:39', '2024-02-20 23:08:39');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\\u4fe1\\u606f\",\"icon\":\"fa-bars\",\"uri\":\"goods-models\",\"roles\":[null],\"permission\":null,\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/auth\\/menu\"}', '2024-02-20 23:08:44', '2024-02-20 23:08:44');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-20 23:08:44', '2024-02-20 23:08:44');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 23:08:47', '2024-02-20 23:08:47');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\\u5206\\u7c7b\",\"icon\":\"fa-bars\",\"uri\":\"goods-type-models\",\"roles\":[null],\"permission\":null,\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/auth\\/menu\"}', '2024-02-20 23:08:55', '2024-02-20 23:08:55');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-20 23:08:55', '2024-02-20 23:08:55');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 23:08:55', '2024-02-20 23:08:55');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-20 23:08:56', '2024-02-20 23:08:56');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 23:09:02', '2024-02-20 23:09:02');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-20 23:09:04', '2024-02-20 23:09:04');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 23:10:47', '2024-02-20 23:10:47');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 23:12:17', '2024-02-20 23:12:17');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 23:17:29', '2024-02-20 23:17:29');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 23:18:00', '2024-02-20 23:18:00');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 23:18:16', '2024-02-20 23:18:16');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 23:18:40', '2024-02-20 23:18:40');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/order-models', 'POST', '127.0.0.1', '{\"username\":\"124124\",\"phone\":\"42142142142\",\"address\":\"\\u5730\\u5740\\u5730\\u5740\\u5730\\u5740\\u5730\\u5740\",\"total\":\"222\",\"goods_id\":[\"1\",\"2\",\"3\",null],\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\"}', '2024-02-20 23:18:55', '2024-02-20 23:18:55');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 23:18:55', '2024-02-20 23:18:55');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 23:20:44', '2024-02-20 23:20:44');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/order-models', 'POST', '127.0.0.1', '{\"username\":\"12321321\",\"phone\":\"________321\",\"address\":\"2321\",\"total\":\"2131\",\"goods_id\":[null],\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\"}', '2024-02-20 23:20:57', '2024-02-20 23:20:57');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-20 23:20:57', '2024-02-20 23:20:57');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin/order-models', 'POST', '127.0.0.1', '{\"username\":\"12321321\",\"phone\":\"321________\",\"address\":\"2321\",\"total\":\"2131\",\"goods_id\":[\"1\",\"2\",\"3\",null],\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\"}', '2024-02-21 00:06:48', '2024-02-21 00:06:48');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 00:06:48', '2024-02-21 00:06:48');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 00:09:19', '2024-02-21 00:09:19');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 00:09:38', '2024-02-21 00:09:38');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 00:09:40', '2024-02-21 00:09:40');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 00:09:52', '2024-02-21 00:09:52');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 00:09:59', '2024-02-21 00:09:59');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 00:10:04', '2024-02-21 00:10:04');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 00:10:25', '2024-02-21 00:10:25');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 00:11:03', '2024-02-21 00:11:03');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/order-models', 'POST', '127.0.0.1', '{\"username\":\"\\u7528\\u6237\\u540d\\u79f0\",\"phone\":\"23123124124\",\"address\":\"\\u8054\\u7cfb\\u5730\\u5740\",\"total\":\"111\",\"orderGoods\":{\"new_1\":{\"goods_id\":\"2\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"goods_id\":\"2\",\"id\":null,\"_remove_\":\"0\"},\"new_3\":{\"goods_id\":\"3\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\"}', '2024-02-21 00:11:19', '2024-02-21 00:11:19');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 00:11:20', '2024-02-21 00:11:20');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin/order-models', 'POST', '127.0.0.1', '{\"username\":\"\\u7528\\u6237\\u540d\\u79f0\",\"phone\":\"23123124124\",\"address\":\"\\u8054\\u7cfb\\u5730\\u5740\",\"total\":\"111\",\"orderGoods\":{\"new___LA_KEY__\":{\"goods_id\":\"3\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\"}', '2024-02-21 00:11:23', '2024-02-21 00:11:23');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 00:11:23', '2024-02-21 00:11:23');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'admin/order-models', 'POST', '127.0.0.1', '{\"username\":\"\\u7528\\u6237\\u540d\\u79f0\",\"phone\":\"23123124124\",\"address\":\"\\u8054\\u7cfb\\u5730\\u5740\",\"total\":\"111\",\"orderGoods\":{\"new___LA_KEY__\":{\"goods_id\":\"2\",\"id\":null,\"_remove_\":\"0\"},\"new_1\":{\"goods_id\":\"2\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\"}', '2024-02-21 00:11:51', '2024-02-21 00:11:51');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 00:11:51', '2024-02-21 00:11:51');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'admin/order-models', 'POST', '127.0.0.1', '{\"username\":\"\\u7528\\u6237\\u540d\\u79f0\",\"phone\":\"23123124124\",\"address\":\"\\u8054\\u7cfb\\u5730\\u5740\",\"total\":\"111\",\"orderGoods\":{\"new___LA_KEY__\":{\"goods_id\":\"2\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\"}', '2024-02-21 00:11:59', '2024-02-21 00:11:59');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 00:12:00', '2024-02-21 00:12:00');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'admin/order-models', 'POST', '127.0.0.1', '{\"username\":\"\\u7528\\u6237\\u540d\\u79f0\",\"phone\":\"23123124124\",\"address\":\"\\u8054\\u7cfb\\u5730\\u5740\",\"total\":\"111\",\"orderGoods\":{\"new___LA_KEY__\":{\"goods_id\":\"2\",\"id\":null,\"_remove_\":\"0\"},\"new_1\":{\"goods_id\":\"2\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"goods_id\":\"3\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\"}', '2024-02-21 00:12:24', '2024-02-21 00:12:24');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 00:12:24', '2024-02-21 00:12:24');
INSERT INTO `admin_operation_log` VALUES (201, 1, 'admin/order-models', 'POST', '127.0.0.1', '{\"username\":\"\\u7528\\u6237\\u540d\\u79f0\",\"phone\":\"23123124124\",\"address\":\"\\u8054\\u7cfb\\u5730\\u5740\",\"total\":\"111\",\"orderGoods\":{\"new___LA_KEY__\":{\"goods_id\":\"3\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\"}', '2024-02-21 00:12:34', '2024-02-21 00:12:34');
INSERT INTO `admin_operation_log` VALUES (202, 1, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 00:12:34', '2024-02-21 00:12:34');
INSERT INTO `admin_operation_log` VALUES (203, 1, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 00:13:12', '2024-02-21 00:13:12');
INSERT INTO `admin_operation_log` VALUES (204, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:13:13', '2024-02-21 00:13:13');
INSERT INTO `admin_operation_log` VALUES (205, 1, 'admin/order-models', 'POST', '127.0.0.1', '{\"username\":\"412421412\",\"phone\":\"41241242142\",\"address\":\"\\u8054\\u7cfb\\u5730\\u5740\",\"total\":\"2323\",\"orderGoods\":{\"new_1\":{\"goods_id\":\"2\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"goods_id\":\"1\",\"id\":null,\"_remove_\":\"0\"},\"new_3\":{\"goods_id\":\"3\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/order-models\"}', '2024-02-21 00:13:25', '2024-02-21 00:13:25');
INSERT INTO `admin_operation_log` VALUES (206, 1, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 00:13:25', '2024-02-21 00:13:25');
INSERT INTO `admin_operation_log` VALUES (207, 1, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 00:14:14', '2024-02-21 00:14:14');
INSERT INTO `admin_operation_log` VALUES (208, 1, 'admin/order-models/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:14:16', '2024-02-21 00:14:16');
INSERT INTO `admin_operation_log` VALUES (209, 1, 'admin/order-models/7', 'PUT', '127.0.0.1', '{\"username\":\"412421412\",\"phone\":\"41241242142\",\"address\":\"\\u8054\\u7cfb\\u5730\\u5740\",\"total\":\"2323\",\"orderGoods\":{\"2\":{\"goods_id\":\"2\",\"id\":\"2\",\"_remove_\":\"0\"},\"3\":{\"goods_id\":\"1\",\"id\":\"3\",\"_remove_\":\"1\"},\"4\":{\"goods_id\":\"3\",\"id\":\"4\",\"_remove_\":\"0\"}},\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/order-models\"}', '2024-02-21 00:14:18', '2024-02-21 00:14:18');
INSERT INTO `admin_operation_log` VALUES (210, 1, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 00:14:18', '2024-02-21 00:14:18');
INSERT INTO `admin_operation_log` VALUES (211, 1, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 00:14:19', '2024-02-21 00:14:19');
INSERT INTO `admin_operation_log` VALUES (212, 1, 'admin/order-models/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:14:20', '2024-02-21 00:14:20');
INSERT INTO `admin_operation_log` VALUES (213, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:14:24', '2024-02-21 00:14:24');
INSERT INTO `admin_operation_log` VALUES (214, 1, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 00:28:47', '2024-02-21 00:28:47');
INSERT INTO `admin_operation_log` VALUES (215, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:28:48', '2024-02-21 00:28:48');
INSERT INTO `admin_operation_log` VALUES (216, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:28:48', '2024-02-21 00:28:48');
INSERT INTO `admin_operation_log` VALUES (217, 1, 'admin/order-models/7', 'GET', '127.0.0.1', '[]', '2024-02-21 00:32:29', '2024-02-21 00:32:29');
INSERT INTO `admin_operation_log` VALUES (218, 1, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 00:32:31', '2024-02-21 00:32:31');
INSERT INTO `admin_operation_log` VALUES (219, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:32:33', '2024-02-21 00:32:33');
INSERT INTO `admin_operation_log` VALUES (220, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:32:34', '2024-02-21 00:32:34');
INSERT INTO `admin_operation_log` VALUES (221, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:32:34', '2024-02-21 00:32:34');
INSERT INTO `admin_operation_log` VALUES (222, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:32:36', '2024-02-21 00:32:36');
INSERT INTO `admin_operation_log` VALUES (223, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:32:36', '2024-02-21 00:32:36');
INSERT INTO `admin_operation_log` VALUES (224, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:32:46', '2024-02-21 00:32:46');
INSERT INTO `admin_operation_log` VALUES (225, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:32:47', '2024-02-21 00:32:47');
INSERT INTO `admin_operation_log` VALUES (226, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:32:47', '2024-02-21 00:32:47');
INSERT INTO `admin_operation_log` VALUES (227, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:34:27', '2024-02-21 00:34:27');
INSERT INTO `admin_operation_log` VALUES (228, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9000\\u6b3e\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"return-models\",\"roles\":[null],\"permission\":null,\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\"}', '2024-02-21 00:34:35', '2024-02-21 00:34:35');
INSERT INTO `admin_operation_log` VALUES (229, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-21 00:34:35', '2024-02-21 00:34:35');
INSERT INTO `admin_operation_log` VALUES (230, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-21 00:34:40', '2024-02-21 00:34:40');
INSERT INTO `admin_operation_log` VALUES (231, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"brSHhiW1ZiF6LskEMMxs5TIXGqLu8LqvGpqsyMTK\",\"_order\":\"[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":8},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2024-02-21 00:34:52', '2024-02-21 00:34:52');
INSERT INTO `admin_operation_log` VALUES (232, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:34:52', '2024-02-21 00:34:52');
INSERT INTO `admin_operation_log` VALUES (233, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-21 00:34:53', '2024-02-21 00:34:53');
INSERT INTO `admin_operation_log` VALUES (234, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:34:55', '2024-02-21 00:34:55');
INSERT INTO `admin_operation_log` VALUES (235, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:34:55', '2024-02-21 00:34:55');
INSERT INTO `admin_operation_log` VALUES (236, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:34:56', '2024-02-21 00:34:56');
INSERT INTO `admin_operation_log` VALUES (237, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:34:56', '2024-02-21 00:34:56');
INSERT INTO `admin_operation_log` VALUES (238, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 00:34:57', '2024-02-21 00:34:57');
INSERT INTO `admin_operation_log` VALUES (239, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-02-21 20:01:47', '2024-02-21 20:01:47');
INSERT INTO `admin_operation_log` VALUES (240, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:01:48', '2024-02-21 20:01:48');
INSERT INTO `admin_operation_log` VALUES (241, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:03:29', '2024-02-21 20:03:29');
INSERT INTO `admin_operation_log` VALUES (242, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:03:35', '2024-02-21 20:03:35');
INSERT INTO `admin_operation_log` VALUES (243, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:03:43', '2024-02-21 20:03:43');
INSERT INTO `admin_operation_log` VALUES (244, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:03:44', '2024-02-21 20:03:44');
INSERT INTO `admin_operation_log` VALUES (245, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:03:44', '2024-02-21 20:03:44');
INSERT INTO `admin_operation_log` VALUES (246, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:03:45', '2024-02-21 20:03:45');
INSERT INTO `admin_operation_log` VALUES (247, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:03:45', '2024-02-21 20:03:45');
INSERT INTO `admin_operation_log` VALUES (248, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:03:46', '2024-02-21 20:03:46');
INSERT INTO `admin_operation_log` VALUES (249, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:03:47', '2024-02-21 20:03:47');
INSERT INTO `admin_operation_log` VALUES (250, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:03:47', '2024-02-21 20:03:47');
INSERT INTO `admin_operation_log` VALUES (251, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:03:48', '2024-02-21 20:03:48');
INSERT INTO `admin_operation_log` VALUES (252, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:03:52', '2024-02-21 20:03:52');
INSERT INTO `admin_operation_log` VALUES (253, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-02-21 20:39:30', '2024-02-21 20:39:30');
INSERT INTO `admin_operation_log` VALUES (254, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:39:30', '2024-02-21 20:39:30');
INSERT INTO `admin_operation_log` VALUES (255, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:40:14', '2024-02-21 20:40:14');
INSERT INTO `admin_operation_log` VALUES (256, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:41:06', '2024-02-21 20:41:06');
INSERT INTO `admin_operation_log` VALUES (257, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:41:07', '2024-02-21 20:41:07');
INSERT INTO `admin_operation_log` VALUES (258, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:42:56', '2024-02-21 20:42:56');
INSERT INTO `admin_operation_log` VALUES (259, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:43:03', '2024-02-21 20:43:03');
INSERT INTO `admin_operation_log` VALUES (260, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:43:20', '2024-02-21 20:43:20');
INSERT INTO `admin_operation_log` VALUES (261, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:43:33', '2024-02-21 20:43:33');
INSERT INTO `admin_operation_log` VALUES (262, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:43:36', '2024-02-21 20:43:36');
INSERT INTO `admin_operation_log` VALUES (263, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:43:56', '2024-02-21 20:43:56');
INSERT INTO `admin_operation_log` VALUES (264, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:43:57', '2024-02-21 20:43:57');
INSERT INTO `admin_operation_log` VALUES (265, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:44:15', '2024-02-21 20:44:15');
INSERT INTO `admin_operation_log` VALUES (266, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:44:20', '2024-02-21 20:44:20');
INSERT INTO `admin_operation_log` VALUES (267, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:44:27', '2024-02-21 20:44:27');
INSERT INTO `admin_operation_log` VALUES (268, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:44:45', '2024-02-21 20:44:45');
INSERT INTO `admin_operation_log` VALUES (269, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:45:35', '2024-02-21 20:45:35');
INSERT INTO `admin_operation_log` VALUES (270, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:45:41', '2024-02-21 20:45:41');
INSERT INTO `admin_operation_log` VALUES (271, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:47:26', '2024-02-21 20:47:26');
INSERT INTO `admin_operation_log` VALUES (272, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:47:29', '2024-02-21 20:47:29');
INSERT INTO `admin_operation_log` VALUES (273, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:47:46', '2024-02-21 20:47:46');
INSERT INTO `admin_operation_log` VALUES (274, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:48:02', '2024-02-21 20:48:02');
INSERT INTO `admin_operation_log` VALUES (275, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:48:20', '2024-02-21 20:48:20');
INSERT INTO `admin_operation_log` VALUES (276, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 20:48:22', '2024-02-21 20:48:22');
INSERT INTO `admin_operation_log` VALUES (277, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:48:28', '2024-02-21 20:48:28');
INSERT INTO `admin_operation_log` VALUES (278, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:48:29', '2024-02-21 20:48:29');
INSERT INTO `admin_operation_log` VALUES (279, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:49:00', '2024-02-21 20:49:00');
INSERT INTO `admin_operation_log` VALUES (280, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:49:05', '2024-02-21 20:49:05');
INSERT INTO `admin_operation_log` VALUES (281, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:49:10', '2024-02-21 20:49:10');
INSERT INTO `admin_operation_log` VALUES (282, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:49:15', '2024-02-21 20:49:15');
INSERT INTO `admin_operation_log` VALUES (283, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:49:28', '2024-02-21 20:49:28');
INSERT INTO `admin_operation_log` VALUES (284, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:49:28', '2024-02-21 20:49:28');
INSERT INTO `admin_operation_log` VALUES (285, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:49:29', '2024-02-21 20:49:29');
INSERT INTO `admin_operation_log` VALUES (286, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:49:30', '2024-02-21 20:49:30');
INSERT INTO `admin_operation_log` VALUES (287, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:49:30', '2024-02-21 20:49:30');
INSERT INTO `admin_operation_log` VALUES (288, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:49:32', '2024-02-21 20:49:32');
INSERT INTO `admin_operation_log` VALUES (289, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:49:34', '2024-02-21 20:49:34');
INSERT INTO `admin_operation_log` VALUES (290, 1, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:49:59', '2024-02-21 20:49:59');
INSERT INTO `admin_operation_log` VALUES (291, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:50:00', '2024-02-21 20:50:00');
INSERT INTO `admin_operation_log` VALUES (292, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:50:01', '2024-02-21 20:50:01');
INSERT INTO `admin_operation_log` VALUES (293, 1, 'admin/order-models/7', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:50:15', '2024-02-21 20:50:15');
INSERT INTO `admin_operation_log` VALUES (294, 1, 'admin/order-models/7', 'GET', '127.0.0.1', '[]', '2024-02-21 20:50:55', '2024-02-21 20:50:55');
INSERT INTO `admin_operation_log` VALUES (295, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:50:58', '2024-02-21 20:50:58');
INSERT INTO `admin_operation_log` VALUES (296, 1, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:50:58', '2024-02-21 20:50:58');
INSERT INTO `admin_operation_log` VALUES (297, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:51:04', '2024-02-21 20:51:04');
INSERT INTO `admin_operation_log` VALUES (298, 1, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:51:09', '2024-02-21 20:51:09');
INSERT INTO `admin_operation_log` VALUES (299, 1, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:51:22', '2024-02-21 20:51:22');
INSERT INTO `admin_operation_log` VALUES (300, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:51:23', '2024-02-21 20:51:23');
INSERT INTO `admin_operation_log` VALUES (301, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:51:33', '2024-02-21 20:51:33');
INSERT INTO `admin_operation_log` VALUES (302, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:51:41', '2024-02-21 20:51:41');
INSERT INTO `admin_operation_log` VALUES (303, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:52:42', '2024-02-21 20:52:42');
INSERT INTO `admin_operation_log` VALUES (304, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:53:04', '2024-02-21 20:53:04');
INSERT INTO `admin_operation_log` VALUES (305, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:53:20', '2024-02-21 20:53:20');
INSERT INTO `admin_operation_log` VALUES (306, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:53:32', '2024-02-21 20:53:32');
INSERT INTO `admin_operation_log` VALUES (307, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:53:34', '2024-02-21 20:53:34');
INSERT INTO `admin_operation_log` VALUES (308, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:53:34', '2024-02-21 20:53:34');
INSERT INTO `admin_operation_log` VALUES (309, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:53:34', '2024-02-21 20:53:34');
INSERT INTO `admin_operation_log` VALUES (310, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:53:34', '2024-02-21 20:53:34');
INSERT INTO `admin_operation_log` VALUES (311, 1, 'admin/return-models/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:53:35', '2024-02-21 20:53:35');
INSERT INTO `admin_operation_log` VALUES (312, 1, 'admin/return-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 20:57:02', '2024-02-21 20:57:02');
INSERT INTO `admin_operation_log` VALUES (313, 1, 'admin/return-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 20:57:03', '2024-02-21 20:57:03');
INSERT INTO `admin_operation_log` VALUES (314, 1, 'admin/return-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 20:57:04', '2024-02-21 20:57:04');
INSERT INTO `admin_operation_log` VALUES (315, 1, 'admin/return-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 20:57:42', '2024-02-21 20:57:42');
INSERT INTO `admin_operation_log` VALUES (316, 1, 'admin/return-models', 'POST', '127.0.0.1', '{\"username\":\"\\u8d27\\u7528\\u6237\\u59d3\\u540d\",\"phone\":\"12321424242\",\"price\":\"2232\",\"number\":\"2323242424242424242\",\"returnGoods\":{\"new_1\":{\"goods_id\":\"2\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"goods_id\":\"1\",\"id\":null,\"_remove_\":\"0\"},\"new_3\":{\"goods_id\":\"3\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"8xhSznMzrrgjInCotk9iJ7Ni8wKJMuEvxvSdFOXy\"}', '2024-02-21 20:58:02', '2024-02-21 20:58:02');
INSERT INTO `admin_operation_log` VALUES (317, 1, 'admin/return-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 20:58:02', '2024-02-21 20:58:02');
INSERT INTO `admin_operation_log` VALUES (318, 1, 'admin/return-models', 'POST', '127.0.0.1', '{\"username\":\"\\u8d27\\u7528\\u6237\\u59d3\\u540d\",\"phone\":\"12321424242\",\"price\":\"2232\",\"number\":\"2323242424242424242\",\"returnGoods\":{\"new___LA_KEY__\":{\"goods_id\":\"3\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"8xhSznMzrrgjInCotk9iJ7Ni8wKJMuEvxvSdFOXy\"}', '2024-02-21 20:58:22', '2024-02-21 20:58:22');
INSERT INTO `admin_operation_log` VALUES (319, 1, 'admin/return-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 20:58:22', '2024-02-21 20:58:22');
INSERT INTO `admin_operation_log` VALUES (320, 1, 'admin/return-models', 'POST', '127.0.0.1', '{\"username\":\"\\u8d27\\u7528\\u6237\\u59d3\\u540d\",\"phone\":\"12321424242\",\"price\":\"2232\",\"number\":\"2323242424242424242\",\"returnGoods\":{\"new___LA_KEY__\":{\"goods_id\":\"3\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"8xhSznMzrrgjInCotk9iJ7Ni8wKJMuEvxvSdFOXy\"}', '2024-02-21 20:58:35', '2024-02-21 20:58:35');
INSERT INTO `admin_operation_log` VALUES (321, 1, 'admin/return-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 20:58:35', '2024-02-21 20:58:35');
INSERT INTO `admin_operation_log` VALUES (322, 1, 'admin/return-models', 'POST', '127.0.0.1', '{\"username\":\"\\u8d27\\u7528\\u6237\\u59d3\\u540d\",\"phone\":\"12321424242\",\"price\":\"2232\",\"number\":\"2323242424242424242\",\"returnGoods\":{\"new___LA_KEY__\":{\"goods_id\":\"3\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"8xhSznMzrrgjInCotk9iJ7Ni8wKJMuEvxvSdFOXy\"}', '2024-02-21 20:58:50', '2024-02-21 20:58:50');
INSERT INTO `admin_operation_log` VALUES (323, 1, 'admin/return-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 20:58:50', '2024-02-21 20:58:50');
INSERT INTO `admin_operation_log` VALUES (324, 1, 'admin/return-models', 'POST', '127.0.0.1', '{\"username\":\"\\u8d27\\u7528\\u6237\\u59d3\\u540d\",\"phone\":\"12321424242\",\"price\":\"2232\",\"number\":\"2323242424242424242\",\"returnGoods\":{\"new___LA_KEY__\":{\"goods_id\":\"3\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"8xhSznMzrrgjInCotk9iJ7Ni8wKJMuEvxvSdFOXy\"}', '2024-02-21 20:59:10', '2024-02-21 20:59:10');
INSERT INTO `admin_operation_log` VALUES (325, 1, 'admin/return-models/create', 'GET', '127.0.0.1', '[]', '2024-02-21 20:59:10', '2024-02-21 20:59:10');
INSERT INTO `admin_operation_log` VALUES (326, 1, 'admin/return-models', 'POST', '127.0.0.1', '{\"username\":\"\\u8d27\\u7528\\u6237\\u59d3\\u540d\",\"phone\":\"12321424242\",\"price\":\"2232\",\"number\":\"2323242424242424242\",\"returnGoods\":{\"new___LA_KEY__\":{\"goods_id\":\"3\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"8xhSznMzrrgjInCotk9iJ7Ni8wKJMuEvxvSdFOXy\"}', '2024-02-21 20:59:21', '2024-02-21 20:59:21');
INSERT INTO `admin_operation_log` VALUES (327, 1, 'admin/return-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:59:21', '2024-02-21 20:59:21');
INSERT INTO `admin_operation_log` VALUES (328, 1, 'admin/return-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:59:22', '2024-02-21 20:59:22');
INSERT INTO `admin_operation_log` VALUES (329, 1, 'admin/return-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:59:23', '2024-02-21 20:59:23');
INSERT INTO `admin_operation_log` VALUES (330, 1, 'admin/return-models/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:59:24', '2024-02-21 20:59:24');
INSERT INTO `admin_operation_log` VALUES (331, 1, 'admin/return-models', 'POST', '127.0.0.1', '{\"username\":\"fqwfqw\",\"phone\":\"12312412421\",\"price\":\"22\",\"number\":\"2323242424242424242\",\"returnGoods\":{\"new_1\":{\"goods_id\":\"1\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"goods_id\":\"2\",\"id\":null,\"_remove_\":\"0\"},\"new_3\":{\"goods_id\":\"3\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"8xhSznMzrrgjInCotk9iJ7Ni8wKJMuEvxvSdFOXy\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/return-models\"}', '2024-02-21 20:59:34', '2024-02-21 20:59:34');
INSERT INTO `admin_operation_log` VALUES (332, 1, 'admin/return-models', 'GET', '127.0.0.1', '[]', '2024-02-21 20:59:34', '2024-02-21 20:59:34');
INSERT INTO `admin_operation_log` VALUES (333, 1, 'admin/return-models/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 20:59:58', '2024-02-21 20:59:58');
INSERT INTO `admin_operation_log` VALUES (334, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:00:00', '2024-02-21 21:00:00');
INSERT INTO `admin_operation_log` VALUES (335, 1, 'admin/return-models/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:00:03', '2024-02-21 21:00:03');
INSERT INTO `admin_operation_log` VALUES (336, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:00:05', '2024-02-21 21:00:05');
INSERT INTO `admin_operation_log` VALUES (337, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:05:45', '2024-02-21 21:05:45');
INSERT INTO `admin_operation_log` VALUES (338, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-02-21 21:05:53', '2024-02-21 21:05:53');
INSERT INTO `admin_operation_log` VALUES (339, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 21:05:53', '2024-02-21 21:05:53');
INSERT INTO `admin_operation_log` VALUES (340, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:08:21', '2024-02-21 21:08:21');
INSERT INTO `admin_operation_log` VALUES (341, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:08:51', '2024-02-21 21:08:51');
INSERT INTO `admin_operation_log` VALUES (342, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:09:05', '2024-02-21 21:09:05');
INSERT INTO `admin_operation_log` VALUES (343, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:09:07', '2024-02-21 21:09:07');
INSERT INTO `admin_operation_log` VALUES (344, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:09:32', '2024-02-21 21:09:32');
INSERT INTO `admin_operation_log` VALUES (345, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:09:34', '2024-02-21 21:09:34');
INSERT INTO `admin_operation_log` VALUES (346, 1, 'admin/return-models/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:09:36', '2024-02-21 21:09:36');
INSERT INTO `admin_operation_log` VALUES (347, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:09:41', '2024-02-21 21:09:41');
INSERT INTO `admin_operation_log` VALUES (348, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:09:43', '2024-02-21 21:09:43');
INSERT INTO `admin_operation_log` VALUES (349, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:09:57', '2024-02-21 21:09:57');
INSERT INTO `admin_operation_log` VALUES (350, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:10:08', '2024-02-21 21:10:08');
INSERT INTO `admin_operation_log` VALUES (351, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:10:11', '2024-02-21 21:10:11');
INSERT INTO `admin_operation_log` VALUES (352, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:10:12', '2024-02-21 21:10:12');
INSERT INTO `admin_operation_log` VALUES (353, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:10:12', '2024-02-21 21:10:12');
INSERT INTO `admin_operation_log` VALUES (354, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:10:12', '2024-02-21 21:10:12');
INSERT INTO `admin_operation_log` VALUES (355, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:10:18', '2024-02-21 21:10:18');
INSERT INTO `admin_operation_log` VALUES (356, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:10:19', '2024-02-21 21:10:19');
INSERT INTO `admin_operation_log` VALUES (357, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:11:11', '2024-02-21 21:11:11');
INSERT INTO `admin_operation_log` VALUES (358, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:11:31', '2024-02-21 21:11:31');
INSERT INTO `admin_operation_log` VALUES (359, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:11:34', '2024-02-21 21:11:34');
INSERT INTO `admin_operation_log` VALUES (360, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:12:02', '2024-02-21 21:12:02');
INSERT INTO `admin_operation_log` VALUES (361, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:12:22', '2024-02-21 21:12:22');
INSERT INTO `admin_operation_log` VALUES (362, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:12:25', '2024-02-21 21:12:25');
INSERT INTO `admin_operation_log` VALUES (363, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:12:40', '2024-02-21 21:12:40');
INSERT INTO `admin_operation_log` VALUES (364, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:12:41', '2024-02-21 21:12:41');
INSERT INTO `admin_operation_log` VALUES (365, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:12:57', '2024-02-21 21:12:57');
INSERT INTO `admin_operation_log` VALUES (366, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:13:02', '2024-02-21 21:13:02');
INSERT INTO `admin_operation_log` VALUES (367, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:13:04', '2024-02-21 21:13:04');
INSERT INTO `admin_operation_log` VALUES (368, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:13:45', '2024-02-21 21:13:45');
INSERT INTO `admin_operation_log` VALUES (369, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:13:55', '2024-02-21 21:13:55');
INSERT INTO `admin_operation_log` VALUES (370, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:14:18', '2024-02-21 21:14:18');
INSERT INTO `admin_operation_log` VALUES (371, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:14:20', '2024-02-21 21:14:20');
INSERT INTO `admin_operation_log` VALUES (372, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:14:28', '2024-02-21 21:14:28');
INSERT INTO `admin_operation_log` VALUES (373, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:14:38', '2024-02-21 21:14:38');
INSERT INTO `admin_operation_log` VALUES (374, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:14:48', '2024-02-21 21:14:48');
INSERT INTO `admin_operation_log` VALUES (375, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:15:03', '2024-02-21 21:15:03');
INSERT INTO `admin_operation_log` VALUES (376, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:15:23', '2024-02-21 21:15:23');
INSERT INTO `admin_operation_log` VALUES (377, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:17:12', '2024-02-21 21:17:12');
INSERT INTO `admin_operation_log` VALUES (378, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:17:18', '2024-02-21 21:17:18');
INSERT INTO `admin_operation_log` VALUES (379, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:17:25', '2024-02-21 21:17:25');
INSERT INTO `admin_operation_log` VALUES (380, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:17:45', '2024-02-21 21:17:45');
INSERT INTO `admin_operation_log` VALUES (381, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:17:59', '2024-02-21 21:17:59');
INSERT INTO `admin_operation_log` VALUES (382, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:19:54', '2024-02-21 21:19:54');
INSERT INTO `admin_operation_log` VALUES (383, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:20:07', '2024-02-21 21:20:07');
INSERT INTO `admin_operation_log` VALUES (384, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:20:08', '2024-02-21 21:20:08');
INSERT INTO `admin_operation_log` VALUES (385, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:20:08', '2024-02-21 21:20:08');
INSERT INTO `admin_operation_log` VALUES (386, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:20:08', '2024-02-21 21:20:08');
INSERT INTO `admin_operation_log` VALUES (387, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:20:09', '2024-02-21 21:20:09');
INSERT INTO `admin_operation_log` VALUES (388, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:20:20', '2024-02-21 21:20:20');
INSERT INTO `admin_operation_log` VALUES (389, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:20:21', '2024-02-21 21:20:21');
INSERT INTO `admin_operation_log` VALUES (390, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:20:21', '2024-02-21 21:20:21');
INSERT INTO `admin_operation_log` VALUES (391, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:20:21', '2024-02-21 21:20:21');
INSERT INTO `admin_operation_log` VALUES (392, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:20:25', '2024-02-21 21:20:25');
INSERT INTO `admin_operation_log` VALUES (393, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:20:26', '2024-02-21 21:20:26');
INSERT INTO `admin_operation_log` VALUES (394, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:20:26', '2024-02-21 21:20:26');
INSERT INTO `admin_operation_log` VALUES (395, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:20:27', '2024-02-21 21:20:27');
INSERT INTO `admin_operation_log` VALUES (396, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:20:32', '2024-02-21 21:20:32');
INSERT INTO `admin_operation_log` VALUES (397, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:20:32', '2024-02-21 21:20:32');
INSERT INTO `admin_operation_log` VALUES (398, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:20:32', '2024-02-21 21:20:32');
INSERT INTO `admin_operation_log` VALUES (399, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:20:33', '2024-02-21 21:20:33');
INSERT INTO `admin_operation_log` VALUES (400, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:20:55', '2024-02-21 21:20:55');
INSERT INTO `admin_operation_log` VALUES (401, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:21:11', '2024-02-21 21:21:11');
INSERT INTO `admin_operation_log` VALUES (402, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:21:17', '2024-02-21 21:21:17');
INSERT INTO `admin_operation_log` VALUES (403, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:21:24', '2024-02-21 21:21:24');
INSERT INTO `admin_operation_log` VALUES (404, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:22:19', '2024-02-21 21:22:19');
INSERT INTO `admin_operation_log` VALUES (405, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:22:48', '2024-02-21 21:22:48');
INSERT INTO `admin_operation_log` VALUES (406, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:22:58', '2024-02-21 21:22:58');
INSERT INTO `admin_operation_log` VALUES (407, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:22:59', '2024-02-21 21:22:59');
INSERT INTO `admin_operation_log` VALUES (408, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:22:59', '2024-02-21 21:22:59');
INSERT INTO `admin_operation_log` VALUES (409, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:22:59', '2024-02-21 21:22:59');
INSERT INTO `admin_operation_log` VALUES (410, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:23:07', '2024-02-21 21:23:07');
INSERT INTO `admin_operation_log` VALUES (411, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:23:07', '2024-02-21 21:23:07');
INSERT INTO `admin_operation_log` VALUES (412, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:23:12', '2024-02-21 21:23:12');
INSERT INTO `admin_operation_log` VALUES (413, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:23:22', '2024-02-21 21:23:22');
INSERT INTO `admin_operation_log` VALUES (414, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:23:23', '2024-02-21 21:23:23');
INSERT INTO `admin_operation_log` VALUES (415, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:23:23', '2024-02-21 21:23:23');
INSERT INTO `admin_operation_log` VALUES (416, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:23:30', '2024-02-21 21:23:30');
INSERT INTO `admin_operation_log` VALUES (417, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:23:30', '2024-02-21 21:23:30');
INSERT INTO `admin_operation_log` VALUES (418, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:23:30', '2024-02-21 21:23:30');
INSERT INTO `admin_operation_log` VALUES (419, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:23:30', '2024-02-21 21:23:30');
INSERT INTO `admin_operation_log` VALUES (420, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:23:31', '2024-02-21 21:23:31');
INSERT INTO `admin_operation_log` VALUES (421, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:23:34', '2024-02-21 21:23:34');
INSERT INTO `admin_operation_log` VALUES (422, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:24:08', '2024-02-21 21:24:08');
INSERT INTO `admin_operation_log` VALUES (423, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:24:08', '2024-02-21 21:24:08');
INSERT INTO `admin_operation_log` VALUES (424, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:24:08', '2024-02-21 21:24:08');
INSERT INTO `admin_operation_log` VALUES (425, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:24:14', '2024-02-21 21:24:14');
INSERT INTO `admin_operation_log` VALUES (426, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:24:20', '2024-02-21 21:24:20');
INSERT INTO `admin_operation_log` VALUES (427, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:24:30', '2024-02-21 21:24:30');
INSERT INTO `admin_operation_log` VALUES (428, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:24:36', '2024-02-21 21:24:36');
INSERT INTO `admin_operation_log` VALUES (429, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:24:38', '2024-02-21 21:24:38');
INSERT INTO `admin_operation_log` VALUES (430, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:25:15', '2024-02-21 21:25:15');
INSERT INTO `admin_operation_log` VALUES (431, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:25:18', '2024-02-21 21:25:18');
INSERT INTO `admin_operation_log` VALUES (432, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:25:24', '2024-02-21 21:25:24');
INSERT INTO `admin_operation_log` VALUES (433, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:25:42', '2024-02-21 21:25:42');
INSERT INTO `admin_operation_log` VALUES (434, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:25:49', '2024-02-21 21:25:49');
INSERT INTO `admin_operation_log` VALUES (435, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:26:05', '2024-02-21 21:26:05');
INSERT INTO `admin_operation_log` VALUES (436, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:26:06', '2024-02-21 21:26:06');
INSERT INTO `admin_operation_log` VALUES (437, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:26:08', '2024-02-21 21:26:08');
INSERT INTO `admin_operation_log` VALUES (438, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:26:21', '2024-02-21 21:26:21');
INSERT INTO `admin_operation_log` VALUES (439, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:26:34', '2024-02-21 21:26:34');
INSERT INTO `admin_operation_log` VALUES (440, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:29:12', '2024-02-21 21:29:12');
INSERT INTO `admin_operation_log` VALUES (441, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:29:25', '2024-02-21 21:29:25');
INSERT INTO `admin_operation_log` VALUES (442, 1, 'admin/order-models/7', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:29:28', '2024-02-21 21:29:28');
INSERT INTO `admin_operation_log` VALUES (443, 1, 'admin/order-models/7', 'GET', '127.0.0.1', '[]', '2024-02-21 21:29:47', '2024-02-21 21:29:47');
INSERT INTO `admin_operation_log` VALUES (444, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:30:39', '2024-02-21 21:30:39');
INSERT INTO `admin_operation_log` VALUES (445, 1, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:30:40', '2024-02-21 21:30:40');
INSERT INTO `admin_operation_log` VALUES (446, 1, 'admin/order-models/7', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:30:41', '2024-02-21 21:30:41');
INSERT INTO `admin_operation_log` VALUES (447, 1, 'admin/order-models/7', 'GET', '127.0.0.1', '[]', '2024-02-21 21:30:42', '2024-02-21 21:30:42');
INSERT INTO `admin_operation_log` VALUES (448, 1, 'admin/order-models/7', 'GET', '127.0.0.1', '[]', '2024-02-21 21:31:00', '2024-02-21 21:31:00');
INSERT INTO `admin_operation_log` VALUES (449, 1, 'admin/order-models/7', 'GET', '127.0.0.1', '[]', '2024-02-21 21:31:00', '2024-02-21 21:31:00');
INSERT INTO `admin_operation_log` VALUES (450, 1, 'admin/order-models/7', 'GET', '127.0.0.1', '[]', '2024-02-21 21:31:00', '2024-02-21 21:31:00');
INSERT INTO `admin_operation_log` VALUES (451, 1, 'admin/order-models/7', 'GET', '127.0.0.1', '[]', '2024-02-21 21:31:00', '2024-02-21 21:31:00');
INSERT INTO `admin_operation_log` VALUES (452, 1, 'admin/order-models/7', 'GET', '127.0.0.1', '[]', '2024-02-21 21:31:19', '2024-02-21 21:31:19');
INSERT INTO `admin_operation_log` VALUES (453, 1, 'admin/order-models/7', 'GET', '127.0.0.1', '[]', '2024-02-21 21:31:19', '2024-02-21 21:31:19');
INSERT INTO `admin_operation_log` VALUES (454, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:31:22', '2024-02-21 21:31:22');
INSERT INTO `admin_operation_log` VALUES (455, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:31:23', '2024-02-21 21:31:23');
INSERT INTO `admin_operation_log` VALUES (456, 1, 'admin/order-models', 'POST', '127.0.0.1', '{\"username\":\"3123\",\"phone\":\"31231124412\",\"address\":\"4214124124124\",\"total\":\"2424242424\",\"orderGoods\":{\"new_1\":{\"goods_id\":\"1\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"goods_id\":\"2\",\"id\":null,\"_remove_\":\"0\"},\"new_3\":{\"goods_id\":\"3\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"8xhSznMzrrgjInCotk9iJ7Ni8wKJMuEvxvSdFOXy\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/order-models\"}', '2024-02-21 21:31:35', '2024-02-21 21:31:35');
INSERT INTO `admin_operation_log` VALUES (457, 1, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:31:35', '2024-02-21 21:31:35');
INSERT INTO `admin_operation_log` VALUES (458, 1, 'admin/order-models/8', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:31:38', '2024-02-21 21:31:38');
INSERT INTO `admin_operation_log` VALUES (459, 1, 'admin/order-models/8', 'GET', '127.0.0.1', '[]', '2024-02-21 21:31:45', '2024-02-21 21:31:45');
INSERT INTO `admin_operation_log` VALUES (460, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:31:51', '2024-02-21 21:31:51');
INSERT INTO `admin_operation_log` VALUES (461, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:31:52', '2024-02-21 21:31:52');
INSERT INTO `admin_operation_log` VALUES (462, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:31:52', '2024-02-21 21:31:52');
INSERT INTO `admin_operation_log` VALUES (463, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:31:53', '2024-02-21 21:31:53');
INSERT INTO `admin_operation_log` VALUES (464, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:31:57', '2024-02-21 21:31:57');
INSERT INTO `admin_operation_log` VALUES (465, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:32:24', '2024-02-21 21:32:24');
INSERT INTO `admin_operation_log` VALUES (466, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:32:25', '2024-02-21 21:32:25');
INSERT INTO `admin_operation_log` VALUES (467, 1, 'admin/goods-models/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:32:36', '2024-02-21 21:32:36');
INSERT INTO `admin_operation_log` VALUES (468, 1, 'admin/goods-models/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5546\\u54c1\\u540d\\u79f0\",\"supplier\":\"\\u4f9b\\u5e94\\u5546\\u4fe1\\u606f\",\"inventory_quantity\":\"2222\",\"type_id\":\"2\",\"status\":\"off\",\"price\":\"22\",\"_token\":\"8xhSznMzrrgjInCotk9iJ7Ni8wKJMuEvxvSdFOXy\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/goods-models\"}', '2024-02-21 21:32:38', '2024-02-21 21:32:38');
INSERT INTO `admin_operation_log` VALUES (469, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:32:38', '2024-02-21 21:32:38');
INSERT INTO `admin_operation_log` VALUES (470, 1, 'admin/goods-models/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:32:42', '2024-02-21 21:32:42');
INSERT INTO `admin_operation_log` VALUES (471, 1, 'admin/goods-models/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u5546\\u54c1\\u540d\\u79f0\",\"supplier\":\"\\u4f9b\\u5e94\\u5546\\u4fe1\\u606f\",\"inventory_quantity\":\"555\",\"type_id\":\"3\",\"status\":\"on\",\"price\":\"23\",\"_token\":\"8xhSznMzrrgjInCotk9iJ7Ni8wKJMuEvxvSdFOXy\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/goods-models\"}', '2024-02-21 21:32:44', '2024-02-21 21:32:44');
INSERT INTO `admin_operation_log` VALUES (472, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:32:44', '2024-02-21 21:32:44');
INSERT INTO `admin_operation_log` VALUES (473, 1, 'admin/return-models/5', 'GET', '127.0.0.1', '[]', '2024-02-21 21:34:30', '2024-02-21 21:34:30');
INSERT INTO `admin_operation_log` VALUES (474, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:34:30', '2024-02-21 21:34:30');
INSERT INTO `admin_operation_log` VALUES (475, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:34:31', '2024-02-21 21:34:31');
INSERT INTO `admin_operation_log` VALUES (476, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:34:31', '2024-02-21 21:34:31');
INSERT INTO `admin_operation_log` VALUES (477, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:34:37', '2024-02-21 21:34:37');
INSERT INTO `admin_operation_log` VALUES (478, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:34:52', '2024-02-21 21:34:52');
INSERT INTO `admin_operation_log` VALUES (479, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:34:52', '2024-02-21 21:34:52');
INSERT INTO `admin_operation_log` VALUES (480, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:35:24', '2024-02-21 21:35:24');
INSERT INTO `admin_operation_log` VALUES (481, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:35:30', '2024-02-21 21:35:30');
INSERT INTO `admin_operation_log` VALUES (482, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:36:50', '2024-02-21 21:36:50');
INSERT INTO `admin_operation_log` VALUES (483, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:36:51', '2024-02-21 21:36:51');
INSERT INTO `admin_operation_log` VALUES (484, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:36:51', '2024-02-21 21:36:51');
INSERT INTO `admin_operation_log` VALUES (485, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:36:51', '2024-02-21 21:36:51');
INSERT INTO `admin_operation_log` VALUES (486, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:36:51', '2024-02-21 21:36:51');
INSERT INTO `admin_operation_log` VALUES (487, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:37:22', '2024-02-21 21:37:22');
INSERT INTO `admin_operation_log` VALUES (488, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:37:54', '2024-02-21 21:37:54');
INSERT INTO `admin_operation_log` VALUES (489, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:37:54', '2024-02-21 21:37:54');
INSERT INTO `admin_operation_log` VALUES (490, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:37:55', '2024-02-21 21:37:55');
INSERT INTO `admin_operation_log` VALUES (491, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:37:55', '2024-02-21 21:37:55');
INSERT INTO `admin_operation_log` VALUES (492, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:37:55', '2024-02-21 21:37:55');
INSERT INTO `admin_operation_log` VALUES (493, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:37:56', '2024-02-21 21:37:56');
INSERT INTO `admin_operation_log` VALUES (494, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:37:57', '2024-02-21 21:37:57');
INSERT INTO `admin_operation_log` VALUES (495, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:38:00', '2024-02-21 21:38:00');
INSERT INTO `admin_operation_log` VALUES (496, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:38:04', '2024-02-21 21:38:04');
INSERT INTO `admin_operation_log` VALUES (497, 1, 'admin/goods-models/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:38:08', '2024-02-21 21:38:08');
INSERT INTO `admin_operation_log` VALUES (498, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:38:09', '2024-02-21 21:38:09');
INSERT INTO `admin_operation_log` VALUES (499, 1, 'admin/goods-models/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:38:12', '2024-02-21 21:38:12');
INSERT INTO `admin_operation_log` VALUES (500, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:38:13', '2024-02-21 21:38:13');
INSERT INTO `admin_operation_log` VALUES (501, 1, 'admin/goods-models/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:38:15', '2024-02-21 21:38:15');
INSERT INTO `admin_operation_log` VALUES (502, 1, 'admin/goods-models/1', 'GET', '127.0.0.1', '[]', '2024-02-21 21:38:51', '2024-02-21 21:38:51');
INSERT INTO `admin_operation_log` VALUES (503, 1, 'admin/goods-models/1', 'GET', '127.0.0.1', '[]', '2024-02-21 21:39:09', '2024-02-21 21:39:09');
INSERT INTO `admin_operation_log` VALUES (504, 1, 'admin/goods-models/1', 'GET', '127.0.0.1', '[]', '2024-02-21 21:39:19', '2024-02-21 21:39:19');
INSERT INTO `admin_operation_log` VALUES (505, 1, 'admin/goods-models/1', 'GET', '127.0.0.1', '[]', '2024-02-21 21:39:28', '2024-02-21 21:39:28');
INSERT INTO `admin_operation_log` VALUES (506, 1, 'admin/goods-models/1', 'GET', '127.0.0.1', '[]', '2024-02-21 21:39:28', '2024-02-21 21:39:28');
INSERT INTO `admin_operation_log` VALUES (507, 1, 'admin/goods-models/1', 'GET', '127.0.0.1', '[]', '2024-02-21 21:39:29', '2024-02-21 21:39:29');
INSERT INTO `admin_operation_log` VALUES (508, 1, 'admin/goods-models/1', 'GET', '127.0.0.1', '[]', '2024-02-21 21:39:29', '2024-02-21 21:39:29');
INSERT INTO `admin_operation_log` VALUES (509, 1, 'admin/goods-models/1', 'GET', '127.0.0.1', '[]', '2024-02-21 21:39:29', '2024-02-21 21:39:29');
INSERT INTO `admin_operation_log` VALUES (510, 1, 'admin/goods-models/1', 'GET', '127.0.0.1', '[]', '2024-02-21 21:39:38', '2024-02-21 21:39:38');
INSERT INTO `admin_operation_log` VALUES (511, 1, 'admin/goods-models/1', 'GET', '127.0.0.1', '[]', '2024-02-21 21:39:38', '2024-02-21 21:39:38');
INSERT INTO `admin_operation_log` VALUES (512, 1, 'admin/goods-models/1', 'GET', '127.0.0.1', '[]', '2024-02-21 21:39:38', '2024-02-21 21:39:38');
INSERT INTO `admin_operation_log` VALUES (513, 1, 'admin/goods-models/1', 'GET', '127.0.0.1', '[]', '2024-02-21 21:40:22', '2024-02-21 21:40:22');
INSERT INTO `admin_operation_log` VALUES (514, 1, 'admin/goods-models/1', 'GET', '127.0.0.1', '[]', '2024-02-21 21:40:23', '2024-02-21 21:40:23');
INSERT INTO `admin_operation_log` VALUES (515, 1, 'admin/goods-models/1', 'GET', '127.0.0.1', '[]', '2024-02-21 21:40:23', '2024-02-21 21:40:23');
INSERT INTO `admin_operation_log` VALUES (516, 1, 'admin/goods-models/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:40:26', '2024-02-21 21:40:26');
INSERT INTO `admin_operation_log` VALUES (517, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:40:27', '2024-02-21 21:40:27');
INSERT INTO `admin_operation_log` VALUES (518, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:40:39', '2024-02-21 21:40:39');
INSERT INTO `admin_operation_log` VALUES (519, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:40:40', '2024-02-21 21:40:40');
INSERT INTO `admin_operation_log` VALUES (520, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:40:41', '2024-02-21 21:40:41');
INSERT INTO `admin_operation_log` VALUES (521, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:40:41', '2024-02-21 21:40:41');
INSERT INTO `admin_operation_log` VALUES (522, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:40:41', '2024-02-21 21:40:41');
INSERT INTO `admin_operation_log` VALUES (523, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:40:41', '2024-02-21 21:40:41');
INSERT INTO `admin_operation_log` VALUES (524, 1, 'admin/goods-type-models/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:40:43', '2024-02-21 21:40:43');
INSERT INTO `admin_operation_log` VALUES (525, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:40:44', '2024-02-21 21:40:44');
INSERT INTO `admin_operation_log` VALUES (526, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:40:55', '2024-02-21 21:40:55');
INSERT INTO `admin_operation_log` VALUES (527, 1, 'admin/goods-type-models/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:40:57', '2024-02-21 21:40:57');
INSERT INTO `admin_operation_log` VALUES (528, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:40:59', '2024-02-21 21:40:59');
INSERT INTO `admin_operation_log` VALUES (529, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:41:00', '2024-02-21 21:41:00');
INSERT INTO `admin_operation_log` VALUES (530, 1, 'admin/return-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:41:11', '2024-02-21 21:41:11');
INSERT INTO `admin_operation_log` VALUES (531, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:41:12', '2024-02-21 21:41:12');
INSERT INTO `admin_operation_log` VALUES (532, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:41:12', '2024-02-21 21:41:12');
INSERT INTO `admin_operation_log` VALUES (533, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:41:13', '2024-02-21 21:41:13');
INSERT INTO `admin_operation_log` VALUES (534, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:41:13', '2024-02-21 21:41:13');
INSERT INTO `admin_operation_log` VALUES (535, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:41:14', '2024-02-21 21:41:14');
INSERT INTO `admin_operation_log` VALUES (536, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:41:15', '2024-02-21 21:41:15');
INSERT INTO `admin_operation_log` VALUES (537, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:41:15', '2024-02-21 21:41:15');
INSERT INTO `admin_operation_log` VALUES (538, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:41:16', '2024-02-21 21:41:16');
INSERT INTO `admin_operation_log` VALUES (539, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:41:16', '2024-02-21 21:41:16');
INSERT INTO `admin_operation_log` VALUES (540, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:41:16', '2024-02-21 21:41:16');
INSERT INTO `admin_operation_log` VALUES (541, 1, 'admin/return-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:41:22', '2024-02-21 21:41:22');
INSERT INTO `admin_operation_log` VALUES (542, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:41:22', '2024-02-21 21:41:22');
INSERT INTO `admin_operation_log` VALUES (543, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:41:23', '2024-02-21 21:41:23');
INSERT INTO `admin_operation_log` VALUES (544, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:41:23', '2024-02-21 21:41:23');
INSERT INTO `admin_operation_log` VALUES (545, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:41:24', '2024-02-21 21:41:24');
INSERT INTO `admin_operation_log` VALUES (546, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:41:25', '2024-02-21 21:41:25');
INSERT INTO `admin_operation_log` VALUES (547, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:41:25', '2024-02-21 21:41:25');
INSERT INTO `admin_operation_log` VALUES (548, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:41:39', '2024-02-21 21:41:39');
INSERT INTO `admin_operation_log` VALUES (549, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:41:39', '2024-02-21 21:41:39');
INSERT INTO `admin_operation_log` VALUES (550, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:44:22', '2024-02-21 21:44:22');
INSERT INTO `admin_operation_log` VALUES (551, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"id\":null,\"type_id\":[\"2\",\"3\"],\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:44:27', '2024-02-21 21:44:27');
INSERT INTO `admin_operation_log` VALUES (552, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"type_id\":[\"2\",\"3\"]}', '2024-02-21 21:44:28', '2024-02-21 21:44:28');
INSERT INTO `admin_operation_log` VALUES (553, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"type_id\":[\"1\"]}', '2024-02-21 21:44:34', '2024-02-21 21:44:34');
INSERT INTO `admin_operation_log` VALUES (554, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"type_id\":[\"2\"]}', '2024-02-21 21:44:37', '2024-02-21 21:44:37');
INSERT INTO `admin_operation_log` VALUES (555, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"type_id\":[\"3\"]}', '2024-02-21 21:44:40', '2024-02-21 21:44:40');
INSERT INTO `admin_operation_log` VALUES (556, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"type_id\":[\"1\",\"3\"]}', '2024-02-21 21:44:42', '2024-02-21 21:44:42');
INSERT INTO `admin_operation_log` VALUES (557, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:44:57', '2024-02-21 21:44:57');
INSERT INTO `admin_operation_log` VALUES (558, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:44:58', '2024-02-21 21:44:58');
INSERT INTO `admin_operation_log` VALUES (559, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:44:58', '2024-02-21 21:44:58');
INSERT INTO `admin_operation_log` VALUES (560, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:44:59', '2024-02-21 21:44:59');
INSERT INTO `admin_operation_log` VALUES (561, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:45:07', '2024-02-21 21:45:07');
INSERT INTO `admin_operation_log` VALUES (562, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:45:13', '2024-02-21 21:45:13');
INSERT INTO `admin_operation_log` VALUES (563, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:45:16', '2024-02-21 21:45:16');
INSERT INTO `admin_operation_log` VALUES (564, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:45:29', '2024-02-21 21:45:29');
INSERT INTO `admin_operation_log` VALUES (565, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:45:29', '2024-02-21 21:45:29');
INSERT INTO `admin_operation_log` VALUES (566, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:45:29', '2024-02-21 21:45:29');
INSERT INTO `admin_operation_log` VALUES (567, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:45:29', '2024-02-21 21:45:29');
INSERT INTO `admin_operation_log` VALUES (568, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:45:42', '2024-02-21 21:45:42');
INSERT INTO `admin_operation_log` VALUES (569, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 21:45:53', '2024-02-21 21:45:53');
INSERT INTO `admin_operation_log` VALUES (570, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:45:54', '2024-02-21 21:45:54');
INSERT INTO `admin_operation_log` VALUES (571, 1, 'admin/goods-models/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:45:56', '2024-02-21 21:45:56');
INSERT INTO `admin_operation_log` VALUES (572, 1, 'admin/goods-models', 'POST', '127.0.0.1', '{\"name\":\"\\u5546\\u54c1\\u540d\\u79f0\",\"supplier\":\"\\u4f9b\\u5e94\\u5546\\u4fe1\\u606f\",\"inventory_quantity\":\"22\",\"type_id\":\"2\",\"status\":\"on\",\"price\":\"2222\",\"_token\":\"sskHmgMa3SVN5frcOVfuLu0LrWWLWyVLGp49Vqt4\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/goods-models\"}', '2024-02-21 21:46:04', '2024-02-21 21:46:04');
INSERT INTO `admin_operation_log` VALUES (573, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:46:04', '2024-02-21 21:46:04');
INSERT INTO `admin_operation_log` VALUES (574, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:46:07', '2024-02-21 21:46:07');
INSERT INTO `admin_operation_log` VALUES (575, 1, 'admin/order-models/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:46:08', '2024-02-21 21:46:08');
INSERT INTO `admin_operation_log` VALUES (576, 1, 'admin/order-models', 'POST', '127.0.0.1', '{\"username\":\"\\u7528\\u6237\\u540d\\u79f0\",\"phone\":\"11213131313\",\"address\":\"\\u8054\\u7cfb\\u5730\\u5740\",\"total\":\"5544232323\",\"orderGoods\":{\"new_1\":{\"goods_id\":\"1\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"goods_id\":\"2\",\"id\":null,\"_remove_\":\"0\"},\"new_3\":{\"goods_id\":\"3\",\"id\":null,\"_remove_\":\"0\"},\"new_4\":{\"goods_id\":\"4\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"sskHmgMa3SVN5frcOVfuLu0LrWWLWyVLGp49Vqt4\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/order-models\"}', '2024-02-21 21:46:24', '2024-02-21 21:46:24');
INSERT INTO `admin_operation_log` VALUES (577, 1, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:46:24', '2024-02-21 21:46:24');
INSERT INTO `admin_operation_log` VALUES (578, 1, 'admin/order-models/9', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:46:27', '2024-02-21 21:46:27');
INSERT INTO `admin_operation_log` VALUES (579, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:46:29', '2024-02-21 21:46:29');
INSERT INTO `admin_operation_log` VALUES (580, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:46:30', '2024-02-21 21:46:30');
INSERT INTO `admin_operation_log` VALUES (581, 1, 'admin/goods-models/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:46:32', '2024-02-21 21:46:32');
INSERT INTO `admin_operation_log` VALUES (582, 1, 'admin/goods-models/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5546\\u54c1\\u540d\\u79f01\",\"supplier\":\"\\u4f9b\\u5e94\\u5546\\u4fe1\\u606f\",\"inventory_quantity\":\"2222\",\"type_id\":\"2\",\"status\":\"off\",\"price\":\"22\",\"_token\":\"sskHmgMa3SVN5frcOVfuLu0LrWWLWyVLGp49Vqt4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/goods-models\"}', '2024-02-21 21:46:34', '2024-02-21 21:46:34');
INSERT INTO `admin_operation_log` VALUES (583, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:46:34', '2024-02-21 21:46:34');
INSERT INTO `admin_operation_log` VALUES (584, 1, 'admin/goods-models/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:46:35', '2024-02-21 21:46:35');
INSERT INTO `admin_operation_log` VALUES (585, 1, 'admin/goods-models/2', 'PUT', '127.0.0.1', '{\"name\":\"\\u5546\\u54c1\\u540d\\u79f02\",\"supplier\":\"\\u4f9b\\u5e94\\u5546\\u4fe1\\u606f\",\"inventory_quantity\":\"222\",\"type_id\":\"2\",\"status\":\"off\",\"price\":\"22\",\"_token\":\"sskHmgMa3SVN5frcOVfuLu0LrWWLWyVLGp49Vqt4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/goods-models\"}', '2024-02-21 21:46:37', '2024-02-21 21:46:37');
INSERT INTO `admin_operation_log` VALUES (586, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:46:37', '2024-02-21 21:46:37');
INSERT INTO `admin_operation_log` VALUES (587, 1, 'admin/goods-models/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:46:39', '2024-02-21 21:46:39');
INSERT INTO `admin_operation_log` VALUES (588, 1, 'admin/goods-models/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u5546\\u54c1\\u540d\\u79f03\",\"supplier\":\"\\u4f9b\\u5e94\\u5546\\u4fe1\\u606f\",\"inventory_quantity\":\"555\",\"type_id\":\"3\",\"status\":\"on\",\"price\":\"23\",\"_token\":\"sskHmgMa3SVN5frcOVfuLu0LrWWLWyVLGp49Vqt4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/goods-models\"}', '2024-02-21 21:46:41', '2024-02-21 21:46:41');
INSERT INTO `admin_operation_log` VALUES (589, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:46:41', '2024-02-21 21:46:41');
INSERT INTO `admin_operation_log` VALUES (590, 1, 'admin/goods-models/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:46:42', '2024-02-21 21:46:42');
INSERT INTO `admin_operation_log` VALUES (591, 1, 'admin/goods-models/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u5546\\u54c1\\u540d\\u79f04\",\"supplier\":\"\\u4f9b\\u5e94\\u5546\\u4fe1\\u606f\",\"inventory_quantity\":\"22\",\"type_id\":\"2\",\"status\":\"on\",\"price\":\"2222\",\"_token\":\"sskHmgMa3SVN5frcOVfuLu0LrWWLWyVLGp49Vqt4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/goods-models\"}', '2024-02-21 21:46:46', '2024-02-21 21:46:46');
INSERT INTO `admin_operation_log` VALUES (592, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:46:46', '2024-02-21 21:46:46');
INSERT INTO `admin_operation_log` VALUES (593, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:46:46', '2024-02-21 21:46:46');
INSERT INTO `admin_operation_log` VALUES (594, 1, 'admin/order-models/9', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:46:48', '2024-02-21 21:46:48');
INSERT INTO `admin_operation_log` VALUES (595, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:46:51', '2024-02-21 21:46:51');
INSERT INTO `admin_operation_log` VALUES (596, 1, 'admin/return-models/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:46:54', '2024-02-21 21:46:54');
INSERT INTO `admin_operation_log` VALUES (597, 1, 'admin/return-models', 'POST', '127.0.0.1', '{\"username\":\"\\u9000\\u8d27\\u7528\\u6237\\u59d3\\u540d1\",\"phone\":\"12121212121\",\"price\":\"333\",\"number\":\"2323242424242424242\",\"returnGoods\":{\"new_1\":{\"goods_id\":\"1\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"goods_id\":\"2\",\"id\":null,\"_remove_\":\"0\"},\"new_3\":{\"goods_id\":\"3\",\"id\":null,\"_remove_\":\"0\"},\"new_4\":{\"goods_id\":\"4\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"sskHmgMa3SVN5frcOVfuLu0LrWWLWyVLGp49Vqt4\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/return-models\"}', '2024-02-21 21:47:08', '2024-02-21 21:47:08');
INSERT INTO `admin_operation_log` VALUES (598, 1, 'admin/return-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:47:08', '2024-02-21 21:47:08');
INSERT INTO `admin_operation_log` VALUES (599, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:47:11', '2024-02-21 21:47:11');
INSERT INTO `admin_operation_log` VALUES (600, 1, 'admin/goods-type-models/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:47:13', '2024-02-21 21:47:13');
INSERT INTO `admin_operation_log` VALUES (601, 1, 'admin/goods-type-models', 'POST', '127.0.0.1', '{\"name\":\"\\u5206\\u7c7b\\u540d\\u79f02\",\"_token\":\"sskHmgMa3SVN5frcOVfuLu0LrWWLWyVLGp49Vqt4\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/goods-type-models\"}', '2024-02-21 21:47:17', '2024-02-21 21:47:17');
INSERT INTO `admin_operation_log` VALUES (602, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:47:17', '2024-02-21 21:47:17');
INSERT INTO `admin_operation_log` VALUES (603, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:47:19', '2024-02-21 21:47:19');
INSERT INTO `admin_operation_log` VALUES (604, 1, 'admin/goods-models/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:47:20', '2024-02-21 21:47:20');
INSERT INTO `admin_operation_log` VALUES (605, 1, 'admin/goods-models', 'POST', '127.0.0.1', '{\"name\":\"\\u5546\\u54c1\\u540d\\u79f06\",\"supplier\":\"\\u4f9b\\u5e94\\u5546\\u4fe1\\u606f\",\"inventory_quantity\":\"33\",\"type_id\":\"4\",\"status\":\"on\",\"price\":null,\"_token\":\"sskHmgMa3SVN5frcOVfuLu0LrWWLWyVLGp49Vqt4\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/goods-models\"}', '2024-02-21 21:47:29', '2024-02-21 21:47:29');
INSERT INTO `admin_operation_log` VALUES (606, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 21:47:29', '2024-02-21 21:47:29');
INSERT INTO `admin_operation_log` VALUES (607, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:47:37', '2024-02-21 21:47:37');
INSERT INTO `admin_operation_log` VALUES (608, 9, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 21:48:49', '2024-02-21 21:48:49');
INSERT INTO `admin_operation_log` VALUES (609, 9, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:49:32', '2024-02-21 21:49:32');
INSERT INTO `admin_operation_log` VALUES (610, 10, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 21:50:08', '2024-02-21 21:50:08');
INSERT INTO `admin_operation_log` VALUES (611, 10, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 21:50:39', '2024-02-21 21:50:39');
INSERT INTO `admin_operation_log` VALUES (612, 10, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:50:41', '2024-02-21 21:50:41');
INSERT INTO `admin_operation_log` VALUES (613, 12, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 21:51:04', '2024-02-21 21:51:04');
INSERT INTO `admin_operation_log` VALUES (614, 12, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:06', '2024-02-21 21:51:06');
INSERT INTO `admin_operation_log` VALUES (615, 12, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:06', '2024-02-21 21:51:06');
INSERT INTO `admin_operation_log` VALUES (616, 12, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:07', '2024-02-21 21:51:07');
INSERT INTO `admin_operation_log` VALUES (617, 12, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:07', '2024-02-21 21:51:07');
INSERT INTO `admin_operation_log` VALUES (618, 12, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:08', '2024-02-21 21:51:08');
INSERT INTO `admin_operation_log` VALUES (619, 12, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:08', '2024-02-21 21:51:08');
INSERT INTO `admin_operation_log` VALUES (620, 12, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:08', '2024-02-21 21:51:08');
INSERT INTO `admin_operation_log` VALUES (621, 12, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:08', '2024-02-21 21:51:08');
INSERT INTO `admin_operation_log` VALUES (622, 12, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:09', '2024-02-21 21:51:09');
INSERT INTO `admin_operation_log` VALUES (623, 12, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:09', '2024-02-21 21:51:09');
INSERT INTO `admin_operation_log` VALUES (624, 12, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:09', '2024-02-21 21:51:09');
INSERT INTO `admin_operation_log` VALUES (625, 12, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:10', '2024-02-21 21:51:10');
INSERT INTO `admin_operation_log` VALUES (626, 12, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:10', '2024-02-21 21:51:10');
INSERT INTO `admin_operation_log` VALUES (627, 12, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:11', '2024-02-21 21:51:11');
INSERT INTO `admin_operation_log` VALUES (628, 12, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:11', '2024-02-21 21:51:11');
INSERT INTO `admin_operation_log` VALUES (629, 12, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:11', '2024-02-21 21:51:11');
INSERT INTO `admin_operation_log` VALUES (630, 12, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:27', '2024-02-21 21:51:27');
INSERT INTO `admin_operation_log` VALUES (631, 12, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:27', '2024-02-21 21:51:27');
INSERT INTO `admin_operation_log` VALUES (632, 12, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:28', '2024-02-21 21:51:28');
INSERT INTO `admin_operation_log` VALUES (633, 12, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:28', '2024-02-21 21:51:28');
INSERT INTO `admin_operation_log` VALUES (634, 12, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:29', '2024-02-21 21:51:29');
INSERT INTO `admin_operation_log` VALUES (635, 12, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:29', '2024-02-21 21:51:29');
INSERT INTO `admin_operation_log` VALUES (636, 12, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:29', '2024-02-21 21:51:29');
INSERT INTO `admin_operation_log` VALUES (637, 12, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:44', '2024-02-21 21:51:44');
INSERT INTO `admin_operation_log` VALUES (638, 12, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:44', '2024-02-21 21:51:44');
INSERT INTO `admin_operation_log` VALUES (639, 12, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:45', '2024-02-21 21:51:45');
INSERT INTO `admin_operation_log` VALUES (640, 12, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:45', '2024-02-21 21:51:45');
INSERT INTO `admin_operation_log` VALUES (641, 12, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:45', '2024-02-21 21:51:45');
INSERT INTO `admin_operation_log` VALUES (642, 12, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:46', '2024-02-21 21:51:46');
INSERT INTO `admin_operation_log` VALUES (643, 12, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:49', '2024-02-21 21:51:49');
INSERT INTO `admin_operation_log` VALUES (644, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 21:51:52', '2024-02-21 21:51:52');
INSERT INTO `admin_operation_log` VALUES (645, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:54', '2024-02-21 21:51:54');
INSERT INTO `admin_operation_log` VALUES (646, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:57', '2024-02-21 21:51:57');
INSERT INTO `admin_operation_log` VALUES (647, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:57', '2024-02-21 21:51:57');
INSERT INTO `admin_operation_log` VALUES (648, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:51:58', '2024-02-21 21:51:58');
INSERT INTO `admin_operation_log` VALUES (649, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:52:03', '2024-02-21 21:52:03');
INSERT INTO `admin_operation_log` VALUES (650, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:52:11', '2024-02-21 21:52:11');
INSERT INTO `admin_operation_log` VALUES (651, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:52:13', '2024-02-21 21:52:13');
INSERT INTO `admin_operation_log` VALUES (652, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:52:14', '2024-02-21 21:52:14');
INSERT INTO `admin_operation_log` VALUES (653, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:52:16', '2024-02-21 21:52:16');
INSERT INTO `admin_operation_log` VALUES (654, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:52:17', '2024-02-21 21:52:17');
INSERT INTO `admin_operation_log` VALUES (655, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:52:24', '2024-02-21 21:52:24');
INSERT INTO `admin_operation_log` VALUES (656, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:52:31', '2024-02-21 21:52:31');
INSERT INTO `admin_operation_log` VALUES (657, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:52:32', '2024-02-21 21:52:32');
INSERT INTO `admin_operation_log` VALUES (658, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:52:32', '2024-02-21 21:52:32');
INSERT INTO `admin_operation_log` VALUES (659, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:52:37', '2024-02-21 21:52:37');
INSERT INTO `admin_operation_log` VALUES (660, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:52:45', '2024-02-21 21:52:45');
INSERT INTO `admin_operation_log` VALUES (661, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:52:53', '2024-02-21 21:52:53');
INSERT INTO `admin_operation_log` VALUES (662, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:52:54', '2024-02-21 21:52:54');
INSERT INTO `admin_operation_log` VALUES (663, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:52:55', '2024-02-21 21:52:55');
INSERT INTO `admin_operation_log` VALUES (664, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:52:56', '2024-02-21 21:52:56');
INSERT INTO `admin_operation_log` VALUES (665, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:53:00', '2024-02-21 21:53:00');
INSERT INTO `admin_operation_log` VALUES (666, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"user\",\"name\":\"user\",\"permissions\":[\"1\",\"2\",\"3\",\"4\",\"5\",null],\"_token\":\"DpksMWwGe9c3YP9Qle9BLVyk8JNQfTcH2TOLdV4J\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/auth\\/roles\"}', '2024-02-21 21:53:22', '2024-02-21 21:53:22');
INSERT INTO `admin_operation_log` VALUES (667, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-02-21 21:53:22', '2024-02-21 21:53:22');
INSERT INTO `admin_operation_log` VALUES (668, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:53:35', '2024-02-21 21:53:35');
INSERT INTO `admin_operation_log` VALUES (669, 12, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 21:53:57', '2024-02-21 21:53:57');
INSERT INTO `admin_operation_log` VALUES (670, 12, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:53:58', '2024-02-21 21:53:58');
INSERT INTO `admin_operation_log` VALUES (671, 12, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:53:59', '2024-02-21 21:53:59');
INSERT INTO `admin_operation_log` VALUES (672, 12, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:53:59', '2024-02-21 21:53:59');
INSERT INTO `admin_operation_log` VALUES (673, 12, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:54:00', '2024-02-21 21:54:00');
INSERT INTO `admin_operation_log` VALUES (674, 12, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:54:00', '2024-02-21 21:54:00');
INSERT INTO `admin_operation_log` VALUES (675, 12, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:54:00', '2024-02-21 21:54:00');
INSERT INTO `admin_operation_log` VALUES (676, 12, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:54:01', '2024-02-21 21:54:01');
INSERT INTO `admin_operation_log` VALUES (677, 12, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:54:01', '2024-02-21 21:54:01');
INSERT INTO `admin_operation_log` VALUES (678, 12, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:54:01', '2024-02-21 21:54:01');
INSERT INTO `admin_operation_log` VALUES (679, 12, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:54:02', '2024-02-21 21:54:02');
INSERT INTO `admin_operation_log` VALUES (680, 12, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:54:04', '2024-02-21 21:54:04');
INSERT INTO `admin_operation_log` VALUES (681, 12, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:54:04', '2024-02-21 21:54:04');
INSERT INTO `admin_operation_log` VALUES (682, 12, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 21:54:04', '2024-02-21 21:54:04');
INSERT INTO `admin_operation_log` VALUES (683, 12, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-02-21 22:00:42', '2024-02-21 22:00:42');
INSERT INTO `admin_operation_log` VALUES (684, 12, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 22:00:42', '2024-02-21 22:00:42');
INSERT INTO `admin_operation_log` VALUES (685, 12, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:14:05', '2024-02-21 22:14:05');
INSERT INTO `admin_operation_log` VALUES (686, 12, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:14:05', '2024-02-21 22:14:05');
INSERT INTO `admin_operation_log` VALUES (687, 12, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:14:06', '2024-02-21 22:14:06');
INSERT INTO `admin_operation_log` VALUES (688, 12, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:14:06', '2024-02-21 22:14:06');
INSERT INTO `admin_operation_log` VALUES (689, 12, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:14:07', '2024-02-21 22:14:07');
INSERT INTO `admin_operation_log` VALUES (690, 12, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:14:11', '2024-02-21 22:14:11');
INSERT INTO `admin_operation_log` VALUES (691, 12, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:14:27', '2024-02-21 22:14:27');
INSERT INTO `admin_operation_log` VALUES (692, 12, 'admin/return-models/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:14:31', '2024-02-21 22:14:31');
INSERT INTO `admin_operation_log` VALUES (693, 12, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:14:33', '2024-02-21 22:14:33');
INSERT INTO `admin_operation_log` VALUES (694, 12, 'admin/return-models/6', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:14:35', '2024-02-21 22:14:35');
INSERT INTO `admin_operation_log` VALUES (695, 12, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:14:38', '2024-02-21 22:14:38');
INSERT INTO `admin_operation_log` VALUES (696, 12, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-02-21 22:32:01', '2024-02-21 22:32:01');
INSERT INTO `admin_operation_log` VALUES (697, 12, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 22:32:01', '2024-02-21 22:32:01');
INSERT INTO `admin_operation_log` VALUES (698, 12, 'admin/return-models', 'GET', '127.0.0.1', '[]', '2024-02-21 22:57:07', '2024-02-21 22:57:07');
INSERT INTO `admin_operation_log` VALUES (699, 12, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:57:08', '2024-02-21 22:57:08');
INSERT INTO `admin_operation_log` VALUES (700, 12, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:57:10', '2024-02-21 22:57:10');
INSERT INTO `admin_operation_log` VALUES (701, 12, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 22:57:53', '2024-02-21 22:57:53');
INSERT INTO `admin_operation_log` VALUES (702, 12, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 22:57:54', '2024-02-21 22:57:54');
INSERT INTO `admin_operation_log` VALUES (703, 12, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 22:58:05', '2024-02-21 22:58:05');
INSERT INTO `admin_operation_log` VALUES (704, 12, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:58:07', '2024-02-21 22:58:07');
INSERT INTO `admin_operation_log` VALUES (705, 12, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 22:58:17', '2024-02-21 22:58:17');
INSERT INTO `admin_operation_log` VALUES (706, 12, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 22:58:24', '2024-02-21 22:58:24');
INSERT INTO `admin_operation_log` VALUES (707, 12, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 22:58:32', '2024-02-21 22:58:32');
INSERT INTO `admin_operation_log` VALUES (708, 12, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:58:36', '2024-02-21 22:58:36');
INSERT INTO `admin_operation_log` VALUES (709, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-21 22:58:41', '2024-02-21 22:58:41');
INSERT INTO `admin_operation_log` VALUES (710, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:58:48', '2024-02-21 22:58:48');
INSERT INTO `admin_operation_log` VALUES (711, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:58:56', '2024-02-21 22:58:56');
INSERT INTO `admin_operation_log` VALUES (712, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Goods information\",\"icon\":\"fa-bars\",\"uri\":\"goods-models\",\"roles\":[null],\"permission\":null,\"_token\":\"tLDdieXWY1LDEs5jXaOHTwii6lwdcIzTspQJGOvH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/auth\\/menu\"}', '2024-02-21 22:59:15', '2024-02-21 22:59:15');
INSERT INTO `admin_operation_log` VALUES (713, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-21 22:59:16', '2024-02-21 22:59:16');
INSERT INTO `admin_operation_log` VALUES (714, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:59:19', '2024-02-21 22:59:19');
INSERT INTO `admin_operation_log` VALUES (715, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Order Information\",\"icon\":\"fa-bars\",\"uri\":\"order-models\",\"roles\":[null],\"permission\":null,\"_token\":\"tLDdieXWY1LDEs5jXaOHTwii6lwdcIzTspQJGOvH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/auth\\/menu\"}', '2024-02-21 22:59:26', '2024-02-21 22:59:26');
INSERT INTO `admin_operation_log` VALUES (716, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-21 22:59:26', '2024-02-21 22:59:26');
INSERT INTO `admin_operation_log` VALUES (717, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-21 22:59:27', '2024-02-21 22:59:27');
INSERT INTO `admin_operation_log` VALUES (718, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:59:28', '2024-02-21 22:59:28');
INSERT INTO `admin_operation_log` VALUES (719, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-21 22:59:39', '2024-02-21 22:59:39');
INSERT INTO `admin_operation_log` VALUES (720, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:59:42', '2024-02-21 22:59:42');
INSERT INTO `admin_operation_log` VALUES (721, 1, 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Refund management\",\"icon\":\"fa-bars\",\"uri\":\"return-models\",\"roles\":[null],\"permission\":null,\"_token\":\"tLDdieXWY1LDEs5jXaOHTwii6lwdcIzTspQJGOvH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/auth\\/menu\"}', '2024-02-21 22:59:44', '2024-02-21 22:59:44');
INSERT INTO `admin_operation_log` VALUES (722, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-21 22:59:44', '2024-02-21 22:59:44');
INSERT INTO `admin_operation_log` VALUES (723, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:59:46', '2024-02-21 22:59:46');
INSERT INTO `admin_operation_log` VALUES (724, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:59:50', '2024-02-21 22:59:50');
INSERT INTO `admin_operation_log` VALUES (725, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:59:51', '2024-02-21 22:59:51');
INSERT INTO `admin_operation_log` VALUES (726, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 22:59:54', '2024-02-21 22:59:54');
INSERT INTO `admin_operation_log` VALUES (727, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Product category\",\"icon\":\"fa-bars\",\"uri\":\"goods-type-models\",\"roles\":[null],\"permission\":null,\"_token\":\"tLDdieXWY1LDEs5jXaOHTwii6lwdcIzTspQJGOvH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/auth\\/menu\"}', '2024-02-21 23:00:03', '2024-02-21 23:00:03');
INSERT INTO `admin_operation_log` VALUES (728, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-21 23:00:03', '2024-02-21 23:00:03');
INSERT INTO `admin_operation_log` VALUES (729, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-21 23:00:04', '2024-02-21 23:00:04');
INSERT INTO `admin_operation_log` VALUES (730, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:00:05', '2024-02-21 23:00:05');
INSERT INTO `admin_operation_log` VALUES (731, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:00:06', '2024-02-21 23:00:06');
INSERT INTO `admin_operation_log` VALUES (732, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:00:11', '2024-02-21 23:00:11');
INSERT INTO `admin_operation_log` VALUES (733, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:00:18', '2024-02-21 23:00:18');
INSERT INTO `admin_operation_log` VALUES (734, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 23:00:35', '2024-02-21 23:00:35');
INSERT INTO `admin_operation_log` VALUES (735, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:00:43', '2024-02-21 23:00:43');
INSERT INTO `admin_operation_log` VALUES (736, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:00:46', '2024-02-21 23:00:46');
INSERT INTO `admin_operation_log` VALUES (737, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:00:48', '2024-02-21 23:00:48');
INSERT INTO `admin_operation_log` VALUES (738, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Goods category\",\"icon\":\"fa-bars\",\"uri\":\"goods-type-models\",\"roles\":[null],\"permission\":null,\"_token\":\"tLDdieXWY1LDEs5jXaOHTwii6lwdcIzTspQJGOvH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.c02544.com\\/admin\\/auth\\/menu\"}', '2024-02-21 23:00:51', '2024-02-21 23:00:51');
INSERT INTO `admin_operation_log` VALUES (739, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-21 23:00:51', '2024-02-21 23:00:51');
INSERT INTO `admin_operation_log` VALUES (740, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:00:52', '2024-02-21 23:00:52');
INSERT INTO `admin_operation_log` VALUES (741, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:00:58', '2024-02-21 23:00:58');
INSERT INTO `admin_operation_log` VALUES (742, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:01:02', '2024-02-21 23:01:02');
INSERT INTO `admin_operation_log` VALUES (743, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:01:02', '2024-02-21 23:01:02');
INSERT INTO `admin_operation_log` VALUES (744, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '[]', '2024-02-21 23:01:03', '2024-02-21 23:01:03');
INSERT INTO `admin_operation_log` VALUES (745, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:01:05', '2024-02-21 23:01:05');
INSERT INTO `admin_operation_log` VALUES (746, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:01:11', '2024-02-21 23:01:11');
INSERT INTO `admin_operation_log` VALUES (747, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:01:14', '2024-02-21 23:01:14');
INSERT INTO `admin_operation_log` VALUES (748, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '[]', '2024-02-21 23:01:19', '2024-02-21 23:01:19');
INSERT INTO `admin_operation_log` VALUES (749, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:01:24', '2024-02-21 23:01:24');
INSERT INTO `admin_operation_log` VALUES (750, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 23:05:36', '2024-02-21 23:05:36');
INSERT INTO `admin_operation_log` VALUES (751, 1, 'admin/goods-models/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:05:38', '2024-02-21 23:05:38');
INSERT INTO `admin_operation_log` VALUES (752, 1, 'admin/goods-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:05:40', '2024-02-21 23:05:40');
INSERT INTO `admin_operation_log` VALUES (753, 1, 'admin/goods-models', 'GET', '127.0.0.1', '[]', '2024-02-21 23:05:45', '2024-02-21 23:05:45');
INSERT INTO `admin_operation_log` VALUES (754, 1, 'admin/goods-models/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:05:47', '2024-02-21 23:05:47');
INSERT INTO `admin_operation_log` VALUES (755, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:05:52', '2024-02-21 23:05:52');
INSERT INTO `admin_operation_log` VALUES (756, 1, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 23:07:32', '2024-02-21 23:07:32');
INSERT INTO `admin_operation_log` VALUES (757, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:07:33', '2024-02-21 23:07:33');
INSERT INTO `admin_operation_log` VALUES (758, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:07:36', '2024-02-21 23:07:36');
INSERT INTO `admin_operation_log` VALUES (759, 1, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 23:07:58', '2024-02-21 23:07:58');
INSERT INTO `admin_operation_log` VALUES (760, 1, 'admin/order-models/9', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:08:01', '2024-02-21 23:08:01');
INSERT INTO `admin_operation_log` VALUES (761, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:08:03', '2024-02-21 23:08:03');
INSERT INTO `admin_operation_log` VALUES (762, 1, 'admin/order-models/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:08:05', '2024-02-21 23:08:05');
INSERT INTO `admin_operation_log` VALUES (763, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:08:13', '2024-02-21 23:08:13');
INSERT INTO `admin_operation_log` VALUES (764, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:08:14', '2024-02-21 23:08:14');
INSERT INTO `admin_operation_log` VALUES (765, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:10:15', '2024-02-21 23:10:15');
INSERT INTO `admin_operation_log` VALUES (766, 1, 'admin/return-models', 'GET', '127.0.0.1', '[]', '2024-02-21 23:10:16', '2024-02-21 23:10:16');
INSERT INTO `admin_operation_log` VALUES (767, 1, 'admin/return-models/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:10:18', '2024-02-21 23:10:18');
INSERT INTO `admin_operation_log` VALUES (768, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:10:21', '2024-02-21 23:10:21');
INSERT INTO `admin_operation_log` VALUES (769, 1, 'admin/return-models', 'GET', '127.0.0.1', '[]', '2024-02-21 23:11:30', '2024-02-21 23:11:30');
INSERT INTO `admin_operation_log` VALUES (770, 1, 'admin/return-models/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:11:33', '2024-02-21 23:11:33');
INSERT INTO `admin_operation_log` VALUES (771, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:11:34', '2024-02-21 23:11:34');
INSERT INTO `admin_operation_log` VALUES (772, 1, 'admin/return-models/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:11:38', '2024-02-21 23:11:38');
INSERT INTO `admin_operation_log` VALUES (773, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:11:52', '2024-02-21 23:11:52');
INSERT INTO `admin_operation_log` VALUES (774, 1, 'admin/return-models', 'GET', '127.0.0.1', '[]', '2024-02-21 23:11:53', '2024-02-21 23:11:53');
INSERT INTO `admin_operation_log` VALUES (775, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:15:32', '2024-02-21 23:15:32');
INSERT INTO `admin_operation_log` VALUES (776, 1, 'admin/return-models', 'GET', '127.0.0.1', '[]', '2024-02-21 23:15:33', '2024-02-21 23:15:33');
INSERT INTO `admin_operation_log` VALUES (777, 1, 'admin/return-models', 'GET', '127.0.0.1', '[]', '2024-02-21 23:27:57', '2024-02-21 23:27:57');
INSERT INTO `admin_operation_log` VALUES (778, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:27:58', '2024-02-21 23:27:58');
INSERT INTO `admin_operation_log` VALUES (779, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:28:00', '2024-02-21 23:28:00');
INSERT INTO `admin_operation_log` VALUES (780, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:28:02', '2024-02-21 23:28:02');
INSERT INTO `admin_operation_log` VALUES (781, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:28:02', '2024-02-21 23:28:02');
INSERT INTO `admin_operation_log` VALUES (782, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:28:03', '2024-02-21 23:28:03');
INSERT INTO `admin_operation_log` VALUES (783, 1, 'admin/order-models', 'GET', '127.0.0.1', '[]', '2024-02-21 23:28:15', '2024-02-21 23:28:15');
INSERT INTO `admin_operation_log` VALUES (784, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:28:16', '2024-02-21 23:28:16');
INSERT INTO `admin_operation_log` VALUES (785, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:28:17', '2024-02-21 23:28:17');
INSERT INTO `admin_operation_log` VALUES (786, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:28:18', '2024-02-21 23:28:18');
INSERT INTO `admin_operation_log` VALUES (787, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:28:18', '2024-02-21 23:28:18');
INSERT INTO `admin_operation_log` VALUES (788, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:28:19', '2024-02-21 23:28:19');
INSERT INTO `admin_operation_log` VALUES (789, 1, 'admin/goods-type-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:28:20', '2024-02-21 23:28:20');
INSERT INTO `admin_operation_log` VALUES (790, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:28:21', '2024-02-21 23:28:21');
INSERT INTO `admin_operation_log` VALUES (791, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:28:22', '2024-02-21 23:28:22');
INSERT INTO `admin_operation_log` VALUES (792, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:28:22', '2024-02-21 23:28:22');
INSERT INTO `admin_operation_log` VALUES (793, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:30:01', '2024-02-21 23:30:01');
INSERT INTO `admin_operation_log` VALUES (794, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:30:02', '2024-02-21 23:30:02');
INSERT INTO `admin_operation_log` VALUES (795, 1, 'admin/return-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:30:03', '2024-02-21 23:30:03');
INSERT INTO `admin_operation_log` VALUES (796, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:30:27', '2024-02-21 23:30:27');
INSERT INTO `admin_operation_log` VALUES (797, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:30:28', '2024-02-21 23:30:28');
INSERT INTO `admin_operation_log` VALUES (798, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:30:28', '2024-02-21 23:30:28');
INSERT INTO `admin_operation_log` VALUES (799, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:30:28', '2024-02-21 23:30:28');
INSERT INTO `admin_operation_log` VALUES (800, 1, 'admin/order-models/9', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:30:31', '2024-02-21 23:30:31');
INSERT INTO `admin_operation_log` VALUES (801, 1, 'admin/order-models', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-02-21 23:30:34', '2024-02-21 23:30:34');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 5, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 2, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 3, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 4, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 2, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 4, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 5, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 6, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 7, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 8, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 9, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 10, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 11, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 12, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2024-02-20 13:15:06', '2024-02-20 13:15:06');
INSERT INTO `admin_roles` VALUES (2, 'user', 'user', '2024-02-20 13:47:56', '2024-02-20 13:47:56');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$g.Pymm0iWBA7PMhJbnwcWeJ4I6ozhF6FmZhOVnHOO4wOnQnK.kInu', 'Administrator', NULL, 'UlIJLhRPPStqCyJItYG9eoxkLd6Jy4Vi2D2kQxwb7QcsU41x6lnxVaaTPt1G', '2024-02-20 13:15:06', '2024-02-20 13:15:06', NULL, NULL);
INSERT INTO `admin_users` VALUES (2, 'Username', '$2y$10$0d3ai35.gdupJAltBhEUNed8WNtmmPRHhQaloPY.uWOpdxG37kfQq', 'Name', NULL, NULL, '2024-02-20 13:59:45', '2024-02-20 13:59:45', NULL, NULL);
INSERT INTO `admin_users` VALUES (3, 'aaaaaa', '$2y$10$ZtVYYVWWijRsADk7EWanRu8bs7L0vzGao8uVNzQFkNr3MY9OMGEIO', 'aaaaaa', NULL, NULL, '2024-02-20 14:01:17', '2024-02-20 14:01:17', NULL, NULL);
INSERT INTO `admin_users` VALUES (4, 'aaaaaa222', '$2y$10$g.Pymm0iWBA7PMhJbnwcWeJ4I6ozhF6FmZhOVnHOO4wOnQnK.kInu', 'aaaaaa222', NULL, 'lBNIiJMrLTZJBYoKojbOHiSXxbJL5yRDBh8D17w3xd554TnYEoajIMVWXE3n', '2024-02-20 14:01:30', '2024-02-20 14:01:30', NULL, NULL);
INSERT INTO `admin_users` VALUES (5, 'test1111', '$2y$10$3QOQfdcP1k/aIswnY5D1te9JO6nx/Kgm0t8uVGjS.vC6GWLFLoqPO', 'test1111', NULL, NULL, '2024-02-20 14:12:55', '2024-02-20 14:12:55', NULL, NULL);
INSERT INTO `admin_users` VALUES (6, 'test33333', '$2y$10$0vNMHvTcOt8XA3EnlvdttOKptLgLlxxMgcNkhkrs5TMXw1Y5xWDlm', 'test33333', NULL, NULL, '2024-02-20 14:13:31', '2024-02-20 14:13:31', NULL, NULL);
INSERT INTO `admin_users` VALUES (7, '21312312', '$2y$10$YJ.XJn8O4YWDvFwp0DIrq.fEfnup.mSwUar8Hpv/7e/nbTp8UCdgS', '21312312', NULL, NULL, '2024-02-20 14:14:22', '2024-02-20 14:14:22', NULL, NULL);
INSERT INTO `admin_users` VALUES (8, '4215', '$2y$10$vVym4cklGO4hj9V6u4w0S.emLDtUhNcrQaWFjjJXXzyhKCJGep/8S', '4215', NULL, NULL, '2024-02-20 14:15:26', '2024-02-20 14:15:26', NULL, NULL);
INSERT INTO `admin_users` VALUES (9, 'admin2222', '$2y$10$B8hxOAyoisyIAqkp639sROcXdgoAxKQmVW4XGcbkh4toDXVWDP.oq', 'admin2222', NULL, '2goo9JxphYgG9q5mIZWY5BN6fV3bmvN5MltjBkrbkWn4hGuLL4b6y8i6IaNV', '2024-02-21 21:47:46', '2024-02-21 21:47:46', NULL, NULL);
INSERT INTO `admin_users` VALUES (10, 'admin3333', '$2y$10$XaC/FG2pLToG0EPuqDVqVOwK6kZdc17nchK9lkje3JbXcVMkrXkG6', 'admin3333', NULL, 'yNRxmlQh43d4z9bqERgmuq15QVdzyWBT4L3zXyZwduvsgDv2yUN6DwzWTtO2', '2024-02-21 21:49:45', '2024-02-21 21:49:45', NULL, NULL);
INSERT INTO `admin_users` VALUES (11, '312321', '$2y$10$dpiJQOFTkbSroHSGSSTv1OmeC/DK9HvpUxS5n6iJkDf0aoD4c3fLO', '312321', NULL, NULL, '2024-02-21 21:50:45', '2024-02-21 21:50:45', NULL, NULL);
INSERT INTO `admin_users` VALUES (12, 'admin4444', '$2y$10$pA.ibbHoOK5eINmZS/OTjud10OGheswyBbES6mErD9Jhydn81Iq76', 'admin4444', NULL, 'DdiGmC4zLLOllokhN7wpJKfcueRuBlpS2gYXjTZXNqGh12M4m5yE2LypvEle', '2024-02-21 21:50:59', '2024-02-21 21:50:59', NULL, NULL);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供货商信息',
  `inventory_quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '库存数量',
  `type_id` int(11) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '缺货状态 0缺货 1不缺货',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '商品名称1', '供应商信息', '2222', 2, 0, 22.00, '2024-02-20 14:48:57', '2024-02-21 21:46:34', NULL, 1);
INSERT INTO `goods` VALUES (2, '商品名称2', '供应商信息', '222', 2, 0, 22.00, '2024-02-20 22:50:49', '2024-02-21 21:46:37', NULL, 1);
INSERT INTO `goods` VALUES (3, '商品名称3', '供应商信息', '555', 3, 1, 23.00, '2024-02-20 23:03:43', '2024-02-21 21:46:41', 1, 1);
INSERT INTO `goods` VALUES (4, '商品名称4', '供应商信息', '22', 2, 1, 2222.00, '2024-02-21 21:46:04', '2024-02-21 21:46:46', 1, 1);
INSERT INTO `goods` VALUES (5, '商品名称6', '供应商信息', '33', 4, 1, NULL, '2024-02-21 21:47:29', '2024-02-21 21:47:29', 1, NULL);

-- ----------------------------
-- Table structure for goods_type
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_type
-- ----------------------------
INSERT INTO `goods_type` VALUES (1, 'chandelier', '2024-02-20 14:37:13', '2024-02-20 14:37:13');
INSERT INTO `goods_type` VALUES (2, 'LED light', '2024-02-20 14:37:22', '2024-02-20 14:37:22');
INSERT INTO `goods_type` VALUES (3, 'spotlight', '2024-02-20 14:37:32', '2024-02-20 14:37:32');
INSERT INTO `goods_type` VALUES (4, '分类名称2', '2024-02-21 21:47:17', '2024-02-21 21:47:17');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (9, '用户名称', '11213131313', '联系地址', '5544232323', '2024-02-21 21:46:24', '2024-02-21 21:46:24');
INSERT INTO `order` VALUES (8, '3123', '31231124412', '4214124124124', '2424242424', '2024-02-21 21:31:35', '2024-02-21 21:31:35');
INSERT INTO `order` VALUES (7, '412421412', '41241242142', '联系地址', '2323', '2024-02-21 00:13:25', '2024-02-21 00:13:25');

-- ----------------------------
-- Table structure for order_goods
-- ----------------------------
DROP TABLE IF EXISTS `order_goods`;
CREATE TABLE `order_goods`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NULL DEFAULT NULL,
  `goods_id` int(11) NULL DEFAULT NULL,
  `goods_info` json NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_goods
-- ----------------------------
INSERT INTO `order_goods` VALUES (2, 7, 2, NULL, '2024-02-21 00:13:25', '2024-02-21 00:13:25');
INSERT INTO `order_goods` VALUES (5, 8, 1, NULL, '2024-02-21 21:31:35', '2024-02-21 21:31:35');
INSERT INTO `order_goods` VALUES (4, 7, 3, NULL, '2024-02-21 00:13:25', '2024-02-21 00:13:25');
INSERT INTO `order_goods` VALUES (6, 8, 2, NULL, '2024-02-21 21:31:35', '2024-02-21 21:31:35');
INSERT INTO `order_goods` VALUES (7, 8, 3, NULL, '2024-02-21 21:31:35', '2024-02-21 21:31:35');
INSERT INTO `order_goods` VALUES (8, 9, 1, NULL, '2024-02-21 21:46:24', '2024-02-21 21:46:24');
INSERT INTO `order_goods` VALUES (9, 9, 2, NULL, '2024-02-21 21:46:24', '2024-02-21 21:46:24');
INSERT INTO `order_goods` VALUES (10, 9, 3, NULL, '2024-02-21 21:46:24', '2024-02-21 21:46:24');
INSERT INTO `order_goods` VALUES (11, 9, 4, NULL, '2024-02-21 21:46:24', '2024-02-21 21:46:24');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for return
-- ----------------------------
DROP TABLE IF EXISTS `return`;
CREATE TABLE `return`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of return
-- ----------------------------
INSERT INTO `return` VALUES (1, '货用户姓名', '12321424242', 2232.00, '2323242424242424242', '2024-02-21 20:58:35', '2024-02-21 20:58:35');
INSERT INTO `return` VALUES (2, '货用户姓名', '12321424242', 2232.00, '2323242424242424242', '2024-02-21 20:58:50', '2024-02-21 20:58:50');
INSERT INTO `return` VALUES (3, '货用户姓名', '12321424242', 2232.00, '2323242424242424242', '2024-02-21 20:59:10', '2024-02-21 20:59:10');
INSERT INTO `return` VALUES (4, '货用户姓名', '12321424242', 2232.00, '2323242424242424242', '2024-02-21 20:59:21', '2024-02-21 20:59:21');
INSERT INTO `return` VALUES (5, 'fqwfqw', '12312412421', 22.00, '2323242424242424242', '2024-02-21 20:59:34', '2024-02-21 20:59:34');
INSERT INTO `return` VALUES (6, '退货用户姓名1', '12121212121', 333.00, '2323242424242424242', '2024-02-21 21:47:08', '2024-02-21 21:47:08');

-- ----------------------------
-- Table structure for return_goods
-- ----------------------------
DROP TABLE IF EXISTS `return_goods`;
CREATE TABLE `return_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NULL DEFAULT NULL,
  `goods_id` int(11) NULL DEFAULT NULL,
  `goods_info` json NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of return_goods
-- ----------------------------
INSERT INTO `return_goods` VALUES (1, 4, 3, NULL, '2024-02-21 20:59:21', '2024-02-21 20:59:21');
INSERT INTO `return_goods` VALUES (2, 5, 1, NULL, '2024-02-21 20:59:34', '2024-02-21 20:59:34');
INSERT INTO `return_goods` VALUES (3, 5, 2, NULL, '2024-02-21 20:59:34', '2024-02-21 20:59:34');
INSERT INTO `return_goods` VALUES (4, 5, 3, NULL, '2024-02-21 20:59:34', '2024-02-21 20:59:34');
INSERT INTO `return_goods` VALUES (5, 6, 1, NULL, '2024-02-21 21:47:08', '2024-02-21 21:47:08');
INSERT INTO `return_goods` VALUES (6, 6, 2, NULL, '2024-02-21 21:47:08', '2024-02-21 21:47:08');
INSERT INTO `return_goods` VALUES (7, 6, 3, NULL, '2024-02-21 21:47:08', '2024-02-21 21:47:08');
INSERT INTO `return_goods` VALUES (8, 6, 4, NULL, '2024-02-21 21:47:08', '2024-02-21 21:47:08');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
