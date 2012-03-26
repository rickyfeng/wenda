SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;



INSERT INTO `category` (`id`, `parent_id`, `title`, `scores`, `isnew`, `sort_order`) VALUES
(1, 0, '电脑、通讯、互联网', 0, 'N', 1),
(2, 0, '演艺、艺术、娱乐', 0, 'N', 9),
(3, 0, '游戏', 0, 'N', 5),
(4, 0, '运动与爱好', 0, 'N', 4),
(5, 0, '健康与医学', 0, 'N', 3),
(6, 0, '家庭与生活', 0, 'N', 2),
(7, 0, '商业经济', 0, 'N', 0),
(8, 0, '购物', 0, 'N', 12),
(9, 0, '旅游与交通', 0, 'N', 13),
(10, 0, '社会与文化', 0, 'N', 6),
(11, 0, '地区问题', 0, 'N', 14),
(12, 1, 'IT业界', 0, 'N', 0),
(13, 1, '安全与防护', 0, 'N', 0),
(14, 1, '操作系统', 0, 'N', 0),
(15, 1, '电脑常识', 0, 'N', 0),
(16, 1, '电子数码', 0, 'N', 0),
(17, 1, '多媒体', 0, 'N', 0),
(18, 1, '互联网', 0, 'N', 0),
(19, 1, '计算机技术', 0, 'N', 0),
(20, 1, '软件', 0, 'N', 0),
(21, 1, '手机', 0, 'N', 0),
(22, 1, '通讯', 0, 'N', 0),
(23, 1, '硬件', 0, 'N', 0),
(24, 2, 'VCD与DVD', 0, 'N', 0),
(25, 2, '博彩', 0, 'N', 0),
(26, 2, '电视', 0, 'N', 0),
(27, 2, '电影', 0, 'N', 0),
(28, 2, '动漫', 0, 'N', 0),
(29, 2, '广播', 0, 'N', 0),
(30, 2, '美术与摄影', 0, 'N', 0),
(31, 2, '谜语', 0, 'N', 0),
(32, 2, '明星俱乐部', 0, 'N', 0),
(33, 2, '魔术与杂技', 0, 'N', 0),
(34, 2, '脑筋急转弯', 0, 'N', 0),
(35, 2, '文化艺术常识', 0, 'N', 0),
(36, 2, '舞蹈', 0, 'N', 0),
(37, 2, '戏剧', 0, 'N', 0),
(38, 2, '演出与展览', 0, 'N', 0),
(39, 2, '音乐', 0, 'N', 0),
(40, 2, '幽默与滑稽', 0, 'N', 0),
(41, 2, '运气与星座', 0, 'N', 0),
(42, 3, '单机游戏', 0, 'N', 0),
(43, 3, '电视游戏', 0, 'N', 0),
(44, 3, '电子竞技', 0, 'N', 0),
(45, 3, '棋牌游戏', 0, 'N', 0),
(46, 3, '手机游戏', 0, 'N', 0),
(47, 3, '网络游戏', 0, 'N', 0),
(48, 3, '网页游戏', 0, 'N', 0),
(49, 3, '休闲小游戏', 0, 'N', 0),
(50, 3, '游戏工具', 0, 'N', 0),
(51, 3, '游戏相关产品', 0, 'N', 0),
(52, 3, '游戏业界', 0, 'N', 0),
(53, 4, '2008奥运', 0, 'N', 0),
(54, 4, '冬季运动', 0, 'N', 0),
(55, 4, '花鸟虫草', 0, 'N', 0),
(56, 4, '陆地竞赛', 0, 'N', 0),
(57, 4, '其它爱好', 0, 'N', 0),
(58, 4, '其它运动', 0, 'N', 0),
(59, 4, '球类', 0, 'N', 0),
(60, 4, '全民健身运动', 0, 'N', 0),
(61, 4, '收藏', 0, 'N', 0),
(62, 4, '水上运动', 0, 'N', 0),
(63, 4, '武术击斗', 0, 'N', 0),
(64, 4, '野外活动', 0, 'N', 0),
(65, 4, '运动会与比赛', 0, 'N', 0),
(66, 4, '运动用品', 0, 'N', 0),
(67, 5, '保健', 0, 'N', 0),
(68, 5, '大内科', 0, 'N', 0),
(69, 5, '大外科', 0, 'N', 0),
(70, 5, '妇儿科室', 0, 'N', 0),
(71, 5, '疾病', 0, 'N', 0),
(72, 5, '减肥', 0, 'N', 0),
(73, 5, '男科', 0, 'N', 0),
(74, 5, '人体常识', 0, 'N', 0),
(75, 5, '食品安全与营养', 0, 'N', 0),
(76, 5, '体检', 0, 'N', 0),
(77, 5, '五官科室', 0, 'N', 0),
(78, 5, '心理健康', 0, 'N', 0),
(79, 5, '性话题', 0, 'N', 0),
(80, 5, '药品', 0, 'N', 0),
(81, 5, '医院', 0, 'N', 0),
(82, 5, '应急治疗', 0, 'N', 0),
(83, 5, '中医', 0, 'N', 0),
(84, 6, '宠物', 0, 'N', 0),
(85, 6, '家居环境', 0, 'N', 0),
(86, 6, '家庭关系', 0, 'N', 0),
(87, 6, '交友', 0, 'N', 0),
(88, 6, '结婚', 0, 'N', 0),
(89, 6, '离婚', 0, 'N', 0),
(90, 6, '礼节礼仪', 0, 'N', 0),
(91, 6, '恋爱', 0, 'N', 0),
(92, 6, '美容', 0, 'N', 0),
(93, 7, 'ERP', 0, 'N', 0),
(94, 7, '保险', 0, 'N', 0),
(95, 7, '财务与税务', 0, 'N', 0),
(96, 7, '创业', 0, 'N', 0),
(97, 7, '股票', 0, 'N', 0),
(98, 7, '基金', 0, 'N', 0),
(99, 7, '金融投资', 0, 'N', 0),
(100, 7, '外汇', 0, 'N', 0),
(101, 8, '百货', 0, 'N', 0),
(102, 8, '电脑与数码', 0, 'N', 0),
(103, 8, '购物请教', 0, 'N', 0),
(104, 8, '化妆品', 0, 'N', 0),
(105, 8, '家电', 0, 'N', 0),
(106, 8, '家居装饰', 0, 'N', 0),
(107, 8, '礼品', 0, 'N', 0),
(108, 8, '生活卫厨', 0, 'N', 0),
(109, 8, '食品', 0, 'N', 0),
(110, 9, '国内旅游', 0, 'N', 0),
(111, 9, '海外旅游', 0, 'N', 0),
(112, 9, '护照签证', 0, 'N', 0),
(113, 9, '交通常识', 0, 'N', 0),
(114, 9, '交通工具', 0, 'N', 0),
(115, 10, '博物馆', 0, 'N', 0),
(116, 10, '传统文化', 0, 'N', 0),
(117, 10, '法律', 0, 'N', 0),
(118, 10, '节假日', 0, 'N', 0),
(119, 10, '军队武器', 0, 'N', 0),
(120, 10, '民俗传统', 0, 'N', 0),
(121, 11, '北京', 0, 'N', 0),
(122, 11, '广东', 0, 'N', 0),
(123, 11, '山东', 0, 'N', 0),
(124, 11, '江苏', 0, 'N', 0),
(125, 11, '浙江', 0, 'N', 0),
(126, 11, '上海', 0, 'N', 0);

INSERT INTO `groups` (`id`, `type`, `title`, `grade`, `credits_lower`, `credits_higher`) VALUES
(1, 'system', '管理员', 9, 0, 0),
(2, 'system', '超级版主', 8, 0, 0),
(3, 'system', '版主', 7, 0, 0),
(4, 'system', '等待验证会员', 0, 0, 0),
(5, 'system', '游客', 0, 0, 0),
(6, 'system', '禁止发言', -1, 0, 0),
(7, 'system', '禁止访问', -2, 0, 0),
(8, 'system', '禁止 IP', -3, 0, 0),
(9, 'member', '乞丐', 0, -999999999, -1),
(10, 'member', '新手上路', 1, 0, 50),
(11, 'member', '注册会员', 2, 51, 200),
(12, 'member', '中级会员', 3, 201, 500),
(13, 'member', '高级会员', 4, 501, 1000),
(14, 'member', '金牌会员', 5, 1001, 3000),
(15, 'member', '论坛元老', 6, 3001, 999999999);




