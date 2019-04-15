/*
Navicat MySQL Data Transfer

Source Server         : aliterm
Source Server Version : 50719
Source Host           : 47.106.69.227:3306
Source Database       : irodocument

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2019-04-16 00:05:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `dept_id` int(5) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(20) NOT NULL,
  `dept_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '经理室', '这里边都是经理');
INSERT INTO `dept` VALUES ('2', '财务部', '这里处理和财务有关的');
INSERT INTO `dept` VALUES ('3', 'IT部门', '负责在线管理系统的开发等工作');

-- ----------------------------
-- Table structure for receipt
-- ----------------------------
DROP TABLE IF EXISTS `receipt`;
CREATE TABLE `receipt` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Danhao` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '原始单号',
  `Dianpu` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '店铺',
  `JiJianRenName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '寄件人姓名',
  `JiJianRenAdress` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '寄件人地址',
  `JiJianRenDianHua` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '寄件人电话',
  `JiJianRenShouJi` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '寄件人手机',
  `JiJianRenSheng` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '寄件人省',
  `JiJianRenShi` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '寄件人市',
  `JiJianRenQu` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '寄件人区/县',
  `JiJianRenDetailAdd` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '寄件人详细地址',
  `JiJianRenPostCode` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '寄件人邮政编码',
  `CustomerID` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '客户ID',
  `ShouJianRenName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '收件人姓名',
  `ShouJianRenShouJi` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '收件人手机',
  `ShouJianRenDianHua` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '收件人电话',
  `ShouJianRenSheng` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '收件人省',
  `ShouJianRenShi` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '收件人市',
  `ShouJianRenQu` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '收件人区/县',
  `ShouJianRenDetailAdd` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '收件人详细地址',
  `DingDanSumMoney` decimal(10,2) DEFAULT NULL COMMENT '订单总金额',
  `DingDanShiFuMoney` decimal(10,2) DEFAULT NULL COMMENT '实付总金额',
  `YunFei` decimal(10,2) DEFAULT NULL COMMENT '运费',
  `GoodsCode` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品编码',
  `GoodsTitle` varchar(555) COLLATE utf8_bin DEFAULT NULL COMMENT '商品标题',
  `GoodsGuiGe` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品规格',
  `GoodsPrice` decimal(10,2) DEFAULT NULL COMMENT '商品价格',
  `GoodsCount` int(11) DEFAULT NULL COMMENT '商品数量',
  `GoodsWeight` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品重量',
  `Message` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '留言',
  `Memo` varchar(2555) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `IsDaoFu` varchar(2) COLLATE utf8_bin DEFAULT NULL COMMENT '是否到付',
  `XiaFaWarehouse` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '下发仓库',
  `ZiDingYi1` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义1',
  `ZiDingYi2` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义2',
  `ZiDingYi3` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义3',
  `ZiDingYi4` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义4',
  `ZiDingYi5` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义5',
  `ZiDingYi6` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义6',
  `ZiDingYi7` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义7',
  `ZiDingYi8` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义8',
  `ZiDingYiFlag` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义标志',
  `FuKuanTime` datetime DEFAULT NULL COMMENT '付款时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of receipt
-- ----------------------------
INSERT INTO `receipt` VALUES ('1', '83015514022331518', '霍改芹的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('2', '98715514031444198', '陈青华的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('3', '82415514083403449', '陈雪的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('4', '82415514083403449', '陈雪的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('5', '83415514110717598', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('6', '82415514126023381', '可谕的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('7', '69615514158897854', '江婷的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('8', '98115514185133905', '15138978778的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('9', '95815514193746572', '可谕的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('10', '68615514210446613', '13935456958的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('11', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('12', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('13', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('14', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('15', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('16', '97515514258234634', '陈雪的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('17', '62915514271252468', '霍改芹的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('18', '89015514305364852', '陈代英的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('19', '65915514336491525', '单晓莉的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('20', '91215514339381941', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('21', '91215514339381941', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('22', '72615514347429214', '瑶  瑶的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('23', '73115514378381572', '秋水的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('24', '73115514378381572', '秋水的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('25', '96715514407473825', '霍改芹的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('26', '79615514410231989', '刘美君的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('27', '74015514449322540', '陈雪的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('28', '83015514022331518', '霍改芹的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('29', '98715514031444198', '陈青华的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('30', '82415514083403449', '陈雪的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('31', '82415514083403449', '陈雪的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('32', '83415514110717598', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('33', '82415514126023381', '可谕的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('34', '69615514158897854', '江婷的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('35', '98115514185133905', '15138978778的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('36', '95815514193746572', '可谕的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('37', '68615514210446613', '13935456958的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('38', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('39', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('40', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('41', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('42', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('43', '97515514258234634', '陈雪的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('44', '62915514271252468', '霍改芹的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('45', '89015514305364852', '陈代英的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('46', '65915514336491525', '单晓莉的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('47', '91215514339381941', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('48', '91215514339381941', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('49', '72615514347429214', '瑶  瑶的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('50', '73115514378381572', '秋水的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('51', '73115514378381572', '秋水的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('52', '96715514407473825', '霍改芹的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('53', '79615514410231989', '刘美君的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('54', '74015514449322540', '陈雪的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('55', '87415514464058658', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('56', '77515514468663171', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('57', '77515514468663171', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('58', '94715514471019623', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('59', '76815514499511241', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('60', '71115514507776514', '蓉儿的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('61', '71115514507776514', '蓉儿的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('62', '91215514509314002', '陈青华的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('63', '67315514517513424', '王曙霞的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('64', '65015514520002324', '单晓莉的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('65', '83015514022331518', '霍改芹的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('66', '98715514031444198', '陈青华的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('67', '82415514083403449', '陈雪的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('68', '82415514083403449', '陈雪的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('69', '83415514110717598', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('70', '82415514126023381', '可谕的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('71', '69615514158897854', '江婷的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('72', '98115514185133905', '15138978778的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('73', '95815514193746572', '可谕的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('74', '68615514210446613', '13935456958的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('75', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('76', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('77', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('78', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('79', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('80', '97515514258234634', '陈雪的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('81', '62915514271252468', '霍改芹的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('82', '89015514305364852', '陈代英的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('83', '65915514336491525', '单晓莉的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('84', '91215514339381941', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('85', '91215514339381941', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('86', '72615514347429214', '瑶  瑶的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('87', '73115514378381572', '秋水的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('88', '73115514378381572', '秋水的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('89', '96715514407473825', '霍改芹的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('90', '79615514410231989', '刘美君的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('91', '74015514449322540', '陈雪的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('92', '77515514468663171', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('93', '77515514468663171', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('94', '94715514471019623', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('95', '76815514499511241', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('96', '71115514507776514', '蓉儿的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('97', '71115514507776514', '蓉儿的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('98', '91215514509314002', '陈青华的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('99', '67315514517513424', '王曙霞的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('100', '65015514520002324', '单晓莉的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('101', '83015514022331518', '霍改芹的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('102', '98715514031444198', '陈青华的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('103', '82415514083403449', '陈雪的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('104', '82415514083403449', '陈雪的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('105', '83415514110717598', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('106', '82415514126023381', '可谕的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('107', '69615514158897854', '江婷的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('108', '98115514185133905', '15138978778的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('109', '95815514193746572', '可谕的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('110', '68615514210446613', '13935456958的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('111', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('112', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('113', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('114', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('115', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('116', '97515514258234634', '陈雪的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('117', '62915514271252468', '霍改芹的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('118', '89015514305364852', '陈代英的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('119', '65915514336491525', '单晓莉的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('120', '91215514339381941', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('121', '91215514339381941', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('122', '72615514347429214', '瑶  瑶的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('123', '73115514378381572', '秋水的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('124', '73115514378381572', '秋水的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('125', '96715514407473825', '霍改芹的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('126', '79615514410231989', '刘美君的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('127', '74015514449322540', '陈雪的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('128', '77515514468663171', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('129', '77515514468663171', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('130', '94715514471019623', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('131', '76815514499511241', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('132', '71115514507776514', '蓉儿的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('133', '71115514507776514', '蓉儿的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('134', '91215514509314002', '陈青华的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('135', '67315514517513424', '王曙霞的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('136', '65015514520002324', '单晓莉的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('137', '83015514022331518', '霍改芹的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('138', '98715514031444198', '陈青华的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('139', '82415514083403449', '陈雪的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('140', '82415514083403449', '陈雪的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('141', '83415514110717598', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('142', '82415514126023381', '可谕的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('143', '69615514158897854', '江婷的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('144', '98115514185133905', '15138978778的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('145', '95815514193746572', '可谕的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('146', '68615514210446613', '13935456958的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('147', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('148', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('149', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('150', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('151', '68415514233834283', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('152', '97515514258234634', '陈雪的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('153', '62915514271252468', '霍改芹的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('154', '89015514305364852', '陈代英的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('155', '65915514336491525', '单晓莉的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('156', '91215514339381941', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('157', '91215514339381941', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('158', '72615514347429214', '瑶  瑶的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('159', '73115514378381572', '秋水的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('160', '73115514378381572', '秋水的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('161', '96715514407473825', '霍改芹的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('162', '79615514410231989', '刘美君的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('163', '74015514449322540', '陈雪的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('164', '77515514468663171', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('165', '77515514468663171', '姚媚的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('166', '94715514471019623', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('167', '76815514499511241', '白玉青:的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('168', '71115514507776514', '蓉儿的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('169', '71115514507776514', '蓉儿的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('170', '91215514509314002', '陈青华的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('171', '67315514517513424', '王曙霞的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');
INSERT INTO `receipt` VALUES ('172', '65015514520002324', '单晓莉的社群商城', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', '0.00', '0.00', null, null, null, '0.00', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0001-01-01 00:00:00');

-- ----------------------------
-- Table structure for receipt_history
-- ----------------------------
DROP TABLE IF EXISTS `receipt_history`;
CREATE TABLE `receipt_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `danhao` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '原始单号',
  `dianpu` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '店铺',
  `JiJianRenName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '寄件人姓名',
  `JiJianRenAdress` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '寄件人地址',
  `JiJianRenDianHua` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '寄件人电话',
  `JiJianRenShouJi` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '寄件人手机',
  `JiJianRenSheng` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '寄件人省',
  `JiJianRenShi` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '寄件人市',
  `JiJianRenQu` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '寄件人区/县',
  `JiJianRenDetailAdd` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '寄件人详细地址',
  `JiJianRenPostCode` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '寄件人邮政编码',
  `CustomerID` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '客户ID',
  `ShouJianRenName` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '收件人姓名',
  `ShouJianRenShouJi` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '收件人手机',
  `ShouJianRenDianHua` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '收件人电话',
  `ShouJianRenSheng` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '收件人省',
  `ShouJianRenShi` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '收件人市',
  `ShouJianRenQu` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '收件人区/县',
  `ShouJianRenDetailAdd` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '收件人详细地址',
  `DingDanSumMoney` decimal(10,2) NOT NULL COMMENT '订单总金额',
  `DingDanShiFuMoney` decimal(10,2) NOT NULL COMMENT '实付总金额',
  `YunFei` decimal(10,2) NOT NULL COMMENT '运费',
  `GoodsCode` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '商品编码',
  `GoodsTitle` varchar(555) COLLATE utf8_bin NOT NULL COMMENT '商品标题',
  `GoodsGuiGe` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品规格',
  `GoodsPrice` decimal(10,2) DEFAULT NULL COMMENT '商品价格',
  `GoodsCount` int(11) NOT NULL COMMENT '商品数量',
  `GoodsWeight` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品重量',
  `Message` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '留言',
  `Memo` varchar(2555) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `IsDaoFu` varchar(2) COLLATE utf8_bin DEFAULT NULL COMMENT '是否到付',
  `XiaFaWarehouse` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '下发仓库',
  `ZiDingYi1` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义1',
  `ZiDingYi2` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义2',
  `ZiDingYi3` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义3',
  `ZiDingYi4` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义4',
  `ZiDingYi5` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义5',
  `ZiDingYi6` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义6',
  `ZiDingYi7` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义7',
  `ZiDingYi8` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义8',
  `ZiDingYiFlag` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义标志',
  `FuKuanTime` datetime NOT NULL COMMENT '付款时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of receipt_history
-- ----------------------------

-- ----------------------------
-- Table structure for sys_auth
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth`;
CREATE TABLE `sys_auth` (
  `auth_id` int(5) NOT NULL AUTO_INCREMENT,
  `auth_name` varchar(20) NOT NULL,
  `auth_code` varchar(20) DEFAULT NULL,
  `auth_desc` varchar(20) DEFAULT NULL,
  `auth_layer` int(3) DEFAULT NULL,
  `auth_url` varchar(50) DEFAULT NULL,
  `parent_id` int(5) DEFAULT NULL,
  `orders` int(5) DEFAULT NULL,
  `auth_type` int(1) DEFAULT NULL,
  `is_valid` int(1) DEFAULT NULL,
  PRIMARY KEY (`auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_auth
-- ----------------------------
INSERT INTO `sys_auth` VALUES ('1', '生产管理', 'scgl', '车间生产工作', '1', null, '-1', '10', '0', '0');
INSERT INTO `sys_auth` VALUES ('2', '财务管理', 'cwgl', '财务', '1', null, '-1', '20', '0', '0');
INSERT INTO `sys_auth` VALUES ('3', '系统管理', 'xtgl', '用户，角色，权限', '1', null, '-1', '30', '0', '0');
INSERT INTO `sys_auth` VALUES ('4', '用户管理', 'yhgl', '用户管理', '2', 'user/list', '3', '10', '0', '0');
INSERT INTO `sys_auth` VALUES ('5', '添加用户', 'tjyh', '添加用户', '3', null, '4', '10', '1', '0');
INSERT INTO `sys_auth` VALUES ('6', '编辑用户', 'bjyh', '编辑用户', '3', null, '4', '20', '1', '0');
INSERT INTO `sys_auth` VALUES ('7', '删除用户', 'scyh', '删除用户', '3', null, '4', '30', '1', '0');
INSERT INTO `sys_auth` VALUES ('8', '角色管理', 'jsgl', '角色管理', '2', 'role/list', '3', '20', '0', '0');
INSERT INTO `sys_auth` VALUES ('9', '添加角色', 'tjjs', '添加角色', '3', null, '8', '10', '1', '0');
INSERT INTO `sys_auth` VALUES ('10', '编辑角色', 'bjjs', '编辑角色', '3', null, '8', '20', '1', '0');
INSERT INTO `sys_auth` VALUES ('11', '删除角色', 'scjs', '删除角色', '3', null, '8', '30', '1', '0');
INSERT INTO `sys_auth` VALUES ('12', '权限管理', 'qxgl', '权限管理', '2', 'auth/list', '3', '30', '0', '0');
INSERT INTO `sys_auth` VALUES ('13', '添加权限', 'tjqx', '添加权限', '3', null, '12', '10', '1', '0');
INSERT INTO `sys_auth` VALUES ('14', '编辑权限', 'bjqx', '编辑权限', '3', null, '12', '20', '1', '0');
INSERT INTO `sys_auth` VALUES ('15', '删除权限', 'scqx', '删除权限', '3', null, '12', '30', '1', '0');
INSERT INTO `sys_auth` VALUES ('16', '部门管理', 'bmgl', '部门管理', '2', '', '3', '9', '0', '0');
INSERT INTO `sys_auth` VALUES ('17', '添加部门', 'tjbm', '添加部门', '3', null, '16', '10', '1', '0');
INSERT INTO `sys_auth` VALUES ('18', '编辑部门', 'bjbm', '编辑部门资料', '3', null, '16', '20', '1', '0');
INSERT INTO `sys_auth` VALUES ('19', '删除权限', 'scqx', '删除权限', '3', null, '16', '30', '1', '0');
INSERT INTO `sys_auth` VALUES ('20', '原料管理', 'ylgl', '生产原料的负责', '2', '', '1', '51', '0', '0');
INSERT INTO `sys_auth` VALUES ('21', '订单管理', 'ddgl', '订单的生成和导入导出', '2', '', '1', '10', '0', '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` int(5) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) NOT NULL,
  `role_code` varchar(20) DEFAULT NULL,
  `role_desc` varchar(20) DEFAULT NULL,
  `orders` int(3) DEFAULT NULL,
  `is_valid` int(1) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '总经理', 'zjl', '总经理', '10', '0');
INSERT INTO `sys_role` VALUES ('2', '销售副总', 'xsfz', '负责销售', '20', '0');
INSERT INTO `sys_role` VALUES ('3', 'IT主管', 'itzg', '负责开发', '30', '0');
INSERT INTO `sys_role` VALUES ('4', '财务主管', 'cwzg', '负责财务', '40', '0');
INSERT INTO `sys_role` VALUES ('5', 'HR', 'hr', '负责人事', '50', '0');

-- ----------------------------
-- Table structure for sys_role_auth
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_auth`;
CREATE TABLE `sys_role_auth` (
  `dbid` int(5) NOT NULL AUTO_INCREMENT,
  `role_id` int(5) DEFAULT NULL,
  `auth_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`dbid`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_auth
-- ----------------------------
INSERT INTO `sys_role_auth` VALUES ('1', '1', '1');
INSERT INTO `sys_role_auth` VALUES ('2', '1', '2');
INSERT INTO `sys_role_auth` VALUES ('3', '1', '3');
INSERT INTO `sys_role_auth` VALUES ('4', '1', '4');
INSERT INTO `sys_role_auth` VALUES ('5', '1', '8');
INSERT INTO `sys_role_auth` VALUES ('6', '1', '12');
INSERT INTO `sys_role_auth` VALUES ('7', '1', '16');
INSERT INTO `sys_role_auth` VALUES ('8', '2', '3');
INSERT INTO `sys_role_auth` VALUES ('10', '5', '3');
INSERT INTO `sys_role_auth` VALUES ('11', '5', '4');
INSERT INTO `sys_role_auth` VALUES ('12', '5', '5');
INSERT INTO `sys_role_auth` VALUES ('13', '5', '6');
INSERT INTO `sys_role_auth` VALUES ('14', '5', '7');
INSERT INTO `sys_role_auth` VALUES ('15', '5', '8');
INSERT INTO `sys_role_auth` VALUES ('16', '5', '9');
INSERT INTO `sys_role_auth` VALUES ('17', '5', '10');
INSERT INTO `sys_role_auth` VALUES ('18', '5', '11');
INSERT INTO `sys_role_auth` VALUES ('19', '5', '12');
INSERT INTO `sys_role_auth` VALUES ('20', '5', '13');
INSERT INTO `sys_role_auth` VALUES ('21', '5', '14');
INSERT INTO `sys_role_auth` VALUES ('22', '5', '15');
INSERT INTO `sys_role_auth` VALUES ('23', '5', '16');
INSERT INTO `sys_role_auth` VALUES ('24', '5', '17');
INSERT INTO `sys_role_auth` VALUES ('25', '5', '18');
INSERT INTO `sys_role_auth` VALUES ('26', '5', '19');
INSERT INTO `sys_role_auth` VALUES ('28', '0', '1');
INSERT INTO `sys_role_auth` VALUES ('29', '0', '2');
INSERT INTO `sys_role_auth` VALUES ('30', '0', '3');
INSERT INTO `sys_role_auth` VALUES ('31', '0', '4');
INSERT INTO `sys_role_auth` VALUES ('32', '0', '5');
INSERT INTO `sys_role_auth` VALUES ('33', '0', '6');
INSERT INTO `sys_role_auth` VALUES ('34', '0', '7');
INSERT INTO `sys_role_auth` VALUES ('35', '0', '8');
INSERT INTO `sys_role_auth` VALUES ('36', '0', '9');
INSERT INTO `sys_role_auth` VALUES ('37', '0', '10');
INSERT INTO `sys_role_auth` VALUES ('38', '0', '11');
INSERT INTO `sys_role_auth` VALUES ('39', '0', '12');
INSERT INTO `sys_role_auth` VALUES ('40', '0', '13');
INSERT INTO `sys_role_auth` VALUES ('41', '0', '14');
INSERT INTO `sys_role_auth` VALUES ('42', '0', '15');
INSERT INTO `sys_role_auth` VALUES ('43', '0', '16');
INSERT INTO `sys_role_auth` VALUES ('44', '0', '17');
INSERT INTO `sys_role_auth` VALUES ('45', '0', '18');
INSERT INTO `sys_role_auth` VALUES ('46', '0', '19');
INSERT INTO `sys_role_auth` VALUES ('47', '0', '20');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL,
  `password` varchar(36) NOT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `dept_id` int(5) DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `is_valid` int(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '0884f7bd084036a4e270af38114dd8f7', '男', '21', '577586587@qq.com', '18763707131', '1', '2019-04-13 12:24:07', '0');
INSERT INTO `sys_user` VALUES ('2', 'martin', '60025f07c757ca26aa57f9632a5c05ae', '男', '22', '577586587@gmail.com', '19862717710', '1', '2019-04-13 12:25:11', '0');
INSERT INTO `sys_user` VALUES ('3', 'ping', '7d83803bd2bbcc0176a6c33052e563b7', '女', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `dbid` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(5) DEFAULT NULL,
  `role_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`dbid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1', '1');
INSERT INTO `sys_user_role` VALUES ('5', '2', '3');
INSERT INTO `sys_user_role` VALUES ('6', '3', '4');
INSERT INTO `sys_user_role` VALUES ('7', '1', '0');
