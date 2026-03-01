/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : waitadmin

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 01/03/2026 13:44:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for wait_addons_curd_table
-- ----------------------------
DROP TABLE IF EXISTS `wait_addons_curd_table`;
CREATE TABLE `wait_addons_curd_table`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '表名称',
  `table_engine` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '表引擎',
  `table_comment` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '表描述',
  `table_alias` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '表别名',
  `author` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '作者名',
  `tpl_type` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'curd' COMMENT '模板类型: [curd=单表, tree=树表]',
  `gen_type` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'down' COMMENT '生成方式: [down=下载, code=覆盖]',
  `gen_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '生成类名',
  `gen_module` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '生成模块',
  `gen_folder` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '生成目录',
  `menu_type` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'auto' COMMENT '菜单构建: [auto=自动, hand=手动]',
  `menu_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `menu_icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '菜单图标',
  `menu_pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '菜单父级',
  `join_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '关联状态: [0=关闭, 1=开启]',
  `join_array` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '关联内容',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '生成代码表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wait_addons_curd_table_column
-- ----------------------------
DROP TABLE IF EXISTS `wait_addons_curd_table_column`;
CREATE TABLE `wait_addons_curd_table_column`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `table_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '表外键',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '列名称',
  `column_comment` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '列描述',
  `column_length` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '列长度',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '列类型',
  `model_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '模型类型',
  `is_pk` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否主键: [0=否, 1=是]',
  `is_increment` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否自增: [0=否, 1=是]',
  `is_required` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否必填: [0=否, 1=是]',
  `is_insert` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否插入: [0=否, 1=是]',
  `is_edit` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否编辑: [0=否, 1=是]',
  `is_list` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否列表: [0=否, 1=是]',
  `is_query` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否查询: [0=否, 1=是]',
  `query_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '查询条件',
  `html_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '显示类型',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '字典类型',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '生成字段表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wait_article
-- ----------------------------
DROP TABLE IF EXISTS `wait_article`;
CREATE TABLE `wait_article`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类目',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '封面',
  `intro` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '简介',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `browse` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '浏览',
  `collect` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '收藏',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `is_topping` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否置顶: [0=否, 1=是]',
  `is_recommend` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否推荐: [0=否, 1=是]',
  `is_show` tinyint(255) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否显示: [0=否, 1=是]',
  `is_delete` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否删除: [0=否, 1=是]',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章内容表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wait_article_category
-- ----------------------------
DROP TABLE IF EXISTS `wait_article_category`;
CREATE TABLE `wait_article_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '类目名称',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类目排序',
  `is_disable` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否禁用: [0=否, 1=是]',
  `is_delete` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否删除: [0=否, 1=是]',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章类目表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wait_article_category
-- ----------------------------
INSERT INTO `wait_article_category` VALUES (1, '行业资讯', 0, 0, 0, 1676559290, 1679048617, 0);
INSERT INTO `wait_article_category` VALUES (2, '技术分享', 0, 0, 0, 1676559361, 1679048627, 0);

-- ----------------------------
-- Table structure for wait_article_collect
-- ----------------------------
DROP TABLE IF EXISTS `wait_article_collect`;
CREATE TABLE `wait_article_collect`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `article_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章ID',
  `is_delete` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否删除: [0=否, 1=是]',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wait_attach
-- ----------------------------
DROP TABLE IF EXISTS `wait_attach`;
CREATE TABLE `wait_attach`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `cid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类ID',
  `quote` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '引用次数',
  `file_type` tinyint(2) UNSIGNED NOT NULL DEFAULT 10 COMMENT '文件类型: [10=图片, 20=视频, 30=压缩, 40=文件]',
  `file_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文件名称',
  `file_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文件路径',
  `file_ext` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文件扩展',
  `file_size` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文件大小',
  `is_user` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户上传: [0=否, 1=是]',
  `is_attach` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '仓库附件: [0=否, 1=是]',
  `is_delete` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否删除: [0=否, 1=是]',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '附件文件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wait_attach_cate
-- ----------------------------
DROP TABLE IF EXISTS `wait_attach_cate`;
CREATE TABLE `wait_attach_cate`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `type` tinyint(2) UNSIGNED NOT NULL DEFAULT 10 COMMENT '分类类型: [10=图片, 20=视频, 30=压缩, 40=文件]',
  `is_delete` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否删除: [0=否, 1=是]',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '附件类目表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wait_auth_admin
