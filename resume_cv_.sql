-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2025 at 06:08 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resume(cv)`
--

-- --------------------------------------------------------

--
-- Table structure for table `resume_certificates`
--

CREATE TABLE `resume_certificates` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resume_certificates`
--

INSERT INTO `resume_certificates` (`id`, `resume_id`, `title`, `description`, `date`) VALUES
(1, 1, 'Agile Project Management', 'To lead agile teams effectively, delivering high-quality projects on time through collaboration and continuous improvement.', '2025-01-18'),
(2, 1, 'Introduction to Cybersecurity Awareness', 'Understanding basic threats, safe online behavior and protective measure to secure personal and organizational digital assets', '2025-01-18'),
(3, 2, 'Agile Project Management', 'dWDD', ''),
(4, 3, 'Agile Project Management', 'DS', ''),
(5, 4, 'Agile Project Management', 'To lead agile teams effectively, delivering high-quality projects on time through collaboration and continuous improvement.', '');

-- --------------------------------------------------------

--
-- Table structure for table `resume_data`
--

CREATE TABLE `resume_data` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `career_objective` text DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `interest` varchar(255) DEFAULT NULL,
  `skill` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resume_data`
--

INSERT INTO `resume_data` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `linkedin`, `github`, `instagram`, `career_objective`, `profile_pic`, `language`, `interest`, `skill`, `title`) VALUES
(1, 1, 'Saghiru Mohammed Rashid', 'saghirurashid63@gmail.com', '255673952093', 'Nusa Putra Residence', 'https://www.linkedin.com/in/saghiru-rashid-01653423a/', 'https://github.com/Saghirurashid?tab=repositories', 'https://www.instagram.com/saghirurashid?igsh=MW95anZ5YmcybXBtYw==', 'To develop dynamic website using full stack skills and contribute to innovative web solutions', 'Picha.jpg', 'kiswahili, English, Arabic and Bahasa Indonesia ', 'Swimming, Jogging, Reading, Travelling', 'Microsoft Word, Excel, PowerPoint, Html, CSS, JS and Python', 'Full Stack Developer'),
(2, 13, 'Saghiru Rashid', 'saghirurashid63@gmail.com', '0673952093', 'Bububu Mkoroshoni\r\nZanzibar', '', '', '', 'qdw', 'Picha.jpg', 'kiswahili, English, Arabic and Bahasa Indonesia ', 'Swimming, Jogging and Reading', 'Microsoft Word, Excel, PowerPoint, Html, CSS, JS and Python', 'QWE'),
(3, 14, 'Saghiru Rashid', 'saghirurashid63@gmail.com', '0673952093', 'Bububu Mkoroshoni\r\nZanzibar', '', '', '', 'cca', 'Picha.jpg', 'kiswahili, English, Arabic and Bahasa Indonesia ', 'Swimming', 'Microsoft Word, Excel, PowerPoint, Html, CSS, JS and Python', 's'),
(4, 14, 'Saghiru Rashid', 'saghirurashid63@gmail.com', '0673952093', 'Bububu Mkoroshoni\r\nZanzibar', '', '', '', 'd', 'Screenshot 2025-05-10 162936.png', 'Arabic', 'Swimming', 'Microsoft Word, Excel, PowerPoint, Html, CSS, JS and Python', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `resume_education`
--

CREATE TABLE `resume_education` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `course` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `percentage` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resume_education`
--

INSERT INTO `resume_education` (`id`, `resume_id`, `course`, `college`, `percentage`, `duration`) VALUES
(1, 1, 'Bachelor degree in Information System', 'Nusa Putra University', '3.74', '2023 - present'),
(2, 1, 'Science ', 'Ali Hassan Mwinyi Secondary School', '77%', '2021 - 2023'),
(3, 1, 'Science ', 'Bububu Secondary School', '90%', '2016 - 2020'),
(4, 2, 'Bachelor degree in Information System', 'Nusa Putra University', '3.74', '06/06/2025 - 07/07/2025'),
(5, 3, 'Bachelor degree in Information System', 'Nusa Putra University', '3.74', '06/02/2025 - 06/11/2025'),
(6, 4, 'Bachelor degree in Information System', 'Nusa Putra University', '3.74', '06/04/2025 - 07/31/2025');

-- --------------------------------------------------------

--
-- Table structure for table `resume_experiences`
--

CREATE TABLE `resume_experiences` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resume_experiences`
--

INSERT INTO `resume_experiences` (`id`, `resume_id`, `position`, `company`, `duration`) VALUES
(1, 1, 'Teacher', 'Boyka English Course', '2020 - 2022'),
(2, 2, 'Teacher', 'Boyka English Course', '06/13/2025 - 07/29/2025'),
(3, 3, 'S', 'Boyka English Course', '06/11/2025 - 06/14/2025'),
(4, 4, 'Teacher', 'Boyka English Course', '06/13/2025 - 07/29/2025');

-- --------------------------------------------------------

--
-- Table structure for table `resume_projects`
--

CREATE TABLE `resume_projects` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resume_projects`
--

