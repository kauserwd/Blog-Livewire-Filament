-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2024 at 03:15 AM
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
-- Database: `liveware_filament_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `category_id`, `author`, `image`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum has been the industry\'s ', 1, 'kauser', '01HP5PYANK6H0K30N9VEGB769V.jpg', '<h2>Heading example</h2><p>&nbsp;Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam nihil enim maxime corporis cumque totam<br>&nbsp;aliquid nam sint inventore optio modi neque laborum officiis necessitatibus, facilis placeat pariatur!<br>&nbsp;Voluptatem, sed harum pariatur adipisci voluptates voluptatum cumque, porro sint minima similique magni<br>&nbsp;perferendis fuga!<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>&nbsp;Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam nihil enim maxime corporis cumque totam<br>&nbsp;aliquid nam sint inventore optio modi neque laborum officiis necessitatibus, facilis placeat pariatur!<br>&nbsp;Voluptatem, sed harum pariatur adipisci voluptates voluptatum cumque, porro sint minima similique magni<br>&nbsp;perferendis fuga</p><h2>Heading example</h2><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam nihil enim maxime corporis cumque totam<br>aliquid nam sint inventore optio modi neque laborum officiis necessitatibus, facilis placeat pariatur!<br>Voluptatem, sed harum pariatur adipisci voluptates voluptatum cumque, porro sint minima similique magni<br>perferendis fuga!<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam nihil enim maxime corporis cumque totam<br>aliquid nam sint inventore optio modi neque laborum officiis necessitatibus, facilis placeat pariatur!<br>Voluptatem, sed harum pariatur adipisci voluptates voluptatum cumque, porro sint minima similique magn</p><p>perferendis fuga!<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><h2>&nbsp;Heading example</h2><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam nihil enim maxime corporis cumque totam<br>aliquid nam sint inventore optio modi neque laborum officiis necessitatibus, facilis placeat pariatur!<br>Voluptatem, sed harum pariatur adipisci voluptates voluptatum cumque, porro sint minima similique magni<br>perferendis fuga! Optio vel ipsum excepturi tempore reiciendis id quidem? Vel in, doloribus debitis nesciunt<br>fugit sequi magnam accusantium modi neque quis, vitae velit, pariatur harum autem a! Velit impedit atque</p><p>maiores animi possimus asperiores natus repellendus excepturi sint architecto eligendi non, omnis nihil.<br>Facilis, doloremque illum. Fugit optio laborum minus debitis natus illo perspiciatis corporis voluptatum<br>rerum laboriosam.<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>There must be at least 3 dashes separating each header cell. The outer pipes (|) are optional, and you<br>don&amp;rsquo;t need to make the raw Markdown line up prettily. You can also use inline Markdown.<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 1, '2024-02-08 18:48:35', '2024-02-09 11:22:01'),
(2, 'Cheerful Loving Couple Bakers Drinking Coffee', 3, 'kauser1', '01HP5RRYFD6073NKCTE8NR4A4V.jpg', '<p>It’s no secret that the digital industry is booming. From exciting startups to global&nbsp;</p>', 1, '2024-02-08 19:47:35', '2024-02-08 19:47:35');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Education ', 'education', 1, '2024-02-08 17:30:25', '2024-02-08 17:30:25'),
(2, 'Music', 'music', 1, '2024-02-08 17:35:21', '2024-02-08 17:35:21'),
(3, 'Mehedi Firoz', 'mehedi-firoz', 1, '2024-02-08 17:37:12', '2024-02-08 17:37:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `questions` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `questions`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What is Lorem Ipsum?', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</p>', 1, '2024-02-09 12:07:46', '2024-02-09 12:07:46'),
(2, 'Why do we use it?', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.&nbsp;</p>', 1, '2024-02-09 12:08:23', '2024-02-09 12:26:58');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `fb_url` varchar(255) DEFAULT NULL,
  `tw_url` varchar(255) DEFAULT NULL,
  `in_url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `designation`, `fb_url`, `tw_url`, `in_url`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kuser Hossain', 'Web Developer', 'https://www.facebook.com/kauser.cse', 'https://www.facebook.com/kauser.cse', 'https://www.facebook.com/kauser.cse', '01HP5143RP4FWJWPP7H99SYZZN.jpg', 1, '2024-02-08 11:55:52', '2024-02-08 12:54:15'),
