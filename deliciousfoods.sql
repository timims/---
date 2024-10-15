SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nickName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int NULL DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生日',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '编号',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `cardId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '身份证',
  `level` int NOT NULL DEFAULT 1 COMMENT '权限等级',
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_info
-- ----------------------------
INSERT INTO `admin_info` VALUES (1, 'admin', '123456', '管理员', '男', 22, '2023-08-31 11:11:53', '18843232356', '上海市', '111', 'aa@163.com', '342425199001116372', 1, NULL);
INSERT INTO `admin_info` VALUES (2, 'admin2', 'abcdef', '管理员', '女', 23, '2023-08-31 11:11:53', '18843234182', '北京市', '222', 'bb@163.com', '342425199001116376', 1, NULL);

-- ----------------------------
-- Table structure for advertiser_info
-- ----------------------------
DROP TABLE IF EXISTS `advertiser_info`;
CREATE TABLE `advertiser_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公告名称',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '公告内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公告时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of advertiser_info
-- ----------------------------
INSERT INTO `advertiser_info` VALUES (1, '系统公告', '欢迎来到该平台', '2023-8-30 23:39:41');
INSERT INTO `advertiser_info` VALUES (2, '系统公告', '这是系统公告，管理员可以在后台修改', '2023-08-31 11:11:53');
INSERT INTO `advertiser_info` VALUES (3, '系统公告', '这是系统公告，管理员可以在后台修改', '2023-08-31 11:11:53');
INSERT INTO `advertiser_info` VALUES (4, '系统公告', '这是系统公告，管理员可以在后台修改', '2023-08-31 11:11:53');
INSERT INTO `advertiser_info` VALUES (5, '系统公告', '这是系统公告，管理员可以在后台修改', '2023-08-31 11:11:53');
INSERT INTO `advertiser_info` VALUES (6, '系统公告', '这是系统公告，管理员可以在后台修改', '2023-08-31 11:11:53');
INSERT INTO `advertiser_info` VALUES (7, '系统公告', '这是系统公告，管理员可以在后台修改', '2023-08-31 11:11:53');
INSERT INTO `advertiser_info` VALUES (8, '系统公告', '这是系统公告，管理员可以在后台修改', '2023-08-31 11:11:53');
INSERT INTO `advertiser_info` VALUES (9, '系统公告', '这是系统公告，管理员可以在后台修改', '2023-08-31 11:11:53');
INSERT INTO `advertiser_info` VALUES (10, '系统公告', '这是系统公告，管理员可以在后台修改', '2023-08-31 11:11:53');

-- ----------------------------
-- Table structure for classify_info
-- ----------------------------
DROP TABLE IF EXISTS `classify_info`;
CREATE TABLE `classify_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `descroiption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '菜谱大类信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of classify_info
-- ----------------------------
INSERT INTO `classify_info` VALUES (1, '功能性调理', '功能性调理');
INSERT INTO `classify_info` VALUES (2, '人群膳食', '人群膳食');
INSERT INTO `classify_info` VALUES (3, '疾病调理', '疾病调理');
INSERT INTO `classify_info` VALUES (4, '功效营养', '功效营养');

-- ----------------------------
-- Table structure for collect_info
-- ----------------------------
DROP TABLE IF EXISTS `collect_info`;
CREATE TABLE `collect_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `foodsId` bigint NULL DEFAULT NULL COMMENT '菜谱id',
  `notesId` bigint NULL DEFAULT NULL COMMENT '笔记id',
  `userId` bigint NULL DEFAULT NULL,
  `level` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '收藏信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of collect_info
