DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `slides_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播图ID：',
  `title` varchar(64) DEFAULT NULL COMMENT '标题：',
  `content` varchar(255) DEFAULT NULL COMMENT '内容：',
  `url` varchar(255) DEFAULT NULL COMMENT '链接：',
  `img` varchar(255) DEFAULT NULL COMMENT '轮播图：',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`slides_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='轮播图';
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `auth_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '授权ID：',
  `user_group` varchar(64) DEFAULT NULL COMMENT '用户组：',
  `mod_name` varchar(64) DEFAULT NULL COMMENT '模块名：',
  `table_name` varchar(64) DEFAULT NULL COMMENT '表名：',
  `page_title` varchar(255) DEFAULT NULL COMMENT '页面标题：',
  `path` varchar(255) DEFAULT NULL COMMENT '路由路径：',
  `position` varchar(32) DEFAULT NULL COMMENT '位置：',
  `mode` varchar(32) NOT NULL DEFAULT '_blank' COMMENT '跳转方式：',
  `add` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可增加：',
  `del` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可删除：',
  `set` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改：',
  `get` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可查看：',
  `field_add` text COMMENT '添加字段：',
  `field_set` text COMMENT '修改字段：',
  `field_get` text COMMENT '查询字段：',
  `table_nav_name` varchar(500) DEFAULT NULL COMMENT '跨表导航名称：',
  `table_nav` varchar(500) DEFAULT NULL COMMENT '跨表导航：',
  `option` text COMMENT '配置：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户权限管理';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文件上传';
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `forum_type`;
CREATE TABLE `forum_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `icon` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '分类图标：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='论坛分类';
insert into `forum_type` values ('1','分类一','分类一','/article/list?type_id=1','0',null,'2023-12-31 18:21:49.0','2023-12-31 18:21:49.0');
insert into `forum_type` values ('2','分类二','分类二','/article/list?type_id=2','0',null,'2023-12-31 18:21:49.0','2023-12-31 18:21:49.0');
insert into `forum_type` values ('3','分类三','分类三','/article/list?type_id=3','0',null,'2023-12-31 18:21:49.0','2023-12-31 18:21:49.0');
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告id：',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：',
  `content` longtext COMMENT '正文：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公告';
