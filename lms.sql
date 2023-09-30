-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2022 at 01:50 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `publications` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `name`, `publications`) VALUES
(4, 'Chetan Bhagath', '10'),
(5, 'J K Rowling\r\n', '10');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `author_id` varchar(50) DEFAULT NULL,
  `year` date DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `description`, `file`, `category`, `author_id`, `year`, `price`) VALUES
(14, 'Two State', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 'Action', '4', '2022-10-08', '11'),
(16, 'Test 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'duke-200.png', 'Fiction', '5', '2022-10-12', '1200');

-- --------------------------------------------------------

--
-- Table structure for table `my_books`
--

CREATE TABLE `my_books` (
  `id` int(11) NOT NULL,
  `book_id` varchar(10) DEFAULT NULL,
  `author_id` varchar(100) DEFAULT NULL,
  `issued_date` date DEFAULT NULL,
  `till_date` date DEFAULT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `acc_no` varchar(15) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `has_purchased` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `my_books`
--

INSERT INTO `my_books` (`id`, `book_id`, `author_id`, `issued_date`, `till_date`, `user_id`, `acc_no`, `bank_name`, `ifsc_code`, `branch`, `has_purchased`) VALUES
(7, '14', '4', '2022-10-08', '2022-11-08', '14', NULL, NULL, NULL, NULL, 0),
(8, '14', '4', '2022-10-08', '2022-11-08', '14', NULL, NULL, NULL, NULL, 0),
(9, '14', '4', '2022-10-08', '2022-11-08', '14', '112121211111', 'Canara', '11', 'Ettumanoor', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `pincode` int(10) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `id_proof` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `has_approved` int(1) NOT NULL DEFAULT 0,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `address`, `district`, `pincode`, `phone`, `id_proof`, `username`, `password`, `has_approved`, `role`) VALUES
(1, 'librarian@mail.com', 'Librarian 1', 'Librarian Address 1', 'TVM', 6866, '9633813230', 'pexels-pixabay-372980.jpg', 'librarian', 'librarian', 1, 'librarian'),
(2, 'nikhil200@gmail.com', 'Nikhil', 'Thaiparambil', 'Kottayam', 686631, '7510738686', NULL, 'nikhil', 'nikhil', 2, 'user'),
(14, 'sanjayskumar200@gmail.com', 'sanjay', 'Thaiparambil', 'Kottayam', 686631, '7510738686', NULL, 'sanjay', 'sanjay', 1, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_books`
--
ALTER TABLE `my_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `my_books`
--
ALTER TABLE `my_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
