/*
Navicat MySQL Data Transfer

Source Server         : 2018.3.21
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : yiyaowang

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2018-03-31 20:19:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ad`
-- ----------------------------
DROP TABLE IF EXISTS `ad`;
CREATE TABLE `ad` (
  `sid` int(2) NOT NULL,
  `src` varchar(200) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ad
-- ----------------------------
INSERT INTO `ad` VALUES ('1', 'https://p3.maiyaole.com/img/item/1517983920517101.jpg');
INSERT INTO `ad` VALUES ('2', 'https://p1.maiyaole.com/img/item/1511495559831107.jpg');
INSERT INTO `ad` VALUES ('3', 'https://p1.maiyaole.com/img/item/1516073396521115.jpg');
INSERT INTO `ad` VALUES ('4', 'https://p1.maiyaole.com/img/item/1511496036027111.jpg');
INSERT INTO `ad` VALUES ('5', 'https://p3.maiyaole.com/img/item/1519275767892609.jpg');
INSERT INTO `ad` VALUES ('6', 'https://p2.maiyaole.com/img/item/1522026697878185.jpg');
INSERT INTO `ad` VALUES ('7', 'http://p3.maiyaole.com/img/cmsPage/2018b7fa190d0207101441/201x284-%E5%B7%A6213231.jpg');
INSERT INTO `ad` VALUES ('8', 'http://p1.maiyaole.com/img/cmsPage/2018b7fa190d0207101441/201x2121284-%E5%B7%A6.jpg');
INSERT INTO `ad` VALUES ('9', 'https://p1.maiyaole.com/img/item/1516070762421109.jpg');
INSERT INTO `ad` VALUES ('10', 'https://p3.maiyaole.com/img/item/1519697496048115.jpg');
INSERT INTO `ad` VALUES ('11', 'https://p4.maiyaole.com/img/cmsPage/2017cdd7dd600321103001/201x284.jpg');
INSERT INTO `ad` VALUES ('12', 'http://p1.maiyaole.com/img/cmsPage/20175cd287ba0428110746/201x284%20(2).jpg');
INSERT INTO `ad` VALUES ('13', 'http://p2.maiyaole.com/img/cmsPage/2016a12a4fb81031133033/newxiaotu1221.jpg');
INSERT INTO `ad` VALUES ('14', 'http://p1.maiyaole.com/img/cmsPage/2016a12a4fb81031133033/anmobang.jpg');
INSERT INTO `ad` VALUES ('15', 'http://p1.maiyaole.com/img/cmsPage/2017e45221bf1030171901/1.jpg');
INSERT INTO `ad` VALUES ('16', 'http://p4.maiyaole.com/img/cmsPage/2017e45221bf1030171901/2.jpg');
INSERT INTO `ad` VALUES ('17', 'https://p2.maiyaole.com/img/item/1521682248095101.jpg');
INSERT INTO `ad` VALUES ('18', 'http://p3.maiyaole.com/img/cmsPage/201769b17e780523175036/20171109102058.jpg');
INSERT INTO `ad` VALUES ('19', 'http://p3.maiyaole.com/img/cmsPage/20185e2939a40122144558/201x284-%E5%B7%A6-iphoneX.jpg');
INSERT INTO `ad` VALUES ('20', 'http://p2.maiyaole.com/img/cmsPage/20185e2939a40122144558/201x284-%E5%B7%A6-%E5%B0%8F%E7%B1%B3%E5%87%80%E5%8C%96%E5%99%A8.jpg');

-- ----------------------------
-- Table structure for `details`
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details` (
  `sid` tinyint(4) unsigned NOT NULL,
  `big` varchar(200) NOT NULL,
  `mid` varchar(200) NOT NULL,
  `small` varchar(200) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of details
-- ----------------------------
INSERT INTO `details` VALUES ('1', 'https://p3.maiyaole.com/img/item/201711/22/org_20171122181034312.jpg', 'https://p1.maiyaole.com/img/item/201711/22/380_20171122181034312.jpg', 'https://p3.maiyaole.com/img/item/201711/22/100_20171122181034312.jpg');
INSERT INTO `details` VALUES ('2', 'https://p1.maiyaole.com/img/item/201709/27/org_20170927175910720.jpg', 'https://p4.maiyaole.com/img/item/201709/27/380_20170927175910720.jpg', 'https://p1.maiyaole.com/img/item/201709/27/100_20170927175910720.jpg');
INSERT INTO `details` VALUES ('3', 'https://p1.maiyaole.com/img/item/201709/27/org_20170927175911300.jpg', 'https://p2.maiyaole.com/img/item/201709/27/380_20170927175911300.jpg', 'https://p2.maiyaole.com/img/item/201709/27/100_20170927175911300.jpg');

-- ----------------------------
-- Table structure for `listpic`
-- ----------------------------
DROP TABLE IF EXISTS `listpic`;
CREATE TABLE `listpic` (
  `sid` int(10) NOT NULL AUTO_INCREMENT,
  `src` varchar(200) NOT NULL,
  `title` varchar(150) NOT NULL,
  `price` varchar(20) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of listpic
-- ----------------------------
INSERT INTO `listpic` VALUES ('1', 'https://p3.maiyaole.com/img/item/201711/22/100_20171122181034312.jpg', '【保心良药】益安宁丸', '790.0');
INSERT INTO `listpic` VALUES ('2', 'https://p3.maiyaole.com/img/item/201705/23/100_20170523145444842.jpg', '三九/999 感冒灵颗粒 10g*9袋', '10.2');
INSERT INTO `listpic` VALUES ('3', 'https://p2.maiyaole.com/img/item/201710/27/100_20171027102551908.jpg', '东阿阿胶 阿胶 250g/盒', '1499.0');
INSERT INTO `listpic` VALUES ('4', 'https://p2.maiyaole.com/img/7732/7732881/100_100.jpg?a=1855012835', '【温阳固本】肾宝片', '322.0');
INSERT INTO `listpic` VALUES ('5', 'https://p3.maiyaole.com/img/201708/24/100_201708241046223.jpg', '【冠心病症】拜耳拜新同', '28.0');
INSERT INTO `listpic` VALUES ('6', 'https://p3.maiyaole.com/img/item/201703/13/100_20170313161139130.jpg', '【价格直降】乙肝良心药', '88.0');
INSERT INTO `listpic` VALUES ('7', 'https://p2.maiyaole.com/img/item/201709/18/100_20170918132618912.jpg', '【藏药精华】奇正贴膏', '66.0');
INSERT INTO `listpic` VALUES ('8', 'https://p4.maiyaole.com/img/item/201707/25/100_20170725132610918.jpg', '【脱发专用】米诺地尔酊', '179.0');
INSERT INTO `listpic` VALUES ('9', 'https://p2.maiyaole.com/img/item/201703/06/100_20170306175316107.jpg', '【动脉闭塞专用】凯那', '69.0');
INSERT INTO `listpic` VALUES ('13', 'https://p3.maiyaole.com/img/item/201708/23/100_20170823152100380.jpg', '开浦兰 左乙拉西坦片 0.5g*30片', '227.0');
INSERT INTO `listpic` VALUES ('14', 'https://p3.maiyaole.com/img/item/201801/11/100_20180111174713563.jpg', '胡庆余堂 破壁灵芝孢子粉 1.5g*20袋 含灵芝三萜', '288.0');
INSERT INTO `listpic` VALUES ('15', 'https://p3.maiyaole.com/img/item/201801/11/100_20180111173911236.jpg', '胡庆余堂 三七粉 3g*20袋', '138.0');
INSERT INTO `listpic` VALUES ('16', 'https://p1.maiyaole.com/img/item/201803/20/100_20180320174126934.jpg', '同仁堂 红参片 60g*2罐', '428.0');
INSERT INTO `listpic` VALUES ('17', 'https://p4.maiyaole.com/img/201802/27/100_20180227100049985.jpg', '康萃乐 Culturelle 儿童益生菌固体饮料 优良品质含50亿LGG益生菌 1.5g/袋*30/盒 一盒体验装', '98.0');
INSERT INTO `listpic` VALUES ('18', 'https://p3.maiyaole.com/img/201802/01/100_20180201145642778.jpg', '【买2送1原品】蓓诺菲胶原蛋白粉3克*7袋/盒*4盒共28袋', '69.0');
INSERT INTO `listpic` VALUES ('19', 'https://p3.maiyaole.com/img/item/201705/19/100_20170519102139882.jpg', '朗迪 碳酸钙D3颗粒 3g*30袋', '68.0');
INSERT INTO `listpic` VALUES ('20', 'https://p1.maiyaole.com/img/item/201801/23/100_20180123174956956.jpg', '来益 维生素E软胶囊 60粒', '42.0');
INSERT INTO `listpic` VALUES ('21', 'https://p2.maiyaole.com/img/item/201802/23/100_2018022314292981.jpg', '斯利安 叶酸片 0.4mg*93片', '77.0');
INSERT INTO `listpic` VALUES ('22', 'https://p3.maiyaole.com/img/item/201801/05/100_20180105134115418.jpg', '21金维他 多维元素片 100片', '43.0');
INSERT INTO `listpic` VALUES ('23', 'https://p4.maiyaole.com/img/item/201705/22/100_201705221400142.jpg', '惠氏 善存银片 100片 补充多维元素片维生素', '96.9');
INSERT INTO `listpic` VALUES ('24', 'https://p2.maiyaole.com/img/item/201803/02/100_20180302155712860.jpg', '诺斯清鼻腔护理喷雾器', '59.0');
INSERT INTO `listpic` VALUES ('25', 'https://p4.maiyaole.com/img/item/201803/02/100_201803021553495.jpg', '万通筋骨贴 6贴装', '12.8');
INSERT INTO `listpic` VALUES ('26', 'https://p1.maiyaole.com/img/item/201803/02/100_20180302160018589.jpg', '云南白药创可贴100片装', '25.0');
INSERT INTO `listpic` VALUES ('27', 'https://p2.maiyaole.com/img/item/201803/02/100_20180302173141578.jpg', '3M 防霾口罩9501V', '23.5');
INSERT INTO `listpic` VALUES ('28', 'https://p2.maiyaole.com/img/201803/21/100_20180321114006522.jpg', '70支+送7支】国产新优锐BD胰岛素针头0.25*5mm31G新优锐诺和笔一次性无痛注射笔针头 [五切面针头]', '151.9');
INSERT INTO `listpic` VALUES ('29', 'https://p4.maiyaole.com/img/item/201708/03/100_20170803175650889.jpg', '博士伦 清朗水润高清隐形眼镜日抛 30片装 【100】', '118.0');
INSERT INTO `listpic` VALUES ('30', 'https://p4.maiyaole.com/img/item/201803/22/100_20180322105500283.jpg', '强生 舒日隐形眼镜日抛 30片装 【100】', '178.0');
INSERT INTO `listpic` VALUES ('31', 'https://p2.maiyaole.com/img/item/201708/03/100_20170803180504631.jpg', '库博 佰视明隐形眼镜月抛 3片装 【100】', '149.0');
INSERT INTO `listpic` VALUES ('32', 'https://p2.maiyaole.com/img/item/201708/04/100_20170804180849136.jpg', '实瞳 可芙蕾彩色隐形眼镜日抛 30片装 丽棕【100】', '178.0');
INSERT INTO `listpic` VALUES ('33', 'https://p2.maiyaole.com/img/item/201708/21/100_20170821160455310.jpg', '博士伦 润明清透隐形眼镜护理液 355ml*2+120ml', '79.0');
INSERT INTO `listpic` VALUES ('34', 'https://p3.maiyaole.com/img/item/201707/19/100_20170719161415652.jpg', '冈本 避孕套 超薄003白金 10片装 原装进口 Okamoto', '109.0');
INSERT INTO `listpic` VALUES ('35', 'https://p3.maiyaole.com/img/item/201710/25/100_20171025095918484.jpg', '杜蕾斯 避孕套56mm大号凸点螺纹持久12只', '129.0');
INSERT INTO `listpic` VALUES ('36', 'https://p4.maiyaole.com/img/item/201803/07/100_20180307141244208.jpg', '买1送三重好礼】多库力 男用喷剂 印度神油男用喷剂 男性外用 男士喷雾', '199.0');
INSERT INTO `listpic` VALUES ('37', 'https://p4.maiyaole.com/img/item/201710/13/100_20171013092443326.jpg', '杜蕾斯 女性情趣性用品按摩棒05焕觉多速震动棒二代', '129.0');
INSERT INTO `listpic` VALUES ('38', 'https://p1.maiyaole.com/img/item/201803/12/100_20180312150511476.jpg', 'olo 避孕套男用凸点螺纹润滑安全套 龟龍筋物理安全套10只装', '39.0');
INSERT INTO `listpic` VALUES ('39', 'https://p2.maiyaole.com/img/item/201711/15/100_20171115114638366.jpg', '云南白药 牙膏 薄荷香型 210g*4件', '108.0');
INSERT INTO `listpic` VALUES ('40', 'https://p3.maiyaole.com/img/item/201801/10/100_20180110192333576.jpg', 'SK-II护肤精华露 神仙水230ml', '1370.0');
INSERT INTO `listpic` VALUES ('41', 'https://p2.maiyaole.com/img/item/201706/14/100_20170614185210271.jpg', '薇诺娜 舒敏保湿修红护理体验套装', '68.0');
INSERT INTO `listpic` VALUES ('42', 'https://p3.maiyaole.com/img/201801/29/100_20180129145412818.jpg', '【买2送1】顺浩堂 泡沫抑菌洗液（私处护理专用） 120ml', '68.0');
INSERT INTO `listpic` VALUES ('43', 'https://p1.maiyaole.com/img/201706/21/100_20170621141427443.jpg', '【买2送1】SHVYOG 舒友阁去黑头护理套装 黑头导出鼻膜贴+竹炭去黑头鼻膜棒+毛孔细嫩收敛水', '49.9');
INSERT INTO `listpic` VALUES ('44', 'https://p4.maiyaole.com/img/201706/14/100_20170614163639439.jpg', '美国 童年时光childlife 钙镁锌橙味液体钙*2瓶装', '235.0');
INSERT INTO `listpic` VALUES ('45', 'https://p1.maiyaole.com/img/201709/01/100_20170901153657921.jpg', 'Little Remedies 天然蜂蜜止咳棒棒糖 10支', '55.0');
INSERT INTO `listpic` VALUES ('46', 'https://p1.maiyaole.com/img/201706/07/100_20170607173539795.jpg', 'BIO ISLAND 佰澳朗德 孕妇海藻油DHA胶囊 60粒/瓶 2瓶', '319.0');
INSERT INTO `listpic` VALUES ('47', 'https://p3.maiyaole.com/img/201709/01/100_20170901165559145.jpg', 'Mellin/美林 晚安菊花晶200g*2', '89.0');
INSERT INTO `listpic` VALUES ('48', 'https://p4.maiyaole.com/img/201711/03/100_20171103095329145.jpg', '合生元牌儿童益生菌粉（儿童型）奶味 2g/袋*48袋', '242.0');
INSERT INTO `listpic` VALUES ('49', 'https://p2.maiyaole.com/img/item/201710/16/100_20171016154141737.jpg', '小狗（puppy）小型 手持床铺除螨机 除螨仪 家用吸尘器 D-608', '499.0');
INSERT INTO `listpic` VALUES ('50', 'https://p4.maiyaole.com/img/item/201712/29/100_20171229091300487.jpg', 'DeLonghi/德龙 V551220T家用12片电热油汀取暖器电暖万向轮', '2229.0');
INSERT INTO `listpic` VALUES ('51', 'https://p2.maiyaole.com/img/50177/50177983/100_100.jpg', '泰昌足浴盆全自动按摩 电动洗脚盆足浴器TC-2058', '496.0');
INSERT INTO `listpic` VALUES ('52', 'https://p1.maiyaole.com/img/item/201711/11/100_20171111161643507.jpg', '泰昌 敲敲乐 TC-Q007 揉捏按摩披肩 颈肩乐 颈椎腰部按摩器按摩仪 橙色', '189.0');
INSERT INTO `listpic` VALUES ('53', 'https://p2.maiyaole.com/img/item/201704/25/100_20170425174618894.jpg', '九阳养生壶 K15-D03', '149.0');

-- ----------------------------
-- Table structure for `lunbo`
-- ----------------------------
DROP TABLE IF EXISTS `lunbo`;
CREATE TABLE `lunbo` (
  `sid` int(2) NOT NULL,
  `src` varchar(200) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lunbo
-- ----------------------------
INSERT INTO `lunbo` VALUES ('1', 'https://p3.maiyaole.com/img/item/1521683858767123.jpg');
INSERT INTO `lunbo` VALUES ('2', 'https://p1.maiyaole.com/img/item/1521957348451107.jpg');
INSERT INTO `lunbo` VALUES ('3', 'https://p1.maiyaole.com/img/item/1521685625083127.jpg');
INSERT INTO `lunbo` VALUES ('4', 'https://p1.maiyaole.com/img/item/1522030498519193.jpg');
INSERT INTO `lunbo` VALUES ('5', 'https://p3.maiyaole.com/img/item/1522030409715189.jpg');
INSERT INTO `lunbo` VALUES ('6', 'https://p1.maiyaole.com/img/item/1521770353168159.jpg');

-- ----------------------------
-- Table structure for `register`
-- ----------------------------
DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `sid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `phone` varchar(40) NOT NULL,
  `pwd` varchar(40) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of register
-- ----------------------------
INSERT INTO `register` VALUES ('3', '18759658741', '827ccb0eea8a706c4c34a16891f84e7b');
INSERT INTO `register` VALUES ('4', '15755029636', '3a029f04d76d32e79367c4b3255dda4d');
INSERT INTO `register` VALUES ('5', '15755029636', '202cb962ac59075b964b07152d234b70');
INSERT INTO `register` VALUES ('6', '15755029636', 'b53b3a3d6ab90ce0268229151c9bde11');
INSERT INTO `register` VALUES ('7', '15755029999', '6512bd43d9caa6e02c990b0a82652dca');
INSERT INTO `register` VALUES ('8', '15755029638', 'aec60231d83fe6cf81444bc536596887');
INSERT INTO `register` VALUES ('9', '15765431961', 'b57e63ce8b73e370cd2a4c6865fc611b');
INSERT INTO `register` VALUES ('10', '15702315641', 'b57e63ce8b73e370cd2a4c6865fc611b');
INSERT INTO `register` VALUES ('11', '15755029372', 'aec60231d83fe6cf81444bc536596887');
INSERT INTO `register` VALUES ('12', '15755029373', 'aec60231d83fe6cf81444bc536596887');
INSERT INTO `register` VALUES ('13', '15755029374', 'ed5253f883ddaceaa65273f84467b173');
INSERT INTO `register` VALUES ('14', '15755029375', '81dc9bdb52d04dc20036dbd8313ed055');
INSERT INTO `register` VALUES ('15', '15755029376', '81dc9bdb52d04dc20036dbd8313ed055');
INSERT INTO `register` VALUES ('16', '15755029377', '81dc9bdb52d04dc20036dbd8313ed055');
INSERT INTO `register` VALUES ('17', '1578', 'a0a080f42e6f13b3a2df133f073095dd');
INSERT INTO `register` VALUES ('18', '34455', 'd41d8cd98f00b204e9800998ecf8427e');
INSERT INTO `register` VALUES ('19', '', '698d51a19d8a121ce581499d7b701668');
INSERT INTO `register` VALUES ('20', '', '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `register` VALUES ('21', '', 'd41d8cd98f00b204e9800998ecf8427e');
INSERT INTO `register` VALUES ('22', 'hhh', 'e61e7de603852182385da5e907b4b232');
INSERT INTO `register` VALUES ('23', '15755023569', 'aec60231d83fe6cf81444bc536596887');

-- ----------------------------
-- Table structure for `xlunbo`
-- ----------------------------
DROP TABLE IF EXISTS `xlunbo`;
CREATE TABLE `xlunbo` (
  `sid` int(10) NOT NULL,
  `src` varchar(200) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xlunbo
-- ----------------------------
INSERT INTO `xlunbo` VALUES ('0', 'http://p3.maiyaole.com/img/cmsPage/20175cd287ba0428110746/shikangliuc.jpg');
INSERT INTO `xlunbo` VALUES ('1', 'https://p3.maiyaole.com/img/item/1503969299913113.jpg');
INSERT INTO `xlunbo` VALUES ('2', 'https://p3.maiyaole.com/img/item/1503973350201119.jpg');
INSERT INTO `xlunbo` VALUES ('3', 'https://p3.maiyaole.com/img/item/1503295980292119.jpg');
INSERT INTO `xlunbo` VALUES ('4', 'https://p1.maiyaole.com/img/item/1511253690776107.jpg');
INSERT INTO `xlunbo` VALUES ('5', 'https://p3.maiyaole.com/img/item/1510628182782237.jpg');
INSERT INTO `xlunbo` VALUES ('6', 'https://p1.maiyaole.com/img/item/1498011248570101.jpg');
INSERT INTO `xlunbo` VALUES ('7', 'https://p3.maiyaole.com/img/item/1519983396756113.jpg');
INSERT INTO `xlunbo` VALUES ('8', 'https://p3.maiyaole.com/img/item/1522043361186195.jpg');
INSERT INTO `xlunbo` VALUES ('9', 'http://p1.maiyaole.com/img/cmsPage/2018b7fa190d0207101441/louceng.jpg');
INSERT INTO `xlunbo` VALUES ('10', 'http://p2.maiyaole.com/img/cmsPage/20179810f5530807152006/louceng4.jpg');
INSERT INTO `xlunbo` VALUES ('11', 'http://p3.maiyaole.com/img/cmsPage/20179810f5530807152006/yuning.jpg');
INSERT INTO `xlunbo` VALUES ('12', 'https://p2.maiyaole.com/img/item/1510800479012195.jpg');
INSERT INTO `xlunbo` VALUES ('14', 'http://p3.maiyaole.com/img/cmsPage/20175cd287ba0428110746/shikangliuc.jpg');
INSERT INTO `xlunbo` VALUES ('15', 'https://p2.maiyaole.com/img/cmsPage/20161c8fb7211111204915/QSQIJ.jpg');
INSERT INTO `xlunbo` VALUES ('16', 'http://p2.maiyaole.com/img/cmsPage/2016a12a4fb81031133033/PClouceng0321.jpg');
INSERT INTO `xlunbo` VALUES ('17', 'http://p1.maiyaole.com/img/cmsPage/2017e45221bf1030171901/yaomeinvshen38jei.jpg');
INSERT INTO `xlunbo` VALUES ('18', 'http://p3.maiyaole.com/img/cmsPage/2017e45221bf1030171901/PCLOUC.jpg');
INSERT INTO `xlunbo` VALUES ('19', 'http://p1.maiyaole.com/img/cmsPage/2017e45221bf1030171901/shenghe38jie.jpg');
INSERT INTO `xlunbo` VALUES ('20', 'http://p1.maiyaole.com/img/cmsPage/2017e45221bf1030171901/shenghe38jie.jpg');
INSERT INTO `xlunbo` VALUES ('21', 'https://p1.maiyaole.com/img/item/1519806295909101.jpg');
INSERT INTO `xlunbo` VALUES ('22', 'http://p4.maiyaole.com/img/cmsPage/201769b17e780523175036/20171109162048.jpg');
INSERT INTO `xlunbo` VALUES ('23', 'http://p3.maiyaole.com/img/cmsPage/2018fa287ee20112145949/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20180102141839.jpg');

-- ----------------------------
-- Table structure for `yzm`
-- ----------------------------
DROP TABLE IF EXISTS `yzm`;
CREATE TABLE `yzm` (
  `sid` tinyint(2) NOT NULL AUTO_INCREMENT,
  `num` int(10) NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm
-- ----------------------------
