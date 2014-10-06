/*
Navicat MySQL Data Transfer

Source Server         : Juslaboral
Source Server Version : 50166
Source Host           : dbmy0060.whservidor.com:3306
Source Database       : cursojusla

Target Server Type    : MYSQL
Target Server Version : 50166
File Encoding         : 65001

Date: 2014-09-30 16:33:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `_dev_album`
-- ----------------------------
DROP TABLE IF EXISTS `_dev_album`;
CREATE TABLE `_dev_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `texto` text,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_album
-- ----------------------------
INSERT INTO `_dev_album` VALUES ('1', 'A lideranÃ§a discreta', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'n', '24/09/2014 21:04:46 - Eduardo Fagnoni');
INSERT INTO `_dev_album` VALUES ('2', 'sdfsdfsdfsdf', 'sdf', 'n', '24/09/2014 18:29:55 - Eduardo Fagnoni');
INSERT INTO `_dev_album` VALUES ('3', 'IOSCO - RIO 2014', 'Phasellus tincidunt neque et diam placerat dictum. Phasellus tincidunt neque et diam placerat dictum.', 'n', '24/09/2014 21:04:44 - Eduardo Fagnoni');
INSERT INTO `_dev_album` VALUES ('4', 'Teste de Galeria com a ferramenta.', 'Esse teste de galeria leva o tÃ­tulo e o descritivo atÃ© o limite de onde podem chegar. o objetivo Ã© ....', 'n', '24/09/2014 21:04:43 - Eduardo Fagnoni');
INSERT INTO `_dev_album` VALUES ('5', ' Phasellus tincidunt neque et diam placerat dictum.', ' Phasellus tincidunt neque et diam placerat dictum.', 'n', '24/09/2014 21:04:42 - Eduardo Fagnoni');
INSERT INTO `_dev_album` VALUES ('6', ' Phasellus tincidunt neque et diam', ' Phasellus tincidunt neque et diam placerat dictum.', 'n', '24/09/2014 21:04:41 - Eduardo Fagnoni');
INSERT INTO `_dev_album` VALUES ('7', 'IOSCO - RIO 2014', 'fdfg  Phasellus tincidunt neque et diam placerat dictum. Phasellus tincidunt neque et diam placer', 'n', '24/09/2014 21:04:40 - Eduardo Fagnoni');
INSERT INTO `_dev_album` VALUES ('8', ' Phasellus tincidunt neque et diam.', ' Phasellus tincidunt neque et diam perat dictum, te d Phasellus tincidunt neque et diam placerat dic', 's', '24/09/2014 21:08:27 - Eduardo Fagnoni');
INSERT INTO `_dev_album` VALUES ('9', 'Lorem ipsum dolor sit amet, consec.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit', 's', '24/09/2014 21:10:10 - Eduardo Fagnoni');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_arquivo_1
-- ----------------------------
INSERT INTO `_dev_arquivo_1` VALUES ('5', '1', 'arquivo 1 fase 1', 'Novo Documento de Texto(5).txt', 's', '17/09/2014 00:43:09 - Eduardo Fagnoni');
INSERT INTO `_dev_arquivo_1` VALUES ('6', '1', 'mais um', '', 'n', '17/09/2014 00:42:21 - Eduardo Fagnoni');
INSERT INTO `_dev_arquivo_1` VALUES ('7', '2', 'arquivo 1', '', 's', '17/09/2014 00:44:42 - Eduardo Fagnoni');
INSERT INTO `_dev_arquivo_1` VALUES ('8', '2', 'arquivo 2', '', 'n', '17/09/2014 00:45:02 - Eduardo Fagnoni');
INSERT INTO `_dev_arquivo_1` VALUES ('9', '2', 'arquivo 3', '', 'n', '17/09/2014 00:49:46 - Eduardo Fagnoni');
INSERT INTO `_dev_arquivo_1` VALUES ('10', '2', 'este 4', '', 's', '17/09/2014 00:49:58 - Eduardo Fagnoni');
INSERT INTO `_dev_arquivo_1` VALUES ('11', '1', 'sdfssdfs', '', 's', '17/09/2014 00:50:14 - Eduardo Fagnoni');
INSERT INTO `_dev_arquivo_1` VALUES ('12', '1', 'sdfsdfsdf', '', 's', '17/09/2014 00:50:37 - Eduardo Fagnoni');
INSERT INTO `_dev_arquivo_1` VALUES ('13', '1', 'Arteletra', 'download-1410961388297.pdf', 's', '18/09/2014 17:55:43 - teste');
INSERT INTO `_dev_arquivo_1` VALUES ('14', '3', 'aprovados teste minas', 'Layout_Conceito_Desktop_r1_c1.jpg', 's', '22/09/2014 15:20:55 - teste');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_banner
-- ----------------------------
INSERT INTO `_dev_banner` VALUES ('1', 'b2(1).jpg', '', 'n', '19/09/2014 12:56:00 - Eduardo Fagnoni');
INSERT INTO `_dev_banner` VALUES ('2', 'b1(1).jpg', '', 'n', '19/09/2014 12:55:59 - Eduardo Fagnoni');
INSERT INTO `_dev_banner` VALUES ('3', 'b4(1).jpg', '', 'n', '19/09/2014 12:55:58 - Eduardo Fagnoni');
INSERT INTO `_dev_banner` VALUES ('4', 'b3(1).jpg', 'http://www.cursojuslaboral.com.br/dev/cursos_interna.asp?id=6', 'n', '19/09/2014 12:55:57 - Eduardo Fagnoni');
INSERT INTO `_dev_banner` VALUES ('5', '1(1).jpg', 'http://www.cursojuslaboral.com.br/cursos_interna.asp?id=8', 'n', '22/09/2014 14:51:39 - teste');
INSERT INTO `_dev_banner` VALUES ('6', '2(1).jpg', 'http://www.cursojuslaboral.com.br/cursos_interna.asp?id=9', 'n', '22/09/2014 14:51:42 - teste');
INSERT INTO `_dev_banner` VALUES ('7', 'b2(2).jpg', 'http://www.cursojuslaboral.com.br/cursos_interna.asp?id=6', 's', '22/09/2014 17:49:08 - Eduardo Fagnoni');
INSERT INTO `_dev_banner` VALUES ('8', '4(1).jpg', 'http://www.cursojuslaboral.com.br/cursos_interna.asp?id=7', 'n', '22/09/2014 14:51:46 - teste');
INSERT INTO `_dev_banner` VALUES ('9', 'b5.jpg', 'http://www.webbox.com.br', 's', '22/09/2014 17:49:01 - Eduardo Fagnoni');
INSERT INTO `_dev_banner` VALUES ('10', 'b4(2).jpg', 'http://www.cursojuslaboral.com.br ', 's', '22/09/2014 17:48:48 - Eduardo Fagnoni');
INSERT INTO `_dev_banner` VALUES ('11', 'Folha_ponto_02_09-2.xlsx', '', 'n', '22/09/2014 16:50:38 - Eduardo Fagnoni');
INSERT INTO `_dev_banner` VALUES ('12', 'b3(2).jpg', 'http://www.g1.com.br', 's', '22/09/2014 17:48:35 - Eduardo Fagnoni');
INSERT INTO `_dev_banner` VALUES ('13', 'b4(3).jpg', '', 's', '22/09/2014 18:09:05 - Eduardo Fagnoni');
INSERT INTO `_dev_banner` VALUES ('14', 'b2(3).jpg', '', 's', '22/09/2014 18:09:11 - Eduardo Fagnoni');
INSERT INTO `_dev_banner` VALUES ('15', 'b5(1).jpg', '', 's', '22/09/2014 18:09:18 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_dev_cursos`
-- ----------------------------
DROP TABLE IF EXISTS `_dev_cursos`;
CREATE TABLE `_dev_cursos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `resumo` text,
  `texto` longtext,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_cursos
-- ----------------------------
INSERT INTO `_dev_cursos` VALUES ('6', 'Discursiva', 'AlicerÃ§ado na diretriz pedagÃ³gica de que o candidato deve estar permanentemente se preparando para todas as fases do concurso de forma conjugadas, o corpo docente do Curso Juslaboral construiu uma metodologia para cursos regulares (semanais) e intensivos.', '<p><strong>Prepara&ccedil;&atilde;o para a 1&ordf; Prova Discursiva da magistratura &ndash; Curso regular semanal e intensivo</strong></p>\r\n\r\n<p>Alicer&ccedil;ado na diretriz pedag&oacute;gica de que o candidato deve estar permanentemente se preparando para todas as fases do concurso de forma conjugadas, o corpo docente do Curso Juslaboral construiu uma metodologia para cursos regulares (semanais) e intensivos.</p>\r\n\r\n<p>Os cursos visam a prepara&ccedil;&atilde;o para a 1&ordf; Prova Discursiva (2&ordf; Fase) da Magistratura do Trabalho, primando pela elabora&ccedil;&atilde;o de quest&otilde;es que levam em conta o que ultimamente vem sendo cobrado nas provas da magistratura (e o perfil da banca examinadora &ndash; cursos intensivos), bem como temas atuais e relevantes, que ser&atilde;o corrigidas individualmente.</p>\r\n\r\n<p>As orienta&ccedil;&otilde;es espec&iacute;ficas e pormenorizadas, necess&aacute;rias para potencializar o rendimento do aluno, ser&atilde;o detalhadas ap&oacute;s a inscri&ccedil;&atilde;o nos cursos, mas antecipamos brevemente a recomenda&ccedil;&atilde;o de serem simuladas as condi&ccedil;&otilde;es reais da prova, podendo ser realizado o envio das quest&otilde;es manuscritas e digitalizadas.</p>\r\n\r\n<p>Em virtude do compromisso com uma forma&ccedil;&atilde;o humanizada e focada essencialmente no aluno, os cursos de provas discursivas possuem limita&ccedil;&atilde;o no n&uacute;mero de participantes.</p>\r\n', 's', '19/09/2014 17:20:07 - Eduardo Fagnoni');
INSERT INTO `_dev_cursos` VALUES ('7', 'SentenÃ§a', 'O Curso Regular de PreparaÃ§Ã£o para a Prova de SentenÃ§a oferece um acompanhamento personalizado e individual para o aluno, com vistas a desenvolver o conteÃºdo jurÃ­dico e as habilidades e competÃªncias necessÃ¡rias para aprovaÃ§Ã£o nessa especÃ­fica fase do concurso para a magistratura do trabalho.', '<p><strong>Prepara&ccedil;&atilde;o para a Prova de Senten&ccedil;a &ndash; Curso Regular e Intensivo</strong></p>\r\n\r\n<p>O Curso Regular de Prepara&ccedil;&atilde;o para a Prova de Senten&ccedil;a oferece um acompanhamento personalizado e individual para o aluno, com vistas a desenvolver o conte&uacute;do jur&iacute;dico e as habilidades e compet&ecirc;ncias necess&aacute;rias para aprova&ccedil;&atilde;o nessa espec&iacute;fica fase do concurso para a magistratura do trabalho.</p>\r\n\r\n<p>O Curso se inicia com o envio ao aluno de uma apostila, contendo as informa&ccedil;&otilde;es iniciais e b&aacute;sicas referentes &agrave; prepara&ccedil;&atilde;o para a prova de senten&ccedil;a Simultaneamente, s&atilde;o tamb&eacute;m enviadas as senten&ccedil;as a serem feitas pelo aluno, obtidas de provas reais de concursos anteriores e escalonadas em ordem e grau de dificuldade, como forma de potencializar o aspecto pedag&oacute;gico do curso. Essas senten&ccedil;as dever&atilde;o ser resolvidas de forma simulada, respeitando as efetivas condi&ccedil;&otilde;es de prova, em datas a serem previamente combinadas com o professor.</p>\r\n\r\n<p>Em seguida, o aluno digitalizar&aacute; e enviar&aacute; a sua resolu&ccedil;&atilde;o do exerc&iacute;cio, que ser&aacute; objeto de criteriosa e individualizada avalia&ccedil;&atilde;o. Depois de corrigido, o exerc&iacute;cio ser&aacute; devolvido com os coment&aacute;rios pertinentes. A corre&ccedil;&atilde;o tamb&eacute;m vem acompanhada de uma sugest&atilde;o de resolu&ccedil;&atilde;o da senten&ccedil;a, elaborada igualmente com a simula&ccedil;&atilde;o das reais condi&ccedil;&otilde;es da prova, ficando o professor dispon&iacute;vel para esclarecimentos posteriores.</p>\r\n\r\n<p>O&nbsp; Curso Regular &eacute; disponibilizado nas modalidades semanal e quinzenal. J&aacute; os Cursos Intensivos s&atilde;o voltados para certames espec&iacute;ficos e montados segundo o cronograma de cada edital. De forma semelhante &agrave;s demais fases, &eacute; observado o compromisso do Curso Juslaboral com uma forma&ccedil;&atilde;o humanizada, raz&atilde;o pela qual os cursos de senten&ccedil;a possuem limita&ccedil;&atilde;o no n&uacute;mero de alunos.</p>\r\n', 'n', '22/09/2014 15:18:53 - teste');
INSERT INTO `_dev_cursos` VALUES ('8', 'PreparaÃ§Ã£o Oral', 'A prova oral suscita muitas dificuldades e apreensÃµes nos candidatos em virtude do seu significado de aproximaÃ§Ã£o da realizaÃ§Ã£o do sonho e tambÃ©m da inversÃ£o na avaliaÃ§Ã£o do conhecimento, jÃ¡ que este agora nÃ£o Ã© mais transmitido pela escrita, mas sim pela fala.', '<p><strong>Prepara&ccedil;&atilde;o para a prova oral </strong></p>\r\n\r\n<p>A prova oral suscita muitas dificuldades e apreens&otilde;es nos candidatos em virtude do seu significado de aproxima&ccedil;&atilde;o da realiza&ccedil;&atilde;o do sonho e tamb&eacute;m da invers&atilde;o na avalia&ccedil;&atilde;o do conhecimento, j&aacute; que este agora n&atilde;o &eacute; mais transmitido pela escrita, mas sim pela fala.</p>\r\n\r\n<p>Deste modo, al&eacute;m de se trabalhar minuciosa e profundamente os conhecimentos t&eacute;cnicos e jur&iacute;dicos que envolvem a argui&ccedil;&atilde;o oral com a imers&atilde;o em quest&otilde;es jur&iacute;dicas de especial relevo e magnitude, o curso tem por objetivo trabalhar os aspectos posturais, comportamentais e emocionais para supera&ccedil;&atilde;o do medo e assegurar uma prepara&ccedil;&atilde;o s&oacute;lida e eficaz, que culmine na aprova&ccedil;&atilde;o do candidato na prova oral de Juiz do Trabalho.</p>\r\n\r\n<p>Em breve s&iacute;ntese, o curso de prepara&ccedil;&atilde;o pr&eacute;via &eacute; estruturado com a realiza&ccedil;&atilde;o de 2 simulados para cada aluno, que ser&atilde;o gravados e disponibilizados ao final, com a corre&ccedil;&atilde;o jur&iacute;dica e postural, enfoques de diferentes perfis de examinadores. Por fim, h&aacute; uma aula de orienta&ccedil;&otilde;es gerais sobre a prova oral e orienta&ccedil;&otilde;es espec&iacute;ficas para os momentos de inscri&ccedil;&atilde;o definitiva, prepara&ccedil;&atilde;o at&eacute; a prova e 24 horas que antecedem o exame oral, al&eacute;m de estudo do perfil da banca e outras atividades que ap&oacute;s a inscri&ccedil;&atilde;o, s&atilde;o detalhadas de forma mais espec&iacute;fica.</p>\r\n\r\n<p>O corpo docente tamb&eacute;m foi constitu&iacute;do de forma heterog&ecirc;nea e complementar para transmitir um conhecimento que efetivamente acrescente conte&uacute;do nas mais diversas &aacute;reas, com simula&ccedil;&otilde;es reais da prova oral, considerando local da prova e instrumentos utilizados pelas bancas examinadoras. Os exerc&iacute;cios de simula&ccedil;&atilde;o contar&atilde;o, no m&iacute;nimo, com o mesmo n&uacute;mero de membros da prova oral (3 examinadores), mas, para aperfei&ccedil;oar ainda mais o trabalho, contamos com um quarto magistrado no curso, possibilitando que um deles fa&ccedil;a a avalia&ccedil;&atilde;o externa e lateral.</p>\r\n\r\n<p>Al&eacute;m disso, um grande diferencial do curso &eacute; a disponibilidade para direcionamento das condutas do candidato durante a fase de inscri&ccedil;&atilde;o definitiva e prepara&ccedil;&atilde;o para prova oral, j&aacute; que &eacute; comum nessa fase do certame n&atilde;o se saber exatamente o que fazer e como agir. Por fim, ap&oacute;s o curso presencial, os professores ficam &agrave; disposi&ccedil;&atilde;o tamb&eacute;m para simulados avulsos via Skype.</p>\r\n', 's', '19/09/2014 15:05:22 - Eduardo Fagnoni');
INSERT INTO `_dev_cursos` VALUES ('9', 'Acompanhamento 24h', 'A preparaÃ§Ã£o de 24 horas realizada pelo Corpo Docente do Juslaboral, coordenada pelo Professor Iuri Pinheiro, tem por objetivo proporcionar uma logÃ­stica preparatÃ³ria entre o fugaz perÃ­odo do sorteio do ponto e a arguiÃ§Ã£o do dia subsequente.', '<p>A prepara&ccedil;&atilde;o de 24 horas realizada pelo Corpo Docente do Juslaboral, coordenada pelo Professor Iuri Pinheiro, tem por objetivo proporcionar uma log&iacute;stica preparat&oacute;ria entre o fugaz per&iacute;odo do sorteio do ponto e a argui&ccedil;&atilde;o do dia subsequente.</p>\r\n\r\n<p>Em breves palavras, o trabalho inclui a organiza&ccedil;&atilde;o de cronograma com ordem e fontes de estudo, fornecimento de material espec&iacute;fico (impressos e em m&iacute;dia digital), controle de tempo, simulados para aferi&ccedil;&atilde;o de conte&uacute;do, encontros para repasse de conte&uacute;do e destaque de pontos relevantes, sele&ccedil;&atilde;o de jurisprud&ecirc;ncia, ensaio e debate de disserta&ccedil;&atilde;o e disponibilidade para sanar d&uacute;vidas a qualquer momento de todas as 24 horas, dentre outras necessidades que surjam por parte dos alunos.</p>\r\n\r\n<p>As vagas s&atilde;o limitadas para assegurar um acompanhamento de qualidade.</p>\r\n', 's', '19/09/2014 15:06:08 - Eduardo Fagnoni');
INSERT INTO `_dev_cursos` VALUES ('10', 'Curso Novidade', 'ombinando expertises em busca da realizaÃ§Ã£o integral\r\n\r\nConteÃºdos prÃ¡ticos e esclarecedores, que integram-se entre si para oferecer uma assimilaÃ§Ã£o completa do conhecimento e favorecer a aprovaÃ§Ã£o.', '<p>ombinando expertises em busca da realiza&ccedil;&atilde;o integral</p>\r\n\r\n<p>Conte&uacute;dos pr&aacute;ticos e esclarecedores, que integram-se entre si para oferecer uma assimila&ccedil;&atilde;o completa do conhecimento e favorecer a aprova&ccedil;&atilde;o.</p>\r\n\r\n<p>ombinando expertises em busca da realiza&ccedil;&atilde;o integral</p>\r\n\r\n<p>Conte&uacute;dos pr&aacute;ticos e esclarecedores, que integram-se entre si para oferecer uma assimila&ccedil;&atilde;o completa do conhecimento e favorecer a aprova&ccedil;&atilde;o.</p>\r\n\r\n<p>ombinando expertises em busca da realiza&ccedil;&atilde;o integral</p>\r\n\r\n<p>Conte&uacute;dos pr&aacute;ticos e esclarecedores, que integram-se entre si para oferecer uma assimila&ccedil;&atilde;o completa do conhecimento e favorecer a aprova&ccedil;&atilde;o.</p>\r\n\r\n<p>ombinando expertises em busca da realiza&ccedil;&atilde;o integral</p>\r\n\r\n<p>Conte&uacute;dos pr&aacute;ticos e esclarecedores, que integram-se entre si para oferecer uma assimila&ccedil;&atilde;o completa do conhecimento e favorecer a aprova&ccedil;&atilde;o.</p>\r\n\r\n<p>ombinando expertises em busca da realiza&ccedil;&atilde;o integral</p>\r\n\r\n<p>Conte&uacute;dos pr&aacute;ticos e esclarecedores, que integram-se entre si para oferecer uma assimila&ccedil;&atilde;o completa do conhecimento e favorecer a aprova&ccedil;&atilde;o.</p>\r\n\r\n<p>ombinando expertises em busca da realiza&ccedil;&atilde;o integral</p>\r\n\r\n<p>Conte&uacute;dos pr&aacute;ticos e esclarecedores, que integram-se entre si para oferecer uma assimila&ccedil;&atilde;o completa do conhecimento e favorecer a aprova&ccedil;&atilde;o.</p>\r\n\r\n<p>ombinando expertises em busca da realiza&ccedil;&atilde;o integral</p>\r\n\r\n<p>Conte&uacute;dos pr&aacute;ticos e esclarecedores, que integram-se entre si para oferecer uma assimila&ccedil;&atilde;o completa do conhecimento e favorecer a aprova&ccedil;&atilde;o.</p>\r\n\r\n<p>ombinando expertises em busca da realiza&ccedil;&atilde;o integral</p>\r\n\r\n<p>Conte&uacute;dos pr&aacute;ticos e esclarecedores, que integram-se entre si para oferecer uma assimila&ccedil;&atilde;o completa do conhecimento e favorecer a aprova&ccedil;&atilde;o.</p>\r\n\r\n<p>ombinando expertises em busca da realiza&ccedil;&atilde;o integral</p>\r\n\r\n<p>Conte&uacute;dos pr&aacute;ticos e esclarecedores, que integram-se entre si para oferecer uma assimila&ccedil;&atilde;o completa do conhecimento e favorecer a aprova&ccedil;&atilde;o.v</p>\r\n', 's', '22/09/2014 15:17:14 - teste');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_depoimento
-- ----------------------------
INSERT INTO `_dev_depoimento` VALUES ('1', '10592835_682519705157056_6942065995329693071_n.jpg', 'Aline Mello - DF', '<p>depo</p>\r\n', 'n', 'n', '16/09/2014 19:29:31 - Eduardo Fagnoni');
INSERT INTO `_dev_depoimento` VALUES ('2', '7a8i8l.jpg', 'Reginaldo Freitas - SP', '<p>Durante quase tr&ecirc;s horas de depoimento &agrave; CPI mista da Petrobras, o ex-diretor da estatal Paulo Roberto Costa repetiu 18 vezes &ldquo;nada a declarar&rdquo; (ou frases equivalentes) e se recusou a responder a todos os questionamentos formulados pelos parlamentares da comiss&atilde;o. Por ordem da Justi&ccedil;a,&nbsp;<a href=\"http://g1.globo.com/politica/noticia/2014/09/ex-diretor-da-petrobras-chega-brasilia-para-depoimento-na-cpi.html\">ele foi trazido por policiais federais</a>&nbsp;de Curitiba, onde est&aacute; preso, para atender &agrave; convoca&ccedil;&atilde;o da CPI.</p>\r\n\r\n<p>Costa firmou com o Minist&eacute;rio P&uacute;blico do Paran&aacute; e com a Justi&ccedil;a Federal um&nbsp;<a href=\"http://g1.globo.com/politica/noticia/2014/09/ex-diretor-da-petrobras-citou-politicos-que-receberam-propina-diz-revista.html\">acordo de dela&ccedil;&atilde;o premiada pelo qual teria apontado</a>&nbsp;deputados, senadores, governadores e um ministro como benefici&aacute;rios de um esquema de pagamento de propina com dinheiro de contratos da Petrobras. Ele foi preso em mar&ccedil;o durante a Opera&ccedil;&atilde;o Lava Jato, da Pol&iacute;cia Federal, que investiga um esquema de lavagem de dinheiro e evas&atilde;o de divisas. Se confirmadas as informa&ccedil;&otilde;es que der a policiais e procuradores com base na dela&ccedil;&atilde;o premiada, o ex-diretor poder&aacute; ter a pena reduzida.&nbsp;</p>\r\n\r\n<p>Durante quase tr&ecirc;s horas de depoimento &agrave; CPI mista da Petrobras, o ex-diretor da estatal Paulo Roberto Costa repetiu 18 vezes &ldquo;nada a declarar&rdquo; (ou frases equivalentes) e se recusou a responder a todos os questionamentos formulados pelos parlamentares da comiss&atilde;o. Por ordem da Justi&ccedil;a,&nbsp;<a href=\"http://g1.globo.com/politica/noticia/2014/09/ex-diretor-da-petrobras-chega-brasilia-para-depoimento-na-cpi.html\">ele foi trazido por policiais federais</a>&nbsp;de Curitiba, onde est&aacute; preso, para atender &agrave; convoca&ccedil;&atilde;o da CPI.</p>\r\n\r\n<p>Costa firmou com o Minist&eacute;rio P&uacute;blico do Paran&aacute; e com a Justi&ccedil;a Federal um&nbsp;<a href=\"http://g1.globo.com/politica/noticia/2014/09/ex-diretor-da-petrobras-citou-politicos-que-receberam-propina-diz-revista.html\">acordo de dela&ccedil;&atilde;o premiada pelo qual teria apontado</a>&nbsp;deputados, senadores, governadores e um ministro como benefici&aacute;rios de um esquema de pagamento de propina com dinheiro de contratos da Petrobras. Ele foi preso em mar&ccedil;o durante a Opera&ccedil;&atilde;o Lava Jato, da Pol&iacute;cia Federal, que investiga um esquema de lavagem de dinheiro e evas&atilde;o de divisas. Se confirmadas as informa&ccedil;&otilde;es que der a policiais e procuradores com base na dela&ccedil;&atilde;o premiada, o ex-diretor poder&aacute; ter a pena reduzida.</p>\r\n', 'n', 'n', '19/09/2014 15:02:18 - Eduardo Fagnoni');
INSERT INTO `_dev_depoimento` VALUES ('3', '3515220325-fa-de-crepusculo-se-casa-com-edward-feito-de-papelao-em-cerimonia-de-r-7-mil-1092692276.jpg', 'Edward S - NY', '<p>Com Paulo Roberto Costa em sil&ecirc;ncio, alguns parlamentares, principalmente da oposi&ccedil;&atilde;o, aproveitaram a sess&atilde;o para discursar e n&atilde;o dirigiram nenhuma pergunta ao ex-diretor.</p>\r\n\r\n<p>O deputado Simpl&iacute;cio Ara&uacute;jo (SD-MA) afirmou que Costa entrar&aacute; para a hist&oacute;ria como um &ldquo;covarde&rdquo;. &ldquo;O senhor est&aacute; aqui para proteger a sua rabichola. O senhor foi pego com a boca na botija e continua protegendo tudo o que aconteceu de errado na Petrobras com esse seu comportamento. O senhor &eacute; uma vergonha para sua fam&iacute;lia e para a sociedade brasileira&rdquo;, disse o parlamentar.</p>\r\n\r\n<p>O l&iacute;der do PDT, deputado &Ecirc;nio Bacci (RS), fez um &ldquo;apelo &agrave; consci&ecirc;ncia&rdquo; do ex-diretor para dar &ldquo;oportunidade ao povo brasileiro&rdquo; de ter conhecimento dos pol&iacute;ticos envolvidos no suposto esquema de corrup&ccedil;&atilde;o antes das elei&ccedil;&otilde;es de outubro. &quot;Eu temo que n&atilde;o tenhamos condi&ccedil;&otilde;es de mostrar ao Brasil os nomes de todos os envolvidos antes das elei&ccedil;&otilde;es&quot;, declarou o deputado Carlos Sampaio (PSDB-SP).</p>\r\n\r\n<p>O l&iacute;der do Solidariedade na C&acirc;mara, Fernando Francischini (PR), pediu que o depoente respondesse com &ldquo;sim&rdquo; ou &ldquo;n&atilde;o&rdquo; se tem desejo de &ldquo;passar a limpo&rdquo; as den&uacute;ncias que envolvem a Petrobras e se foi orientado a n&atilde;o contribuir com a comiss&atilde;o. A resposta se repetiu: &ldquo;nada a declarar&rdquo;.</p>\r\n\r\n<p>O deputado Izalci (PSDB-DF) culpou a presidente Dilma Rousseff pelo esc&acirc;ndalo na Petrobras. &ldquo;A presidente dizer que n&atilde;o sabia &eacute; ser conivente ou incompetente. Uma ex-ministra de Minas e Energia, presidente do Conselho de Administra&ccedil;&atilde;o [da Petrobras], respons&aacute;vel por tudo isso aqui, dizer que n&atilde;o sabia do desvio de bilh&otilde;es e bilh&otilde;es na Petrobras &eacute; muita incompet&ecirc;ncia e conveni&ecirc;ncia&rdquo;, disse.</p>\r\n', 'n', 'n', '19/09/2014 15:02:17 - Eduardo Fagnoni');
INSERT INTO `_dev_depoimento` VALUES ('4', 'dog-robot-thinkstock-158894647-617x416(1).jpg', 'LobÃ£o Lobo - RJ', '<p>&quot;O Supremo Tribunal Federal (STF) decidiu nesta quarta-feira (17) proibir a cobran&ccedil;a do Imposto sobre Circula&ccedil;&atilde;o de Mercadorias e Servi&ccedil;os (ICMS) pelo estado onde s&atilde;o recebidos produtos comprados pela internet ou por telefone, o chamado e-commerce. Para os ministros do tribunal, a decis&atilde;o evitar&aacute; que o consumidor pague mais devido a uma cobran&ccedil;a dupla do imposto.</p>\r\n\r\n<p>O ICMS &eacute; um imposto de compet&ecirc;ncia dos estados e do Distrito Federal. Pela Constitui&ccedil;&atilde;o, ele deve ser recolhido pelo estado de origem do produto comercializado. No entanto, uma regra do Conselho Nacional de Pol&iacute;tica Fazend&aacute;ria (Confaz), editada em 2011 e assinada neste ano por 17 estados e Distrito Federal, autoriza o estado de destino da mercadoria comprada de maneira n&atilde;o presencial a tamb&eacute;m receber o ICMS. Ou seja, o tributo, que j&aacute; era cobrado no estado de origem, passou a ser cobrado, tamb&eacute;m, no destino.</p>\r\n\r\n<p>Estados que apoiavam a regra, o chamado protocolo 21 do Confaz, alegaram que, como n&atilde;o sediavam centros de distribui&ccedil;&atilde;o do com&eacute;rcio eletr&ocirc;nico, teriam a arrecada&ccedil;&atilde;o prejudicada. Ao julgar uma A&ccedil;&atilde;o Direta de Inconstitucionalidade (Adin), os ministros do Supremo entenderam que a portaria viola a Constitui&ccedil;&atilde;o, pois n&atilde;o poderia alterar o modo de cobran&ccedil;a do imposto.&quot;</p>\r\n', 'n', 'n', '19/09/2014 15:02:16 - Eduardo Fagnoni');
INSERT INTO `_dev_depoimento` VALUES ('5', 'cachorro_feliz_sorrindo_portaldodog-11.jpg', 'Priscila Luca - RS', '<p>Em fevereiro deste ano, o relator da a&ccedil;&atilde;o que questiona a portaria, ministro Luiz Fux, concedeu liminar (decis&atilde;o provis&oacute;ria) proibindo a cobran&ccedil;a no estado de destino. O STF agora analisou o m&eacute;rito e manteve a posi&ccedil;&atilde;o de Fux.</p>\r\n\r\n<p>&quot;O protocolo foi feito com uma cara de pau incr&iacute;vel. Estabeleceram um protocolo e colocaram em segundo plano a Constitui&ccedil;&atilde;o&quot;, afirmou o ministro Marco Aur&eacute;lio Mello, ao acompanhar voto de Fux. A decis&atilde;o do Supremo afeta automaticamente todas as a&ccedil;&otilde;es sobre o tema que chegaram ao tribunal ap&oacute;s a liminar do relator, de 18 de fevereiro de 2014.</p>\r\n\r\n<p>Processos sobre a cobran&ccedil;a de ICMS em com&eacute;rcio eletr&ocirc;nico que chegaram antes da decis&atilde;o provis&oacute;ria de Fux ser&atilde;o analisados caso a caso pelos ministros do STF.</p>\r\n\r\n<p>Contra a decis&atilde;o do Supremo, poder&atilde;o ser apresentados os chamados &quot;embargos de declara&ccedil;&atilde;o&quot;, recursos que n&atilde;o podem rediscutir o m&eacute;rito, mas apenas esclarecer eventuais &quot;omiss&otilde;es&quot; e &quot;contradi&ccedil;&otilde;es&quot; do julgamento, o que dificilmente pode reverter a decis&atilde;o.</p>\r\n', 'n', 'n', '19/09/2014 15:02:15 - Eduardo Fagnoni');
INSERT INTO `_dev_depoimento` VALUES ('6', 'modelo-3429.jpg', 'Renatta Lemos Monte - SP', '<p>O Supremo Tribunal Federal (STF) decidiu nesta quarta-feira (17) proibir a cobran&ccedil;a do Imposto sobre Circula&ccedil;&atilde;o de Mercadorias e Servi&ccedil;os (ICMS) pelo estado onde s&atilde;o recebidos produtos comprados pela internet ou por telefone, o chamado e-commerce. Para os ministros do tribunal, a decis&atilde;o evitar&aacute; que o consumidor pague mais devido a uma cobran&ccedil;a dupla do imposto.</p>\r\n\r\n<p>O ICMS &eacute; um imposto de compet&ecirc;ncia dos estados e do Distrito Federal. Pela Constitui&ccedil;&atilde;o, ele deve ser recolhido pelo estado de origem do produto comercializado. No entanto, uma regra do Conselho Nacional de Pol&iacute;tica Fazend&aacute;ria (Confaz), editada em 2011 e assinada neste ano por 17 estados e Distrito Federal, autoriza o estado de destino da mercadoria comprada de maneira n&atilde;o presencial a tamb&eacute;m receber o ICMS. Ou seja, o tributo, que j&aacute; era cobrado no estado de origem, passou a ser cobrado, tamb&eacute;m, no destino.</p>\r\n\r\n<p>Estados que apoiavam a regra, o chamado protocolo 21 do Confaz, alegaram que, como n&atilde;o sediavam centros de distribui&ccedil;&atilde;o do com&eacute;rcio eletr&ocirc;nico, teriam a arrecada&ccedil;&atilde;o prejudicada. Ao julgar uma A&ccedil;&atilde;o Direta de Inconstitucionalidade (Adin), os ministros do Supremo entenderam que a portaria viola a Constitui&ccedil;&atilde;o, pois n&atilde;o poderia alterar o modo de cobran&ccedil;a do imposto.</p>\r\n', 'n', 'n', '19/09/2014 15:02:13 - Eduardo Fagnoni');
INSERT INTO `_dev_depoimento` VALUES ('7', '2.png', 'Roselene Taveira â€“ Aprovada no TRT15 â€“ Concurso 2013', '<p>Muito antes de existir um curso preparat&oacute;rio, existia um ser humano que auxiliava in&uacute;meros &ldquo;concurseiros&rdquo; nesta &aacute;rdua caminhada em busca da t&atilde;o sonhada aprova&ccedil;&atilde;o: Iuri! Creio que a cria&ccedil;&atilde;o deste curso apenas oficializa esse aux&iacute;lio e sem d&uacute;vida o aperfei&ccedil;oa.</p>\r\n\r\n<p>Jamais me esquecerei das in&uacute;meras discuss&otilde;es jur&iacute;dicas travadas no grupo de estudos AJT, nas quais se destacavam a erudi&ccedil;&atilde;o e solidariedade de Iuri, assim como das horas de estudo para o oral do TRT 15, ocasi&atilde;o na qual tive a honra de caminhar ao seu lado na reta final de aprova&ccedil;&atilde;o no concurso da Magistratura do Trabalho.</p>\r\n\r\n<p>E, por fim, n&atilde;o tenho palavras para expressar minha eterna gratid&atilde;o a Iuri e Ju pelo acompanhamento nas derradeiras vinte e quatro horas antes do exame oral. Porque num momento como esse parece que tudo se multiplica: os nossos medos, a nossa ignor&acirc;ncia, os nossos defeitos de postura, as nossas dificuldades de express&atilde;o, a desorganiza&ccedil;&atilde;o e a impossibilidade de controlar o tempo, Voc&ecirc;s estiveram l&aacute; e me mostraram que todos esses monstros poderiam ser mantidos a uma dist&acirc;ncia segura das minhas qualidades.</p>\r\n\r\n<p>Jamais esquecerei que voc&ecirc;s me fizeram lutar pelo meu ponto, do qual n&atilde;o gostei de imediato, e me mostraram que era o que eu tinha para provar porque cheguei at&eacute; ali. Tamb&eacute;m n&atilde;o me esquecerei da transmiss&atilde;o de conhecimento, da pizza crocante de chocolate, dos esquemas coloridos de Ju, da organiza&ccedil;&atilde;o do tempo,&nbsp; do companheirismo e solidariedade nessas t&atilde;o importantes horas da minha vida.</p>\r\n\r\n<p>Tenho certeza que muitos outros privilegiados ser&atilde;o acompanhados e orientados por voc&ecirc;, Iuri, e espero que sintam a alegria de desfrutar dessa companhia t&atilde;o dedicada nessa fase &iacute;mpar de suas vidas.</p>\r\n\r\n<p>Desejo a todos os idealizadores do Juslaboral muito sucesso nessa empreitada e que consigam concretizar os sonhos de seus alunos. A Iuri e Ju, minha eterna gratid&atilde;o e amizade. Voc&ecirc;s certamente estar&atilde;o guardados num canto muito especial de meu cora&ccedil;&atilde;o e de minhas recorda&ccedil;&otilde;es.</p>\r\n\r\n<p>A caminhada ainda &eacute; longa, mas com voc&ecirc;s por perto sempre ser&aacute; mais tranquila!</p>\r\n', 's', 's', '19/09/2014 12:39:14 - Eduardo Fagnoni');
INSERT INTO `_dev_depoimento` VALUES ('8', '3.png', 'Carlos Arthur de Macedo Figueiredo â€“ Aprovado no TRT3 â€“ Concurso 2013', '<p>&Eacute; com muito prazer que dou meu depoimento sobre a import&acirc;ncia da participa&ccedil;&atilde;o do Iuri na minha aprova&ccedil;&atilde;o, bem como sobre as expectativas relativas ao seu t&atilde;o esperado curso jur&iacute;dico voltado para a Magistratura Trabalhista - Juslaboral.</p>\r\n\r\n<p>Sou suspeito de falar, pois tenho o Iuri como um grande amigo, amizade esta que se iniciou no ano de 2012, justamente em uma sala de curso preparat&oacute;rio para a magistratura, quando o chamei, juntamente com outros amigos que ali estavam, para participar de um grupo de estudos, que at&eacute; hoje existe (AJT).</p>\r\n\r\n<p>Todos que t&ecirc;m ou tiveram o prazer de conviver com o Iuri sabem de sua intelig&ecirc;ncia e devo&ccedil;&atilde;o &agrave; magistratura trabalhista, mesmo antes de ser um Juiz do Trabalho, mas sua principal qualidade, que todos ser&atilde;o un&acirc;nimes em reconhecer, &eacute; o altru&iacute;smo. &Eacute; impressionante e muito gratificante saber que, nos dias de hoje, em que o individualismo e o ego&iacute;smo s&atilde;o a regra, existem pessoas com a preocupa&ccedil;&atilde;o de ajudar o pr&oacute;ximo, tendo isso como um ideal de vida. Lembro que eu e minha esposa coment&aacute;vamos que nunca t&iacute;nhamos conhecido uma pessoa assim, em refer&ecirc;ncia &agrave; bondade, sem qualquer interesse, que transbordava em suas atitudes.</p>\r\n\r\n<p>Considero-me um dos privilegiados que tiveram a oportunidade usufruir do seu acompanhamento para a prova oral da Magistratura Trabalhista, que cham&aacute;vamos de CAIP (Central de Acompanhamento Iuri Pinheiro), uma experi&ecirc;ncia inesquec&iacute;vel na minha vida, que, no meu caso, contou com o aux&iacute;lio presencial indispens&aacute;vel de nossa grande amiga Rose Taveira (CAIPRO), aprovada, juntamente com o Iuri, no concurso da Magistratura do Tribunal Regional do Trabalho de Campinas, a quem tamb&eacute;m devo gratid&atilde;o eterna pela minha aprova&ccedil;&atilde;o, sem deixar de mencionar a import&acirc;ncia dos grandes amigos do AJT que, com os debates di&aacute;rios, foram lapidando e ainda lapidam meus conhecimentos. N&atilde;o poderia deixar de mencionar a import&acirc;ncia da minha esposa e companheira Ana Luisa, aprovada no TRT da 19&ordf; Regi&atilde;o, em 2012, que sempre esteve ao meu lado nos momentos mais dif&iacute;ceis e importantes, trazendo uma palavra amiga e me mostrando a import&acirc;ncia de Deus e da f&eacute; nas nossas vidas, especialmente nesse concurso, que nos consome f&iacute;sica e psicologicamente, e que n&atilde;o p&ocirc;de me acompanhar nas 24 horas porque estava gr&aacute;vida de 8 meses do nosso Cauan.</p>\r\n\r\n<p>Fui aprovado em 2013, no concurso do Tribunal Regional do Trabalho da 3&ordf; Regi&atilde;o - Minas Gerais, e o Iuri e a Rose foram os respons&aacute;veis diretos pela minha aprova&ccedil;&atilde;o na prova oral, al&eacute;m de c&uacute;mplices das 24 horas mais intensas da minha vida!</p>\r\n\r\n<p>Lembro que, poucas semanas antes da minha prova, tinha ajudado o Iuri nas 24 horas da prova oral do Fernandinho (Fernando Gon&ccedil;alves), nosso amigo aprovado em 2013 no TRT/SP, e, ao presenciar a forma como o Iuri conduzia o acompanhamento, separando material, pesquisando jurisprud&ecirc;ncia, doutrina, elaborando perguntas, fazendo simulados, enfim, participando ativamente daquele processo de revis&atilde;o sum&aacute;ria e intensiva, tive a certeza de que era daquela forma que queria que fossem as minhas 24 horas, e, gra&ccedil;as a Deus, tive a oportunidade de compartilhar com ele esses momentos preciosos e essenciais da minha vida, da defini&ccedil;&atilde;o de uma jornada sofrida e, ao mesmo tempo, muito gratificante, enfim do fechamento de um ciclo maravilhoso, que consiste, finalmente, em passar na prova oral e ingressar na t&atilde;o sonhada carreira da Magistratura Trabalhista.</p>\r\n\r\n<p>O Iuri &eacute; aquele cara que &eacute; capaz de te dar uma quest&atilde;o da oral, minutos antes da argui&ccedil;&atilde;o. N&atilde;o desconsiderem nada do que ele diz! Aconteceu comigo no caf&eacute; da manh&atilde;, minutos antes da prova ele soprou exatamente uma pergunta feita pelo presidente da banca, lembro do al&iacute;vio que senti na hora da prova e da lembran&ccedil;a que me veio no momento da pergunta, foi fant&aacute;stico!</p>\r\n\r\n<p>Tenho certeza de que todos os felizes candidatos que tiveram e ter&atilde;o a oportunidade de usufruir do acompanhamento do Iuri, terminaram e terminar&atilde;o a jornada concursal convictos de que fizeram a escolha certa e &eacute; por isso que n&atilde;o poderia deixar de registrar minha felicidade com o Juslaboral, pois finalmente estou convicto de que teremos n&atilde;o apenas mais um curso preparat&oacute;rio para a Magistratura Trabalhista, mas uma equipe formada com o objetivo espec&iacute;fico de aprovar atendendo aos anseios dos candidatos, que mais do que uma simples aprova&ccedil;&atilde;o, est&atilde;o em busca da realiza&ccedil;&atilde;o de um sonho, e &eacute; justamente nesse ponto que temos que ficar atentos, pois somente a pessoas especiais podemos confiar nossos sonhos, e, certamente, o Iuri e a equipe do Juslaboral possuem os predicados e a capacidade necess&aacute;ria para torn&aacute;-lo realidade.</p>\r\n\r\n<p>Hoje em dia sou um homem feliz pela fam&iacute;lia e amigos que tenho, bem como um profissional realizado pelo cargo que ocupo, e gostaria de dizer, sinceramente, do fundo do cora&ccedil;&atilde;o, Iuri, que voc&ecirc;, primeiramente como amigo e um ser humano &uacute;nico, e, posteriormente, como um profissional e companheiro dedicado a minha aprova&ccedil;&atilde;o, fez e sempre far&aacute; parte dessa trajet&oacute;ria. Nunca me esquecerei do que voc&ecirc; fez por mim, da sua dedica&ccedil;&atilde;o, compromisso e preocupa&ccedil;&atilde;o. Tenho muito orgulho da sua amizade e tenha certeza de que todo o dia 14 de agosto lembrarei de voc&ecirc;, ao comemorar o anivers&aacute;rio do dia mais importante da minha vida profissional.</p>\r\n\r\n<p>Estarei sempre na torcida pelo seu sucesso e de todos que est&atilde;o ao seu lado. Muito obrigado por tudo meu amigo, grande abra&ccedil;o!</p>\r\n', 's', 's', '19/09/2014 12:42:37 - Eduardo Fagnoni');
INSERT INTO `_dev_depoimento` VALUES ('9', '1.png', 'Joana Sa de Alencar Tomaz â€“ Aprovada no TRT14 - Concurso 2013', '<p>Aos amigos concurseiros,</p>\r\n\r\n<p>Meu nome &eacute; Joana, fui aprovada no concurso para a Magistratura do Tribunal Regional do Trabalho da 14&ordf; Regi&atilde;o, tendo tomado posse no dia 30 de agosto de 2013. Meu itiner&aacute;rio como concurseira, n&atilde;o deve ter sido muito distinto da trajet&oacute;ria da maioria: trabalho, filhos, estudos, provas, e reprova&ccedil;&otilde;es, muitas reprova&ccedil;&otilde;es, especialmente na segunda fase, que para mim sempre foi a mais traum&aacute;tica.</p>\r\n\r\n<p>Foram quase dez reprova&ccedil;&otilde;es at&eacute; conseguir minha primeira aprova&ccedil;&atilde;o nesta dita fase. Era um verdadeiro tormento que parecia intranspon&iacute;vel. Fui aprovada na minha terceira prova de senten&ccedil;a, ap&oacute;s ter feito uma prova subjetiva que eu n&atilde;o tinha considerado boa, e que, por isso, estava sem nenhuma perspectiva de aprova&ccedil;&atilde;o. Quando saiu o resultado, eu n&atilde;o acreditava: tinha sido aprovada! E o desespero bateu! E agora, como estudar para a prova oral? Que cursos fazer? Como funciona?</p>\r\n\r\n<p>Sabia dos desafios para a prova oral. Seria (e foi) tudo muito dif&iacute;cil, muitas incertezas, ang&uacute;stias, inquieta&ccedil;&otilde;es, ansiedade. Nesse momento, contei com a ajuda indispens&aacute;vel do Iuri, que j&aacute; em 2013 possu&iacute;a vasta experi&ecirc;ncia em provas orais, pois j&aacute; tinha acompanhado outros concurseiros. Sempre que o desespero batia, costumava recorrer ao Iuri, que, sempre muito atencioso, me explicou minunciosamente como se dava essa fase, al&eacute;m de ter me fornecido material de estudo, orienta&ccedil;&otilde;es quanto &agrave; prepara&ccedil;&atilde;o, al&eacute;m de ter me acalmada e me enchido de confian&ccedil;a. Ainda assim tive a sorte e a ben&ccedil;&atilde;o de ter sido acompanhada por ele nas minhas 24 horas.</p>\r\n\r\n<p>Nas 24 horas que antecederam a prova, nunca vou me esquecer do Iuri, incans&aacute;vel, direcionando meu estudo, otimizando meu tempo, simulando perguntas e sanando d&uacute;vidas. Sem d&uacute;vidas, eu s&oacute; tenho a agradec&ecirc;-lo pela ajuda imprescind&iacute;vel para a realiza&ccedil;&atilde;o do meu sonho. Serei eternamente grata!</p>\r\n\r\n<p>Por fim, quero consignar que a op&ccedil;&atilde;o de estudar para concurso n&atilde;o pode ser encarada como um sacrif&iacute;cio, mas sim como uma escolha. E para se obter &ecirc;xito n&atilde;o existem f&oacute;rmulas, m&aacute;gicas e&nbsp; muito menos regras a serem seguidas. Conduto, deve haver foco constante, disciplina, compromisso, e for&ccedil;a de vontade ao extremo. Abra&ccedil;o a todos.</p>\r\n', 's', 's', '19/09/2014 12:42:38 - Eduardo Fagnoni');
INSERT INTO `_dev_depoimento` VALUES ('10', 'n', 'Gustavo Martins â€“ Aprovado no TRT22 â€“ Concurso 2014', '<p>Nada na vida acontece por acaso e, se aconteceu, Deus quis assim. Agrade&ccedil;o imensamente ao mestre-amigo Iuri Levenhagem por todo o apoio na minha trajet&oacute;ria &agrave; Magistratura do Trabalho (TRT 22&ordf; Regi&atilde;o).&nbsp;</p>\r\n', 'n', 's', '19/09/2014 15:19:33 - Eduardo Fagnoni');
INSERT INTO `_dev_depoimento` VALUES ('11', 'image007.jpg', 'teste teste teste da silva', '<p>a;sldkfja;sldfjk&nbsp;</p>\r\n\r\n<p>asdf;lajsd f;kla</p>\r\n\r\n<p>sdf&aacute;s;dlkfjas;dlfja</p>\r\n\r\n<p>sdf;alsdfjk ;aldfjks</p>\r\n\r\n<p>asd;fljkasd;fljkas;dlfja;sldfjka;lsdfjka;js a; sda aks dfj;al a a; sldkfa;lsdfjk a &nbsp; a;. SAoaijsdf a;sdlfkj a;sl &nbsp;as;ldkfj a;sldkfj</p>\r\n\r\n<p>&nbsp;</p>\r\n', 's', 's', '22/09/2014 15:09:45 - teste');
INSERT INTO `_dev_depoimento` VALUES ('12', 'Captura de Tela 2014-09-19 Ã s 21.40.40.png', 'charles fontana', '<p>a;lkdfj as;dfkja;sdlfjk &nbsp;a;sdlfjk as;dfl&nbsp;</p>\r\n\r\n<p>asd;f ljkas;dfljk &nbsp;a;sdlfjk as;dlfj &nbsp;as;dlfjkas;dlfjk &nbsp; a;sldkfj a;sldkfj &nbsp;as;dlfjk a;sldkfj &nbsp;a;sldfjka;sldfjk &nbsp;a;sldjk</p>\r\n\r\n<p>a;sldkfja;lsdfjk as;dlfkj</p>\r\n\r\n<p>as;dfljkas;dfjkl as</p>\r\n\r\n<p>as;dlfjka;sdfjk&nbsp;</p>\r\n\r\n<p>a;sldkfj;adfjks. etc.</p>\r\n', 'n', 's', '22/09/2014 15:16:23 - teste');

-- ----------------------------
-- Table structure for `_dev_galeria`
-- ----------------------------
DROP TABLE IF EXISTS `_dev_galeria`;
CREATE TABLE `_dev_galeria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idAlbum` int(11) DEFAULT NULL,
  `capa` varchar(255) DEFAULT 'n',
  `arquivo` varchar(255) DEFAULT 'n',
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_galeria
-- ----------------------------
INSERT INTO `_dev_galeria` VALUES ('1', null, null, '10592835_682519705157056_6942065995329693071_n(1).jpg', 'n', '16/09/2014 20:18:24 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('2', null, null, '', 'n', '24/09/2014 18:29:34 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('3', null, null, '5.jpg', 's', '17/09/2014 21:13:55 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('4', null, null, '4.jpg', 's', '17/09/2014 21:13:50 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('5', null, null, '3.jpg', 's', '17/09/2014 21:13:44 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('6', null, null, '2.jpg', 's', '17/09/2014 21:13:37 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('7', null, null, '1.jpg', 's', '17/09/2014 21:13:32 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('8', '1', 'n', '7a8i8l(1).jpg', 'n', '24/09/2014 19:12:07 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('9', '1', 'n', 'dog-robot-thinkstock-158894647-617x416.jpg', 'n', '24/09/2014 19:11:15 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('10', '1', 'n', 'cachorro_feliz_sorrindo_portaldodog-11.jpg', 'n', '24/09/2014 19:12:22 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('11', '1', 'n', 'dog-robot-thinkstock-158894647-617x416(1).jpg', 'n', '24/09/2014 19:18:47 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('12', '1', 'n', 'cachorro_feliz_sorrindo_portaldodog-11(1).jpg', 'n', '24/09/2014 19:13:29 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('13', '1', 'n', '7a8i8l(2).jpg', 'n', '24/09/2014 19:41:40 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('14', '1', 'n', 'dog-robot-thinkstock-158894647-617x416(2).jpg', 's', '24/09/2014 19:42:10 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('15', '1', 'n', 'cachorro_feliz_sorrindo_portaldodog-11(2).jpg', 's', '24/09/2014 19:54:52 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('16', '1', 's', '7a8i8l(3).jpg', 's', '24/09/2014 19:57:00 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('17', '1', 'n', '3515220325-fa-de-crepusculo-se-casa-com-edward-feito-de-papelao-em-cerimonia-de-r-7-mil-1092692276(1).jpg', 's', '24/09/2014 19:41:57 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('18', '3', 'n', 'logo_patrocinadores_50(2).png', 's', '24/09/2014 19:55:13 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('19', '3', 'n', '1(11).jpg', 's', '24/09/2014 19:57:13 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('20', '3', 's', '1.png', 's', '24/09/2014 19:57:13 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('21', '4', 's', 'dog-robot-thinkstock-158894647-617x416(3).jpg', 's', '24/09/2014 20:11:24 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('22', '5', 's', 'cachorro_feliz_sorrindo_portaldodog-11(3).jpg', 's', '24/09/2014 20:11:37 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('23', '6', 's', 'modelo-3429.jpg', 's', '24/09/2014 20:11:52 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('24', '7', 's', '3515220325-fa-de-crepusculo-se-casa-com-edward-feito-de-papelao-em-cerimonia-de-r-7-mil-1092692276(3).jpg', 's', '24/09/2014 20:26:48 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('25', '8', 's', '7a8i8l(1).jpg', 's', '24/09/2014 21:09:01 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('26', '8', 'n', 'dog-robot-thinkstock-158894647-617x416.jpg', 's', '24/09/2014 21:08:54 - Eduardo Fagnoni');
INSERT INTO `_dev_galeria` VALUES ('27', '9', 's', 'modelo-3429.jpg', 's', '24/09/2014 21:10:25 - Eduardo Fagnoni');

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
  `link` text,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_noticia
-- ----------------------------
INSERT INTO `_dev_noticia` VALUES ('1', 'nome', '18/08/2014', '18', '08', '2014', '<p>adasd</p>\r\n', null, 'n', '16/09/2014 19:29:23 - Eduardo Fagnoni');
INSERT INTO `_dev_noticia` VALUES ('2', 'outro nome acentuaÃ§Ã£o', '16/9/2014', '16', '9', '2014', '<p>A Pol&iacute;cia Militar tamb&eacute;m deteve outras 89 pessoas que foram levadas para a delegacia para averigua&ccedil;&atilde;o e, em seguida, liberadas. Dentre elas, 80 eram da ocupa&ccedil;&atilde;o da Avenida S&atilde;o Jo&atilde;o.</p>\r\n\r\n<p>A advogada Juliana Avanci, da ONG Centro Gaspar Garcia de Direitos Humanos, que defende os invasores, disse que as 70 fam&iacute;lias que estavam no im&oacute;vel no momento da desapropria&ccedil;&atilde;o j&aacute; deixaram o local. Ao todo, 250 fam&iacute;lias invadiram o local em abril deste ano.</p>\r\n\r\n<p>&ldquo;As fam&iacute;lias foram abrigadas em outras ocupa&ccedil;&otilde;es, provisoriamente, na regi&atilde;o Central. Algumas ocupa&ccedil;&otilde;es se solidarizaram. N&atilde;o houve ali uma resposta da Prefeitura ou do governo do estado sobre a quest&atilde;o habitacional&rdquo;, disse. As fam&iacute;lias foram distribu&iacute;das em tr&ecirc;s ocupa&ccedil;&otilde;es do Centro.</p>\r\n\r\n<p>Segundo a defensora, as demais fam&iacute;lias estavam deixando o pr&eacute;dio desde a primeira tentativa de reintegra&ccedil;&atilde;o, h&aacute; 15 dias, e foram para casa de amigos e parentes. Os m&oacute;veis dos invasores foram levados para cinco dep&oacute;sitos pagos pelo propriet&aacute;rio do im&oacute;vel. Moradores, que deixaram o antigo hotel &agrave;s pressas, abandonaram roupas e sapatos.</p>\r\n', 'http://getbootstrap.com/', 'n', '9/19/2014 2:39:00 PM - Eduardo Fagnoni');
INSERT INTO `_dev_noticia` VALUES ('3', 'asdasd', '16/08/2014', '16', '08', '2014', '<p>asdasd</p>\r\n', null, 'n', '16/09/2014 19:29:22 - Eduardo Fagnoni');
INSERT INTO `_dev_noticia` VALUES ('4', 'asdasas', '20/05/2014', '20', '05', '2014', '<p>asdasd</p>\r\n', null, 'n', '16/09/2014 19:28:50 - Eduardo Fagnoni');
INSERT INTO `_dev_noticia` VALUES ('5', 'Airasd', '15/09/2014', '15', '09', '2014', '<p>A Pol&iacute;cia Militar tamb&eacute;m deteve outras 89 pessoas que foram levadas para a delegacia para averigua&ccedil;&atilde;o e, em seguida, liberadas. Dentre elas, 80 eram da ocupa&ccedil;&atilde;o da Avenida S&atilde;o Jo&atilde;o.</p>\r\n\r\n<p>A advogada Juliana Avanci, da ONG Centro Gaspar Garcia de Direitos Humanos, que defende os invasores, disse que as 70 fam&iacute;lias que estavam no im&oacute;vel no momento da desapropria&ccedil;&atilde;o j&aacute; deixaram o local. Ao todo, 250 fam&iacute;lias invadiram o local em abril deste ano.</p>\r\n\r\n<p>&ldquo;As fam&iacute;lias foram abrigadas em outras ocupa&ccedil;&otilde;es, provisoriamente, na regi&atilde;o Central. Algumas ocupa&ccedil;&otilde;es se solidarizaram. N&atilde;o houve ali uma resposta da Prefeitura ou do governo do estado sobre a quest&atilde;o habitacional&rdquo;, disse. As fam&iacute;lias foram distribu&iacute;das em tr&ecirc;s ocupa&ccedil;&otilde;es do Centro.</p>\r\n\r\n<p>Segundo a defensora, as demais fam&iacute;lias estavam deixando o pr&eacute;dio desde a primeira tentativa de reintegra&ccedil;&atilde;o, h&aacute; 15 dias, e foram para casa de amigos e parentes. Os m&oacute;veis dos invasores foram levados para cinco dep&oacute;sitos pagos pelo propriet&aacute;rio do im&oacute;vel. Moradores, que deixaram o antigo hotel &agrave;s pressas, abandonaram roupas e sapatos.</p>\r\n', null, 'n', '9/19/2014 2:39:01 PM - Eduardo Fagnoni');
INSERT INTO `_dev_noticia` VALUES ('6', 'SDC altera redaçãoo da OJ nº 04 e cria Precedente Normativo nº 40', '19/9/2014', '22', 'setembro', '2014', '<p>Ata administrativa da Se&ccedil;&atilde;o Especializada em Diss&iacute;dios Coletivos (SDC) do TRT da 2&ordf; Regi&atilde;o, do &uacute;ltimo dia 3 de setembro, alterou a reda&ccedil;&atilde;o da Orienta&ccedil;&atilde;o Jurisprudencial (OJ) n&ordm; 04 e criou o Precedente Normativo (PN) n&ordm; 40, conforme publicado no Di&aacute;rio Oficial Eletr&ocirc;nico desta segunda-feira (15).</p>\r\n\r\n<p>A OJ n&ordm; 04, que versa sobre o diss&iacute;dio coletivo de greve, passou a ter nova reda&ccedil;&atilde;o, dispondo sobre o julgamento da abusividade da greve no caso de celebra&ccedil;&atilde;o de acordo judicial.</p>\r\n\r\n<p>J&aacute; o PN n&ordm; 40 foi criado para tratar da obriga&ccedil;&atilde;o do empregador em manter seguro de vida em favor dos empregados, para cobrir as hip&oacute;teses de morte ou invalidez permanente decorrentes de acidente de trabalho ou doen&ccedil;a ocupacional.</p>\r\n\r\n<p>Leia abaixo as &iacute;ntegras dos novos textos:</p>\r\n\r\n<p><strong>OJ n&ordm; 04 - DISS&Iacute;DIO COLETIVO DE GREVE. JULGAMENTO DA ABUSIVIDADE DE MOVIMENTO AP&Oacute;S A CELEBRA&Ccedil;&Atilde;O DE ACORDO JUDICIAL. &nbsp;(Reda&ccedil;&atilde;o alterada - Ata publicada no Doeletr&ocirc;nico de 15/09/2014)</strong>&acirc;&euro;&uml;Celebrado acordo judicial nos autos do diss&iacute;dio coletivo de greve, com regramento sobre os efeitos da greve, prejudicado est&aacute; o julgamento quanto &agrave; sua abusividade, face &agrave; pacifica&ccedil;&atilde;o do conflito pela composi&ccedil;&atilde;o das partes, salvo se houver requerimento em sentido contr&aacute;rio ou versar a hip&oacute;tese sobre greve em atividade que alcance interesse p&uacute;blico.</p>\r\n\r\n<p><strong>PRECEDENTE NORMATIVO N&ordm; 40 - SEGURO DE VIDA. ACIDENTE DE TRABALHO E DOEN&Ccedil;A OCUPACIONAL. POSITIVO. &nbsp;(Inclu&iacute;do pela Ata publicada no Doeletr&ocirc;nico 15/09/2014) </strong>&acirc;&euro;&uml;O empregador est&aacute; obrigado a constituir e manter seguro, n&atilde;o contribut&aacute;rio, em favor de seus empregados para as hip&oacute;teses de morte ou invalidez permanente decorrentes de acidente de trabalho ou doen&ccedil;a ocupacional, com capital segurado m&iacute;nimo equivalente a 25 (vinte e cinco) pisos normativos da categoria.</p>\r\n', 'http://www.trtsp.jus.br/indice-de-noticias-ultimas-noticias/18867-sdc-altera-redacao-da-oj-n-04-e-cria-precedente-normativo-n-40', 's', '22/09/2014 13:13:53 - Eduardo Fagnoni');
INSERT INTO `_dev_noticia` VALUES ('7', 'Falta de maioria absoluta impede TST de alterar jurisprudência sobre contribuição assistencial', '19/9/2014', '22', 'setembro', '2014', '<p>Em sess&atilde;o extraordin&aacute;ria realizada nesta ter&ccedil;a-feira (19), o Pleno do Tribunal Superior do Trabalho colocou em vota&ccedil;&atilde;o proposta de altera&ccedil;&atilde;o da reda&ccedil;&atilde;o do <a href=\"http://brs02.tst.jus.br/cgi-bin/nph-brs?d=BLNK&amp;s1=119&amp;s2=bdpn.base.&amp;pg1=NUMS&amp;u=http://www.tst.gov.br/jurisprudencia/brs/nspit/nspitgen_un_pix.html&amp;p=1&amp;r=1&amp;f=G&amp;l=0\">Precedente Normativo 119</a> e o cancelamento da <a href=\"http://brs02.tst.jus.br/cgi-bin/nph-brs?d=BLNK&amp;s1=17&amp;s2=bddc.base.&amp;pg1=NUMS&amp;u=http://www.tst.gov.br/jurisprudencia/brs/nspit/nspitgen_un_pix.html&amp;p=1&amp;r=1&amp;f=G&amp;l=0\">Orienta&ccedil;&atilde;o Jurisprudencial 17</a> da Se&ccedil;&atilde;o Especializada em Diss&iacute;dios Coletivos (SDC), que tratam da contribui&ccedil;&atilde;o para entidades sindicais. A proposta foi aceita por 12 votos, contra 11 votos contr&aacute;rios. O <a href=\"http://aplicacao.tst.jus.br/dspace/handle/1939/1282\">Regimento Interno</a> do TST, por&eacute;m, exige, para a aprova&ccedil;&atilde;o, revis&atilde;o ou cancelamento de s&uacute;mula ou de precedente normativo, a aprova&ccedil;&atilde;o da maioria absoluta, ou seja, 14 votos. Por esse motivo, embora houvesse maioria a favor da mudan&ccedil;a, o Pleno declarou, regimentalmente, a manuten&ccedil;&atilde;o da reda&ccedil;&atilde;o atual do PN 119 e da vig&ecirc;ncia da OJ 17.</p>\r\n\r\n<p>Os dois verbetes consideram que a cobran&ccedil;a da chamada contribui&ccedil;&atilde;o assistencial de trabalhadores n&atilde;o sindicalizados viola o direito constitucional &agrave; livre associa&ccedil;&atilde;o e sindicaliza&ccedil;&atilde;o. H&aacute; anos as entidades sindicais v&ecirc;m trazendo ao TST sua preocupa&ccedil;&atilde;o com este entendimento e defendendo a contribui&ccedil;&atilde;o obrigat&oacute;ria, extensiva a todos os trabalhadores das categorias representadas pelos sindicatos. Sua principal alega&ccedil;&atilde;o &eacute; que as negocia&ccedil;&otilde;es e acordos coletivos beneficiam a todos, independentemente de filia&ccedil;&atilde;o.</p>\r\n\r\n<p>O tema foi encaminhado at&eacute; mesmo &agrave; Organiza&ccedil;&atilde;o Internacional do Trabalho (OIT). As centrais sindicais brasileiras apresentaram, em 2014, representa&ccedil;&atilde;o ao Conselho de Administra&ccedil;&atilde;o da OIT contra o TST e o Minist&eacute;rio P&uacute;blico do Trabalho, para que o organismo intervenha, como mediadora, para que o TST reveja sua jurisprud&ecirc;ncia.</p>\r\n\r\n<p>O ministro Levenhagen, que j&aacute; se declarou favor&aacute;vel &agrave; altera&ccedil;&atilde;o, tem recebido, desde que assumiu a Presid&ecirc;ncia do TST, em mar&ccedil;o, diversas manifesta&ccedil;&otilde;es das entidades sindicais e, por isso, tomou a iniciativa de encaminhar a proposta. &quot;Foram in&uacute;meras visitas de sindicalistas&quot;, afirmou Levenhagen. &quot;Na &uacute;ltima delas, h&aacute; cerca de duas semanas, compareceram as cinco centrais sindicais&quot;.</p>\r\n\r\n<p><strong>Regimento Interno</strong></p>\r\n\r\n<p>O texto encaminhado &agrave; Comiss&atilde;o de Jurisprud&ecirc;ncia, subscrito por 14 dos 27 ministros do TST (atualmente 26, pois uma vaga aguarda nomea&ccedil;&atilde;o), propunha que a reda&ccedil;&atilde;o do PN 119 fosse alterada para prever a extens&atilde;o da contribui&ccedil;&atilde;o sindical a n&atilde;o associados mediante acordo coletivo, tendo o trabalhador 20 dias para manifestar formalmente sua recusa. Quanto &agrave; OJ 17, a proposta era o cancelamento.</p>\r\n\r\n<p>O parecer da Comiss&atilde;o de Jurisprud&ecirc;ncia foi no sentido de cancelar os dois verbetes, &quot;a fim de permitir &agrave; Corte reanalisar amplamente as quest&otilde;es referentes &agrave; contribui&ccedil;&atilde;o assistencial, devendo o direito de oposi&ccedil;&atilde;o e a forma de cobran&ccedil;a serem consolidados em momento futuro, ap&oacute;s a cataloga&ccedil;&atilde;o dos necess&aacute;rios precedentes, nos termos das normas regimentais&quot;.</p>\r\n\r\n<p>Na sess&atilde;o de ontem, participaram 23 ministros. Como 12 votaram a favor da mudan&ccedil;a e 11 contra, n&atilde;o houve maioria absoluta, como prev&ecirc; o artigo 62, par&aacute;grafo 1&ordm;, inciso IV do Regimento Interno. Assim, embora tenha recebido ades&atilde;o majorit&aacute;ria dos ministros, a proposta n&atilde;o p&ocirc;de ser implementada.</p>\r\n\r\n<p>(Carmem Feij&oacute;)</p>\r\n', 'http://www.tst.jus.br/noticias/-/asset_publisher/89Dk/content/falta-de-maioria-absoluta-impede-tst-de-alterar-jurisprudencia-sobre-contribuicao-assistencial', 's', '22/09/2014 13:14:33 - Eduardo Fagnoni');
INSERT INTO `_dev_noticia` VALUES ('8', 'TRT2 - 3Âª Turma: Ã‰ da justiÃ§a do trabalho a competÃªncia para julgar autorizaÃ§Ã£o de trabalho para menores de 16 anos', '19/9/2014', '19', 'setembro', '2014', '<p>Em decis&atilde;o hist&oacute;rica, proferida nessa ter&ccedil;a-feira (10), os magistrados da 3&ordf; Turma do Tribunal Regional do Trabalho da 2&ordf; Regi&atilde;o concordaram em dar provimento ao recurso ordin&aacute;rio interposto pelo Minist&eacute;rio P&uacute;blico do Trabalho para declarar a compet&ecirc;ncia da justi&ccedil;a do trabalho para aprecia&ccedil;&atilde;o de pedido de autoriza&ccedil;&atilde;o de trabalho de menores de dezesseis anos.</p>\r\n\r\n<p>Na origem, a autora, Centro Mix Mixagens e Produ&ccedil;&otilde;es Art&iacute;sticas Ltda. EPP, solicitara autoriza&ccedil;&atilde;o para que os menores relacionados na inicial pudessem realizar servi&ccedil;os de dublagem, visto que n&atilde;o estariam na condi&ccedil;&atilde;o de aprendizes. Por&eacute;m, a senten&ccedil;a da julgadora da 63&ordf; Vara Trabalhista apontou a incompet&ecirc;ncia desta justi&ccedil;a especializada e determinou a remessa dos autos &agrave; justi&ccedil;a estadual comum para posterior distribui&ccedil;&atilde;o a uma das Varas da Inf&acirc;ncia e Juventude.</p>\r\n\r\n<p>Em sua apela&ccedil;&atilde;o, o Minist&eacute;rio P&uacute;blico do Trabalho acusou a nulidade do julgamento em raz&atilde;o do feito discutir interesse de crian&ccedil;as e adolescentes sem que tenha havido a obrigat&oacute;ria interven&ccedil;&atilde;o do &oacute;rg&atilde;o, conforme determina o artigo 82 do C&oacute;digo de Processo Civil, em seu inciso I.</p>\r\n\r\n<p>A relatora, desembargadora Rosana de Almeida Buono, salientou que &quot;a quest&atilde;o do trabalho infantil se transformou em um problema latente na sociedade moderna, mormente na brasileira, motivo pelo qual o Estado n&atilde;o pode permanecer inerte e indiferente &agrave; sua gravidade&quot;, afirmou.</p>\r\n\r\n<p>A magistrada enfatizou ainda que a reda&ccedil;&atilde;o do artigo 406 da CLT, que atribui ao juiz da vara da inf&acirc;ncia e juventude a responsabilidade para autorizar o trabalho do menor, n&atilde;o se sobrep&otilde;e &agrave; norma disposta no artigo 114, inciso I, da Constitui&ccedil;&atilde;o Federal, alterado pela Emenda Constitucional 45/2004, na qual ficou fixada a compet&ecirc;ncia da Justi&ccedil;a do Trabalho para processar e julgar causas oriundas das rela&ccedil;&otilde;es de trabalho.</p>\r\n\r\n<p>Refor&ccedil;ando sua convic&ccedil;&atilde;o, Rosana de Almeida Buono lembrou que em maio de 2012 o presidente do TST/CSJT instituiu, no &acirc;mbito da Justi&ccedil;a do Trabalho, uma comiss&atilde;o permanente visando a erradica&ccedil;&atilde;o do trabalho infantil. E o TRT-2, atrav&eacute;s da portaria GP 34/2013, criou a comiss&atilde;o de erradica&ccedil;&atilde;o do trabalho infantil e prote&ccedil;&atilde;o do trabalho do adolescente e, por meio do Ato GP 19/2013, criou, ainda, o ju&iacute;zo auxiliar da inf&acirc;ncia e juventude da Justi&ccedil;a do Trabalho, com a atribui&ccedil;&atilde;o de apreciar os pedidos de autoriza&ccedil;&atilde;o para trabalho infantil.</p>\r\n\r\n<p>Ante o exposto, os magistrados da 3&ordf; Turma do Tribunal Regional do Trabalho da 2&ordf; Regi&atilde;o acordaram dar provimento ao recurso ordin&aacute;rio interposto pelo Minist&eacute;rio P&uacute;blico do Trabalho para declarar a compet&ecirc;ncia desta Justi&ccedil;a Especializada para aprecia&ccedil;&atilde;o de pedido de autoriza&ccedil;&atilde;o de trabalho de menores de dezesseis anos, bem como a nulidade do feito a partir da fl.178, determinando o retorno dos autos &agrave; origem, a fim de que seja dada vista dos autos ao Minist&eacute;rio P&uacute;blico do Trabalho para sua manifesta&ccedil;&atilde;o de direito, quando ent&atilde;o dever&aacute; ser proferida decis&atilde;o atinente.</p>\r\n\r\n<p>(Processo TRT/SP n&ordm; 00017544920135020063)</p>\r\n', 'http://www.trtsp.jus.br/indice-de-noticias-noticias-juridicas/18240-3-turma-e-da-justica-do-trabalho-a-competencia-para-julgar-autorizacao-de-trabalho-para-menores-de-16-anos', 's', '19/09/2014 14:52:56 - Eduardo Fagnoni');
INSERT INTO `_dev_noticia` VALUES ('9', 'nova noticia', '19/09/2014', '22', 'setembro', '2014', '<p>a noticia &eacute; a seguinte,&nbsp;http://www.cursojuslab</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>oral.com.br/dev/default.asphttp://www.cursojuslaboral.com.br/dev/default.asphttp://www.cursojuslaboral.com.br/dev/default.asphttp://www.cursojuslaboral.com.br/dev/default.asphttp://www.cursojuslabo</p>\r\n\r\n<p>ral.com.br/dev/default.asphttp://www.cursojuslaboral.com.br/dev/default.asphttp://www.cursojuslaboral.com.br/dev/default.asphttp://www.cursojuslaboral.com.br/dev/default.asphttp://www.cursojuslaboral.com.br/dev/default.aspvvhttp://www.cursojuslaboral.com.br/dev/default.asphttp://www.cursojuslaboral.com.br/dev/default.aspvvhttp://www.cursojuslaboral.com.br/dev/default.asphttp://www.cursojuslaboral.com.br/dev/default.aspvvhttp://www.cursojuslaboral.com.br/dev/default.asphttp://www.cursojuslaboral.com.br/dev/default.aspvvvvhttp://www.cursojuslaboral.com.br/dev/default.asphttp://www.cursojuslaboral.com.br/dev/default.asp &nbsp;http://www.cursojuslaboral.com.br/dev/default.asphttp://www.cursojuslaboral.com.br/dev/default.asphttp://www.cursojuslaboral.com.br/dev/default.asphttp://www.cursojuslaboral.com.br/dev/default.aspvv &nbsp;&nbsp;<strong>bvvvvvv</strong>http://www.cursojuslaboral.com.br/dev/default.asp&nbsp;&nbsp;&nbsp;</p>\r\n', 'http://www.webbox.com.br', 's', '22/09/2014 15:06:50 - teste');
INSERT INTO `_dev_noticia` VALUES ('10', 'teste teste teste', '22/9/2014', '22', 'setembro', '2014', '<p>;aslkdfj ;alksdfj ;alksdfj a;lsk dfja;sldfjk &nbsp;a;lskdfj a;lskdfj ;alsdkfj ;a &nbsp;as;l dfjka;sldkfj a;s ld</p>\r\n\r\n<p>a; sldfjk;a lkj &nbsp;a;sldkfj a;lskdfj &nbsp; a;sldkfj a;sldfjk &nbsp;a s;dlfkja;sldkfj &nbsp; a;sldkfj a;sldkfj &nbsp;as;dlkfj a;sldfj&nbsp;</p>\r\n\r\n<p>a;sldkfj afj a s;dlfkjas;ldkfj &nbsp; as;ldkfj as;dlfjk a s;ldkfjasdfjk a ;sldfjk as;lkdfj a;sldkfj a;lsdfj &nbsp;;asldfjk a;lsdfjk&nbsp;</p>\r\n\r\n<p>a; sldfjkfj k &nbsp; a;sldfjk a; a;sldkfja;dfjkls &nbsp;a s;ldkfj fja s</p>\r\n', 'http://www.webbox.com.br', 's', '22/09/2014 15:03:07 - teste');
INSERT INTO `_dev_noticia` VALUES ('11', 'teste caracteres', '22/9/2014', '22', 'setembro', '2014', '<p>espa&ccedil;amento, n&atilde;o, &amp; 23 &nbsp;propriet&aacute;rio&nbsp;</p>\r\n', 'http://http://www.g1.com.br', 's', '22/09/2014 17:02:54 - Eduardo Fagnoni');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_primeira_fase
-- ----------------------------
INSERT INTO `_dev_primeira_fase` VALUES ('1', 'TRT - 1Âª RegiÃ£o - Rio de Janeiro (1Âª FASE)', 'n', '19/09/2014 16:09:57 - Eduardo Fagnoni');
INSERT INTO `_dev_primeira_fase` VALUES ('2', 'teste 2', 'n', '19/09/2014 16:09:56 - Eduardo Fagnoni');
INSERT INTO `_dev_primeira_fase` VALUES ('3', 'trt  minas', 's', '22/09/2014 15:20:22 - teste');

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
INSERT INTO `_dev_segunda_fase` VALUES ('1', '2 fase', 'n', '19/09/2014 16:10:10 - Eduardo Fagnoni');

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
INSERT INTO `_dev_terceira_fase` VALUES ('1', '3 fase', 'n', '19/09/2014 16:10:14 - Eduardo Fagnoni');

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

-- ----------------------------
-- Table structure for `_prod_album`
-- ----------------------------
DROP TABLE IF EXISTS `_prod_album`;
CREATE TABLE `_prod_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `texto` text,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _prod_album
-- ----------------------------
INSERT INTO `_prod_album` VALUES ('1', 'A lideranÃ§a discreta', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 's', '24/09/2014 18:26:57 - Eduardo Fagnoni');
INSERT INTO `_prod_album` VALUES ('2', 'sdfsdfsdfsdf', 'sdf', 'n', '24/09/2014 18:29:55 - Eduardo Fagnoni');
INSERT INTO `_prod_album` VALUES ('3', 'IOSCO - RIO 2014', 'Phasellus tincidunt neque et diam placerat dictum. Phasellus tincidunt neque et diam placerat dictum.', 's', '24/09/2014 20:04:58 - Eduardo Fagnoni');
INSERT INTO `_prod_album` VALUES ('4', 'Teste de Galeria com a ferramenta.', 'Esse teste de galeria leva o tÃ­tulo e o descritivo atÃ© o limite de onde podem chegar. o objetivo Ã© ....', 's', '24/09/2014 19:32:53 - Eduardo Fagnoni');
INSERT INTO `_prod_album` VALUES ('5', ' Phasellus tincidunt neque et diam placerat dictum.', ' Phasellus tincidunt neque et diam placerat dictum.', 's', '24/09/2014 20:07:53 - Eduardo Fagnoni');
INSERT INTO `_prod_album` VALUES ('6', ' Phasellus tincidunt neque et diam', ' Phasellus tincidunt neque et diam placerat dictum.', 's', '24/09/2014 20:07:46 - Eduardo Fagnoni');
INSERT INTO `_prod_album` VALUES ('7', 'IOSCO - RIO 2014', 'fdfg  Phasellus tincidunt neque et diam placerat dictum. Phasellus tincidunt neque et diam placer', 's', '24/09/2014 20:12:18 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_prod_arquivo_1`
-- ----------------------------
DROP TABLE IF EXISTS `_prod_arquivo_1`;
CREATE TABLE `_prod_arquivo_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idFase` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `arquivo` varchar(255) DEFAULT NULL,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _prod_arquivo_1
-- ----------------------------
INSERT INTO `_prod_arquivo_1` VALUES ('5', '1', 'arquivo 1 fase 1', 'Novo Documento de Texto(5).txt', 's', '17/09/2014 00:43:09 - Eduardo Fagnoni');
INSERT INTO `_prod_arquivo_1` VALUES ('6', '1', 'mais um', '', 'n', '17/09/2014 00:42:21 - Eduardo Fagnoni');
INSERT INTO `_prod_arquivo_1` VALUES ('7', '2', 'arquivo 1', '', 's', '17/09/2014 00:44:42 - Eduardo Fagnoni');
INSERT INTO `_prod_arquivo_1` VALUES ('8', '2', 'arquivo 2', '', 'n', '17/09/2014 00:45:02 - Eduardo Fagnoni');
INSERT INTO `_prod_arquivo_1` VALUES ('9', '2', 'arquivo 3', '', 'n', '17/09/2014 00:49:46 - Eduardo Fagnoni');
INSERT INTO `_prod_arquivo_1` VALUES ('10', '2', 'este 4', '', 's', '17/09/2014 00:49:58 - Eduardo Fagnoni');
INSERT INTO `_prod_arquivo_1` VALUES ('11', '1', 'sdfssdfs', '', 's', '17/09/2014 00:50:14 - Eduardo Fagnoni');
INSERT INTO `_prod_arquivo_1` VALUES ('12', '1', 'sdfsdfsdf', '', 's', '17/09/2014 00:50:37 - Eduardo Fagnoni');
INSERT INTO `_prod_arquivo_1` VALUES ('13', '1', 'Arteletra', 'download-1410961388297.pdf', 's', '18/09/2014 17:55:43 - teste');

-- ----------------------------
-- Table structure for `_prod_arquivo_2`
-- ----------------------------
DROP TABLE IF EXISTS `_prod_arquivo_2`;
CREATE TABLE `_prod_arquivo_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idFase` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `arquivo` varchar(255) DEFAULT NULL,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _prod_arquivo_2
-- ----------------------------
INSERT INTO `_prod_arquivo_2` VALUES ('6', '1', 'arquivo 1 fase 2', '', 'n', '17/09/2014 00:50:11 - Eduardo Fagnoni');
INSERT INTO `_prod_arquivo_2` VALUES ('7', '1', 'sdfsdfsdf', '', 's', '17/09/2014 00:50:27 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_prod_arquivo_3`
-- ----------------------------
DROP TABLE IF EXISTS `_prod_arquivo_3`;
CREATE TABLE `_prod_arquivo_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idFase` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `arquivo` varchar(255) DEFAULT NULL,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _prod_arquivo_3
-- ----------------------------
INSERT INTO `_prod_arquivo_3` VALUES ('4', '1', 'arquivo 1 fase 3', '', 'n', '17/09/2014 00:50:56 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_prod_banner`
-- ----------------------------
DROP TABLE IF EXISTS `_prod_banner`;
CREATE TABLE `_prod_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arquivo` varchar(255) DEFAULT 'n',
  `link` varchar(255) DEFAULT NULL,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _prod_banner
-- ----------------------------
INSERT INTO `_prod_banner` VALUES ('1', 'b2(1).jpg', '', 'n', '19/09/2014 12:56:00 - Eduardo Fagnoni');
INSERT INTO `_prod_banner` VALUES ('2', 'b1(1).jpg', '', 'n', '19/09/2014 12:55:59 - Eduardo Fagnoni');
INSERT INTO `_prod_banner` VALUES ('3', 'b4(1).jpg', '', 'n', '19/09/2014 12:55:58 - Eduardo Fagnoni');
INSERT INTO `_prod_banner` VALUES ('4', 'b3(1).jpg', 'http://www.cursojuslaboral.com.br/dev/cursos_interna.asp?id=6', 'n', '19/09/2014 12:55:57 - Eduardo Fagnoni');
INSERT INTO `_prod_banner` VALUES ('5', '1.jpg', 'http://www.cursojuslaboral.com.br/cursos_interna.asp?id=8', 's', '9/19/2014 6:23:51 PM - Eduardo Fagnoni');
INSERT INTO `_prod_banner` VALUES ('6', '2(1).jpg', 'http://www.cursojuslaboral.com.br/cursos_interna.asp?id=9', 's', '19/09/2014 15:07:06 - Eduardo Fagnoni');
INSERT INTO `_prod_banner` VALUES ('7', '3(1).jpg', 'http://www.cursojuslaboral.com.br/cursos_interna.asp?id=6', 's', '19/09/2014 15:07:42 - Eduardo Fagnoni');
INSERT INTO `_prod_banner` VALUES ('8', '4(1).jpg', 'http://www.cursojuslaboral.com.br/cursos_interna.asp?id=7', 's', '19/09/2014 15:08:15 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_prod_cursos`
-- ----------------------------
DROP TABLE IF EXISTS `_prod_cursos`;
CREATE TABLE `_prod_cursos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `resumo` text,
  `texto` longtext,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _prod_cursos
-- ----------------------------
INSERT INTO `_prod_cursos` VALUES ('6', 'Discursiva', 'AlicerÃ§ado na diretriz pedagÃ³gica de que o candidato deve estar permanentemente se preparando para todas as fases do concurso de forma conjugadas, o corpo docente do Curso Juslaboral construiu uma metodologia para cursos regulares (semanais) e intensivos.', '<p><strong>Prepara&ccedil;&atilde;o para a 1&ordf; Prova Discursiva da magistratura &ndash; Curso regular semanal e intensivo</strong></p>\r\n\r\n<p>Alicer&ccedil;ado na diretriz pedag&oacute;gica de que o candidato deve estar permanentemente se preparando para todas as fases do concurso de forma conjugadas, o corpo docente do Curso Juslaboral construiu uma metodologia para cursos regulares (semanais) e intensivos.</p>\r\n\r\n<p>Os cursos visam a prepara&ccedil;&atilde;o para a 1&ordf; Prova Discursiva (2&ordf; Fase) da Magistratura do Trabalho, primando pela elabora&ccedil;&atilde;o de quest&otilde;es que levam em conta o que ultimamente vem sendo cobrado nas provas da magistratura (e o perfil da banca examinadora &ndash; cursos intensivos), bem como temas atuais e relevantes, que ser&atilde;o corrigidas individualmente.</p>\r\n\r\n<p>As orienta&ccedil;&otilde;es espec&iacute;ficas e pormenorizadas, necess&aacute;rias para potencializar o rendimento do aluno, ser&atilde;o detalhadas ap&oacute;s a inscri&ccedil;&atilde;o nos cursos, mas antecipamos brevemente a recomenda&ccedil;&atilde;o de serem simuladas as condi&ccedil;&otilde;es reais da prova, podendo ser realizado o envio das quest&otilde;es manuscritas e digitalizadas.</p>\r\n\r\n<p>Em virtude do compromisso com uma forma&ccedil;&atilde;o humanizada e focada essencialmente no aluno, os cursos de provas discursivas possuem limita&ccedil;&atilde;o no n&uacute;mero de participantes.</p>\r\n', 's', '19/09/2014 17:20:07 - Eduardo Fagnoni');
INSERT INTO `_prod_cursos` VALUES ('7', 'SentenÃ§a', 'O Curso Regular de PreparaÃ§Ã£o para a Prova de SentenÃ§a oferece um acompanhamento personalizado e individual para o aluno, com vistas a desenvolver o conteÃºdo jurÃ­dico e as habilidades e competÃªncias necessÃ¡rias para aprovaÃ§Ã£o nessa especÃ­fica fase do concurso para a magistratura do trabalho.', '<p><strong>Prepara&ccedil;&atilde;o para a Prova de Senten&ccedil;a &ndash; Curso Regular e Intensivo</strong></p>\r\n\r\n<p>O Curso Regular de Prepara&ccedil;&atilde;o para a Prova de Senten&ccedil;a oferece um acompanhamento personalizado e individual para o aluno, com vistas a desenvolver o conte&uacute;do jur&iacute;dico e as habilidades e compet&ecirc;ncias necess&aacute;rias para aprova&ccedil;&atilde;o nessa espec&iacute;fica fase do concurso para a magistratura do trabalho.</p>\r\n\r\n<p>O Curso se inicia com o envio ao aluno de uma apostila, contendo as informa&ccedil;&otilde;es iniciais e b&aacute;sicas referentes &agrave; prepara&ccedil;&atilde;o para a prova de senten&ccedil;a Simultaneamente, s&atilde;o tamb&eacute;m enviadas as senten&ccedil;as a serem feitas pelo aluno, obtidas de provas reais de concursos anteriores e escalonadas em ordem e grau de dificuldade, como forma de potencializar o aspecto pedag&oacute;gico do curso. Essas senten&ccedil;as dever&atilde;o ser resolvidas de forma simulada, respeitando as efetivas condi&ccedil;&otilde;es de prova, em datas a serem previamente combinadas com o professor.</p>\r\n\r\n<p>Em seguida, o aluno digitalizar&aacute; e enviar&aacute; a sua resolu&ccedil;&atilde;o do exerc&iacute;cio, que ser&aacute; objeto de criteriosa e individualizada avalia&ccedil;&atilde;o. Depois de corrigido, o exerc&iacute;cio ser&aacute; devolvido com os coment&aacute;rios pertinentes. A corre&ccedil;&atilde;o tamb&eacute;m vem acompanhada de uma sugest&atilde;o de resolu&ccedil;&atilde;o da senten&ccedil;a, elaborada igualmente com a simula&ccedil;&atilde;o das reais condi&ccedil;&otilde;es da prova, ficando o professor dispon&iacute;vel para esclarecimentos posteriores.</p>\r\n\r\n<p>O&nbsp; Curso Regular &eacute; disponibilizado nas modalidades semanal e quinzenal. J&aacute; os Cursos Intensivos s&atilde;o voltados para certames espec&iacute;ficos e montados segundo o cronograma de cada edital. De forma semelhante &agrave;s demais fases, &eacute; observado o compromisso do Curso Juslaboral com uma forma&ccedil;&atilde;o humanizada, raz&atilde;o pela qual os cursos de senten&ccedil;a possuem limita&ccedil;&atilde;o no n&uacute;mero de alunos.</p>\r\n', 's', '19/09/2014 15:04:02 - Eduardo Fagnoni');
INSERT INTO `_prod_cursos` VALUES ('8', 'PreparaÃ§Ã£o Oral', 'A prova oral suscita muitas dificuldades e apreensÃµes nos candidatos em virtude do seu significado de aproximaÃ§Ã£o da realizaÃ§Ã£o do sonho e tambÃ©m da inversÃ£o na avaliaÃ§Ã£o do conhecimento, jÃ¡ que este agora nÃ£o Ã© mais transmitido pela escrita, mas sim pela fala.', '<p><strong>Prepara&ccedil;&atilde;o para a prova oral </strong></p>\r\n\r\n<p>A prova oral suscita muitas dificuldades e apreens&otilde;es nos candidatos em virtude do seu significado de aproxima&ccedil;&atilde;o da realiza&ccedil;&atilde;o do sonho e tamb&eacute;m da invers&atilde;o na avalia&ccedil;&atilde;o do conhecimento, j&aacute; que este agora n&atilde;o &eacute; mais transmitido pela escrita, mas sim pela fala.</p>\r\n\r\n<p>Deste modo, al&eacute;m de se trabalhar minuciosa e profundamente os conhecimentos t&eacute;cnicos e jur&iacute;dicos que envolvem a argui&ccedil;&atilde;o oral com a imers&atilde;o em quest&otilde;es jur&iacute;dicas de especial relevo e magnitude, o curso tem por objetivo trabalhar os aspectos posturais, comportamentais e emocionais para supera&ccedil;&atilde;o do medo e assegurar uma prepara&ccedil;&atilde;o s&oacute;lida e eficaz, que culmine na aprova&ccedil;&atilde;o do candidato na prova oral de Juiz do Trabalho.</p>\r\n\r\n<p>Em breve s&iacute;ntese, o curso de prepara&ccedil;&atilde;o pr&eacute;via &eacute; estruturado com a realiza&ccedil;&atilde;o de 2 simulados para cada aluno, que ser&atilde;o gravados e disponibilizados ao final, com a corre&ccedil;&atilde;o jur&iacute;dica e postural, enfoques de diferentes perfis de examinadores. Por fim, h&aacute; uma aula de orienta&ccedil;&otilde;es gerais sobre a prova oral e orienta&ccedil;&otilde;es espec&iacute;ficas para os momentos de inscri&ccedil;&atilde;o definitiva, prepara&ccedil;&atilde;o at&eacute; a prova e 24 horas que antecedem o exame oral, al&eacute;m de estudo do perfil da banca e outras atividades que ap&oacute;s a inscri&ccedil;&atilde;o, s&atilde;o detalhadas de forma mais espec&iacute;fica.</p>\r\n\r\n<p>O corpo docente tamb&eacute;m foi constitu&iacute;do de forma heterog&ecirc;nea e complementar para transmitir um conhecimento que efetivamente acrescente conte&uacute;do nas mais diversas &aacute;reas, com simula&ccedil;&otilde;es reais da prova oral, considerando local da prova e instrumentos utilizados pelas bancas examinadoras. Os exerc&iacute;cios de simula&ccedil;&atilde;o contar&atilde;o, no m&iacute;nimo, com o mesmo n&uacute;mero de membros da prova oral (3 examinadores), mas, para aperfei&ccedil;oar ainda mais o trabalho, contamos com um quarto magistrado no curso, possibilitando que um deles fa&ccedil;a a avalia&ccedil;&atilde;o externa e lateral.</p>\r\n\r\n<p>Al&eacute;m disso, um grande diferencial do curso &eacute; a disponibilidade para direcionamento das condutas do candidato durante a fase de inscri&ccedil;&atilde;o definitiva e prepara&ccedil;&atilde;o para prova oral, j&aacute; que &eacute; comum nessa fase do certame n&atilde;o se saber exatamente o que fazer e como agir. Por fim, ap&oacute;s o curso presencial, os professores ficam &agrave; disposi&ccedil;&atilde;o tamb&eacute;m para simulados avulsos via Skype.</p>\r\n', 's', '19/09/2014 15:05:22 - Eduardo Fagnoni');
INSERT INTO `_prod_cursos` VALUES ('9', 'Acompanhamento 24h', 'A preparaÃ§Ã£o de 24 horas realizada pelo Corpo Docente do Juslaboral, coordenada pelo Professor Iuri Pinheiro, tem por objetivo proporcionar uma logÃ­stica preparatÃ³ria entre o fugaz perÃ­odo do sorteio do ponto e a arguiÃ§Ã£o do dia subsequente.', '<p>A prepara&ccedil;&atilde;o de 24 horas realizada pelo Corpo Docente do Juslaboral, coordenada pelo Professor Iuri Pinheiro, tem por objetivo proporcionar uma log&iacute;stica preparat&oacute;ria entre o fugaz per&iacute;odo do sorteio do ponto e a argui&ccedil;&atilde;o do dia subsequente.</p>\r\n\r\n<p>Em breves palavras, o trabalho inclui a organiza&ccedil;&atilde;o de cronograma com ordem e fontes de estudo, fornecimento de material espec&iacute;fico (impressos e em m&iacute;dia digital), controle de tempo, simulados para aferi&ccedil;&atilde;o de conte&uacute;do, encontros para repasse de conte&uacute;do e destaque de pontos relevantes, sele&ccedil;&atilde;o de jurisprud&ecirc;ncia, ensaio e debate de disserta&ccedil;&atilde;o e disponibilidade para sanar d&uacute;vidas a qualquer momento de todas as 24 horas, dentre outras necessidades que surjam por parte dos alunos.</p>\r\n\r\n<p>As vagas s&atilde;o limitadas para assegurar um acompanhamento de qualidade.</p>\r\n', 's', '19/09/2014 15:06:08 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_prod_depoimento`
-- ----------------------------
DROP TABLE IF EXISTS `_prod_depoimento`;
CREATE TABLE `_prod_depoimento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arquivo` varchar(255) DEFAULT 'n',
  `nome` varchar(255) DEFAULT NULL,
  `texto` longtext,
  `destaque` varchar(255) DEFAULT 'n',
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _prod_depoimento
-- ----------------------------
INSERT INTO `_prod_depoimento` VALUES ('1', '10592835_682519705157056_6942065995329693071_n.jpg', 'Aline Mello - DF', '<p>depo</p>\r\n', 'n', 'n', '16/09/2014 19:29:31 - Eduardo Fagnoni');
INSERT INTO `_prod_depoimento` VALUES ('2', '7a8i8l.jpg', 'Reginaldo Freitas - SP', '<p>Durante quase tr&ecirc;s horas de depoimento &agrave; CPI mista da Petrobras, o ex-diretor da estatal Paulo Roberto Costa repetiu 18 vezes &ldquo;nada a declarar&rdquo; (ou frases equivalentes) e se recusou a responder a todos os questionamentos formulados pelos parlamentares da comiss&atilde;o. Por ordem da Justi&ccedil;a,&nbsp;<a href=\"http://g1.globo.com/politica/noticia/2014/09/ex-diretor-da-petrobras-chega-brasilia-para-depoimento-na-cpi.html\">ele foi trazido por policiais federais</a>&nbsp;de Curitiba, onde est&aacute; preso, para atender &agrave; convoca&ccedil;&atilde;o da CPI.</p>\r\n\r\n<p>Costa firmou com o Minist&eacute;rio P&uacute;blico do Paran&aacute; e com a Justi&ccedil;a Federal um&nbsp;<a href=\"http://g1.globo.com/politica/noticia/2014/09/ex-diretor-da-petrobras-citou-politicos-que-receberam-propina-diz-revista.html\">acordo de dela&ccedil;&atilde;o premiada pelo qual teria apontado</a>&nbsp;deputados, senadores, governadores e um ministro como benefici&aacute;rios de um esquema de pagamento de propina com dinheiro de contratos da Petrobras. Ele foi preso em mar&ccedil;o durante a Opera&ccedil;&atilde;o Lava Jato, da Pol&iacute;cia Federal, que investiga um esquema de lavagem de dinheiro e evas&atilde;o de divisas. Se confirmadas as informa&ccedil;&otilde;es que der a policiais e procuradores com base na dela&ccedil;&atilde;o premiada, o ex-diretor poder&aacute; ter a pena reduzida.&nbsp;</p>\r\n\r\n<p>Durante quase tr&ecirc;s horas de depoimento &agrave; CPI mista da Petrobras, o ex-diretor da estatal Paulo Roberto Costa repetiu 18 vezes &ldquo;nada a declarar&rdquo; (ou frases equivalentes) e se recusou a responder a todos os questionamentos formulados pelos parlamentares da comiss&atilde;o. Por ordem da Justi&ccedil;a,&nbsp;<a href=\"http://g1.globo.com/politica/noticia/2014/09/ex-diretor-da-petrobras-chega-brasilia-para-depoimento-na-cpi.html\">ele foi trazido por policiais federais</a>&nbsp;de Curitiba, onde est&aacute; preso, para atender &agrave; convoca&ccedil;&atilde;o da CPI.</p>\r\n\r\n<p>Costa firmou com o Minist&eacute;rio P&uacute;blico do Paran&aacute; e com a Justi&ccedil;a Federal um&nbsp;<a href=\"http://g1.globo.com/politica/noticia/2014/09/ex-diretor-da-petrobras-citou-politicos-que-receberam-propina-diz-revista.html\">acordo de dela&ccedil;&atilde;o premiada pelo qual teria apontado</a>&nbsp;deputados, senadores, governadores e um ministro como benefici&aacute;rios de um esquema de pagamento de propina com dinheiro de contratos da Petrobras. Ele foi preso em mar&ccedil;o durante a Opera&ccedil;&atilde;o Lava Jato, da Pol&iacute;cia Federal, que investiga um esquema de lavagem de dinheiro e evas&atilde;o de divisas. Se confirmadas as informa&ccedil;&otilde;es que der a policiais e procuradores com base na dela&ccedil;&atilde;o premiada, o ex-diretor poder&aacute; ter a pena reduzida.</p>\r\n', 'n', 'n', '19/09/2014 15:02:18 - Eduardo Fagnoni');
INSERT INTO `_prod_depoimento` VALUES ('3', '3515220325-fa-de-crepusculo-se-casa-com-edward-feito-de-papelao-em-cerimonia-de-r-7-mil-1092692276.jpg', 'Edward S - NY', '<p>Com Paulo Roberto Costa em sil&ecirc;ncio, alguns parlamentares, principalmente da oposi&ccedil;&atilde;o, aproveitaram a sess&atilde;o para discursar e n&atilde;o dirigiram nenhuma pergunta ao ex-diretor.</p>\r\n\r\n<p>O deputado Simpl&iacute;cio Ara&uacute;jo (SD-MA) afirmou que Costa entrar&aacute; para a hist&oacute;ria como um &ldquo;covarde&rdquo;. &ldquo;O senhor est&aacute; aqui para proteger a sua rabichola. O senhor foi pego com a boca na botija e continua protegendo tudo o que aconteceu de errado na Petrobras com esse seu comportamento. O senhor &eacute; uma vergonha para sua fam&iacute;lia e para a sociedade brasileira&rdquo;, disse o parlamentar.</p>\r\n\r\n<p>O l&iacute;der do PDT, deputado &Ecirc;nio Bacci (RS), fez um &ldquo;apelo &agrave; consci&ecirc;ncia&rdquo; do ex-diretor para dar &ldquo;oportunidade ao povo brasileiro&rdquo; de ter conhecimento dos pol&iacute;ticos envolvidos no suposto esquema de corrup&ccedil;&atilde;o antes das elei&ccedil;&otilde;es de outubro. &quot;Eu temo que n&atilde;o tenhamos condi&ccedil;&otilde;es de mostrar ao Brasil os nomes de todos os envolvidos antes das elei&ccedil;&otilde;es&quot;, declarou o deputado Carlos Sampaio (PSDB-SP).</p>\r\n\r\n<p>O l&iacute;der do Solidariedade na C&acirc;mara, Fernando Francischini (PR), pediu que o depoente respondesse com &ldquo;sim&rdquo; ou &ldquo;n&atilde;o&rdquo; se tem desejo de &ldquo;passar a limpo&rdquo; as den&uacute;ncias que envolvem a Petrobras e se foi orientado a n&atilde;o contribuir com a comiss&atilde;o. A resposta se repetiu: &ldquo;nada a declarar&rdquo;.</p>\r\n\r\n<p>O deputado Izalci (PSDB-DF) culpou a presidente Dilma Rousseff pelo esc&acirc;ndalo na Petrobras. &ldquo;A presidente dizer que n&atilde;o sabia &eacute; ser conivente ou incompetente. Uma ex-ministra de Minas e Energia, presidente do Conselho de Administra&ccedil;&atilde;o [da Petrobras], respons&aacute;vel por tudo isso aqui, dizer que n&atilde;o sabia do desvio de bilh&otilde;es e bilh&otilde;es na Petrobras &eacute; muita incompet&ecirc;ncia e conveni&ecirc;ncia&rdquo;, disse.</p>\r\n', 'n', 'n', '19/09/2014 15:02:17 - Eduardo Fagnoni');
INSERT INTO `_prod_depoimento` VALUES ('4', 'dog-robot-thinkstock-158894647-617x416(1).jpg', 'LobÃ£o Lobo - RJ', '<p>&quot;O Supremo Tribunal Federal (STF) decidiu nesta quarta-feira (17) proibir a cobran&ccedil;a do Imposto sobre Circula&ccedil;&atilde;o de Mercadorias e Servi&ccedil;os (ICMS) pelo estado onde s&atilde;o recebidos produtos comprados pela internet ou por telefone, o chamado e-commerce. Para os ministros do tribunal, a decis&atilde;o evitar&aacute; que o consumidor pague mais devido a uma cobran&ccedil;a dupla do imposto.</p>\r\n\r\n<p>O ICMS &eacute; um imposto de compet&ecirc;ncia dos estados e do Distrito Federal. Pela Constitui&ccedil;&atilde;o, ele deve ser recolhido pelo estado de origem do produto comercializado. No entanto, uma regra do Conselho Nacional de Pol&iacute;tica Fazend&aacute;ria (Confaz), editada em 2011 e assinada neste ano por 17 estados e Distrito Federal, autoriza o estado de destino da mercadoria comprada de maneira n&atilde;o presencial a tamb&eacute;m receber o ICMS. Ou seja, o tributo, que j&aacute; era cobrado no estado de origem, passou a ser cobrado, tamb&eacute;m, no destino.</p>\r\n\r\n<p>Estados que apoiavam a regra, o chamado protocolo 21 do Confaz, alegaram que, como n&atilde;o sediavam centros de distribui&ccedil;&atilde;o do com&eacute;rcio eletr&ocirc;nico, teriam a arrecada&ccedil;&atilde;o prejudicada. Ao julgar uma A&ccedil;&atilde;o Direta de Inconstitucionalidade (Adin), os ministros do Supremo entenderam que a portaria viola a Constitui&ccedil;&atilde;o, pois n&atilde;o poderia alterar o modo de cobran&ccedil;a do imposto.&quot;</p>\r\n', 'n', 'n', '19/09/2014 15:02:16 - Eduardo Fagnoni');
INSERT INTO `_prod_depoimento` VALUES ('5', 'cachorro_feliz_sorrindo_portaldodog-11.jpg', 'Priscila Luca - RS', '<p>Em fevereiro deste ano, o relator da a&ccedil;&atilde;o que questiona a portaria, ministro Luiz Fux, concedeu liminar (decis&atilde;o provis&oacute;ria) proibindo a cobran&ccedil;a no estado de destino. O STF agora analisou o m&eacute;rito e manteve a posi&ccedil;&atilde;o de Fux.</p>\r\n\r\n<p>&quot;O protocolo foi feito com uma cara de pau incr&iacute;vel. Estabeleceram um protocolo e colocaram em segundo plano a Constitui&ccedil;&atilde;o&quot;, afirmou o ministro Marco Aur&eacute;lio Mello, ao acompanhar voto de Fux. A decis&atilde;o do Supremo afeta automaticamente todas as a&ccedil;&otilde;es sobre o tema que chegaram ao tribunal ap&oacute;s a liminar do relator, de 18 de fevereiro de 2014.</p>\r\n\r\n<p>Processos sobre a cobran&ccedil;a de ICMS em com&eacute;rcio eletr&ocirc;nico que chegaram antes da decis&atilde;o provis&oacute;ria de Fux ser&atilde;o analisados caso a caso pelos ministros do STF.</p>\r\n\r\n<p>Contra a decis&atilde;o do Supremo, poder&atilde;o ser apresentados os chamados &quot;embargos de declara&ccedil;&atilde;o&quot;, recursos que n&atilde;o podem rediscutir o m&eacute;rito, mas apenas esclarecer eventuais &quot;omiss&otilde;es&quot; e &quot;contradi&ccedil;&otilde;es&quot; do julgamento, o que dificilmente pode reverter a decis&atilde;o.</p>\r\n', 'n', 'n', '19/09/2014 15:02:15 - Eduardo Fagnoni');
INSERT INTO `_prod_depoimento` VALUES ('6', 'modelo-3429.jpg', 'Renatta Lemos Monte - SP', '<p>O Supremo Tribunal Federal (STF) decidiu nesta quarta-feira (17) proibir a cobran&ccedil;a do Imposto sobre Circula&ccedil;&atilde;o de Mercadorias e Servi&ccedil;os (ICMS) pelo estado onde s&atilde;o recebidos produtos comprados pela internet ou por telefone, o chamado e-commerce. Para os ministros do tribunal, a decis&atilde;o evitar&aacute; que o consumidor pague mais devido a uma cobran&ccedil;a dupla do imposto.</p>\r\n\r\n<p>O ICMS &eacute; um imposto de compet&ecirc;ncia dos estados e do Distrito Federal. Pela Constitui&ccedil;&atilde;o, ele deve ser recolhido pelo estado de origem do produto comercializado. No entanto, uma regra do Conselho Nacional de Pol&iacute;tica Fazend&aacute;ria (Confaz), editada em 2011 e assinada neste ano por 17 estados e Distrito Federal, autoriza o estado de destino da mercadoria comprada de maneira n&atilde;o presencial a tamb&eacute;m receber o ICMS. Ou seja, o tributo, que j&aacute; era cobrado no estado de origem, passou a ser cobrado, tamb&eacute;m, no destino.</p>\r\n\r\n<p>Estados que apoiavam a regra, o chamado protocolo 21 do Confaz, alegaram que, como n&atilde;o sediavam centros de distribui&ccedil;&atilde;o do com&eacute;rcio eletr&ocirc;nico, teriam a arrecada&ccedil;&atilde;o prejudicada. Ao julgar uma A&ccedil;&atilde;o Direta de Inconstitucionalidade (Adin), os ministros do Supremo entenderam que a portaria viola a Constitui&ccedil;&atilde;o, pois n&atilde;o poderia alterar o modo de cobran&ccedil;a do imposto.</p>\r\n', 'n', 'n', '19/09/2014 15:02:13 - Eduardo Fagnoni');
INSERT INTO `_prod_depoimento` VALUES ('7', '2.png', 'Roselene Taveira â€“ Aprovada no TRT15 â€“ Concurso 2013', '<p>Muito antes de existir um curso preparat&oacute;rio, existia um ser humano que auxiliava in&uacute;meros &ldquo;concurseiros&rdquo; nesta &aacute;rdua caminhada em busca da t&atilde;o sonhada aprova&ccedil;&atilde;o: Iuri! Creio que a cria&ccedil;&atilde;o deste curso apenas oficializa esse aux&iacute;lio e sem d&uacute;vida o aperfei&ccedil;oa.</p>\r\n\r\n<p>Jamais me esquecerei das in&uacute;meras discuss&otilde;es jur&iacute;dicas travadas no grupo de estudos AJT, nas quais se destacavam a erudi&ccedil;&atilde;o e solidariedade de Iuri, assim como das horas de estudo para o oral do TRT 15, ocasi&atilde;o na qual tive a honra de caminhar ao seu lado na reta final de aprova&ccedil;&atilde;o no concurso da Magistratura do Trabalho.</p>\r\n\r\n<p>E, por fim, n&atilde;o tenho palavras para expressar minha eterna gratid&atilde;o a Iuri e Ju pelo acompanhamento nas derradeiras vinte e quatro horas antes do exame oral. Porque num momento como esse parece que tudo se multiplica: os nossos medos, a nossa ignor&acirc;ncia, os nossos defeitos de postura, as nossas dificuldades de express&atilde;o, a desorganiza&ccedil;&atilde;o e a impossibilidade de controlar o tempo, Voc&ecirc;s estiveram l&aacute; e me mostraram que todos esses monstros poderiam ser mantidos a uma dist&acirc;ncia segura das minhas qualidades.</p>\r\n\r\n<p>Jamais esquecerei que voc&ecirc;s me fizeram lutar pelo meu ponto, do qual n&atilde;o gostei de imediato, e me mostraram que era o que eu tinha para provar porque cheguei at&eacute; ali. Tamb&eacute;m n&atilde;o me esquecerei da transmiss&atilde;o de conhecimento, da pizza crocante de chocolate, dos esquemas coloridos de Ju, da organiza&ccedil;&atilde;o do tempo,&nbsp; do companheirismo e solidariedade nessas t&atilde;o importantes horas da minha vida.</p>\r\n\r\n<p>Tenho certeza que muitos outros privilegiados ser&atilde;o acompanhados e orientados por voc&ecirc;, Iuri, e espero que sintam a alegria de desfrutar dessa companhia t&atilde;o dedicada nessa fase &iacute;mpar de suas vidas.</p>\r\n\r\n<p>Desejo a todos os idealizadores do Juslaboral muito sucesso nessa empreitada e que consigam concretizar os sonhos de seus alunos. A Iuri e Ju, minha eterna gratid&atilde;o e amizade. Voc&ecirc;s certamente estar&atilde;o guardados num canto muito especial de meu cora&ccedil;&atilde;o e de minhas recorda&ccedil;&otilde;es.</p>\r\n\r\n<p>A caminhada ainda &eacute; longa, mas com voc&ecirc;s por perto sempre ser&aacute; mais tranquila!</p>\r\n', 's', 's', '19/09/2014 12:39:14 - Eduardo Fagnoni');
INSERT INTO `_prod_depoimento` VALUES ('8', '3.png', 'Carlos Arthur de Macedo Figueiredo â€“ Aprovado no TRT3 â€“ Concurso 2013', '<p>&Eacute; com muito prazer que dou meu depoimento sobre a import&acirc;ncia da participa&ccedil;&atilde;o do Iuri na minha aprova&ccedil;&atilde;o, bem como sobre as expectativas relativas ao seu t&atilde;o esperado curso jur&iacute;dico voltado para a Magistratura Trabalhista - Juslaboral.</p>\r\n\r\n<p>Sou suspeito de falar, pois tenho o Iuri como um grande amigo, amizade esta que se iniciou no ano de 2012, justamente em uma sala de curso preparat&oacute;rio para a magistratura, quando o chamei, juntamente com outros amigos que ali estavam, para participar de um grupo de estudos, que at&eacute; hoje existe (AJT).</p>\r\n\r\n<p>Todos que t&ecirc;m ou tiveram o prazer de conviver com o Iuri sabem de sua intelig&ecirc;ncia e devo&ccedil;&atilde;o &agrave; magistratura trabalhista, mesmo antes de ser um Juiz do Trabalho, mas sua principal qualidade, que todos ser&atilde;o un&acirc;nimes em reconhecer, &eacute; o altru&iacute;smo. &Eacute; impressionante e muito gratificante saber que, nos dias de hoje, em que o individualismo e o ego&iacute;smo s&atilde;o a regra, existem pessoas com a preocupa&ccedil;&atilde;o de ajudar o pr&oacute;ximo, tendo isso como um ideal de vida. Lembro que eu e minha esposa coment&aacute;vamos que nunca t&iacute;nhamos conhecido uma pessoa assim, em refer&ecirc;ncia &agrave; bondade, sem qualquer interesse, que transbordava em suas atitudes.</p>\r\n\r\n<p>Considero-me um dos privilegiados que tiveram a oportunidade usufruir do seu acompanhamento para a prova oral da Magistratura Trabalhista, que cham&aacute;vamos de CAIP (Central de Acompanhamento Iuri Pinheiro), uma experi&ecirc;ncia inesquec&iacute;vel na minha vida, que, no meu caso, contou com o aux&iacute;lio presencial indispens&aacute;vel de nossa grande amiga Rose Taveira (CAIPRO), aprovada, juntamente com o Iuri, no concurso da Magistratura do Tribunal Regional do Trabalho de Campinas, a quem tamb&eacute;m devo gratid&atilde;o eterna pela minha aprova&ccedil;&atilde;o, sem deixar de mencionar a import&acirc;ncia dos grandes amigos do AJT que, com os debates di&aacute;rios, foram lapidando e ainda lapidam meus conhecimentos. N&atilde;o poderia deixar de mencionar a import&acirc;ncia da minha esposa e companheira Ana Luisa, aprovada no TRT da 19&ordf; Regi&atilde;o, em 2012, que sempre esteve ao meu lado nos momentos mais dif&iacute;ceis e importantes, trazendo uma palavra amiga e me mostrando a import&acirc;ncia de Deus e da f&eacute; nas nossas vidas, especialmente nesse concurso, que nos consome f&iacute;sica e psicologicamente, e que n&atilde;o p&ocirc;de me acompanhar nas 24 horas porque estava gr&aacute;vida de 8 meses do nosso Cauan.</p>\r\n\r\n<p>Fui aprovado em 2013, no concurso do Tribunal Regional do Trabalho da 3&ordf; Regi&atilde;o - Minas Gerais, e o Iuri e a Rose foram os respons&aacute;veis diretos pela minha aprova&ccedil;&atilde;o na prova oral, al&eacute;m de c&uacute;mplices das 24 horas mais intensas da minha vida!</p>\r\n\r\n<p>Lembro que, poucas semanas antes da minha prova, tinha ajudado o Iuri nas 24 horas da prova oral do Fernandinho (Fernando Gon&ccedil;alves), nosso amigo aprovado em 2013 no TRT/SP, e, ao presenciar a forma como o Iuri conduzia o acompanhamento, separando material, pesquisando jurisprud&ecirc;ncia, doutrina, elaborando perguntas, fazendo simulados, enfim, participando ativamente daquele processo de revis&atilde;o sum&aacute;ria e intensiva, tive a certeza de que era daquela forma que queria que fossem as minhas 24 horas, e, gra&ccedil;as a Deus, tive a oportunidade de compartilhar com ele esses momentos preciosos e essenciais da minha vida, da defini&ccedil;&atilde;o de uma jornada sofrida e, ao mesmo tempo, muito gratificante, enfim do fechamento de um ciclo maravilhoso, que consiste, finalmente, em passar na prova oral e ingressar na t&atilde;o sonhada carreira da Magistratura Trabalhista.</p>\r\n\r\n<p>O Iuri &eacute; aquele cara que &eacute; capaz de te dar uma quest&atilde;o da oral, minutos antes da argui&ccedil;&atilde;o. N&atilde;o desconsiderem nada do que ele diz! Aconteceu comigo no caf&eacute; da manh&atilde;, minutos antes da prova ele soprou exatamente uma pergunta feita pelo presidente da banca, lembro do al&iacute;vio que senti na hora da prova e da lembran&ccedil;a que me veio no momento da pergunta, foi fant&aacute;stico!</p>\r\n\r\n<p>Tenho certeza de que todos os felizes candidatos que tiveram e ter&atilde;o a oportunidade de usufruir do acompanhamento do Iuri, terminaram e terminar&atilde;o a jornada concursal convictos de que fizeram a escolha certa e &eacute; por isso que n&atilde;o poderia deixar de registrar minha felicidade com o Juslaboral, pois finalmente estou convicto de que teremos n&atilde;o apenas mais um curso preparat&oacute;rio para a Magistratura Trabalhista, mas uma equipe formada com o objetivo espec&iacute;fico de aprovar atendendo aos anseios dos candidatos, que mais do que uma simples aprova&ccedil;&atilde;o, est&atilde;o em busca da realiza&ccedil;&atilde;o de um sonho, e &eacute; justamente nesse ponto que temos que ficar atentos, pois somente a pessoas especiais podemos confiar nossos sonhos, e, certamente, o Iuri e a equipe do Juslaboral possuem os predicados e a capacidade necess&aacute;ria para torn&aacute;-lo realidade.</p>\r\n\r\n<p>Hoje em dia sou um homem feliz pela fam&iacute;lia e amigos que tenho, bem como um profissional realizado pelo cargo que ocupo, e gostaria de dizer, sinceramente, do fundo do cora&ccedil;&atilde;o, Iuri, que voc&ecirc;, primeiramente como amigo e um ser humano &uacute;nico, e, posteriormente, como um profissional e companheiro dedicado a minha aprova&ccedil;&atilde;o, fez e sempre far&aacute; parte dessa trajet&oacute;ria. Nunca me esquecerei do que voc&ecirc; fez por mim, da sua dedica&ccedil;&atilde;o, compromisso e preocupa&ccedil;&atilde;o. Tenho muito orgulho da sua amizade e tenha certeza de que todo o dia 14 de agosto lembrarei de voc&ecirc;, ao comemorar o anivers&aacute;rio do dia mais importante da minha vida profissional.</p>\r\n\r\n<p>Estarei sempre na torcida pelo seu sucesso e de todos que est&atilde;o ao seu lado. Muito obrigado por tudo meu amigo, grande abra&ccedil;o!</p>\r\n', 's', 's', '19/09/2014 12:42:37 - Eduardo Fagnoni');
INSERT INTO `_prod_depoimento` VALUES ('9', '1.png', 'Joana Sa de Alencar Tomaz â€“ Aprovada no TRT14 - Concurso 2013', '<p>Aos amigos concurseiros,</p>\r\n\r\n<p>Meu nome &eacute; Joana, fui aprovada no concurso para a Magistratura do Tribunal Regional do Trabalho da 14&ordf; Regi&atilde;o, tendo tomado posse no dia 30 de agosto de 2013. Meu itiner&aacute;rio como concurseira, n&atilde;o deve ter sido muito distinto da trajet&oacute;ria da maioria: trabalho, filhos, estudos, provas, e reprova&ccedil;&otilde;es, muitas reprova&ccedil;&otilde;es, especialmente na segunda fase, que para mim sempre foi a mais traum&aacute;tica.</p>\r\n\r\n<p>Foram quase dez reprova&ccedil;&otilde;es at&eacute; conseguir minha primeira aprova&ccedil;&atilde;o nesta dita fase. Era um verdadeiro tormento que parecia intranspon&iacute;vel. Fui aprovada na minha terceira prova de senten&ccedil;a, ap&oacute;s ter feito uma prova subjetiva que eu n&atilde;o tinha considerado boa, e que, por isso, estava sem nenhuma perspectiva de aprova&ccedil;&atilde;o. Quando saiu o resultado, eu n&atilde;o acreditava: tinha sido aprovada! E o desespero bateu! E agora, como estudar para a prova oral? Que cursos fazer? Como funciona?</p>\r\n\r\n<p>Sabia dos desafios para a prova oral. Seria (e foi) tudo muito dif&iacute;cil, muitas incertezas, ang&uacute;stias, inquieta&ccedil;&otilde;es, ansiedade. Nesse momento, contei com a ajuda indispens&aacute;vel do Iuri, que j&aacute; em 2013 possu&iacute;a vasta experi&ecirc;ncia em provas orais, pois j&aacute; tinha acompanhado outros concurseiros. Sempre que o desespero batia, costumava recorrer ao Iuri, que, sempre muito atencioso, me explicou minunciosamente como se dava essa fase, al&eacute;m de ter me fornecido material de estudo, orienta&ccedil;&otilde;es quanto &agrave; prepara&ccedil;&atilde;o, al&eacute;m de ter me acalmada e me enchido de confian&ccedil;a. Ainda assim tive a sorte e a ben&ccedil;&atilde;o de ter sido acompanhada por ele nas minhas 24 horas.</p>\r\n\r\n<p>Nas 24 horas que antecederam a prova, nunca vou me esquecer do Iuri, incans&aacute;vel, direcionando meu estudo, otimizando meu tempo, simulando perguntas e sanando d&uacute;vidas. Sem d&uacute;vidas, eu s&oacute; tenho a agradec&ecirc;-lo pela ajuda imprescind&iacute;vel para a realiza&ccedil;&atilde;o do meu sonho. Serei eternamente grata!</p>\r\n\r\n<p>Por fim, quero consignar que a op&ccedil;&atilde;o de estudar para concurso n&atilde;o pode ser encarada como um sacrif&iacute;cio, mas sim como uma escolha. E para se obter &ecirc;xito n&atilde;o existem f&oacute;rmulas, m&aacute;gicas e&nbsp; muito menos regras a serem seguidas. Conduto, deve haver foco constante, disciplina, compromisso, e for&ccedil;a de vontade ao extremo. Abra&ccedil;o a todos.</p>\r\n', 's', 's', '19/09/2014 12:42:38 - Eduardo Fagnoni');
INSERT INTO `_prod_depoimento` VALUES ('10', 'n', 'Gustavo Martins â€“ Aprovado no TRT22 â€“ Concurso 2014', '<p>Nada na vida acontece por acaso e, se aconteceu, Deus quis assim. Agrade&ccedil;o imensamente ao mestre-amigo Iuri Levenhagem por todo o apoio na minha trajet&oacute;ria &agrave; Magistratura do Trabalho (TRT 22&ordf; Regi&atilde;o).&nbsp;</p>\r\n', 'n', 's', '19/09/2014 15:19:33 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_prod_galeria`
-- ----------------------------
DROP TABLE IF EXISTS `_prod_galeria`;
CREATE TABLE `_prod_galeria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arquivo` varchar(255) DEFAULT 'n',
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _prod_galeria
-- ----------------------------
INSERT INTO `_prod_galeria` VALUES ('1', '10592835_682519705157056_6942065995329693071_n(1).jpg', 'n', '16/09/2014 20:18:24 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('2', '', 'n', '16/09/2014 20:34:21 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('3', '3(1).jpg', 'n', '18/09/2014 16:50:31 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('4', '2(2).jpg', 'n', '18/09/2014 16:50:31 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('5', '1(2).jpg', 'n', '18/09/2014 16:50:30 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('6', '2(1).jpg', 'n', '18/09/2014 16:50:30 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('7', '1(1).jpg', 'n', '18/09/2014 16:50:29 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('8', '1(3).jpg', 'n', '19/09/2014 17:02:35 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('9', '2(3).jpg', 'n', '19/09/2014 17:02:35 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('10', '1(4).jpg', 'n', '19/09/2014 17:02:34 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('11', '2(4).jpg', 'n', '19/09/2014 17:02:34 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('12', '3(2).jpg', 'n', '19/09/2014 17:02:33 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('13', 'Untitled1.jpg', 'n', '19/09/2014 17:02:32 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('14', '1(5).jpg', 'n', '19/09/2014 17:02:32 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('15', '1(6).jpg', 'n', '19/09/2014 17:02:32 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('16', '2(5).jpg', 'n', '19/09/2014 17:02:32 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('17', '3(3).jpg', 'n', '19/09/2014 17:02:31 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('18', '4(1).jpg', 'n', '19/09/2014 17:02:31 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('19', '6.jpg', 'n', '19/09/2014 17:02:30 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('20', '1(7).jpg', 'n', '19/09/2014 17:02:30 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('21', '2(6).jpg', 'n', '19/09/2014 17:02:30 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('22', '3(4).jpg', 'n', '19/09/2014 17:02:29 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('23', '4(2).jpg', 'n', '19/09/2014 17:02:29 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('24', '5(1).jpg', 'n', '19/09/2014 17:02:28 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('25', '6(1).jpg', 'n', '19/09/2014 17:02:28 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('26', '7.jpg', 'n', '19/09/2014 17:02:28 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('27', '8.jpg', 'n', '19/09/2014 17:02:27 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('28', '9.jpg', 'n', '19/09/2014 17:02:27 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('29', '10.jpg', 'n', '19/09/2014 17:02:27 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('30', '11.jpg', 'n', '19/09/2014 17:02:26 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('31', '12.jpg', 'n', '19/09/2014 17:02:26 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('32', '13.jpg', 'n', '19/09/2014 17:02:26 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('33', '14.jpg', 'n', '19/09/2014 17:02:25 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('34', '15.jpg', 'n', '19/09/2014 17:02:25 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('35', '16.jpg', 'n', '19/09/2014 17:02:25 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('36', '17.jpg', 'n', '19/09/2014 17:02:25 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('37', '18.jpg', 'n', '19/09/2014 17:02:24 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('38', '19.jpg', 'n', '19/09/2014 17:02:24 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('39', '20.jpg', 'n', '19/09/2014 17:02:24 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('40', '21.jpg', 'n', '19/09/2014 17:02:23 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('41', '22.jpg', 'n', '19/09/2014 17:02:23 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('42', '23.jpg', 'n', '19/09/2014 17:02:23 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('43', '24.jpg', 'n', '19/09/2014 17:02:22 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('44', '25.jpg', 'n', '19/09/2014 17:02:22 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('45', '26.jpg', 'n', '19/09/2014 17:02:22 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('46', '27.jpg', 'n', '19/09/2014 17:02:21 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('47', '28.jpg', 'n', '19/09/2014 17:02:21 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('48', '29.jpg', 'n', '19/09/2014 17:02:20 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('49', '30.jpg', 'n', '19/09/2014 17:02:20 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('50', '31.jpg', 'n', '19/09/2014 17:02:20 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('51', '32.jpg', 'n', '19/09/2014 17:02:19 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('52', '33.jpg', 'n', '19/09/2014 17:02:19 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('53', '34.jpg', 'n', '19/09/2014 17:02:18 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('54', '35.jpg', 'n', '19/09/2014 17:02:17 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('55', '36.jpg', 'n', '19/09/2014 17:02:16 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('56', '1(8).jpg', 'n', '19/09/2014 17:05:14 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('57', '1(9).jpg', 'n', '19/09/2014 17:14:36 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('58', '1(10).jpg', 's', '19/09/2014 17:14:44 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('59', '2(7).jpg', 's', '19/09/2014 17:30:03 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('60', '3(5).jpg', 's', '19/09/2014 17:30:11 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('61', '4(3).jpg', 's', '19/09/2014 17:30:16 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('62', '5(2).jpg', 's', '19/09/2014 17:30:21 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('63', '6(2).jpg', 's', '19/09/2014 17:30:26 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('64', '7(1).jpg', 's', '19/09/2014 17:30:31 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('65', '8(1).jpg', 's', '19/09/2014 17:30:36 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('66', '9(1).jpg', 's', '19/09/2014 17:30:41 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('67', '10(1).jpg', 's', '19/09/2014 17:30:47 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('68', '11(1).jpg', 's', '19/09/2014 17:30:51 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('69', '12(1).jpg', 's', '19/09/2014 17:30:55 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('70', '13(1).jpg', 's', '19/09/2014 17:30:59 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('71', '14(1).jpg', 's', '19/09/2014 17:31:04 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('72', '15(1).jpg', 's', '19/09/2014 17:31:09 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('73', '16(1).jpg', 's', '19/09/2014 17:31:18 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('74', '17(1).jpg', 's', '19/09/2014 17:31:26 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('75', '18(1).jpg', 's', '19/09/2014 17:31:33 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('76', '19(1).jpg', 's', '19/09/2014 17:31:39 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('77', '20(1).jpg', 's', '19/09/2014 17:31:47 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('78', '21(1).jpg', 's', '19/09/2014 17:31:56 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('79', '22(1).jpg', 's', '19/09/2014 17:32:03 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('80', '23(1).jpg', 's', '19/09/2014 17:32:09 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('81', '24(1).jpg', 's', '19/09/2014 17:32:16 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('82', '25(1).jpg', 's', '19/09/2014 17:32:21 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('83', '26(1).jpg', 's', '19/09/2014 17:32:28 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('84', '27(1).jpg', 's', '19/09/2014 17:33:02 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('85', '28(1).jpg', 'n', '23/09/2014 18:35:01 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('86', '29(1).jpg', 's', '19/09/2014 17:33:25 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('87', '30(1).jpg', 's', '19/09/2014 17:33:33 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('88', '31(1).jpg', 's', '19/09/2014 17:33:41 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('89', '32(1).jpg', 's', '19/09/2014 17:33:53 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('90', '33(1).jpg', 'n', '23/09/2014 18:34:56 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('91', '34(1).jpg', 'n', '23/09/2014 18:34:53 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('92', '35(1).jpg', 's', '19/09/2014 17:34:16 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('93', '36(1).jpg', 's', '19/09/2014 17:34:25 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('94', '37.jpg', 's', '19/09/2014 17:34:32 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('95', '38.jpg', 's', '19/09/2014 17:34:42 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('96', '39.jpg', 's', '19/09/2014 17:34:51 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('97', '40.jpg', 's', '19/09/2014 17:34:59 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('98', '41.jpg', 's', '19/09/2014 17:35:07 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('99', '42.jpg', 's', '19/09/2014 17:35:13 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('100', '43.jpg', 's', '19/09/2014 17:35:18 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('101', '44.jpg', 's', '19/09/2014 17:35:25 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('102', '45.jpg', 's', '19/09/2014 17:35:34 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('103', '46.jpg', 's', '19/09/2014 17:35:41 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('104', '47.jpg', 's', '19/09/2014 17:35:49 - Eduardo Fagnoni');
INSERT INTO `_prod_galeria` VALUES ('105', '48.jpg', 's', '19/09/2014 17:35:55 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_prod_noticia`
-- ----------------------------
DROP TABLE IF EXISTS `_prod_noticia`;
CREATE TABLE `_prod_noticia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `dia` varchar(255) DEFAULT NULL,
  `mes` varchar(255) DEFAULT NULL,
  `ano` varchar(255) DEFAULT NULL,
  `texto` longtext,
  `link` text,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _prod_noticia
-- ----------------------------
INSERT INTO `_prod_noticia` VALUES ('1', 'nome', '18/08/2014', '18', '08', '2014', '<p>adasd</p>\r\n', null, 'n', '16/09/2014 19:29:23 - Eduardo Fagnoni');
INSERT INTO `_prod_noticia` VALUES ('2', 'outro nome acentuaÃ§Ã£o', '16/9/2014', '16', '9', '2014', '<p>A Pol&iacute;cia Militar tamb&eacute;m deteve outras 89 pessoas que foram levadas para a delegacia para averigua&ccedil;&atilde;o e, em seguida, liberadas. Dentre elas, 80 eram da ocupa&ccedil;&atilde;o da Avenida S&atilde;o Jo&atilde;o.</p>\r\n\r\n<p>A advogada Juliana Avanci, da ONG Centro Gaspar Garcia de Direitos Humanos, que defende os invasores, disse que as 70 fam&iacute;lias que estavam no im&oacute;vel no momento da desapropria&ccedil;&atilde;o j&aacute; deixaram o local. Ao todo, 250 fam&iacute;lias invadiram o local em abril deste ano.</p>\r\n\r\n<p>&ldquo;As fam&iacute;lias foram abrigadas em outras ocupa&ccedil;&otilde;es, provisoriamente, na regi&atilde;o Central. Algumas ocupa&ccedil;&otilde;es se solidarizaram. N&atilde;o houve ali uma resposta da Prefeitura ou do governo do estado sobre a quest&atilde;o habitacional&rdquo;, disse. As fam&iacute;lias foram distribu&iacute;das em tr&ecirc;s ocupa&ccedil;&otilde;es do Centro.</p>\r\n\r\n<p>Segundo a defensora, as demais fam&iacute;lias estavam deixando o pr&eacute;dio desde a primeira tentativa de reintegra&ccedil;&atilde;o, h&aacute; 15 dias, e foram para casa de amigos e parentes. Os m&oacute;veis dos invasores foram levados para cinco dep&oacute;sitos pagos pelo propriet&aacute;rio do im&oacute;vel. Moradores, que deixaram o antigo hotel &agrave;s pressas, abandonaram roupas e sapatos.</p>\r\n', 'http://getbootstrap.com/', 'n', '9/19/2014 2:39:00 PM - Eduardo Fagnoni');
INSERT INTO `_prod_noticia` VALUES ('3', 'asdasd', '16/08/2014', '16', '08', '2014', '<p>asdasd</p>\r\n', null, 'n', '16/09/2014 19:29:22 - Eduardo Fagnoni');
INSERT INTO `_prod_noticia` VALUES ('4', 'asdasas', '20/05/2014', '20', '05', '2014', '<p>asdasd</p>\r\n', null, 'n', '16/09/2014 19:28:50 - Eduardo Fagnoni');
INSERT INTO `_prod_noticia` VALUES ('5', 'Airasd', '15/09/2014', '15', '09', '2014', '<p>A Pol&iacute;cia Militar tamb&eacute;m deteve outras 89 pessoas que foram levadas para a delegacia para averigua&ccedil;&atilde;o e, em seguida, liberadas. Dentre elas, 80 eram da ocupa&ccedil;&atilde;o da Avenida S&atilde;o Jo&atilde;o.</p>\r\n\r\n<p>A advogada Juliana Avanci, da ONG Centro Gaspar Garcia de Direitos Humanos, que defende os invasores, disse que as 70 fam&iacute;lias que estavam no im&oacute;vel no momento da desapropria&ccedil;&atilde;o j&aacute; deixaram o local. Ao todo, 250 fam&iacute;lias invadiram o local em abril deste ano.</p>\r\n\r\n<p>&ldquo;As fam&iacute;lias foram abrigadas em outras ocupa&ccedil;&otilde;es, provisoriamente, na regi&atilde;o Central. Algumas ocupa&ccedil;&otilde;es se solidarizaram. N&atilde;o houve ali uma resposta da Prefeitura ou do governo do estado sobre a quest&atilde;o habitacional&rdquo;, disse. As fam&iacute;lias foram distribu&iacute;das em tr&ecirc;s ocupa&ccedil;&otilde;es do Centro.</p>\r\n\r\n<p>Segundo a defensora, as demais fam&iacute;lias estavam deixando o pr&eacute;dio desde a primeira tentativa de reintegra&ccedil;&atilde;o, h&aacute; 15 dias, e foram para casa de amigos e parentes. Os m&oacute;veis dos invasores foram levados para cinco dep&oacute;sitos pagos pelo propriet&aacute;rio do im&oacute;vel. Moradores, que deixaram o antigo hotel &agrave;s pressas, abandonaram roupas e sapatos.</p>\r\n', null, 'n', '9/19/2014 2:39:01 PM - Eduardo Fagnoni');
INSERT INTO `_prod_noticia` VALUES ('6', 'SDC altera redaÃ§Ã£o da OJ nÂº 04 e cria Precedente Normativo nÂº 40', '19/9/2014', '19', 'setembro', '2014', '<p>Ata administrativa da Se&ccedil;&atilde;o Especializada em Diss&iacute;dios Coletivos (SDC) do TRT da 2&ordf; Regi&atilde;o, do &uacute;ltimo dia 3 de setembro, alterou a reda&ccedil;&atilde;o da Orienta&ccedil;&atilde;o Jurisprudencial (OJ) n&ordm; 04 e criou o Precedente Normativo (PN) n&ordm; 40, conforme publicado no Di&aacute;rio Oficial Eletr&ocirc;nico desta segunda-feira (15).</p>\r\n\r\n<p>A OJ n&ordm; 04, que versa sobre o diss&iacute;dio coletivo de greve, passou a ter nova reda&ccedil;&atilde;o, dispondo sobre o julgamento da abusividade da greve no caso de celebra&ccedil;&atilde;o de acordo judicial.</p>\r\n\r\n<p>J&aacute; o PN n&ordm; 40 foi criado para tratar da obriga&ccedil;&atilde;o do empregador em manter seguro de vida em favor dos empregados, para cobrir as hip&oacute;teses de morte ou invalidez permanente decorrentes de acidente de trabalho ou doen&ccedil;a ocupacional.</p>\r\n\r\n<p>Leia abaixo as &iacute;ntegras dos novos textos:</p>\r\n\r\n<p><strong>OJ n&ordm; 04 - DISS&Iacute;DIO COLETIVO DE GREVE. JULGAMENTO DA ABUSIVIDADE DE MOVIMENTO AP&Oacute;S A CELEBRA&Ccedil;&Atilde;O DE ACORDO JUDICIAL. &nbsp;(Reda&ccedil;&atilde;o alterada - Ata publicada no Doeletr&ocirc;nico de 15/09/2014)</strong>â€¨Celebrado acordo judicial nos autos do diss&iacute;dio coletivo de greve, com regramento sobre os efeitos da greve, prejudicado est&aacute; o julgamento quanto &agrave; sua abusividade, face &agrave; pacifica&ccedil;&atilde;o do conflito pela composi&ccedil;&atilde;o das partes, salvo se houver requerimento em sentido contr&aacute;rio ou versar a hip&oacute;tese sobre greve em atividade que alcance interesse p&uacute;blico.</p>\r\n\r\n<p><strong>PRECEDENTE NORMATIVO N&ordm; 40 - SEGURO DE VIDA. ACIDENTE DE TRABALHO E DOEN&Ccedil;A OCUPACIONAL. POSITIVO. &nbsp;(Inclu&iacute;do pela Ata publicada no Doeletr&ocirc;nico 15/09/2014) </strong>â€¨O empregador est&aacute; obrigado a constituir e manter seguro, n&atilde;o contribut&aacute;rio, em favor de seus empregados para as hip&oacute;teses de morte ou invalidez permanente decorrentes de acidente de trabalho ou doen&ccedil;a ocupacional, com capital segurado m&iacute;nimo equivalente a 25 (vinte e cinco) pisos normativos da categoria.</p>\r\n', 'http://www.trtsp.jus.br/indice-de-noticias-ultimas-noticias/18867-sdc-altera-redacao-da-oj-n-04-e-cria-precedente-normativo-n-40', 's', '19/09/2014 14:51:26 - Eduardo Fagnoni');
INSERT INTO `_prod_noticia` VALUES ('7', 'Falta de maioria absoluta impede TST de alterar jurisprudÃªncia sobre contribuiÃ§Ã£o assistencial', '19/9/2014', '19', 'setembro', '2014', '<p>Em sess&atilde;o extraordin&aacute;ria realizada nesta ter&ccedil;a-feira (19), o Pleno do Tribunal Superior do Trabalho colocou em vota&ccedil;&atilde;o proposta de altera&ccedil;&atilde;o da reda&ccedil;&atilde;o do <a href=\"http://brs02.tst.jus.br/cgi-bin/nph-brs?d=BLNK&amp;s1=119&amp;s2=bdpn.base.&amp;pg1=NUMS&amp;u=http://www.tst.gov.br/jurisprudencia/brs/nspit/nspitgen_un_pix.html&amp;p=1&amp;r=1&amp;f=G&amp;l=0\">Precedente Normativo 119</a> e o cancelamento da <a href=\"http://brs02.tst.jus.br/cgi-bin/nph-brs?d=BLNK&amp;s1=17&amp;s2=bddc.base.&amp;pg1=NUMS&amp;u=http://www.tst.gov.br/jurisprudencia/brs/nspit/nspitgen_un_pix.html&amp;p=1&amp;r=1&amp;f=G&amp;l=0\">Orienta&ccedil;&atilde;o Jurisprudencial 17</a> da Se&ccedil;&atilde;o Especializada em Diss&iacute;dios Coletivos (SDC), que tratam da contribui&ccedil;&atilde;o para entidades sindicais. A proposta foi aceita por 12 votos, contra 11 votos contr&aacute;rios. O <a href=\"http://aplicacao.tst.jus.br/dspace/handle/1939/1282\">Regimento Interno</a> do TST, por&eacute;m, exige, para a aprova&ccedil;&atilde;o, revis&atilde;o ou cancelamento de s&uacute;mula ou de precedente normativo, a aprova&ccedil;&atilde;o da maioria absoluta, ou seja, 14 votos. Por esse motivo, embora houvesse maioria a favor da mudan&ccedil;a, o Pleno declarou, regimentalmente, a manuten&ccedil;&atilde;o da reda&ccedil;&atilde;o atual do PN 119 e da vig&ecirc;ncia da OJ 17.</p>\r\n\r\n<p>Os dois verbetes consideram que a cobran&ccedil;a da chamada contribui&ccedil;&atilde;o assistencial de trabalhadores n&atilde;o sindicalizados viola o direito constitucional &agrave; livre associa&ccedil;&atilde;o e sindicaliza&ccedil;&atilde;o. H&aacute; anos as entidades sindicais v&ecirc;m trazendo ao TST sua preocupa&ccedil;&atilde;o com este entendimento e defendendo a contribui&ccedil;&atilde;o obrigat&oacute;ria, extensiva a todos os trabalhadores das categorias representadas pelos sindicatos. Sua principal alega&ccedil;&atilde;o &eacute; que as negocia&ccedil;&otilde;es e acordos coletivos beneficiam a todos, independentemente de filia&ccedil;&atilde;o.</p>\r\n\r\n<p>O tema foi encaminhado at&eacute; mesmo &agrave; Organiza&ccedil;&atilde;o Internacional do Trabalho (OIT). As centrais sindicais brasileiras apresentaram, em 2014, representa&ccedil;&atilde;o ao Conselho de Administra&ccedil;&atilde;o da OIT contra o TST e o Minist&eacute;rio P&uacute;blico do Trabalho, para que o organismo intervenha, como mediadora, para que o TST reveja sua jurisprud&ecirc;ncia.</p>\r\n\r\n<p>O ministro Levenhagen, que j&aacute; se declarou favor&aacute;vel &agrave; altera&ccedil;&atilde;o, tem recebido, desde que assumiu a Presid&ecirc;ncia do TST, em mar&ccedil;o, diversas manifesta&ccedil;&otilde;es das entidades sindicais e, por isso, tomou a iniciativa de encaminhar a proposta. &quot;Foram in&uacute;meras visitas de sindicalistas&quot;, afirmou Levenhagen. &quot;Na &uacute;ltima delas, h&aacute; cerca de duas semanas, compareceram as cinco centrais sindicais&quot;.</p>\r\n\r\n<p><strong>Regimento Interno</strong></p>\r\n\r\n<p>O texto encaminhado &agrave; Comiss&atilde;o de Jurisprud&ecirc;ncia, subscrito por 14 dos 27 ministros do TST (atualmente 26, pois uma vaga aguarda nomea&ccedil;&atilde;o), propunha que a reda&ccedil;&atilde;o do PN 119 fosse alterada para prever a extens&atilde;o da contribui&ccedil;&atilde;o sindical a n&atilde;o associados mediante acordo coletivo, tendo o trabalhador 20 dias para manifestar formalmente sua recusa. Quanto &agrave; OJ 17, a proposta era o cancelamento.</p>\r\n\r\n<p>O parecer da Comiss&atilde;o de Jurisprud&ecirc;ncia foi no sentido de cancelar os dois verbetes, &quot;a fim de permitir &agrave; Corte reanalisar amplamente as quest&otilde;es referentes &agrave; contribui&ccedil;&atilde;o assistencial, devendo o direito de oposi&ccedil;&atilde;o e a forma de cobran&ccedil;a serem consolidados em momento futuro, ap&oacute;s a cataloga&ccedil;&atilde;o dos necess&aacute;rios precedentes, nos termos das normas regimentais&quot;.</p>\r\n\r\n<p>Na sess&atilde;o de ontem, participaram 23 ministros. Como 12 votaram a favor da mudan&ccedil;a e 11 contra, n&atilde;o houve maioria absoluta, como prev&ecirc; o artigo 62, par&aacute;grafo 1&ordm;, inciso IV do Regimento Interno. Assim, embora tenha recebido ades&atilde;o majorit&aacute;ria dos ministros, a proposta n&atilde;o p&ocirc;de ser implementada.</p>\r\n\r\n<p>(Carmem Feij&oacute;)</p>\r\n', 'http://www.tst.jus.br/noticias/-/asset_publisher/89Dk/content/falta-de-maioria-absoluta-impede-tst-de-alterar-jurisprudencia-sobre-contribuicao-assistencial', 's', '19/09/2014 14:52:12 - Eduardo Fagnoni');
INSERT INTO `_prod_noticia` VALUES ('8', 'TRT2 - 3Âª Turma: Ã‰ da justiÃ§a do trabalho a competÃªncia para julgar autorizaÃ§Ã£o de trabalho para menores de 16 anos', '19/9/2014', '19', 'setembro', '2014', '<p>Em decis&atilde;o hist&oacute;rica, proferida nessa ter&ccedil;a-feira (10), os magistrados da 3&ordf; Turma do Tribunal Regional do Trabalho da 2&ordf; Regi&atilde;o concordaram em dar provimento ao recurso ordin&aacute;rio interposto pelo Minist&eacute;rio P&uacute;blico do Trabalho para declarar a compet&ecirc;ncia da justi&ccedil;a do trabalho para aprecia&ccedil;&atilde;o de pedido de autoriza&ccedil;&atilde;o de trabalho de menores de dezesseis anos.</p>\r\n\r\n<p>Na origem, a autora, Centro Mix Mixagens e Produ&ccedil;&otilde;es Art&iacute;sticas Ltda. EPP, solicitara autoriza&ccedil;&atilde;o para que os menores relacionados na inicial pudessem realizar servi&ccedil;os de dublagem, visto que n&atilde;o estariam na condi&ccedil;&atilde;o de aprendizes. Por&eacute;m, a senten&ccedil;a da julgadora da 63&ordf; Vara Trabalhista apontou a incompet&ecirc;ncia desta justi&ccedil;a especializada e determinou a remessa dos autos &agrave; justi&ccedil;a estadual comum para posterior distribui&ccedil;&atilde;o a uma das Varas da Inf&acirc;ncia e Juventude.</p>\r\n\r\n<p>Em sua apela&ccedil;&atilde;o, o Minist&eacute;rio P&uacute;blico do Trabalho acusou a nulidade do julgamento em raz&atilde;o do feito discutir interesse de crian&ccedil;as e adolescentes sem que tenha havido a obrigat&oacute;ria interven&ccedil;&atilde;o do &oacute;rg&atilde;o, conforme determina o artigo 82 do C&oacute;digo de Processo Civil, em seu inciso I.</p>\r\n\r\n<p>A relatora, desembargadora Rosana de Almeida Buono, salientou que &quot;a quest&atilde;o do trabalho infantil se transformou em um problema latente na sociedade moderna, mormente na brasileira, motivo pelo qual o Estado n&atilde;o pode permanecer inerte e indiferente &agrave; sua gravidade&quot;, afirmou.</p>\r\n\r\n<p>A magistrada enfatizou ainda que a reda&ccedil;&atilde;o do artigo 406 da CLT, que atribui ao juiz da vara da inf&acirc;ncia e juventude a responsabilidade para autorizar o trabalho do menor, n&atilde;o se sobrep&otilde;e &agrave; norma disposta no artigo 114, inciso I, da Constitui&ccedil;&atilde;o Federal, alterado pela Emenda Constitucional 45/2004, na qual ficou fixada a compet&ecirc;ncia da Justi&ccedil;a do Trabalho para processar e julgar causas oriundas das rela&ccedil;&otilde;es de trabalho.</p>\r\n\r\n<p>Refor&ccedil;ando sua convic&ccedil;&atilde;o, Rosana de Almeida Buono lembrou que em maio de 2012 o presidente do TST/CSJT instituiu, no &acirc;mbito da Justi&ccedil;a do Trabalho, uma comiss&atilde;o permanente visando a erradica&ccedil;&atilde;o do trabalho infantil. E o TRT-2, atrav&eacute;s da portaria GP 34/2013, criou a comiss&atilde;o de erradica&ccedil;&atilde;o do trabalho infantil e prote&ccedil;&atilde;o do trabalho do adolescente e, por meio do Ato GP 19/2013, criou, ainda, o ju&iacute;zo auxiliar da inf&acirc;ncia e juventude da Justi&ccedil;a do Trabalho, com a atribui&ccedil;&atilde;o de apreciar os pedidos de autoriza&ccedil;&atilde;o para trabalho infantil.</p>\r\n\r\n<p>Ante o exposto, os magistrados da 3&ordf; Turma do Tribunal Regional do Trabalho da 2&ordf; Regi&atilde;o acordaram dar provimento ao recurso ordin&aacute;rio interposto pelo Minist&eacute;rio P&uacute;blico do Trabalho para declarar a compet&ecirc;ncia desta Justi&ccedil;a Especializada para aprecia&ccedil;&atilde;o de pedido de autoriza&ccedil;&atilde;o de trabalho de menores de dezesseis anos, bem como a nulidade do feito a partir da fl.178, determinando o retorno dos autos &agrave; origem, a fim de que seja dada vista dos autos ao Minist&eacute;rio P&uacute;blico do Trabalho para sua manifesta&ccedil;&atilde;o de direito, quando ent&atilde;o dever&aacute; ser proferida decis&atilde;o atinente.</p>\r\n\r\n<p>(Processo TRT/SP n&ordm; 00017544920135020063)</p>\r\n', 'http://www.trtsp.jus.br/indice-de-noticias-noticias-juridicas/18240-3-turma-e-da-justica-do-trabalho-a-competencia-para-julgar-autorizacao-de-trabalho-para-menores-de-16-anos', 's', '19/09/2014 14:52:56 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_prod_primeira_fase`
-- ----------------------------
DROP TABLE IF EXISTS `_prod_primeira_fase`;
CREATE TABLE `_prod_primeira_fase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _prod_primeira_fase
-- ----------------------------
INSERT INTO `_prod_primeira_fase` VALUES ('1', 'TRT - 1Âª RegiÃ£o - Rio de Janeiro (1Âª FASE)', 'n', '19/09/2014 16:09:57 - Eduardo Fagnoni');
INSERT INTO `_prod_primeira_fase` VALUES ('2', 'teste 2', 'n', '19/09/2014 16:09:56 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_prod_segunda_fase`
-- ----------------------------
DROP TABLE IF EXISTS `_prod_segunda_fase`;
CREATE TABLE `_prod_segunda_fase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _prod_segunda_fase
-- ----------------------------
INSERT INTO `_prod_segunda_fase` VALUES ('1', '2 fase', 'n', '19/09/2014 16:10:10 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_prod_terceira_fase`
-- ----------------------------
DROP TABLE IF EXISTS `_prod_terceira_fase`;
CREATE TABLE `_prod_terceira_fase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `ativo` varchar(255) DEFAULT 's',
  `ultima_alteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _prod_terceira_fase
-- ----------------------------
INSERT INTO `_prod_terceira_fase` VALUES ('1', '3 fase', 'n', '19/09/2014 16:10:14 - Eduardo Fagnoni');

-- ----------------------------
-- Table structure for `_prod_usuarios`
-- ----------------------------
DROP TABLE IF EXISTS `_prod_usuarios`;
CREATE TABLE `_prod_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `nivel` varchar(255) DEFAULT NULL,
  `variavel_1` varchar(255) DEFAULT NULL,
  `variavel_2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _prod_usuarios
-- ----------------------------
INSERT INTO `_prod_usuarios` VALUES ('10', 'Eduardo Fagnoni', 'admin', 'spt12306', '1', null, null);
INSERT INTO `_prod_usuarios` VALUES ('11', 'teste', 'teste', 'spt12306', '2', null, null);
INSERT INTO `_prod_usuarios` VALUES ('12', 'admin', 'admin', 'jus4263lab', '1', null, null);