(2, 'Mehedi Firoz', 'Web Developer', 'https://www.facebook.com/kauser.cse', 'https://www.facebook.com/kauser.cse', 'https://www.facebook.com/kauser.cse', '01HP515623BW9R08T46TPK9H9H.jpg', 1, '2024-02-08 12:06:13', '2024-02-08 12:54:50'),
(3, 'John doe', 'Instructor', 'https://www.facebook.com/kauser.cse', 'https://www.facebook.com/kauser.cse', 'https://www.facebook.com/kauser.cse', '01HP4YGYKFFFDHWBCP1ZAJW9ZP.jpg', 1, '2024-02-08 12:08:50', '2024-02-08 12:08:50'),
(4, 'John doe', 'Director', 'https://www.facebook.com/kauser.cse', 'https://www.facebook.com/kauser.cse', 'https://www.facebook.com/kauser.cse', '01HP4YJ4C80CF8QDCX7MFQ7FEP.jpg', 1, '2024-02-08 12:09:29', '2024-02-08 13:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_08_030332_create_services_table', 2),
(6, '2024_02_08_173105_create_members_table', 3),
(7, '2024_02_08_213201_create_categories_table', 4),
(8, '2024_02_08_234057_create_articles_table', 5),
(9, '2024_02_09_172816_create_faqs_table', 6),
(10, '2024_02_09_182808_create_pages_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `image`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About Us', '01HP7JPR048VGNHQXPCE212Y28.jpg', '<h2>Lorum ipsum doller</h2><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p><p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p><p><br><br></p><p><br></p>', 1, '2024-02-09 12:40:01', '2024-02-09 13:14:56'),
(3, 'Terms & Conditions', NULL, '<h3>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h3><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><h3>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h3><ul><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li></ul><h3>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h3><ul><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li></ul><h3>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h3><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><p><br></p>', 1, '2024-02-09 12:45:03', '2024-02-09 13:27:26'),
(4, 'Privacy Policy', NULL, '<h3>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h3><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><h3>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h3><ul><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li></ul><h3>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h3><ul><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias</li></ul><h3>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h3><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non necessitatibus fugiat quia dolor, assumenda consectetur ut.</p><p><br></p>', 1, '2024-02-09 12:45:44', '2024-02-09 13:26:37'),
(5, 'Contact Us', NULL, '<p>Contact Us</p>', 1, '2024-02-09 12:46:17', '2024-02-09 12:46:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  `short_desc` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(255) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon_class`, `short_desc`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Digital Marketing', 'dummy', 'Contrary to popular belief, Lorem Ipsum is not simply random text. ', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.&nbsp;</p>', 1, '2024-02-07 21:35:57', '2024-02-07 21:41:37'),
(2, 'Web Design', 'dummy1', 'Contrary to popular belief, Lorem Ipsum is not simply ', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from</p>', 1, '2024-02-07 22:31:12', '2024-02-07 22:31:12'),
(3, 'SEO', 'dummy2', 'Contrary to popular belief', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from</p>', 1, '2024-02-07 22:35:32', '2024-02-07 22:35:32'),
(4, 'Logo Design', 'Where can', ' If you are going to use a passage of Lorem Ipsum,', '<p>&nbsp;If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', 1, '2024-02-07 22:37:11', '2024-02-07 22:37:11'),
(5, 'Graphic Design', 'The standard chunk', 'The standard chunk of Lorem Ipsum used since the 1500s', '<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, '2024-02-07 22:38:15', '2024-02-07 22:38:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kauser Hossain', 'kauser.wd@gmail.com', NULL, '$2y$12$1rIMdJfNMqR7H2.D5nsv1ea8rlHuBeojxEv49Ten6IwNjXdrJZIMG', 'SnJ64DoMOruWsNFnyNf9XzZuiO9oGTYBlpQ2vXlhgw3fjP8YWhRIj3DDQtwl', '2024-02-07 19:25:01', '2024-02-07 19:25:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