-- ----------------------------
DROP TABLE IF EXISTS `wait_auth_admin`;
CREATE TABLE `wait_auth_admin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '账号角色',
  `dept_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '部门主键',
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '岗位主键',
  `nickname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '账号昵称',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '登录账号',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '登录密码',
  `salt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '加密盐巴',
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户头像',
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户电话',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `last_login_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '登录地址',
  `last_login_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '登录时间',
  `is_disable` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否禁用: [0=否, 1=是]',
  `is_delete` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否删除: [0=否, 1=是]',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wait_auth_admin
-- ----------------------------
INSERT INTO `wait_auth_admin` VALUES (1, 0, 0, 0, 'admin', 'admin', '86e81f901069ea421be2c3fc9609367d', '0e5c50', '/static/backend/images/avatar.png', '', '', '127.0.0.1', 1772343560, 0, 0, 1772338925, 1772338925, 0);

-- ----------------------------
-- Table structure for wait_auth_dept
-- ----------------------------
DROP TABLE IF EXISTS `wait_auth_dept`;
CREATE TABLE `wait_auth_dept`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上级主键',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '部门名称',
  `duty` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '负责人名',
  `mobile` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '部门电话',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序编号',
  `level` smallint(5) UNSIGNED NOT NULL DEFAULT 1 COMMENT '关系层级',
  `relation` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '关系链条',
  `is_disable` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否禁用: [0=否, 1=是]',
  `is_delete` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否删除: [0=否, 1=是]',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wait_auth_menu
-- ----------------------------
DROP TABLE IF EXISTS `wait_auth_menu`;
CREATE TABLE `wait_auth_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '菜单父级',
  `module` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '菜单模块',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '菜单标题',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '菜单权限',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '菜单排序: [0=后, 1=前]',
  `is_menu` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否菜单: [0=否, 1=是]',
  `is_disable` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否禁用: [0=否, 1=是]',
  `is_delete` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否删除: [0=否, 1=是]',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6010 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wait_auth_menu