-- ----------------------------
INSERT INTO `collect_info` VALUES (4, '油焖大虾', '2023-08-31 16:18:20', 3, NULL, 2, 2);
INSERT INTO `collect_info` VALUES (7, '蛋炒饭', '2023-08-31 17:38:49', NULL, 1, 1, 2);
INSERT INTO `collect_info` VALUES (8, '蛋炒饭', '2023-08-31 17:40:50', NULL, 1, 2, 2);
INSERT INTO `collect_info` VALUES (9, '可乐鸡翅', '2023-08-31 18:02:00', 1, NULL, 3, 2);
INSERT INTO `collect_info` VALUES (10, '红烧肉', '2023-08-31 18:16:05', 2, NULL, 3, 2);
INSERT INTO `collect_info` VALUES (12, '老鸭汤', '2023-08-31 21:43:37', 12, NULL, 11, 2);
INSERT INTO `collect_info` VALUES (13, '什锦', '2023-08-31 22:01:04', 13, NULL, 2, 2);
INSERT INTO `collect_info` VALUES (14, '可乐鸡翅', '2023-08-31 22:04:34', 1, NULL, 12, 2);
INSERT INTO `collect_info` VALUES (15, '红烧肉', '2023-10-29 19:02:42', 2, NULL, 1, 2);
INSERT INTO `collect_info` VALUES (16, '可乐鸡翅', '2023-10-30 23:33:27', 5, NULL, 2, 2);
INSERT INTO `collect_info` VALUES (17, '好吃的', '2023-10-30 23:34:31', NULL, 5, 2, 2);
INSERT INTO `collect_info` VALUES (18, '油焖大虾', '2023-09-01 17:13:50', 3, NULL, 1, 1);

-- ----------------------------
-- Table structure for comment_notes_info
-- ----------------------------
DROP TABLE IF EXISTS `comment_notes_info`;
CREATE TABLE `comment_notes_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论时间',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论人',
  `foreignId` bigint NULL DEFAULT NULL COMMENT '关联的模块id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '笔记评论信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment_notes_info
-- ----------------------------
INSERT INTO `comment_notes_info` VALUES (1, '好吃啊', '2023-09-30 16:20:37', '赵千里', 1);
INSERT INTO `comment_notes_info` VALUES (2, '1111', '2023-09-30 16:21:37', '赵千里', 1);
INSERT INTO `comment_notes_info` VALUES (3, '看起来不错哦', '2023-09-30 18:16:32', '钱优优', 1);
INSERT INTO `comment_notes_info` VALUES (4, '哈哈哈', '2023-09-30 21:42:27', '张三', 1);
INSERT INTO `comment_notes_info` VALUES (5, '哈哈哈', '2023-09-30 22:02:03', '赵千里', 2);
INSERT INTO `comment_notes_info` VALUES (6, '哈哈哈', '2023-10-29 19:02:04', '张天志', 5);
INSERT INTO `comment_notes_info` VALUES (7, '非常好吃', '2023-10-30 23:34:18', '赵千里', 5);
INSERT INTO `comment_notes_info` VALUES (8, '....', '2023-11-01 17:14:02', 'admin', 5);

-- ----------------------------
-- Table structure for foods_material_info
-- ----------------------------
DROP TABLE IF EXISTS `foods_material_info`;
CREATE TABLE `foods_material_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `fileId` bigint NULL DEFAULT NULL COMMENT '文件id',
  `fileName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件名',
  `userName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '上传人',
  `level` int NULL DEFAULT NULL COMMENT '用户等级',
  `uploadUserId` bigint NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '食材信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of foods_material_info
-- ----------------------------
INSERT INTO `foods_material_info` VALUES (1, '土豆', '蔬菜', 16, '土豆.jpg', 'admin', 1, 1);
INSERT INTO `foods_material_info` VALUES (2, '山药', '蔬菜', 17, '山药.jpg', 'admin', 1, 1);
INSERT INTO `foods_material_info` VALUES (3, '白菜', '蔬菜', 18, '白菜.jpg', 'admin', 1, 1);
INSERT INTO `foods_material_info` VALUES (4, '羊肉', '肉类', 19, '羊肉.jpg', 'admin', 1, 1);
INSERT INTO `foods_material_info` VALUES (5, '牛肉', '肉类', 20, '牛肉.jpg', 'admin', 1, 1);
INSERT INTO `foods_material_info` VALUES (6, '鱼', '鱼类', 21, '鱼.jpg', 'admin', 1, 1);
INSERT INTO `foods_material_info` VALUES (7, '茄子', '蔬菜', 24, '茄子.jpg', 'admin', 1, 1);
INSERT INTO `foods_material_info` VALUES (8, '鲍鱼', '鱼类', 25, '鲍鱼.jpg', 'admin', 1, 1);

