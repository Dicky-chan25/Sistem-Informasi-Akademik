-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2020 at 01:34 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websekolah_skripsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `b_indo`
--

CREATE TABLE `b_indo` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `kelas` varchar(15) NOT NULL,
  `n1` int(11) NOT NULL,
  `n2` int(11) NOT NULL,
  `n3` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `total` int(11) NOT NULL,
  `uts` int(11) NOT NULL,
  `uas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `b_inggris`
--

CREATE TABLE `b_inggris` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `n1` int(11) NOT NULL,
  `n2` int(11) NOT NULL,
  `n3` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `kelas` varchar(128) NOT NULL,
  `uts` int(11) NOT NULL,
  `uas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `b_mtk`
--

CREATE TABLE `b_mtk` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `kelas` varchar(128) NOT NULL,
  `n1` int(11) NOT NULL,
  `n2` int(11) NOT NULL,
  `n3` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `uts` int(11) NOT NULL,
  `uas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_guru`
--

CREATE TABLE `data_guru` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL,
  `tempat_lahir` varchar(128) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nip` varchar(20) NOT NULL,
  `mengajar` varchar(128) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `rtrw` varchar(11) NOT NULL,
  `kel` varchar(128) NOT NULL,
  `kec` varchar(128) NOT NULL,
  `kab` varchar(128) NOT NULL,
  `prov` varchar(128) NOT NULL,
  `kode_p` varchar(15) NOT NULL,
  `kelamin` varchar(11) NOT NULL,
  `agama` varchar(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `wali_kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_guru`
--

INSERT INTO `data_guru` (`id`, `name`, `email`, `password`, `date_created`, `tempat_lahir`, `tanggal_lahir`, `nip`, `mengajar`, `hp`, `alamat`, `rtrw`, `kel`, `kec`, `kab`, `prov`, `kode_p`, `kelamin`, `agama`, `image`, `wali_kelas`) VALUES
(15, 'indo1', 'indo1@gmail.com', 'indo1', 3042020, 'tangerang', '2020-04-01', '100000001', 'Bahasa Indonesia', '08229700000', 'bonisari', '02/02', 'bonisari', 'pakuhaji', 'tangerang', 'banten', '15570', 'Laki-laki', 'Islam', '', '10 A'),
(16, 'indo2', 'indo2@gmail.com', 'indo2', 3042020, '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, 'mtk1', 'mtk1@gmail.com', 'mtk1', 3042020, '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, 'mtk2', 'mtk2@gmail.com', 'mtk2', 3042020, '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, 'ing1', 'ing1@gmail.com', 'ing1', 3042020, '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, 'ing2', 'ing2@gmail.com', 'ing2', 3042020, '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `data_siswa`
--

CREATE TABLE `data_siswa` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL,
  `tempat_lahir` varchar(128) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kelas` varchar(128) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `rtrw` varchar(11) NOT NULL,
  `kel` varchar(128) NOT NULL,
  `kec` varchar(128) NOT NULL,
  `kab` varchar(128) NOT NULL,
  `prov` varchar(128) NOT NULL,
  `kode_p` varchar(15) NOT NULL,
  `kelamin` varchar(11) NOT NULL,
  `agama` varchar(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `wali_murid` varchar(128) NOT NULL,
  `hp_wali_murid` int(15) NOT NULL,
  `kls` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_siswa`
--

INSERT INTO `data_siswa` (`id`, `name`, `email`, `password`, `date_created`, `tempat_lahir`, `tanggal_lahir`, `nisn`, `kelas`, `hp`, `alamat`, `rtrw`, `kel`, `kec`, `kab`, `prov`, `kode_p`, `kelamin`, `agama`, `image`, `wali_murid`, `hp_wali_murid`, `kls`) VALUES
(13, 'murid1', 'murid1@gmail.com', 'murid1', 3042020, 'tangerang', '2020-04-01', '100000234', 'Kelas 11', '08229700011', 'kp. bonisari', '323', 'bonisari', 'pakuhaji', 'tangerang', 'banten', '15570', 'Laki-laki', 'Islam', 'email.jpg', '', 0, ''),
(14, 'murid2', 'murid2@gmail.com', 'murid2', 3042020, '', '0000-00-00', '', 'Kelas 11', '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(15, 'murid3', 'murid3@gmail.com', 'murid3', 3042020, '', '0000-00-00', '', 'Kelas 11', '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(16, 'murid4', 'murid4@gmail.com', 'murid4', 3042020, '', '0000-00-00', '', 'Kelas 11', '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(17, 'murid5', 'murid5@gmail.com', 'murid5', 3042020, '', '0000-00-00', '', 'Kelas 11', '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(18, 'murid6', 'murid6@gmail.com', 'murid6', 3042020, '', '0000-00-00', '', 'Kelas 11', '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(19, 'murid7', 'murid7@gmail.com', 'murid7', 3042020, '', '0000-00-00', '', 'Kelas 11', '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(20, 'murid8', 'murid8@gmail.com', 'murid8', 3042020, '', '0000-00-00', '', 'Kelas 11', '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(21, 'murid9', 'murid9@gmail.com', 'murid9', 3042020, '', '0000-00-00', '', 'Kelas 11', '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(22, 'murid10', 'murid10@gmail.com', 'murid10', 3042020, '', '0000-00-00', '', 'Kelas 11', '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(23, 'murid11', 'murid11@gmail.com', 'murid11', 3042020, '', '0000-00-00', '', 'Kelas 11', '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(24, 'murid12', 'murid12@gmail.com', 'murid12', 3042020, '', '0000-00-00', '', 'Kelas 11', '', '', '', '', '', '', '', '', '', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `kelas1`
--

CREATE TABLE `kelas1` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `nisn` int(15) NOT NULL,
  `kls` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelas2`
--

CREATE TABLE `kelas2` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `nisn` int(15) NOT NULL,
  `kls` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelas3`
--

CREATE TABLE `kelas3` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `nisn` int(15) NOT NULL,
  `kls` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(35, 'admin1', 'admin1@gmail.com', 'default.jpg', '$2y$10$TQrHc5tbngOE4iyu6izrkOz/UC5PfxEPhC7Texz8ZAa1KNQ77Q8.W', 1, 1, 1585889639),
(36, 'admin2', 'admin2@gmail.com', 'default.jpg', '$2y$10$/tu77NCrVKmxCmA6rgp0JueMCHoIs/w2fvR2Lr5250rSUye22qxzG', 1, 1, 1585889675),
(37, 'indo1', 'indo1@gmail.com', 'default.jpg', '$2y$10$Z1B9lyP/KE1hqRhXUnY34eFMGQHfxr3h/vLXondWJSJKE.SAs04S6', 2, 1, 1585889745),
(38, 'indo2', 'indo2@gmail.com', 'default.jpg', '$2y$10$bjt65M3GghvHle7PImjb1eRa/N95hDO22.EdqEXtj/HXS58WdS3RC', 2, 1, 1585889766),
(39, 'mtk1', 'mtk1@gmail.com', 'default.jpg', '$2y$10$GNL74mdbIPIkFyW1MMt1tufjjlIRDvPUzR7jx1/goKeF.rqYbHQS2', 2, 1, 1585889790),
(40, 'mtk2', 'mtk2@gmail.com', 'default.jpg', '$2y$10$eF4f8BTNOqNdizM6RL1BdeUfZdM8x.UKxkEWjk0/0Ay7YrtPCsXIu', 2, 1, 1585889856),
(41, 'ing1', 'ing1@gmail.com', 'default.jpg', '$2y$10$67RFGgtNYMd2nob/6wn6hOa.S79xmXQ4/iSJA2mPx1KwniNYDoDxm', 2, 1, 1585889877),
(42, 'ing2', 'ing2@gmail.com', 'default.jpg', '$2y$10$2Okj2kSRp.Mqq7umvg2ug.UyLo96a3Jyuo8JIA2ZvcSL6hP0bm5LS', 2, 1, 1585889899),
(43, 'murid1', 'murid1@gmail.com', 'email1.jpg', '$2y$10$RhXOUN8YIYxQv8fzG27pju9REfgud9yMZsUnyPvczr9ulz3f1GNlG', 3, 1, 1585890051),
(44, 'murid2', 'murid2@gmail.com', 'default.jpg', '$2y$10$gdCUqrWW7nJcqAf4Ep9c..7a76KazkBa2OdKhFuzcucNvaJnebu86', 3, 1, 1585890194),
(45, 'murid3', 'murid3@gmail.com', 'default.jpg', '$2y$10$GndaiG5vlMixPLaILBU0Zu374MY1gC1xSLUX6owMOATj1LwnTp4Se', 3, 1, 1585890272),
(46, 'murid4', 'murid4@gmail.com', 'default.jpg', '$2y$10$xgnNJzuu9Z3x7dFEMJI5DO1dI1/qnak9cisA9wywrCmfH9Zo2Vmgy', 3, 1, 1585890312),
(47, 'murid5', 'murid5@gmail.com', 'default.jpg', '$2y$10$5KBBvhUaNXhUBxr6eeUbHeRBmqc0N/WYLNkyEWY.VlyfpWlmGARHq', 3, 1, 1585890336),
(48, 'murid6', 'murid6@gmail.com', 'default.jpg', '$2y$10$Bwjoper0DjgVDOF9Et5hWOcCWZrTfjhbIRbkj1GVeuUBJbUGJ2L2a', 3, 1, 1585890358),
(49, 'murid7', 'murid7@gmail.com', 'default.jpg', '$2y$10$ECidTnpUMCnDpJkZs2AvQeRk9zWz4Xx3j.KRy54Cywa71IK8udgZO', 3, 1, 1585890382),
(50, 'murid8', 'murid8@gmail.com', 'default.jpg', '$2y$10$AxB/ueT4WcU1aYogor14R.ZsB0Q1/d84ERoXz/S/dRujW8yaQZUi6', 3, 1, 1585890451),
(51, 'murid9', 'murid9@gmail.com', 'default.jpg', '$2y$10$ELjiKEPzCthTUmJruIWaTO0wbKfvAuu1V1aid.g/.Kn.xBZnbbGJi', 3, 1, 1585890479),
(52, 'murid10', 'murid10@gmail.com', 'default.jpg', '$2y$10$LYHWdCPc.uX53IJH9v1vC.xUHfBgbqdStxDu0PcTU9BVHoLT6fx1C', 3, 1, 1585890514),
(53, 'murid11', 'murid11@gmail.com', 'default.jpg', '$2y$10$JfnJBDO7KAQAR9UcNYYR3uHSW8Eg9RtM9haPX2ZD2d5S2n1YHFfC.', 3, 1, 1585890537),
(54, 'murid12', 'murid12@gmail.com', 'default.jpg', '$2y$10$8rmJ4lmyFlW01Mx6f/NVJ./K2DG2xAEKHV00n4ZnPvpGCm5zvtuka', 3, 1, 1585890559);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 2),
(5, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'Teacher'),
(3, 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Guru'),
(3, 'Siswa');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(256) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 2, 'My Profile', 'teacher', 'fas fa-fw fa-user-circle', 1),
(2, 3, 'My Profile', 'student', 'fas fa-fw fa-user-circle', 1),
(3, 1, 'Dashboard', 'admin', 'fas fa-fw fa-user-circle', 1),
(4, 2, 'Edit Profile', 'student/edit', 'fas fa-fw fa-user-edit', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(4, 'admin1@gmail.com', '/V4aQ3e7dQprt8ewNgaMVduzLMibON2y5p3OulQOt+Y=', 1585889283),
(5, 'murid1@gmail.com', 'lSH8QBItnEMJUId2vjxUhEwK5JZopOWy1gi5HYESM3g=', 1585890051),
(6, 'murid2@gmail.com', 'BKimJ2rIKFaUwCa+WKFXVx0Bh8A3TIWED0aZOL71bso=', 1585890194),
(7, 'murid3@gmail.com', 'wS1dS2o0m0QXCHzXClPBM2Qg9TRW3XWdGIMce4B5DVE=', 1585890272),
(8, 'murid4@gmail.com', 'XcTFOAoKFy2BL2GkBezIjbchM9GpLoomaFFYIpYT+Tw=', 1585890312),
(9, 'murid5@gmail.com', 'oORb2n/qM1M/vbnk+HaI9+1+n8ecbvGnS6iOJLGZJEY=', 1585890336),
(10, 'murid6@gmail.com', 'aTAa70tPiM8z/cgeSEjbNgJm2t13Vvq5Lg54kGwMRDQ=', 1585890358),
(11, 'murid7@gmail.com', 'VPHo9t/I0LakEhwRzyvcQEEUjBWmVbwcYXoPfIUxaq0=', 1585890382),
(12, 'murid8@gmail.com', '2R/w1qpuDkhmjFZN9AWQ2KfaIOWAxeDCiWQMKcu4M6U=', 1585890451),
(13, 'murid9@gmail.com', 'IqnHqPV/YqIfL9AkwOBZt1yvanmkkwiFRC1XxNeAfYE=', 1585890479),
(14, 'murid10@gmail.com', 'ui+eyf3Hq8p2YxZOBdcw85dJpk5NlE4Ix4gKLLGKmfg=', 1585890514),
(15, 'murid11@gmail.com', 'gHlA5cf2kP5oStboNhqmpCNHkif2jMGx247Du/X9DeU=', 1585890537),
(16, 'murid12@gmail.com', 'ri/LHk6VAtdyylFh71hF7Ep4UakhMIGRMqfCQLCgQlU=', 1585890559);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `b_indo`
--
ALTER TABLE `b_indo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b_inggris`
--
ALTER TABLE `b_inggris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b_mtk`
--
ALTER TABLE `b_mtk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_guru`
--
ALTER TABLE `data_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas1`
--
ALTER TABLE `kelas1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas2`
--
ALTER TABLE `kelas2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas3`
--
ALTER TABLE `kelas3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_guru`
--
ALTER TABLE `data_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `data_siswa`
--
ALTER TABLE `data_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `kelas1`
--
ALTER TABLE `kelas1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas2`
--
ALTER TABLE `kelas2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas3`
--
ALTER TABLE `kelas3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
