/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : hospital

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2023-10-10 09:04:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `adminPassword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `adminId` int(11) NOT NULL,
  PRIMARY KEY (`adminId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin', '1');
INSERT INTO `admin` VALUES ('zyz', '1124', '2');

-- ----------------------------
-- Table structure for bed
-- ----------------------------
DROP TABLE IF EXISTS `bed`;
CREATE TABLE `bed` (
  `bid` int(11) NOT NULL,
  `bedState` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bed
-- ----------------------------
INSERT INTO `bed` VALUES ('1', '有人');
INSERT INTO `bed` VALUES ('2', '有人');
INSERT INTO `bed` VALUES ('3', '有人');
INSERT INTO `bed` VALUES ('4', '有人');
INSERT INTO `bed` VALUES ('5', '无人');
INSERT INTO `bed` VALUES ('6', '有人');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `dId` int(11) NOT NULL,
  `dName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dResponsible` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`dId`) USING BTREE,
  KEY `dName` (`dName`) USING BTREE,
  KEY `dResponsible` (`dResponsible`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '外科', '张三');
INSERT INTO `department` VALUES ('2', '内科', '小李');
INSERT INTO `department` VALUES ('3', '神经内科', '王五');
INSERT INTO `department` VALUES ('4', '神经外科', '666');
INSERT INTO `department` VALUES ('5', '中西医结合科', '刘慧');