-- ----------------------------
-- Table structure for foods_menu_info
-- ----------------------------
DROP TABLE IF EXISTS `foods_menu_info`;
CREATE TABLE `foods_menu_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `tips` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '菜谱标签',
  `subId` bigint NULL DEFAULT NULL COMMENT '菜谱小类id',
  `fileId` bigint NULL DEFAULT NULL COMMENT '文件id',
  `fileName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件名',
  `userName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '上传人',
  `level` int NULL DEFAULT NULL COMMENT '用户等级',
  `uploadUserId` bigint NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '菜谱信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of foods_menu_info
-- ----------------------------
INSERT INTO `foods_menu_info` VALUES (1, '可乐鸡翅', '每一道菜都是一台时光机', '家常菜', 13, 13, '可乐鸡翅.jpg', '陈阳', 2, 1);
INSERT INTO `foods_menu_info` VALUES (2, '红烧肉', '每一道菜都是一台时光机', '美味', 13, 14, '红烧肉.jpeg', '风采臣', 2, 2);
INSERT INTO `foods_menu_info` VALUES (3, '油焖大虾', '每一道菜都是一台时光机', '家常菜', 1, 15, '大虾.jpeg', '风采臣', 2, 2);
INSERT INTO `foods_menu_info` VALUES (12, '老鸭汤', '老鸭汤', '美味', 1, 26, '老鸭汤.jpg', '叶无缺', 2, 11);
INSERT INTO `foods_menu_info` VALUES (13, '什锦', '什锦', '美味', 4, 27, '什锦.jpeg', '风采臣', 2, 2);

-- ----------------------------
-- Table structure for message_info
-- ----------------------------
DROP TABLE IF EXISTS `message_info`;
CREATE TABLE `message_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '回答内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '回答时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '趣味答题信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of message_info
-- ----------------------------
INSERT INTO `message_info` VALUES (1, '霍青山', '应该是叫花鸡，非常好吃', '2023-09-30 11:11:53');
INSERT INTO `message_info` VALUES (11, '陈阳', '蛋糕', '2023-09-30 18:15:40');
INSERT INTO `message_info` VALUES (12, '叶无缺', '烧饼', '2023-09-30 21:42:44');
INSERT INTO `message_info` VALUES (13, '叶无缺', '西瓜', '2023-09-30 21:59:36');
INSERT INTO `message_info` VALUES (14, '陈阳', '北京烤鸭', '2023-10-29 19:02:22');
INSERT INTO `message_info` VALUES (15, '风采臣', '红烧鲫鱼', '2023-10-30 23:35:39');
INSERT INTO `message_info` VALUES (16, 'admin', '...', '2023-12-01 17:14:27');

-- ----------------------------
-- Table structure for news_info
-- ----------------------------
DROP TABLE IF EXISTS `news_info`;
CREATE TABLE `news_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '饮食资讯信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news_info
-- ----------------------------
INSERT INTO `news_info` VALUES (1, '健康饮食小提示', '饭后吃水果是错误的观念，应是饭前吃水果');
INSERT INTO `news_info` VALUES (2, '喝豆浆注意事项', '喝豆浆时不要加鸡蛋及红糖，也不要喝太多');
INSERT INTO `news_info` VALUES (3, '秋季养生', '常吃宵夜，会得胃病，因为胃得不到休息');

-- ----------------------------
-- Table structure for notes_info
-- ----------------------------
DROP TABLE IF EXISTS `notes_info`;
CREATE TABLE `notes_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '上传时间',
  `userId` bigint NULL DEFAULT NULL COMMENT '用户id',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '公告内容',
  `status` int NULL DEFAULT 0 COMMENT '审核状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '笔记信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notes_info
