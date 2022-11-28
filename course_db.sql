-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2022 at 03:30 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `user_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content_id`, `user_id`, `tutor_id`, `comment`, `date`) VALUES
('M6wJvKCToZbS1yhbC2Hi', 'UbiNOYJPatPBGjYSEfCR', 'NKE6OP7S57mK83A0zKJT', 'K8IksA0PWjuAb0PTVoVy', 'Great!!!!', '2022-11-11'),
('Em6KARSNdxxd0pOsIusH', 'kcIUdLw1jrVuAl5RYr4Q', 'NKE6OP7S57mK83A0zKJT', 'K8IksA0PWjuAb0PTVoVy', 'Great!!!!', '2022-11-11'),
('WANwQa97QKiaL2UIUdth', 'vqdKfqQIY9c53YDbgswD', 'NKE6OP7S57mK83A0zKJT', 'K8IksA0PWjuAb0PTVoVy', 'Great!!!!', '2022-11-11'),
('Q2YzSXYurMkBK9dPXxdF', 'rBUad5Dao3ZSbh20gU2I', 'iFWrIAuiR4s9fridv1OR', 'Fd55yyqlFl0bO0T9TnA8', 'Great!!!!', '2022-11-11'),
('BM9DyeYhpXxkAGdbGDo0', '3YkEKGcWOItkvDG2yRxy', 'iFWrIAuiR4s9fridv1OR', 'Fd55yyqlFl0bO0T9TnA8', 'Great!!!!', '2022-11-11'),
('hQteV5aOJGakKZl6WO1l', '24gJyOzrlk6JwVSFAPTu', 'iFWrIAuiR4s9fridv1OR', 'Fd55yyqlFl0bO0T9TnA8', 'Great!!!!', '2022-11-11'),
('PS62EBkF9E2RvN9RR5An', '0YgtlIGEPGbqC02bwbG8', '2Ffmyy2BSEkDDsGyLVow', 'lY4vEk1DFpkDcXYmAHEG', 'Great!!!!', '2022-11-11'),
('B2bFbRu8E86G9ecTJQJr', 'ujPZkFeJmMzNdvbIfLqh', '2Ffmyy2BSEkDDsGyLVow', 'lY4vEk1DFpkDcXYmAHEG', 'Great!!!!', '2022-11-11'),
('jLJpEaqIabfMsaGYdl5o', '0YgtlIGEPGbqC02bwbG8', 'NKE6OP7S57mK83A0zKJT', 'lY4vEk1DFpkDcXYmAHEG', 'hayyy', '2022-11-26'),
('8F8sONjBqDsi3eKFgEu5', '0YgtlIGEPGbqC02bwbG8', '2Ffmyy2BSEkDDsGyLVow', 'lY4vEk1DFpkDcXYmAHEG', 'hayyyyy', '2022-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `number`, `message`) VALUES
('Thai Huu Nguyen', 'thai@student.com', 123456789, 'nht');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `video` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `tutor_id`, `playlist_id`, `title`, `description`, `video`, `thumb`, `date`, `status`) VALUES
('0YgtlIGEPGbqC02bwbG8', 'lY4vEk1DFpkDcXYmAHEG', 'oie5o1IH5Ae2lZsIKKSw', 'HTML Introduction', 'Introduction about HTML', '3xBuP0P9yT2icjAMzvI6.mp4', '5UF5mOMhaIRQnMRRiPMA.jpg', '2022-11-10', 'active'),
('ujPZkFeJmMzNdvbIfLqh', 'lY4vEk1DFpkDcXYmAHEG', 'KGq7fJlse2cyyU0kEhLw', 'JavaScripts Introduction', 'Introduction about JavaScripts ', 'ruN9W1bEmH73GqzgCb4a.mp4', 'IhV88VSuAMWWyWtGJGan.jpg', '2022-11-10', 'active'),
('vqdKfqQIY9c53YDbgswD', 'K8IksA0PWjuAb0PTVoVy', 'VH3yGzQ7P4qJkSHlo0Zy', 'Laravel Introduction', 'Introduction about Laravel ', 'KXaW2aaBdNsSH3KUrbHx.mp4', 'yNtS1xJxxFeZ9WeEEsMM.jpg', '2022-11-10', 'active'),
('UbiNOYJPatPBGjYSEfCR', 'K8IksA0PWjuAb0PTVoVy', 'gJ11rPjKEjz1Uj80jy7j', 'PHP Introduction', 'Introduction about PHP ', 'AeVuBEOyQM9oU79rgdXv.mp4', 'KnJuWNRT3trbujIadTiy.jpg', '2022-11-10', 'active'),
('kcIUdLw1jrVuAl5RYr4Q', 'K8IksA0PWjuAb0PTVoVy', 'CRQHsMXGB7nbrvlHA0Ct', 'RabbitMQ Introduction', 'Introduction about RabbitMQ ', 'T98eS4sl5I7Csdg6I1E4.mp4', 'CZcSKvOICV0lMyajpsRb.jpg', '2022-11-10', 'active'),
('24gJyOzrlk6JwVSFAPTu', 'Fd55yyqlFl0bO0T9TnA8', 'kYXp8A4tCDq2J8LxfcAm', 'Visual Studio Code Introduction', ' Introduction about Visual Studio Code', 'QM84jJHznapdtLHrnAMx.mp4', 'Tu9qGfbkrSm9VVUyjxCq.jpg', '2022-11-10', 'active'),
('rBUad5Dao3ZSbh20gU2I', 'Fd55yyqlFl0bO0T9TnA8', 'ok8a96bp28QNagwJE1Bp', 'Android Studio Introduction', 'Introduction about Android Studio ', 'djlTpWzaFT9C9GFjCVqS.mp4', 'AklVqtTkju7z5Zyj1ja3.jpg', '2022-11-10', 'active'),
('3YkEKGcWOItkvDG2yRxy', 'Fd55yyqlFl0bO0T9TnA8', 'Rbxm2B9JJpOotGYIuGis', 'Kotlin Introduction', 'Introduction about Kotlin', 'pbdf7bOUAro5j1hFpwc5.mp4', 'MjHtn2vVpKjCngl6cKER.jpg', '2022-11-10', 'active'),
('UYaA6lwhda7N0WGjCxrq', 'lY4vEk1DFpkDcXYmAHEG', 'MLvOc57h3rvGJaAgjzpt', 'test', 'testtt', '7lkbKgQkSFLQ38u4BOr8.mp4', 'gu4el6YpRMrYU8iT03z5.jpg', '2022-11-27', 'active'),
('YoTVonKYla18mcSkxIAk', 'lY4vEk1DFpkDcXYmAHEG', 'oie5o1IH5Ae2lZsIKKSw', 'test', 'thu', 'uLFGGQrU6QdeLcCNaGbu.mp4', 'Q7yv9F5cf5NV3iPuF7CQ.jpg', '2022-11-27', 'active'),
('rhpIwQEQiodIvYCZ3Xo5', 'lY4vEk1DFpkDcXYmAHEG', '6RRrvmIHCairNLkIRaTK', 'test', 'test', '9La4tWVZzBzCjM6mokA3.mp4', '7tvvG41oNjnJRVoybvND.PNG', '2022-11-27', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`user_id`, `tutor_id`, `content_id`) VALUES
('iFWrIAuiR4s9fridv1OR', 'lY4vEk1DFpkDcXYmAHEG', '0YgtlIGEPGbqC02bwbG8'),
('iFWrIAuiR4s9fridv1OR', 'lY4vEk1DFpkDcXYmAHEG', 'ujPZkFeJmMzNdvbIfLqh'),
('2Ffmyy2BSEkDDsGyLVow', 'lY4vEk1DFpkDcXYmAHEG', '0YgtlIGEPGbqC02bwbG8'),
('2Ffmyy2BSEkDDsGyLVow', 'lY4vEk1DFpkDcXYmAHEG', 'ujPZkFeJmMzNdvbIfLqh'),
('NKE6OP7S57mK83A0zKJT', 'K8IksA0PWjuAb0PTVoVy', 'UbiNOYJPatPBGjYSEfCR'),
('NKE6OP7S57mK83A0zKJT', 'K8IksA0PWjuAb0PTVoVy', 'kcIUdLw1jrVuAl5RYr4Q'),
('NKE6OP7S57mK83A0zKJT', 'K8IksA0PWjuAb0PTVoVy', 'vqdKfqQIY9c53YDbgswD'),
('2Ffmyy2BSEkDDsGyLVow', 'K8IksA0PWjuAb0PTVoVy', 'UbiNOYJPatPBGjYSEfCR'),
('2Ffmyy2BSEkDDsGyLVow', 'K8IksA0PWjuAb0PTVoVy', 'kcIUdLw1jrVuAl5RYr4Q'),
('2Ffmyy2BSEkDDsGyLVow', 'K8IksA0PWjuAb0PTVoVy', 'vqdKfqQIY9c53YDbgswD'),
('2Ffmyy2BSEkDDsGyLVow', 'Fd55yyqlFl0bO0T9TnA8', '24gJyOzrlk6JwVSFAPTu'),
('2Ffmyy2BSEkDDsGyLVow', 'Fd55yyqlFl0bO0T9TnA8', '3YkEKGcWOItkvDG2yRxy'),
('2Ffmyy2BSEkDDsGyLVow', 'Fd55yyqlFl0bO0T9TnA8', 'rBUad5Dao3ZSbh20gU2I'),
('NKE6OP7S57mK83A0zKJT', 'Fd55yyqlFl0bO0T9TnA8', '24gJyOzrlk6JwVSFAPTu'),
('NKE6OP7S57mK83A0zKJT', 'Fd55yyqlFl0bO0T9TnA8', 'rBUad5Dao3ZSbh20gU2I'),
('NKE6OP7S57mK83A0zKJT', 'Fd55yyqlFl0bO0T9TnA8', '3YkEKGcWOItkvDG2yRxy'),
('iFWrIAuiR4s9fridv1OR', 'Fd55yyqlFl0bO0T9TnA8', '24gJyOzrlk6JwVSFAPTu'),
('iFWrIAuiR4s9fridv1OR', 'Fd55yyqlFl0bO0T9TnA8', '3YkEKGcWOItkvDG2yRxy'),
('iFWrIAuiR4s9fridv1OR', 'Fd55yyqlFl0bO0T9TnA8', 'rBUad5Dao3ZSbh20gU2I'),
('iFWrIAuiR4s9fridv1OR', 'K8IksA0PWjuAb0PTVoVy', 'UbiNOYJPatPBGjYSEfCR'),
('iFWrIAuiR4s9fridv1OR', 'K8IksA0PWjuAb0PTVoVy', 'vqdKfqQIY9c53YDbgswD'),
('iFWrIAuiR4s9fridv1OR', 'K8IksA0PWjuAb0PTVoVy', 'kcIUdLw1jrVuAl5RYr4Q'),
('NKE6OP7S57mK83A0zKJT', 'lY4vEk1DFpkDcXYmAHEG', '0YgtlIGEPGbqC02bwbG8'),
('NKE6OP7S57mK83A0zKJT', 'lY4vEk1DFpkDcXYmAHEG', 'ujPZkFeJmMzNdvbIfLqh'),
('2Ffmyy2BSEkDDsGyLVow', 'lY4vEk1DFpkDcXYmAHEG', 'rhpIwQEQiodIvYCZ3Xo5');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `tutor_id`, `title`, `description`, `thumb`, `date`, `status`) VALUES
('oie5o1IH5Ae2lZsIKKSw', 'lY4vEk1DFpkDcXYmAHEG', 'HTML', 'Learning about HTML', 't6y1oZpC8GovMe6Jfo1N.jpg', '2022-11-10', 'active'),
('KGq7fJlse2cyyU0kEhLw', 'lY4vEk1DFpkDcXYmAHEG', 'JavaScripts', 'Learning about JavaScripts', 'SqQYQLlh3S6nWp40uUMy.jpg', '2022-11-10', 'active'),
('MLvOc57h3rvGJaAgjzpt', 'lY4vEk1DFpkDcXYmAHEG', 'CSS', 'Learning about CSS', 'wugdwwgpDq5Klu9JpqDe.jpg', '2022-11-10', 'active'),
('gJ11rPjKEjz1Uj80jy7j', 'K8IksA0PWjuAb0PTVoVy', 'PHP', 'Start with PHP', '4227k2BmOeVNE3ZmNGTk.jpg', '2022-11-10', 'active'),
('CRQHsMXGB7nbrvlHA0Ct', 'K8IksA0PWjuAb0PTVoVy', 'RabbitMQ', 'Start with RabbitMQ', 'CzofRSu8VzGOsitxNFSe.jpg', '2022-11-10', 'active'),
('VH3yGzQ7P4qJkSHlo0Zy', 'K8IksA0PWjuAb0PTVoVy', 'Laravel', 'Start with Laravel', 'UjmVybi6vOgx1zBeCPPE.jpg', '2022-11-10', 'active'),
('ok8a96bp28QNagwJE1Bp', 'Fd55yyqlFl0bO0T9TnA8', 'Android Studio', 'The concept of Android Studio', '3kZxoLIUw3CRoKC84OQm.jpg', '2022-11-10', 'active'),
('kYXp8A4tCDq2J8LxfcAm', 'Fd55yyqlFl0bO0T9TnA8', 'Visual Studio Code', 'The concept of Visual Studio Code', 'vuwL80kFgYthZ1t9TKT8.jpg', '2022-11-10', 'active'),
('6RRrvmIHCairNLkIRaTK', 'lY4vEk1DFpkDcXYmAHEG', 'test', 'test', 'CyytvEqMeLMIAnTn6ipi.jpg', '2022-11-27', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `name`, `profession`, `email`, `password`, `image`) VALUES
('Fd55yyqlFl0bO0T9TnA8', 'Huu Thai', 'teacher', 'thai@teacher.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Eb52adI4B8ctSHyjG41l.jpg'),
('K8IksA0PWjuAb0PTVoVy', 'Trong Nghia', 'teacher', 'nghia@teacher.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'cTH4UQCwIbQkujrwZNAN.jpg'),
('lY4vEk1DFpkDcXYmAHEG', 'Nhat Phi', 'teacher', 'phi@teacher.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'OJgxzUXpaQPveuhIUczp.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
('9aPEtmBI7KR94qEdQjA5', 'Nhat Phi', 'AbC@gmail.com', 'c07e791788607d6393034f39450b88b22aabc167', 'LAD7kNG4cmGtfHUeXZyv.jpg'),
('iFWrIAuiR4s9fridv1OR', 'Nhat Phi', 'phi@student.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'LpGkaqDtawxrx0Ki56lk.jpg'),
('NKE6OP7S57mK83A0zKJT', 'Huu Thai', 'thai@student.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'AmoTEfoeoSQAhthXlyos.jpg'),
('2Ffmyy2BSEkDDsGyLVow', 'Trong Nghia', 'nghia@student.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'RPvfPUkoJVQyZW5ucF4z.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`,`password`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
