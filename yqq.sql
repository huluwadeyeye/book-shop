-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 11 月 29 日 13:41
-- 服务器版本: 5.5.40
-- PHP 版本: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `syweb07`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `address` varchar(50) CHARACTER SET ucs2 NOT NULL,
  `photo` varchar(50) NOT NULL,
  `hobby` int(3) unsigned NOT NULL,
  `sex` int(1) unsigned NOT NULL,
  `descr` text NOT NULL,
  `brith` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `address`, `photo`, `hobby`, `sex`, `descr`, `brith`) VALUES
(1, '3e22ae348aeb5660fc2140aec', 'd09ca3762af61e59520943dc2', '2', '../photoImgs/1542444813.jpg', 2, 0, 'admin', '2018-11-01'),
(2, '6e9f0c0006e8f919e0c515c66', 'd09ca3762af61e59520943dc2', '1', '../photoImgs/1542444842.jpg', 1, 0, '2222', '2018-11-07'),
(3, '3e22ae348aeb5660fc2140aec', 'd09ca3762af61e59520943dc2', '2', '../photoImgs/1543469643.jpg', 1, 0, '123456', '2018-11-22');

-- --------------------------------------------------------

--
-- 表的结构 `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `bookname` varchar(30) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `public` varchar(30) NOT NULL,
  `price` decimal(5,2) unsigned NOT NULL,
  `catagory` tinyint(3) unsigned NOT NULL,
  `ishow` tinyint(1) NOT NULL DEFAULT '1',
  `description` text NOT NULL,
  `photo` varchar(50) NOT NULL,
  `bookdate` int(11) unsigned NOT NULL,
  `publicdate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `book`
--

INSERT INTO `book` (`id`, `bookname`, `author`, `public`, `price`, `catagory`, `ishow`, `description`, `photo`, `bookdate`, `publicdate`) VALUES
(1, '鸟哥的Linux私房菜 基础学习篇', 'aaa', 'aaa', '111.00', 0, 1, '适用Linux系统应用和开发及运维的人员 涵盖linux内核 命令行 嵌入式 Shell与Shell Scripts技巧精粹', 'photoImgs/1542360358.jpg', 1542360358, '2018-11-01'),
(2, 'Linux Shell脚本编程从入门到精通', '陈祥林', '陈祥林 编', '89.00', 2, 1, '本书介绍Linux系统中的shell编程及应用管理操作，主要内容包括shell的基础知识、编辑器使用、简单的算术运算和进制转换及移位运算、程序流程控制、文件备份、字符以及字符串、正则表达式知识和应用、数据的输入输出、网络编程应用、系统硬盘空间的操作管理、系统进程的管理、视图窗口界面的构造等。', 'photoImgs/1542360410.jpg', 1542360410, '2018-11-03'),
(3, '跟老韩学Linux运维', '韩艳威', '韩艳威', '59.00', 1, 1, '本书使用大量shell脚本实例，并对每个实例进行了详细注释。本书适合Linux程序员、自学shell脚本编程的入门读者，也可用作高等院校计算机专业的教材。', 'photoImgs/1542360443.jpg', 1542360443, '2018-11-30'),
(4, '3ds Max 2016从入门到精通3dmax全彩版', '全彩版', '全彩版', '99.00', 3, 1, '新书上市！10万册畅销作者全新力作243集微视频讲解 手机扫码看视频 171个实例案例 5G素材源文件 定期作者直播 在线答疑指导 3dmax教程 三维建模 VRay渲染室内效果图 特效动画', 'photoImgs/1542360483.jpg', 1542360483, '2018-11-03'),
(5, 'PhotoshopCS6从入门到精通PS教程（全彩印高清视频', '唯美世界', '唯美世界', '69.00', 0, 1, '新书上市！10万册畅销作者全新力作243集微视频讲解 手机扫码看视频 171个实例案例 5G素材源文件 定期作者直播 在线答疑指导 3dmax教程 三维建模 VRay渲染室内效果图 特效动画', 'photoImgs/1542360531.jpg', 1542360531, '2018-11-03');

-- --------------------------------------------------------

--
-- 表的结构 `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sname` varchar(10) DEFAULT NULL,
  `age` tinyint(3) unsigned DEFAULT NULL,
  `decription` text NOT NULL,
  `photo` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `study`
--

CREATE TABLE IF NOT EXISTS `study` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `uid` tinyint(3) unsigned NOT NULL,
  `coursename` varchar(30) NOT NULL,
  `score` decimal(10,0) unsigned NOT NULL,
  `datetiome` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