-- ----------------------------

-- ----------------------------
-- Table structure for nx_system_file_info
-- ----------------------------
DROP TABLE IF EXISTS `nx_system_file_info`;
CREATE TABLE `nx_system_file_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `originName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '原始文件名',
  `fileName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '存储文件名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '文件信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nx_system_file_info
-- ----------------------------
INSERT INTO `nx_system_file_info` VALUES (12, '可乐鸡翅.jpg', '可乐鸡翅1601436741026.jpg');
INSERT INTO `nx_system_file_info` VALUES (13, '可乐鸡翅.jpg', '可乐鸡翅1601438117374.jpg');
INSERT INTO `nx_system_file_info` VALUES (14, '红烧肉.jpeg', '红烧肉1601439136536.jpeg');
INSERT INTO `nx_system_file_info` VALUES (15, '大虾.jpeg', '大虾1601439149080.jpeg');
INSERT INTO `nx_system_file_info` VALUES (16, '土豆.jpg', '土豆1601459240858.jpg');
INSERT INTO `nx_system_file_info` VALUES (17, '山药.jpg', '山药1601459251759.jpg');
INSERT INTO `nx_system_file_info` VALUES (18, '白菜.jpg', '白菜1601459261990.jpg');
INSERT INTO `nx_system_file_info` VALUES (19, '羊肉.jpg', '羊肉1601459272290.jpg');
INSERT INTO `nx_system_file_info` VALUES (20, '牛肉.jpg', '牛肉1601459286317.jpg');
INSERT INTO `nx_system_file_info` VALUES (21, '鱼.jpg', '鱼1601459303467.jpg');
INSERT INTO `nx_system_file_info` VALUES (22, '茄子.jpg', '茄子1601459321029.jpg');
INSERT INTO `nx_system_file_info` VALUES (23, '鲍鱼.jpg', '鲍鱼1601459358338.jpg');
INSERT INTO `nx_system_file_info` VALUES (24, '茄子.jpg', '茄子1601473095219.jpg');
INSERT INTO `nx_system_file_info` VALUES (25, '鲍鱼.jpg', '鲍鱼1601473116020.jpg');
INSERT INTO `nx_system_file_info` VALUES (26, '老鸭汤.jpg', '老鸭汤1601473385688.jpg');
INSERT INTO `nx_system_file_info` VALUES (27, '什锦.jpeg', '什锦1601474433677.jpeg');

-- ----------------------------
-- Table structure for praise_info
-- ----------------------------
DROP TABLE IF EXISTS `praise_info`;
CREATE TABLE `praise_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `notesId` bigint NULL DEFAULT NULL COMMENT '笔记id',
  `foodsId` bigint NULL DEFAULT NULL COMMENT '菜谱id',
  `userId` bigint NULL DEFAULT NULL,
  `level` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '笔记点赞信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of praise_info
