-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2022 at 05:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitnessapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `Email` varchar(256) COLLATE utf8_bin NOT NULL,
  `Password` varchar(256) COLLATE utf8_bin NOT NULL,
  `Name` varchar(256) COLLATE utf8_bin NOT NULL,
  `Status` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `Email`, `Password`, `Name`, `Status`) VALUES
(5482, 'anel@sdadsa', 'Z31TaYGJCO', 'GEGA', ''),
(5483, 'ado@hotmail.com', 'lai7qesAGx', 'ado12', ''),
(5484, 'anelseha@hotmail.com', 'pa6C0TOCjq', 'anllqdadadasdad', ''),
(5486, 'zijad@homtial.com', '7stfZT5YvG', 'zijad', ''),
(5487, 'ahmed@hotmail.com', 'b1izM0VifB', 'AHmed', ''),
(5488, 'anelseha@hotmail.com', 'IIi7m1JTxT', 'anllqlllll', ''),
(5490, 'merima@hotmail.com', 'GGFAosz3QY', 'asdasda', 'PENDING'),
(5491, 'anelseha@hotmail.com', 'LLo2xbujtU', 'Ahmed1231231', 'PENDING'),
(5493, 'anelseha@hotmail.com', '6qbVFoUI5D', 'adadada', 'PENDING'),
(5495, 'anelseha@hotmail.com', 'QKlisc4S0I', 'adokonj', 'PENDING'),
(5496, 'anelseha@hotmail.com', 'aVB9RiXamU', 'adoahmedobakonja', 'PENDING'),
(5497, 'tahirovichado@gmail.com', 'nW2II9fWt5', 'Jasambogam', 'PENDING'),
(5498, 'tahirovichado@gmail.com', '35z5Q1Tu8c', 'anllqasdasda', 'PENDING'),
(5501, 'anel.kujovic.developer@gmail.com', 'v4E02KbYjj', 'AhmedKonjina12', 'ACTIVE'),
(5503, 'adotahirovich@gmail.com', '4V3NLt4P4a', 'Ado Tahirovic', 'PENDING'),
(5504, 'asdasd@asd.com', '9PAbJN2uIH', 'sadasd', 'PENDING'),
(5505, 'asdasd@gmail.com', 'y9fCRv9dxK', 'adoooodaaa', 'PENDING'),
(5506, 'adotahirovich12@gmail.com', 'iE0lxAdtNV', 'ado oda', 'PENDING'),
(5508, 'adotahirovich1234@gmail.com', '7zUCQM32rp', '1234', 'PENDING'),
(5509, 'ADO1@gmail.com', 'ucrN5WtlWc', 'ADO1', 'PENDING'),
(5510, 'ADO2@gmail.com', 'v9lC51hNQi', 'ADO2', 'PENDING'),
(5511, 'ADO3@gmail.com', 'p1lS91eHdu', 'ADO3', 'PENDING'),
(5512, 'asdasd1231', 'BAZxSdYWSz', 'asdasdasd', 'PENDING'),
(5513, 'adotahirovic5h@gmail.com', '8M2J9uLnHx', 'adukaaa1', 'PENDING'),
(5514, 'adotahirovic5h@gmail.com', '8vSDSOyxkK', 'adukaaaaaaa', 'PENDING'),
(5516, 'adotahirovich@gmail.com', 'Qc0tZd3YqB', 'Sadullah Adio', 'ACTIVE'),
(5517, '', 'Qu3CAHOYbh', '', 'PENDING'),
(5519, 'erol@gmail.com', '1QAvKtUn1i', 'erol', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `accounts_id` int(10) UNSIGNED DEFAULT NULL,
  `Name` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `DateOfBirth` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `PhoneNumber` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `Email` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `City` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `Address` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `Country` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `JMBG` varchar(256) COLLATE utf8_bin NOT NULL,
  `MedicalInsuranceNO` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `Protein` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `GymPlace` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `GymDate` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `Status` varchar(256) COLLATE utf8_bin DEFAULT 'CONFIRMED'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `accounts_id`, `Name`, `DateOfBirth`, `PhoneNumber`, `Email`, `City`, `Address`, `Country`, `JMBG`, `MedicalInsuranceNO`, `Protein`, `GymPlace`, `GymDate`, `Status`) VALUES