-- ----------------------------
-- Table structure for diagnosis_and_treatment
-- ----------------------------
DROP TABLE IF EXISTS `diagnosis_and_treatment`;
CREATE TABLE `diagnosis_and_treatment` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `dName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `money` double DEFAULT NULL,
  `dResponsible` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`did`) USING BTREE,
  KEY `dia_rem_fk1` (`rName`) USING BTREE,
  KEY `dia_reg_fk2` (`dName`) USING BTREE,
  KEY `dia_reg_fk3` (`dResponsible`) USING BTREE,
  KEY `dia_bed_fk4` (`bid`) USING BTREE,
  CONSTRAINT `dia_bed_fk4` FOREIGN KEY (`bid`) REFERENCES `bed` (`bid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `dia_reg_fk2` FOREIGN KEY (`dName`) REFERENCES `register` (`dName`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `dia_reg_fk3` FOREIGN KEY (`dResponsible`) REFERENCES `register` (`dResponsible`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `dia_rem_fk1` FOREIGN KEY (`rName`) REFERENCES `remedy` (`rName`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of diagnosis_and_treatment
-- ----------------------------

-- ----------------------------
-- Table structure for instrument
-- ----------------------------
DROP TABLE IF EXISTS `instrument`;
CREATE TABLE `instrument` (
  `iId` int(11) NOT NULL,
  `iName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `iPrice` decimal(10,2) DEFAULT NULL,
  `iNum` int(11) DEFAULT NULL,
  `iRemark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `iState` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`iId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of instrument
-- ----------------------------
INSERT INTO `instrument` VALUES ('1', '核磁共振仪', '1000000.00', '2', '核磁', '1');
INSERT INTO `instrument` VALUES ('2', '血氧检测器', '100.00', '99', '指夹式', '借用');
INSERT INTO `instrument` VALUES ('3', '设计费is啊', '21314.00', '12324', '风斗SV', '大多数VS');

-- ----------------------------
-- Table structure for mediciner
-- ----------------------------
DROP TABLE IF EXISTS `mediciner`;
CREATE TABLE `mediciner` (
  `mId` int(11) NOT NULL,
  `mName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mSex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dId` int(11) DEFAULT NULL,
  `mStatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mAge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mPhone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`mId`) USING BTREE,
  KEY `didd` (`dId`) USING BTREE,
  KEY `dId` (`dId`,`mName`),
  KEY `mName` (`mName`),
  CONSTRAINT `didd` FOREIGN KEY (`dId`) REFERENCES `department` (`dId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mediciner
-- ----------------------------
INSERT INTO `mediciner` VALUES ('1', '马晓云', '女', '5', '主治医生', '66', '183766349016');
INSERT INTO `mediciner` VALUES ('3', '巨小东', '男', '4', '副主任', '51', '192077645198');
INSERT INTO `mediciner` VALUES ('4', '赵斎', '男', '5', '副主任', '62', '18903351679');
INSERT INTO `mediciner` VALUES ('5', '张宇', '男', '4', '主任', '12', '1234567890');
INSERT INTO `mediciner` VALUES ('6', '王强', '男', '4', '主任', '56', '1234456677');
INSERT INTO `mediciner` VALUES ('12', '程哥', '男', '4', '副主任', '21', '123456789');

-- ----------------------------
-- Table structure for patient
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `pId` int(11) NOT NULL,
  `pName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pSex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pTime` datetime DEFAULT NULL,
  `pIllness` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `pAge` int(11) DEFAULT NULL,
  PRIMARY KEY (`pId`) USING BTREE,
  KEY `bid` (`bid`) USING BTREE,
  KEY `pName` (`pName`) USING BTREE,
  KEY `pSex` (`pSex`) USING BTREE,
  KEY `mid` (`mid`) USING BTREE,
  CONSTRAINT `bid` FOREIGN KEY (`bid`) REFERENCES `bed` (`bid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `mid` FOREIGN KEY (`mid`) REFERENCES `mediciner` (`mId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of patient
-- ----------------------------
INSERT INTO `patient` VALUES ('1', 'zz', 'aa', '2023-01-07 16:43:02', 'zz', '3', '4', null);
INSERT INTO `patient` VALUES ('2', '李四', '男', '2023-01-27 17:18:22', '呼吸困难', '1', '2', null);
INSERT INTO `patient` VALUES ('3', '张三', '女', '2023-01-18 17:21:47', '头疼', '4', '3', null);
INSERT INTO `patient` VALUES ('4', '王麻子', '男', '2023-01-12 18:44:00', '气管炎', '3', '4', null);

-- ----------------------------
-- Table structure for pay
-- ----------------------------
DROP TABLE IF EXISTS `pay`;
CREATE TABLE `pay` (
  `payId` int(11) NOT NULL,
  `payName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payPrice` decimal(10,2) DEFAULT NULL,
  `pId` int(11) DEFAULT NULL,
  PRIMARY KEY (`payId`) USING BTREE,
  KEY `pid` (`pId`) USING BTREE,
  CONSTRAINT `pid` FOREIGN KEY (`pId`) REFERENCES `patient` (`pId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of pay
-- ----------------------------
INSERT INTO `pay` VALUES ('1', 'zz', '10.20', '1');
INSERT INTO `pay` VALUES ('2', '中药费用', '55.00', '3');

-- ----------------------------
-- Table structure for register
-- ----------------------------
DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rgender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rage` int(11) DEFAULT NULL,
  `rtime` date DEFAULT NULL,
  `problem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dResponsible` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`rid`) USING BTREE,
  KEY `reg_dep_fk1` (`dName`) USING BTREE,
  KEY `reg_dep_fk2` (`dResponsible`) USING BTREE,
  CONSTRAINT `reg_dep_fk1` FOREIGN KEY (`dName`) REFERENCES `department` (`dName`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `reg_dep_fk2` FOREIGN KEY (`dResponsible`) REFERENCES `department` (`dResponsible`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of register
-- ----------------------------
INSERT INTO `register` VALUES ('13', '李四', '女', '10', '2023-01-20', '屁股疼', '外科', '小李');
INSERT INTO `register` VALUES ('14', '老六', '女', '10', '2023-01-13', '肚子疼', '外科', '小李');
INSERT INTO `register` VALUES ('31', '李时珍', '男', '66', '2023-01-15', '腿断了，要接股', '中西医结合科', '刘慧');
INSERT INTO `register` VALUES ('32', '嗨嗨', '男', '12', '2023-01-13', '而是对方', '外科', '王五');
INSERT INTO `register` VALUES ('36', '十一', '男', '45', '2023-01-13', '卒子不舒服', '内科', '张三');

-- ----------------------------
-- Table structure for remedy
-- ----------------------------
DROP TABLE IF EXISTS `remedy`;
CREATE TABLE `remedy` (
  `rId` int(11) NOT NULL,
  `rName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rPrice` decimal(10,2) DEFAULT NULL,
  `rNum` int(11) DEFAULT NULL,
  `rRemark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`rId`) USING BTREE,
  KEY `rName` (`rName`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of remedy
-- ----------------------------
INSERT INTO `remedy` VALUES ('1', '头孢', '10.00', '99', null);
INSERT INTO `remedy` VALUES ('2', '止痛剂', '50.00', '10', '受监管药剂');
INSERT INTO `remedy` VALUES ('3', '阿莫西林', '5.00', '9999', null);
INSERT INTO `remedy` VALUES ('4', '还不到家as', '13.00', '2134', '');

-- ----------------------------
-- View structure for v_bedall
-- ----------------------------
DROP VIEW IF EXISTS `v_bedall`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_bedall` AS select `v_bednull_three`.`bid` AS `bid`,`v_bednull_three`.`bedState` AS `bedState`,`v_bednull_three`.`pName` AS `pName`,`v_bednull_three`.`pSex` AS `pSex`,`v_bednull_three`.`pTime` AS `pTime`,`v_bednull_three`.`pIllness` AS `pIllness`,`v_bednull_three`.`mName` AS `mName`,`v_bednull_three`.`dName` AS `dName` from `v_bednull_three` ;

-- ----------------------------
-- View structure for v_bednull_one
-- ----------------------------
DROP VIEW IF EXISTS `v_bednull_one`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_bednull_one` AS select `bed`.`bid` AS `bid`,`bed`.`bedState` AS `bedState`,`patient`.`pName` AS `pName`,`patient`.`pSex` AS `pSex`,`patient`.`pTime` AS `pTime`,`patient`.`pIllness` AS `pIllness`,`patient`.`pId` AS `pId`,`patient`.`mid` AS `mid` from (`bed` left join `patient` on((`bed`.`bid` = `patient`.`bid`))) ;

-- ----------------------------
-- View structure for v_bednull_three
-- ----------------------------
DROP VIEW IF EXISTS `v_bednull_three`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_bednull_three` AS select `v_bednull_two`.`bid` AS `bid`,`v_bednull_two`.`bedState` AS `bedState`,`v_bednull_two`.`pName` AS `pName`,`v_bednull_two`.`pSex` AS `pSex`,`v_bednull_two`.`pTime` AS `pTime`,`v_bednull_two`.`pIllness` AS `pIllness`,`v_bednull_two`.`pId` AS `pId`,`v_bednull_two`.`mid` AS `mid`,`v_bednull_two`.`mName` AS `mName`,`v_bednull_two`.`dId` AS `dId`,`department`.`dName` AS `dName` from (`v_bednull_two` left join `department` on((`v_bednull_two`.`dId` = `department`.`dId`))) ;

-- ----------------------------
-- View structure for v_bednull_two
-- ----------------------------
DROP VIEW IF EXISTS `v_bednull_two`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_bednull_two` AS select `v_bednull_one`.`bid` AS `bid`,`v_bednull_one`.`bedState` AS `bedState`,`v_bednull_one`.`pName` AS `pName`,`v_bednull_one`.`pSex` AS `pSex`,`v_bednull_one`.`pTime` AS `pTime`,`v_bednull_one`.`pIllness` AS `pIllness`,`v_bednull_one`.`pId` AS `pId`,`v_bednull_one`.`mid` AS `mid`,`mediciner`.`mName` AS `mName`,`mediciner`.`dId` AS `dId` from (`v_bednull_one` left join `mediciner` on((`v_bednull_one`.`mid` = `mediciner`.`mId`))) ;

-- ----------------------------
-- View structure for v_mediciner
-- ----------------------------
DROP VIEW IF EXISTS `v_mediciner`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mediciner` AS select `mediciner`.`mId` AS `mId`,`mediciner`.`mName` AS `mName`,`mediciner`.`mSex` AS `mSex`,`mediciner`.`mStatus` AS `mStatus`,`mediciner`.`mAge` AS `mAge`,`mediciner`.`mPhone` AS `mPhone`,`department`.`dName` AS `dName` from (`mediciner` join `department` on((`mediciner`.`dId` = `department`.`dId`))) group by `mediciner`.`mId` ;

-- ----------------------------
-- View structure for v_mediciner_full
-- ----------------------------
DROP VIEW IF EXISTS `v_mediciner_full`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mediciner_full` AS select `mediciner`.`mId` AS `mId`,`mediciner`.`mName` AS `mName`,`mediciner`.`mSex` AS `mSex`,`mediciner`.`mStatus` AS `mStatus`,`mediciner`.`mAge` AS `mAge`,`mediciner`.`mPhone` AS `mPhone`,`department`.`dName` AS `dName` from (`mediciner` left join `department` on((`department`.`dId` = `mediciner`.`dId`))) ;

-- ----------------------------
-- View structure for v_patient
-- ----------------------------
DROP VIEW IF EXISTS `v_patient`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_patient` AS select `v_patient_three`.`pId` AS `pId`,`v_patient_three`.`pName` AS `pName`,`v_patient_three`.`pSex` AS `pSex`,`v_patient_three`.`pTime` AS `pTime`,`v_patient_three`.`pIllness` AS `pIllness`,`v_patient_three`.`mName` AS `mName`,`v_patient_three`.`dName` AS `dName`,`v_patient_three`.`bid` AS `bid` from `v_patient_three` order by `v_patient_three`.`pId` ;

-- ----------------------------
-- View structure for v_patient_one
-- ----------------------------
DROP VIEW IF EXISTS `v_patient_one`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_patient_one` AS select `patient`.`pId` AS `pId`,`patient`.`pName` AS `pName`,`patient`.`pSex` AS `pSex`,`patient`.`pTime` AS `pTime`,`patient`.`pIllness` AS `pIllness`,`patient`.`mid` AS `mid`,`patient`.`bid` AS `bid`,`bed`.`bedState` AS `bedState` from (`patient` left join `bed` on((`patient`.`bid` = `bed`.`bid`))) ;

-- ----------------------------
-- View structure for v_patient_three
-- ----------------------------
DROP VIEW IF EXISTS `v_patient_three`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_patient_three` AS select `v_patient_two`.`pId` AS `pId`,`v_patient_two`.`pName` AS `pName`,`v_patient_two`.`pSex` AS `pSex`,`v_patient_two`.`pTime` AS `pTime`,`v_patient_two`.`pIllness` AS `pIllness`,`v_patient_two`.`mid` AS `mid`,`v_patient_two`.`bid` AS `bid`,`v_patient_two`.`bedState` AS `bedState`,`v_patient_two`.`mName` AS `mName`,`v_patient_two`.`dId` AS `dId`,`department`.`dName` AS `dName` from (`v_patient_two` left join `department` on((`v_patient_two`.`dId` = `department`.`dId`))) ;

-- ----------------------------
-- View structure for v_patient_two
-- ----------------------------
DROP VIEW IF EXISTS `v_patient_two`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_patient_two` AS select `v_patient_one`.`pId` AS `pId`,`v_patient_one`.`pName` AS `pName`,`v_patient_one`.`pSex` AS `pSex`,`v_patient_one`.`pTime` AS `pTime`,`v_patient_one`.`pIllness` AS `pIllness`,`v_patient_one`.`mid` AS `mid`,`v_patient_one`.`bid` AS `bid`,`v_patient_one`.`bedState` AS `bedState`,`mediciner`.`mName` AS `mName`,`mediciner`.`dId` AS `dId` from (`v_patient_one` left join `mediciner` on((`v_patient_one`.`mid` = `mediciner`.`mId`))) ;