insert into `notice` values ('1','网站公告','<p>公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。</p>','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0');
insert into `notice` values ('2','关于我们','<p>       一个网站要取得成功，要有先进的理念、先进的思想，更为重要的是抢占先机，及时行动。网络世界可谓一日千里、 日新月异，一个网站只有把握先机，抓住机遇，才</p><p>可能有更多的机会获得成功，可能处于网络行业发展的致高点，可能创建出成功的网站，才能能获得成功。要知道一种网站新模式在网络上只有保持几天的优势,因为人们很容易“COPY" 和模仿，因此，唯有不</p><p>断创新，不失时机地推出新的服务、新的模式、新的思想，网站才可能长久立于不败之地。</p>','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0');
insert into `notice` values ('3','联系方式','<h3>网站内容及品牌合作</h3><p>Email：xxxx@qq.com</p><h3>商务合作</h3><p>电话：010-xxxxxxx</p><p>Email：xxxx@qq.com</p><h3><br></h3><h3><br></h3><p><br></p>','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0');
insert into `notice` values ('4','网站介绍','<p>此处可上传文字、图片、视频、超链接、表格等内容区</p>','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0');
DROP TABLE IF EXISTS `sensitive_vocabulary`;
CREATE TABLE `sensitive_vocabulary` (
  `sensitive_vocabulary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '敏感词汇ID',
  `sensitive_vocabulary` varchar(64) DEFAULT NULL COMMENT '敏感词汇',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`sensitive_vocabulary_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='敏感词汇';
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `praise_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '点赞状态:1为点赞，0已取消',
  PRIMARY KEY (`praise_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='点赞';
DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='登陆访问时长';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
insert into `access_token` values ('101','84e31b291f2bde6b7ceb27af5fe8eee3',null,'2','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','1');
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '论坛id',
  `display` smallint(5) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `praise_len` int(10) DEFAULT '0' COMMENT '点赞数',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问数',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题',
  `keywords` varchar(125) DEFAULT NULL COMMENT '关键词',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签',
  `img` text COMMENT '封面图',
  `content` longtext COMMENT '正文',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '发帖人头像：',
  `type` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0' COMMENT '论坛分类：[0,1000]用来搜索指定类型的论坛帖',
  PRIMARY KEY (`forum_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='论坛';
insert into `forum` values ('1','100','1','小明','1','150','测试标题','关键字1','描述','#','标签','/upload/forum_1.jpg','<h1>fafgwagbagbwgwag</h1>','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','http://localhost:5000/upload/jingdian (11)_15.jpg','分类二');
insert into `forum` values ('2','100','2','小明','0','30','测试标题2','关键字2','dec','#','标签','/upload/forum_2.jpg','<p>测试文章内容2</p>','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','','分类一');
insert into `forum` values ('3','100','2','小红','0','42','测试标题3','关键字3','dec2','#','标签','/upload/forum_3.jpg','<p>测试文章内容3</p>','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','','分类二');
insert into `forum` values ('4','100','2','小红','0','22','测试标题4','关键字4','dec3','#','标签','/upload/forum_4.jpg','<p>测试文章内容4</p>','2023-12-31 18:21:49.0','2023-12-31 18:21:49.0','','分类三');
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='用户点击';
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论人ID：',
  `reply_to_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '回复评论ID：空为0',
  `content` longtext COMMENT '内容：',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论';
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `collect_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏ID：',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏人ID：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `title` varchar(255) DEFAULT NULL COMMENT '标题：',
  `img` varchar(255) DEFAULT NULL COMMENT '封面：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`collect_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收藏';
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员','2023-12-03 15:05:17.0',null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/admin_avatar.jpg','2023-12-31 17:35:13.0');
DROP TABLE IF EXISTS `member_users`;
CREATE TABLE `member_users`(member_users_id int(11) NOT NULL AUTO_INCREMENT COMMENT '会员用户ID',
`member_name` varchar(64) comment '会员姓名',
`member_gender` varchar(64) comment '会员性别',
`contact_information` varchar(64) comment '联系方式',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (member_users_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '会员用户';

DROP TABLE IF EXISTS `book_review_information`;
CREATE TABLE `book_review_information`(book_review_information_id int(11) NOT NULL AUTO_INCREMENT COMMENT '书评信息ID',
`book_title` varchar(64) comment '书籍书名',
`book_images` varchar(255) comment '书籍图片',
`book_author` varchar(64) comment '书籍作者',
`book_rating` varchar(64) comment '书籍评分',
`book_review` text comment '书籍书评',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`praise_len` int(11) DEFAULT 0 NOT NULL comment '点赞数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (book_review_information_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '书评信息';
insert into `book_review_information` values (1,'书籍书名1','/api/upload/1728673430896640000.jpg','书籍作者1','书籍评分1','书籍书评1',817,17,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_information` values (2,'书籍书名2','/api/upload/1567339625939206145.jpg','书籍作者2','书籍评分2','书籍书评2',609,555,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_information` values (3,'书籍书名3','/api/upload/1566585718254338048.jpg','书籍作者3','书籍评分3','书籍书评3',115,445,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_information` values (4,'书籍书名4','/api/upload/1566585640194146304.jpg','书籍作者4','书籍评分4','书籍书评4',452,317,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_information` values (5,'书籍书名5','/api/upload/1566585533310697473.jpg','书籍作者5','书籍评分5','书籍书评5',878,124,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_information` values (6,'书籍书名6','/api/upload/1567339768964972544.jpg','书籍作者6','书籍评分6','书籍书评6',140,713,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_information` values (7,'书籍书名7','/api/upload/1728673509393039361.jpg','书籍作者7','书籍评分7','书籍书评7',875,604,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_information` values (8,'书籍书名8','/api/upload/1728673913275154433.jpg','书籍作者8','书籍评分8','书籍书评8',96,758,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_information` values (9,'书籍书名9','/api/upload/1566584694433120257.jpg','书籍作者9','书籍评分9','书籍书评9',819,69,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_information` values (10,'书籍书名10','/api/upload/1728673982044962817.jpg','书籍作者10','书籍评分10','书籍书评10',762,619,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_information` values (11,'书籍书名11','/api/upload/1567339712610304001.jpg','书籍作者11','书籍评分11','书籍书评11',378,582,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_information` values (12,'书籍书名12','/api/upload/1566584554322395136.jpg','书籍作者12','书籍评分12','书籍书评12',118,60,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');

DROP TABLE IF EXISTS `book_review_comments`;
CREATE TABLE `book_review_comments`(book_review_comments_id int(11) NOT NULL AUTO_INCREMENT COMMENT '书评评论ID',
`member_users` int(11) DEFAULT 0 comment '会员用户',
`member_name` varchar(64) comment '会员姓名',
`book_title` varchar(64) comment '书籍书名',
`book_images` varchar(255) comment '书籍图片',
`book_author` varchar(64) comment '书籍作者',
`book_review` text comment '书籍书评',
`book_reviews` text comment '书籍评论',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`praise_len` int(11) DEFAULT 0 NOT NULL comment '点赞数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (book_review_comments_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '书评评论';
insert into `book_review_comments` values (1,0,'会员姓名1','书籍书名1','/api/upload/1728673509393039361.jpg','书籍作者1','书籍书评1','书籍评论1',418,248,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_comments` values (2,0,'会员姓名2','书籍书名2','/api/upload/1728673913275154433.jpg','书籍作者2','书籍书评2','书籍评论2',148,172,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_comments` values (3,0,'会员姓名3','书籍书名3','/api/upload/1566585640194146304.jpg','书籍作者3','书籍书评3','书籍评论3',102,495,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_comments` values (4,0,'会员姓名4','书籍书名4','/api/upload/1567339625939206145.jpg','书籍作者4','书籍书评4','书籍评论4',648,394,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_comments` values (5,0,'会员姓名5','书籍书名5','/api/upload/1567339712610304001.jpg','书籍作者5','书籍书评5','书籍评论5',205,347,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_comments` values (6,0,'会员姓名6','书籍书名6','/api/upload/1567339768964972544.jpg','书籍作者6','书籍书评6','书籍评论6',923,772,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_comments` values (7,0,'会员姓名7','书籍书名7','/api/upload/1566585718254338048.jpg','书籍作者7','书籍书评7','书籍评论7',27,460,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_comments` values (8,0,'会员姓名8','书籍书名8','/api/upload/1728673982044962817.jpg','书籍作者8','书籍书评8','书籍评论8',812,582,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_comments` values (9,0,'会员姓名9','书籍书名9','/api/upload/1566584694433120257.jpg','书籍作者9','书籍书评9','书籍评论9',361,481,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_comments` values (10,0,'会员姓名10','书籍书名10','/api/upload/1566585533310697473.jpg','书籍作者10','书籍书评10','书籍评论10',700,319,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_comments` values (11,0,'会员姓名11','书籍书名11','/api/upload/1728673430896640000.jpg','书籍作者11','书籍书评11','书籍评论11',328,433,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');
insert into `book_review_comments` values (12,0,'会员姓名12','书籍书名12','/api/upload/1566584554322395136.jpg','书籍作者12','书籍书评12','书籍评论12',991,810,0,'2023-12-07 16:55:36','2023-12-07 16:55:36');

insert into `auth` values ('1','管理员','会员用户','member_users','会员用户','/member_users/table','','_blank','1','1','1','1','member_name,member_gender,contact_information','member_name,member_gender,contact_information','member_name,member_gender,contact_information',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('2','管理员','会员用户','member_users','会员用户详情','/member_users/view','','_blank','1','1','1','1','member_name,member_gender,contact_information','member_name,member_gender,contact_information','member_name,member_gender,contact_information',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('3','管理员','书评信息','book_review_information','书评信息','/book_review_information/table','','_blank','1','1','1','1','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('4','管理员','书评信息','book_review_information','书评信息详情','/book_review_information/view','','_blank','1','1','1','1','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('5','管理员','书评信息','book_review_information','书评信息','/book_review_information/list','top','_blank','1','1','1','1','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('6','管理员','书评信息','book_review_information','书评信息详情','/book_review_information/details','','_blank','1','1','1','1','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('7','管理员','书评评论','book_review_comments','书评评论','/book_review_comments/table','','_blank','1','1','1','1','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('8','管理员','书评评论','book_review_comments','书评评论详情','/book_review_comments/view','','_blank','1','1','1','1','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('9','管理员','书评评论','book_review_comments','书评评论','/book_review_comments/list','top','_blank','1','1','1','1','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('10','管理员','书评评论','book_review_comments','书评评论详情','/book_review_comments/details','','_blank','1','1','1','1','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('11','管理员','书评评论','book_review_comments','书评评论','/book_review_comments/edit','','_blank','1','1','1','1','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('12','管理员','我的收藏','collect','我的收藏','/collect/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('13','管理员','评论','comment','评论列表','/comment/table','','_blank','1','1','1','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('14','管理员','评论','comment','评论详情','/comment/view','','_blank','1','1','1','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('15','管理员','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('16','管理员','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('17','管理员','论坛','forum','书评讨论','/forum/table','','_blank','1','1','1','1','','','',null,'0','{"print":true,"export_db":true,"import_db":true}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('18','管理员','论坛','forum','书评讨论','/forum/view','','_blank','1','1','1','1','','','',null,'0','{"print":true}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('19','管理员','论坛','forum','书评讨论','/forum/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('20','管理员','论坛','forum','书评讨论','/forum/details','','_blank','1','1','1','1','','','',null,'0','{"can_comment":true,"can_show_comment":true}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('21','管理员','论坛分类','forum_type','论坛分类列表','/forum_type/table','','_blank','1','1','1','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('22','管理员','论坛分类','forum_type','论坛分类详情','/forum_type/view','','_blank','1','1','1','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('23','管理员','公告','notice','公告列表','/notice/table','','_blank','1','1','1','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('24','管理员','公告','notice','公告详情','/notice/view','','_blank','1','1','1','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('25','管理员','公告','notice','通知公告','/notice/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('26','管理员','公告','notice','公告详情','/notice/details','','_blank','1','1','1','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('27','游客','会员用户','member_users','会员用户','/member_users/table','','_blank','1','0','0','0','member_name,member_gender,contact_information','member_name,member_gender,contact_information','member_name,member_gender,contact_information',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('28','游客','会员用户','member_users','会员用户详情','/member_users/view','','_blank','1','0','0','0','member_name,member_gender,contact_information','member_name,member_gender,contact_information','member_name,member_gender,contact_information',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('29','游客','书评信息','book_review_information','书评信息','/book_review_information/table','','_blank','0','0','0','0','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('30','游客','书评信息','book_review_information','书评信息详情','/book_review_information/view','','_blank','0','0','0','0','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('31','游客','书评信息','book_review_information','书评信息','/book_review_information/list','top','_blank','0','0','0','1','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('32','游客','书评信息','book_review_information','书评信息详情','/book_review_information/details','','_blank','0','0','0','1','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('33','游客','书评评论','book_review_comments','书评评论','/book_review_comments/table','','_blank','0','0','0','0','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('34','游客','书评评论','book_review_comments','书评评论详情','/book_review_comments/view','','_blank','0','0','0','0','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('35','游客','书评评论','book_review_comments','书评评论','/book_review_comments/list','top','_blank','0','0','0','1','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('36','游客','书评评论','book_review_comments','书评评论详情','/book_review_comments/details','','_blank','0','0','0','1','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('37','游客','书评评论','book_review_comments','书评评论','/book_review_comments/edit','','_blank','0','0','0','0','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('38','游客','我的收藏','collect','我的收藏','/collect/list','','_blank','0','0','0','0','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('39','游客','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('40','游客','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('41','游客','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('42','游客','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('43','游客','论坛','forum','书评讨论','/forum/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"export_db":false,"import_db":false}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('44','游客','论坛','forum','书评讨论','/forum/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('45','游客','论坛','forum','书评讨论','/forum/list','','_blank','0','0','0','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('46','游客','论坛','forum','书评讨论','/forum/details','','_blank','0','0','0','1','','','',null,'0','{"can_comment":false,"can_show_comment":false}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('47','游客','论坛分类','forum_type','论坛分类列表','/forum_type/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('48','游客','论坛分类','forum_type','论坛分类详情','/forum_type/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('49','游客','公告','notice','公告列表','/notice/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('50','游客','公告','notice','公告详情','/notice/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('51','游客','公告','notice','通知公告','/notice/list','','_blank','0','0','0','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('52','游客','公告','notice','公告详情','/notice/details','','_blank','0','0','0','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('53','会员用户','会员用户','member_users','会员用户','/member_users/table','','_blank','0','0','0','0','member_name,member_gender,contact_information','member_name,member_gender,contact_information','member_name,member_gender,contact_information',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('54','会员用户','会员用户','member_users','会员用户详情','/member_users/view','','_blank','0','0','0','0','member_name,member_gender,contact_information','member_name,member_gender,contact_information','member_name,member_gender,contact_information',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('55','会员用户','书评信息','book_review_information','书评信息','/book_review_information/table','','_blank','0','0','0','0','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('56','会员用户','书评信息','book_review_information','书评信息详情','/book_review_information/view','','_blank','0','0','0','0','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('57','会员用户','书评信息','book_review_information','书评信息','/book_review_information/list','top','_blank','1','1','1','1','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('58','会员用户','书评信息','book_review_information','书评信息详情','/book_review_information/details','','_blank','1','1','1','1','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review','book_title,book_images,book_author,book_rating,book_review',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('59','会员用户','书评评论','book_review_comments','书评评论','/book_review_comments/table','','_blank','0','0','0','0','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('60','会员用户','书评评论','book_review_comments','书评评论详情','/book_review_comments/view','','_blank','0','0','0','0','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('61','会员用户','书评评论','book_review_comments','书评评论','/book_review_comments/list','top','_blank','1','1','1','1','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('62','会员用户','书评评论','book_review_comments','书评评论详情','/book_review_comments/details','','_blank','1','1','1','1','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('63','会员用户','书评评论','book_review_comments','书评评论','/book_review_comments/edit','','_blank','1','1','1','1','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews','member_users,member_name,book_title,book_images,book_author,book_review,book_reviews',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('64','会员用户','我的收藏','collect','我的收藏','/collect/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('65','会员用户','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('66','会员用户','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('67','会员用户','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('68','会员用户','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('69','会员用户','论坛','forum','书评讨论','/forum/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"export_db":false,"import_db":false}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('70','会员用户','论坛','forum','书评讨论','/forum/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('71','会员用户','论坛','forum','书评讨论','/forum/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('72','会员用户','论坛','forum','书评讨论','/forum/details','','_blank','1','1','1','1','','','',null,'0','{"can_comment":true,"can_show_comment":true}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('73','会员用户','论坛分类','forum_type','论坛分类列表','/forum_type/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('74','会员用户','论坛分类','forum_type','论坛分类详情','/forum_type/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('75','会员用户','公告','notice','公告列表','/notice/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('76','会员用户','公告','notice','公告详情','/notice/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('77','会员用户','公告','notice','通知公告','/notice/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `auth` values ('78','会员用户','公告','notice','公告详情','/notice/details','','_blank','1','1','1','1','','','',null,'0','{}','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `user_group` values ('1','100','管理员',null,'','','0','0','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `user_group` values ('2','100','游客',null,'','','0','0','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `user_group` values ('3','100','会员用户',null,'member_users','member_users_id','0','3','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `slides` values ('1','轮播图1','内容1','/article/details?article=1','/api/upload/1566582988462882817.jpg','377','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `slides` values ('2','轮播图2','内容2','/article/details?article=2','/api/upload/1566583052795117568.jpg','322','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');
insert into `slides` values ('3','轮播图3','内容3','/article/details?article=3','/api/upload/1566582883651420161.jpg','881','2023-12-07 16:55:36.0','2023-12-07 16:55:36.0');

UPDATE forum 
SET img = CONCAT('/api',img);
