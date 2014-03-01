-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 03 月 01 日 14:48
-- 服务器版本: 5.5.35
-- PHP 版本: 5.3.10-1ubuntu3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `weibo`
--

-- --------------------------------------------------------

--
-- 表的结构 `t_at`
--

CREATE TABLE IF NOT EXISTS `t_at` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '发给谁的用户id',
  `wid` int(10) unsigned NOT NULL COMMENT '那篇微博@的微博id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `wid` (`wid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='at表' AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `t_at`
--

INSERT INTO `t_at` (`id`, `uid`, `wid`) VALUES
(10, 10000, 177),
(2, 10001, 172),
(3, 10005, 172),
(5, 10001, 173),
(6, 10005, 173),
(11, 10000, 178),
(12, 10001, 187),
(13, 10001, 188),
(14, 10000, 189),
(15, 10000, 190);

-- --------------------------------------------------------

--
-- 表的结构 `t_collect`
--

CREATE TABLE IF NOT EXISTS `t_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '收藏用户id',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏时间',
  `wid` int(10) unsigned NOT NULL COMMENT '收藏微博的id',
  PRIMARY KEY (`id`),
  KEY `wid` (`wid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='收藏表' AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `t_collect`
--

INSERT INTO `t_collect` (`id`, `uid`, `time`, `wid`) VALUES
(15, 10000, 1393576693, 177);

-- --------------------------------------------------------

--
-- 表的结构 `t_comment`
--

CREATE TABLE IF NOT EXISTS `t_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '评论用户uid',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '评论内容',
  `time` int(10) unsigned NOT NULL COMMENT 'i评论时间',
  `isreplay` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '是否回复，回复则记录回复的评论id',
  `wid` int(10) unsigned NOT NULL COMMENT '所属微博id',
  PRIMARY KEY (`id`),
  KEY `wid` (`wid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='评论表' AUTO_INCREMENT=135 ;

--
-- 转存表中的数据 `t_comment`
--

