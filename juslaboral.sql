/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : juslaboral

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2014-09-17 00:55:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `_dev_arquivo_1`
-- ----------------------------
DROP TABLE IF EXISTS `_dev_arquivo_1`;
CREATE TABLE `_dev_arquivo_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idFase` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `arquivo` varchar(255) DEFAULT NULL,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_arquivo_1
-- ----------------------------
INSERT INTO `_dev_arquivo_1` VALUES ('5', '1', 'arquivo 1 fase 1', 'Novo Documento de Texto(5).txt', 'n', '17/09/2014 00:43:09 - Eduardo Fagnoni');
INSERT INTO `_dev_arquivo_1` VALUES ('6', '1', 'mais um', '', 'n', '17/09/2014 00:42:21 - Eduardo Fagnoni');
INSERT INTO `_dev_arquivo_1` VALUES ('7', '2', 'arquivo 1', '', 's', '17/09/2014 00:44:42 - Eduardo Fagnoni');
INSERT INTO `_dev_arquivo_1` VALUES ('8', '2', 'arquivo 2', '', 'n', '17/09/2014 00:45:02 - Eduardo Fagnoni');
INSERT INTO `_dev_arquivo_1` VALUES ('9', '2', 'arquivo 3', '', 'n', '17/09/2014 00:49:46 - Eduardo Fagnoni');
INSERT INTO `_dev_arquivo_1` VALUES ('10', '2', 'este 4', '', 's', '17/09/2014 00:49:58 - Eduardo Fagnoni');
INSERT INTO `_dev_arquivo_1` VALUES ('11', '1', 'sdfssdfs', '', 's', '17/09/2014 00:50:14 - Eduardo Fagnoni');
INSERT INTO `_dev_arquivo_1` VALUES ('12', '1', 'sdfsdfsdf', '', 's', '17/09/2014 00:50:37 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_dev_arquivo_2`
-- ----------------------------
DROP TABLE IF EXISTS `_dev_arquivo_2`;
CREATE TABLE `_dev_arquivo_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idFase` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `arquivo` varchar(255) DEFAULT NULL,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_arquivo_2
-- ----------------------------
INSERT INTO `_dev_arquivo_2` VALUES ('6', '1', 'arquivo 1 fase 2', '', 'n', '17/09/2014 00:50:11 - Eduardo Fagnoni');
INSERT INTO `_dev_arquivo_2` VALUES ('7', '1', 'sdfsdfsdf', '', 's', '17/09/2014 00:50:27 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_dev_arquivo_3`
-- ----------------------------
DROP TABLE IF EXISTS `_dev_arquivo_3`;
CREATE TABLE `_dev_arquivo_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idFase` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `arquivo` varchar(255) DEFAULT NULL,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_arquivo_3
-- ----------------------------
INSERT INTO `_dev_arquivo_3` VALUES ('4', '1', 'arquivo 1 fase 3', '', 'n', '17/09/2014 00:50:56 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_dev_banner`
-- ----------------------------
DROP TABLE IF EXISTS `_dev_banner`;
CREATE TABLE `_dev_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arquivo` varchar(255) DEFAULT 'n',
  `link` varchar(255) DEFAULT NULL,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_banner
-- ----------------------------
INSERT INTO `_dev_banner` VALUES ('1', '10592835_682519705157056_6942065995329693071_n.jpg', '', 's', '16/09/2014 16:54:05 - Eduardo Fagnoni');
INSERT INTO `_dev_banner` VALUES ('2', '', '', 's', '16/09/2014 20:30:08 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_dev_depoimento`
-- ----------------------------
DROP TABLE IF EXISTS `_dev_depoimento`;
CREATE TABLE `_dev_depoimento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arquivo` varchar(255) DEFAULT 'n',
  `nome` varchar(255) DEFAULT NULL,
  `texto` longtext,
  `destaque` varchar(255) DEFAULT 'n',
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_depoimento
-- ----------------------------
INSERT INTO `_dev_depoimento` VALUES ('1', '10592835_682519705157056_6942065995329693071_n.jpg', 'Aline Mello - DF', '<p>depo</p>\r\n', 'n', 'n', '16/09/2014 19:29:31 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_dev_galeria`
-- ----------------------------
DROP TABLE IF EXISTS `_dev_galeria`;
CREATE TABLE `_dev_galeria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arquivo` varchar(255) DEFAULT 'n',
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_galeria
-- ----------------------------
INSERT INTO `_dev_galeria` VALUES ('1', '10592835_682519705157056_6942065995329693071_n(1).jpg', 'n', '16/09/2014 20:18:24 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('2', '', 'n', '16/09/2014 20:34:21 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('3', '', 's', '16/09/2014 20:22:33 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('4', '10592835_682519705157056_6942065995329693071_n(2).jpg', 's', '16/09/2014 20:33:55 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('5', 'escandalos(1).jpg', 's', '16/09/2014 20:34:13 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('6', 'Novo Documento de Texto.txt', 's', '16/09/2014 23:23:18 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('7', 'Novo Documento de Texto(1).txt', 's', '16/09/2014 23:33:04 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_dev_noticia`
-- ----------------------------
DROP TABLE IF EXISTS `_dev_noticia`;
CREATE TABLE `_dev_noticia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `dia` varchar(255) DEFAULT NULL,
  `mes` varchar(255) DEFAULT NULL,
  `ano` varchar(255) DEFAULT NULL,
  `texto` longtext,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_noticia
-- ----------------------------
INSERT INTO `_dev_noticia` VALUES ('1', 'nome', '18/08/2014', '18', '08', '2014', '<p>adasd</p>\r\n', 'n', '16/09/2014 19:29:23 - Eduardo Fagnoni');
INSERT INTO `_dev_noticia` VALUES ('2', 'outro nome acentuaÃ§Ã£o', '16/9/2014', '16', '9', '2014', '<p>xfdsf sdf</p>\r\n', 's', '16/09/2014 21:45:56 - Eduardo Fagnoni');
INSERT INTO `_dev_noticia` VALUES ('3', 'asdasd', '16/08/2014', '16', '08', '2014', '<p>asdasd</p>\r\n', 'n', '16/09/2014 19:29:22 - Eduardo Fagnoni');
INSERT INTO `_dev_noticia` VALUES ('4', 'asdasas', '20/05/2014', '20', '05', '2014', '<p>asdasd</p>\r\n', 'n', '16/09/2014 19:28:50 - Eduardo Fagnoni');
INSERT INTO `_dev_noticia` VALUES ('5', 'Airasd', '15/09/2014', '15', '09', '2014', '<p>asdasd</p>\r\n', 's', '16/09/2014 19:23:22 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_dev_primeira_fase`
-- ----------------------------
DROP TABLE IF EXISTS `_dev_primeira_fase`;
CREATE TABLE `_dev_primeira_fase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_primeira_fase
-- ----------------------------
INSERT INTO `_dev_primeira_fase` VALUES ('1', 'TRT - 1Âª RegiÃ£o - Rio de Janeiro (1Âª FASE)', 's', '16/09/2014 21:45:29 - Eduardo Fagnoni');
INSERT INTO `_dev_primeira_fase` VALUES ('2', 'teste 2', 's', '17/09/2014 00:38:07 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_dev_segunda_fase`
-- ----------------------------
DROP TABLE IF EXISTS `_dev_segunda_fase`;
CREATE TABLE `_dev_segunda_fase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_segunda_fase
-- ----------------------------
INSERT INTO `_dev_segunda_fase` VALUES ('1', '2 fase', 's', '16/09/2014 22:22:53 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_dev_terceira_fase`
-- ----------------------------
DROP TABLE IF EXISTS `_dev_terceira_fase`;
CREATE TABLE `_dev_terceira_fase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_terceira_fase
-- ----------------------------
INSERT INTO `_dev_terceira_fase` VALUES ('1', '3 fase', 's', '16/09/2014 22:23:05 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_dev_usuarios`
-- ----------------------------
DROP TABLE IF EXISTS `_dev_usuarios`;
CREATE TABLE `_dev_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `nivel` varchar(255) DEFAULT NULL,
  `variavel_1` varchar(255) DEFAULT NULL,
  `variavel_2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_usuarios
-- ----------------------------
INSERT INTO `_dev_usuarios` VALUES ('10', 'Eduardo Fagnoni', 'admin', '123', '1', null, null);
INSERT INTO `_dev_usuarios` VALUES ('11', 'teste', 'teste', '123', '2', null, null);
