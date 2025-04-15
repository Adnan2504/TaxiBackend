-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 15, 2025 at 08:53 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taxiDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20250211134722-create-user.js'),
('20250211135352-create-user.js'),
('20250211135518-create-user.js'),
('20250211140041-create-user.js'),
('20250211140446-create-user.js'),
('20250211140702-create-user.js'),
('20250211141213-create-user.js');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'client',
  `stripeID` varchar(255) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `firstName`, `lastName`, `email`, `createdAt`, `updatedAt`, `password`, `phone`, `type`, `stripeID`, `gender`, `age`) VALUES
(1, 'Test', 'User', 'testuser@example.com', '2025-02-25 15:34:46', '2025-02-25 15:34:46', '', NULL, 'client', NULL, NULL, NULL),
(4, '', '', 'adnanbajric74@gmail.com', '2025-03-11 17:59:48', '2025-03-11 17:59:48', '$2b$10$vxdgq.G.uTXsVHdqAlzOzOzMyD70Sx1a8Os7eqSPji2zDpqUiV/eK', '067763404511', 'client', NULL, NULL, NULL),
(5, 'Test', 'User', 'test@example.com', '2025-03-12 08:49:15', '2025-03-12 08:49:15', '$2b$10$T.FRCl14rrnpfCaH9r.2y.j/dK/SdMB8jzMYfCbGYUK0kODvuTiP6', '123456789', 'client', NULL, NULL, NULL),
(6, 'test', 'test', 'test', '2025-03-12 08:57:38', '2025-03-12 08:57:38', '$2b$10$87GXwPDprB1bnPfvFD962uwOis4NXgpps0FMlVvU81P0OsDrArH7O', 'test', 'client', NULL, NULL, NULL),
(7, 'adnan', 'bajric', 'adnanbajric32174@gmail.com', '2025-03-12 08:58:55', '2025-03-12 08:58:55', '$2b$10$Co9RqaD6blM9wXO7kl1Pi.IV5.tEvtH0xQt.kj3EcwN/OEPREV9em', '7583574893753498', 'client', NULL, NULL, NULL),
(8, 'Adnan', 'Bajric', 'adnanbajric7412@gmail.com', '2025-03-18 13:16:12', '2025-03-18 13:16:12', '$2b$10$O.NHXMPXKIPfzr/.21OSme/qO8Ir/yZEYD4aZA/jPEJ5.W8hMrHey', '312312312', 'client', NULL, NULL, NULL),
(9, 'adnan', 'bajric', 'adnan@gmail.com', '2025-03-18 13:47:30', '2025-03-18 13:47:30', '$2b$10$9pwklPpfYtnbwugyCk3FDOKW9TiVD.LS1N0krv0sxQSZGH17.nB9a', '12321321', 'client', NULL, NULL, NULL),
(10, 'adnan', 'bajric', 'test@gmail.com', '2025-03-18 14:42:14', '2025-03-18 14:42:14', '$2b$10$O0I2IgIqEfn5mrgYMdmSoOaQmEM5De9RdjhKDwtqNbn2lttAjkhp.', '4123421321', 'client', NULL, NULL, NULL),
(11, 'adnandoc', 'bajricdoc', 'bajric.doc©gmail.com', '2025-03-25 14:02:23', '2025-03-25 14:02:23', '$2b$10$0P0GX/L87WiqEshlsS07euCTMqxpyCFNjLZ2HmvKwRhDi4VdIl1OW', '12321321', 'client', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