INSERT INTO `t_comment` (`id`, `uid`, `content`, `time`, `isreplay`, `wid`) VALUES
(44, 10001, '我来给你加条评论！[挤眼]', 1392994436, 0, 68),
(68, 10000, '[笑哈哈]', 1393061926, 0, 100),
(69, 10000, '我是一条评论', 1393144286, 0, 132),
(70, 10000, '回复@runner:什么？我听不见！？？？', 1393144300, 0, 132),
(71, 10000, '测试评论！', 1393168592, 0, 27),
(72, 10000, '什么这么好笑啊？[疑问]', 1393202969, 0, 132),
(73, 10001, '回复@runner:呵呵，我也不知道。[笑哈哈]', 1393203052, 72, 132),
(46, 10001, '再来个？', 1392994810, 0, 68),
(47, 10001, '呵呵', 1392994829, 0, 68),
(74, 10000, '这是我给自己的评论哦', 1393203759, 0, 137),
(75, 10000, '回复@runner:呵呵，自己给自己 回复，都无聊啊你。', 1393203802, 74, 137),
(76, 10000, '你的头像很漂亮。[汗]', 1393209374, 0, 3),
(77, 10001, '回复@runner:谢谢夸奖。呵呵', 1393209430, 76, 3),
(79, 10000, '不错，我喜欢。[馋嘴]', 1393324350, 0, 152),
(92, 10000, 'af ', 1393561433, 0, 132),
(93, 10000, 'adf', 1393561436, 0, 132),
(94, 10000, ' 这是测试', 1393561444, 0, 132),
(95, 10000, '此微博已被作', 1393561449, 0, 132),
(96, 10000, '儿和牧羊人仍是贫穷.国王很惊讶的', 1393561457, 0, 132),
(97, 10000, '虚荣，别自以为是；放下你容易被诱惑的眼睛，听从自己的内心；放下你的自私，学会懂得感恩；', 1393561464, 0, 132),
(98, 10000, '虚荣，别自以为是；放下你容易被诱惑的眼睛，听从自己的内心；放下你的自私，学会懂得感恩；虚荣，别自以为是；放下你容易被诱惑的眼睛，听从自己的内心；放下你的自私，学会懂得感恩；', 1393561471, 0, 132),
(100, 10000, '是啊，天气不错。', 1393646695, 0, 177),
(101, 10000, '是啊，天气不错。', 1393646703, 0, 177),
(102, 10000, '是啊，天气不错。', 1393646747, 0, 177),
(103, 10000, '是啊，天气不错。(', 1393646853, 0, 177),
(104, 10000, '是啊，天气不错。(', 1393646937, 0, 177),
(105, 10000, '埃弗顿', 1393646959, 0, 177),
(106, 10000, '埃弗顿', 1393646997, 0, 177),
(107, 10000, '$foo', 1393647035, 0, 177),
(108, 10000, '呵呵呵', 1393647137, 0, 177),
(109, 10000, '呵呵呵', 1393647142, 0, 177),
(110, 10000, '你是个傻孩子。', 1393647237, 0, 177),
(111, 10000, '你是个傻孩子。', 1393647255, 0, 177),
(112, 10000, '你就是个傻孩子。', 1393647379, 0, 177),
(113, 10000, '哈哈哈', 1393647415, 0, 177),
(114, 10000, '呵呵，不是吧。', 1393648021, 0, 178),
(115, 10000, '呵呵，不是吧。', 1393648031, 0, 178),
(116, 10000, '呵呵，不是吧。', 1393648091, 0, 178),
(117, 10000, '呵呵，不是吧。', 1393648117, 0, 178),
(118, 10000, '呵呵，不是吧。', 1393648119, 0, 178),
(119, 10000, '呵呵，不是吧。', 1393648122, 0, 178),
(120, 10000, '呵呵，不是吧。', 1393648134, 0, 178),
(121, 10000, '呵呵，不是吧。', 1393648136, 0, 178),
(122, 10000, '呵呵，不是吧。', 1393648139, 0, 178),
(123, 10000, '呵呵，不是吧。', 1393648142, 0, 178),
(124, 10000, '呵呵，不是吧。', 1393648148, 0, 178),
(125, 10000, '呵呵，不是吧。', 1393648196, 0, 178),
(126, 10000, '呵呵，不是吧。', 1393648199, 0, 178),
(127, 10000, '呵呵，不是吧。', 1393648245, 0, 178),
(128, 10000, '呵呵，不是吧。', 1393648308, 0, 178),
(129, 10000, '呵呵，不是吧。', 1393648311, 0, 178),
(130, 10000, '呵呵，不是吧。', 1393648389, 0, 178),
(131, 10000, '呵呵，不是吧。', 1393648409, 0, 178),
(132, 10000, '哈哈案发', 1393648734, 0, 178),
(133, 10001, '这是我给你的评论哦。[给力]', 1393651071, 0, 188),
(134, 10001, 'hello', 1393656400, 0, 188);

-- --------------------------------------------------------

--
-- 表的结构 `t_follow`
--

