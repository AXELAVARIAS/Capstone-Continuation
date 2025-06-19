-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2025 at 08:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `favorite_id` int(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `plant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`favorite_id`, `user_id`, `plant_id`) VALUES
(27, 18, 1),
(28, 18, 3);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `module_id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL,
  `image_path` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`module_id`, `title`, `description`, `category`, `type`, `content`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 'Introduction to Urban Agriculture', 'This module provides an overview of urban agriculture, its benefits, and its potential to address food security, environmental sustainability, and community resilience. It sets the foundation for understanding how farming can thrive in urban spaces.', 'Urban Agriculture Fundamentals', 'Concept/Overview', '../html/modulefiles/Module1.html', '../html/moduleimages/intro.avif', '2024-12-01 13:48:43', '2024-12-02 07:33:12'),
(4, 'Planning and Designing Urban Agriculture Systems', 'Learn the principles of creating efficient and sustainable urban agriculture systems, including space optimization, resource management, and integration with urban infrastructure.', 'Design and Planning', 'Practical/Hands-on', '../html/modulefiles/Module2.html	', '../html/moduleimages/planning.avif', '2024-12-01 14:55:37', '2024-12-02 07:33:34'),
(5, 'Techniques and Practices in Urban Agriculture', 'Explore modern and traditional methods of urban farming, including vertical farming, hydroponics, aquaponics, container gardening, and rooftop farming.', 'Techniques and Practices', 'Strategy/Planning', '../html/modulefiles/Module3.html	', '../html/moduleimages/technique.jpg', '2024-12-01 14:56:50', '2024-12-02 07:34:27'),
(6, 'Pest and Disease Management in Urban Farming', 'Understand the challenges of pest and disease control in urban settings and discover eco-friendly, sustainable strategies to protect crops and maximize yields.', 'Maintenance and Management', 'Management/Prevention', '../html/modulefiles/Module4.html', '../html/moduleimages/pest.jpg', '2024-12-01 14:57:01', '2024-12-02 07:35:33'),
(7, 'Crop Selection and Calendar Planning (Baguio City Focus)', 'Gain insights into selecting crops best suited for Baguio City\'s climate and conditions. Learn how to plan planting schedules for year-round harvests.', 'Design and Planning', 'Strategy/Planning', '../html/modulefiles/Module5.html	', '../html/moduleimages/crop.jpg', '2024-12-01 15:04:04', '2024-12-02 13:48:02'),
(8, 'Community Engagement in Urban Agriculture', 'Discover strategies to involve local communities in urban agriculture projects, fostering collaboration, education, and shared responsibility for sustainable food production.', 'Community and Education', 'Community/Social', '../html/modulefiles/Module6.html', '../html/moduleimages/community.jpg', '2024-12-01 15:04:13', '2024-12-04 02:43:51');

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `plant_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `container_soil` text DEFAULT NULL,
  `watering` text DEFAULT NULL,
  `sunlight` text DEFAULT NULL,
  `tips` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`plant_id`, `name`, `description`, `image`, `container_soil`, `watering`, `sunlight`, `tips`) VALUES
(1, 'Carrot', 'asdasdasd', '../images/67a61fcec80a0_eggplant.png', 'Deep containers, loose soil', 'Keep soil moist', 'Full sunlight', 'Thin seedlings after sprouting'),
(3, 'Eggplant', 'A versatile plant for urban farming, eggplants can be grown in large pots or vertical gardens. They are heat-tolerant and produce an abundant harvest in limited spaces. Perfect for homegrown meals, eggplants bring a fresh, rich flavor to dishes like stir-fries and pasta.', '../images/eggplant.jpg', 'Large pot, nutrient-rich soil', 'Water evenly, avoid overwatering', '6-8 hours sunlight', 'Use stakes or cages for support'),
(4, 'Lettuce', 'A staple for urban farming beginners, lettuce is easy to grow in small containers or hydroponic systems. With its quick growth cycle, it provides a continuous harvest of fresh greens for salads and wraps. Lettuce thrives in partial sunlight, making it ideal for balcony or rooftop gardens.\r\n\r\n', '../images/lettuce.jpg', 'Shallow containers, loose soil', 'Water lightly and frequently', 'Partial sunlight', 'Harvest outer leaves first'),
(5, 'Oregano', 'A low-maintenance herb perfect for urban kitchens, oregano can be grown in small pots on windowsills or balconies. It requires minimal space and effort while providing a fresh, aromatic flavor for homemade pizzas, pastas, and marinades.\r\n\r\n', '../images/oregano.jpg', 'Small pot, well-draining soil', 'Water when soil is dry', 'Full sunlight', 'Prune regularly to encourage bushy growth'),
(6, 'Tomato', 'A favorite for urban farmers, tomatoes grow well in containers, hanging baskets, or vertical trellises. They love sunlight and adapt easily to urban spaces, producing vibrant, juicy fruits. Whether cherry or beefsteak, fresh tomatoes are a rewarding addition to any urban garden.\r\n\r\n', '../images/tomato.jpg', 'Large container, loose nutrient-rich soil', 'Water deeply and consistently', '6-8 hours sunlight', 'Use stakes, cages, or trellises for support'),
(8, 'asdasd', 'asdasdasd', '../images/67a6202243629_strawberry.png', 'asdasd', 'asdasd', 'asdasd', 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 2, 'Pest Management', 'What is you recommendation on how to manage pest? without pesticide', '2024-12-03 23:40:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `reply_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`reply_id`, `question_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(9, 1, 3, 'asdasdasd', '2025-02-06 18:05:54', NULL),
(10, 1, 1, 'asdasdas', '2025-02-06 20:35:52', NULL),
(11, 1, 4, 'asdasdas', '2025-02-06 20:36:55', NULL),
(13, 1, 6, 'asdasdasd', '2025-02-07 22:56:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `suggestion_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`suggestion_id`, `message`, `created_at`, `status`) VALUES
(1, 'Suiggestion', '2024-12-03 07:30:36', 'approved'),
(2, 'Suiggestion', '2024-12-03 07:36:44', 'rejected'),
(3, 'Dagdag Modules', '2024-12-04 05:05:12', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('student','admin','agriculturist') NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `username`, `password`, `role`, `date_created`, `status`) VALUES
(1, 'admin', 'admin', '$2y$10$B.jf5ql45Tg/wj5YijIaZuANWPNmTtc0GGh.ZfTSckvnl.SCITgmq', 'admin', '2024-12-01 06:06:20', 'approved'),
(2, 'John Deez', 'john', '$2y$10$lOq6wWKkVnwTM4lXeUW82.leBH8eCRnpC5wrk4hCA5O.0xarYsKNS', 'agriculturist', '2024-12-01 06:13:33', 'active'),
(3, 'Jane Deez', 'janed', '$2y$10$Y21.U4KYjDwj1eW8Hz7tgOjRVpyi1q.U0Q1JDlzfV54QNTYC2.s/e', 'agriculturist', '2024-12-01 06:51:44', 'active'),
(4, 'Sarah Smith', 'sarahs', '$2y$10$RvbFS7fhw0IScpxZxNCrXuBjzWHBfa6yBUB1gjs/ac1ixKGPPSfhi', 'student', '2024-12-01 06:58:59', 'active'),
(5, 'Michael Johnson', 'mikejohnson', '$2y$10$fdF7YJ/exR8.8vNBOO23vu2xxyQBcAPcO5jY8LU6gw4N9DcPKMz7q', 'student', '2024-12-01 06:59:16', 'active'),
(6, 'Emily Davis', 'emilyd', '$2y$10$bfXj0XEaYspqapoXnQ9mtucTFyK0ljHDof.KJJA9stGBOSyJwmV6u', 'agriculturist', '2024-12-01 06:59:29', 'active'),
(7, 'William Brown', 'willbrown2020', '$2y$10$VyZE7YRtYUkEonWBJjCXzO5e94cgCrZWq5Fhb9FUz8tvDpCb8Ij7i', 'student', '2024-12-01 06:59:43', 'active'),
(8, 'Olivia Wilson', 'oliviawilson23', '$2y$10$Pc7lODm9l5fgSa50khOxn.p83nCQmSnxzxqXsE2CutBsfVkctpel.', 'student', '2024-12-01 06:59:56', 'active'),
(9, 'James Taylor', 'jamestaylor34', '$2y$10$jTakODqa30ThT2DyX.2azO4HrwA7Q.5p8MEUPWdu4RakDC1mU0FM2', 'student', '2024-12-01 07:00:14', 'inactive'),
(10, 'Isabella Martinez', 'isabellamartinez', '$2y$10$.ZUFC6q7/FnKTbamKSDPJuRjUzBqgMV0S6p/f.GYAKWR/aAJeZcn.', 'student', '2024-12-01 07:00:46', 'inactive'),
(11, 'Jean Jones', 'JeanJ', '$2y$10$ZvlxDzDyEiObKpbwRQ5etuVnZVbMmxDMd1ZL8E2g.qTsyU3umC.7S', 'student', '2025-01-07 00:24:42', 'inactive'),
(12, 'Jones Logan', 'jonesl', '$2y$10$0GCwJTG7Ry7b70w7qJMB9Oii2sJKBwzldtrc/b/mtQZM.fXhXYD2W', 'student', '2025-01-07 00:26:59', 'inactive'),
(13, 'miles ocampo', 'milesd', '$2y$10$vJUb1UaRO/LvIClT0PT0SuenSp42fslYyKO1viNTlmlJez3DdKnz6', 'student', '2025-01-07 09:17:26', 'active'),
(14, 'miles ocampo', 'miles', '$2y$10$unctcCw/bcNikQ3E09yTzOtEZl9gEDr7HC9Z30y0FLL0cebznHbP2', 'student', '2025-01-07 09:19:19', 'active'),
(17, 'miles', 'mileso', '$2y$10$9iZbKsvQamBa4q8ssds6De.MI0EmIavum7cW2v3w7g6L1cqcisYnm', 'student', '2025-01-07 09:22:10', 'active'),
(18, 'Anthony', 'Anthony', '$2y$10$9q/iDzty7P.flpXactu8oe0sHseCyIJZPk1F49.wnapFfZgCzZT0W', 'student', '2025-01-09 09:29:15', 'active'),
(19, 'Alexander Flores Lavarias', 'patatasgaming', '$2y$10$7K7.A/28HIT.EIpFn0zFd.7vpUwlzVt12xEzv01iHOQgmsNmecNkS', 'student', '2025-01-09 09:52:57', 'active'),
(20, 'George Ous', 'george', '$2y$10$2eCEvSEei3pMDW9hJurcdeaI.qDIQygmsXQJZFggOPHqxEkaQRdZ6', 'student', '2025-02-06 09:15:14', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `plant_id` (`plant_id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`plant_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`suggestion_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `favorite_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `module_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `plant`
--
ALTER TABLE `plant`
  MODIFY `plant_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `suggestion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`plant_id`) REFERENCES `plant` (`plant_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `reply`
--
ALTER TABLE `reply`
  ADD CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reply_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