(126, 5484, 'anllqdadadasdad', '', '123231231', 'anelseha@hotmail.com', 'Sarajevo (Kanton Sarajevo)', '', 'Bosna i Hercegovina', '', '', 'Sputnik V', 'Dom zdravlja Hadžići', '2022-08-15 10:26:06', 'CONFIRMED'),
(127, 5486, 'zijad', '27121998', '123231231', 'zijad@homtial.com', 'Sarajevo (Kanton Sarajevo)', 'Kobilja 149', 'Bosna i Hercegovina', '199282', '1231231', 'Sputnik V', 'Dom zdravlja Hadžići', '2022-02-01 18:34:57', 'CONFIRMED'),
(130, 5490, 'asdasda', '27121998', '123231231', 'merima@hotmail.com', 'Sarajevo (Kanton Sarajevo)', 'Kg 19494', 'Bosna i Hercegovina', '199282', '1231231', 'Sputnik V', 'Dom zdravlja Hadžići', '2022-01-13 14:29:36', 'CONFIRMED'),
(131, 5491, 'Ahmed1231231', '27121998', '123231231', 'anelseha@hotmail.com', 'Sarajevo (Kanton Sarajevo)', 'Kg 19494', 'Bosna i Hercegovina', '199282', '1231231', 'Sputnik V', 'Dom zdravlja Hadžići', '2022-02-28 10:17:11', 'CONFIRMED'),
(133, 5493, 'adadada', '27121998', '123231231', 'anelseha@hotmail.com', 'Sarajevo (Kanton Sarajevo)', 'Kg 19494', 'Bosna i Hercegovina', '199282', '1231231', 'Sputnik V', 'Dom zdravlja Hadžići', '2022-06-17 18:13:46', 'CONFIRMED'),
(134, 5495, 'adokonj', '27121998', '123231231', 'anelseha@hotmail.com', 'Sarajevo (Kanton Sarajevo)', 'Kg 19494', 'Bosna i Hercegovina', '1231231', '1231231231', 'Sputnik V', 'Dom zdravlja Hadžići', '2022-04-03 15:29:37', 'CONFIRMED'),
(135, 5496, 'adoahmedobakonja', '27121998', '123231231', 'anelseha@hotmail.com', 'Sarajevo (Kanton Sarajevo)', 'Kg 19494', 'Bosna i Hercegovina', '123123', '1231231231', 'Sputnik V', 'Dom zdravlja Hadžići', '2022-12-04 19:59:27', 'CONFIRMED'),
(136, 5497, 'Jasambogam', '27121998', '123231231', 'tahirovichado@gmail.com', 'Sarajevo (Kanton Sarajevo)', 'Kg 19494', 'Bosna i Hercegovina', '199282', '1231231', 'Sputnik V', 'Dom zdravlja Hadžići', '2022-01-11 12:00:33', 'CONFIRMED'),
(137, 5498, 'anllqasdasda', '27121998', '123231231', 'tahirovichado@gmail.com', 'Sarajevo (Kanton Sarajevo)', 'Kg 19494', 'Bosna i Hercegovina', '199282', '1231231', 'Sputnik V', 'Dom zdravlja Hadžići', '2022-01-19 10:36:28', 'CONFIRMED'),
(139, 5501, 'AhmedKonjina12', '27121998', '123231231', 'anel.kujovic.developer@gmail.com', 'Sarajevo (Kanton Sarajevo)', 'Kg 19494', 'Bosna i Hercegovina', '199282', '1231231', 'Sputnik V', 'Dom zdravlja Hadžići', '2021-09-17 21:13:50', 'CONFIRMED'),
(140, 5508, '1234', '1234', '1234', 'adotahirovich1234@gmail.com', 'Sarajevo (Kanton Sarajevo)', '1234', 'Bosna i Hercegovina', '1234', '1234', 'Pro Gym', NULL, '2021-12-16 15:22:58', 'CONFIRMED'),
(141, 5509, 'ADO1', '1234', '1234', 'ADO1@gmail.com', 'Sarajevo (Kanton Sarajevo)', '1234', 'Bosna i Hercegovina', '1234', '1234', 'Pro Gym', NULL, '2021-09-06 14:43:22', 'CONFIRMED'),
(142, 5510, 'ADO2', '1234', '1234', 'ADO2@gmail.com', 'Sarajevo (Kanton Sarajevo)', '1234', 'Bosna i Hercegovina', '1234', '1234', 'Pro Gym', NULL, '2022-05-28 02:23:00', 'CONFIRMED'),
(143, 5511, 'ADO3', '1234', '1234', 'ADO3@gmail.com', 'Sarajevo (Kanton Sarajevo)', '123', 'Bosna i Hercegovina', '123', '123', 'All4Sport', NULL, '2022-12-25 22:18:04', 'CONFIRMED'),
(144, 5514, 'adukaaaaaaa', '123123', '123123', 'adotahirovic5h@gmail.com', 'Sarajevo (Kanton Sarajevo)', '123123', 'Bosna i Hercegovina', '12312', '12312', 'Pro Gym', 'Stup', '2022-07-18 12:05:10', 'CONFIRMED'),
(145, 5516, 'Sadullah Adio', '17/11/1998', '0644214441', 'adotahirovich@gmail.com', 'Sarajevo (Kanton Sarajevo)', 'Malta', 'Bosna i Hercegovina', '17111998', '15661800', 'All4Sport', 'Cengic Villa sportski centar', '2021-12-03 10:12:22', 'CONFIRMED'),
(146, 5517, '', '', '', '', 'Sarajevo (Kanton Sarajevo)', '', 'Bosna i Hercegovina', '', '', 'Pro Gym', 'Stup', '2021-12-30 07:39:41', 'CONFIRMED'),
(147, 5519, 'erol', '1231', '123132', 'erol@gmail.com', 'Sarajevo (Kanton Sarajevo)', '123131', 'Bosna i Hercegovina', '123132', '1231321', 'Pro Gym', 'Stup', '2022-02-01 23:44:54', 'CONFIRMED');

