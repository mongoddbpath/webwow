/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : web

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-06-21 14:16:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for classone
-- ----------------------------
DROP TABLE IF EXISTS `classone`;
CREATE TABLE `classone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(20) DEFAULT NULL,
  `xh` char(10) DEFAULT NULL,
  `xm` varchar(15) DEFAULT NULL,
  `gender` enum('男','女') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classone
-- ----------------------------
INSERT INTO `classone` VALUES ('1', '13级计科技术1班', '1308092019', '宋兆伦', '男');
INSERT INTO `classone` VALUES ('2', '13级网络工程2班', '1308093082', '丁经宇', '男');
INSERT INTO `classone` VALUES ('3', '14级网络工程2班', '1308093098', '全亚青', '男');
INSERT INTO `classone` VALUES ('4', '13级网络工程2班', '1308093119', '刘月楼', '男');
INSERT INTO `classone` VALUES ('5', '14级网络工程2班', '1407012012', '乐晓通', '男');
INSERT INTO `classone` VALUES ('6', '14级网络工程1班', '1407012015', '李健', '男');
INSERT INTO `classone` VALUES ('7', '14级网络工程1班', '1408093002', '陈彩金', '女');
INSERT INTO `classone` VALUES ('8', '14级网络工程1班', '1408093005', '陈澍', '男');
INSERT INTO `classone` VALUES ('9', '14级网络工程1班', '1408093007', '陈云', '女');
INSERT INTO `classone` VALUES ('10', '14级网络工程1班', '1408093010', '丁殷明', '男');
INSERT INTO `classone` VALUES ('11', '14级网络工程1班', '1408093011', '董文浩', '男');
INSERT INTO `classone` VALUES ('12', '14级网络工程1班', '1408093018', '侯瑜婷', '女');
INSERT INTO `classone` VALUES ('13', '14级网络工程1班', '1408093020', '黄家赟', '男');
INSERT INTO `classone` VALUES ('14', '14级网络工程1班', '1408093027', '李肇勇', '男');
INSERT INTO `classone` VALUES ('15', '14级网络工程1班', '1408093028', '梁安迪', '男');
INSERT INTO `classone` VALUES ('16', '14级网络工程1班', '1408093029', '廖容菲', '女');
INSERT INTO `classone` VALUES ('17', '14级网络工程1班', '1408093032', '刘辉', '男');
INSERT INTO `classone` VALUES ('18', '14级网络工程1班', '1408093035', '刘家清', '男');
INSERT INTO `classone` VALUES ('19', '14级网络工程1班', '1408093038', '刘异', '男');
INSERT INTO `classone` VALUES ('20', '14级网络工程1班', '1408093041', '欧阳旭凯', '男');
INSERT INTO `classone` VALUES ('21', '14级网络工程2班', '1408093045', '彭诚', '男');
INSERT INTO `classone` VALUES ('22', '14级网络工程2班', '1408093052', '田美', '女');
INSERT INTO `classone` VALUES ('23', '14级网络工程2班', '1408093053', '田莎莎', '女');
INSERT INTO `classone` VALUES ('24', '14级网络工程2班', '1408093055', '汪磊', '男');
INSERT INTO `classone` VALUES ('25', '14级网络工程2班', '1408093056', '王瑞', '女');
INSERT INTO `classone` VALUES ('26', '14级网络工程2班', '1408093058', '王勇平', '男');
INSERT INTO `classone` VALUES ('27', '14级网络工程2班', '1408093060', '魏瑞', '男');
INSERT INTO `classone` VALUES ('28', '14级网络工程2班', '1408093063', '肖胜强', '男');
INSERT INTO `classone` VALUES ('29', '14级网络工程2班', '1408093064', '谢华政', '男');
INSERT INTO `classone` VALUES ('30', '14级网络工程2班', '1408093065', '谢蓉蓉', '女');
INSERT INTO `classone` VALUES ('31', '14级网络工程2班', '1408093067', '徐睿', '男');
INSERT INTO `classone` VALUES ('32', '14级网络工程2班', '1408093069', '薛明', '男');
INSERT INTO `classone` VALUES ('33', '14级网络工程2班', '1408093070', '杨航', '男');
INSERT INTO `classone` VALUES ('34', '14级网络工程2班', '1408093072', '易海溶', '女');
INSERT INTO `classone` VALUES ('35', '14级网络工程2班', '1408093074', '张晨晨', '女');
INSERT INTO `classone` VALUES ('36', '14级网络工程2班', '1408093075', '张瑞旸', '女');
INSERT INTO `classone` VALUES ('37', '14级网络工程2班', '1408093081', '钟林生', '男');
INSERT INTO `classone` VALUES ('38', '14级网络工程2班', '1408093085', '邹娜', '女');
INSERT INTO `classone` VALUES ('85', '14级网络工程1班', '1408096226', '我爱抹茶', '女');
INSERT INTO `classone` VALUES ('87', '14级网络工程1班', '1408093666', '墨荷', '女');
INSERT INTO `classone` VALUES ('170', '14级网络工程1班', '1616161688', '盘龙', '男');
INSERT INTO `classone` VALUES ('188', '14级网络工程1班', '1258635989', '狐妖小红娘', '女');
INSERT INTO `classone` VALUES ('189', '14级网络工程1班', '1234567899', '小蛮', '男');
INSERT INTO `classone` VALUES ('194', '14级网络工程1班', '1408092662', '小凡', '男');

-- ----------------------------
-- Table structure for liuyan
-- ----------------------------
DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE `liuyan` (
  `xh` char(10) DEFAULT NULL,
  `xm` varchar(16) DEFAULT NULL,
  `liuyan` varchar(255) DEFAULT NULL,
  `timenow` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of liuyan
-- ----------------------------
INSERT INTO `liuyan` VALUES ('1408093366', '抹茶(已匿名)', '时间戳测试25', '2017-03-17 17:23:58');
INSERT INTO `liuyan` VALUES ('1408093366', '抹茶(已匿名)', '时间戳测试26', '2017-03-17 17:24:06');
INSERT INTO `liuyan` VALUES ('1408093366', '抹茶(已匿名)', '时间戳测试27', '2017-03-17 17:24:13');
INSERT INTO `liuyan` VALUES ('1408093366', '墨荷(已匿名)', '时间戳测试26', '2017-03-17 17:32:26');
INSERT INTO `liuyan` VALUES ('1408093366', '墨荷(已匿名)', '时间戳测试26', '2017-03-17 17:32:54');
INSERT INTO `liuyan` VALUES ('1408093366', '墨荷(已匿名)', '时间戳测试27', '2017-03-17 17:32:59');
INSERT INTO `liuyan` VALUES ('1408093366', '墨荷(已匿名)', '时间戳测试28', '2017-03-17 17:33:03');
INSERT INTO `liuyan` VALUES ('1408093366', '白云(已匿名)', '瀑布流概念：又称瀑布流式布局，是比较流行的一种网站页面布局方式。视觉表现为参差不齐的多栏布局，最早采用此布局的是网站是Pinterest，后逐渐在国内流行。\n\n \n\n         瀑布流原理：页面容器内的多个高度不固定的div之间按照一定的间隔参差不齐的无序浮动，鼠标滚动时不断在容器内的尾部加载数据，且自动加载到空缺位置，不断循环。', '2017-03-17 17:36:54');
INSERT INTO `liuyan` VALUES ('1408093366', 'Amy(已匿名)', 'SQL，指结构化查询语言，全称是 Structured Query Language。\n    SQL 让您可以访问和处理数据库。\n    SQL 是一种 ANSI（American National Standards Institute 美国国家标准化组织）标准的计算机语言。', '2017-03-17 17:38:43');
INSERT INTO `liuyan` VALUES ('1408093366', '抹茶(已匿名)', '1.get是从服务器上获取数据,post是向服务器传送数据.2.get是把参数数据队列加到提交表单的ACTION属性所指的URL中,值和表单内各个字段一一对应,在URL中可以看到.post是通过HTTPpost机制,将表单内各个字段与其内容放置在HTMLHEADER内一起传送到ACTION属性所指的URL地址.用户看不到这个过程.3.对于get方式,服务器端用Request.QueryString获取变量的值,对于post方式,服务器端用Request.Form获取提交的数据.4.get传送的数据量较小,', '2017-03-17 18:29:11');
INSERT INTO `liuyan` VALUES ('1408093366', '墨荷(已匿名)', 'JSP全名为Java Server Pages，中文名叫java服务器页面，其根本是一个简化的Servlet设计，它[1]  是由Sun Microsystems公司倡导、许多公司参与一起建立的一种动态网页技术标准。JSP技术有点类似ASP技术，它是在传统的网页HTML（标准通用标记语言的子集）文件(*.htm,*.html)中插入Java程序段(Scriptlet)和JSP标记(tag)，从而形成JSP文件，后缀名为(*.jsp)。 用JSP开发的Web应用是跨平台的，既能在Linux下运行，也能在其他', '2017-03-17 18:35:12');
INSERT INTO `liuyan` VALUES ('1408093366', '安迪', 'Vue.js（读音 /vjuː/, 类似于 view） 是一套构建用户界面的渐进式框架。\n\nVue 只关注视图层， 采用自底向上增量开发的设计。\n\nVue 的目标是通过尽可能简单的 API 实现响应的数据绑定和组合的视图组件。\n\nVue 学习起来非常简单，本教程基于 Vue 2.1.8 版本测试。', '2017-03-19 11:48:30');
INSERT INTO `liuyan` VALUES ('1408093366', 'Amy(已匿名)', '简单的说 Node.js 就是运行在服务端的 JavaScript。\n\nNode.js 是一个基于Chrome JavaScript 运行时建立的一个平台。\n\nNode.js是一个事件驱动I/O服务端JavaScript环境，基于Google的V8引擎，V8引擎执行Javascript的速度非常快，性能非常好。', '2017-03-19 18:32:22');
INSERT INTO `liuyan` VALUES ('1408093028', '墨荷(已匿名)', 'Layui 是一款采用自身模块规范编写的国产前端UI框架，遵循原生HTML/CSS/JS的书写与组织形式，门槛极低，拿来即用。其外在极简，却又不失饱满的内在，体积轻盈，组件丰盈，从核心代码到API的每一处细节都经过精心雕琢，非常适合界面的快速开发。', '2017-03-19 21:54:10');
INSERT INTO `liuyan` VALUES ('1408093028', '墨荷(已匿名)', 'Layui 是一款采用自身模块规范编写的国产前端UI框架，遵循原生HTML/CSS/JS的书写与组织形式，门槛极低，拿来即用。其外在极简，却又不失饱满的内在，体积轻盈，组件丰盈，从核心代码到API的每一处细节都经过精心雕琢，非常适合界面的快速开发。', '2017-03-19 21:54:16');
INSERT INTO `liuyan` VALUES ('1408093028', '墨荷(已匿名)', 'Layui 是一款采用自身模块规范编写的国产前端UI框架，遵循原生HTML/CSS/JS的书写与组织形式，门槛极低，拿来即用。其外在极简，却又不失饱满的内在，体积轻盈，组件丰盈，从核心代码到API的每一处细节都经过精心雕琢，非常适合界面的快速开发。', '2017-03-19 21:54:17');
INSERT INTO `liuyan` VALUES ('1408093028', '墨荷(已匿名)', 'Layui 是一款采用自身模块规范编写的国产前端UI框架，遵循原生HTML/CSS/JS的书写与组织形式，门槛极低，拿来即用。其外在极简，却又不失饱满的内在，体积轻盈，组件丰盈，从核心代码到API的每一处细节都经过精心雕琢，非常适合界面的快速开发。', '2017-03-19 21:54:18');
INSERT INTO `liuyan` VALUES ('1408093028', '墨荷(已匿名)', 'Layui 是一款采用自身模块规范编写的国产前端UI框架，遵循原生HTML/CSS/JS的书写与组织形式，门槛极低，拿来即用。其外在极简，却又不失饱满的内在，体积轻盈，组件丰盈，从核心代码到API的每一处细节都经过精心雕琢，非常适合界面的快速开发。', '2017-03-19 21:54:18');
INSERT INTO `liuyan` VALUES ('1408093028', '墨荷(已匿名)', 'Layui 是一款采用自身模块规范编写的国产前端UI框架，遵循原生HTML/CSS/JS的书写与组织形式，门槛极低，拿来即用。其外在极简，却又不失饱满的内在，体积轻盈，组件丰盈，从核心代码到API的每一处细节都经过精心雕琢，非常适合界面的快速开发。', '2017-03-19 21:54:18');
INSERT INTO `liuyan` VALUES ('1408093028', '墨荷(已匿名)', 'Layui 是一款采用自身模块规范编写的国产前端UI框架，遵循原生HTML/CSS/JS的书写与组织形式，门槛极低，拿来即用。其外在极简，却又不失饱满的内在，体积轻盈，组件丰盈，从核心代码到API的每一处细节都经过精心雕琢，非常适合界面的快速开发。', '2017-03-19 21:54:18');
INSERT INTO `liuyan` VALUES ('1408093028', '墨荷(已匿名)', 'Layui 是一款采用自身模块规范编写的国产前端UI框架，遵循原生HTML/CSS/JS的书写与组织形式，门槛极低，拿来即用。其外在极简，却又不失饱满的内在，体积轻盈，组件丰盈，从核心代码到API的每一处细节都经过精心雕琢，非常适合界面的快速开发。', '2017-03-19 21:54:19');
INSERT INTO `liuyan` VALUES ('1408093028', '墨荷(已匿名)', 'Layui 是一款采用自身模块规范编写的国产前端UI框架，遵循原生HTML/CSS/JS的书写与组织形式，门槛极低，拿来即用。其外在极简，却又不失饱满的内在，体积轻盈，组件丰盈，从核心代码到API的每一处细节都经过精心雕琢，非常适合界面的快速开发。', '2017-03-19 21:54:21');
INSERT INTO `liuyan` VALUES ('1408093028', '墨荷(已匿名)', 'Layui 是一款采用自身模块规范编写的国产前端UI框架，遵循原生HTML/CSS/JS的书写与组织形式，门槛极低，拿来即用。其外在极简，却又不失饱满的内在，体积轻盈，组件丰盈，从核心代码到API的每一处细节都经过精心雕琢，非常适合界面的快速开发。', '2017-03-19 21:54:21');
INSERT INTO `liuyan` VALUES ('1408093028', '墨荷(已匿名)', 'Layui 是一款采用自身模块规范编写的国产前端UI框架，遵循原生HTML/CSS/JS的书写与组织形式，门槛极低，拿来即用。其外在极简，却又不失饱满的内在，体积轻盈，组件丰盈，从核心代码到API的每一处细节都经过精心雕琢，非常适合界面的快速开发。', '2017-03-19 21:54:21');
INSERT INTO `liuyan` VALUES ('1408093366', 'Amy(已匿名)', 'Layui 是一款采用自身模块规范编写的国产前端UI框架，遵循原生HTML/CSS/JS的书写与组织形式，门槛极低，拿来即用。其外在极简，却又不失饱满的内在，体积轻盈，组件丰盈，从核心代码到API的每一处细节都经过精心雕琢，非常适合界面的快速开发。', '2017-03-19 21:55:26');
INSERT INTO `liuyan` VALUES ('1408093366', 'Amy(已匿名)', 'Layui 是一款采用自身模块规范编写的国产前端UI框架，遵循原生HTML/CSS/JS的书写与组织形式，门槛极低，拿来即用。其外在极简，却又不失饱满的内在，体积轻盈，组件丰盈，从核心代码到API的每一处细节都经过精心雕琢，非常适合界面的快速开发。', '2017-03-19 21:58:01');
INSERT INTO `liuyan` VALUES ('1408093028', '墨荷(已匿名)', 'Layui 是一款采用自身模块规范编写的国产前端UI框架，遵循原生HTML/CSS/JS的书写与组织形式，门槛极低，拿来即用。其外在极简，却又不失饱满的内在，体积轻盈，组件丰盈，从核心代码到API的每一处细节都经过精心雕琢，非常适合界面的快速开发。', '2017-03-19 21:59:05');
INSERT INTO `liuyan` VALUES ('1408093028', '墨荷(已匿名)', 'Layui 是一款采用自身模块规范编写的国产前端UI框架，遵循原生HTML/CSS/JS的书写与组织形式，门槛极低，拿来即用。其外在极简，却又不失饱满的内在，体积轻盈，组件丰盈，从核心代码到API的每一处细节都经过精心雕琢，非常适合界面的快速开发。', '2017-03-19 22:02:33');
INSERT INTO `liuyan` VALUES ('1408093366', '抹茶(已匿名)', '准确地说，她更多是为服务端程序员量身定做，你无需涉足各种前端工具的复杂配置，只需面对浏览器本身，让一切你所需要的元素与交互、从这里信手拈来。', '2017-03-19 22:03:32');
INSERT INTO `liuyan` VALUES ('1408093029', '廖容菲', 'MySQL Dolphin（我方徽标）的名称为“Sakila”，它是由MySQL AB公司的创办人从用户在“Dolphin命名”比赛中提供的众多建议中选定的。该名称是由来自非洲斯威士兰的开放源码软件开发人Ambrose Twebaze提出的。根据Ambrose的说法，按斯威士兰的本地语言，女性化名称Sakila源自SiSwati。Sakila也是坦桑尼亚、Arusha地区的一个镇的镇名，靠近Ambrose的母国乌干达。', '2017-03-27 19:52:11');
INSERT INTO `liuyan` VALUES ('1408093028', '梁安迪', 'localStorage 属性允许你访问一个 local Storage 对象。localStorage 与 sessionStorage 相似。不同之处在于，存储在 localStorage 里面的数据没有过期时间（expiration time），而存储在 sessionStorage 里面的数据会在浏览器会话（browsing session）结束时被清除，即浏览器关闭时。\n\n应该注意的是，无论是 localStorage 还是 sessionStorage 中保存的数据都仅限于该页面的协议。', '2017-03-28 13:11:56');
INSERT INTO `liuyan` VALUES ('1408093028', '梁安迪', '在HTML5中，新加入了一个localStorage特性，这个特性主要是用来作为本地存储来使用的，解决了cookie存储空间不足的问题(cookie中每条cookie的存储空间为4k)，localStorage中一般浏览器支持的是5M大小，这个在不同的浏览器中localStorage会有所不同。', '2017-03-28 13:14:05');
INSERT INTO `liuyan` VALUES ('1408093028', '抹茶(已匿名)', '$.ajaxSetup({\n	async:false\n});可以强行把ajax异步变成同步进而可以把ajax返回值赋给一个全局变量', '2017-04-03 10:01:20');
INSERT INTO `liuyan` VALUES ('1408093028', '梁安迪', 'Come On ...', '2017-06-08 17:04:47');
INSERT INTO `liuyan` VALUES ('1408093028', '梁安迪', 'Vue.js（读音 /vjuː/，类似于 view） 是一套构建用户界面的渐进式框架。与其他重量级框架不同的是，Vue 采用自底向上增量开发的设计。Vue 的核心库只关注视图层，它不仅易于上手，还便于与第三方库或既有项目整合。另一方面，当与单文件组件和 Vue 生态系统支持的库结合使用时，Vue 也完全能够为复杂的单页应用程序提供驱动。', '2017-06-10 16:29:48');
INSERT INTO `liuyan` VALUES ('1408093028', '梁安迪', 'Vue.js 的核心是一个允许采用简洁的模板语法来声明式的将数据渲染进 DOM', '2017-06-10 16:34:09');
INSERT INTO `liuyan` VALUES ('1408093028', '梁安迪', 'gulp是基于Nodejs的自动任务运行器， 她能自动化地完成 javascript/coffee/sass/less/html/image/css 等文件的的测试、检查、合并、压缩、格式化、浏览器自动刷新、部署文件生成，并监听文件在改动后重复指定的这些步骤。在实现上，她借鉴了Unix操作系统的管道（pipe）思想，前一级的输出，直接变成后一级的输入，使得在操作上非常简单。', '2017-06-11 17:48:26');
INSERT INTO `liuyan` VALUES ('1408093029', '廖容菲', 'PHP 是一种创建动态交互性站点的强有力的服务器端脚本语言。\nPHP 是免费的，并且使用非常广泛。同时，对于像微软 ASP 这样的竞争者来说，PHP 无疑是另一种高效率的选项。', '2017-06-13 00:12:59');
INSERT INTO `liuyan` VALUES ('1408093053', '田莎莎', 'MVVM 模式将 Presenter 改名为 ViewModel，基本上与 MVP 模式完全一致。唯一的区别是，它采用双向绑定（data-binding）：View的变动，自动反映在 ViewModel，反之亦然。Angular 和 Ember 都采用这种模式。', '2017-06-13 14:34:35');
INSERT INTO `liuyan` VALUES ('1408093053', '田莎莎', '模块化和组件化一个最直接的好处就是复用，同时我们也应该有一个理念，模块化和组件化除了复用之外还有就是分治，我们能够在不影响其他代码的情况下按需修改某一独立的模块或是组件，因此很多地方我们及时没有很强烈的复用需要也可以根据分治需求进行模块化或组件化开发...', '2017-06-14 08:06:22');

-- ----------------------------
-- Table structure for scoreone
-- ----------------------------
DROP TABLE IF EXISTS `scoreone`;
CREATE TABLE `scoreone` (
  `xh` char(10) DEFAULT NULL,
  `xm` varchar(15) DEFAULT NULL,
  `timenow` date DEFAULT NULL,
  `score` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scoreone
-- ----------------------------
INSERT INTO `scoreone` VALUES ('1408093065', '谢蓉蓉', '2017-06-12', '55');
INSERT INTO `scoreone` VALUES ('1408093027', '李肇勇', '2017-06-12', '66');
INSERT INTO `scoreone` VALUES ('1408096226', '抹茶', '2017-06-12', '77');
INSERT INTO `scoreone` VALUES ('1408093063', '肖胜强', '2017-06-12', '33');
INSERT INTO `scoreone` VALUES ('1408093011', '董文浩', '2017-06-12', '44');
INSERT INTO `scoreone` VALUES ('1408093002', '陈彩金', '2017-06-12', '66');
INSERT INTO `scoreone` VALUES ('1408093070', '杨航', '2017-06-12', '66');
INSERT INTO `scoreone` VALUES ('1408093053', '田莎莎', '2017-06-12', '77');
INSERT INTO `scoreone` VALUES ('1408093067', '徐睿', '2017-06-12', '55');
INSERT INTO `scoreone` VALUES ('1408093011', '董文浩', '2017-06-12', '55');
INSERT INTO `scoreone` VALUES ('1408093027', '李肇勇', '2017-06-12', '66');
INSERT INTO `scoreone` VALUES ('1408093056', '王瑞', '2017-06-12', '77');
INSERT INTO `scoreone` VALUES ('1408093002', '陈彩金', '2017-06-12', '35');
INSERT INTO `scoreone` VALUES ('1408093081', '钟林生', '2017-06-12', '66');
INSERT INTO `scoreone` VALUES ('1308093098', '全亚青', '2017-06-12', '45');
INSERT INTO `scoreone` VALUES ('1408093056', '王瑞', '2017-06-12', '66');
INSERT INTO `scoreone` VALUES ('1308092019', '宋兆伦', '2017-06-12', '66');
INSERT INTO `scoreone` VALUES ('1408093069', '薛明', '2017-06-12', '66');
INSERT INTO `scoreone` VALUES ('1408093041', '欧阳旭凯', '2017-06-12', '67');
INSERT INTO `scoreone` VALUES ('1408093060', '魏瑞', '2017-06-12', '76');
INSERT INTO `scoreone` VALUES ('1408093032', '刘辉', '2017-06-12', '77');
INSERT INTO `scoreone` VALUES ('1408093067', '徐睿', '2017-06-12', '56');
INSERT INTO `scoreone` VALUES ('1408093058', '王勇平', '2017-06-12', '77');
INSERT INTO `scoreone` VALUES ('1408093053', '田莎莎', '2017-06-12', '88');
INSERT INTO `scoreone` VALUES ('1408093007', '陈云', '2017-06-12', '67');
INSERT INTO `scoreone` VALUES ('1308093098', '全亚青', '2017-06-12', '56');
INSERT INTO `scoreone` VALUES ('1408093081', '钟林生', '2017-06-12', '77');
INSERT INTO `scoreone` VALUES ('1408093055', '汪磊', '2017-06-12', '67');
INSERT INTO `scoreone` VALUES ('1408093035', '刘家清', '2017-06-12', '77');
INSERT INTO `scoreone` VALUES ('1408093666', '墨荷', '2017-06-12', '88');
INSERT INTO `scoreone` VALUES ('1408093005', '陈澍', '2017-06-12', '33');
INSERT INTO `scoreone` VALUES ('1408093074', '张晨晨', '2017-06-12', '24');
INSERT INTO `scoreone` VALUES ('1408093072', '易海溶', '2017-06-12', '54');
INSERT INTO `scoreone` VALUES ('1408093067', '徐睿', '2017-06-12', '66');
INSERT INTO `scoreone` VALUES ('1408093038', '刘异', '2017-06-12', '76');
INSERT INTO `scoreone` VALUES ('1408093070', '杨航', '2017-06-12', '88');
INSERT INTO `scoreone` VALUES ('1234567899', '小蛮', '2017-06-12', '56');
INSERT INTO `scoreone` VALUES ('1308093082', '丁经宇', '2017-06-12', '77');
INSERT INTO `scoreone` VALUES ('1408093060', '魏瑞', '2017-06-12', '56');
INSERT INTO `scoreone` VALUES ('1408096226', '抹茶', '2017-06-12', '77');
INSERT INTO `scoreone` VALUES ('1408093020', '黄家赟', '2017-06-12', '78');
INSERT INTO `scoreone` VALUES ('1408093010', '丁殷明', '2017-06-12', '34');
INSERT INTO `scoreone` VALUES ('1408093020', '黄家赟', '2017-06-12', '78');
INSERT INTO `scoreone` VALUES ('1408093067', '徐睿', '2017-06-12', '56');
INSERT INTO `scoreone` VALUES ('1408093018', '侯瑜婷', '2017-06-12', '87');
INSERT INTO `scoreone` VALUES ('1408093038', '刘异', '2017-06-12', '54');
INSERT INTO `scoreone` VALUES ('1407012012', '乐晓通', '2017-06-12', '56');
INSERT INTO `scoreone` VALUES ('1408093038', '刘异', '2017-06-12', '77');
INSERT INTO `scoreone` VALUES ('1408096226', '我爱抹茶', '2017-06-12', '78');
INSERT INTO `scoreone` VALUES ('1408093005', '陈澍', '2017-06-12', '43');
INSERT INTO `scoreone` VALUES ('1408093069', '薛明', '2017-06-12', '56');
INSERT INTO `scoreone` VALUES ('1408093063', '肖胜强', '2017-06-12', '56');
INSERT INTO `scoreone` VALUES ('1408093055', '汪磊', '2017-06-12', '67');
INSERT INTO `scoreone` VALUES ('1408093010', '丁殷明', '2017-06-13', '32');
INSERT INTO `scoreone` VALUES ('1408093011', '董文浩', '2017-06-13', '43');
INSERT INTO `scoreone` VALUES ('1407012015', '李健', '2017-06-13', '67');
INSERT INTO `scoreone` VALUES ('1407012012', '乐晓通', '2017-06-13', '56');
INSERT INTO `scoreone` VALUES ('1408093041', '欧阳旭凯', '2017-06-13', '56');
INSERT INTO `scoreone` VALUES ('1408093074', '张晨晨', '2017-06-13', '77');
INSERT INTO `scoreone` VALUES ('1408093065', '谢蓉蓉', '2017-06-13', '45');
INSERT INTO `scoreone` VALUES ('1408093072', '易海溶', '2017-06-13', '65');
INSERT INTO `scoreone` VALUES ('1408093041', '欧阳旭凯', '2017-06-13', '76');
INSERT INTO `scoreone` VALUES ('1408093067', '徐睿', '2017-06-13', '87');
INSERT INTO `scoreone` VALUES ('1407012012', '乐晓通', '2017-06-13', '57');
INSERT INTO `scoreone` VALUES ('1408093038', '刘异', '2017-06-13', '76');
INSERT INTO `scoreone` VALUES ('1308093098', '全亚青', '2017-06-13', '34');
INSERT INTO `scoreone` VALUES ('1308093119', '刘月楼', '2017-06-13', '54');
INSERT INTO `scoreone` VALUES ('1408093027', '李肇勇', '2017-06-13', '23');
INSERT INTO `scoreone` VALUES ('1408093020', '黄家赟', '2017-06-13', '32');
INSERT INTO `scoreone` VALUES ('1408093018', '侯瑜婷', '2017-06-13', '34');
INSERT INTO `scoreone` VALUES ('1407012012', '乐晓通', '2017-06-13', '12');
INSERT INTO `scoreone` VALUES ('1408093666', '墨荷', '2017-06-13', '32');
INSERT INTO `scoreone` VALUES ('1408093056', '王瑞', '2017-06-13', '12');
INSERT INTO `scoreone` VALUES ('1408093065', '谢蓉蓉', '2017-06-13', '34');
INSERT INTO `scoreone` VALUES ('1408093005', '陈澍', '2017-06-13', '12');
INSERT INTO `scoreone` VALUES ('1408093081', '钟林生', '2017-06-13', '67');
INSERT INTO `scoreone` VALUES ('1408093035', '刘家清', '2017-06-13', '34');
INSERT INTO `scoreone` VALUES ('1408093020', '黄家赟', '2017-06-13', '77');
INSERT INTO `scoreone` VALUES ('1408093035', '刘家清', '2017-06-13', '88');
INSERT INTO `scoreone` VALUES ('1616161688', '盘龙', '2017-06-13', '99');
INSERT INTO `scoreone` VALUES ('1408093666', '墨荷', '2017-06-13', '88');
INSERT INTO `scoreone` VALUES ('1408093028', '梁安迪', '2017-06-13', '90');
INSERT INTO `scoreone` VALUES ('1408093002', '陈彩金', '2017-06-13', '66');
INSERT INTO `scoreone` VALUES ('1258635989', '狐妖小红娘', '2017-06-14', '56');
INSERT INTO `scoreone` VALUES ('1407012012', '乐晓通', '2017-06-14', '34');
INSERT INTO `scoreone` VALUES ('1408093052', '田美', '2017-06-14', '56');