INSERT INTO `resume_projects` (`id`, `resume_id`, `title`, `description`) VALUES
(1, 1, 'Resume_Builder', 'This is a Resume Builder application form which you can generate a resume by just entering your details in a form and you will get a resume of a good template, it is built using PHP for backend, MySQL for database and for frontend HTML,CSS and JS/jQuery are used.'),
(2, 2, 'Resume_Builder', 'WWFC'),
(3, 3, 'Resume_Builder', 'D'),
(4, 4, 'Resume_Builder', 'ds');

-- --------------------------------------------------------

--
-- Table structure for table `resume_users`
--

CREATE TABLE `resume_users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resume_users`
--

INSERT INTO `resume_users` (`id`, `user_name`, `email`, `password`) VALUES
(1, 'saghirurashid63@gmail.com', 'saghirurashid63@gmail.com', 'Mohd456@'),
(2, 'alimussakhamis10@gmail.com', 'alimussakhamis10@gmail.com', '1234'),
(4, 'sikutamubiana@gmail.com', 'sikutamubiana@gmail.com', '1234'),
(5, 'Obiwulu Peter Zimuzochukwu', 'zimterpeterobi@gmail.com', 'chiefchief123'),
(6, 'chande', 'abbysaid637@gmail.com', '1234'),
(7, 'chande', 'abbysaid637@gmail.com', '1234'),
(8, 'mohd', 'mohgmail.comdrashid030@gmail.com', '1234'),
(9, 'juma', 'johgmail.comdrashid030@gmail.com', '$2y$10$2QHAEFzm4h6TPaQn9m6zsOyoEey2CYWzD1usDalUc.FxGQYJ0BoEK'),
(10, 'mokham', 'mokham65@gmail.com', '$2y$10$7qA7Q0G9RgtK2gxQ.S1dReBr0xuypYXinpL8K8jkbnCWSJDId6rXq'),
(11, 'k', 'khamis@gmail.com', '$2y$10$6QVzLB5g4u4ZraNsVmE9t.Itw6m//2uyS8wTwhwWr/M0NCQLNv3Oe'),
(12, 'saghirurashid63@gmail.com', 'saghirurashid63@gmail.com', '$2y$10$NlJb6d2DKlB2A7aFKtpYwuh.7HWM8JWYqmuMJFj7g3r/NNBY82pX.'),
(13, 'lutfi', 'lutfisaidi63@gmail.com', '$2y$10$HdCh50Mzod6Vs.cRnOYK3OA4tiGKVR7UhRiwx13B5tdoVoGx7iHyG'),
(14, 'sikuta@gmail.com', 'sikuta@gmail.com', '$2y$10$s8KqFz7JLmMEGt/vW287CupnsANa5WuZXvhdDyHoU8S.1s2ob0skO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `resume_certificates`
--
ALTER TABLE `resume_certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CertificateResume` (`resume_id`);

--
-- Indexes for table `resume_data`
--
ALTER TABLE `resume_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ResumeUser` (`user_id`);

--
-- Indexes for table `resume_education`
--
ALTER TABLE `resume_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_EducationResume` (`resume_id`);

--
-- Indexes for table `resume_experiences`
--
ALTER TABLE `resume_experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ExperienceResume` (`resume_id`);

--
-- Indexes for table `resume_projects`
--
ALTER TABLE `resume_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ProjectResume` (`resume_id`);

--
-- Indexes for table `resume_users`
--
ALTER TABLE `resume_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `resume_certificates`
--
ALTER TABLE `resume_certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resume_data`
--
ALTER TABLE `resume_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `resume_education`
--
ALTER TABLE `resume_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `resume_experiences`
--
ALTER TABLE `resume_experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `resume_projects`
--
ALTER TABLE `resume_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `resume_users`
--
ALTER TABLE `resume_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `resume_certificates`
--
ALTER TABLE `resume_certificates`
  ADD CONSTRAINT `FK_CertificateResume` FOREIGN KEY (`resume_id`) REFERENCES `resume_data` (`id`);

--
-- Constraints for table `resume_data`
--
ALTER TABLE `resume_data`
  ADD CONSTRAINT `FK_ResumeUser` FOREIGN KEY (`user_id`) REFERENCES `resume_users` (`id`);

--
-- Constraints for table `resume_education`
--
ALTER TABLE `resume_education`
  ADD CONSTRAINT `FK_EducationResume` FOREIGN KEY (`resume_id`) REFERENCES `resume_data` (`id`);

--
-- Constraints for table `resume_experiences`
--
ALTER TABLE `resume_experiences`
  ADD CONSTRAINT `FK_ExperienceResume` FOREIGN KEY (`resume_id`) REFERENCES `resume_data` (`id`);

--
-- Constraints for table `resume_projects`
--
ALTER TABLE `resume_projects`
  ADD CONSTRAINT `FK_ProjectResume` FOREIGN KEY (`resume_id`) REFERENCES `resume_data` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