-- ----------------------------
INSERT INTO `praise_info` VALUES (12, '可乐鸡翅', '2023-09-30 17:31:22', NULL, 1, 2, 2);
INSERT INTO `praise_info` VALUES (13, '可乐鸡翅', '2023-09-30 17:31:32', NULL, 1, 1, 2);
INSERT INTO `praise_info` VALUES (14, '蛋炒饭', '2023-09-30 17:38:15', 1, NULL, 1, 2);
INSERT INTO `praise_info` VALUES (15, '蛋炒饭', '2023-09-30 17:39:57', 1, NULL, 2, 2);
INSERT INTO `praise_info` VALUES (16, '可乐鸡翅', '2023-09-30 18:01:57', NULL, 1, 3, 2);
INSERT INTO `praise_info` VALUES (17, '红烧肉', '2023-09-30 18:16:02', NULL, 2, 3, 2);
INSERT INTO `praise_info` VALUES (18, '可乐鸡翅', '2023-09-30 21:42:00', NULL, 1, 11, 2);
INSERT INTO `praise_info` VALUES (19, '老鸭汤', '2023-09-30 21:43:32', NULL, 12, 11, 2);
INSERT INTO `praise_info` VALUES (20, '油焖大虾', '2023-09-30 22:00:01', NULL, 3, 2, 2);
INSERT INTO `praise_info` VALUES (21, '什锦', '2023-09-30 22:01:01', NULL, 13, 2, 2);
INSERT INTO `praise_info` VALUES (22, '可乐鸡翅', '2023-09-30 22:04:31', NULL, 1, 12, 2);
INSERT INTO `praise_info` VALUES (23, '油焖大虾', '2023-10-29 18:54:58', NULL, 3, 1, 2);
INSERT INTO `praise_info` VALUES (24, '红烧肉', '2023-10-29 19:02:39', NULL, 2, 1, 2);
INSERT INTO `praise_info` VALUES (25, '可乐鸡翅', '2023-10-30 23:33:19', NULL, 5, 2, 2);
INSERT INTO `praise_info` VALUES (26, '好吃的', '2023-10-30 23:34:28', 5, NULL, 2, 2);

-- ----------------------------
-- Table structure for sub_classify_info
-- ----------------------------
DROP TABLE IF EXISTS `sub_classify_info`;
CREATE TABLE `sub_classify_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `classifyId` bigint NULL DEFAULT NULL COMMENT '菜谱大类id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '菜谱小类信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sub_classify_info
-- ----------------------------
INSERT INTO `sub_classify_info` VALUES (1, '清热去火', '清热去火', 1);
INSERT INTO `sub_classify_info` VALUES (2, '减肥', '减肥', 1);
INSERT INTO `sub_classify_info` VALUES (3, '祛痰', '祛痰', 1);
INSERT INTO `sub_classify_info` VALUES (4, '滋阴壮阳', '滋阴壮阳', 1);
INSERT INTO `sub_classify_info` VALUES (5, '孕妇', '孕妇', 2);
INSERT INTO `sub_classify_info` VALUES (6, '老人', '老人', 2);
INSERT INTO `sub_classify_info` VALUES (7, '产妇', '产妇', 2);
INSERT INTO `sub_classify_info` VALUES (8, '糖尿病', '糖尿病', 3);
INSERT INTO `sub_classify_info` VALUES (9, '高血压', '高血压', 3);
INSERT INTO `sub_classify_info` VALUES (10, '痛风', '痛风', 3);
INSERT INTO `sub_classify_info` VALUES (11, '补钙', '补钙', 4);
INSERT INTO `sub_classify_info` VALUES (12, '贫血', '贫血', 4);
INSERT INTO `sub_classify_info` VALUES (13, '提高免疫力', '提高免疫力', 4);
INSERT INTO `sub_classify_info` VALUES (14, '失眠', '失眠', 4);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nickName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int NULL DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生日',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `cardId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '身份证',
  `level` int NOT NULL DEFAULT 2 COMMENT '权限等级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, 'pure', '123456', '慕容海', '男', 22, '2023-08-30 11:11:53', '18843232356', '上海市', 'aa@163.com', '342425199001116372', 2);
INSERT INTO `user_info` VALUES (2, 'aurora', '123456', '陈鹤', '男', 23, '2023-08-30 11:11:53', '18843232356', '北京市', 'bb@163.com', '342425199001116376', 2);
INSERT INTO `user_info` VALUES (3, 'lemon', '123456', '程婉欣', '女', 25, '2023-08-30 11:11:53', '18843232356', '合肥市', 'cc@163.com', '342425199001116323', 2);
INSERT INTO `user_info` VALUES (4, 'cherry', '123456', '刘雅静', '女', 24, '2023-08-30 11:11:53', '18843232356', '北京市', 'hahaha@126.com', '342425199001116837', 2);

SET FOREIGN_KEY_CHECKS = 1;