CREATE TABLE IF NOT EXISTS `t_follow` (
  `follow` int(10) unsigned NOT NULL COMMENT '关注者ID',
  `fans` int(10) unsigned NOT NULL COMMENT '粉丝ID',
  `time` int(10) unsigned NOT NULL COMMENT '添加关注的时间',
  `source` char(30) NOT NULL COMMENT '关注来源',
  `gid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属分组id',
  KEY `follow` (`follow`),
  KEY `fans` (`fans`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关注和粉丝表';

--
-- 转存表中的数据 `t_follow`
--

INSERT INTO `t_follow` (`follow`, `fans`, `time`, `source`, `gid`) VALUES
(10000, 10001, 1393585682, 'fans', 0);

-- --------------------------------------------------------

--
-- 表的结构 `t_group`
--

CREATE TABLE IF NOT EXISTS `t_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '' COMMENT '分组名称',
  `uid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关注分组表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `t_letter`
--

CREATE TABLE IF NOT EXISTS `t_letter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发信用户id',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '私信内容',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发件时间',
  `uid` int(10) unsigned NOT NULL COMMENT '收件人',
  PRIMARY KEY (`id`,`uid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='私信表' AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `t_letter`
--

INSERT INTO `t_letter` (`id`, `from`, `content`, `time`, `uid`) VALUES
(1, 10001, '你好吗？我很想你。[moc转发]', 1393554526, 10000),
(2, 10001, '为什么不会我信息？[泪]', 1393554547, 10000),
(3, 10004, '这是敏敏给你发的私信哦。', 1393554703, 10000),
(4, 10000, '[悲伤]你可知道，我有多想你。', 1393570350, 10001),
(5, 10001, '是吗？我也很想你，你知道么[可爱]', 1393570397, 10000),
(6, 10001, '发放', 1393573079, 10000),
(7, 10001, '我可以和你时时聊天了哦。[嘻嘻]', 1393573880, 10000),
(8, 10000, '真的啊，好奇妙啊。哈哈。[得意地笑]', 1393573928, 10001),
(9, 10000, 'jj', 1393602906, 10001),
(10, 10000, '我给你发私信息了哦。[笑哈哈]', 1393647736, 10001),
(11, 10000, '你好么', 1393648711, 10001),
(12, 10001, '我给你发的私信哦。', 1393650639, 10000),
(13, 10001, '你好吗？我在这里。', 1393651101, 10000),
(14, 10001, '在给你发一条。', 1393651164, 10000),
(15, 10000, '[哈哈]', 1393654318, 10001),
(16, 10000, '你好', 1393654542, 10001),
(17, 10000, '[围观]', 1393654559, 10001),
(18, 10001, '哈哈', 1393656096, 10000);

-- --------------------------------------------------------

--
-- 表的结构 `t_picture`
--

CREATE TABLE IF NOT EXISTS `t_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(60) NOT NULL DEFAULT '' COMMENT '微博配图',
  `wid` int(10) unsigned NOT NULL COMMENT '所属微博id',
  PRIMARY KEY (`id`),
  KEY `wid` (`wid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='微博配图' AUTO_INCREMENT=36 ;

--
-- 转存表中的数据 `t_picture`
--

INSERT INTO `t_picture` (`id`, `picture`, `wid`) VALUES
(35, '201402/1393562005443.jpg', 179),
(34, '201402/1393561996346.jpg', 179),
(33, '201402/139356191085.jpg', 179),
(19, '201402/1393379586767.jpg', 158),
(20, '201402/1393379675100.jpg', 159),
(32, '201402/13935619100.jpg', 179),
(28, '201402/1393561906400.jpg', 179),
(29, '201402/1393561908990.jpg', 179),
(30, '201402/1393561909247.jpg', 179),
(31, '201402/1393561910124.jpg', 179),
(27, '201402/1393561905426.jpg', 179);

-- --------------------------------------------------------

--
-- 表的结构 `t_praise`
--

CREATE TABLE IF NOT EXISTS `t_praise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `wid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wid` (`wid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='赞 表' AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `t_praise`
--

INSERT INTO `t_praise` (`id`, `uid`, `time`, `wid`) VALUES
(12, 10001, 1393429257, 159),
(9, 10000, 1393169244, 137),
(18, 10000, 1393460920, 173);

-- --------------------------------------------------------

--
-- 表的结构 `t_routes`
--

CREATE TABLE IF NOT EXISTS `t_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `slug` varchar(45) NOT NULL DEFAULT '' COMMENT '路由规则',
  `route` varchar(45) NOT NULL DEFAULT '' COMMENT '路由重定向的地址',
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  UNIQUE KEY `slug` (`slug`),
  UNIQUE KEY `route` (`route`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='路由表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `t_routes`
--

INSERT INTO `t_routes` (`id`, `slug`, `route`, `uid`) VALUES
(1, 'runner', 'u/index/10000', 10000),
(2, 'purple', 'u/index/10001', 10001);

-- --------------------------------------------------------

--
-- 表的结构 `t_sessions`
--

CREATE TABLE IF NOT EXISTS `t_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_sessions`
--

INSERT INTO `t_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('730c884fbe38f5524423ccaee05f20ae', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safari/537.36', 1393656280, 'a:7:{s:9:"user_data";s:0:"";s:3:"uid";s:5:"10001";s:7:"account";s:15:"air_zhe@163.com";s:8:"username";s:6:"purple";s:3:"sex";s:3:"女";s:6:"avatar";s:24:"201402/1392728140354.jpg";s:8:"loggedin";b:1;}'),
('a30ae8b1f61b0687f7470508b02dee4e', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:27.0) Gecko/20100101 Firefox/27.0', 1393653450, ''),
('e60ae0ce8275d6fcaa67650ea2eaedae', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safari/537.36', 1393656308, 'a:7:{s:9:"user_data";s:0:"";s:3:"uid";s:5:"10000";s:7:"account";s:16:"532499602@qq.com";s:8:"username";s:6:"runner";s:3:"sex";s:3:"男";s:6:"avatar";s:24:"201402/1393256000690.jpg";s:8:"loggedin";b:1;}');

-- --------------------------------------------------------

--
-- 表的结构 `t_skin`
--

CREATE TABLE IF NOT EXISTS `t_skin` (
  `id` int(11) NOT NULL,
  `suit` tinyint(3) unsigned DEFAULT '0' COMMENT '套装',
  `bg` tinyint(3) unsigned DEFAULT '0' COMMENT '背景图',
  `cover` tinyint(3) unsigned DEFAULT '0' COMMENT '顶部封面图',
  `style` tinyint(3) unsigned DEFAULT '0' COMMENT 'css样式',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='皮肤表';

-- --------------------------------------------------------

--
-- 表的结构 `t_user`
--

CREATE TABLE IF NOT EXISTS `t_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(20) NOT NULL DEFAULT '' COMMENT '用户帐号',
  `passwd` char(128) NOT NULL DEFAULT '' COMMENT '用户密码',
  `regis_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `lock` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否锁定（0不锁定、1锁定）',
  `vemail` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱验证(0未验证，1已验证)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户帐号表\n' AUTO_INCREMENT=10006 ;

--
-- 转存表中的数据 `t_user`
--

INSERT INTO `t_user` (`id`, `account`, `passwd`, `regis_time`, `lock`, `vemail`) VALUES
(10000, '532499602@qq.com', '481e94e1a26f2e8b295765c25e4f4f4b31629a992c48b8c3fee6dfb6186385d638abce86c96aa701a5d4cb9e51ae1687a7523377b4133b4ec57528454a595e35', 0, 0, 0),
(10001, 'air_zhe@163.com', '481e94e1a26f2e8b295765c25e4f4f4b31629a992c48b8c3fee6dfb6186385d638abce86c96aa701a5d4cb9e51ae1687a7523377b4133b4ec57528454a595e35', 1390923149, 0, 0),
(10004, 'run@run.com', '7663658e53704ee7caaf2b4eb449fde9c06ebd99043bdfa5fa8f96adab89d8f064346a1ff35c5782ef09d5903788bd9acc48acbe5b50d14d8133e524608d2a14', 1391518379, 0, 0),
(10005, '532499602@163.com', '7663658e53704ee7caaf2b4eb449fde9c06ebd99043bdfa5fa8f96adab89d8f064346a1ff35c5782ef09d5903788bd9acc48acbe5b50d14d8133e524608d2a14', 1391518425, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `t_user_info`
--

CREATE TABLE IF NOT EXISTS `t_user_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `truename` varchar(45) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `location` varchar(45) NOT NULL DEFAULT '' COMMENT '居住地',
  `birthday` date NOT NULL COMMENT '生日(日期时间型)',
  `sex` enum('男','女') NOT NULL DEFAULT '男' COMMENT '性别',
  `intro` varchar(100) NOT NULL DEFAULT '' COMMENT '一句话介绍自己',
  `avatar` varchar(60) NOT NULL DEFAULT '' COMMENT '头像(有180，50,30三个，图片名字相同，路径不同)',
  `domain` varchar(100) DEFAULT NULL COMMENT '个性域名',
  `style` varchar(100) NOT NULL DEFAULT '' COMMENT '模板风格',
  `follow` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关注数',
  `fans` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '粉丝数',
  `weibo` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表微博数',
  `uid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `domain` (`domain`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户信息表' AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `t_user_info`
--

INSERT INTO `t_user_info` (`id`, `username`, `truename`, `location`, `birthday`, `sex`, `intro`, `avatar`, `domain`, `style`, `follow`, `fans`, `weibo`, `uid`) VALUES
(1, 'runner', '魏浩哲', 'a:2:{i:0;s:6:"河南";i:1;s:6:"郑州";}', '1999-01-01', '男', '生活因找到而快乐。', '201402/1393256000690.jpg', 'runner', 'a:4:{s:8:"template";s:1:"4";s:5:"cover";s:5:"3.jpg";s:4:"suit";s:1:"7";s:5:"style";s:5:"5.css";}', 0, 1, 29, 10000),
(6, 'purple', '', 'a:2:{i:0;s:6:"浙江";i:1;s:6:"杭州";}', '1998-01-01', '女', '', '201402/1392728140354.jpg', 'purple', 'a:2:{s:4:"suit";s:1:"6";s:5:"style";s:5:"1.css";}', 1, 0, 15, 10001),
(8, '敏敏', '', 'a:2:{i:0;s:6:"湖北";i:1;s:6:"天门";}', '2015-02-01', '女', '', '', NULL, '0', 0, 0, 7, 10004),
(9, '苍老师', '', 'a:2:{i:0;s:6:"湖北";i:1;s:6:"武汉";}', '2014-01-01', '女', '大家好！我是苍井空. 有时演电影,唱歌,有时在电视节目中露露脸。为了更好的交流.我在努力地学习中文ing 工作邮箱：solaaoi@sina.cn', '', NULL, '0', 0, 0, 1, 10005);

-- --------------------------------------------------------

--
-- 表的结构 `t_weibo`
--

CREATE TABLE IF NOT EXISTS `t_weibo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '微博内容',
  `picture` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '微博有无配图，有记录图片个数，没有默认为0。',
  `isturn` int(11) NOT NULL DEFAULT '0' COMMENT '是否转发(0原创，否则记录转发的ID)',
  `iscomment` int(11) NOT NULL DEFAULT '0' COMMENT '是否转发(0原创，否则记录评论的ID)',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表时间',
  `praise` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '赞次数',
  `turn` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '转发次数',
  `collect` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏次数',
  `comment` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论条数',
  `uid` int(10) unsigned NOT NULL COMMENT '所属用户id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='微博表' AUTO_INCREMENT=191 ;

--
-- 转存表中的数据 `t_weibo`
--

INSERT INTO `t_weibo` (`id`, `content`, `picture`, `isturn`, `iscomment`, `time`, `praise`, `turn`, `collect`, `comment`, `uid`) VALUES
(1, '这Runner我发表的第一条微博哦[ppb鼓掌]', 0, 0, 0, 1391584578, 0, 0, 0, 0, 10000),
(2, '这是purple发的1号微博[挤眼]', 0, 0, 0, 1391584879, 0, 0, 0, 0, 10001),
(3, '这是purple发的2号微博', 0, 0, 0, 1391584914, 0, 0, 0, 2, 10001),
(4, '这Runner我发表的第二条微博哦', 0, 0, 0, 1391584924, 0, 0, 0, 0, 10000),
(5, '这Runner我发表的第3条微博哦', 0, 0, 0, 1391584933, 0, 0, 0, 0, 10000),
(6, '哈哈，很好玩啊', 0, 0, 0, 1391584946, 0, 0, 0, 0, 10001),
(7, '从前有个国王,他两个女儿的眼泪都会变成钻石.大女儿嫁给了一个用她的眼泪创造了一个个城堡的王子,小女儿却嫁给了牧羊人.国王临死见到他们的时候,大女儿满身金银珠宝,而小女儿和牧羊人仍是贫穷.国王很惊讶的说:明明她的一滴眼泪就够你们生活的很好. 牧羊人说:可是我舍不得让她哭啊.....', 0, 0, 0, 1391584965, 0, 0, 0, 0, 10000),
(8, '【中国最美五大沙漠】巴丹吉林沙漠，塔克拉玛干沙漠，鸣沙山—月牙泉，古尔班通古特沙漠，沙坡头。一生一定要去次沙漠，体验烈日风沙，体味孤独辽远，它在那里等你，等候了千年。什么时候启程吧！', 0, 0, 0, 1391584976, 0, 0, 0, 0, 10001),
(9, '[蛋糕]生日快乐', 0, 0, 0, 1391584988, 0, 0, 0, 0, 10001),
(10, '这是我的地盘哦？', 0, 0, 0, 1391584995, 0, 0, 0, 0, 10001),
(11, '我想做什么都可以的。', 0, 0, 0, 1391585002, 0, 0, 0, 0, 10001),
(12, '哈哈，我来刷屏了。', 0, 0, 0, 1391585016, 0, 0, 0, 0, 10001),
(13, '【凡人凡事：写春联】小时候，我们生产队里能写得一手好毛笔字的人叫谭四叔。那时，队里五十多户的对联几乎全是四叔自编自写且无一雷同。因为这个，他在队里的威望也相当高，好多年轻后生的情书也是拜求四叔操刀而就。', 0, 0, 0, 1391585041, 0, 0, 0, 0, 10001),
(15, '死亡的骆驼（最近网上真的很火）你看了么？[转] ', 0, 0, 0, 1391585069, 0, 0, 0, 0, 10000),
(16, '人人秀舞：看社交手游的动与静】12月，手游市场依旧风起云涌，好戏连台。企鹅屡放大招，搭上微信快车的天天家族不多说了，《全民英雄》、《水果忍者》、《全民飞机大战》等数不过来的作品狂轰乱炸。如今手游市场已进入平稳期，以往圈一笔快钱就跑路的打法还奏效吗？看雷哥分析', 0, 0, 0, 1391585081, 0, 0, 0, 0, 10001),
(17, '据说这是每一个女汉纸都会的技能。。。冬天必备啊！|图：imgur', 0, 0, 0, 1391585105, 0, 0, 0, 0, 10001),
(59, '[吃惊]', 0, 0, 0, 1391962300, 0, 0, 0, 0, 10000),
(60, '[可爱]', 0, 0, 0, 1391962327, 0, 0, 0, 0, 10000),
(61, '[可爱]', 0, 0, 0, 1391962330, 0, 0, 0, 0, 10000),
(62, '[右哼哼]', 0, 0, 0, 1391962332, 0, 0, 0, 0, 10000),
(63, '[给力]', 0, 0, 0, 1392079006, 0, 0, 0, 0, 10000),
(64, '[笑哈哈][兔子][疑问]', 0, 0, 0, 1392384098, 0, 0, 0, 0, 10000),
(65, '[熊猫][奥特曼][挤眼][黑线]', 0, 0, 0, 1392384116, 0, 0, 0, 0, 10000),
(66, '[互粉]', 0, 0, 0, 1392384130, 0, 0, 0, 0, 10000),
(68, '[ali哇][奥特曼]', 0, 0, 0, 1392384203, 0, 1, 0, 0, 10000),
(179, '美丽的图片', 9, 0, 0, 1393562007, 0, 0, 0, 0, 10000),
(178, '@runner 呵呵，不错哦。', 0, 159, 0, 1393465873, 0, 0, 0, 19, 10001),
(73, '[围观]', 0, 0, 0, 1393054489, 0, 0, 0, 0, 10000),
(74, '[挖鼻屎]', 0, 0, 0, 1393054614, 0, 1, 0, 0, 10000),
(75, '[熊猫]', 0, 0, 0, 1393054657, 0, 4, 0, 0, 10000),
(132, '哈哈，挺好笑的。[挤眼]', 0, 71, 0, 1393080129, 0, 0, 0, 11, 10001),
(27, '老家有土狗一只，看院子的，天冷了给它窝里弄了块破布垫子，隔天都给它拖出来晒晒，刚开始这狗子不让动，估计晒后睡着舒服，它自己养成了拉出来晒晒的习惯，无论刮风下雨', 0, 0, 0, 1391585293, 0, 0, 0, 1, 10001),
(28, '[抓狂]两天没有喝到热的汤了', 0, 0, 0, 1391599825, 0, 0, 0, 0, 10000),
(29, '[ali哇][左哼哼][阴险]', 0, 0, 0, 1391605211, 0, 0, 0, 0, 10000),
(30, '[拜拜][抓狂][困][失望]', 0, 0, 0, 1391605221, 0, 0, 0, 0, 10000),
(31, '[阴险][睡觉]', 0, 0, 0, 1391605233, 0, 0, 0, 0, 10000),
(32, '[神马]', 0, 0, 0, 1391625357, 0, 0, 0, 0, 10000),
(33, '要睡觉了，好好休息下吧。[爱你]', 0, 0, 0, 1391626058, 0, 0, 0, 0, 10000),
(34, 'purple，我要睡觉了啊。好梦。。[挤眼]', 0, 0, 0, 1391626158, 0, 0, 0, 0, 10000),
(35, '[给力][左哼哼]', 0, 0, 0, 1391674294, 0, 0, 0, 0, 10000),
(42, '这可是苍老师的第一次哦[害羞]', 0, 0, 0, 1391696311, 0, 0, 0, 0, 10005),
(46, '[青啤鸿运当头]', 0, 0, 0, 1391925590, 0, 0, 0, 0, 10000),
(48, '[围观]', 0, 0, 0, 1391926153, 0, 0, 0, 0, 10000),
(49, '[可爱]', 0, 0, 0, 1391926191, 0, 0, 0, 0, 10000),
(158, '从前有个国王,他两个女儿的眼泪都会变成钻石.大女儿嫁给了一个用她的眼泪创造了一个个城堡的王子,小女儿却嫁给了牧羊人.国王临死见到他们的时候,大女儿满身金银珠宝,而小女儿和牧羊人仍是贫穷.国王很惊讶的说:明明她的一滴眼泪就够你们生活的很好. 牧羊人说:可是我舍不得让她哭啊..... ', 1, 0, 0, 1393379588, 0, 0, 0, 0, 10001),
(159, '放下你的浮躁，静下心来阅读；放下你的贪婪，有失必有得；放下你的自卑，相信你自己；放下你的虚荣，别自以为是；放下你容易被诱惑的眼睛，听从自己的内心；放下你的自私，学会懂得感恩；放下你的懒惰，该好好努力了。', 1, 0, 0, 1393379676, 0, 2, 0, 0, 10000),
(157, '确实不错。', 0, 152, 0, 1393375691, 0, 0, 0, 0, 10000),
(176, '@runner 这是我为你发的第一篇微博 ', 0, 0, 0, 1393408337, 0, 0, 0, 0, 10004),
(177, '@runner:今天天气不错哦。', 0, 0, 0, 1393465653, 0, 0, 0, 14, 10001),
(174, '@runner 这是我为你发的第一篇微博。[围观]', 0, 0, 0, 1393407366, 0, 0, 0, 0, 10004),
(175, '@runner 这是我为你发的第一篇微博', 0, 0, 0, 1393408137, 0, 0, 0, 0, 10004),
(173, '@purple , @苍老师 @runner 我给你们发照片看哦。', 0, 0, 0, 1393405717, 0, 0, 0, 0, 10000),
(180, '[求红包]', 0, 0, 0, 1393602350, 0, 0, 0, 0, 10004),
(181, '[嘻嘻]', 0, 0, 0, 1393602766, 0, 0, 0, 0, 10004),
(182, '[可爱]', 0, 0, 0, 1393602851, 0, 0, 0, 0, 10004),
(183, '[求红包]', 0, 0, 0, 1393603526, 0, 0, 0, 0, 10004),
(187, '@purple 真是美好的一天啊。', 0, 0, 0, 1393647833, 0, 0, 0, 0, 10000),
(188, '@purple 真是美好的一天啊。', 0, 0, 0, 1393647944, 0, 0, 0, 2, 10000),
(189, '@runner 呵呵。', 0, 0, 0, 1393651191, 0, 0, 0, 0, 10001),
(190, '@runner 美好的一天啊。', 0, 0, 0, 1393656414, 0, 0, 0, 0, 10001);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