-- ----------------------------
INSERT INTO `wait_auth_menu` VALUES (1, 0, 'app', '首页', 'layui-icon icon-homed-fill', 'index/console', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (10, 0, 'app', '权限', 'layui-icon icon-admin-setting-fill', '', 50, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (11, 10, 'app', '管理员', '', 'auth.admin/index', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (12, 11, 'app', '管理员列表', '', 'auth.admin/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (13, 11, 'app', '管理员新增', '', 'auth.admin/add', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (14, 11, 'app', '管理员编辑', '', 'auth.admin/edit', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (15, 11, 'app', '管理员删除', '', 'auth.admin/del', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (16, 11, 'app', '管理员状态', '', 'auth.admin/status', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (20, 10, 'app', '角色管理', '', 'auth.role/index', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (21, 20, 'app', '角色列表', '', 'auth.role/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (22, 20, 'app', '角色新增', '', 'auth.role/add', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (23, 20, 'app', '角色编辑', '', 'auth.role/edit', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (24, 20, 'app', '角色删除', '', 'auth.role/del', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (25, 20, 'app', '角色状态', '', 'auth.role/status', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (30, 10, 'app', '菜单管理', '', 'auth.menu/index', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (31, 30, 'app', '菜单列表', '', 'auth.menu/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (32, 30, 'app', '菜单新增', '', 'auth.menu/add', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (33, 30, 'app', '菜单编辑', '', 'auth.menu/edit', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (34, 30, 'app', '菜单删除', '', 'auth.menu/del', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (40, 10, 'app', '部门管理', '', 'auth.dept/index', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (41, 40, 'app', '部门列表', '', 'auth.dept/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (42, 40, 'app', '部门新增', '', 'auth.dept/add', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (43, 40, 'app', '部门编辑', '', 'auth.dept/edit', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (44, 40, 'app', '部门删除', '', 'auth.dept/del', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (50, 10, 'app', '岗位管理', '', 'auth.post/index', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (51, 50, 'app', '岗位列表', '', 'auth.post/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (52, 50, 'app', '岗位新增', '', 'auth.post/add', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (53, 50, 'app', '岗位编辑', '', 'auth.post/edit', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (54, 50, 'app', '岗位删除', '', 'auth.post/del', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (200, 0, 'app', '设置', 'layui-icon icon-setup-fill', '', 60, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (201, 200, 'app', '系统设置', '', 'setting.basics/index', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (202, 201, 'app', '配置页面', '', 'setting.basics/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (203, 201, 'app', '配置保存', '', 'setting.basics/save', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (210, 200, 'app', '存储设置', '', 'setting.storage/index', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (211, 210, 'app', '配置页面', '', 'setting.storage/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (212, 210, 'app', '配置保存', '', 'setting.storage/save', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (215, 200, 'app', '水印设置', '', 'setting.watermark/index', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (216, 215, 'app', '配置页面', '', 'setting.watermark/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (217, 215, 'app', '配置保存', '', 'setting.watermark/save', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (220, 200, 'app', '邮件设置', '', 'setting.email/index', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (221, 220, 'app', '配置页面', '', 'setting.email/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (222, 220, 'app', '配置保存', '', 'setting.email/save', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (230, 200, 'app', '短信设置', '', 'setting.sms/index', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (231, 230, 'app', '配置页面', '', 'setting.sms/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (232, 230, 'app', '配置保存', '', 'setting.sms/save', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (240, 200, 'app', '政策协议', '', 'setting.policy/index', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (241, 240, 'app', '配置页面', '', 'setting.policy/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (242, 240, 'app', '配置保存', '', 'setting.policy/save', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3000, 0, 'app', '系统', 'layui-icon icon-equalizer', '', 70, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3001, 3000, 'app', '计划任务', '', 'system.crontab/index', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3002, 3001, 'app', '任务列表', '', 'system.crontab/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3003, 3001, 'app', '任务详情', '', 'system.crontab/detail', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3004, 3001, 'app', '任务新增', '', 'system.crontab/add', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3005, 3001, 'app', '任务编辑', '', 'system.crontab/edit', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3006, 3001, 'app', '任务删除', '', 'system.crontab/del', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3007, 3001, 'app', '任务启动', '', 'system.crontab/run', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3008, 3001, 'app', '任务停止', '', 'system.crontab/stop', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3010, 3000, 'app', '清除缓存', '', 'system.clear/index', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3011, 3010, 'app', '操作页面', '', 'system.clear/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3012, 3010, 'app', '立即清除', '', 'system.clear/clean', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3015, 3000, 'app', '系统日志', '', 'system.log/index', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3016, 3015, 'app', '日志列表', '', 'system.log/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3017, 3015, 'app', '日志详情', '', 'system.log/detail', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3020, 3000, 'app', '附件管理', '', 'system.attach/index', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3021, 3020, 'app', '附件列表', '', 'attach/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3022, 3020, 'app', '附件命名', '', 'attach/rename', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3023, 3020, 'app', '附件移动', '', 'attach/move', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3024, 3020, 'app', '附件删除', '', 'attach/del', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3025, 3020, 'app', '分组列表', '', 'attach/cateLists', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3026, 3020, 'app', '分组新增', '', 'attach/cateAdd', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3027, 3020, 'app', '分组命名', '', 'attach/cateRename', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3028, 3020, 'app', '分组删除', '', 'attach/cateDel', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3030, 3000, 'app', '上传管理', '', '', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3031, 3030, 'app', '附件上传', '', 'upload/permanent', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3032, 3030, 'app', '临时上传', '', 'upload/temporary', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3050, 3000, 'app', '字典管理', '', 'system.dictType/index', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3051, 3050, 'app', '字典类型列表', '', 'system.dictType/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3052, 3050, 'app', '字典类型新增', '', 'system.dictType/add', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3053, 3050, 'app', '字典类型编辑', '', 'system.dictType/edit', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3054, 3050, 'app', '字典类型删除', '', 'system.dictType/del', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3055, 3050, 'app', '字典数据列表', '', 'system.dictData/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3056, 3050, 'app', '字典数据新增', '', 'system.dictData/add', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3057, 3050, 'app', '字典数据编辑', '', 'system.dictData/edit', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3058, 3050, 'app', '字典数据删除', '', 'system.dictData/del', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3500, 0, 'app', '内容', 'layui-icon icon-text-fill', '', 20, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3501, 3500, 'app', '分类管理', '', 'content.category/index', 20, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3502, 3501, 'app', '分类列表', '', 'content.category/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3503, 3501, 'app', '分类详情', '', 'content.category/detail', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3504, 3501, 'app', '分类新增', '', 'content.category/add', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3505, 3501, 'app', '分类编辑', '', 'content.category/edit', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3506, 3501, 'app', '分类删除', '', 'content.category/del', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3510, 3500, 'app', '文章管理', '', 'content.article/index', 10, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3511, 3510, 'app', '文章列表', '', 'content.article/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3512, 3510, 'app', '文章详情', '', 'content.article/detail', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3513, 3510, 'app', '文章新增', '', 'content.article/add', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3514, 3510, 'app', '文章编辑', '', 'content.article/edit', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (3515, 3510, 'app', '文章删除', '', 'content.article/del', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (4000, 0, 'app', '用户', 'layui-icon icon-users-fill', '', 30, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (4001, 4000, 'app', '用户管理', '', 'user.user/index', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (4002, 4001, 'app', '用户列表', '', 'user.user/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (4003, 4001, 'app', '用户详情', '', 'user.user/detail', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (4004, 4001, 'app', '设置分组', '', 'user.user/group', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (4100, 4000, 'app', '用户分组', '', 'user.group/index', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (4101, 4100, 'app', '分组列表', '', 'user.group/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (4102, 4100, 'app', '分组详情', '', 'user.group/detail', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (4103, 4100, 'app', '分组新增', '', 'user.group/add', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (4104, 4100, 'app', '分组编辑', '', 'user.group/edit', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (4105, 4100, 'app', '分组删除', '', 'user.group/del', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (4110, 4000, 'app', '用户足迹', '', 'user.visitor/index', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (4111, 4110, 'app', '足迹列表', '', 'user.visitor/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (4112, 4110, 'app', '足迹详情', '', 'user.visitor/detail', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (6000, 3000, 'curd', '代码生成', 'layui-icon icon-seckill-flash', 'addons/curd/gen/index', 0, 1, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (6001, 6000, 'curd', '生成列表', '', 'addons/curd/gen/index', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (6002, 6000, 'curd', '查看库表', '', 'addons/curd/gen/tables', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (6003, 6000, 'curd', '更新库表', '', 'addons/curd/gen/update', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (6004, 6000, 'curd', '销毁库表', '', 'addons/curd/gen/destroy', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (6005, 6000, 'curd', '同步库表', '', 'addons/curd/gen/synchrony', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (6006, 6000, 'curd', '导入库表', '', 'addons/curd/gen/imports', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (6007, 6000, 'curd', '导出生成', '', 'addons/curd/gen/exports', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (6008, 6000, 'curd', '下载生成', '', 'addons/curd/gen/download', 0, 0, 0, 0, 1648696695, 1648696695, 0);
INSERT INTO `wait_auth_menu` VALUES (6009, 6000, 'curd', '预览生成', '', 'addons/curd/gen/preview', 0, 0, 0, 0, 1648696695, 1648696695, 0);

-- ----------------------------
-- Table structure for wait_auth_perm
-- ----------------------------
DROP TABLE IF EXISTS `wait_auth_perm`;
CREATE TABLE `wait_auth_perm`  (
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色主键',
  `menu_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '菜单主键'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wait_auth_post
-- ----------------------------
DROP TABLE IF EXISTS `wait_auth_post`;
CREATE TABLE `wait_auth_post`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '岗位编码',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '岗位名称',
  `remarks` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '岗位备注',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '岗位排序',
  `is_disable` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否禁用: [0=否, 1=是]',
  `is_delete` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否删除: [0=否, 1=是]',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wait_auth_role
-- ----------------------------
DROP TABLE IF EXISTS `wait_auth_role`;
CREATE TABLE `wait_auth_role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `describe` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '角色描述',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色排序',
  `is_disable` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否禁用: [0=否, 1=是]',
  `is_delete` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否删除: [0=否, 1=是]',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wait_sys_config
-- ----------------------------
DROP TABLE IF EXISTS `wait_sys_config`;
CREATE TABLE `wait_sys_config`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '类型',
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '键名',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '键值',
  `remarks` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 210 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wait_sys_config
-- ----------------------------
INSERT INTO `wait_sys_config` VALUES (1, 'storage', 'default', 'local', '存储引擎', 1665319505, 1679128285);
INSERT INTO `wait_sys_config` VALUES (2, 'storage', 'local', '[]', '本地存储', 1665319505, 1679128285);
INSERT INTO `wait_sys_config` VALUES (3, 'storage', 'qiniu', '{\"bucket\":\"\",\"accessKey\":\"\",\"secretKey\":\"\",\"domain\":\"\"}', '七牛存储', 1665319505, 1679128285);
INSERT INTO `wait_sys_config` VALUES (4, 'storage', 'aliyun', '{\"bucket\":\"\",\"accessKey\":\"\",\"secretKey\":\"\",\"domain\":\"\"}', '阿里存储', 1665319505, 1679128285);
INSERT INTO `wait_sys_config` VALUES (5, 'storage', 'qcloud', '{\"bucket\":\"\",\"region\":\"\",\"accessKey\":\"\",\"secretKey\":\"\",\"domain\":\"\"}', '腾讯存储', 1665319505, 1679128285);
INSERT INTO `wait_sys_config` VALUES (10, 'sms', 'default', 'aliyun', '短信引擎', 1665319505, 1665319505);
INSERT INTO `wait_sys_config` VALUES (11, 'sms', 'aliyun', '{\"sign\":\"\",\"access_key_id\":\"\",\"access_secret\":\"\"}', '阿里短信', 1665319505, 1665319505);
INSERT INTO `wait_sys_config` VALUES (12, 'sms', 'tencent', '{\"sign\":\"\",\"app_id\":\"\",\"secret_id\":\"\",\"secret_key\":\"\"}', '腾讯短信', 1665319505, 1665319505);
INSERT INTO `wait_sys_config` VALUES (20, 'website', 'copyright', '© 2023-2024 WaitAdmin开源团队工作室 版权所有 · www.waitadmin.cn', '版权信息', 1665319505, 1679125300);
INSERT INTO `wait_sys_config` VALUES (21, 'website', 'icp', '粤ICP备1843666号', 'ICP备案', 1665319505, 1679125300);
INSERT INTO `wait_sys_config` VALUES (22, 'website', 'pcp', '', '公安备案', 1665319505, 1679125300);
INSERT INTO `wait_sys_config` VALUES (23, 'website', 'analyse', '', '统计代码', 1665319505, 1679125300);
INSERT INTO `wait_sys_config` VALUES (70, 'mail', 'smtp_type', 'smtp', '邮件方式', 1665319505, 1679046920);
INSERT INTO `wait_sys_config` VALUES (71, 'mail', 'smtp_host', 'smtp.163.com', 'SMTP服务', 1665319505, 1679046920);
INSERT INTO `wait_sys_config` VALUES (72, 'mail', 'smtp_port', '25', 'SMTP端口', 1665319505, 1679046920);
INSERT INTO `wait_sys_config` VALUES (73, 'mail', 'smtp_user', 'waitadmin@163.com', 'SMTP账号', 1665319505, 1679046920);
INSERT INTO `wait_sys_config` VALUES (74, 'mail', 'smtp_pass', '', 'SMTP密码', 1665319505, 1679046920);
INSERT INTO `wait_sys_config` VALUES (75, 'mail', 'from_user', 'waitadmin@163.com', '发件人邮箱', 1665319505, 1679046920);
INSERT INTO `wait_sys_config` VALUES (76, 'mail', 'verify_type', '', 'SMTP验证', 1665319505, 1679046920);
INSERT INTO `wait_sys_config` VALUES (80, 'policy', 'service', '\n', '服务协议', 1665319505, 1665319505);
INSERT INTO `wait_sys_config` VALUES (81, 'policy', 'privacy', '', '隐私政策', 1665319505, 1665319505);
INSERT INTO `wait_sys_config` VALUES (200, 'watermark', 'status', '0', '水印功能状态', 1665319505, 1665319505);
INSERT INTO `wait_sys_config` VALUES (201, 'watermark', 'type', 'text', '水印文件类型', 1665319505, 1665319505);
INSERT INTO `wait_sys_config` VALUES (202, 'watermark', 'icon', 'static/common/images/watermark.png', '水印图片文件', 1665319505, 1665319505);
INSERT INTO `wait_sys_config` VALUES (203, 'watermark', 'fonts', 'WaitAdmin', '水印字体文字', 1665319505, 1665319505);
INSERT INTO `wait_sys_config` VALUES (204, 'watermark', 'color', '#000000', '水印字体颜色', 1665319505, 1665319505);
INSERT INTO `wait_sys_config` VALUES (205, 'watermark', 'size', '20', '水印字体大小', 1665319505, 1665319505);
INSERT INTO `wait_sys_config` VALUES (206, 'watermark', 'offset', '0', '水印字体偏移', 1665319505, 1665319505);
INSERT INTO `wait_sys_config` VALUES (207, 'watermark', 'angle', '0', '水印字体倾斜', 1665319505, 1665319505);
INSERT INTO `wait_sys_config` VALUES (208, 'watermark', 'alpha', '100', '水印图透明度', 1665319505, 1665319505);
INSERT INTO `wait_sys_config` VALUES (209, 'watermark', 'position', '1', '水印所在位置', 1665319505, 1665319505);

-- ----------------------------
-- Table structure for wait_sys_crontab
-- ----------------------------
DROP TABLE IF EXISTS `wait_sys_crontab`;
CREATE TABLE `wait_sys_crontab`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `command` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '执行命令',
  `params` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '附带参数',
  `rules` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '运行规则',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注信息',
  `error` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '错误提示',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '执行状态: [1=运行, 2=暂停, 3=错误]',
  `exe_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '执行时长',
  `max_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最大执行时长',
  `last_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后执行时间',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统任务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wait_sys_crontab
-- ----------------------------
INSERT INTO `wait_sys_crontab` VALUES (1, '垃圾清理', 'gc', '', '0 2 * * *', '清理临时文件(凌晨2点: 0 2 * * * )', '', 1, 6, 6, 1685781545, 1685781516, 1685781609);

-- ----------------------------
-- Table structure for wait_sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `wait_sys_dict_data`;
CREATE TABLE `wait_sys_dict_data`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '键名',
  `value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '数值',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `is_enable` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否启用: [0=否, 1=是]',
  `is_delete` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否删除: [0=否, 1=是]',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wait_sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `wait_sys_dict_type`;
CREATE TABLE `wait_sys_dict_type`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '字典名称',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '字典类型',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '字典备注',
  `is_enable` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否启用: [0=否, 1=是]',
  `is_delete` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否删除: [0=否, 1=是]',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wait_sys_log
-- ----------------------------
DROP TABLE IF EXISTS `wait_sys_log`;
CREATE TABLE `wait_sys_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '操作人员',
  `method` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '请求方法',
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '请求路由',
  `ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '请求IP',
  `ua` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '请求UA',
  `params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求参数',
  `error` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '错误信息',
  `trace` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '错误异常',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '执行状态: 1=成功, 2=失败',
  `start_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '开始时间: 毫秒',
  `end_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '结束时间: 毫秒',
  `task_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '耗时时间: 毫秒',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wait_sys_log
-- ----------------------------
INSERT INTO `wait_sys_log` VALUES (1, 1, 'POST', '/login/check', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"username\":\"admin\",\"password\":\"******\",\"captcha\":\"ahzc\",\"remember\":\"on\"}', NULL, NULL, 1, '1772338936.873', '1772338936.996', 123, 1772338936);
INSERT INTO `wait_sys_log` VALUES (2, 1, 'GET', '/setting.pc.banner/index', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"page\":\"1\",\"limit\":\"160\"}', '', '#0 D:\\WWW\\waitadmin\\app\\backend\\controller\\setting\\pc\\BannerController.php(46): app\\common\\basics\\Validate->goCheck()\n#1 [internal function]: app\\backend\\controller\\setting\\pc\\BannerController->index()\n#2 D:\\WWW\\waitadmin\\vendor\\topthink\\think-container\\src\\Container.php(349): ReflectionMethod->invokeArgs()\n#3 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\route\\Dispatch.php(170): think\\Container->invokeReflectMethod()\n#4 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(59): think\\route\\Dispatch->think\\route\\{closure}()\n#5 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(66): think\\Pipeline->think\\{closure}()\n#6 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\route\\Dispatch.php(173): think\\Pipeline->then()\n#7 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\route\\dispatch\\Controller.php(112): think\\route\\Dispatch->responseWithMiddlewarePipeline()\n#8 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\route\\Dispatch.php(48): think\\route\\dispatch\\Controller->exec()\n#9 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Route.php(717): think\\route\\Dispatch->run()\n#10 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(59): think\\Route->think\\{closure}()\n#11 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(66): think\\Pipeline->think\\{closure}()\n#12 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Route.php(718): think\\Pipeline->then()\n#13 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Http.php(208): think\\Route->dispatch()\n#14 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Http.php(198): think\\Http->dispatchToRoute()\n#15 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(59): think\\Http->think\\{closure}()\n#16 D:\\WWW\\waitadmin\\vendor\\topthink\\think-multi-app\\src\\MultiApp.php(51): think\\Pipeline->think\\{closure}()\n#17 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(59): think\\app\\MultiApp->think\\app\\{closure}()\n#18 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(66): think\\Pipeline->think\\{closure}()\n#19 D:\\WWW\\waitadmin\\vendor\\topthink\\think-multi-app\\src\\MultiApp.php(52): think\\Pipeline->then()\n#20 [internal function]: think\\app\\MultiApp->handle()\n#21 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Middleware.php(134): call_user_func()\n#22 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(85): think\\Middleware->think\\{closure}()\n#23 D:\\WWW\\waitadmin\\app\\common\\http\\middleware\\DemoMiddleware.php(46): think\\Pipeline->think\\{closure}()\n#24 [internal function]: app\\common\\http\\middleware\\DemoMiddleware->handle()\n#25 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Middleware.php(134): call_user_func()\n#26 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(85): think\\Middleware->think\\{closure}()\n#27 D:\\WWW\\waitadmin\\app\\common\\http\\middleware\\LogsMiddleware.php(29): think\\Pipeline->think\\{closure}()\n#28 [internal function]: app\\common\\http\\middleware\\LogsMiddleware->handle()\n#29 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Middleware.php(134): call_user_func()\n#30 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(85): think\\Middleware->think\\{closure}()\n#31 D:\\WWW\\waitadmin\\app\\common\\http\\middleware\\AllowCrossDomain.php(42): think\\Pipeline->think\\{closure}()\n#32 [internal function]: app\\common\\http\\middleware\\AllowCrossDomain->handle()\n#33 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Middleware.php(134): call_user_func()\n#34 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(85): think\\Middleware->think\\{closure}()\n#35 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\middleware\\SessionInit.php(58): think\\Pipeline->think\\{closure}()\n#36 [internal function]: think\\middleware\\SessionInit->handle()\n#37 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Middleware.php(134): call_user_func()\n#38 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(85): think\\Middleware->think\\{closure}()\n#39 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\middleware\\LoadLangPack.php(53): think\\Pipeline->think\\{closure}()\n#40 [internal function]: think\\middleware\\LoadLangPack->handle()\n#41 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Middleware.php(134): call_user_func()\n#42 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(85): think\\Middleware->think\\{closure}()\n#43 D:\\WWW\\waitadmin\\vendor\\topthink\\think-trace\\src\\TraceDebug.php(71): think\\Pipeline->think\\{closure}()\n#44 [internal function]: think\\trace\\TraceDebug->handle()\n#45 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Middleware.php(134): call_user_func()\n#46 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(85): think\\Middleware->think\\{closure}()\n#47 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(66): think\\Pipeline->think\\{closure}()\n#48 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Http.php(199): think\\Pipeline->then()\n#49 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Http.php(162): think\\Http->runWithRequest()\n#50 D:\\WWW\\waitadmin\\public\\ESLpW6ydgj.php(17): think\\Http->run()\n#51 {main}', 2, '1772339208.509', '0', 0, 1772339208);
INSERT INTO `wait_sys_log` VALUES (3, 1, 'POST', '/auth.menu/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"id\":\"5700\"}', '先删除子级菜单再操作!', '#0 D:\\WWW\\waitadmin\\app\\backend\\service\\auth\\MenuService.php(142): app\\common\\basics\\Models->checkDataAlreadyExist()\n#1 D:\\WWW\\waitadmin\\app\\backend\\controller\\auth\\MenuController.php(113): app\\backend\\service\\auth\\MenuService::del()\n#2 [internal function]: app\\backend\\controller\\auth\\MenuController->del()\n#3 D:\\WWW\\waitadmin\\vendor\\topthink\\think-container\\src\\Container.php(349): ReflectionMethod->invokeArgs()\n#4 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\route\\Dispatch.php(170): think\\Container->invokeReflectMethod()\n#5 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(59): think\\route\\Dispatch->think\\route\\{closure}()\n#6 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(66): think\\Pipeline->think\\{closure}()\n#7 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\route\\Dispatch.php(173): think\\Pipeline->then()\n#8 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\route\\dispatch\\Controller.php(112): think\\route\\Dispatch->responseWithMiddlewarePipeline()\n#9 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\route\\Dispatch.php(48): think\\route\\dispatch\\Controller->exec()\n#10 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Route.php(717): think\\route\\Dispatch->run()\n#11 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(59): think\\Route->think\\{closure}()\n#12 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(66): think\\Pipeline->think\\{closure}()\n#13 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Route.php(718): think\\Pipeline->then()\n#14 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Http.php(208): think\\Route->dispatch()\n#15 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Http.php(198): think\\Http->dispatchToRoute()\n#16 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(59): think\\Http->think\\{closure}()\n#17 D:\\WWW\\waitadmin\\vendor\\topthink\\think-multi-app\\src\\MultiApp.php(51): think\\Pipeline->think\\{closure}()\n#18 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(59): think\\app\\MultiApp->think\\app\\{closure}()\n#19 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(66): think\\Pipeline->think\\{closure}()\n#20 D:\\WWW\\waitadmin\\vendor\\topthink\\think-multi-app\\src\\MultiApp.php(52): think\\Pipeline->then()\n#21 [internal function]: think\\app\\MultiApp->handle()\n#22 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Middleware.php(134): call_user_func()\n#23 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(85): think\\Middleware->think\\{closure}()\n#24 D:\\WWW\\waitadmin\\app\\common\\http\\middleware\\DemoMiddleware.php(46): think\\Pipeline->think\\{closure}()\n#25 [internal function]: app\\common\\http\\middleware\\DemoMiddleware->handle()\n#26 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Middleware.php(134): call_user_func()\n#27 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(85): think\\Middleware->think\\{closure}()\n#28 D:\\WWW\\waitadmin\\app\\common\\http\\middleware\\LogsMiddleware.php(29): think\\Pipeline->think\\{closure}()\n#29 [internal function]: app\\common\\http\\middleware\\LogsMiddleware->handle()\n#30 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Middleware.php(134): call_user_func()\n#31 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(85): think\\Middleware->think\\{closure}()\n#32 D:\\WWW\\waitadmin\\app\\common\\http\\middleware\\AllowCrossDomain.php(42): think\\Pipeline->think\\{closure}()\n#33 [internal function]: app\\common\\http\\middleware\\AllowCrossDomain->handle()\n#34 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Middleware.php(134): call_user_func()\n#35 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(85): think\\Middleware->think\\{closure}()\n#36 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\middleware\\SessionInit.php(58): think\\Pipeline->think\\{closure}()\n#37 [internal function]: think\\middleware\\SessionInit->handle()\n#38 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Middleware.php(134): call_user_func()\n#39 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(85): think\\Middleware->think\\{closure}()\n#40 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\middleware\\LoadLangPack.php(53): think\\Pipeline->think\\{closure}()\n#41 [internal function]: think\\middleware\\LoadLangPack->handle()\n#42 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Middleware.php(134): call_user_func()\n#43 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(85): think\\Middleware->think\\{closure}()\n#44 D:\\WWW\\waitadmin\\vendor\\topthink\\think-trace\\src\\TraceDebug.php(71): think\\Pipeline->think\\{closure}()\n#45 [internal function]: think\\trace\\TraceDebug->handle()\n#46 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Middleware.php(134): call_user_func()\n#47 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(85): think\\Middleware->think\\{closure}()\n#48 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Pipeline.php(66): think\\Pipeline->think\\{closure}()\n#49 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Http.php(199): think\\Pipeline->then()\n#50 D:\\WWW\\waitadmin\\vendor\\topthink\\framework\\src\\think\\Http.php(162): think\\Http->runWithRequest()\n#51 D:\\WWW\\waitadmin\\public\\ESLpW6ydgj.php(17): think\\Http->run()\n#52 {main}', 2, '1772339816.32', '1772339816.399', 78, 1772339816);
INSERT INTO `wait_sys_log` VALUES (4, 1, 'POST', '/auth.menu/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"id\":\"5722\"}', NULL, NULL, 1, '1772339822.396', '1772339822.469', 73, 1772339822);
INSERT INTO `wait_sys_log` VALUES (5, 1, 'POST', '/auth.menu/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"id\":\"5721\"}', NULL, NULL, 1, '1772339828.401', '1772339828.483', 82, 1772339828);
INSERT INTO `wait_sys_log` VALUES (6, 1, 'POST', '/auth.menu/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"id\":\"5720\"}', NULL, NULL, 1, '1772339833.083', '1772339833.176', 93, 1772339833);
INSERT INTO `wait_sys_log` VALUES (7, 1, 'POST', '/auth.menu/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"id\":\"5731\"}', NULL, NULL, 1, '1772339838.789', '1772339838.854', 65, 1772339838);
INSERT INTO `wait_sys_log` VALUES (8, 1, 'POST', '/auth.menu/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"id\":\"5732\"}', NULL, NULL, 1, '1772339846.328', '1772339846.383', 54, 1772339846);
INSERT INTO `wait_sys_log` VALUES (9, 1, 'POST', '/auth.menu/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"id\":\"5730\"}', NULL, NULL, 1, '1772339851.469', '1772339851.546', 76, 1772339851);
INSERT INTO `wait_sys_log` VALUES (10, 1, 'POST', '/auth.menu/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"id\":\"5742\"}', NULL, NULL, 1, '1772339856.606', '1772339856.664', 58, 1772339856);
INSERT INTO `wait_sys_log` VALUES (11, 1, 'POST', '/auth.menu/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"id\":\"5741\"}', NULL, NULL, 1, '1772339861.775', '1772339861.83', 54, 1772339861);
INSERT INTO `wait_sys_log` VALUES (12, 1, 'POST', '/auth.menu/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"id\":\"5740\"}', NULL, NULL, 1, '1772339865.384', '1772339865.452', 67, 1772339865);
INSERT INTO `wait_sys_log` VALUES (13, 1, 'POST', '/auth.menu/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"id\":\"5700\"}', NULL, NULL, 1, '1772339868.445', '1772339868.503', 58, 1772339868);
INSERT INTO `wait_sys_log` VALUES (14, 1, 'POST', '/auth.menu/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"id\":\"207\"}', NULL, NULL, 1, '1772340134.206', '1772340134.284', 77, 1772340134);
INSERT INTO `wait_sys_log` VALUES (15, 1, 'POST', '/auth.menu/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"id\":\"206\"}', NULL, NULL, 1, '1772340139.228', '1772340139.3', 72, 1772340139);
INSERT INTO `wait_sys_log` VALUES (16, 1, 'POST', '/auth.menu/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"id\":\"205\"}', NULL, NULL, 1, '1772340143.83', '1772340143.908', 78, 1772340143);
INSERT INTO `wait_sys_log` VALUES (17, 1, 'POST', '/system.clear/clean', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"type\":[\"1\",\"2\",\"3\",\"4\",\"5\"]}', NULL, NULL, 1, '1772340210.091', '1772340210.144', 52, 1772340210);
INSERT INTO `wait_sys_log` VALUES (18, 1, 'POST', '/auth.menu/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"id\":\"227\"}', NULL, NULL, 1, '1772340539.849', '1772340539.918', 69, 1772340539);
INSERT INTO `wait_sys_log` VALUES (19, 1, 'POST', '/auth.menu/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"id\":\"226\"}', NULL, NULL, 1, '1772340547.125', '1772340547.2', 75, 1772340547);
INSERT INTO `wait_sys_log` VALUES (20, 1, 'POST', '/auth.menu/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"id\":\"225\"}', NULL, NULL, 1, '1772340552.401', '1772340552.476', 75, 1772340552);
INSERT INTO `wait_sys_log` VALUES (21, 1, 'POST', '/auth.menu/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"id\":\"237\"}', NULL, NULL, 1, '1772340658.067', '1772340658.137', 70, 1772340658);
INSERT INTO `wait_sys_log` VALUES (22, 1, 'POST', '/auth.menu/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"id\":\"236\"}', NULL, NULL, 1, '1772340670.925', '1772340670.989', 64, 1772340670);
INSERT INTO `wait_sys_log` VALUES (23, 1, 'POST', '/auth.menu/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"id\":\"235\"}', NULL, NULL, 1, '1772340676.202', '1772340676.279', 77, 1772340676);
INSERT INTO `wait_sys_log` VALUES (24, 1, 'POST', '/login/check', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"username\":\"admin\",\"password\":\"******\",\"captcha\":\"6eqf\",\"remember\":\"on\"}', NULL, NULL, 1, '1772343560.187', '1772343560.318', 131, 1772343560);
INSERT INTO `wait_sys_log` VALUES (25, 1, 'POST', '/content.article/del', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"ids\":[\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"]}', NULL, NULL, 1, '1772343583.806', '1772343583.872', 65, 1772343583);
INSERT INTO `wait_sys_log` VALUES (26, 1, 'POST', '/system.clear/clean', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '{\"type\":[\"1\",\"2\",\"3\",\"4\",\"5\"]}', NULL, NULL, 1, '1772343598.674', '1772343598.718', 43, 1772343598);

-- ----------------------------
-- Table structure for wait_sys_visitor
-- ----------------------------
DROP TABLE IF EXISTS `wait_sys_visitor`;
CREATE TABLE `wait_sys_visitor`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '操作人员',
  `module` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '所属模块',
  `method` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '请求方法',
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '请求路由',
  `ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '请求IP',
  `ua` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '请求UA',
  `browser` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '请求内核',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求参数',
  `error` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '错误信息',
  `trace` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '错误异常',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '执行状态: 1=成功, 2=失败',
  `start_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '开始时间: 毫秒',
  `end_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '结束时间: 毫秒',
  `task_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '耗时时间: 毫秒',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1065 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '浏览日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wait_sys_visitor
-- ----------------------------
INSERT INTO `wait_sys_visitor` VALUES (1064, 0, 'frontend', 'POST', '/frontend/article/collect', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'chrome', '{\"id\":\"8\"}', NULL, NULL, 1, '1772339491.572', '1772339491.607', 35, 1772339491);

-- ----------------------------
-- Table structure for wait_user
-- ----------------------------
DROP TABLE IF EXISTS `wait_user`;
CREATE TABLE `wait_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户分组',
  `sn` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户编号',
  `account` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户账号',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '登录密码',
  `nickname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户名称',
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户头像',
  `sign` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '个性签名',
  `salt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '加密盐巴',
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户性别',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '手机号码',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `last_login_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '最后登录IP',
  `last_login_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后登录时间',
  `is_disable` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否禁用: [0=否, 1=是]',
  `is_delete` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否删除: [0=否, 1=是]',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wait_user_auth
-- ----------------------------
DROP TABLE IF EXISTS `wait_user_auth`;
CREATE TABLE `wait_user_auth`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户ID',
  `openid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'openid',
  `unionid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'unionid',
  `terminal` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '客户端[1=微信小程序, 2=微信公众号, 3=H5, 4=PC, 5=安卓, 6=苹果]',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户授权表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wait_user_group
-- ----------------------------
DROP TABLE IF EXISTS `wait_user_group`;
CREATE TABLE `wait_user_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `remarks` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `sort` smallint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `is_delete` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否删除: [0=否, 1=是]',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户分组表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
