-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2024 at 10:21 PM
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
-- Database: `project_group5`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `first_name`, `last_name`, `email`, `phone`, `comment`) VALUES
(1, 'bhoomi', 'patel', 'bpatel0878@conestogac.on.ca', '6478782718', 'scbhasbcas'),
(2, 'riya', 'shah', 'riya123@gmail.com', '647-878-2718', 'cscascs'),
(3, 'anji', 'patel', 'anjali27@gmail.com', '6478782718', 'xz'),
(4, 'bhoomi', 'patel', 'bpatel0878@conestogac.on.ca', '647-878-2718', 'zacac sa'),
(5, 'tina', 'patel', 'tina@gmail.com', '647-878-2718', 'trhtryjjuyk'),
(6, 'Bhoomi', 'patel', 'bpatel0878@conestogac.on.ca', '6478782718', 'bjuykiululil'),
(7, 'riya', 'patel', 'riya123@gmail.com', '647-878-2718', 'dsjbvkdfhboildf'),
(8, 'riya', 'patel', 'riya123@gmail.com', '647-878-2718', 'dsjbvkdfhboildf');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `date` datetime NOT NULL,
  `status` enum('Pending','Completed','Cancelled') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `address`, `city`, `zip`, `total`, `date`, `status`) VALUES
(2, 1, 'Bhoomi ', '215 valleyway drive ', 'Brampton ', 'L6X 0N9', 255.00, '2024-11-24 15:28:13', 'Completed'),
(3, 1, 'heena', '215 valleyway drive ', 'Navsari', 'L6X 0N9', 100.00, '2024-11-24 18:15:43', 'Completed'),
(4, 0, 'priyanka', 'missisauga', 'missusauga', 'L6X 0N9', 155.00, '2024-11-24 18:21:34', 'Cancelled'),
(5, 1, 'annji', '215 valleyway drive ', 'Brampton ', 'L6X 0N9', 310.00, '2024-11-24 18:34:22', 'Cancelled'),
(6, 1, 'tina', '215 valleyway drive ', 'Brampton ', 'L6X 0N9', 465.00, '2024-11-24 18:36:31', 'Completed'),
(7, 1, 'sonu', '215 valleyway drive ', 'Brampton ', 'L6X 0N9', 310.00, '2024-11-24 18:41:42', 'Completed'),
(8, 1, 'bhoomi', '215 valleyway drive ', 'Brampton ', 'L6X 0N9', 410.00, '2024-11-24 18:43:17', 'Completed'),
(9, 1, 'Bhoomi ', '215 valleyway drive ', 'Brampton ', 'L6X 0N9', 155.00, '2024-11-24 18:45:31', 'Completed'),
(10, 3, 'bhoomi', '270 valleyway', 'etobicoke', 'L6X 0N9', 310.00, '2024-11-24 18:48:44', 'Completed'),
(11, 1, 'Bhoomi ', '215 valleyway drive ', 'Brampton ', 'L6X 0N9', 465.00, '2024-11-24 18:52:59', 'Completed'),
(12, 1, 'Bhoomi ', '215 valleyway drive ', 'Brampton ', 'L6X 0N9', 25.00, '2024-11-25 19:14:46', 'Pending'),
(13, 1, 'Bhoomi ', '215 valleyway drive ', 'Brampton ', 'L6X 0N9', 25.00, '2024-11-26 18:47:31', 'Completed'),
(14, 1, 'Bhoomi ', '215 valleyway drive ', 'Brampton ', 'L6X 0N9', 25.00, '2024-11-28 19:10:03', 'Completed'),
(15, 1, 'Bhoomi ', '215 valleyway drive ', 'Brampton ', 'L6X 0N9', 125.00, '2024-11-28 19:16:41', 'Completed'),
(17, 1, 'hetal ', '215 valleyway drive ', 'Brampton ', 'L6X 0N9', 25.00, '2024-11-29 17:51:44', 'Pending'),
(18, 1, 'hina ', '215 valleyway drive ', 'Brampton ', 'L6X 0N9', 60.00, '2024-11-29 19:06:50', 'Completed'),
(19, 1, 'Kajal ', 'etobicoke', 'etobicoke', 'L6V 4R9', 20.00, '2024-12-11 14:02:18', 'Pending'),
(20, 1, 'kajal', 'etobicoke', 'etobicoke', 'L6V 4R9', 20.00, '2024-12-11 14:03:50', 'Completed'),
(21, 1, 'mohi', 'etobicoke', 'etobicoke', 'L6X 0N9', 20.00, '2024-12-11 17:13:42', 'Completed'),
(22, 3, 'krishna', '79dawes road', 'Brampton ', 'L6X 0N9', 100.00, '2024-12-11 17:17:07', 'Pending'),
(23, 3, 'mayra', '79dawes road', 'milton ', 'L6V 4R9', 85.00, '2024-12-11 17:19:44', 'Completed'),
(24, 3, 'bhoomi', '215 valleyway drive ', 'milton ', 'L6X 0N9', 85.00, '2024-12-11 17:20:55', 'Pending'),
(25, 4, 'Pratham baraiya', '56 Pefferlaw Circle', 'Brampton', 'L6Y 0K1', 120.00, '2024-12-12 11:42:56', 'Pending'),
(26, 4, 'Pratham baraiya', 'Unit 14, 75 Strathaven Dr', 'Mississauga', 'L5R 3W1', 215.00, '2024-12-13 16:15:21', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_name`, `price`, `quantity`, `subtotal`) VALUES
(1, 20, 'lipstick', 20.00, 1, 20.00),
(2, 21, 'lipstick', 20.00, 1, 20.00),
(3, 22, 'lipstick', 20.00, 5, 100.00),
(4, 23, 'lipstick', 20.00, 3, 60.00),
(5, 23, 'lipstick', 25.00, 1, 25.00),
(6, 24, 'lipstick', 20.00, 3, 60.00),
(7, 24, 'lipstick', 25.00, 1, 25.00),
(8, 25, 'lipstick', 20.00, 6, 120.00),
(9, 26, 'Diamond necklace', 35.00, 1, 35.00),
(10, 26, 'Maybelline Combo Pack', 60.00, 3, 180.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `stock` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `stock`) VALUES
(4, 'lipstick', 'pink\r\n color', 20.00, 'Lipsticks.jpg', 10),
(6, 'makeup combo', 'eyeshadow,brushes', 25.00, '3.jpg', 15),
(8, 'Chanel Perfume', 'Chanel No. 5 Eau de Parfum is an iconic fragrance in an elegant glass bottle with a crystal-like cap.', 50.00, 'perfume.jpg', 15),
(9, 'Diamond necklace', 'A dazzling teardrop pendant necklace featuring a stunning central stone encircled by shimmering diamonds on a sleek chain.', 35.00, 'jewelery.png', 20),
(10, 'Brushes combo', 'A luxurious makeup brush set featuring rose gold accents and a variety of tools for flawless application.', 15.00, 'lures.jpg', 30),
(11, 'Eyeshadow Pallete', 'The Blushed Nudes eyeshadow palette by Maybelline features a range of 12 versatile, rosy-toned shades for creating soft, natural, or glamorous looks.', 14.00, 'eyeshadow pallette.png', 30),
(12, 'Diamond Earings', 'Elegant diamond-studded earrings featuring cascading strands and intricate wing-like designs for a glamorous look.', 65.00, 'earings.png', 10),
(13, 'Maybelline Combo Pack', 'The Maybelline Fit Me makeup collection offers a complete range of products for a flawless and natural look, including foundation, concealer, blush, and more.', 60.00, 'Full combo .png', 10),
(14, 'Duo Perfume Combo', 'A chic and vibrant pink perfume duo, \"Smell Eau D\'Ear 30ml,\" featuring sleek glass bottles for an elegant fragrance experience.', 40.00, 'catchrelease.jpg', 60),
(15, 'choker Necklace', 'A stunning HIBRIDE diamond jewelry set featuring an elegant floral necklace and matching earrings, perfect for special occasions.', 38.00, 'fish.jpg', 12),
(16, 'Rings', 'A collection of elegant diamond rings featuring various cuts and settings, showcasing timeless brilliance and craftsmanship.', 10.00, 'rings.png', 55),
(17, 'Bracelets', 'A chic set of gold bracelets featuring various chain designs, perfect for layering and adding elegance to any outfit.', 40.00, 'braclet.png', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('customer','admin') DEFAULT 'customer',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'bhoomi', 'patel', 'bpatel0878@conestogac.on.ca', '$2y$10$0YWK9IbEkk.NyoT18pCYsOjr2ve9WoxXuLoM8dbBZbBFQ8OiBs3va', 'customer', '2024-11-22 23:29:10'),
(2, 'riya', 'shah', 'riya123@gmail.com', '$2y$10$3xQcoYCc94.YJCGlAQz2zOxXY4Yba2Vm7cEz0URCQiCSfl0KJd3wO', 'admin', '2024-11-23 00:00:39'),
(3, 'krishna', 'patel', 'krishna123@gmail.com', '$2y$10$AUfj2Z.m4KVC4J7Fb2oyxOmRw7KL3HoXATSoNZpWlQFb/bG/dBtFC', 'customer', '2024-11-24 23:47:53'),
(4, 'pratham', 'baraiya', 'pratham123@gmail.com', '$2y$10$l52NxsAfeJNBtnuTzRHwNemz3ePNAiBEEXq56L2z7dKwzI.h0Bbb6', 'customer', '2024-12-12 16:41:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
