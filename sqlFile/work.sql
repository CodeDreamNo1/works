-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-11-21 09:12:58
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `work`
--

-- --------------------------------------------------------

--
-- 表的结构 `cons`
--

CREATE TABLE `cons` (
  `cid` int(11) NOT NULL,
  `jid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `ctitle` varchar(255) NOT NULL,
  `con` varchar(255) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cstate` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cons`
--

INSERT INTO `cons` (`cid`, `jid`, `fid`, `ctitle`, `con`, `ctime`, `cstate`) VALUES
(17, 1, 3, 'dsad', 'dsadsadwada', '2017-05-14 12:39:24', 1),
(18, 4, 3, 'dsads', 'dsadsa', '2017-05-14 12:39:31', 0),
(19, 2, 3, 'dsadsada', 'dsadsa', '2017-05-14 12:39:38', 0),
(20, 1, 3, 'dsadsa', 'dsadsadas', '2017-05-14 12:39:49', 1),
(21, 1, 5, '咋还不来', '。。。。。。', '2017-05-15 02:03:28', 1),
(24, 3, 1, 'dsadasdsadas', 'dsadsadas', '2017-05-23 14:03:40', 1),
(25, 1, 5, '小伙子有前途', '恩不错。切~~~', '2017-05-25 12:07:48', 1);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL COMMENT 'id',
  `user` varchar(255) NOT NULL COMMENT '用户名',
  `upass` varchar(255) NOT NULL COMMENT '密码',
  `uname` varchar(255) NOT NULL COMMENT '姓名',
  `uphone` varchar(255) NOT NULL COMMENT '手机号',
  `uemail` varchar(255) NOT NULL COMMENT 'email',
  `ubumen` char(100) NOT NULL COMMENT '部门',
  `uimg` varchar(255) NOT NULL DEFAULT '/imgs/3.jpg' COMMENT '头像',
  `uroot` int(11) NOT NULL DEFAULT '1' COMMENT '级别'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`uid`, `user`, `upass`, `uname`, `uphone`, `uemail`, `ubumen`, `uimg`, `uroot`) VALUES
(1, '高大上', '0b1b165421c5b927fc730f567d6f17e3', '高大上', '', '245882185@qq.com', '技术部', '/imgs/upload/0.9727466030192151.jpg', 0),
(2, '郭二狗', '0b1b165421c5b927fc730f567d6f17e3', '郭二狗', '18435179817', '666666@qq.com', '后勤部', '/imgs/3.jpg', 1),
(3, '张宇辉', '0b1b165421c5b927fc730f567d6f17e3', '张宇辉', '18435179860', '666666@qq.com', '后勤部', '/imgs/3.jpg', 1),
(4, '侯凯', '0b1b165421c5b927fc730f567d6f17e3', '侯凯', '15235441858', '666666@qq.com', '后勤部', '/imgs/3.jpg', 1),
(5, '岳老大', '0b1b165421c5b927fc730f567d6f17e3', '岳英俊', '13653659110', '', '后勤部', '/imgs/3.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cons`
--
ALTER TABLE `cons`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cons`
--
ALTER TABLE `cons`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
