/*
 Navicat Premium Data Transfer

 Source Server         : 47.105.170.243
 Source Server Type    : MySQL
 Source Server Version : 50646
 Source Host           : 47.105.170.243:3306
 Source Schema         : manage

 Target Server Type    : MySQL
 Target Server Version : 50646
 File Encoding         : 65001

 Date: 01/12/2019 15:07:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for b_books
-- ----------------------------
DROP TABLE IF EXISTS `b_books`;
CREATE TABLE `b_books`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `book_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '书籍名称',
  `book_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '书籍作者',
  `book_pub` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '书籍出版社',
  `book_num` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '书籍是否在书架(0 否 1 是)',
  `book_sort` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '书籍分类',
  `reader_prestige` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '所在书架编号',
  `front_image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图书正面封面',
  `after_image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图书背面封面',
  `create_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人id',
  `create_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人名称',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建日期',
  `update_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人id',
  `update_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改日期',
  `del_flag` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除状态（-1 删除  0 正常）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '图书表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_books
-- ----------------------------
INSERT INTO `b_books` VALUES ('2b97789e7c924abab5ac94d9f20', '史记', '张大可', '商务印书馆', '是', '古籍', '3-2', '/static/2b97789e7c924abab5ac94d9f20.jpg', '2', '1e80c192800c0333fd7d8cc7803b5aed', '管理员', '2019-11-26 14:49:40', NULL, NULL, NULL, '0');
INSERT INTO `b_books` VALUES ('2b97789e7c924abab5ac94d9fd2', 'Android从入门到精通', '孙更新', '电子工业出版社', '是', '计算机技术', '1-1', '/static/2b97789e7c924abab5ac94d9fd2.jpg', '2', '1e80c192800c0333fd7d8cc7803b5aed', '管理员', '2019-11-26 08:52:20', NULL, NULL, NULL, '0');
INSERT INTO `b_books` VALUES ('2b97789e7c924abab5ac94d9fd4', 'HTML5从入门到精通', '明日科技', '清华大学出版社', '是', '计算机技术', '1-1', '/static/2b97789e7c924abab5ac94d9fd4.jpg', '2', '1e80c192800c0333fd7d8cc7803b5aed', '管理员', '2019-11-26 08:18:45', NULL, NULL, NULL, '0');
INSERT INTO `b_books` VALUES ('2b97789e7c924abab5ac94d9fd5', '妙生活', '蓝七', '北京科学技术出版社', '是', '生活', '2-1', '/static/2b97789e7c924abab5ac94d9fd5.jpg', '2', '1e80c192800c0333fd7d8cc7803b5aed', '管理员', '2019-11-26 08:20:13', NULL, NULL, NULL, '0');
INSERT INTO `b_books` VALUES ('2b97789e7c924abab5ac94d9fd6', '浮生六记', '沈复', '上海古籍出版社', '是', '散文', '3-1', '/static/2b97789e7c924abab5ac94d9fd6.jpg', '2', '1e80c192800c0333fd7d8cc7803b5aed', '管理员', '2019-11-26 08:20:55', NULL, NULL, NULL, '0');
INSERT INTO `b_books` VALUES ('2b97789e7c924abab5ac94d9fd7', '愿你迷路到我身旁', '蕊希', '百花洲文艺出版社 ', '是', '青春文学', '4-1', '/static/2b97789e7c924abab5ac94d9fd7.jpg', '2', '1e80c192800c0333fd7d8cc7803b5aed', '管理员', '2019-11-26 08:23:30', NULL, NULL, NULL, '0');
INSERT INTO `b_books` VALUES ('2b97789e7c924abab5ac94d9fd9', '乖，摸摸头2.0', '大冰', '北京联合出版有限公司', '是', '社会', '5-1', '/static/2b97789e7c924abab5ac94d9fd9.jpg', '2', '1e80c192800c0333fd7d8cc7803b5aed', '管理员', '2019-11-26 08:24:03', NULL, NULL, NULL, '0');
INSERT INTO `b_books` VALUES ('2b97789e7c924abab5ac94d9fde', 'java从入门到精通', '国家863中部软件孵化器', '人民邮电出版社', '是', '计算机技术', '1-1', '/static/2b97789e7c924abab5ac94d9fde.jpg', '2', '1e80c192800c0333fd7d8cc7803b5aed', '管理员', '2019-11-26 08:24:28', NULL, NULL, NULL, '0');

-- ----------------------------
-- Table structure for b_boorow_books
-- ----------------------------
DROP TABLE IF EXISTS `b_boorow_books`;
CREATE TABLE `b_boorow_books`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `readers_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '借书人id',
  `book_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '书籍id',
  `borrow_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '借书日期',
  `expect_return_time` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '预计归还日期',
  `isreturn` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '否' COMMENT '是否归还',
  `create_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人id',
  `create_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人名称',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建日期',
  `update_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人id',
  `update_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '借书表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_boorow_books
-- ----------------------------
INSERT INTO `b_boorow_books` VALUES ('1e80c192800c0333fd7d8cc7803b5ae4', '1e80c192800c0333fd7d8cc7803b5ae2', '2b97789e7c924abab5ac94d9fd7', '2019-11-20 19:55:24', '2019-11-30 19:55:01', '否', '1e80c192800c0333fd7d8cc7803b5aed', '管理员', '2019-11-20 19:55:24', NULL, NULL, NULL);
INSERT INTO `b_boorow_books` VALUES ('1e80c192800c0333fd7d8cc780db5ae4', '1e80c192800c0333fd7d8cc7803b5ae3', '2b97789e7c924abab5ac94d9fd2', '2019-11-20 19:58:32', '2019-11-21 19:58:22', '是', '1e80c192800c0333fd7d8cc7803b5aed', '管理员', '2019-11-20 19:58:32', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for b_readers
-- ----------------------------
DROP TABLE IF EXISTS `b_readers`;
CREATE TABLE `b_readers`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `reader_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '读者名称',
  `reader_age` int(11) NOT NULL COMMENT '读者年龄',
  `reader_sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '读者性别',
  `reader_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '读者身份证号',
  `reader_adderss` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '读者地址',
  `reader_prestige` int(11) NOT NULL DEFAULT 100 COMMENT '读者信用值',
  `reader_number` int(11) NOT NULL COMMENT '读者借书次数',
  `expire_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '借书卡截止日期',
  `deposit` decimal(10, 0) NOT NULL COMMENT '押金',
  `create_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人id',
  `create_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人名称',
  `update_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人id',
  `update_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `create_time` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `del_flag` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除状态（-1 删除  0 正常）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '读者表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_readers
-- ----------------------------
INSERT INTO `b_readers` VALUES ('1e80c192800c0333fd7d8cc7803b5ae2', '王红', 19, '女', '312452322215463252', '山东省', 100, 0, '2019-11-20 19:53:15', 100, '1e80c192800c0333fd7d8cc7803b5aed', '管理员', NULL, NULL, '2019-11-20 19:52:32', NULL, '0');
INSERT INTO `b_readers` VALUES ('1e80c192800c0333fd7d8cc7803b5ae3', '张三', 21, '男', '312452322215463251', '山东省', 100, 0, '2019-11-20 19:52:34', 100, '1e80c192800c0333fd7d8cc7803b5aed', '管理员', NULL, NULL, '2019-11-20 19:52:32', NULL, '0');

-- ----------------------------
-- Table structure for b_return_books
-- ----------------------------
DROP TABLE IF EXISTS `b_return_books`;
CREATE TABLE `b_return_books`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `book_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '书籍id',
  `return_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '还书人姓名',
  `overdue` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否超期',
  `overtime_money` decimal(10, 0) NOT NULL COMMENT '超时扣费',
  `overtime_days` int(11) NOT NULL COMMENT '超时天数',
  `readers_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '借书人id',
  `borrow_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '借书日期',
  `expect_return_time` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '预计归还日期',
  `return_time` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '实际归还日期',
  `create_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人id',
  `create_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人名称',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建日期',
  `update_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人id',
  `update_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '还书表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of b_return_books
-- ----------------------------
INSERT INTO `b_return_books` VALUES ('2b56289e7c924abab5ac94d9fd6', '2b97789e7c924abab5ac94d9fd6', '王红', '否', 0, 0, '1e80c192800c0333fd7d8cc7803b5ae2', '2019-11-26 13:22:59', '2019-11-28 21:22:30', '2019-11-28 21:22:34', '5961fa56378a37e6030bc566a1664b98', '管理员', '2019-11-26 13:22:59', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键（UUID）',
  `menu_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名',
  `menu_icon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单图标',
  `menu_path` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '路由',
  `menu_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '访问地址',
  `order` int(11) NOT NULL COMMENT '排序',
  `create_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人id',
  `create_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人名称',
  `update_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人id',
  `update_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键（UUID）',
  `role_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `create_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人id',
  `create_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人名称',
  `update_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人id',
  `update_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `del_flag` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '删除状态（-1 删除  0 正常）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('0c3ca0e0da0dbe0b57831db2a5b3b747', '管理员', '1e80c192800c0333fd7d8cc7803b5aed', 'admin', NULL, NULL, '2019-11-17 20:52:24', NULL, '0');
INSERT INTO `sys_role` VALUES ('a1d6a8b7b9066a78be616eafe42656fe', '管理员1', '1e80c192800c0333fd7d8cc7803b5aed', 'admin', NULL, NULL, '2019-11-17 20:46:32', NULL, '-1');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键（UUID）',
  `role_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT ' 角色id',
  `menu_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单id',
  `create_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人id',
  `create_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人名称',
  `update_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人id',
  `update_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色菜单关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `holder` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '账号持有者',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系电话',
  `cread_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人id',
  `cread_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人名称',
  `update_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人id',
  `update_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `del_flag` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '删除状态（-1 删除  0 正常）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1e80c192800c0333fd7d8cc7803b5afd', 'test', '812a26358ab25a4046525ed71f3a0b10', '测试用户', '15165017856', '1e80c192800c0333fd7d8cc7803b5aed', '管理员', NULL, NULL, '2019-11-14 17:33:27', NULL, '0');
INSERT INTO `sys_user` VALUES ('5961fa56378a37e6030bc566a1664b98', 'admin', 'admin123', '管理员', '15165201324', '1e80c192800c0333fd7d8cc7803b5aed', '管理员', NULL, NULL, '2019-11-26 06:52:26', NULL, '0');
-- ----------------------------
-- Table structure for sys_user_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_log`;
CREATE TABLE `sys_user_log`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `user_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录IP',
  `login_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '登录时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户登录日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_log
-- ----------------------------
INSERT INTO `sys_user_log` VALUES ('05ec60a24444ac72f02127e5e583c2ea', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-11-26 15:33:34');
INSERT INTO `sys_user_log` VALUES ('09d8c48613a1d1d5310e7d077bae306f', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-12-01 14:41:25');
INSERT INTO `sys_user_log` VALUES ('0b3656fb5398f627cd78db91133c63d3', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-15 14:04:47');
INSERT INTO `sys_user_log` VALUES ('13b10a27c0dbf77f2a47f87c66d7bfe2', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 13:50:54');
INSERT INTO `sys_user_log` VALUES ('180ad62cd05c763a66e1551551a7a8cb', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-12-01 10:01:56');
INSERT INTO `sys_user_log` VALUES ('187d70b68a0b008c3b4b62078efba642', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-11-26 22:59:09');
INSERT INTO `sys_user_log` VALUES ('195866e684ac11f379664c99eb242964', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 13:50:55');
INSERT INTO `sys_user_log` VALUES ('201ac2b2675a380bf8ad66cc7a2bb4d2', '1e80c192800c0333fd7d8cc7803b5aed', '0:0:0:0:0:0:0:1', '2019-11-17 15:30:34');
INSERT INTO `sys_user_log` VALUES ('211bbb22fae6537f17f281d79402cb93', '1e80c192800c0333fd7d8cc7803b5afd', '127.0.0.1', '2019-11-14 17:33:45');
INSERT INTO `sys_user_log` VALUES ('23784efc5a01ef943d7a852ac0676391', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-11-26 21:04:42');
INSERT INTO `sys_user_log` VALUES ('259d097161c05fabc069b0435ba8f56f', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-26 14:45:32');
INSERT INTO `sys_user_log` VALUES ('27c76cbf05969436d77a061d4b27fcee', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-12-01 14:15:58');
INSERT INTO `sys_user_log` VALUES ('2861141f62e14a2395e50fb8b7b93063', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-14 18:03:10');
INSERT INTO `sys_user_log` VALUES ('2f0f047430683ec82bb2e6fe8dbc72c7', '1e80c192800c0333fd7d8cc7803b5aed', '0:0:0:0:0:0:0:1', '2019-11-17 16:55:19');
INSERT INTO `sys_user_log` VALUES ('3aba62ffeefb3b27d6972adb23647c33', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 20:46:04');
INSERT INTO `sys_user_log` VALUES ('3b2e4fca4967cf4359b14612894af4db', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-14 17:20:32');
INSERT INTO `sys_user_log` VALUES ('4024c57ecbe461742921331fb9af0b6c', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 15:07:46');
INSERT INTO `sys_user_log` VALUES ('451ba13e3d396d4e5cb3e450973a12dd', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-14 19:38:09');
INSERT INTO `sys_user_log` VALUES ('4a92953ecbfccc43778fb52d404f14bd', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-11-26 14:53:09');
INSERT INTO `sys_user_log` VALUES ('51e47c42097c1bf2c7e2e1804739a1fb', '1e80c192800c0333fd7d8cc7803b5afd', '127.0.0.1', '2019-11-14 17:35:37');
INSERT INTO `sys_user_log` VALUES ('52295daea134336a00226329833d2749', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 15:00:52');
INSERT INTO `sys_user_log` VALUES ('589b679a6820ce918ece05aa2376cd37', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-14 19:04:30');
INSERT INTO `sys_user_log` VALUES ('5d1c96673dd5f4b1b743bff1863ad18c', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-11-26 20:54:35');
INSERT INTO `sys_user_log` VALUES ('5eed145d781ea67edce0dd47fb5daa2c', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 09:06:05');
INSERT INTO `sys_user_log` VALUES ('609e3bdec80bed5c2e32c9e96a3f4241', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 15:14:36');
INSERT INTO `sys_user_log` VALUES ('6601360ce19f398bae65d30f42bd2acc', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-12-01 14:22:03');
INSERT INTO `sys_user_log` VALUES ('66f7d82c785536fad23a016e9be8df49', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-11-29 16:11:45');
INSERT INTO `sys_user_log` VALUES ('67b89c5d951b3bbc614a16dbcf246cb2', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-11-26 21:02:01');
INSERT INTO `sys_user_log` VALUES ('68840e13e6dd72a64d9926d60cc6967b', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-12-01 14:51:34');
INSERT INTO `sys_user_log` VALUES ('6c2517a3aa8ded9c73a75394c5ffe1fe', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-12-01 10:03:55');
INSERT INTO `sys_user_log` VALUES ('7140bdaeb77449e0e29cde901cd777cc', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-11-26 22:48:39');
INSERT INTO `sys_user_log` VALUES ('72f9c5ca78d798ce93d3230b8fb25503', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 14:54:30');
INSERT INTO `sys_user_log` VALUES ('79bc71727832d285c72831c5de7f676b', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-11-26 16:47:38');
INSERT INTO `sys_user_log` VALUES ('7db9721c41bb4a6c13c33ebc99f1848e', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 14:52:50');
INSERT INTO `sys_user_log` VALUES ('7e5b8138ff37ccfb831eeb19ae609ef7', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-14 18:05:26');
INSERT INTO `sys_user_log` VALUES ('7ec03f40f8b08355e25c5f07a5ec9023', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 11:42:02');
INSERT INTO `sys_user_log` VALUES ('85be6e44112876f9848a01ff12acba7e', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-14 18:08:16');
INSERT INTO `sys_user_log` VALUES ('8a3bc40baa7b9122655ddcd97687ad5f', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-14 18:56:13');
INSERT INTO `sys_user_log` VALUES ('8c2e35fe38c32cc591b68981ea1572db', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-11-26 21:46:18');
INSERT INTO `sys_user_log` VALUES ('9c74ab08b5f31a211db5e51188c8a11b', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-11-26 21:31:07');
INSERT INTO `sys_user_log` VALUES ('a09bfcae6cb9dc584395f1dcbe0a12c0', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 21:30:19');
INSERT INTO `sys_user_log` VALUES ('a88f63639c51e70ea3aad3d7bf3ed367', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 09:51:24');
INSERT INTO `sys_user_log` VALUES ('ab8d30e423fd62a38e9bc6a691bcd0fe', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-14 18:03:10');
INSERT INTO `sys_user_log` VALUES ('afa08642640718ef96890aa86681cfbc', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 20:37:06');
INSERT INTO `sys_user_log` VALUES ('b842bc69005dd14c6aa605281f4f9b5b', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 09:12:45');
INSERT INTO `sys_user_log` VALUES ('b9f2ce3cb27904dbfa70d249556eaf43', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-11-26 23:13:06');
INSERT INTO `sys_user_log` VALUES ('bc3ebe3da255b3909e41d90579d80751', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-14 17:30:23');
INSERT INTO `sys_user_log` VALUES ('bed7a8e8cf6c292eb04407b4393df272', '1e80c192800c0333fd7d8cc7803b5aed', '0:0:0:0:0:0:0:1', '2019-11-17 17:05:28');
INSERT INTO `sys_user_log` VALUES ('c33bea49b589e925b626ffb85b95a2c6', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 13:38:21');
INSERT INTO `sys_user_log` VALUES ('ca263d7c0a41242e0222c922509cd9d7', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-11-26 20:42:38');
INSERT INTO `sys_user_log` VALUES ('cbe83159c56cafc4779ec2b4410cfb83', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 09:12:47');
INSERT INTO `sys_user_log` VALUES ('cf8ed9c819cbdcb686b6acc3262f8bd1', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 14:59:47');
INSERT INTO `sys_user_log` VALUES ('d00f0b06adc3c2d47df449daf6b72821', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-12-01 13:57:50');
INSERT INTO `sys_user_log` VALUES ('d6fa066bec9b2fb1319b84dcfedf0c31', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-14 18:03:10');
INSERT INTO `sys_user_log` VALUES ('d7394875ba6c81cff847eba6c2a027f0', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-14 18:06:37');
INSERT INTO `sys_user_log` VALUES ('d7da5c6bc5f6dba7f65e96e291740787', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-11-26 20:14:23');
INSERT INTO `sys_user_log` VALUES ('d9bb98bccf925167f9daa98f7218c8be', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-11-26 21:27:43');
INSERT INTO `sys_user_log` VALUES ('e01980b1bf4fce6ddbc0ef6e2e43036a', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 20:41:51');
INSERT INTO `sys_user_log` VALUES ('e07ddd815585f03b6717bbae52b7355f', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-12-01 13:54:23');
INSERT INTO `sys_user_log` VALUES ('e99c7b075b6e215fee9035cfc2486971', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 13:50:53');
INSERT INTO `sys_user_log` VALUES ('ee3dd2686dcbd45ffed1d7a7fafe709d', '5961fa56378a37e6030bc566a1664b98', '127.0.0.1', '2019-12-01 14:26:35');
INSERT INTO `sys_user_log` VALUES ('f5769a1646d70bce437423186717d167', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 14:53:09');
INSERT INTO `sys_user_log` VALUES ('f6b659e31629c45d89b2de21d3558a29', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-17 14:01:13');
INSERT INTO `sys_user_log` VALUES ('fa4abbe8aa2c5f61f0b7c5030b1e4918', '1e80c192800c0333fd7d8cc7803b5aed', '127.0.0.1', '2019-11-14 18:05:26');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键（UUID）',
  `user_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `role_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色id',
  `create_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人id',
  `create_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人名称',
  `update_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人id',
  `update_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人名称',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户角色关联表' ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
