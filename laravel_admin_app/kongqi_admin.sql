/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : kongqi_admin

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2020-06-05 18:48:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ad_admins
-- ----------------------------
DROP TABLE IF EXISTS `ad_admins`;
CREATE TABLE `ad_admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '昵称',
  `thumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '头像',
  `account` varchar(120) COLLATE utf8_unicode_ci NOT NULL COMMENT '账号',
  `session_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '登录session_token',
  `password` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  `email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `qq` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'qq',
  `weixin` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '微信',
  `github` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'GitHub',
  `mobile` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机',
  `is_checked` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用1，禁用0',
  `is_root` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否超级管理员',
  `last_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '最后一次登录IP',
  `login_numbers` int(11) NOT NULL DEFAULT '0' COMMENT '登录次数',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ad_admins_account_unique` (`account`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='管理员表';

-- ----------------------------
-- Records of ad_admins
-- ----------------------------
INSERT INTO `ad_admins` VALUES ('1', '超级管理员', '', 'admin', 'yX4AymqjQKSpkC3l3JC01yJFc4opDc7NQg89OLUp', '$2y$10$8b5QVhj.ih5awgSZU4eoHOox0VjPw/.ixjYJBDbLTB/l5z9JQaq0m', null, null, null, null, null, '1', '1', '127.0.0.1', '11', null, null, '2019-09-12 06:41:23', '2020-06-05 10:46:53');
INSERT INTO `ad_admins` VALUES ('2', '访客', '', 'guest', 'FbH2tyoaKwzflevXxozrmNrBTKryxDoAegPxQa6x', '$2y$10$Avi5FJYXMKCHE1SNWTirXOea1kk/iHohl9r7S2QXAkp93iVD0HfE.', null, null, null, null, null, '1', '0', '127.0.0.1', '1', null, null, '2020-06-05 10:42:56', '2020-06-05 10:44:28');
INSERT INTO `ad_admins` VALUES ('3', '用户', '', 'user', 'inQCYx9eu8QZx5qbew3c4CKLEsW4C7JaFduWt8Gu', '$2y$10$f8sZyyj.r8ZXlscI13lKeeDaONHbDhycmWiJpUAprPMStxS76YIaq', null, null, null, null, null, '1', '0', '127.0.0.1', '2', null, null, '2020-06-05 10:43:49', '2020-06-05 10:46:36');

-- ----------------------------
-- Table structure for ad_admin_logs
-- ----------------------------
DROP TABLE IF EXISTS `ad_admin_logs`;
CREATE TABLE `ad_admin_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned NOT NULL COMMENT '所属管理员id',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '所属管理员',
  `mark` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `ip` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'IP地址',
  `url` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT '操作地址',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ad_admin_logs_admin_id_index` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='管理员日志表';

-- ----------------------------
-- Records of ad_admin_logs
-- ----------------------------
INSERT INTO `ad_admin_logs` VALUES ('1', '1', '超级管理员', '更新成功', '127.0.0.1', 'admin/admin/update/1', '2020-06-02 11:09:06', '2020-06-02 11:09:06');
INSERT INTO `ad_admin_logs` VALUES ('2', '1', '超级管理员', '系统配置成功', '127.0.0.1', 'admin/config/store', '2020-06-02 11:10:19', '2020-06-02 11:10:19');
INSERT INTO `ad_admin_logs` VALUES ('3', '1', '超级管理员', '权限角色创建成功', '127.0.0.1', 'admin/adminrole/store', '2020-06-05 10:40:42', '2020-06-05 10:40:42');
INSERT INTO `ad_admin_logs` VALUES ('4', '1', '超级管理员', '权限角色创建成功', '127.0.0.1', 'admin/adminrole/store', '2020-06-05 10:41:04', '2020-06-05 10:41:04');
INSERT INTO `ad_admin_logs` VALUES ('5', '1', '超级管理员', '权限角色创建成功', '127.0.0.1', 'admin/adminrole/store', '2020-06-05 10:41:28', '2020-06-05 10:41:28');
INSERT INTO `ad_admin_logs` VALUES ('6', '1', '超级管理员', '创建成功', '127.0.0.1', 'admin/admin/store', '2020-06-05 10:42:56', '2020-06-05 10:42:56');
INSERT INTO `ad_admin_logs` VALUES ('7', '1', '超级管理员', '更新成功', '127.0.0.1', 'admin/admin/update/1', '2020-06-05 10:43:03', '2020-06-05 10:43:03');
INSERT INTO `ad_admin_logs` VALUES ('8', '1', '超级管理员', '创建成功', '127.0.0.1', 'admin/admin/store', '2020-06-05 10:43:49', '2020-06-05 10:43:49');
INSERT INTO `ad_admin_logs` VALUES ('9', '1', '超级管理员', '更新成功', '127.0.0.1', 'admin/admin/update/3', '2020-06-05 10:46:07', '2020-06-05 10:46:07');

-- ----------------------------
-- Table structure for ad_configs
-- ----------------------------
DROP TABLE IF EXISTS `ad_configs`;
CREATE TABLE `ad_configs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `group_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'config' COMMENT '分组',
  `ename` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '调用英文名',
  `content` text COLLATE utf8_unicode_ci COMMENT '值',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ad_configs_group_type_index` (`group_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='配置表';

-- ----------------------------
-- Records of ad_configs
-- ----------------------------
INSERT INTO `ad_configs` VALUES ('1', 'config', 'thumb', 'http://www.ad.com/upload/images/20200602/61d990e427e59682e6f56247cc79edf231978.jpg', null, null);
INSERT INTO `ad_configs` VALUES ('2', 'config', 'site_name', '滴滴', null, null);
INSERT INTO `ad_configs` VALUES ('3', 'config', 'domain', 'www.ad.com', null, null);
INSERT INTO `ad_configs` VALUES ('4', 'config', 'seo_title', '标题', null, null);
INSERT INTO `ad_configs` VALUES ('5', 'config', 'seo_key', '地方', null, null);
INSERT INTO `ad_configs` VALUES ('6', 'config', 'seo_desc', '改个', null, null);

-- ----------------------------
-- Table structure for ad_files
-- ----------------------------
DROP TABLE IF EXISTS `ad_files`;
CREATE TABLE `ad_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lang_id` smallint(6) NOT NULL DEFAULT '1' COMMENT '语言id',
  `group_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属分组id',
  `tmp` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '原始名字',
  `type` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'image' COMMENT '文件类型:image,vedio,pdf,office,zip,rar,other',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '新文件名',
  `size` int(11) NOT NULL DEFAULT '0' COMMENT '文件大小',
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '文件路径',
  `oss_type` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `user_type` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT '上传用户类型:平台|用户',
  `user_id` int(10) unsigned NOT NULL COMMENT '所属用户id',
  `screen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '使用场景',
  `ext` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '后缀名',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ad_files_user_type_user_id_index` (`user_type`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='图片资源库';

-- ----------------------------
-- Records of ad_files
-- ----------------------------
INSERT INTO `ad_files` VALUES ('1', '1', '0', '7.jpg', 'image', '37266acd2a89626cca8c19e632a1c92471677.jpg', '38', 'http://www.ad.com/upload/images/20200602/37266acd2a89626cca8c19e632a1c92471677.jpg', 'local', 'admin', '1', '', '.jpg', '2020-06-02 11:09:43', '2020-06-02 11:09:43');
INSERT INTO `ad_files` VALUES ('2', '1', '0', '7.jpg', 'image', '61d990e427e59682e6f56247cc79edf231978.jpg', '38', 'http://www.ad.com/upload/images/20200602/61d990e427e59682e6f56247cc79edf231978.jpg', 'local', 'admin', '1', '', '.jpg', '2020-06-02 11:10:14', '2020-06-02 11:10:14');

-- ----------------------------
-- Table structure for ad_file_groups
-- ----------------------------
DROP TABLE IF EXISTS `ad_file_groups`;
CREATE TABLE `ad_file_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `model_id` int(11) NOT NULL COMMENT '所属模型id',
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '所属模型type',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ad_file_groups_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ad_file_groups
-- ----------------------------

-- ----------------------------
-- Table structure for ad_migrations
-- ----------------------------
DROP TABLE IF EXISTS `ad_migrations`;
CREATE TABLE `ad_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ad_migrations
-- ----------------------------
INSERT INTO `ad_migrations` VALUES ('1', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `ad_migrations` VALUES ('2', '2019_09_08_104924_create_permission_tables', '1');
INSERT INTO `ad_migrations` VALUES ('3', '2019_09_08_111831_create_admins_table', '1');
INSERT INTO `ad_migrations` VALUES ('4', '2019_09_10_083014_create_files_table', '1');
INSERT INTO `ad_migrations` VALUES ('5', '2019_09_11_091519_create_admin_logs_table', '1');
INSERT INTO `ad_migrations` VALUES ('6', '2019_09_11_230255_create_configs_table', '1');
INSERT INTO `ad_migrations` VALUES ('7', '2019_09_14_085231_create_file_groups_table', '1');
INSERT INTO `ad_migrations` VALUES ('8', '2019_09_19_174043_create_plugins_table', '1');

-- ----------------------------
-- Table structure for ad_model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `ad_model_has_permissions`;
CREATE TABLE `ad_model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `ad_model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `ad_permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='模型对应权限表';

-- ----------------------------
-- Records of ad_model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for ad_model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `ad_model_has_roles`;
CREATE TABLE `ad_model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `ad_model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `ad_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='模型对应角色表';

-- ----------------------------
-- Records of ad_model_has_roles
-- ----------------------------
INSERT INTO `ad_model_has_roles` VALUES ('2', 'admin', '1');
INSERT INTO `ad_model_has_roles` VALUES ('3', 'admin', '2');
INSERT INTO `ad_model_has_roles` VALUES ('1', 'admin', '3');

-- ----------------------------
-- Table structure for ad_password_resets
-- ----------------------------
DROP TABLE IF EXISTS `ad_password_resets`;
CREATE TABLE `ad_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ad_password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for ad_permissions
-- ----------------------------
DROP TABLE IF EXISTS `ad_permissions`;
CREATE TABLE `ad_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '路由',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '菜单上级ID',
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '图标',
  `cn_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '权限名字',
  `menu_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单名字',
  `menu_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '显示菜单开关,1开0关',
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='权限规则';

-- ----------------------------
-- Records of ad_permissions
-- ----------------------------
INSERT INTO `ad_permissions` VALUES ('1', 'admin.system', '10', '0', 'layui-icon layui-icon-set-sm', '系统配置', '系统配置', '1', 'admin', '2019-09-12 06:44:04', '2019-09-12 07:24:31');
INSERT INTO `ad_permissions` VALUES ('2', 'admin.pemission', '0', '0', 'layui-icon layui-icon-user', '权限管理', '权限管理', '1', 'admin', '2019-09-12 06:46:08', '2019-09-12 06:46:08');
INSERT INTO `ad_permissions` VALUES ('3', 'admin.config.index', '0', '1', '', '基本配置', '基本配置', '1', 'admin', '2019-09-12 06:51:26', '2019-09-12 06:51:26');
INSERT INTO `ad_permissions` VALUES ('7', 'admin.admin.index', '0', '2', '', '管理员', '管理员', '1', 'admin', '2019-09-12 07:20:08', '2019-09-12 07:20:17');
INSERT INTO `ad_permissions` VALUES ('8', 'admin.admin.create', '0', '7', null, '管理员添加', '管理员添加', '1', 'admin', null, null);
INSERT INTO `ad_permissions` VALUES ('9', 'admin.admin.edit', '0', '7', null, '管理员编辑', '管理员编辑', '1', 'admin', null, null);
INSERT INTO `ad_permissions` VALUES ('10', 'admin.admin.destroy', '0', '7', null, '管理员删除', '管理员删除', '1', 'admin', null, null);
INSERT INTO `ad_permissions` VALUES ('11', 'admin.admin.show', '0', '7', null, '管理员详情', '管理员详情', '1', 'admin', null, null);
INSERT INTO `ad_permissions` VALUES ('12', 'admin.adminrole.index', '0', '2', '', '管理组', '管理组', '1', 'admin', '2019-09-12 07:20:52', '2019-09-12 07:22:03');
INSERT INTO `ad_permissions` VALUES ('13', 'admin.adminrole.create', '0', '12', null, '管理组添加', '管理组添加', '1', 'admin', null, '2019-09-12 07:22:21');
INSERT INTO `ad_permissions` VALUES ('14', 'admin.adminrole.edit', '0', '12', null, '管理组编辑', '管理组编辑', '1', 'admin', null, '2019-09-12 07:22:11');
INSERT INTO `ad_permissions` VALUES ('15', 'admin.adminrole.destroy', '0', '12', null, '管理组删除', '管理组删除', '1', 'admin', null, '2019-09-12 07:22:18');
INSERT INTO `ad_permissions` VALUES ('16', 'admin.adminrole.show', '0', '12', null, '管理组详情', '管理组详情', '1', 'admin', null, '2019-09-12 07:22:14');
INSERT INTO `ad_permissions` VALUES ('17', 'admin.adminpermission.index', '0', '2', '', '权限规则', '权限规则', '1', 'admin', '2019-09-12 07:21:53', '2019-09-12 07:26:33');
INSERT INTO `ad_permissions` VALUES ('18', 'admin.adminpermission.create', '0', '17', null, '权限规则添加', '权限规则添加', '1', 'admin', null, null);
INSERT INTO `ad_permissions` VALUES ('19', 'admin.adminpermission.edit', '0', '17', null, '权限规则编辑', '权限规则编辑', '1', 'admin', null, null);
INSERT INTO `ad_permissions` VALUES ('20', 'admin.adminpermission.destroy', '0', '17', null, '权限规则删除', '权限规则删除', '1', 'admin', null, null);
INSERT INTO `ad_permissions` VALUES ('21', 'admin.adminpermission.show', '0', '17', null, '权限规则详情', '权限规则详情', '1', 'admin', null, null);
INSERT INTO `ad_permissions` VALUES ('22', 'admin.adminlog.index', '0', '2', '', '操作日志', '操作日志', '1', 'admin', '2019-09-12 07:23:01', '2019-09-12 07:23:06');
INSERT INTO `ad_permissions` VALUES ('23', 'admin.other', '0', '0', '', '其他', '其他', '1', 'admin', '2019-09-12 08:28:38', '2019-09-12 08:28:38');
INSERT INTO `ad_permissions` VALUES ('24', 'admin.icon', '0', '23', '', '图标选择器', '图标选择器', '1', 'admin', '2019-09-12 08:29:01', '2019-09-12 08:29:01');
INSERT INTO `ad_permissions` VALUES ('25', 'admin.upload', '0', '23', '', '文件上传', '文件上传', '1', 'admin', '2019-09-12 08:29:34', '2019-09-12 08:29:34');
INSERT INTO `ad_permissions` VALUES ('26', 'admin.admin.password', '0', '7', '', '修改自己密码', '修改自己密码', '1', 'admin', '2019-09-12 08:33:46', '2019-09-12 08:33:46');
INSERT INTO `ad_permissions` VALUES ('27', 'admin.plugin.index', '0', '0', null, '插件管理', '插件管理', '1', 'admin', '2019-09-20 03:31:51', '2019-09-20 03:31:51');
INSERT INTO `ad_permissions` VALUES ('28', 'admin.plugin.create', '0', '27', null, '插件管理添加', '插件管理添加', '1', 'admin', null, null);
INSERT INTO `ad_permissions` VALUES ('29', 'admin.plugin.edit', '0', '27', null, '插件管理编辑', '插件管理编辑', '1', 'admin', null, null);
INSERT INTO `ad_permissions` VALUES ('30', 'admin.plugin.destroy', '0', '27', null, '插件管理删除', '插件管理删除', '1', 'admin', null, null);
INSERT INTO `ad_permissions` VALUES ('31', 'admin.plugin.show', '0', '27', null, '插件管理详情', '插件管理详情', '1', 'admin', null, null);
INSERT INTO `ad_permissions` VALUES ('32', 'admin.plugin.install', '0', '27', '', '插件安装', '插件安装', '1', 'admin', '2019-09-20 03:32:44', '2019-09-20 03:32:44');

-- ----------------------------
-- Table structure for ad_plugins
-- ----------------------------
DROP TABLE IF EXISTS `ad_plugins`;
CREATE TABLE `ad_plugins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '插件名称',
  `ename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '插件标识符',
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '版本号',
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '插件作者',
  `intro` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '插件简介',
  `author_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '作者介绍',
  `qq` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'qq',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'email',
  `weixin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'weixin',
  `mobile` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `thumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '缩略图',
  `thumbs` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '多图演示',
  `domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '插件作者域名',
  `domain_plugin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '插件地址',
  `domain_plugin_test` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '插件演示地址',
  `admin_menu` text COLLATE utf8_unicode_ci COMMENT '后台菜单导航',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `is_install` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否安装',
  `is_checked` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `source` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'local:本地,cloud:云插件' COMMENT '插件来源',
  `menu_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '显示位置:0插件入库进入，1菜单进入',
  `db_migrate` tinyint(4) NOT NULL DEFAULT '0' COMMENT '数据库迁移是否允许过',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ad_plugins_ename_index` (`ename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ad_plugins
-- ----------------------------

-- ----------------------------
-- Table structure for ad_roles
-- ----------------------------
DROP TABLE IF EXISTS `ad_roles`;
CREATE TABLE `ad_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '角色调用英文名',
  `cn_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '权限名字',
  `mark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
-- Records of ad_roles
-- ----------------------------
INSERT INTO `ad_roles` VALUES ('1', 'bumenjingli', '部门经理', '部门经理', 'admin', '2020-06-05 10:40:42', '2020-06-05 10:40:42');
INSERT INTO `ad_roles` VALUES ('2', 'laoban', '老板', '老板', 'admin', '2020-06-05 10:41:04', '2020-06-05 10:41:04');
INSERT INTO `ad_roles` VALUES ('3', 'xiangmujingli', '项目经理', '项目经理', 'admin', '2020-06-05 10:41:28', '2020-06-05 10:41:28');

-- ----------------------------
-- Table structure for ad_role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `ad_role_has_permissions`;
CREATE TABLE `ad_role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `ad_role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `ad_role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `ad_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ad_role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `ad_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='模型对应角色对应规则表';

-- ----------------------------
-- Records of ad_role_has_permissions
-- ----------------------------
INSERT INTO `ad_role_has_permissions` VALUES ('2', '1');
INSERT INTO `ad_role_has_permissions` VALUES ('7', '1');
INSERT INTO `ad_role_has_permissions` VALUES ('8', '1');
INSERT INTO `ad_role_has_permissions` VALUES ('9', '1');
INSERT INTO `ad_role_has_permissions` VALUES ('10', '1');
INSERT INTO `ad_role_has_permissions` VALUES ('11', '1');
INSERT INTO `ad_role_has_permissions` VALUES ('26', '1');
INSERT INTO `ad_role_has_permissions` VALUES ('2', '2');
INSERT INTO `ad_role_has_permissions` VALUES ('12', '2');
INSERT INTO `ad_role_has_permissions` VALUES ('13', '2');
INSERT INTO `ad_role_has_permissions` VALUES ('14', '2');
INSERT INTO `ad_role_has_permissions` VALUES ('15', '2');
INSERT INTO `ad_role_has_permissions` VALUES ('16', '2');
INSERT INTO `ad_role_has_permissions` VALUES ('2', '3');
INSERT INTO `ad_role_has_permissions` VALUES ('17', '3');
INSERT INTO `ad_role_has_permissions` VALUES ('18', '3');
INSERT INTO `ad_role_has_permissions` VALUES ('19', '3');
INSERT INTO `ad_role_has_permissions` VALUES ('20', '3');
INSERT INTO `ad_role_has_permissions` VALUES ('21', '3');