-- --------------------------------------------------------

--
-- Table structure for table `treners`
--

CREATE TABLE `treners` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(256) COLLATE utf8_bin NOT NULL,
  `InstitutionName` varchar(256) COLLATE utf8_bin NOT NULL,
  `PhoneNumber` varchar(256) COLLATE utf8_bin NOT NULL,
  `Address` varchar(256) COLLATE utf8_bin NOT NULL,
  `JMBG` varchar(256) COLLATE utf8_bin NOT NULL,
  `InstitutionPosition` varchar(256) COLLATE utf8_bin NOT NULL,
  `Account_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `Email` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(256) COLLATE utf8_bin DEFAULT 'PENDING',
  `role` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `account_id` int(10) UNSIGNED DEFAULT NULL,
  `token` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `token_creation` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Email`, `password`, `name`, `status`, `role`, `account_id`, `token`, `token_creation`) VALUES
(197, 'anel.kujovic.developer@gmail.com', 'v4E02KbYjj', 'AhmedKonjina12', 'ACTIVE', 'PATIENT', 5501, NULL, NULL),
(198, 'anel@gmail.com', '123123', 'anel', 'ACTIVE', 'DOCTOR', NULL, NULL, NULL),
(199, 'adotahirovich1234@gmail.com', '7zUCQM32rp', '1234', 'PENDING', 'CLIENT', 5508, 'eacee5419395147c65cc2f9e9022359f', NULL),
(200, 'ADO1@gmail.com', 'ucrN5WtlWc', 'ADO1', 'PENDING', 'CLIENT', 5509, 'd078123ce966cd1c9d535e295c6dac86', NULL),
(201, 'ADO2@gmail.com', 'v9lC51hNQi', 'ADO2', 'PENDING', 'CLIENT', 5510, 'bba00c312eaccf3c4ec683e09dcdb668', NULL),
(202, 'ADO3@gmail.com', 'p1lS91eHdu', 'ADO3', 'PENDING', 'CLIENT', 5511, '0bab625a4b86101a9967a097b35308b5', NULL),
(203, 'adotahirovic5h@gmail.com', '8vSDSOyxkK', 'adukaaaaaaa', 'PENDING', 'CLIENT', 5514, '809396947c25ed07f23d094b5b71de59', NULL),
(204, 'adotahirovich@gmail.com', 'Qc0tZd3YqB', 'Sadullah Adio', 'ACTIVE', 'CLIENT', 5516, '59163428a41fb15c6061949632b0ddc2', '2022-08-09 03:19:54'),
(206, 'ahmed@gmail.com', '123123', 'ahmed', 'ACTIVE', 'treners', NULL, NULL, NULL),
(207, 'erol@gmail.com', '1QAvKtUn1i', 'erol', 'PENDING', 'CLIENT', 5519, '7f8af4efe53259766858f0e0653f775b', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniquename` (`Name`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`,`JMBG`),
  ADD KEY `fk_account_id_patient` (`accounts_id`);

--
-- Indexes for table `treners`
--
ALTER TABLE `treners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_doctor_account_id` (`Account_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_account_id_user` (`account_id`),
  ADD KEY `uniquename` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5520;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `treners`
--
ALTER TABLE `treners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123332;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `fk_accounts_id` FOREIGN KEY (`accounts_id`) REFERENCES `accounts` (`id`);

--
-- Constraints for table `treners`
--
ALTER TABLE `treners`
  ADD CONSTRAINT `fk_doctor_account_id` FOREIGN KEY (`Account_ID`) REFERENCES `accounts` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_account_id_user` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
